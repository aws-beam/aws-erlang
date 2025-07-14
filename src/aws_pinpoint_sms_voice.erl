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



%% Example:
%% already_exists_exception() :: #{
%%   <<"Message">> => string()
%% }
-type already_exists_exception() :: #{binary() => any()}.


%% Example:
%% bad_request_exception() :: #{
%%   <<"Message">> => string()
%% }
-type bad_request_exception() :: #{binary() => any()}.


%% Example:
%% call_instructions_message_type() :: #{
%%   <<"Text">> => string()
%% }
-type call_instructions_message_type() :: #{binary() => any()}.


%% Example:
%% cloud_watch_logs_destination() :: #{
%%   <<"IamRoleArn">> => string(),
%%   <<"LogGroupArn">> => string()
%% }
-type cloud_watch_logs_destination() :: #{binary() => any()}.


%% Example:
%% create_configuration_set_event_destination_request() :: #{
%%   <<"EventDestination">> => event_destination_definition(),
%%   <<"EventDestinationName">> => string()
%% }
-type create_configuration_set_event_destination_request() :: #{binary() => any()}.

%% Example:
%% create_configuration_set_event_destination_response() :: #{}
-type create_configuration_set_event_destination_response() :: #{}.


%% Example:
%% create_configuration_set_request() :: #{
%%   <<"ConfigurationSetName">> => string()
%% }
-type create_configuration_set_request() :: #{binary() => any()}.

%% Example:
%% create_configuration_set_response() :: #{}
-type create_configuration_set_response() :: #{}.

%% Example:
%% delete_configuration_set_event_destination_request() :: #{}
-type delete_configuration_set_event_destination_request() :: #{}.

%% Example:
%% delete_configuration_set_event_destination_response() :: #{}
-type delete_configuration_set_event_destination_response() :: #{}.

%% Example:
%% delete_configuration_set_request() :: #{}
-type delete_configuration_set_request() :: #{}.

%% Example:
%% delete_configuration_set_response() :: #{}
-type delete_configuration_set_response() :: #{}.


%% Example:
%% event_destination() :: #{
%%   <<"CloudWatchLogsDestination">> => cloud_watch_logs_destination(),
%%   <<"Enabled">> => boolean(),
%%   <<"KinesisFirehoseDestination">> => kinesis_firehose_destination(),
%%   <<"MatchingEventTypes">> => list(list(any())()),
%%   <<"Name">> => string(),
%%   <<"SnsDestination">> => sns_destination()
%% }
-type event_destination() :: #{binary() => any()}.


%% Example:
%% event_destination_definition() :: #{
%%   <<"CloudWatchLogsDestination">> => cloud_watch_logs_destination(),
%%   <<"Enabled">> => boolean(),
%%   <<"KinesisFirehoseDestination">> => kinesis_firehose_destination(),
%%   <<"MatchingEventTypes">> => list(list(any())()),
%%   <<"SnsDestination">> => sns_destination()
%% }
-type event_destination_definition() :: #{binary() => any()}.

%% Example:
%% get_configuration_set_event_destinations_request() :: #{}
-type get_configuration_set_event_destinations_request() :: #{}.


%% Example:
%% get_configuration_set_event_destinations_response() :: #{
%%   <<"EventDestinations">> => list(event_destination())
%% }
-type get_configuration_set_event_destinations_response() :: #{binary() => any()}.


%% Example:
%% internal_service_error_exception() :: #{
%%   <<"Message">> => string()
%% }
-type internal_service_error_exception() :: #{binary() => any()}.


%% Example:
%% kinesis_firehose_destination() :: #{
%%   <<"DeliveryStreamArn">> => string(),
%%   <<"IamRoleArn">> => string()
%% }
-type kinesis_firehose_destination() :: #{binary() => any()}.


%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% list_configuration_sets_request() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PageSize">> => string()
%% }
-type list_configuration_sets_request() :: #{binary() => any()}.


%% Example:
%% list_configuration_sets_response() :: #{
%%   <<"ConfigurationSets">> => list(string()),
%%   <<"NextToken">> => string()
%% }
-type list_configuration_sets_response() :: #{binary() => any()}.


