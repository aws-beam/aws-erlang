%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Lex provides both build and runtime endpoints.
%%
%% Each endpoint
%% provides a set of operations (API). Your conversational bot uses the
%% runtime API to understand user utterances (user input text or voice). For
%% example, suppose a user says &quot;I want pizza&quot;, your bot sends this
%% input to
%% Amazon Lex using the runtime API. Amazon Lex recognizes that the user
%% request is for the OrderPizza intent (one of the intents defined in the
%% bot). Then Amazon Lex engages in user conversation on behalf of the bot to
%% elicit required information (slot values, such as pizza size and crust
%% type), and then performs fulfillment activity (that you configured when
%% you created the bot). You use the build-time API to create and manage your
%% Amazon Lex bot. For a list of build-time operations, see the build-time
%% API, .
-module(aws_lex_runtime).

-export([delete_session/5,
         delete_session/6,
         get_session/4,
         get_session/6,
         get_session/7,
         post_content/5,
         post_content/6,
         post_text/5,
         post_text/6,
         put_session/5,
         put_session/6]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% active_context() :: #{
%%   <<"name">> => string(),
%%   <<"parameters">> => map(),
%%   <<"timeToLive">> => active_context_time_to_live()
%% }
-type active_context() :: #{binary() => any()}.


%% Example:
%% active_context_time_to_live() :: #{
%%   <<"timeToLiveInSeconds">> => integer(),
%%   <<"turnsToLive">> => integer()
%% }
-type active_context_time_to_live() :: #{binary() => any()}.


%% Example:
%% bad_gateway_exception() :: #{
%%   <<"Message">> => string()
%% }
-type bad_gateway_exception() :: #{binary() => any()}.


%% Example:
%% bad_request_exception() :: #{
%%   <<"message">> => string()
%% }
-type bad_request_exception() :: #{binary() => any()}.


%% Example:
%% button() :: #{
%%   <<"text">> => string(),
%%   <<"value">> => string()
%% }
-type button() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.

%% Example:
%% delete_session_request() :: #{}
-type delete_session_request() :: #{}.


%% Example:
%% delete_session_response() :: #{
%%   <<"botAlias">> => string(),
%%   <<"botName">> => string(),
%%   <<"sessionId">> => string(),
%%   <<"userId">> => string()
%% }
-type delete_session_response() :: #{binary() => any()}.


%% Example:
%% dependency_failed_exception() :: #{
%%   <<"Message">> => string()
%% }
-type dependency_failed_exception() :: #{binary() => any()}.


%% Example:
%% dialog_action() :: #{
%%   <<"fulfillmentState">> => list(any()),
%%   <<"intentName">> => string(),
%%   <<"message">> => string(),
%%   <<"messageFormat">> => list(any()),
%%   <<"slotToElicit">> => string(),
%%   <<"slots">> => map(),
%%   <<"type">> => list(any())
%% }
-type dialog_action() :: #{binary() => any()}.


%% Example:
%% generic_attachment() :: #{
%%   <<"attachmentLinkUrl">> => string(),
%%   <<"buttons">> => list(button()),
%%   <<"imageUrl">> => string(),
%%   <<"subTitle">> => string(),
%%   <<"title">> => string()
%% }
-type generic_attachment() :: #{binary() => any()}.


%% Example:
%% get_session_request() :: #{
%%   <<"checkpointLabelFilter">> => string()
%% }
-type get_session_request() :: #{binary() => any()}.


%% Example:
%% get_session_response() :: #{
%%   <<"activeContexts">> => list(active_context()),
%%   <<"dialogAction">> => dialog_action(),
%%   <<"recentIntentSummaryView">> => list(intent_summary()),
%%   <<"sessionAttributes">> => map(),
%%   <<"sessionId">> => string()
%% }
-type get_session_response() :: #{binary() => any()}.


%% Example:
%% intent_confidence() :: #{
%%   <<"score">> => float()
%% }
-type intent_confidence() :: #{binary() => any()}.


%% Example:
%% intent_summary() :: #{
%%   <<"checkpointLabel">> => string(),
%%   <<"confirmationStatus">> => list(any()),
%%   <<"dialogActionType">> => list(any()),
%%   <<"fulfillmentState">> => list(any()),
%%   <<"intentName">> => string(),
%%   <<"slotToElicit">> => string(),
%%   <<"slots">> => map()
%% }
-type intent_summary() :: #{binary() => any()}.


%% Example:
%% internal_failure_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_failure_exception() :: #{binary() => any()}.


