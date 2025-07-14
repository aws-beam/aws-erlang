%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc IoT data
%%
%% IoT data enables secure, bi-directional communication between
%% Internet-connected things (such as sensors,
%% actuators, embedded devices, or smart appliances) and the Amazon Web
%% Services cloud.
%%
%% It implements a broker for applications and
%% things to publish messages over HTTP (Publish) and retrieve, update, and
%% delete shadows. A shadow is a
%% persistent representation of your things and their state in the Amazon Web
%% Services cloud.
%%
%% Find the endpoint address for actions in IoT data by running this CLI
%% command:
%%
%% `aws iot describe-endpoint --endpoint-type iot:Data-ATS'
%%
%% The service name used by Amazon Web ServicesSignature Version 4:
%% https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html
%% to sign requests is: iotdevicegateway.
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



%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% delete_thing_shadow_request() :: #{
%%   <<"shadowName">> => string()
%% }
-type delete_thing_shadow_request() :: #{binary() => any()}.


%% Example:
%% delete_thing_shadow_response() :: #{
%%   <<"payload">> => binary()
%% }
-type delete_thing_shadow_response() :: #{binary() => any()}.

%% Example:
%% get_retained_message_request() :: #{}
-type get_retained_message_request() :: #{}.


%% Example:
%% get_retained_message_response() :: #{
%%   <<"lastModifiedTime">> => float(),
%%   <<"payload">> => binary(),
%%   <<"qos">> => integer(),
%%   <<"topic">> => string(),
%%   <<"userProperties">> => binary()
%% }
-type get_retained_message_response() :: #{binary() => any()}.


%% Example:
%% get_thing_shadow_request() :: #{
%%   <<"shadowName">> => string()
%% }
-type get_thing_shadow_request() :: #{binary() => any()}.


%% Example:
%% get_thing_shadow_response() :: #{
%%   <<"payload">> => binary()
%% }
-type get_thing_shadow_response() :: #{binary() => any()}.


%% Example:
%% internal_failure_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_failure_exception() :: #{binary() => any()}.


%% Example:
%% invalid_request_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_request_exception() :: #{binary() => any()}.


%% Example:
%% list_named_shadows_for_thing_request() :: #{
%%   <<"nextToken">> => string(),
%%   <<"pageSize">> => integer()
%% }
-type list_named_shadows_for_thing_request() :: #{binary() => any()}.


%% Example:
%% list_named_shadows_for_thing_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"results">> => list(string()),
%%   <<"timestamp">> => float()
%% }
-type list_named_shadows_for_thing_response() :: #{binary() => any()}.


%% Example:
%% list_retained_messages_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_retained_messages_request() :: #{binary() => any()}.


%% Example:
%% list_retained_messages_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"retainedTopics">> => list(retained_message_summary())
%% }
-type list_retained_messages_response() :: #{binary() => any()}.


%% Example:
%% method_not_allowed_exception() :: #{
%%   <<"message">> => string()
%% }
-type method_not_allowed_exception() :: #{binary() => any()}.


%% Example:
%% publish_request() :: #{
%%   <<"contentType">> => string(),
%%   <<"correlationData">> => string(),
%%   <<"messageExpiry">> => float(),
%%   <<"payload">> => binary(),
%%   <<"payloadFormatIndicator">> => list(any()),
%%   <<"qos">> => integer(),
%%   <<"responseTopic">> => string(),
%%   <<"retain">> => boolean(),
%%   <<"userProperties">> => string()
%% }
-type publish_request() :: #{binary() => any()}.


%% Example:
%% request_entity_too_large_exception() :: #{
%%   <<"message">> => string()
%% }
-type request_entity_too_large_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% retained_message_summary() :: #{
%%   <<"lastModifiedTime">> => float(),
%%   <<"payloadSize">> => float(),
%%   <<"qos">> => integer(),
%%   <<"topic">> => string()
%% }
-type retained_message_summary() :: #{binary() => any()}.


%% Example:
%% service_unavailable_exception() :: #{
%%   <<"message">> => string()
%% }
-type service_unavailable_exception() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% unauthorized_exception() :: #{
%%   <<"message">> => string()
%% }
-type unauthorized_exception() :: #{binary() => any()}.


%% Example:
%% unsupported_document_encoding_exception() :: #{
%%   <<"message">> => string()
%% }
-type unsupported_document_encoding_exception() :: #{binary() => any()}.


%% Example:
%% update_thing_shadow_request() :: #{
%%   <<"payload">> := binary(),
%%   <<"shadowName">> => string()
%% }
-type update_thing_shadow_request() :: #{binary() => any()}.


%% Example:
%% update_thing_shadow_response() :: #{
%%   <<"payload">> => binary()
%% }
-type update_thing_shadow_response() :: #{binary() => any()}.

-type delete_thing_shadow_errors() ::
    unsupported_document_encoding_exception() | 
    unauthorized_exception() | 
    throttling_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    method_not_allowed_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type get_retained_message_errors() ::
    unauthorized_exception() | 
    throttling_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    method_not_allowed_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type get_thing_shadow_errors() ::
    unsupported_document_encoding_exception() | 
    unauthorized_exception() | 
    throttling_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    method_not_allowed_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type list_named_shadows_for_thing_errors() ::
    unauthorized_exception() | 
    throttling_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    method_not_allowed_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type list_retained_messages_errors() ::
    unauthorized_exception() | 
    throttling_exception() | 
    service_unavailable_exception() | 
    method_not_allowed_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type publish_errors() ::
    unauthorized_exception() | 
    throttling_exception() | 
    method_not_allowed_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type update_thing_shadow_errors() ::
    unsupported_document_encoding_exception() | 
    unauthorized_exception() | 
    throttling_exception() | 
    service_unavailable_exception() | 
    request_entity_too_large_exception() | 
    method_not_allowed_exception() | 
    invalid_request_exception() | 
    internal_failure_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Deletes the shadow for the specified thing.
%%
%% Requires permission to access the DeleteThingShadow:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
%%
%% For more information, see DeleteThingShadow:
%% http://docs.aws.amazon.com/iot/latest/developerguide/API_DeleteThingShadow.html
%% in the IoT Developer Guide.
-spec delete_thing_shadow(aws_client:aws_client(), binary() | list(), delete_thing_shadow_request()) ->
    {ok, delete_thing_shadow_response(), tuple()} |
    {error, any()} |
    {error, delete_thing_shadow_errors(), tuple()}.
delete_thing_shadow(Client, ThingName, Input) ->
    delete_thing_shadow(Client, ThingName, Input, []).

-spec delete_thing_shadow(aws_client:aws_client(), binary() | list(), delete_thing_shadow_request(), proplists:proplist()) ->
    {ok, delete_thing_shadow_response(), tuple()} |
    {error, any()} |
    {error, delete_thing_shadow_errors(), tuple()}.
delete_thing_shadow(Client, ThingName, Input0, Options0) ->
    Method = delete,
    Path = ["/things/", aws_util:encode_uri(ThingName), "/shadow"],
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
%% messages, call
%% ListRetainedMessages:
%% https://docs.aws.amazon.com/iot/latest/apireference/API_iotdata_ListRetainedMessages.html.
%%
%% Requires permission to access the GetRetainedMessage:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiotfleethubfordevicemanagement.html#awsiotfleethubfordevicemanagement-actions-as-permissions
%% action.
%%
%% For more information about messaging costs, see Amazon Web Services IoT
%% Core
%% pricing - Messaging: http://aws.amazon.com/iot-core/pricing/#Messaging.
-spec get_retained_message(aws_client:aws_client(), binary() | list()) ->
    {ok, get_retained_message_response(), tuple()} |
    {error, any()} |
    {error, get_retained_message_errors(), tuple()}.
get_retained_message(Client, Topic)
  when is_map(Client) ->
    get_retained_message(Client, Topic, #{}, #{}).

-spec get_retained_message(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_retained_message_response(), tuple()} |
    {error, any()} |
    {error, get_retained_message_errors(), tuple()}.
get_retained_message(Client, Topic, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_retained_message(Client, Topic, QueryMap, HeadersMap, []).

-spec get_retained_message(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_retained_message_response(), tuple()} |
    {error, any()} |
    {error, get_retained_message_errors(), tuple()}.
get_retained_message(Client, Topic, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/retainedMessage/", aws_util:encode_uri(Topic), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the shadow for the specified thing.
%%
%% Requires permission to access the GetThingShadow:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
%%
%% For more information, see GetThingShadow:
%% http://docs.aws.amazon.com/iot/latest/developerguide/API_GetThingShadow.html
%% in the
%% IoT Developer Guide.
-spec get_thing_shadow(aws_client:aws_client(), binary() | list()) ->
    {ok, get_thing_shadow_response(), tuple()} |
    {error, any()} |
    {error, get_thing_shadow_errors(), tuple()}.
get_thing_shadow(Client, ThingName)
  when is_map(Client) ->
    get_thing_shadow(Client, ThingName, #{}, #{}).

-spec get_thing_shadow(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_thing_shadow_response(), tuple()} |
    {error, any()} |
    {error, get_thing_shadow_errors(), tuple()}.
get_thing_shadow(Client, ThingName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_thing_shadow(Client, ThingName, QueryMap, HeadersMap, []).

-spec get_thing_shadow(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_thing_shadow_response(), tuple()} |
    {error, any()} |
    {error, get_thing_shadow_errors(), tuple()}.
get_thing_shadow(Client, ThingName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/things/", aws_util:encode_uri(ThingName), "/shadow"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"name">>, maps:get(<<"name">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the shadows for the specified thing.
%%
%% Requires permission to access the ListNamedShadowsForThing:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec list_named_shadows_for_thing(aws_client:aws_client(), binary() | list()) ->
    {ok, list_named_shadows_for_thing_response(), tuple()} |
    {error, any()} |
    {error, list_named_shadows_for_thing_errors(), tuple()}.
list_named_shadows_for_thing(Client, ThingName)
  when is_map(Client) ->
    list_named_shadows_for_thing(Client, ThingName, #{}, #{}).

-spec list_named_shadows_for_thing(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_named_shadows_for_thing_response(), tuple()} |
    {error, any()} |
    {error, list_named_shadows_for_thing_errors(), tuple()}.
list_named_shadows_for_thing(Client, ThingName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_named_shadows_for_thing(Client, ThingName, QueryMap, HeadersMap, []).

-spec list_named_shadows_for_thing(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_named_shadows_for_thing_response(), tuple()} |
    {error, any()} |
    {error, list_named_shadows_for_thing_errors(), tuple()}.
list_named_shadows_for_thing(Client, ThingName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/api/things/shadow/ListNamedShadowsForThing/", aws_util:encode_uri(ThingName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

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
%% doesn't
%% return any message payloads. Although this action doesn't return a
%% message payload,
%% it can still incur messaging costs.
%%
%% To get the message payload of a retained message, call
%% GetRetainedMessage:
%% https://docs.aws.amazon.com/iot/latest/apireference/API_iotdata_GetRetainedMessage.html
%% with the topic name of the retained message.
%%
%% Requires permission to access the ListRetainedMessages:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiotfleethubfordevicemanagement.html#awsiotfleethubfordevicemanagement-actions-as-permissions
%% action.
%%
%% For more information about messaging costs, see Amazon Web Services IoT
%% Core
%% pricing - Messaging: http://aws.amazon.com/iot-core/pricing/#Messaging.
-spec list_retained_messages(aws_client:aws_client()) ->
    {ok, list_retained_messages_response(), tuple()} |
    {error, any()} |
    {error, list_retained_messages_errors(), tuple()}.
list_retained_messages(Client)
  when is_map(Client) ->
    list_retained_messages(Client, #{}, #{}).

-spec list_retained_messages(aws_client:aws_client(), map(), map()) ->
    {ok, list_retained_messages_response(), tuple()} |
    {error, any()} |
    {error, list_retained_messages_errors(), tuple()}.
list_retained_messages(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_retained_messages(Client, QueryMap, HeadersMap, []).

-spec list_retained_messages(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_retained_messages_response(), tuple()} |
    {error, any()} |
    {error, list_retained_messages_errors(), tuple()}.
list_retained_messages(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/retainedMessage"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

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
%% Requires permission to access the Publish:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
%%
%% For more information about MQTT messages, see
%% MQTT Protocol:
%% http://docs.aws.amazon.com/iot/latest/developerguide/mqtt.html in the
%% IoT Developer Guide.
%%
%% For more information about messaging costs, see Amazon Web Services IoT
%% Core
%% pricing - Messaging: http://aws.amazon.com/iot-core/pricing/#Messaging.
-spec publish(aws_client:aws_client(), binary() | list(), publish_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, publish_errors(), tuple()}.
publish(Client, Topic, Input) ->
    publish(Client, Topic, Input, []).

-spec publish(aws_client:aws_client(), binary() | list(), publish_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, publish_errors(), tuple()}.
publish(Client, Topic, Input0, Options0) ->
    Method = post,
    Path = ["/topics/", aws_util:encode_uri(Topic), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-mqtt5-correlation-data">>, <<"correlationData">>},
                       {<<"x-amz-mqtt5-payload-format-indicator">>, <<"payloadFormatIndicator">>},
                       {<<"x-amz-mqtt5-user-properties">>, <<"userProperties">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"contentType">>, <<"contentType">>},
                     {<<"messageExpiry">>, <<"messageExpiry">>},
                     {<<"qos">>, <<"qos">>},
                     {<<"responseTopic">>, <<"responseTopic">>},
                     {<<"retain">>, <<"retain">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the shadow for the specified thing.
%%
%% Requires permission to access the UpdateThingShadow:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
%%
%% For more information, see UpdateThingShadow:
%% http://docs.aws.amazon.com/iot/latest/developerguide/API_UpdateThingShadow.html
%% in the
%% IoT Developer Guide.
-spec update_thing_shadow(aws_client:aws_client(), binary() | list(), update_thing_shadow_request()) ->
    {ok, update_thing_shadow_response(), tuple()} |
    {error, any()} |
    {error, update_thing_shadow_errors(), tuple()}.
update_thing_shadow(Client, ThingName, Input) ->
    update_thing_shadow(Client, ThingName, Input, []).

-spec update_thing_shadow(aws_client:aws_client(), binary() | list(), update_thing_shadow_request(), proplists:proplist()) ->
    {ok, update_thing_shadow_response(), tuple()} |
    {error, any()} |
    {error, update_thing_shadow_errors(), tuple()}.
update_thing_shadow(Client, ThingName, Input0, Options0) ->
    Method = post,
    Path = ["/things/", aws_util:encode_uri(ThingName), "/shadow"],
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

    QueryMapping = [
                     {<<"name">>, <<"shadowName">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
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
    Client1 = Client#{service => <<"iotdata">>},
    Host = build_host(<<"data-ats.iot">>, Client1),
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
