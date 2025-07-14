%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc This section contains documentation for the Amazon Lex V2 Runtime V2
%% API operations.
-module(aws_lex_runtime_v2).

-export([delete_session/6,
         delete_session/7,
         get_session/5,
         get_session/7,
         get_session/8,
         put_session/6,
         put_session/7,
         recognize_text/6,
         recognize_text/7,
         recognize_utterance/6,
         recognize_utterance/7,
         start_conversation/6,
         start_conversation/7]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% recognized_bot_member() :: #{
%%   <<"botId">> => string(),
%%   <<"botName">> => string()
%% }
-type recognized_bot_member() :: #{binary() => any()}.


%% Example:
%% get_session_response() :: #{
%%   <<"interpretations">> => list(interpretation()),
%%   <<"messages">> => list(message()),
%%   <<"sessionId">> => string(),
%%   <<"sessionState">> => session_state()
%% }
-type get_session_response() :: #{binary() => any()}.


%% Example:
%% put_session_request() :: #{
%%   <<"messages">> => list(message()),
%%   <<"requestAttributes">> => map(),
%%   <<"responseContentType">> => string(),
%%   <<"sessionState">> := session_state()
%% }
-type put_session_request() :: #{binary() => any()}.


%% Example:
%% elicit_sub_slot() :: #{
%%   <<"name">> => string(),
%%   <<"subSlotToElicit">> => elicit_sub_slot()
%% }
-type elicit_sub_slot() :: #{binary() => any()}.


%% Example:
%% recognize_text_request() :: #{
%%   <<"requestAttributes">> => map(),
%%   <<"sessionState">> => session_state(),
%%   <<"text">> := string()
%% }
-type recognize_text_request() :: #{binary() => any()}.


%% Example:
%% bad_gateway_exception() :: #{
%%   <<"message">> => string()
%% }
-type bad_gateway_exception() :: #{binary() => any()}.


%% Example:
%% slot() :: #{
%%   <<"shape">> => list(any()),
%%   <<"subSlots">> => map(),
%%   <<"value">> => value(),
%%   <<"values">> => list(slot())
%% }
-type slot() :: #{binary() => any()}.


%% Example:
%% dependency_failed_exception() :: #{
%%   <<"message">> => string()
%% }
-type dependency_failed_exception() :: #{binary() => any()}.


%% Example:
%% d_t_m_f_input_event() :: #{
%%   <<"clientTimestampMillis">> => float(),
%%   <<"eventId">> => string(),
%%   <<"inputCharacter">> => string()
%% }
-type d_t_m_f_input_event() :: #{binary() => any()}.


%% Example:
%% recognize_utterance_request() :: #{
%%   <<"inputStream">> => binary(),
%%   <<"requestAttributes">> => string(),
%%   <<"requestContentType">> := string(),
%%   <<"responseContentType">> => string(),
%%   <<"sessionState">> => string()
%% }
-type recognize_utterance_request() :: #{binary() => any()}.


%% Example:
%% value() :: #{
%%   <<"interpretedValue">> => string(),
%%   <<"originalValue">> => string(),
%%   <<"resolvedValues">> => list(string())
%% }
-type value() :: #{binary() => any()}.


%% Example:
%% sentiment_response() :: #{
%%   <<"sentiment">> => list(any()),
%%   <<"sentimentScore">> => sentiment_score()
%% }
-type sentiment_response() :: #{binary() => any()}.


%% Example:
%% active_context_time_to_live() :: #{
%%   <<"timeToLiveInSeconds">> => integer(),
%%   <<"turnsToLive">> => integer()
%% }
-type active_context_time_to_live() :: #{binary() => any()}.


%% Example:
%% text_input_event() :: #{
%%   <<"clientTimestampMillis">> => float(),
%%   <<"eventId">> => string(),
%%   <<"text">> => string()
%% }
-type text_input_event() :: #{binary() => any()}.


%% Example:
%% image_response_card() :: #{
%%   <<"buttons">> => list(button()),
%%   <<"imageUrl">> => string(),
%%   <<"subtitle">> => string(),
%%   <<"title">> => string()
%% }
-type image_response_card() :: #{binary() => any()}.

%% Example:
%% get_session_request() :: #{}
-type get_session_request() :: #{}.


