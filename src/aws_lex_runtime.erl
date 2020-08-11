%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Lex provides both build and runtime endpoints. Each endpoint
%% provides a set of operations (API). Your conversational bot uses the
%% runtime API to understand user utterances (user input text or voice). For
%% example, suppose a user says "I want pizza", your bot sends this input to
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
         get_session/5,
         post_content/5,
         post_content/6,
         post_text/5,
         post_text/6,
         put_session/5,
         put_session/6]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Removes session information for a specified bot, alias, and user ID.
delete_session(Client, BotAlias, BotName, UserId, Input) ->
    delete_session(Client, BotAlias, BotName, UserId, Input, []).
delete_session(Client, BotAlias, BotName, UserId, Input0, Options) ->
    Method = delete,
    Path = ["/bot/", http_uri:encode(BotName), "/alias/", http_uri:encode(BotAlias), "/user/", http_uri:encode(UserId), "/session"],
    SuccessStatusCode = undefined,
    Headers = [],
    Input = Input0,
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc Returns session information for a specified bot, alias, and user ID.
get_session(Client, BotAlias, BotName, UserId)
  when is_map(Client) ->
    get_session(Client, BotAlias, BotName, UserId, []).
get_session(Client, BotAlias, BotName, UserId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/bot/", http_uri:encode(BotName), "/alias/", http_uri:encode(BotAlias), "/user/", http_uri:encode(UserId), "/session"],
    SuccessStatusCode = undefined,
    Headers = [],
    request(Client, get, Path, Headers, undefined, Options, SuccessStatusCode).

%% @doc Sends user input (text or speech) to Amazon Lex. Clients use this API
%% to send text and audio requests to Amazon Lex at runtime. Amazon Lex
%% interprets the user input using the machine learning model that it built
%% for the bot.
%%
%% The <code>PostContent</code> operation supports audio input at 8kHz and
%% 16kHz. You can use 8kHz audio to achieve higher speech recognition
%% accuracy in telephone audio applications.
%%
%% In response, Amazon Lex returns the next message to convey to the user.
%% Consider the following example messages:
%%
%% <ul> <li> For a user input "I would like a pizza," Amazon Lex might return
%% a response with a message eliciting slot data (for example,
%% <code>PizzaSize</code>): "What size pizza would you like?".
%%
%% </li> <li> After the user provides all of the pizza order information,
%% Amazon Lex might return a response with a message to get user
%% confirmation: "Order the pizza?".
%%
%% </li> <li> After the user replies "Yes" to the confirmation prompt, Amazon
%% Lex might return a conclusion statement: "Thank you, your cheese pizza has
%% been ordered.".
%%
%% </li> </ul> Not all Amazon Lex messages require a response from the user.
%% For example, conclusion statements do not require a response. Some
%% messages require only a yes or no response. In addition to the
%% <code>message</code>, Amazon Lex provides additional context about the
%% message in the response that you can use to enhance client behavior, such
%% as displaying the appropriate client user interface. Consider the
%% following examples:
%%
%% <ul> <li> If the message is to elicit slot data, Amazon Lex returns the
%% following context information:
%%
%% <ul> <li> <code>x-amz-lex-dialog-state</code> header set to
%% <code>ElicitSlot</code>
%%
%% </li> <li> <code>x-amz-lex-intent-name</code> header set to the intent
%% name in the current context
%%
%% </li> <li> <code>x-amz-lex-slot-to-elicit</code> header set to the slot
%% name for which the <code>message</code> is eliciting information
%%
%% </li> <li> <code>x-amz-lex-slots</code> header set to a map of slots
%% configured for the intent with their current values
%%
%% </li> </ul> </li> <li> If the message is a confirmation prompt, the
%% <code>x-amz-lex-dialog-state</code> header is set to
%% <code>Confirmation</code> and the <code>x-amz-lex-slot-to-elicit</code>
%% header is omitted.
%%
%% </li> <li> If the message is a clarification prompt configured for the
%% intent, indicating that the user intent is not understood, the
%% <code>x-amz-dialog-state</code> header is set to <code>ElicitIntent</code>
%% and the <code>x-amz-slot-to-elicit</code> header is omitted.
%%
%% </li> </ul> In addition, Amazon Lex also returns your application-specific
%% <code>sessionAttributes</code>. For more information, see <a
%% href="https://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html">Managing
%% Conversation Context</a>.
post_content(Client, BotAlias, BotName, UserId, Input) ->
    post_content(Client, BotAlias, BotName, UserId, Input, []).
post_content(Client, BotAlias, BotName, UserId, Input0, Options) ->
    Method = post,
    Path = ["/bot/", http_uri:encode(BotName), "/alias/", http_uri:encode(BotAlias), "/user/", http_uri:encode(UserId), "/content"],
    SuccessStatusCode = undefined,
    
    HeadersMapping = [
                       {<<"Accept">>, <<"accept">>},
                       {<<"Content-Type">>, <<"contentType">>},
                       {<<"x-amz-lex-request-attributes">>, <<"requestAttributes">>},
                       {<<"x-amz-lex-session-attributes">>, <<"sessionAttributes">>}
                     ],
    {Headers, Input} = aws_request:build_headers(HeadersMapping, Input0),
    
    case request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"Content-Type">>, <<"contentType">>},
            {<<"x-amz-lex-dialog-state">>, <<"dialogState">>},
            {<<"x-amz-lex-input-transcript">>, <<"inputTranscript">>},
            {<<"x-amz-lex-intent-name">>, <<"intentName">>},
            {<<"x-amz-lex-message">>, <<"message">>},
            {<<"x-amz-lex-message-format">>, <<"messageFormat">>},
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

