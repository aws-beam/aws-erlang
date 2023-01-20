%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Connect is a cloud-based contact center solution that makes it
%% easy to set up and manage a customer contact center.
%%
%% Amazon Connect enables customer contacts through voice or chat. Use the
%% Amazon Connect Participant Service to manage chat participants, such as
%% agents and customers.
-module(aws_connectparticipant).

-export([complete_attachment_upload/2,
         complete_attachment_upload/3,
         create_participant_connection/2,
         create_participant_connection/3,
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
%% `ConnectionToken' is used for invoking this API instead of
%% `ParticipantToken'.
%%
%% The Amazon Connect Participant Service APIs do not use Signature Version 4
%% authentication.
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
%% `{"topic":"aws/subscribe","content":{"topics":["aws/chat"]}}'
%%
%% Upon websocket URL expiry, as specified in the response ConnectionExpiry
%% parameter, clients need to call this API again to obtain a new websocket
%% URL and perform the same steps as before.
%%
%% Message streaming support: This API can also be used together with the
%% StartContactStreaming API to create a participant connection for chat
%% contacts that are not using a websocket. For more information about
%% message streaming, Enable real-time chat message streaming in the Amazon
%% Connect Administrator Guide.
%%
%% Feature specifications: For information about feature specifications, such
%% as the allowed number of open websocket connections per participant, see
%% Feature specifications in the Amazon Connect Administrator Guide.
%%
%% The Amazon Connect Participant Service APIs do not use Signature Version 4
%% authentication.
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

%% @doc Disconnects a participant.
%%
%% `ConnectionToken' is used for invoking this API instead of
%% `ParticipantToken'.
%%
%% The Amazon Connect Participant Service APIs do not use Signature Version 4
%% authentication.
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
%% authentication.
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
%% persistent chat, see Enable persistent chat.
%%
%% `ConnectionToken' is used for invoking this API instead of
%% `ParticipantToken'.
%%
%% The Amazon Connect Participant Service APIs do not use Signature Version 4
%% authentication.
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

%% @doc Sends an event.
%%
%% `ConnectionToken' is used for invoking this API instead of
%% `ParticipantToken'.
%%
%% The Amazon Connect Participant Service APIs do not use Signature Version 4
%% authentication.
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
%% authentication.
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
%% authentication.
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
