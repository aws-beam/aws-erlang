%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc webrtc
-module(aws_kinesis_video_webrtc_storage).

-export([join_storage_session/2,
         join_storage_session/3,
         join_storage_session_as_viewer/2,
         join_storage_session_as_viewer/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% client_limit_exceeded_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type client_limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% invalid_argument_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type invalid_argument_exception() :: #{binary() => any()}.


%% Example:
%% join_storage_session_as_viewer_input() :: #{
%%   <<"channelArn">> := string(),
%%   <<"clientId">> := string()
%% }
-type join_storage_session_as_viewer_input() :: #{binary() => any()}.


%% Example:
%% join_storage_session_input() :: #{
%%   <<"channelArn">> := string()
%% }
-type join_storage_session_input() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

-type join_storage_session_errors() ::
    resource_not_found_exception() | 
    invalid_argument_exception() | 
    client_limit_exceeded_exception() | 
    access_denied_exception().

-type join_storage_session_as_viewer_errors() ::
    resource_not_found_exception() | 
    invalid_argument_exception() | 
    client_limit_exceeded_exception() | 
    access_denied_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc
%% Before using this API, you must call the `GetSignalingChannelEndpoint'
%% API to request the WEBRTC endpoint.
%%
%% You then specify the endpoint and region in your `JoinStorageSession'
%% API request.
%%
%% Join the ongoing one way-video and/or multi-way audio WebRTC session as a
%% video producing
%% device for an input channel. If there’s no existing session for the
%% channel, a new streaming
%% session needs to be created, and the Amazon Resource Name (ARN) of the
%% signaling channel must
%% be provided.
%%
%% Currently for the `SINGLE_MASTER' type, a video producing
%% device is able to ingest both audio and video media into a stream. Only
%% video producing devices can join the session and record media.
%%
%% Both audio and video tracks are currently required for WebRTC ingestion.
%%
%% Current requirements:
%%
%% Video track: H.264
%%
%% Audio track: Opus
%%
%% The resulting ingested video in the Kinesis video stream will have the
%% following
%% parameters: H.264 video and AAC audio.
%%
%% Once a master participant has negotiated a connection through WebRTC, the
%% ingested media
%% session will be stored in the Kinesis video stream. Multiple viewers are
%% then able to play
%% back real-time media through our Playback APIs.
%%
%% You can also use existing Kinesis Video Streams features like `HLS' or
%% `DASH' playback, image generation via GetImages:
%% https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/gs-getImages.html,
%% and more
%% with ingested WebRTC media.
%%
%% S3 image delivery and notifications are not currently supported.
%%
%% Assume that only one video producing device client
%% can be associated with a session for the channel. If more than one
%% client joins the session of a specific channel as a video producing
%% device,
%% the most recent client request takes precedence.
%%
%% Additional information
%%
%% Idempotent - This API is not idempotent.
%%
%% Retry behavior - This is counted as a new API call.
%%
%% Concurrent calls - Concurrent calls are allowed. An offer is sent once per
%% each call.
-spec join_storage_session(aws_client:aws_client(), join_storage_session_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, join_storage_session_errors(), tuple()}.
join_storage_session(Client, Input) ->
    join_storage_session(Client, Input, []).

-spec join_storage_session(aws_client:aws_client(), join_storage_session_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, join_storage_session_errors(), tuple()}.
join_storage_session(Client, Input0, Options0) ->
    Method = post,
    Path = ["/joinStorageSession"],
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

%% @doc
%% Join the ongoing one way-video and/or multi-way audio WebRTC session as
%% a viewer for an input channel.
%%
%% If there’s
%% no existing session for the channel, create a new streaming session and
%% provide
%% the Amazon Resource Name (ARN) of the signaling channel (`channelArn')
%% and client id (`clientId').
%%
%% Currently for `SINGLE_MASTER' type, a video producing device
%% is able to ingest both audio and video media into a stream, while viewers
%% can only ingest audio. Both a video producing device and viewers can join
%% a session first and wait for other participants. While participants are
%% having peer to peer conversations through WebRTC,
%% the ingested media session will be stored into the Kinesis Video Stream.
%% Multiple viewers are able to playback real-time media.
%%
%% Customers can also use existing Kinesis Video Streams features like
%% `HLS' or `DASH' playback, Image generation, and more
%% with ingested WebRTC media. If there’s an existing session with the same
%% `clientId' that's found in the join session request, the new
%% request takes precedence.
-spec join_storage_session_as_viewer(aws_client:aws_client(), join_storage_session_as_viewer_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, join_storage_session_as_viewer_errors(), tuple()}.
join_storage_session_as_viewer(Client, Input) ->
    join_storage_session_as_viewer(Client, Input, []).

-spec join_storage_session_as_viewer(aws_client:aws_client(), join_storage_session_as_viewer_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, join_storage_session_as_viewer_errors(), tuple()}.
join_storage_session_as_viewer(Client, Input0, Options0) ->
    Method = post,
    Path = ["/joinStorageSessionAsViewer"],
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
    Client1 = Client#{service => <<"kinesisvideo">>},
    Host = build_host(<<"kinesisvideo">>, Client1),
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
