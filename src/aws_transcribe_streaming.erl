%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Operations and objects for transcribing streaming speech to text.
-module(aws_transcribe_streaming).

-export([start_medical_stream_transcription/2,
         start_medical_stream_transcription/3,
         start_stream_transcription/2,
         start_stream_transcription/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Starts a bidirectional HTTP/2 stream where audio is streamed to
%% Amazon Transcribe Medical and the transcription results are streamed to
%% your application.
start_medical_stream_transcription(Client, Input) ->
    start_medical_stream_transcription(Client, Input, []).
start_medical_stream_transcription(Client, Input0, Options) ->
    Method = post,
    Path = ["/medical-stream-transcription"],
    SuccessStatusCode = undefined,

    HeadersMapping = [
                       {<<"x-amzn-transcribe-enable-channel-identification">>, <<"EnableChannelIdentification">>},
                       {<<"x-amzn-transcribe-language-code">>, <<"LanguageCode">>},
                       {<<"x-amzn-transcribe-media-encoding">>, <<"MediaEncoding">>},
                       {<<"x-amzn-transcribe-sample-rate">>, <<"MediaSampleRateHertz">>},
                       {<<"x-amzn-transcribe-number-of-channels">>, <<"NumberOfChannels">>},
                       {<<"x-amzn-transcribe-session-id">>, <<"SessionId">>},
                       {<<"x-amzn-transcribe-show-speaker-label">>, <<"ShowSpeakerLabel">>},
                       {<<"x-amzn-transcribe-specialty">>, <<"Specialty">>},
                       {<<"x-amzn-transcribe-type">>, <<"Type">>},
                       {<<"x-amzn-transcribe-vocabulary-name">>, <<"VocabularyName">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    case request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"x-amzn-transcribe-enable-channel-identification">>, <<"EnableChannelIdentification">>},
            {<<"x-amzn-transcribe-language-code">>, <<"LanguageCode">>},
            {<<"x-amzn-transcribe-media-encoding">>, <<"MediaEncoding">>},
            {<<"x-amzn-transcribe-sample-rate">>, <<"MediaSampleRateHertz">>},
            {<<"x-amzn-transcribe-number-of-channels">>, <<"NumberOfChannels">>},
            {<<"x-amzn-request-id">>, <<"RequestId">>},
            {<<"x-amzn-transcribe-session-id">>, <<"SessionId">>},
            {<<"x-amzn-transcribe-show-speaker-label">>, <<"ShowSpeakerLabel">>},
            {<<"x-amzn-transcribe-specialty">>, <<"Specialty">>},
            {<<"x-amzn-transcribe-type">>, <<"Type">>},
            {<<"x-amzn-transcribe-vocabulary-name">>, <<"VocabularyName">>}
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

%% @doc Starts a bidirectional HTTP2 stream where audio is streamed to Amazon
%% Transcribe and the transcription results are streamed to your application.
%%
%% The following are encoded as HTTP2 headers:
%%
%% <ul> <li> x-amzn-transcribe-language-code
%%
%% </li> <li> x-amzn-transcribe-media-encoding
%%
%% </li> <li> x-amzn-transcribe-sample-rate
%%
%% </li> <li> x-amzn-transcribe-session-id
%%
%% </li> </ul>
start_stream_transcription(Client, Input) ->
    start_stream_transcription(Client, Input, []).
start_stream_transcription(Client, Input0, Options) ->
    Method = post,
    Path = ["/stream-transcription"],
    SuccessStatusCode = undefined,

    HeadersMapping = [
                       {<<"x-amzn-transcribe-enable-channel-identification">>, <<"EnableChannelIdentification">>},
                       {<<"x-amzn-transcribe-language-code">>, <<"LanguageCode">>},
                       {<<"x-amzn-transcribe-media-encoding">>, <<"MediaEncoding">>},
                       {<<"x-amzn-transcribe-sample-rate">>, <<"MediaSampleRateHertz">>},
                       {<<"x-amzn-transcribe-number-of-channels">>, <<"NumberOfChannels">>},
                       {<<"x-amzn-transcribe-session-id">>, <<"SessionId">>},
                       {<<"x-amzn-transcribe-show-speaker-label">>, <<"ShowSpeakerLabel">>},
                       {<<"x-amzn-transcribe-vocabulary-filter-method">>, <<"VocabularyFilterMethod">>},
                       {<<"x-amzn-transcribe-vocabulary-filter-name">>, <<"VocabularyFilterName">>},
                       {<<"x-amzn-transcribe-vocabulary-name">>, <<"VocabularyName">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    case request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"x-amzn-transcribe-enable-channel-identification">>, <<"EnableChannelIdentification">>},
            {<<"x-amzn-transcribe-language-code">>, <<"LanguageCode">>},
            {<<"x-amzn-transcribe-media-encoding">>, <<"MediaEncoding">>},
            {<<"x-amzn-transcribe-sample-rate">>, <<"MediaSampleRateHertz">>},
            {<<"x-amzn-transcribe-number-of-channels">>, <<"NumberOfChannels">>},
            {<<"x-amzn-request-id">>, <<"RequestId">>},
            {<<"x-amzn-transcribe-session-id">>, <<"SessionId">>},
            {<<"x-amzn-transcribe-show-speaker-label">>, <<"ShowSpeakerLabel">>},
            {<<"x-amzn-transcribe-vocabulary-filter-method">>, <<"VocabularyFilterMethod">>},
            {<<"x-amzn-transcribe-vocabulary-filter-name">>, <<"VocabularyFilterName">>},
            {<<"x-amzn-transcribe-vocabulary-name">>, <<"VocabularyName">>}
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

-spec request(aws_client:aws_client(), atom(), iolist(), list(),
              list(), map() | undefined, list(), pos_integer() | undefined) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map(),
    Error :: map().
request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
    Client1 = Client#{service => <<"transcribe">>},
    Host = build_host(<<"transcribestreaming">>, Client1),
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
