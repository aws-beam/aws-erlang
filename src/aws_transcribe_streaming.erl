%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Transcribe streaming offers two types of real-time
%% transcription: Standard and Medical.
%%
%% <ul> <li> Standard transcriptions are the most common option. Refer to for
%% details.
%%
%% </li> <li> Medical transcriptions are tailored to medical professionals
%% and incorporate medical terms. A common use case for this service is
%% transcribing doctor-patient dialogue in real time, so doctors can focus on
%% their patient instead of taking notes. Refer to for details.
%%
%% </li> </ul>
-module(aws_transcribe_streaming).

-export([start_medical_stream_transcription/2,
         start_medical_stream_transcription/3,
         start_stream_transcription/2,
         start_stream_transcription/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Starts a bidirectional HTTP/2 or WebSocket stream where audio is
%% streamed to Amazon Transcribe Medical and the transcription results are
%% streamed to your application.
%%
%% For more information on streaming with Amazon Transcribe Medical, see
%% Transcribing streaming audio.
start_medical_stream_transcription(Client, Input) ->
    start_medical_stream_transcription(Client, Input, []).
start_medical_stream_transcription(Client, Input0, Options0) ->
    Method = post,
    Path = ["/medical-stream-transcription"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    HeadersMapping = [
                       {<<"x-amzn-transcribe-content-identification-type">>, <<"ContentIdentificationType">>},
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

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"x-amzn-transcribe-content-identification-type">>, <<"ContentIdentificationType">>},
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

%% @doc Starts a bidirectional HTTP/2 or WebSocket stream where audio is
%% streamed to Amazon Transcribe and the transcription results are streamed
%% to your application.
%%
%% The following are encoded as headers:
%%
%% <ul> <li> language-code
%%
%% </li> <li> media-encoding
%%
%% </li> <li> sample-rate
%%
%% </li> <li> session-id
%%
%% </li> </ul> For more information on streaming with Amazon Transcribe, see
%% Transcribing streaming audio.
start_stream_transcription(Client, Input) ->
    start_stream_transcription(Client, Input, []).
start_stream_transcription(Client, Input0, Options0) ->
    Method = post,
    Path = ["/stream-transcription"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    HeadersMapping = [
                       {<<"x-amzn-transcribe-content-identification-type">>, <<"ContentIdentificationType">>},
                       {<<"x-amzn-transcribe-content-redaction-type">>, <<"ContentRedactionType">>},
                       {<<"x-amzn-transcribe-enable-channel-identification">>, <<"EnableChannelIdentification">>},
                       {<<"x-amzn-transcribe-enable-partial-results-stabilization">>, <<"EnablePartialResultsStabilization">>},
                       {<<"x-amzn-transcribe-identify-language">>, <<"IdentifyLanguage">>},
                       {<<"x-amzn-transcribe-language-code">>, <<"LanguageCode">>},
                       {<<"x-amzn-transcribe-language-model-name">>, <<"LanguageModelName">>},
                       {<<"x-amzn-transcribe-language-options">>, <<"LanguageOptions">>},
                       {<<"x-amzn-transcribe-media-encoding">>, <<"MediaEncoding">>},
                       {<<"x-amzn-transcribe-sample-rate">>, <<"MediaSampleRateHertz">>},
                       {<<"x-amzn-transcribe-number-of-channels">>, <<"NumberOfChannels">>},
                       {<<"x-amzn-transcribe-partial-results-stability">>, <<"PartialResultsStability">>},
                       {<<"x-amzn-transcribe-pii-entity-types">>, <<"PiiEntityTypes">>},
                       {<<"x-amzn-transcribe-preferred-language">>, <<"PreferredLanguage">>},
                       {<<"x-amzn-transcribe-session-id">>, <<"SessionId">>},
                       {<<"x-amzn-transcribe-show-speaker-label">>, <<"ShowSpeakerLabel">>},
                       {<<"x-amzn-transcribe-vocabulary-filter-method">>, <<"VocabularyFilterMethod">>},
                       {<<"x-amzn-transcribe-vocabulary-filter-name">>, <<"VocabularyFilterName">>},
                       {<<"x-amzn-transcribe-vocabulary-filter-names">>, <<"VocabularyFilterNames">>},
                       {<<"x-amzn-transcribe-vocabulary-name">>, <<"VocabularyName">>},
                       {<<"x-amzn-transcribe-vocabulary-names">>, <<"VocabularyNames">>}
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
            {<<"x-amzn-transcribe-content-identification-type">>, <<"ContentIdentificationType">>},
            {<<"x-amzn-transcribe-content-redaction-type">>, <<"ContentRedactionType">>},
            {<<"x-amzn-transcribe-enable-channel-identification">>, <<"EnableChannelIdentification">>},
            {<<"x-amzn-transcribe-enable-partial-results-stabilization">>, <<"EnablePartialResultsStabilization">>},
            {<<"x-amzn-transcribe-identify-language">>, <<"IdentifyLanguage">>},
            {<<"x-amzn-transcribe-language-code">>, <<"LanguageCode">>},
            {<<"x-amzn-transcribe-language-model-name">>, <<"LanguageModelName">>},
            {<<"x-amzn-transcribe-language-options">>, <<"LanguageOptions">>},
            {<<"x-amzn-transcribe-media-encoding">>, <<"MediaEncoding">>},
            {<<"x-amzn-transcribe-sample-rate">>, <<"MediaSampleRateHertz">>},
            {<<"x-amzn-transcribe-number-of-channels">>, <<"NumberOfChannels">>},
            {<<"x-amzn-transcribe-partial-results-stability">>, <<"PartialResultsStability">>},
            {<<"x-amzn-transcribe-pii-entity-types">>, <<"PiiEntityTypes">>},
            {<<"x-amzn-transcribe-preferred-language">>, <<"PreferredLanguage">>},
            {<<"x-amzn-request-id">>, <<"RequestId">>},
            {<<"x-amzn-transcribe-session-id">>, <<"SessionId">>},
            {<<"x-amzn-transcribe-show-speaker-label">>, <<"ShowSpeakerLabel">>},
            {<<"x-amzn-transcribe-vocabulary-filter-method">>, <<"VocabularyFilterMethod">>},
            {<<"x-amzn-transcribe-vocabulary-filter-name">>, <<"VocabularyFilterName">>},
            {<<"x-amzn-transcribe-vocabulary-filter-names">>, <<"VocabularyFilterNames">>},
            {<<"x-amzn-transcribe-vocabulary-name">>, <<"VocabularyName">>},
            {<<"x-amzn-transcribe-vocabulary-names">>, <<"VocabularyNames">>}
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
    Client1 = Client#{service => <<"transcribe">>},
    Host = build_host(<<"transcribestreaming">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders = [ {<<"Host">>, Host}
                        , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                        ],
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),

    Payload =
      case proplists:get_value(send_body_as_binary, Options) of
        true ->
          maps:get(<<"Body">>, Input, <<"">>);
        false ->
          encode_payload(Input)
      end,

    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    DecodeBody = not proplists:get_value(receive_body_as_binary, Options),
    handle_response(Response, SuccessStatusCode, DecodeBody).

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
                       true -> jsx:decode(Body);
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
