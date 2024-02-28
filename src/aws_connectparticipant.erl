%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Connect is an easy-to-use omnichannel cloud contact center
%% service that enables companies of any size to deliver superior customer
%% service at a lower cost.
%%
%% Amazon Connect communications capabilities make it easy for companies to
%% deliver personalized interactions across communication channels, including
%% chat.
%%
%% Use the Amazon Connect Participant Service to manage participants (for
%% example, agents, customers, and managers listening in), and to send
%% messages and events within a chat contact. The APIs in the service enable
%% the following: sending chat messages, attachment sharing, managing a
%% participant's connection state and message events, and retrieving chat
%% transcripts.
-module(aws_connectparticipant).

-export([complete_attachment_upload/2,
         complete_attachment_upload/3,
         create_participant_connection/2,
         create_participant_connection/3,
         describe_view/3,
         describe_view/5,
         describe_view/6,
         disconnect_participant/2,
         disconnect_participant/3,
         get_attachment/2,
         get_attachment/3,
         get_transcript/2,
         get_transcript/3,
         send_event/2,
         send_event/3,
         send_message/2,
         send_message/3,
         start_attachment_upload/2,
         start_attachment_upload/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Allows you to confirm that the attachment has been uploaded using the
%% pre-signed URL provided in StartAttachmentUpload API.
%%
%% A conflict exception is thrown when an attachment with that identifier is
%% already being uploaded.
%%
%% `ConnectionToken' is used for invoking this API instead of
%% `ParticipantToken'.
%%
%% The Amazon Connect Participant Service APIs do not use Signature Version 4
%% authentication:
%% https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html.
complete_attachment_upload(Client, Input) ->
    complete_attachment_upload(Client, Input, []).
complete_attachment_upload(Client, Input0, Options0) ->
    Method = post,
    Path = ["/participant/complete-attachment-upload"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"X-Amz-Bearer">>, <<"ConnectionToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates the participant's connection.
%%
%% `ParticipantToken' is used for invoking this API instead of
%% `ConnectionToken'.
%%
%% The participant token is valid for the lifetime of the participant – until
%% they are part of a contact.
%%
%% The response URL for `WEBSOCKET' Type has a connect expiry timeout of
%% 100s. Clients must manually connect to the returned websocket URL and
%% subscribe to the desired topic.
%%
%% For chat, you need to publish the following on the established websocket
%% connection:
%%
%% `{&quot;topic&quot;:&quot;aws/subscribe&quot;,&quot;content&quot;:{&quot;topics&quot;:[&quot;aws/chat&quot;]}}'
%%
%% Upon websocket URL expiry, as specified in the response ConnectionExpiry
%% parameter, clients need to call this API again to obtain a new websocket
%% URL and perform the same steps as before.
%%
%% Message streaming support: This API can also be used together with the
%% StartContactStreaming:
%% https://docs.aws.amazon.com/connect/latest/APIReference/API_StartContactStreaming.html
%% API to create a participant connection for chat contacts that are not
%% using a websocket. For more information about message streaming, Enable
%% real-time chat message streaming:
%% https://docs.aws.amazon.com/connect/latest/adminguide/chat-message-streaming.html
%% in the Amazon Connect Administrator Guide.
%%
%% Feature specifications: For information about feature specifications, such
%% as the allowed number of open websocket connections per participant, see
%% Feature specifications:
%% https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html#feature-limits
%% in the Amazon Connect Administrator Guide.
%%
%% The Amazon Connect Participant Service APIs do not use Signature Version 4
%% authentication:
%% https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html.
create_participant_connection(Client, Input) ->
    create_participant_connection(Client, Input, []).
create_participant_connection(Client, Input0, Options0) ->
    Method = post,
    Path = ["/participant/connection"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"X-Amz-Bearer">>, <<"ParticipantToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves the view for the specified view token.
describe_view(Client, ViewToken, ConnectionToken)
  when is_map(Client) ->
    describe_view(Client, ViewToken, ConnectionToken, #{}, #{}).

describe_view(Client, ViewToken, ConnectionToken, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_view(Client, ViewToken, ConnectionToken, QueryMap, HeadersMap, []).

describe_view(Client, ViewToken, ConnectionToken, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/participant/views/", aws_util:encode_uri(ViewToken), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"X-Amz-Bearer">>, ConnectionToken}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Disconnects a participant.
%%
%% `ConnectionToken' is used for invoking this API instead of
%% `ParticipantToken'.
%%
%% The Amazon Connect Participant Service APIs do not use Signature Version 4
%% authentication:
%% https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html.
disconnect_participant(Client, Input) ->
    disconnect_participant(Client, Input, []).
disconnect_participant(Client, Input0, Options0) ->
    Method = post,
    Path = ["/participant/disconnect"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"X-Amz-Bearer">>, <<"ConnectionToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Provides a pre-signed URL for download of a completed attachment.
%%
%% This is an asynchronous API for use with active contacts.
%%
%% `ConnectionToken' is used for invoking this API instead of
%% `ParticipantToken'.
%%
%% The Amazon Connect Participant Service APIs do not use Signature Version 4
%% authentication:
%% https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html.
get_attachment(Client, Input) ->
    get_attachment(Client, Input, []).
get_attachment(Client, Input0, Options0) ->
    Method = post,
    Path = ["/participant/attachment"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"X-Amz-Bearer">>, <<"ConnectionToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves a transcript of the session, including details about any
%% attachments.
%%
%% For information about accessing past chat contact transcripts for a
%% persistent chat, see Enable persistent chat:
%% https://docs.aws.amazon.com/connect/latest/adminguide/chat-persistence.html.
%%
%% If you have a process that consumes events in the transcript of an chat
%% that has ended, note that chat transcripts contain the following event
%% content types if the event has occurred during the chat session:
%%
%% <ul> <li> `application/vnd.amazonaws.connect.event.participant.left'
%%
%% </li> <li>
%% `application/vnd.amazonaws.connect.event.participant.joined'
%%
%% </li> <li> `application/vnd.amazonaws.connect.event.chat.ended'
%%
%% </li> <li>
%% `application/vnd.amazonaws.connect.event.transfer.succeeded'
%%
%% </li> <li> `application/vnd.amazonaws.connect.event.transfer.failed'
%%
%% </li> </ul> `ConnectionToken' is used for invoking this API instead of
%% `ParticipantToken'.
%%
%% The Amazon Connect Participant Service APIs do not use Signature Version 4
%% authentication:
%% https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html.
get_transcript(Client, Input) ->
    get_transcript(Client, Input, []).
get_transcript(Client, Input0, Options0) ->
    Method = post,
    Path = ["/participant/transcript"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"X-Amz-Bearer">>, <<"ConnectionToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc The
%% `application/vnd.amazonaws.connect.event.connection.acknowledged'
%% ContentType will no longer be supported starting December 31, 2024.
%%
%% This event has been migrated to the CreateParticipantConnection:
%% https://docs.aws.amazon.com/connect-participant/latest/APIReference/API_CreateParticipantConnection.html
%% API using the `ConnectParticipant' field.
%%
%% Sends an event. Message receipts are not supported when there are more
%% than two active participants in the chat. Using the SendEvent API for
%% message receipts when a supervisor is barged-in will result in a conflict
%% exception.
%%
%% `ConnectionToken' is used for invoking this API instead of
%% `ParticipantToken'.
%%
%% The Amazon Connect Participant Service APIs do not use Signature Version 4
%% authentication:
%% https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html.
send_event(Client, Input) ->
    send_event(Client, Input, []).
send_event(Client, Input0, Options0) ->
    Method = post,
    Path = ["/participant/event"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"X-Amz-Bearer">>, <<"ConnectionToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Sends a message.
%%
%% `ConnectionToken' is used for invoking this API instead of
%% `ParticipantToken'.
%%
%% The Amazon Connect Participant Service APIs do not use Signature Version 4
%% authentication:
%% https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html.
send_message(Client, Input) ->
    send_message(Client, Input, []).
send_message(Client, Input0, Options0) ->
    Method = post,
    Path = ["/participant/message"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"X-Amz-Bearer">>, <<"ConnectionToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Provides a pre-signed Amazon S3 URL in response for uploading the
%% file directly to S3.
%%
%% `ConnectionToken' is used for invoking this API instead of
%% `ParticipantToken'.
%%
%% The Amazon Connect Participant Service APIs do not use Signature Version 4
%% authentication:
%% https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html.
start_attachment_upload(Client, Input) ->
    start_attachment_upload(Client, Input, []).
start_attachment_upload(Client, Input0, Options0) ->
    Method = post,
    Path = ["/participant/start-attachment-upload"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"X-Amz-Bearer">>, <<"ConnectionToken">>}
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
    Client1 = Client#{service => <<"execute-api">>},
    Host = build_host(<<"participant.connect">>, Client1),
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