%% Example:
%% not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type not_found_exception() :: #{binary() => any()}.


%% Example:
%% plain_text_message_type() :: #{
%%   <<"LanguageCode">> => string(),
%%   <<"Text">> => string(),
%%   <<"VoiceId">> => string()
%% }
-type plain_text_message_type() :: #{binary() => any()}.


%% Example:
%% s_s_ml_message_type() :: #{
%%   <<"LanguageCode">> => string(),
%%   <<"Text">> => string(),
%%   <<"VoiceId">> => string()
%% }
-type s_s_ml_message_type() :: #{binary() => any()}.


%% Example:
%% send_voice_message_request() :: #{
%%   <<"CallerId">> => string(),
%%   <<"ConfigurationSetName">> => string(),
%%   <<"Content">> => voice_message_content(),
%%   <<"DestinationPhoneNumber">> => string(),
%%   <<"OriginationPhoneNumber">> => string()
%% }
-type send_voice_message_request() :: #{binary() => any()}.


%% Example:
%% send_voice_message_response() :: #{
%%   <<"MessageId">> => string()
%% }
-type send_voice_message_response() :: #{binary() => any()}.


%% Example:
%% sns_destination() :: #{
%%   <<"TopicArn">> => string()
%% }
-type sns_destination() :: #{binary() => any()}.


%% Example:
%% too_many_requests_exception() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_requests_exception() :: #{binary() => any()}.


%% Example:
%% update_configuration_set_event_destination_request() :: #{
%%   <<"EventDestination">> => event_destination_definition()
%% }
-type update_configuration_set_event_destination_request() :: #{binary() => any()}.

%% Example:
%% update_configuration_set_event_destination_response() :: #{}
-type update_configuration_set_event_destination_response() :: #{}.


%% Example:
%% voice_message_content() :: #{
%%   <<"CallInstructionsMessage">> => call_instructions_message_type(),
%%   <<"PlainTextMessage">> => plain_text_message_type(),
%%   <<"SSMLMessage">> => s_s_ml_message_type()
%% }
-type voice_message_content() :: #{binary() => any()}.

-type create_configuration_set_errors() ::
    too_many_requests_exception() | 
    limit_exceeded_exception() | 
    internal_service_error_exception() | 
    bad_request_exception() | 
    already_exists_exception().

-type create_configuration_set_event_destination_errors() ::
    too_many_requests_exception() | 
    not_found_exception() | 
    limit_exceeded_exception() | 
    internal_service_error_exception() | 
    bad_request_exception() | 
    already_exists_exception().

-type delete_configuration_set_errors() ::
    too_many_requests_exception() | 
    not_found_exception() | 
    internal_service_error_exception() | 
    bad_request_exception().

-type delete_configuration_set_event_destination_errors() ::
    too_many_requests_exception() | 
    not_found_exception() | 
    internal_service_error_exception() | 
    bad_request_exception().

-type get_configuration_set_event_destinations_errors() ::
    too_many_requests_exception() | 
    not_found_exception() | 
    internal_service_error_exception() | 
    bad_request_exception().

-type list_configuration_sets_errors() ::
    too_many_requests_exception() | 
    internal_service_error_exception() | 
    bad_request_exception().

-type send_voice_message_errors() ::
    too_many_requests_exception() | 
    internal_service_error_exception() | 
    bad_request_exception().

-type update_configuration_set_event_destination_errors() ::
    too_many_requests_exception() | 
    not_found_exception() | 
    internal_service_error_exception() | 
    bad_request_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Create a new configuration set.
%%
%% After you create the configuration set, you can add one or more event
%% destinations to it.
-spec create_configuration_set(aws_client:aws_client(), create_configuration_set_request()) ->
    {ok, create_configuration_set_response(), tuple()} |
    {error, any()} |
    {error, create_configuration_set_errors(), tuple()}.
create_configuration_set(Client, Input) ->
    create_configuration_set(Client, Input, []).