%% Example:
%% put_session_response() :: #{
%%   <<"audioStream">> => binary(),
%%   <<"contentType">> => string(),
%%   <<"messages">> => string(),
%%   <<"requestAttributes">> => string(),
%%   <<"sessionId">> => string(),
%%   <<"sessionState">> => string()
%% }
-type put_session_response() :: #{binary() => any()}.


%% Example:
%% intent() :: #{
%%   <<"confirmationState">> => list(any()),
%%   <<"name">> => string(),
%%   <<"slots">> => map(),
%%   <<"state">> => list(any())
%% }
-type intent() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% sentiment_score() :: #{
%%   <<"mixed">> => float(),
%%   <<"negative">> => float(),
%%   <<"neutral">> => float(),
%%   <<"positive">> => float()
%% }
-type sentiment_score() :: #{binary() => any()}.


%% Example:
%% intent_result_event() :: #{
%%   <<"eventId">> => string(),
%%   <<"inputMode">> => list(any()),
%%   <<"interpretations">> => list(interpretation()),
%%   <<"recognizedBotMember">> => recognized_bot_member(),
%%   <<"requestAttributes">> => map(),
%%   <<"sessionId">> => string(),
%%   <<"sessionState">> => session_state()
%% }
-type intent_result_event() :: #{binary() => any()}.


%% Example:
%% delete_session_response() :: #{
%%   <<"botAliasId">> => string(),
%%   <<"botId">> => string(),
%%   <<"localeId">> => string(),
%%   <<"sessionId">> => string()
%% }
-type delete_session_response() :: #{binary() => any()}.


%% Example:
%% text_response_event() :: #{
%%   <<"eventId">> => string(),
%%   <<"messages">> => list(message())
%% }
-type text_response_event() :: #{binary() => any()}.


%% Example:
%% active_context() :: #{
%%   <<"contextAttributes">> => map(),
%%   <<"name">> => string(),
%%   <<"timeToLive">> => active_context_time_to_live()
%% }
-type active_context() :: #{binary() => any()}.


%% Example:
%% confidence_score() :: #{
%%   <<"score">> => float()
%% }
-type confidence_score() :: #{binary() => any()}.


%% Example:
%% disconnection_event() :: #{
%%   <<"clientTimestampMillis">> => float(),
%%   <<"eventId">> => string()
%% }
-type disconnection_event() :: #{binary() => any()}.


%% Example:
%% session_state() :: #{
%%   <<"activeContexts">> => list(active_context()),
%%   <<"dialogAction">> => dialog_action(),
%%   <<"intent">> => intent(),
%%   <<"originatingRequestId">> => string(),
%%   <<"runtimeHints">> => runtime_hints(),
%%   <<"sessionAttributes">> => map()
%% }
-type session_state() :: #{binary() => any()}.


%% Example:
%% recognize_text_response() :: #{
%%   <<"interpretations">> => list(interpretation()),
%%   <<"messages">> => list(message()),
%%   <<"recognizedBotMember">> => recognized_bot_member(),
%%   <<"requestAttributes">> => map(),
%%   <<"sessionId">> => string(),
%%   <<"sessionState">> => session_state()
%% }
-type recognize_text_response() :: #{binary() => any()}.


%% Example:
%% audio_response_event() :: #{
%%   <<"audioChunk">> => binary(),
%%   <<"contentType">> => string(),
%%   <<"eventId">> => string()
%% }
-type audio_response_event() :: #{binary() => any()}.


%% Example:
%% runtime_hint_value() :: #{
%%   <<"phrase">> => string()
%% }
-type runtime_hint_value() :: #{binary() => any()}.


%% Example:
%% start_conversation_request() :: #{
%%   <<"conversationMode">> => list(any()),
%%   <<"requestEventStream">> := list()
%% }
-type start_conversation_request() :: #{binary() => any()}.


%% Example:
%% recognize_utterance_response() :: #{
%%   <<"audioStream">> => binary(),
%%   <<"contentType">> => string(),
%%   <<"inputMode">> => string(),
%%   <<"inputTranscript">> => string(),
%%   <<"interpretations">> => string(),
%%   <<"messages">> => string(),
%%   <<"recognizedBotMember">> => string(),
%%   <<"requestAttributes">> => string(),
%%   <<"sessionId">> => string(),
%%   <<"sessionState">> => string()
%% }
-type recognize_utterance_response() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% configuration_event() :: #{
%%   <<"clientTimestampMillis">> => float(),
%%   <<"disablePlayback">> => boolean(),
%%   <<"eventId">> => string(),
%%   <<"requestAttributes">> => map(),
%%   <<"responseContentType">> => string(),
%%   <<"sessionState">> => session_state(),
%%   <<"welcomeMessages">> => list(message())
%% }
-type configuration_event() :: #{binary() => any()}.


