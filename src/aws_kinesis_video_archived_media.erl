%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.


-module(aws_kinesis_video_archived_media).

-export([get_clip/2,
         get_clip/3,
         get_d_a_s_h_streaming_session_u_r_l/2,
         get_d_a_s_h_streaming_session_u_r_l/3,
         get_h_l_s_streaming_session_u_r_l/2,
         get_h_l_s_streaming_session_u_r_l/3,
         get_media_for_fragment_list/2,
         get_media_for_fragment_list/3,
         list_fragments/2,
         list_fragments/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Downloads an MP4 file (clip) containing the archived, on-demand media
%% from the specified video stream over the specified time range.
%%
%% Both the StreamName and the StreamARN parameters are optional, but you
%% must specify either the StreamName or the StreamARN when invoking this API
%% operation.
%%
%% As a prerequsite to using GetCLip API, you must obtain an endpoint using
%% `GetDataEndpoint`, specifying GET_CLIP for` the `APIName` parameter. `
%%
%% ```
%% An Amazon Kinesis video stream has the following requirements for
%% providing data through MP4:
%%
%% The media must contain h.264 or h.265 encoded video and, optionally, AAC
%% or G.711 encoded audio. Specifically, the codec ID of track 1 should be
%% `V_MPEG/ISO/AVC` (for h.264) or V_MPEGH/ISO/HEVC (for H.265). Optionally,
%% the codec ID of track 2 should be `A_AAC` (for AAC) or A_MS/ACM (for
%% G.711).
%%
%% Data retention must be greater than 0.
%%
%% The video track of each fragment must contain codec private data in the
%% Advanced Video Coding (AVC) for H.264 format and HEVC for H.265 format.
%% For more information, see MPEG-4 specification ISO/IEC 14496-15. For
%% information about adapting stream data to a given format, see NAL
%% Adaptation Flags.
%%
%% The audio track (if present) of each fragment must contain codec private
%% data in the AAC format (AAC specification ISO/IEC 13818-7) or the MS Wave
%% format.
%%
%% You can monitor the amount of outgoing data by monitoring the
%% `GetClip.OutgoingBytes` Amazon CloudWatch metric. For information about
%% using CloudWatch to monitor Kinesis Video Streams, see Monitoring Kinesis
%% Video Streams. For pricing information, see Amazon Kinesis Video Streams
%% Pricing and AWS Pricing. Charges for outgoing AWS data apply.
%%
%% ```
get_clip(Client, Input) ->
    get_clip(Client, Input, []).
get_clip(Client, Input0, Options) ->
    Method = post,
    Path = ["/getClip"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    case request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"Content-Type">>, <<"ContentType">>}
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

%% @doc Retrieves an MPEG Dynamic Adaptive Streaming over HTTP (DASH) URL for
%% the stream.
%%
%% You can then open the URL in a media player to view the stream contents.
%%
%% Both the `StreamName` and the `StreamARN` parameters are optional, but you
%% must specify either the `StreamName` or the `StreamARN` when invoking this
%% API operation.
%%
%% An Amazon Kinesis video stream has the following requirements for
%% providing data through MPEG-DASH:
%%
%% <ul> <li> The media must contain h.264 or h.265 encoded video and,
%% optionally, AAC or G.711 encoded audio. Specifically, the codec ID of
%% track 1 should be `V_MPEG/ISO/AVC` (for h.264) or V_MPEGH/ISO/HEVC (for
%% H.265). Optionally, the codec ID of track 2 should be `A_AAC` (for AAC) or
%% A_MS/ACM (for G.711).
%%
%% </li> <li> Data retention must be greater than 0.
%%
%% </li> <li> The video track of each fragment must contain codec private
%% data in the Advanced Video Coding (AVC) for H.264 format and HEVC for
%% H.265 format. For more information, see MPEG-4 specification ISO/IEC
%% 14496-15. For information about adapting stream data to a given format,
%% see NAL Adaptation Flags.
%%
%% </li> <li> The audio track (if present) of each fragment must contain
%% codec private data in the AAC format (AAC specification ISO/IEC 13818-7)
%% or the MS Wave format.
%%
%% </li> </ul> The following procedure shows how to use MPEG-DASH with
%% Kinesis Video Streams:
%%
%% <ol> <li> Get an endpoint using GetDataEndpoint, specifying
%% `GET_DASH_STREAMING_SESSION_URL` for the `APIName` parameter.
%%
%% </li> <li> Retrieve the MPEG-DASH URL using `GetDASHStreamingSessionURL`.
%% Kinesis Video Streams creates an MPEG-DASH streaming session to be used
%% for accessing content in a stream using the MPEG-DASH protocol.
%% `GetDASHStreamingSessionURL` returns an authenticated URL (that includes
%% an encrypted session token) for the session's MPEG-DASH manifest (the root
%% resource needed for streaming with MPEG-DASH).
%%
%% Don't share or store this token where an unauthorized entity could access
%% it. The token provides access to the content of the stream. Safeguard the
%% token with the same measures that you would use with your AWS credentials.
%%
%% The media that is made available through the manifest consists only of the
%% requested stream, time range, and format. No other media data (such as
%% frames outside the requested window or alternate bitrates) is made
%% available.
%%
%% </li> <li> Provide the URL (containing the encrypted session token) for
%% the MPEG-DASH manifest to a media player that supports the MPEG-DASH
%% protocol. Kinesis Video Streams makes the initialization fragment and
%% media fragments available through the manifest URL. The initialization
%% fragment contains the codec private data for the stream, and other data
%% needed to set up the video or audio decoder and renderer. The media
%% fragments contain encoded video frames or encoded audio samples.
%%
%% </li> <li> The media player receives the authenticated URL and requests
%% stream metadata and media data normally. When the media player requests
%% data, it calls the following actions:
%%
%% <ul> <li> GetDASHManifest: Retrieves an MPEG DASH manifest, which contains
%% the metadata for the media that you want to playback.
%%
%% </li> <li> GetMP4InitFragment: Retrieves the MP4 initialization fragment.
%% The media player typically loads the initialization fragment before
%% loading any media fragments. This fragment contains the "`fytp`" and
%% "`moov`" MP4 atoms, and the child atoms that are needed to initialize the
%% media player decoder.
%%
%% The initialization fragment does not correspond to a fragment in a Kinesis
%% video stream. It contains only the codec private data for the stream and
%% respective track, which the media player needs to decode the media frames.
%%
%% </li> <li> GetMP4MediaFragment: Retrieves MP4 media fragments. These
%% fragments contain the "`moof`" and "`mdat`" MP4 atoms and their child
%% atoms, containing the encoded fragment's media frames and their
%% timestamps.
%%
%% After the first media fragment is made available in a streaming session,
%% any fragments that don't contain the same codec private data cause an
%% error to be returned when those different media fragments are loaded.
%% Therefore, the codec private data should not change between fragments in a
%% session. This also means that the session fails if the fragments in a
%% stream change from having only video to having both audio and video.
%%
%% Data retrieved with this action is billable. See Pricing for details.
%%
%% </li> </ul> </li> </ol> The following restrictions apply to MPEG-DASH
%% sessions:
%%
%% A streaming session URL should not be shared between players. The service
%% might throttle a session if multiple media players are sharing it. For
%% connection limits, see Kinesis Video Streams Limits.
%%
%% A Kinesis video stream can have a maximum of ten active MPEG-DASH
%% streaming sessions. If a new session is created when the maximum number of
%% sessions is already active, the oldest (earliest created) session is
%% closed. The number of active `GetMedia` connections on a Kinesis video
%% stream does not count against this limit, and the number of active
%% MPEG-DASH sessions does not count against the active `GetMedia` connection
%% limit.
%%
%% The maximum limits for active HLS and MPEG-DASH streaming sessions are
%% independent of each other.
%%
%% You can monitor the amount of data that the media player consumes by
%% monitoring the `GetMP4MediaFragment.OutgoingBytes` Amazon CloudWatch
%% metric. For information about using CloudWatch to monitor Kinesis Video
%% Streams, see Monitoring Kinesis Video Streams. For pricing information,
%% see Amazon Kinesis Video Streams Pricing and AWS Pricing. Charges for both
%% HLS sessions and outgoing AWS data apply.
%%
%% For more information about HLS, see HTTP Live Streaming on the Apple
%% Developer site.
%%
%% If an error is thrown after invoking a Kinesis Video Streams archived
%% media API, in addition to the HTTP status code and the response body, it
%% includes the following pieces of information:
%%
%% `x-amz-ErrorType` HTTP header – contains a more specific error type in
%% addition to what the HTTP status code provides.
%%
%% `x-amz-RequestId` HTTP header – if you want to report an issue to AWS, the
%% support team can better diagnose the problem if given the Request Id.
%%
%% Both the HTTP status code and the ErrorType header can be utilized to make
%% programmatic decisions about whether errors are retry-able and under what
%% conditions, as well as provide information on what actions the client
%% programmer might need to take in order to successfully try again.
%%
%% For more information, see the Errors section at the bottom of this topic,
%% as well as Common Errors.
get_d_a_s_h_streaming_session_u_r_l(Client, Input) ->
    get_d_a_s_h_streaming_session_u_r_l(Client, Input, []).
get_d_a_s_h_streaming_session_u_r_l(Client, Input0, Options) ->
    Method = post,
    Path = ["/getDASHStreamingSessionURL"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves an HTTP Live Streaming (HLS) URL for the stream.
%%
%% You can then open the URL in a browser or media player to view the stream
%% contents.
%%
%% Both the `StreamName` and the `StreamARN` parameters are optional, but you
%% must specify either the `StreamName` or the `StreamARN` when invoking this
%% API operation.
%%
%% An Amazon Kinesis video stream has the following requirements for
%% providing data through HLS:
%%
%% <ul> <li> The media must contain h.264 or h.265 encoded video and,
%% optionally, AAC encoded audio. Specifically, the codec ID of track 1
%% should be `V_MPEG/ISO/AVC` (for h.264) or `V_MPEG/ISO/HEVC` (for h.265).
%% Optionally, the codec ID of track 2 should be `A_AAC`.
%%
%% </li> <li> Data retention must be greater than 0.
%%
%% </li> <li> The video track of each fragment must contain codec private
%% data in the Advanced Video Coding (AVC) for H.264 format or HEVC for H.265
%% format (MPEG-4 specification ISO/IEC 14496-15). For information about
%% adapting stream data to a given format, see NAL Adaptation Flags.
%%
%% </li> <li> The audio track (if present) of each fragment must contain
%% codec private data in the AAC format (AAC specification ISO/IEC 13818-7).
%%
%% </li> </ul> Kinesis Video Streams HLS sessions contain fragments in the
%% fragmented MPEG-4 form (also called fMP4 or CMAF) or the MPEG-2 form (also
%% called TS chunks, which the HLS specification also supports). For more
%% information about HLS fragment types, see the HLS specification.
%%
%% The following procedure shows how to use HLS with Kinesis Video Streams:
%%
%% <ol> <li> Get an endpoint using GetDataEndpoint, specifying
%% `GET_HLS_STREAMING_SESSION_URL` for the `APIName` parameter.
%%
%% </li> <li> Retrieve the HLS URL using `GetHLSStreamingSessionURL`. Kinesis
%% Video Streams creates an HLS streaming session to be used for accessing
%% content in a stream using the HLS protocol. `GetHLSStreamingSessionURL`
%% returns an authenticated URL (that includes an encrypted session token)
%% for the session's HLS master playlist (the root resource needed for
%% streaming with HLS).
%%
%% Don't share or store this token where an unauthorized entity could access
%% it. The token provides access to the content of the stream. Safeguard the
%% token with the same measures that you would use with your AWS credentials.
%%
%% The media that is made available through the playlist consists only of the
%% requested stream, time range, and format. No other media data (such as
%% frames outside the requested window or alternate bitrates) is made
%% available.
%%
%% </li> <li> Provide the URL (containing the encrypted session token) for
%% the HLS master playlist to a media player that supports the HLS protocol.
%% Kinesis Video Streams makes the HLS media playlist, initialization
%% fragment, and media fragments available through the master playlist URL.
%% The initialization fragment contains the codec private data for the
%% stream, and other data needed to set up the video or audio decoder and
%% renderer. The media fragments contain H.264-encoded video frames or
%% AAC-encoded audio samples.
%%
%% </li> <li> The media player receives the authenticated URL and requests
%% stream metadata and media data normally. When the media player requests
%% data, it calls the following actions:
%%
%% <ul> <li> GetHLSMasterPlaylist: Retrieves an HLS master playlist, which
%% contains a URL for the `GetHLSMediaPlaylist` action for each track, and
%% additional metadata for the media player, including estimated bitrate and
%% resolution.
%%
%% </li> <li> GetHLSMediaPlaylist: Retrieves an HLS media playlist, which
%% contains a URL to access the MP4 initialization fragment with the
%% `GetMP4InitFragment` action, and URLs to access the MP4 media fragments
%% with the `GetMP4MediaFragment` actions. The HLS media playlist also
%% contains metadata about the stream that the player needs to play it, such
%% as whether the `PlaybackMode` is `LIVE` or `ON_DEMAND`. The HLS media
%% playlist is typically static for sessions with a `PlaybackType` of
%% `ON_DEMAND`. The HLS media playlist is continually updated with new
%% fragments for sessions with a `PlaybackType` of `LIVE`. There is a
%% distinct HLS media playlist for the video track and the audio track (if
%% applicable) that contains MP4 media URLs for the specific track.
%%
%% </li> <li> GetMP4InitFragment: Retrieves the MP4 initialization fragment.
%% The media player typically loads the initialization fragment before
%% loading any media fragments. This fragment contains the "`fytp`" and
%% "`moov`" MP4 atoms, and the child atoms that are needed to initialize the
%% media player decoder.
%%
%% The initialization fragment does not correspond to a fragment in a Kinesis
%% video stream. It contains only the codec private data for the stream and
%% respective track, which the media player needs to decode the media frames.
%%
%% </li> <li> GetMP4MediaFragment: Retrieves MP4 media fragments. These
%% fragments contain the "`moof`" and "`mdat`" MP4 atoms and their child
%% atoms, containing the encoded fragment's media frames and their
%% timestamps.
%%
%% After the first media fragment is made available in a streaming session,
%% any fragments that don't contain the same codec private data cause an
%% error to be returned when those different media fragments are loaded.
%% Therefore, the codec private data should not change between fragments in a
%% session. This also means that the session fails if the fragments in a
%% stream change from having only video to having both audio and video.
%%
%% Data retrieved with this action is billable. See Pricing for details.
%%
%% </li> <li> GetTSFragment: Retrieves MPEG TS fragments containing both
%% initialization and media data for all tracks in the stream.
%%
%% If the `ContainerFormat` is `MPEG_TS`, this API is used instead of
%% `GetMP4InitFragment` and `GetMP4MediaFragment` to retrieve stream media.
%%
%% Data retrieved with this action is billable. For more information, see
%% Kinesis Video Streams pricing.
%%
%% </li> </ul> </li> </ol> The following restrictions apply to HLS sessions:
%%
%% A streaming session URL should not be shared between players. The service
%% might throttle a session if multiple media players are sharing it. For
%% connection limits, see Kinesis Video Streams Limits.
%%
%% A Kinesis video stream can have a maximum of ten active HLS streaming
%% sessions. If a new session is created when the maximum number of sessions
%% is already active, the oldest (earliest created) session is closed. The
%% number of active `GetMedia` connections on a Kinesis video stream does not
%% count against this limit, and the number of active HLS sessions does not
%% count against the active `GetMedia` connection limit.
%%
%% The maximum limits for active HLS and MPEG-DASH streaming sessions are
%% independent of each other.
%%
%% You can monitor the amount of data that the media player consumes by
%% monitoring the `GetMP4MediaFragment.OutgoingBytes` Amazon CloudWatch
%% metric. For information about using CloudWatch to monitor Kinesis Video
%% Streams, see Monitoring Kinesis Video Streams. For pricing information,
%% see Amazon Kinesis Video Streams Pricing and AWS Pricing. Charges for both
%% HLS sessions and outgoing AWS data apply.
%%
%% For more information about HLS, see HTTP Live Streaming on the Apple
%% Developer site.
%%
%% If an error is thrown after invoking a Kinesis Video Streams archived
%% media API, in addition to the HTTP status code and the response body, it
%% includes the following pieces of information:
%%
%% `x-amz-ErrorType` HTTP header – contains a more specific error type in
%% addition to what the HTTP status code provides.
%%
%% `x-amz-RequestId` HTTP header – if you want to report an issue to AWS, the
%% support team can better diagnose the problem if given the Request Id.
%%
%% Both the HTTP status code and the ErrorType header can be utilized to make
%% programmatic decisions about whether errors are retry-able and under what
%% conditions, as well as provide information on what actions the client
%% programmer might need to take in order to successfully try again.
%%
%% For more information, see the Errors section at the bottom of this topic,
%% as well as Common Errors.
get_h_l_s_streaming_session_u_r_l(Client, Input) ->
    get_h_l_s_streaming_session_u_r_l(Client, Input, []).
get_h_l_s_streaming_session_u_r_l(Client, Input0, Options) ->
    Method = post,
    Path = ["/getHLSStreamingSessionURL"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Gets media for a list of fragments (specified by fragment number)
%% from the archived data in an Amazon Kinesis video stream.
%%
%% You must first call the `GetDataEndpoint` API to get an endpoint. Then
%% send the `GetMediaForFragmentList` requests to this endpoint using the
%% --endpoint-url parameter.
%%
%% The following limits apply when using the `GetMediaForFragmentList` API:
%%
%% <ul> <li> A client can call `GetMediaForFragmentList` up to five times per
%% second per stream.
%%
%% </li> <li> Kinesis Video Streams sends media data at a rate of up to 25
%% megabytes per second (or 200 megabits per second) during a
%% `GetMediaForFragmentList` session.
%%
%% </li> </ul> If an error is thrown after invoking a Kinesis Video Streams
%% archived media API, in addition to the HTTP status code and the response
%% body, it includes the following pieces of information:
%%
%% `x-amz-ErrorType` HTTP header – contains a more specific error type in
%% addition to what the HTTP status code provides.
%%
%% `x-amz-RequestId` HTTP header – if you want to report an issue to AWS, the
%% support team can better diagnose the problem if given the Request Id.
%%
%% Both the HTTP status code and the ErrorType header can be utilized to make
%% programmatic decisions about whether errors are retry-able and under what
%% conditions, as well as provide information on what actions the client
%% programmer might need to take in order to successfully try again.
%%
%% For more information, see the Errors section at the bottom of this topic,
%% as well as Common Errors.
get_media_for_fragment_list(Client, Input) ->
    get_media_for_fragment_list(Client, Input, []).
get_media_for_fragment_list(Client, Input0, Options) ->
    Method = post,
    Path = ["/getMediaForFragmentList"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    case request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"Content-Type">>, <<"ContentType">>}
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

%% @doc Returns a list of `Fragment` objects from the specified stream and
%% timestamp range within the archived data.
%%
%% Listing fragments is eventually consistent. This means that even if the
%% producer receives an acknowledgment that a fragment is persisted, the
%% result might not be returned immediately from a request to
%% `ListFragments`. However, results are typically available in less than one
%% second.
%%
%% You must first call the `GetDataEndpoint` API to get an endpoint. Then
%% send the `ListFragments` requests to this endpoint using the
%% --endpoint-url parameter.
%%
%% If an error is thrown after invoking a Kinesis Video Streams archived
%% media API, in addition to the HTTP status code and the response body, it
%% includes the following pieces of information:
%%
%% `x-amz-ErrorType` HTTP header – contains a more specific error type in
%% addition to what the HTTP status code provides.
%%
%% `x-amz-RequestId` HTTP header – if you want to report an issue to AWS, the
%% support team can better diagnose the problem if given the Request Id.
%%
%% Both the HTTP status code and the ErrorType header can be utilized to make
%% programmatic decisions about whether errors are retry-able and under what
%% conditions, as well as provide information on what actions the client
%% programmer might need to take in order to successfully try again.
%%
%% For more information, see the Errors section at the bottom of this topic,
%% as well as Common Errors.
list_fragments(Client, Input) ->
    list_fragments(Client, Input, []).
list_fragments(Client, Input0, Options) ->
    Method = post,
    Path = ["/listFragments"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), atom(), iolist(), list(),
              list(), map() | undefined, list(), pos_integer() | undefined) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map(),
    Error :: map().
request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
    Client1 = Client#{service => <<"kinesisvideo">>},
    Host = build_host(<<"kinesisvideo">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders = [ {<<"Host">>, Host}
                        , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                        ],
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),
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
            {ok, #{}, {StatusCode, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body),
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}, _) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}, _) ->
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