-spec create_configuration_set(aws_client:aws_client(), create_configuration_set_request(), proplists:proplist()) ->
    {ok, create_configuration_set_response(), tuple()} |
    {error, any()} |
    {error, create_configuration_set_errors(), tuple()}.
create_configuration_set(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/sms-voice/configuration-sets"],
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

%% @doc Create a new event destination in a configuration set.
-spec create_configuration_set_event_destination(aws_client:aws_client(), binary() | list(), create_configuration_set_event_destination_request()) ->
    {ok, create_configuration_set_event_destination_response(), tuple()} |
    {error, any()} |
    {error, create_configuration_set_event_destination_errors(), tuple()}.
create_configuration_set_event_destination(Client, ConfigurationSetName, Input) ->
    create_configuration_set_event_destination(Client, ConfigurationSetName, Input, []).

-spec create_configuration_set_event_destination(aws_client:aws_client(), binary() | list(), create_configuration_set_event_destination_request(), proplists:proplist()) ->
    {ok, create_configuration_set_event_destination_response(), tuple()} |
    {error, any()} |
    {error, create_configuration_set_event_destination_errors(), tuple()}.
create_configuration_set_event_destination(Client, ConfigurationSetName, Input0, Options0) ->
    Method = post,
    Path = ["/v1/sms-voice/configuration-sets/", aws_util:encode_uri(ConfigurationSetName), "/event-destinations"],
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

%% @doc Deletes an existing configuration set.
-spec delete_configuration_set(aws_client:aws_client(), binary() | list(), delete_configuration_set_request()) ->
    {ok, delete_configuration_set_response(), tuple()} |
    {error, any()} |
    {error, delete_configuration_set_errors(), tuple()}.
delete_configuration_set(Client, ConfigurationSetName, Input) ->
    delete_configuration_set(Client, ConfigurationSetName, Input, []).

-spec delete_configuration_set(aws_client:aws_client(), binary() | list(), delete_configuration_set_request(), proplists:proplist()) ->
    {ok, delete_configuration_set_response(), tuple()} |
    {error, any()} |
    {error, delete_configuration_set_errors(), tuple()}.
delete_configuration_set(Client, ConfigurationSetName, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/sms-voice/configuration-sets/", aws_util:encode_uri(ConfigurationSetName), ""],
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

%% @doc Deletes an event destination in a configuration set.
-spec delete_configuration_set_event_destination(aws_client:aws_client(), binary() | list(), binary() | list(), delete_configuration_set_event_destination_request()) ->
    {ok, delete_configuration_set_event_destination_response(), tuple()} |
    {error, any()} |
    {error, delete_configuration_set_event_destination_errors(), tuple()}.
delete_configuration_set_event_destination(Client, ConfigurationSetName, EventDestinationName, Input) ->
    delete_configuration_set_event_destination(Client, ConfigurationSetName, EventDestinationName, Input, []).

-spec delete_configuration_set_event_destination(aws_client:aws_client(), binary() | list(), binary() | list(), delete_configuration_set_event_destination_request(), proplists:proplist()) ->
    {ok, delete_configuration_set_event_destination_response(), tuple()} |
    {error, any()} |
    {error, delete_configuration_set_event_destination_errors(), tuple()}.
delete_configuration_set_event_destination(Client, ConfigurationSetName, EventDestinationName, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/sms-voice/configuration-sets/", aws_util:encode_uri(ConfigurationSetName), "/event-destinations/", aws_util:encode_uri(EventDestinationName), ""],
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

%% @doc Obtain information about an event destination, including the types of
%% events it reports, the Amazon Resource Name (ARN) of the destination, and
%% the name of the event destination.
-spec get_configuration_set_event_destinations(aws_client:aws_client(), binary() | list()) ->
    {ok, get_configuration_set_event_destinations_response(), tuple()} |
    {error, any()} |
    {error, get_configuration_set_event_destinations_errors(), tuple()}.
get_configuration_set_event_destinations(Client, ConfigurationSetName)
  when is_map(Client) ->
    get_configuration_set_event_destinations(Client, ConfigurationSetName, #{}, #{}).

-spec get_configuration_set_event_destinations(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_configuration_set_event_destinations_response(), tuple()} |
    {error, any()} |
    {error, get_configuration_set_event_destinations_errors(), tuple()}.
get_configuration_set_event_destinations(Client, ConfigurationSetName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_configuration_set_event_destinations(Client, ConfigurationSetName, QueryMap, HeadersMap, []).

-spec get_configuration_set_event_destinations(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_configuration_set_event_destinations_response(), tuple()} |
    {error, any()} |
    {error, get_configuration_set_event_destinations_errors(), tuple()}.
get_configuration_set_event_destinations(Client, ConfigurationSetName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/sms-voice/configuration-sets/", aws_util:encode_uri(ConfigurationSetName), "/event-destinations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List all of the configuration sets associated with your Amazon
%% Pinpoint account in the current region.
-spec list_configuration_sets(aws_client:aws_client()) ->
    {ok, list_configuration_sets_response(), tuple()} |
    {error, any()} |
    {error, list_configuration_sets_errors(), tuple()}.
list_configuration_sets(Client)
  when is_map(Client) ->
    list_configuration_sets(Client, #{}, #{}).

-spec list_configuration_sets(aws_client:aws_client(), map(), map()) ->
    {ok, list_configuration_sets_response(), tuple()} |
    {error, any()} |
    {error, list_configuration_sets_errors(), tuple()}.
list_configuration_sets(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_configuration_sets(Client, QueryMap, HeadersMap, []).

-spec list_configuration_sets(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_configuration_sets_response(), tuple()} |
    {error, any()} |
    {error, list_configuration_sets_errors(), tuple()}.
list_configuration_sets(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/sms-voice/configuration-sets"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)},
        {<<"PageSize">>, maps:get(<<"PageSize">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Create a new voice message and send it to a recipient's phone
%% number.
-spec send_voice_message(aws_client:aws_client(), send_voice_message_request()) ->
    {ok, send_voice_message_response(), tuple()} |
    {error, any()} |
    {error, send_voice_message_errors(), tuple()}.
send_voice_message(Client, Input) ->
    send_voice_message(Client, Input, []).

-spec send_voice_message(aws_client:aws_client(), send_voice_message_request(), proplists:proplist()) ->
    {ok, send_voice_message_response(), tuple()} |
    {error, any()} |
    {error, send_voice_message_errors(), tuple()}.
send_voice_message(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/sms-voice/voice/message"],
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

%% @doc Update an event destination in a configuration set.
%%
%% An event destination is a location that you publish information about your
%% voice calls to. For example, you can log an event to an Amazon CloudWatch
%% destination when a call fails.
-spec update_configuration_set_event_destination(aws_client:aws_client(), binary() | list(), binary() | list(), update_configuration_set_event_destination_request()) ->
    {ok, update_configuration_set_event_destination_response(), tuple()} |
    {error, any()} |
    {error, update_configuration_set_event_destination_errors(), tuple()}.
update_configuration_set_event_destination(Client, ConfigurationSetName, EventDestinationName, Input) ->
    update_configuration_set_event_destination(Client, ConfigurationSetName, EventDestinationName, Input, []).

-spec update_configuration_set_event_destination(aws_client:aws_client(), binary() | list(), binary() | list(), update_configuration_set_event_destination_request(), proplists:proplist()) ->
    {ok, update_configuration_set_event_destination_response(), tuple()} |
    {error, any()} |
    {error, update_configuration_set_event_destination_errors(), tuple()}.
update_configuration_set_event_destination(Client, ConfigurationSetName, EventDestinationName, Input0, Options0) ->
    Method = put,
    Path = ["/v1/sms-voice/configuration-sets/", aws_util:encode_uri(ConfigurationSetName), "/event-destinations/", aws_util:encode_uri(EventDestinationName), ""],
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
    Client1 = Client#{service => <<"sms-voice">>},
    Host = build_host(<<"sms-voice.pinpoint">>, Client1),
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