%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"message">> => string(),
%%   <<"retryAfterSeconds">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% loop_detected_exception() :: #{
%%   <<"Message">> => string()
%% }
-type loop_detected_exception() :: #{binary() => any()}.


%% Example:
%% not_acceptable_exception() :: #{
%%   <<"message">> => string()
%% }
-type not_acceptable_exception() :: #{binary() => any()}.


%% Example:
%% not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type not_found_exception() :: #{binary() => any()}.


%% Example:
%% post_content_request() :: #{
%%   <<"accept">> => string(),
%%   <<"activeContexts">> => string(),
%%   <<"contentType">> := string(),
%%   <<"inputStream">> := binary(),
%%   <<"requestAttributes">> => string(),
%%   <<"sessionAttributes">> => string()
%% }
-type post_content_request() :: #{binary() => any()}.


%% Example:
%% post_content_response() :: #{
%%   <<"activeContexts">> => string(),
%%   <<"alternativeIntents">> => string(),
%%   <<"audioStream">> => binary(),
%%   <<"botVersion">> => string(),
%%   <<"contentType">> => string(),
%%   <<"dialogState">> => list(any()),
%%   <<"encodedInputTranscript">> => string(),
%%   <<"encodedMessage">> => string(),
%%   <<"inputTranscript">> => string(),
%%   <<"intentName">> => string(),
%%   <<"message">> => string(),
%%   <<"messageFormat">> => list(any()),
%%   <<"nluIntentConfidence">> => string(),
%%   <<"sentimentResponse">> => string(),
%%   <<"sessionAttributes">> => string(),
%%   <<"sessionId">> => string(),
%%   <<"slotToElicit">> => string(),
%%   <<"slots">> => string()
%% }
-type post_content_response() :: #{binary() => any()}.


%% Example:
%% post_text_request() :: #{
%%   <<"activeContexts">> => list(active_context()),
%%   <<"inputText">> := string(),
%%   <<"requestAttributes">> => map(),
%%   <<"sessionAttributes">> => map()
%% }
-type post_text_request() :: #{binary() => any()}.


%% Example:
%% post_text_response() :: #{
%%   <<"activeContexts">> => list(active_context()),
%%   <<"alternativeIntents">> => list(predicted_intent()),
%%   <<"botVersion">> => string(),
%%   <<"dialogState">> => list(any()),
%%   <<"intentName">> => string(),
%%   <<"message">> => string(),
%%   <<"messageFormat">> => list(any()),
%%   <<"nluIntentConfidence">> => intent_confidence(),
%%   <<"responseCard">> => response_card(),
%%   <<"sentimentResponse">> => sentiment_response(),
%%   <<"sessionAttributes">> => map(),
%%   <<"sessionId">> => string(),
%%   <<"slotToElicit">> => string(),
%%   <<"slots">> => map()
%% }
-type post_text_response() :: #{binary() => any()}.


%% Example:
%% predicted_intent() :: #{
%%   <<"intentName">> => string(),
%%   <<"nluIntentConfidence">> => intent_confidence(),
%%   <<"slots">> => map()
%% }
-type predicted_intent() :: #{binary() => any()}.


%% Example:
%% put_session_request() :: #{
%%   <<"accept">> => string(),
%%   <<"activeContexts">> => list(active_context()),
%%   <<"dialogAction">> => dialog_action(),
%%   <<"recentIntentSummaryView">> => list(intent_summary()),
%%   <<"sessionAttributes">> => map()
%% }
-type put_session_request() :: #{binary() => any()}.


%% Example:
%% put_session_response() :: #{
%%   <<"activeContexts">> => string(),
%%   <<"audioStream">> => binary(),
%%   <<"contentType">> => string(),
%%   <<"dialogState">> => list(any()),
%%   <<"encodedMessage">> => string(),
%%   <<"intentName">> => string(),
%%   <<"message">> => string(),
%%   <<"messageFormat">> => list(any()),
%%   <<"sessionAttributes">> => string(),
%%   <<"sessionId">> => string(),
%%   <<"slotToElicit">> => string(),
%%   <<"slots">> => string()
%% }
-type put_session_response() :: #{binary() => any()}.


%% Example:
%% request_timeout_exception() :: #{
%%   <<"message">> => string()
%% }
-type request_timeout_exception() :: #{binary() => any()}.


%% Example:
%% response_card() :: #{
%%   <<"contentType">> => list(any()),
%%   <<"genericAttachments">> => list(generic_attachment()),
%%   <<"version">> => string()
%% }
-type response_card() :: #{binary() => any()}.