%% Example:
%% playback_interruption_event() :: #{
%%   <<"causedByEventId">> => string(),
%%   <<"eventId">> => string(),
%%   <<"eventReason">> => list(any())
%% }
-type playback_interruption_event() :: #{binary() => any()}.


%% Example:
%% runtime_hints() :: #{
%%   <<"slotHints">> => map()
%% }
-type runtime_hints() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.


%% Example:
%% playback_completion_event() :: #{
%%   <<"clientTimestampMillis">> => float(),
%%   <<"eventId">> => string()
%% }
-type playback_completion_event() :: #{binary() => any()}.


%% Example:
%% heartbeat_event() :: #{
%%   <<"eventId">> => string()
%% }
-type heartbeat_event() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% start_conversation_response() :: #{
%%   <<"responseEventStream">> => list()
%% }
-type start_conversation_response() :: #{binary() => any()}.


%% Example:
%% button() :: #{
%%   <<"text">> => string(),
%%   <<"value">> => string()
%% }
-type button() :: #{binary() => any()}.


%% Example:
%% dialog_action() :: #{
%%   <<"slotElicitationStyle">> => list(any()),
%%   <<"slotToElicit">> => string(),
%%   <<"subSlotToElicit">> => elicit_sub_slot(),
%%   <<"type">> => list(any())
%% }
-type dialog_action() :: #{binary() => any()}.


%% Example:
%% runtime_hint_details() :: #{
%%   <<"runtimeHintValues">> => list(runtime_hint_value()),
%%   <<"subSlotHints">> => map()
%% }
-type runtime_hint_details() :: #{binary() => any()}.


%% Example:
%% transcript_event() :: #{
%%   <<"eventId">> => string(),
%%   <<"transcript">> => string()
%% }
-type transcript_event() :: #{binary() => any()}.

%% Example:
%% delete_session_request() :: #{}
-type delete_session_request() :: #{}.


%% Example:
%% interpretation() :: #{
%%   <<"intent">> => intent(),
%%   <<"interpretationSource">> => list(any()),
%%   <<"nluConfidence">> => confidence_score(),
%%   <<"sentimentResponse">> => sentiment_response()
%% }
-type interpretation() :: #{binary() => any()}.


%% Example:
%% audio_input_event() :: #{
%%   <<"audioChunk">> => binary(),
%%   <<"clientTimestampMillis">> => float(),
%%   <<"contentType">> => string(),
%%   <<"eventId">> => string()
%% }
-type audio_input_event() :: #{binary() => any()}.


%% Example:
%% message() :: #{
%%   <<"content">> => string(),
%%   <<"contentType">> => list(any()),
%%   <<"imageResponseCard">> => image_response_card()
%% }
-type message() :: #{binary() => any()}.

-type delete_session_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_session_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type put_session_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    dependency_failed_exception() | 
    bad_gateway_exception().

-type recognize_text_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    dependency_failed_exception() | 
    bad_gateway_exception().

-type recognize_utterance_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    dependency_failed_exception() | 
    bad_gateway_exception().

-type start_conversation_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Removes session information for a specified bot, alias, and user ID.
%%
%% You can use this operation to restart a conversation with a bot.
%% When you remove a session, the entire history of the session is removed
%% so that you can start again.
%%
%% You don't need to delete a session. Sessions have a time limit and
%% will expire. Set the session time limit when you create the bot. The
%% default is 5 minutes, but you can specify anything between 1 minute and
%% 24 hours.
%%
%% If you specify a bot or alias ID that doesn't exist, you receive a
%% `BadRequestException.'
%%
%% If the locale doesn't exist in the bot, or if the locale hasn't
%% been
%% enables for the alias, you receive a
%% `BadRequestException'.
-spec delete_session(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), delete_session_request()) ->
    {ok, delete_session_response(), tuple()} |
    {error, any()} |
    {error, delete_session_errors(), tuple()}.
