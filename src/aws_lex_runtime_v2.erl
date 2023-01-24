%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.


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

%%====================================================================
%% API
%%====================================================================

%% @doc Removes session information for a specified bot, alias, and user ID.
%%
%% You can use this operation to restart a conversation with a bot. When you
%% remove a session, the entire history of the session is removed so that you
%% can start again.
%%
%% You don't need to delete a session. Sessions have a time limit and will
%% expire. Set the session time limit when you create the bot. The default is
%% 5 minutes, but you can specify anything between 1 minute and 24 hours.
%%
%% If you specify a bot or alias ID that doesn't exist, you receive a
%% `BadRequestException.'
%%
%% If the locale doesn't exist in the bot, or if the locale hasn't been
%% enables for the alias, you receive a `BadRequestException'.
delete_session(Client, BotAliasId, BotId, LocaleId, SessionId, Input) ->
    delete_session(Client, BotAliasId, BotId, LocaleId, SessionId, Input, []).
delete_session(Client, BotAliasId, BotId, LocaleId, SessionId, Input0, Options0) ->
    Method = delete,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botAliases/", aws_util:encode_uri(BotAliasId), "/botLocales/", aws_util:encode_uri(LocaleId), "/sessions/", aws_util:encode_uri(SessionId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns session information for a specified bot, alias, and user.
