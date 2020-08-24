%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Provides translation between one source language and another of the
%% same set of languages.
-module(aws_translate).

-export([delete_terminology/2,
         delete_terminology/3,
         describe_text_translation_job/2,
         describe_text_translation_job/3,
         get_terminology/2,
         get_terminology/3,
         import_terminology/2,
         import_terminology/3,
         list_terminologies/2,
         list_terminologies/3,
         list_text_translation_jobs/2,
         list_text_translation_jobs/3,
         start_text_translation_job/2,
         start_text_translation_job/3,
         stop_text_translation_job/2,
         stop_text_translation_job/3,
         translate_text/2,
         translate_text/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc A synchronous action that deletes a custom terminology.
delete_terminology(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_terminology(Client, Input, []).
delete_terminology(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTerminology">>, Input, Options).

%% @doc Gets the properties associated with an asycnhronous batch translation
%% job including name, ID, status, source and target languages, input/output
%% S3 buckets, and so on.
describe_text_translation_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_text_translation_job(Client, Input, []).
describe_text_translation_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTextTranslationJob">>, Input, Options).

%% @doc Retrieves a custom terminology.
get_terminology(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_terminology(Client, Input, []).
get_terminology(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTerminology">>, Input, Options).

%% @doc Creates or updates a custom terminology, depending on whether or not
%% one already exists for the given terminology name. Importing a terminology
%% with the same name as an existing one will merge the terminologies based
%% on the chosen merge strategy. Currently, the only supported merge strategy
%% is OVERWRITE, and so the imported terminology will overwrite an existing
%% terminology of the same name.
%%
%% If you import a terminology that overwrites an existing one, the new
%% terminology take up to 10 minutes to fully propagate and be available for
%% use in a translation due to cache policies with the DataPlane service that
%% performs the translations.
import_terminology(Client, Input)
  when is_map(Client), is_map(Input) ->
    import_terminology(Client, Input, []).
import_terminology(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ImportTerminology">>, Input, Options).

%% @doc Provides a list of custom terminologies associated with your account.
list_terminologies(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_terminologies(Client, Input, []).
list_terminologies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTerminologies">>, Input, Options).

%% @doc Gets a list of the batch translation jobs that you have submitted.
list_text_translation_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_text_translation_jobs(Client, Input, []).
list_text_translation_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTextTranslationJobs">>, Input, Options).

%% @doc Starts an asynchronous batch translation job. Batch translation jobs
%% can be used to translate large volumes of text across multiple documents
%% at once. For more information, see <a>async</a>.
%%
%% Batch translation jobs can be described with the
%% <a>DescribeTextTranslationJob</a> operation, listed with the
%% <a>ListTextTranslationJobs</a> operation, and stopped with the
%% <a>StopTextTranslationJob</a> operation.
%%
%% <note> Amazon Translate does not support batch translation of multiple
%% source languages at once.
%%
%% </note>
start_text_translation_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_text_translation_job(Client, Input, []).
start_text_translation_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartTextTranslationJob">>, Input, Options).

%% @doc Stops an asynchronous batch translation job that is in progress.
%%
%% If the job's state is <code>IN_PROGRESS</code>, the job will be marked for
%% termination and put into the <code>STOP_REQUESTED</code> state. If the job
%% completes before it can be stopped, it is put into the
%% <code>COMPLETED</code> state. Otherwise, the job is put into the
%% <code>STOPPED</code> state.
%%
%% Asynchronous batch translation jobs are started with the
%% <a>StartTextTranslationJob</a> operation. You can use the
%% <a>DescribeTextTranslationJob</a> or <a>ListTextTranslationJobs</a>
%% operations to get a batch translation job's <code>JobId</code>.
stop_text_translation_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_text_translation_job(Client, Input, []).
stop_text_translation_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopTextTranslationJob">>, Input, Options).

%% @doc Translates input text from the source language to the target
%% language. For a list of available languages and language codes, see
%% <a>what-is-languages</a>.
translate_text(Client, Input)
  when is_map(Client), is_map(Input) ->
    translate_text(Client, Input, []).
translate_text(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TranslateText">>, Input, Options).

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
    Client1 = Client#{service => <<"translate">>},
    Host = build_host(<<"translate">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"AWSShineFrontendService_20170701.", Action/binary>>}
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