%% @doc Sends user input to Amazon Lex. Client applications can use this API
%% to send requests to Amazon Lex at runtime. Amazon Lex then interprets the
%% user input using the machine learning model it built for the bot.
%%
%% In response, Amazon Lex returns the next <code>message</code> to convey to
%% the user an optional <code>responseCard</code> to display. Consider the
%% following example messages:
%%
%% <ul> <li> For a user input "I would like a pizza", Amazon Lex might return
%% a response with a message eliciting slot data (for example, PizzaSize):
%% "What size pizza would you like?"
%%
%% </li> <li> After the user provides all of the pizza order information,
%% Amazon Lex might return a response with a message to obtain user
%% confirmation "Proceed with the pizza order?".
%%
%% </li> <li> After the user replies to a confirmation prompt with a "yes",
%% Amazon Lex might return a conclusion statement: "Thank you, your cheese
%% pizza has been ordered.".
%%
%% </li> </ul> Not all Amazon Lex messages require a user response. For
%% example, a conclusion statement does not require a response. Some messages
%% require only a "yes" or "no" user response. In addition to the
%% <code>message</code>, Amazon Lex provides additional context about the
%% message in the response that you might use to enhance client behavior, for
%% example, to display the appropriate client user interface. These are the
%% <code>slotToElicit</code>, <code>dialogState</code>,
%% <code>intentName</code>, and <code>slots</code> fields in the response.
%% Consider the following examples:
%%
%% <ul> <li> If the message is to elicit slot data, Amazon Lex returns the
%% following context information:
%%
%% <ul> <li> <code>dialogState</code> set to ElicitSlot
%%
%% </li> <li> <code>intentName</code> set to the intent name in the current
%% context
%%
%% </li> <li> <code>slotToElicit</code> set to the slot name for which the
%% <code>message</code> is eliciting information
%%
%% </li> <li> <code>slots</code> set to a map of slots, configured for the
%% intent, with currently known values
%%
%% </li> </ul> </li> <li> If the message is a confirmation prompt, the
%% <code>dialogState</code> is set to ConfirmIntent and
%% <code>SlotToElicit</code> is set to null.
%%
%% </li> <li> If the message is a clarification prompt (configured for the
%% intent) that indicates that user intent is not understood, the
%% <code>dialogState</code> is set to ElicitIntent and
%% <code>slotToElicit</code> is set to null.
%%
%% </li> </ul> In addition, Amazon Lex also returns your application-specific
%% <code>sessionAttributes</code>. For more information, see <a
%% href="https://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html">Managing
%% Conversation Context</a>.
post_text(Client, BotAlias, BotName, UserId, Input) ->
    post_text(Client, BotAlias, BotName, UserId, Input, []).
post_text(Client, BotAlias, BotName, UserId, Input0, Options) ->
    Method = post,
    Path = ["/bot/", http_uri:encode(BotName), "/alias/", http_uri:encode(BotAlias), "/user/", http_uri:encode(UserId), "/text"],
    SuccessStatusCode = undefined,
    Headers = [],
    Input = Input0,
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new session or modifies an existing session with an Amazon
%% Lex bot. Use this operation to enable your application to set the state of
%% the bot.
%%
%% For more information, see <a
%% href="https://docs.aws.amazon.com/lex/latest/dg/how-session-api.html">Managing
%% Sessions</a>.
put_session(Client, BotAlias, BotName, UserId, Input) ->
    put_session(Client, BotAlias, BotName, UserId, Input, []).
put_session(Client, BotAlias, BotName, UserId, Input0, Options) ->
    Method = post,
    Path = ["/bot/", http_uri:encode(BotName), "/alias/", http_uri:encode(BotAlias), "/user/", http_uri:encode(UserId), "/session"],
    SuccessStatusCode = undefined,
    
    HeadersMapping = [
                       {<<"Accept">>, <<"accept">>}
                     ],
    {Headers, Input} = aws_request:build_headers(HeadersMapping, Input0),
    
    case request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"Content-Type">>, <<"contentType">>},
            {<<"x-amz-lex-dialog-state">>, <<"dialogState">>},
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

-spec request(aws_client:aws_client(), atom(), iolist(),
              list(), map() | undefined, list(), pos_integer() | undefined) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map() | undefined,
    Error :: {binary(), binary()}.
request(Client, Method, Path, Headers0, Input, Options, SuccessStatusCode) ->
    Client1 = Client#{service => <<"lex">>},
    Host = get_host(<<"runtime.lex">>, Client1),
    URL = get_url(Host, Path, Client1),
    Headers1 = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
        | Headers0
    ],
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
            {ok, undefined, {StatusCode, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body, [return_maps]),
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}, _) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body, [return_maps]),
    Reason1 = maps:get(<<"message">>, Error, undefined),
    Reason2 = maps:get(<<"Message">>, Error, Reason1),
    {error, Reason2, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}, _) ->
  {error, Reason}.

get_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
get_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

get_url(Host, Path0, Client) ->
    Proto = maps:get(proto, Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  jsx:encode(Input).