%% Example:
%% sentiment_response() :: #{
%%   <<"sentimentLabel">> => string(),
%%   <<"sentimentScore">> => string()
%% }
-type sentiment_response() :: #{binary() => any()}.


%% Example:
%% unsupported_media_type_exception() :: #{
%%   <<"message">> => string()
%% }
-type unsupported_media_type_exception() :: #{binary() => any()}.

-type delete_session_errors() ::
    not_found_exception() | 
    limit_exceeded_exception() | 
    internal_failure_exception() | 
    conflict_exception() | 
    bad_request_exception().

-type get_session_errors() ::
    not_found_exception() | 
    limit_exceeded_exception() | 
    internal_failure_exception() | 
    bad_request_exception().

-type post_content_errors() ::
    unsupported_media_type_exception() | 
    request_timeout_exception() | 
    not_found_exception() | 
    not_acceptable_exception() | 
    loop_detected_exception() | 
    limit_exceeded_exception() | 
    internal_failure_exception() | 
    dependency_failed_exception() | 
    conflict_exception() | 
    bad_request_exception() | 
    bad_gateway_exception().

-type post_text_errors() ::
    not_found_exception() | 
    loop_detected_exception() | 
    limit_exceeded_exception() | 
    internal_failure_exception() | 
    dependency_failed_exception() | 
    conflict_exception() | 
    bad_request_exception() | 
    bad_gateway_exception().

-type put_session_errors() ::
    not_found_exception() | 
    not_acceptable_exception() | 
    limit_exceeded_exception() | 
    internal_failure_exception() | 
    dependency_failed_exception() | 
    conflict_exception() | 
    bad_request_exception() | 
    bad_gateway_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Removes session information for a specified bot, alias, and user ID.
-spec delete_session(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_session_request()) ->
    {ok, delete_session_response(), tuple()} |
    {error, any()} |
    {error, delete_session_errors(), tuple()}.
delete_session(Client, BotAlias, BotName, UserId, Input) ->
    delete_session(Client, BotAlias, BotName, UserId, Input, []).

-spec delete_session(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_session_request(), proplists:proplist()) ->
    {ok, delete_session_response(), tuple()} |
    {error, any()} |
    {error, delete_session_errors(), tuple()}.
delete_session(Client, BotAlias, BotName, UserId, Input0, Options0) ->
    Method = delete,
    Path = ["/bot/", aws_util:encode_uri(BotName), "/alias/", aws_util:encode_uri(BotAlias), "/user/", aws_util:encode_uri(UserId), "/session"],
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

%% @doc Returns session information for a specified bot, alias, and user
%% ID.
-spec get_session(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_session_response(), tuple()} |
    {error, any()} |
    {error, get_session_errors(), tuple()}.
