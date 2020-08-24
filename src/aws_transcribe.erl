%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Operations and objects for transcribing speech to text.
-module(aws_transcribe).

-export([create_medical_vocabulary/2,
         create_medical_vocabulary/3,
         create_vocabulary/2,
         create_vocabulary/3,
         create_vocabulary_filter/2,
         create_vocabulary_filter/3,
         delete_medical_transcription_job/2,
         delete_medical_transcription_job/3,
         delete_medical_vocabulary/2,
         delete_medical_vocabulary/3,
         delete_transcription_job/2,
         delete_transcription_job/3,
         delete_vocabulary/2,
         delete_vocabulary/3,
         delete_vocabulary_filter/2,
         delete_vocabulary_filter/3,
         get_medical_transcription_job/2,
         get_medical_transcription_job/3,
         get_medical_vocabulary/2,
         get_medical_vocabulary/3,
         get_transcription_job/2,
         get_transcription_job/3,
         get_vocabulary/2,
         get_vocabulary/3,
         get_vocabulary_filter/2,
         get_vocabulary_filter/3,
         list_medical_transcription_jobs/2,
         list_medical_transcription_jobs/3,
         list_medical_vocabularies/2,
         list_medical_vocabularies/3,
         list_transcription_jobs/2,
         list_transcription_jobs/3,
         list_vocabularies/2,
         list_vocabularies/3,
         list_vocabulary_filters/2,
         list_vocabulary_filters/3,
         start_medical_transcription_job/2,
         start_medical_transcription_job/3,
         start_transcription_job/2,
         start_transcription_job/3,
         update_medical_vocabulary/2,
         update_medical_vocabulary/3,
         update_vocabulary/2,
         update_vocabulary/3,
         update_vocabulary_filter/2,
         update_vocabulary_filter/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a new custom vocabulary that you can use to change how Amazon
%% Transcribe Medical transcribes your audio file.
create_medical_vocabulary(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_medical_vocabulary(Client, Input, []).
create_medical_vocabulary(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateMedicalVocabulary">>, Input, Options).

%% @doc Creates a new custom vocabulary that you can use to change the way
%% Amazon Transcribe handles transcription of an audio file.
create_vocabulary(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_vocabulary(Client, Input, []).
create_vocabulary(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateVocabulary">>, Input, Options).

%% @doc Creates a new vocabulary filter that you can use to filter words,
%% such as profane words, from the output of a transcription job.
create_vocabulary_filter(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_vocabulary_filter(Client, Input, []).
create_vocabulary_filter(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateVocabularyFilter">>, Input, Options).

%% @doc Deletes a transcription job generated by Amazon Transcribe Medical
%% and any related information.
delete_medical_transcription_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_medical_transcription_job(Client, Input, []).
delete_medical_transcription_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteMedicalTranscriptionJob">>, Input, Options).

%% @doc Deletes a vocabulary from Amazon Transcribe Medical.
delete_medical_vocabulary(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_medical_vocabulary(Client, Input, []).
delete_medical_vocabulary(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteMedicalVocabulary">>, Input, Options).

%% @doc Deletes a previously submitted transcription job along with any other
%% generated results such as the transcription, models, and so on.
delete_transcription_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_transcription_job(Client, Input, []).
delete_transcription_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTranscriptionJob">>, Input, Options).

%% @doc Deletes a vocabulary from Amazon Transcribe.
delete_vocabulary(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_vocabulary(Client, Input, []).
delete_vocabulary(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteVocabulary">>, Input, Options).

%% @doc Removes a vocabulary filter.
delete_vocabulary_filter(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_vocabulary_filter(Client, Input, []).
delete_vocabulary_filter(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteVocabularyFilter">>, Input, Options).

%% @doc Returns information about a transcription job from Amazon Transcribe
%% Medical. To see the status of the job, check the
%% <code>TranscriptionJobStatus</code> field. If the status is
%% <code>COMPLETED</code>, the job is finished. You find the results of the
%% completed job in the <code>TranscriptFileUri</code> field.
get_medical_transcription_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_medical_transcription_job(Client, Input, []).
get_medical_transcription_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetMedicalTranscriptionJob">>, Input, Options).

%% @doc Retrieve information about a medical vocabulary.
get_medical_vocabulary(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_medical_vocabulary(Client, Input, []).
get_medical_vocabulary(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetMedicalVocabulary">>, Input, Options).

%% @doc Returns information about a transcription job. To see the status of
%% the job, check the <code>TranscriptionJobStatus</code> field. If the
%% status is <code>COMPLETED</code>, the job is finished and you can find the
%% results at the location specified in the <code>TranscriptFileUri</code>
%% field. If you enable content redaction, the redacted transcript appears in
%% <code>RedactedTranscriptFileUri</code>.
get_transcription_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_transcription_job(Client, Input, []).
get_transcription_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTranscriptionJob">>, Input, Options).

%% @doc Gets information about a vocabulary.
get_vocabulary(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_vocabulary(Client, Input, []).
get_vocabulary(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetVocabulary">>, Input, Options).

%% @doc Returns information about a vocabulary filter.
get_vocabulary_filter(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_vocabulary_filter(Client, Input, []).
get_vocabulary_filter(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetVocabularyFilter">>, Input, Options).

%% @doc Lists medical transcription jobs with a specified status or substring
%% that matches their names.
list_medical_transcription_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_medical_transcription_jobs(Client, Input, []).
list_medical_transcription_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListMedicalTranscriptionJobs">>, Input, Options).

%% @doc Returns a list of vocabularies that match the specified criteria. You
%% get the entire list of vocabularies if you don't enter a value in any of
%% the request parameters.
list_medical_vocabularies(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_medical_vocabularies(Client, Input, []).
list_medical_vocabularies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListMedicalVocabularies">>, Input, Options).

%% @doc Lists transcription jobs with the specified status.
list_transcription_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_transcription_jobs(Client, Input, []).
list_transcription_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTranscriptionJobs">>, Input, Options).

%% @doc Returns a list of vocabularies that match the specified criteria. If
%% no criteria are specified, returns the entire list of vocabularies.
list_vocabularies(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_vocabularies(Client, Input, []).
list_vocabularies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListVocabularies">>, Input, Options).

%% @doc Gets information about vocabulary filters.
list_vocabulary_filters(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_vocabulary_filters(Client, Input, []).
list_vocabulary_filters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListVocabularyFilters">>, Input, Options).

%% @doc Start a batch job to transcribe medical speech to text.
start_medical_transcription_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_medical_transcription_job(Client, Input, []).
start_medical_transcription_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartMedicalTranscriptionJob">>, Input, Options).

%% @doc Starts an asynchronous job to transcribe speech to text.
start_transcription_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_transcription_job(Client, Input, []).
start_transcription_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartTranscriptionJob">>, Input, Options).

%% @doc Updates an existing vocabulary with new values in a different text
%% file. The <code>UpdateMedicalVocabulary</code> operation overwrites all of
%% the existing information with the values that you provide in the request.
update_medical_vocabulary(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_medical_vocabulary(Client, Input, []).
update_medical_vocabulary(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateMedicalVocabulary">>, Input, Options).

%% @doc Updates an existing vocabulary with new values. The
%% <code>UpdateVocabulary</code> operation overwrites all of the existing
%% information with the values that you provide in the request.
update_vocabulary(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_vocabulary(Client, Input, []).
update_vocabulary(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateVocabulary">>, Input, Options).

%% @doc Updates a vocabulary filter with a new list of filtered words.
update_vocabulary_filter(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_vocabulary_filter(Client, Input, []).
update_vocabulary_filter(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateVocabularyFilter">>, Input, Options).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), binary(), map(), list()) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map() | undefined,
    Error :: map().
request(Client, Action, Input0, Options) ->
    Client1 = Client#{service => <<"transcribe">>},
    Host = build_host(<<"transcribe">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"Transcribe.", Action/binary>>}
    ],

    Input = Input0,

    Payload = jsx:encode(Input),
    SignedHeaders = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, SignedHeaders, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    case hackney:body(Client) of
        {ok, <<>>} ->
            {ok, undefined, {200, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body),
            {ok, Result, {200, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Client) ->
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