delete_session(Client, BotAliasId, BotId, LocaleId, SessionId, Input) ->
    delete_session(Client, BotAliasId, BotId, LocaleId, SessionId, Input, []).

-spec delete_session(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), delete_session_request(), proplists:proplist()) ->
    {ok, delete_session_response(), tuple()} |
    {error, any()} |
    {error, delete_session_errors(), tuple()}.
delete_session(Client, BotAliasId, BotId, LocaleId, SessionId, Input0, Options0) ->
    Method = delete,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botAliases/", aws_util:encode_uri(BotAliasId), "/botLocales/", aws_util:encode_uri(LocaleId), "/sessions/", aws_util:encode_uri(SessionId), ""],
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

%% @doc Returns session information for a specified bot, alias, and
%% user.
%%
%% For example, you can use this operation to retrieve session
%% information for a user that has left a long-running session in
%% use.
%%
%% If the bot, alias, or session identifier doesn't exist, Amazon Lex V2
%% returns a `BadRequestException'. If the locale doesn't exist
%% or is not enabled for the alias, you receive a
%% `BadRequestException'.
-spec get_session(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_session_response(), tuple()} |
    {error, any()} |
    {error, get_session_errors(), tuple()}.
get_session(Client, BotAliasId, BotId, LocaleId, SessionId)
  when is_map(Client) ->
    get_session(Client, BotAliasId, BotId, LocaleId, SessionId, #{}, #{}).

-spec get_session(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_session_response(), tuple()} |
    {error, any()} |
    {error, get_session_errors(), tuple()}.
get_session(Client, BotAliasId, BotId, LocaleId, SessionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_session(Client, BotAliasId, BotId, LocaleId, SessionId, QueryMap, HeadersMap, []).

-spec get_session(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_session_response(), tuple()} |
    {error, any()} |
    {error, get_session_errors(), tuple()}.
get_session(Client, BotAliasId, BotId, LocaleId, SessionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botAliases/", aws_util:encode_uri(BotAliasId), "/botLocales/", aws_util:encode_uri(LocaleId), "/sessions/", aws_util:encode_uri(SessionId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Creates a new session or modifies an existing session with an Amazon
%% Lex V2
%% bot.
%%
%% Use this operation to enable your application to set the state of
%% the bot.
-spec put_session(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), put_session_request()) ->
    {ok, put_session_response(), tuple()} |
    {error, any()} |
    {error, put_session_errors(), tuple()}.
put_session(Client, BotAliasId, BotId, LocaleId, SessionId, Input) ->
    put_session(Client, BotAliasId, BotId, LocaleId, SessionId, Input, []).

-spec put_session(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), put_session_request(), proplists:proplist()) ->
    {ok, put_session_response(), tuple()} |
    {error, any()} |
    {error, put_session_errors(), tuple()}.
put_session(Client, BotAliasId, BotId, LocaleId, SessionId, Input0, Options0) ->
    Method = post,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botAliases/", aws_util:encode_uri(BotAliasId), "/botLocales/", aws_util:encode_uri(LocaleId), "/sessions/", aws_util:encode_uri(SessionId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"ResponseContentType">>, <<"responseContentType">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"Content-Type">>, <<"contentType">>},
            {<<"x-amz-lex-messages">>, <<"messages">>},
            {<<"x-amz-lex-request-attributes">>, <<"requestAttributes">>},
            {<<"x-amz-lex-session-id">>, <<"sessionId">>},
            {<<"x-amz-lex-session-state">>, <<"sessionState">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Sends user input to Amazon Lex V2.
%%
%% Client applications use this API to send
%% requests to Amazon Lex V2 at runtime. Amazon Lex V2 then interprets the
%% user input
%% using the machine learning model that it build for the bot.
%%
%% In response, Amazon Lex V2 returns the next message to convey to the user
%% and an optional response card to display.
%%
%% If the optional post-fulfillment response is specified, the messages
%% are returned as follows. For more information, see
%% PostFulfillmentStatusSpecification:
%% https://docs.aws.amazon.com/lexv2/latest/dg/API_PostFulfillmentStatusSpecification.html.
%%
%% Success message - Returned if
%% the Lambda function completes successfully and the intent state is
%% fulfilled or ready fulfillment if the message is present.
%%
%% Failed message - The failed
%% message is returned if the Lambda function throws an exception or
%% if the Lambda function returns a failed intent state without a
%% message.
%%
%% Timeout message - If you
%% don't configure a timeout message and a timeout, and the Lambda
%% function doesn't return within 30 seconds, the timeout message is
%% returned. If you configure a timeout, the timeout message is
%% returned when the period times out.
%%
%% For more information, see Completion message:
%% https://docs.aws.amazon.com/lexv2/latest/dg/streaming-progress.html#progress-complete.html.
-spec recognize_text(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), recognize_text_request()) ->
    {ok, recognize_text_response(), tuple()} |
    {error, any()} |
    {error, recognize_text_errors(), tuple()}.
recognize_text(Client, BotAliasId, BotId, LocaleId, SessionId, Input) ->
    recognize_text(Client, BotAliasId, BotId, LocaleId, SessionId, Input, []).

-spec recognize_text(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), recognize_text_request(), proplists:proplist()) ->
    {ok, recognize_text_response(), tuple()} |
    {error, any()} |
    {error, recognize_text_errors(), tuple()}.