get_session(Client, BotAlias, BotName, UserId)
  when is_map(Client) ->
    get_session(Client, BotAlias, BotName, UserId, #{}, #{}).

-spec get_session(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_session_response(), tuple()} |
    {error, any()} |
    {error, get_session_errors(), tuple()}.
get_session(Client, BotAlias, BotName, UserId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_session(Client, BotAlias, BotName, UserId, QueryMap, HeadersMap, []).

-spec get_session(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_session_response(), tuple()} |
    {error, any()} |
    {error, get_session_errors(), tuple()}.
get_session(Client, BotAlias, BotName, UserId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/bot/", aws_util:encode_uri(BotName), "/alias/", aws_util:encode_uri(BotAlias), "/user/", aws_util:encode_uri(UserId), "/session"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"checkpointLabelFilter">>, maps:get(<<"checkpointLabelFilter">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Sends user input (text or speech) to Amazon Lex.
%%
%% Clients use this API to
%% send text and audio requests to Amazon Lex at runtime. Amazon Lex
%% interprets the
%% user input using the machine learning model that it built for the bot.
%%
%% The `PostContent' operation supports audio input at 8kHz
%% and 16kHz. You can use 8kHz audio to achieve higher speech recognition
%% accuracy in telephone audio applications.
%%
%% In response, Amazon Lex returns the next message to convey to the user.
%% Consider the following example messages:
%%
%% For a user input &quot;I would like a pizza,&quot; Amazon Lex might return
%% a
%% response with a message eliciting slot data (for example,
%% `PizzaSize'): &quot;What size pizza would you like?&quot;.
%%
%% After the user provides all of the pizza order information, Amazon Lex
%% might return a response with a message to get user confirmation:
%% &quot;Order the pizza?&quot;.
%%
%% After the user replies &quot;Yes&quot; to the confirmation prompt, Amazon
%% Lex
%% might return a conclusion statement: &quot;Thank you, your cheese pizza
%% has
%% been ordered.&quot;.
%%
%% Not all Amazon Lex messages require a response from the user. For example,
%% conclusion statements do not require a response. Some messages require
%% only a yes or no response. In addition to the `message', Amazon Lex
%% provides additional context about the message in the response that you can
%% use to enhance client behavior, such as displaying the appropriate client
%% user interface. Consider the following examples:
%%
%% If the message is to elicit slot data, Amazon Lex returns the
%% following context information:
%%
%% `x-amz-lex-dialog-state' header set to
%% `ElicitSlot'
%%
%% `x-amz-lex-intent-name' header set to the intent name
%% in the current context
%%
%% `x-amz-lex-slot-to-elicit' header set to the slot name
%% for which the `message' is eliciting information
%%
%% `x-amz-lex-slots' header set to a map of slots
%% configured for the intent with their current values
%%
%% If the message is a confirmation prompt, the
%% `x-amz-lex-dialog-state' header is set to
%% `Confirmation' and the
%% `x-amz-lex-slot-to-elicit' header is omitted.
%%
%% If the message is a clarification prompt configured for the
%% intent, indicating that the user intent is not understood, the
%% `x-amz-dialog-state' header is set to
%% `ElicitIntent' and the `x-amz-slot-to-elicit'
%% header is omitted.
%%
%% In addition, Amazon Lex also returns your application-specific
%% `sessionAttributes'. For more information, see Managing
%% Conversation Context:
%% https://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html.
-spec post_content(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), post_content_request()) ->
    {ok, post_content_response(), tuple()} |
    {error, any()} |
    {error, post_content_errors(), tuple()}.
post_content(Client, BotAlias, BotName, UserId, Input) ->
    post_content(Client, BotAlias, BotName, UserId, Input, []).

-spec post_content(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), post_content_request(), proplists:proplist()) ->
    {ok, post_content_response(), tuple()} |
    {error, any()} |
    {error, post_content_errors(), tuple()}.
post_content(Client, BotAlias, BotName, UserId, Input0, Options0) ->
    Method = post,
    Path = ["/bot/", aws_util:encode_uri(BotName), "/alias/", aws_util:encode_uri(BotAlias), "/user/", aws_util:encode_uri(UserId), "/content"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"Accept">>, <<"accept">>},
                       {<<"x-amz-lex-active-contexts">>, <<"activeContexts">>},
                       {<<"Content-Type">>, <<"contentType">>},
                       {<<"x-amz-lex-request-attributes">>, <<"requestAttributes">>},
                       {<<"x-amz-lex-session-attributes">>, <<"sessionAttributes">>}
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
            {<<"x-amz-lex-active-contexts">>, <<"activeContexts">>},
            {<<"x-amz-lex-alternative-intents">>, <<"alternativeIntents">>},
            {<<"x-amz-lex-bot-version">>, <<"botVersion">>},
            {<<"Content-Type">>, <<"contentType">>},
            {<<"x-amz-lex-dialog-state">>, <<"dialogState">>},
            {<<"x-amz-lex-encoded-input-transcript">>, <<"encodedInputTranscript">>},
            {<<"x-amz-lex-encoded-message">>, <<"encodedMessage">>},
            {<<"x-amz-lex-input-transcript">>, <<"inputTranscript">>},
            {<<"x-amz-lex-intent-name">>, <<"intentName">>},
            {<<"x-amz-lex-message">>, <<"message">>},
            {<<"x-amz-lex-message-format">>, <<"messageFormat">>},
            {<<"x-amz-lex-nlu-intent-confidence">>, <<"nluIntentConfidence">>},
            {<<"x-amz-lex-sentiment">>, <<"sentimentResponse">>},
            {<<"x-amz-lex-session-attributes">>, <<"sessionAttributes">>},
            {<<"x-amz-lex-session-id">>, <<"sessionId">>},
            {<<"x-amz-lex-slot-to-elicit">>, <<"slotToElicit">>},
            {<<"x-amz-lex-slots">>, <<"slots">>}
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

%% @doc Sends user input to Amazon Lex.
%%
%% Client applications can use this API to
%% send requests to Amazon Lex at runtime. Amazon Lex then interprets the
%% user input
%% using the machine learning model it built for the bot.
%%
%% In response, Amazon Lex returns the next `message' to convey to
%% the user an optional `responseCard' to display. Consider the
%% following example messages:
%%
%% For a user input &quot;I would like a pizza&quot;, Amazon Lex might return
%% a
%% response with a message eliciting slot data (for example, PizzaSize):
%% &quot;What size pizza would you like?&quot;
%%
%% After the user provides all of the pizza order information,
%% Amazon Lex might return a response with a message to obtain user
%% confirmation &quot;Proceed with the pizza order?&quot;.
%%
%% After the user replies to a confirmation prompt with a &quot;yes&quot;,
%% Amazon Lex might return a conclusion statement: &quot;Thank you, your
%% cheese
%% pizza has been ordered.&quot;.
%%
%% Not all Amazon Lex messages require a user response. For example, a
%% conclusion statement does not require a response. Some messages require
%% only a &quot;yes&quot; or &quot;no&quot; user response. In addition to the
%% `message', Amazon Lex provides additional context about the
%% message in the response that you might use to enhance client behavior, for
%% example, to display the appropriate client user interface. These are the
%% `slotToElicit', `dialogState',
%% `intentName', and `slots' fields in the response.
%% Consider the following examples:
%%
%% If the message is to elicit slot data, Amazon Lex returns the
%% following context information:
%%
%% `dialogState' set to ElicitSlot
%%
%% `intentName' set to the intent name in the current
%% context
%%
%% `slotToElicit' set to the slot name for which the
%% `message' is eliciting information
%%
%% `slots' set to a map of slots, configured for the
%% intent, with currently known values
%%
%% If the message is a confirmation prompt, the
%% `dialogState' is set to ConfirmIntent and
%% `SlotToElicit' is set to null.
%%
%% If the message is a clarification prompt (configured for the
%% intent) that indicates that user intent is not understood, the
%% `dialogState' is set to ElicitIntent and
%% `slotToElicit' is set to null.
%%
%% In addition, Amazon Lex also returns your application-specific
%% `sessionAttributes'. For more information, see Managing
%% Conversation Context:
%% https://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html.
-spec post_text(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), post_text_request()) ->
    {ok, post_text_response(), tuple()} |
    {error, any()} |
    {error, post_text_errors(), tuple()}.
post_text(Client, BotAlias, BotName, UserId, Input) ->
    post_text(Client, BotAlias, BotName, UserId, Input, []).

-spec post_text(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), post_text_request(), proplists:proplist()) ->
    {ok, post_text_response(), tuple()} |
    {error, any()} |
    {error, post_text_errors(), tuple()}.
post_text(Client, BotAlias, BotName, UserId, Input0, Options0) ->
    Method = post,
    Path = ["/bot/", aws_util:encode_uri(BotName), "/alias/", aws_util:encode_uri(BotAlias), "/user/", aws_util:encode_uri(UserId), "/text"],
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

%% @doc Creates a new session or modifies an existing session with an Amazon
%% Lex
%% bot.
%%
%% Use this operation to enable your application to set the state of the
%% bot.
%%
%% For more information, see Managing
%% Sessions: https://docs.aws.amazon.com/lex/latest/dg/how-session-api.html.
-spec put_session(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), put_session_request()) ->
    {ok, put_session_response(), tuple()} |
    {error, any()} |
    {error, put_session_errors(), tuple()}.