%%
%% For example, you can use this operation to retrieve session information
%% for a user that has left a long-running session in use.
%%
%% If the bot, alias, or session identifier doesn't exist, Amazon Lex V2
%% returns a `BadRequestException'. If the locale doesn't exist or is not
%% enabled for the alias, you receive a `BadRequestException'.
get_session(Client, BotAliasId, BotId, LocaleId, SessionId)
  when is_map(Client) ->
    get_session(Client, BotAliasId, BotId, LocaleId, SessionId, #{}, #{}).

get_session(Client, BotAliasId, BotId, LocaleId, SessionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_session(Client, BotAliasId, BotId, LocaleId, SessionId, QueryMap, HeadersMap, []).

get_session(Client, BotAliasId, BotId, LocaleId, SessionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botAliases/", aws_util:encode_uri(BotAliasId), "/botLocales/", aws_util:encode_uri(LocaleId), "/sessions/", aws_util:encode_uri(SessionId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Creates a new session or modifies an existing session with an Amazon
%% Lex V2 bot.
%%
%% Use this operation to enable your application to set the state of the bot.
put_session(Client, BotAliasId, BotId, LocaleId, SessionId, Input) ->
    put_session(Client, BotAliasId, BotId, LocaleId, SessionId, Input, []).
put_session(Client, BotAliasId, BotId, LocaleId, SessionId, Input0, Options0) ->
    Method = post,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botAliases/", aws_util:encode_uri(BotAliasId), "/botLocales/", aws_util:encode_uri(LocaleId), "/sessions/", aws_util:encode_uri(SessionId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
%% Client applications use this API to send requests to Amazon Lex V2 at
%% runtime. Amazon Lex V2 then interprets the user input using the machine
%% learning model that it build for the bot.
%%
%% In response, Amazon Lex V2 returns the next message to convey to the user
%% and an optional response card to display.
%%
%% If the optional post-fulfillment response is specified, the messages are
%% returned as follows. For more information, see
%% PostFulfillmentStatusSpecification.
%%
%% <ul> <li> Success message - Returned if the Lambda function completes
%% successfully and the intent state is fulfilled or ready fulfillment if the
%% message is present.
%%
%% </li> <li> Failed message - The failed message is returned if the Lambda
%% function throws an exception or if the Lambda function returns a failed
%% intent state without a message.
%%
%% </li> <li> Timeout message - If you don't configure a timeout message and
%% a timeout, and the Lambda function doesn't return within 30 seconds, the
%% timeout message is returned. If you configure a timeout, the timeout
%% message is returned when the period times out.
%%
%% </li> </ul> For more information, see Completion message.
recognize_text(Client, BotAliasId, BotId, LocaleId, SessionId, Input) ->
    recognize_text(Client, BotAliasId, BotId, LocaleId, SessionId, Input, []).
recognize_text(Client, BotAliasId, BotId, LocaleId, SessionId, Input0, Options0) ->
    Method = post,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botAliases/", aws_util:encode_uri(BotAliasId), "/botLocales/", aws_util:encode_uri(LocaleId), "/sessions/", aws_util:encode_uri(SessionId), "/text"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Sends user input to Amazon Lex V2.
%%
%% You can send text or speech. Clients use this API to send text and audio
%% requests to Amazon Lex V2 at runtime. Amazon Lex V2 interprets the user
%% input using the machine learning model built for the bot.
%%
%% The following request fields must be compressed with gzip and then base64
%% encoded before you send them to Amazon Lex V2.
%%
%% <ul> <li> requestAttributes
%%
%% </li> <li> sessionState
%%
%% </li> </ul> The following response fields are compressed using gzip and
%% then base64 encoded by Amazon Lex V2. Before you can use these fields, you
%% must decode and decompress them.
%%
%% <ul> <li> inputTranscript
%%
%% </li> <li> interpretations
%%
%% </li> <li> messages
%%
%% </li> <li> requestAttributes
%%
%% </li> <li> sessionState
%%
%% </li> </ul> The example contains a Java application that compresses and
%% encodes a Java object to send to Amazon Lex V2, and a second that decodes
%% and decompresses a response from Amazon Lex V2.
%%
%% If the optional post-fulfillment response is specified, the messages are
%% returned as follows. For more information, see
%% PostFulfillmentStatusSpecification.
%%
%% <ul> <li> Success message - Returned if the Lambda function completes
%% successfully and the intent state is fulfilled or ready fulfillment if the
%% message is present.
%%
%% </li> <li> Failed message - The failed message is returned if the Lambda
%% function throws an exception or if the Lambda function returns a failed
%% intent state without a message.
%%
%% </li> <li> Timeout message - If you don't configure a timeout message and
%% a timeout, and the Lambda function doesn't return within 30 seconds, the
%% timeout message is returned. If you configure a timeout, the timeout
%% message is returned when the period times out.
%%
%% </li> </ul> For more information, see Completion message.
recognize_utterance(Client, BotAliasId, BotId, LocaleId, SessionId, Input) ->
    recognize_utterance(Client, BotAliasId, BotId, LocaleId, SessionId, Input, []).
recognize_utterance(Client, BotAliasId, BotId, LocaleId, SessionId, Input0, Options0) ->
    Method = post,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botAliases/", aws_util:encode_uri(BotAliasId), "/botLocales/", aws_util:encode_uri(LocaleId), "/sessions/", aws_util:encode_uri(SessionId), "/utterance"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
%% After your application starts a conversation, users send input to Amazon
%% Lex V2 as a stream of events. Amazon Lex V2 processes the incoming events
%% and responds with streaming text or audio events.
%%
%% Audio input must be in the following format: `audio/lpcm sample-rate=8000
%% sample-size-bits=16 channel-count=1; is-big-endian=false'.
%%
%% If the optional post-fulfillment response is specified, the messages are
%% returned as follows. For more information, see
%% PostFulfillmentStatusSpecification.
%%
%% <ul> <li> Success message - Returned if the Lambda function completes
%% successfully and the intent state is fulfilled or ready fulfillment if the
%% message is present.
%%
%% </li> <li> Failed message - The failed message is returned if the Lambda
%% function throws an exception or if the Lambda function returns a failed
%% intent state without a message.
%%
%% </li> <li> Timeout message - If you don't configure a timeout message and
%% a timeout, and the Lambda function doesn't return within 30 seconds, the
%% timeout message is returned. If you configure a timeout, the timeout
%% message is returned when the period times out.
%%
%% </li> </ul> For more information, see Completion message.
%%
%% If the optional update message is configured, it is played at the
%% specified frequency while the Lambda function is running and the update
%% message state is active. If the fulfillment update message is not active,
%% the Lambda function runs with a 30 second timeout.
%%
%% For more information, see Update message
%%
%% The `StartConversation' operation is supported only in the following SDKs:
%%
%% <ul> <li> AWS SDK for C++
%%
%% </li> <li> AWS SDK for Java V2
%%
%% </li> <li> AWS SDK for Ruby V3
%%
%% </li> </ul>
start_conversation(Client, BotAliasId, BotId, LocaleId, SessionId, Input) ->
    start_conversation(Client, BotAliasId, BotId, LocaleId, SessionId, Input, []).
start_conversation(Client, BotAliasId, BotId, LocaleId, SessionId, Input0, Options0) ->
    Method = post,
    Path = ["/bots/", aws_util:encode_uri(BotId), "/botAliases/", aws_util:encode_uri(BotAliasId), "/botLocales/", aws_util:encode_uri(LocaleId), "/sessions/", aws_util:encode_uri(SessionId), "/conversation"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
    Proto = maps:get(proto, Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  jsx:encode(Input).