recognize_text(Client, BotAliasId, BotId, LocaleId, SessionId, Input0, Options0) ->
    Method = post,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botAliases/", aws_util:encode_uri(BotAliasId), "/botLocales/", aws_util:encode_uri(LocaleId), "/sessions/", aws_util:encode_uri(SessionId), "/text"],
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

%% @doc Sends user input to Amazon Lex V2.
%%
%% You can send text or speech. Clients use
%% this API to send text and audio requests to Amazon Lex V2 at runtime.
%% Amazon Lex V2
%% interprets the user input using the machine learning model built for
%% the bot.
%%
%% The following request fields must be compressed with gzip and then
%% base64 encoded before you send them to Amazon Lex V2.
%%
%% requestAttributes
%%
%% sessionState
%%
%% The following response fields are compressed using gzip and then
%% base64 encoded by Amazon Lex V2. Before you can use these fields, you must
%% decode and decompress them.
%%
%% inputTranscript
%%
%% interpretations
%%
%% messages
%%
%% requestAttributes
%%
%% sessionState
%%
%% The example contains a Java application that compresses and encodes
%% a Java object to send to Amazon Lex V2, and a second that decodes and
%% decompresses a response from Amazon Lex V2.
%%
%% If the optional post-fulfillment response is specified, the messages
%% are returned as follows. For more information, see
%% PostFulfillmentStatusSpecification:
%% https://docs.aws.amazon.com/lexv2/latest/dg/API_PostFulfillmentStatusSpecification.html.
%%
%% Success message - Returned if
%% the Lambda function completes successfully and the intent state is
%% fulfilled or ready fulfillment if the message is present.
%%
%% Failed message - The failed
%% message is returned if the Lambda function throws an exception or
%% if the Lambda function returns a failed intent state without a
%% message.
%%
%% Timeout message - If you
%% don't configure a timeout message and a timeout, and the Lambda
%% function doesn't return within 30 seconds, the timeout message is
%% returned. If you configure a timeout, the timeout message is
%% returned when the period times out.
%%
%% For more information, see Completion message:
%% https://docs.aws.amazon.com/lexv2/latest/dg/streaming-progress.html#progress-complete.html.
-spec recognize_utterance(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), recognize_utterance_request()) ->
    {ok, recognize_utterance_response(), tuple()} |
    {error, any()} |
    {error, recognize_utterance_errors(), tuple()}.
recognize_utterance(Client, BotAliasId, BotId, LocaleId, SessionId, Input) ->
    recognize_utterance(Client, BotAliasId, BotId, LocaleId, SessionId, Input, []).

-spec recognize_utterance(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), recognize_utterance_request(), proplists:proplist()) ->
    {ok, recognize_utterance_response(), tuple()} |
    {error, any()} |
    {error, recognize_utterance_errors(), tuple()}.
