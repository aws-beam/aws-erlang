%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Operations and objects for transcribing speech to text.
-module(aws_transcribe).

-export([create_call_analytics_category/2,
         create_call_analytics_category/3,
         create_language_model/2,
         create_language_model/3,
         create_medical_vocabulary/2,
         create_medical_vocabulary/3,
         create_vocabulary/2,
         create_vocabulary/3,
         create_vocabulary_filter/2,
         create_vocabulary_filter/3,
         delete_call_analytics_category/2,
         delete_call_analytics_category/3,
         delete_call_analytics_job/2,
         delete_call_analytics_job/3,
         delete_language_model/2,
         delete_language_model/3,
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
         describe_language_model/2,
         describe_language_model/3,
         get_call_analytics_category/2,
         get_call_analytics_category/3,
         get_call_analytics_job/2,
         get_call_analytics_job/3,
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
         list_call_analytics_categories/2,
         list_call_analytics_categories/3,
         list_call_analytics_jobs/2,
         list_call_analytics_jobs/3,
         list_language_models/2,
         list_language_models/3,
         list_medical_transcription_jobs/2,
         list_medical_transcription_jobs/3,
         list_medical_vocabularies/2,
         list_medical_vocabularies/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_transcription_jobs/2,
         list_transcription_jobs/3,
         list_vocabularies/2,
         list_vocabularies/3,
         list_vocabulary_filters/2,
         list_vocabulary_filters/3,
         start_call_analytics_job/2,
         start_call_analytics_job/3,
         start_medical_transcription_job/2,
         start_medical_transcription_job/3,
         start_transcription_job/2,
         start_transcription_job/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_call_analytics_category/2,
         update_call_analytics_category/3,
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

%% @doc Creates an analytics category.
%%
%% Amazon Transcribe applies the conditions specified by your analytics
%% categories to your call analytics jobs. For each analytics category, you
%% specify one or more rules. For example, you can specify a rule that the
%% customer sentiment was neutral or negative within that category. If you
%% start a call analytics job, Amazon Transcribe applies the category to the
%% analytics job that you've specified.
create_call_analytics_category(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_call_analytics_category(Client, Input, []).
create_call_analytics_category(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCallAnalyticsCategory">>, Input, Options).

%% @doc Creates a new custom language model.
%%
%% Use Amazon S3 prefixes to provide the location of your input files. The
%% time it takes to create your model depends on the size of your training
%% data.
create_language_model(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_language_model(Client, Input, []).
create_language_model(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLanguageModel">>, Input, Options).

%% @doc Creates a new custom vocabulary that you can use to modify how Amazon
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

%% @doc Deletes a call analytics category using its name.
delete_call_analytics_category(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_call_analytics_category(Client, Input, []).
delete_call_analytics_category(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCallAnalyticsCategory">>, Input, Options).

%% @doc Deletes a call analytics job using its name.
delete_call_analytics_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_call_analytics_job(Client, Input, []).
delete_call_analytics_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCallAnalyticsJob">>, Input, Options).

%% @doc Deletes a custom language model using its name.
delete_language_model(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_language_model(Client, Input, []).
delete_language_model(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLanguageModel">>, Input, Options).

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

%% @doc Gets information about a single custom language model.
%%
%% Use this information to see details about the language model in your
%% Amazon Web Services account. You can also see whether the base language
%% model used to create your custom language model has been updated. If
%% Amazon Transcribe has updated the base model, you can create a new custom
%% language model using the updated base model. If the language model wasn't
%% created, you can use this operation to understand why Amazon Transcribe
%% couldn't create it.
describe_language_model(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_language_model(Client, Input, []).
describe_language_model(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLanguageModel">>, Input, Options).

%% @doc Retrieves information about a call analytics category.
get_call_analytics_category(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_call_analytics_category(Client, Input, []).
get_call_analytics_category(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCallAnalyticsCategory">>, Input, Options).

%% @doc Returns information about a call analytics job.
%%
%% To see the status of the job, check the `CallAnalyticsJobStatus' field. If
%% the status is `COMPLETED', the job is finished and you can find the
%% results at the location specified in the `TranscriptFileUri' field. If you
%% enable personally identifiable information (PII) redaction, the redacted
%% transcript appears in the `RedactedTranscriptFileUri' field.
get_call_analytics_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_call_analytics_job(Client, Input, []).
get_call_analytics_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCallAnalyticsJob">>, Input, Options).

%% @doc Returns information about a transcription job from Amazon Transcribe
%% Medical.
%%
%% To see the status of the job, check the `TranscriptionJobStatus' field. If
%% the status is `COMPLETED', the job is finished. You find the results of
%% the completed job in the `TranscriptFileUri' field.
get_medical_transcription_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_medical_transcription_job(Client, Input, []).
get_medical_transcription_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetMedicalTranscriptionJob">>, Input, Options).

%% @doc Retrieves information about a medical vocabulary.
get_medical_vocabulary(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_medical_vocabulary(Client, Input, []).
get_medical_vocabulary(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetMedicalVocabulary">>, Input, Options).

%% @doc Returns information about a transcription job.
%%
%% To see the status of the job, check the `TranscriptionJobStatus' field. If
%% the status is `COMPLETED', the job is finished and you can find the
%% results at the location specified in the `TranscriptFileUri' field. If you
%% enable content redaction, the redacted transcript appears in
%% `RedactedTranscriptFileUri'.
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

%% @doc Provides more information about the call analytics categories that
%% you've created.
%%
%% You can use the information in this list to find a specific category. You
%% can then use the operation to get more information about it.
list_call_analytics_categories(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_call_analytics_categories(Client, Input, []).
list_call_analytics_categories(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCallAnalyticsCategories">>, Input, Options).

%% @doc List call analytics jobs with a specified status or substring that
%% matches their names.
list_call_analytics_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_call_analytics_jobs(Client, Input, []).
list_call_analytics_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCallAnalyticsJobs">>, Input, Options).

%% @doc Provides more information about the custom language models you've
%% created.
%%
%% You can use the information in this list to find a specific custom
%% language model. You can then use the operation to get more information
%% about it.
list_language_models(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_language_models(Client, Input, []).
list_language_models(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListLanguageModels">>, Input, Options).

%% @doc Lists medical transcription jobs with a specified status or substring
%% that matches their names.
list_medical_transcription_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_medical_transcription_jobs(Client, Input, []).
list_medical_transcription_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListMedicalTranscriptionJobs">>, Input, Options).

%% @doc Returns a list of vocabularies that match the specified criteria.
%%
%% If you don't enter a value in any of the request parameters, returns the
%% entire list of vocabularies.
list_medical_vocabularies(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_medical_vocabularies(Client, Input, []).
list_medical_vocabularies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListMedicalVocabularies">>, Input, Options).

%% @doc Lists all tags associated with a given transcription job, vocabulary,
%% or resource.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Lists transcription jobs with the specified status.
list_transcription_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_transcription_jobs(Client, Input, []).
list_transcription_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTranscriptionJobs">>, Input, Options).

%% @doc Returns a list of vocabularies that match the specified criteria.
%%
%% If no criteria are specified, returns the entire list of vocabularies.
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

%% @doc Starts an asynchronous analytics job that not only transcribes the
%% audio recording of a caller and agent, but also returns additional
%% insights.
%%
%% These insights include how quickly or loudly the caller or agent was
%% speaking. To retrieve additional insights with your analytics jobs, create
%% categories. A category is a way to classify analytics jobs based on
%% attributes, such as a customer's sentiment or a particular phrase being
%% used during the call. For more information, see the operation.
start_call_analytics_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_call_analytics_job(Client, Input, []).
start_call_analytics_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartCallAnalyticsJob">>, Input, Options).

%% @doc Starts a batch job to transcribe medical speech to text.
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

%% @doc Tags an Amazon Transcribe resource with the given list of tags.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Removes specified tags from a specified Amazon Transcribe resource.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Updates the call analytics category with new values.
%%
%% The `UpdateCallAnalyticsCategory' operation overwrites all of the existing
%% information with the values that you provide in the request.
update_call_analytics_category(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_call_analytics_category(Client, Input, []).
update_call_analytics_category(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateCallAnalyticsCategory">>, Input, Options).

%% @doc Updates a vocabulary with new values that you provide in a different
%% text file from the one you used to create the vocabulary.
%%
%% The `UpdateMedicalVocabulary' operation overwrites all of the existing
%% information with the values that you provide in the request.
update_medical_vocabulary(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_medical_vocabulary(Client, Input, []).
update_medical_vocabulary(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateMedicalVocabulary">>, Input, Options).

%% @doc Updates an existing vocabulary with new values.
%%
%% The `UpdateVocabulary' operation overwrites all of the existing
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

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Client) ->
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