put_session(Client, BotAlias, BotName, UserId, Input) ->
    put_session(Client, BotAlias, BotName, UserId, Input, []).

-spec put_session(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), put_session_request(), proplists:proplist()) ->
    {ok, put_session_response(), tuple()} |
    {error, any()} |
    {error, put_session_errors(), tuple()}.
put_session(Client, BotAlias, BotName, UserId, Input0, Options0) ->
    Method = post,
    Path = ["/bot/", aws_util:encode_uri(BotName), "/alias/", aws_util:encode_uri(BotAlias), "/user/", aws_util:encode_uri(UserId), "/session"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"Accept">>, <<"accept">>}
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
            {<<"x-amz-lex-active-contexts">>, <<"activeContexts">>},
            {<<"Content-Type">>, <<"contentType">>},
            {<<"x-amz-lex-dialog-state">>, <<"dialogState">>},
            {<<"x-amz-lex-encoded-message">>, <<"encodedMessage">>},
            {<<"x-amz-lex-intent-name">>, <<"intentName">>},
            {<<"x-amz-lex-message">>, <<"message">>},
            {<<"x-amz-lex-message-format">>, <<"messageFormat">>},
            {<<"x-amz-lex-session-attributes">>, <<"sessionAttributes">>},
            {<<"x-amz-lex-session-id">>, <<"sessionId">>},
            {<<"x-amz-lex-slot-to-elicit">>, <<"slotToElicit">>},
            {<<"x-amz-lex-slots">>, <<"slots">>}
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
    Host = build_host(<<"runtime.lex">>, Client1),
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