recognize_utterance(Client, BotAliasId, BotId, LocaleId, SessionId, Input0, Options0) ->
    Method = post,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botAliases/", aws_util:encode_uri(BotAliasId), "/botLocales/", aws_util:encode_uri(LocaleId), "/sessions/", aws_util:encode_uri(SessionId), "/utterance"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-lex-request-attributes">>, <<"requestAttributes">>},
                       {<<"Content-Type">>, <<"requestContentType">>},
                       {<<"Response-Content-Type">>, <<"responseContentType">>},
                       {<<"x-amz-lex-session-state">>, <<"sessionState">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"Content-Type">>, <<"contentType">>},
            {<<"x-amz-lex-input-mode">>, <<"inputMode">>},
            {<<"x-amz-lex-input-transcript">>, <<"inputTranscript">>},
            {<<"x-amz-lex-interpretations">>, <<"interpretations">>},
            {<<"x-amz-lex-messages">>, <<"messages">>},
            {<<"x-amz-lex-recognized-bot-member">>, <<"recognizedBotMember">>},
            {<<"x-amz-lex-request-attributes">>, <<"requestAttributes">>},
            {<<"x-amz-lex-session-id">>, <<"sessionId">>},
            {<<"x-amz-lex-session-state">>, <<"sessionState">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Starts an HTTP/2 bidirectional event stream that enables you to send
%% audio, text, or DTMF input in real time.
%%
%% After your application starts
%% a conversation, users send input to Amazon Lex V2 as a stream of events.
%% Amazon Lex V2
%% processes the incoming events and responds with streaming text or audio
%% events.
%%
%% Audio input must be in the following format:
%% ```
%% audio/lpcm sample-rate=8000 sample-size-bits=16 channel-count=1;
%% is-big-endian=false'''.
%%
%% If the optional post-fulfillment response is specified, the messages
%% are returned as follows. For more information, see
%% PostFulfillmentStatusSpecification:
%% https://docs.aws.amazon.com/lexv2/latest/dg/API_PostFulfillmentStatusSpecification.html.
%%
%% Success message - Returned if
%% the Lambda function completes successfully and the intent state is
%% fulfilled or ready fulfillment if the message is present.
%%
%% Failed message - The failed
%% message is returned if the Lambda function throws an exception or
%% if the Lambda function returns a failed intent state without a
%% message.
%%
%% Timeout message - If you
%% don't configure a timeout message and a timeout, and the Lambda
%% function doesn't return within 30 seconds, the timeout message is
%% returned. If you configure a timeout, the timeout message is
%% returned when the period times out.
%%
%% For more information, see Completion message:
%% https://docs.aws.amazon.com/lexv2/latest/dg/streaming-progress.html#progress-complete.html.
%%
%% If the optional update message is configured, it is played at the
%% specified frequency while the Lambda function is running and the update
%% message state is active. If the fulfillment update message is not
%% active, the Lambda function runs with a 30 second timeout.
%%
%% For more information, see Update message :
%% https://docs.aws.amazon.com/lexv2/latest/dg/streaming-progress.html#progress-update.html
%%
%% The `StartConversation' operation is supported only in
%% the following SDKs:
%%
%% AWS SDK for C++:
%% https://docs.aws.amazon.com/goto/SdkForCpp/runtime.lex.v2-2020-08-07/StartConversation
%%
%% AWS SDK for Java V2:
%% https://docs.aws.amazon.com/goto/SdkForJavaV2/runtime.lex.v2-2020-08-07/StartConversation
%%
%% AWS SDK for Ruby V3:
%% https://docs.aws.amazon.com/goto/SdkForRubyV3/runtime.lex.v2-2020-08-07/StartConversation
-spec start_conversation(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), start_conversation_request()) ->
    {ok, start_conversation_response(), tuple()} |
    {error, any()} |
    {error, start_conversation_errors(), tuple()}.
start_conversation(Client, BotAliasId, BotId, LocaleId, SessionId, Input) ->
    start_conversation(Client, BotAliasId, BotId, LocaleId, SessionId, Input, []).

-spec start_conversation(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), start_conversation_request(), proplists:proplist()) ->
    {ok, start_conversation_response(), tuple()} |
    {error, any()} |
    {error, start_conversation_errors(), tuple()}.
start_conversation(Client, BotAliasId, BotId, LocaleId, SessionId, Input0, Options0) ->
    Method = post,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botAliases/", aws_util:encode_uri(BotAliasId), "/botLocales/", aws_util:encode_uri(LocaleId), "/sessions/", aws_util:encode_uri(SessionId), "/conversation"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amz-lex-conversation-mode">>, <<"conversationMode">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

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
    Client1 = Client#{service => <<"lex">>},
    Host = build_host(<<"runtime-v2-lex">>, Client1),
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
