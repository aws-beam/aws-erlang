%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Transcribe offers three main types of batch transcription:
%% Standard, Medical, and Call Analytics.
%%
%% <ul> <li> Standard transcriptions are the most common option. Refer to for
%% details.
%%
%% </li> <li> Medical transcriptions are tailored to medical professionals
%% and incorporate medical terms. A common use case for this service is
%% transcribing doctor-patient dialogue into after-visit notes. Refer to for
%% details.
%%
%% </li> <li> Call Analytics transcriptions are designed for use with call
%% center audio on two different channels; if you're looking for insight
%% into customer service calls, use this option. Refer to for details.
%%
%% </li> </ul>
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

%% @doc Creates a new Call Analytics category.
%%
%% All categories are automatically applied to your Call Analytics
%% transcriptions. Note that in order to apply categories to your
%% transcriptions, you must create them before submitting your transcription
%% request, as categories cannot be applied retroactively.
%%
%% When creating a new category, you can use the `InputType' parameter to
%% label the category as a batch category (`POST_CALL') or a streaming
%% category (`REAL_TIME'). Batch categories can only be applied to batch
%% transcriptions and streaming categories can only be applied to streaming
%% transcriptions. If you do not include `InputType', your category is
%% created as a batch category by default.
%%
%% Call Analytics categories are composed of rules. For each category, you
%% must create between 1 and 20 rules. Rules can include these parameters: ,
%% , , and .
%%
%% To update an existing category, see .
%%
%% To learn more about Call Analytics categories, see Creating categories for
%% batch transcriptions and Creating categories for streaming transcriptions.
create_call_analytics_category(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_call_analytics_category(Client, Input, []).
create_call_analytics_category(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCallAnalyticsCategory">>, Input, Options).

%% @doc Creates a new custom language model.
%%
%% When creating a new custom language model, you must specify:
%%
%% <ul> <li> If you want a Wideband (audio sample rates over 16,000 Hz) or
%% Narrowband (audio sample rates under 16,000 Hz) base model
%%
%% </li> <li> The location of your training and tuning files (this must be an
%% Amazon S3 URI)
%%
%% </li> <li> The language of your model
%%
%% </li> <li> A unique name for your model
%%
%% </li> </ul>
create_language_model(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_language_model(Client, Input, []).
create_language_model(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLanguageModel">>, Input, Options).

%% @doc Creates a new custom medical vocabulary.
%%
%% Before creating a new custom medical vocabulary, you must first upload a
%% text file that contains your new entries, phrases, and terms into an
%% Amazon S3 bucket. Note that this differs from , where you can include a
%% list of terms within your request using the `Phrases' flag;
%% `CreateMedicalVocabulary' does not support the `Phrases' flag.
%%
%% Each language has a character set that contains all allowed characters for
%% that specific language. If you use unsupported characters, your custom
%% vocabulary request fails. Refer to Character Sets for Custom Vocabularies
%% to get the character set for your language.
%%
%% For more information, see Custom vocabularies.
create_medical_vocabulary(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_medical_vocabulary(Client, Input, []).
create_medical_vocabulary(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateMedicalVocabulary">>, Input, Options).

%% @doc Creates a new custom vocabulary.
%%
%% When creating a new custom vocabulary, you can either upload a text file
%% that contains your new entries, phrases, and terms into an Amazon S3
%% bucket and include the URI in your request. Or you can include a list of
%% terms directly in your request using the `Phrases' flag.
%%
%% Each language has a character set that contains all allowed characters for
%% that specific language. If you use unsupported characters, your custom
%% vocabulary request fails. Refer to Character Sets for Custom Vocabularies
%% to get the character set for your language.
%%
%% For more information, see Custom vocabularies.
create_vocabulary(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_vocabulary(Client, Input, []).
create_vocabulary(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateVocabulary">>, Input, Options).

%% @doc Creates a new custom vocabulary filter.
%%
%% You can use custom vocabulary filters to mask, delete, or flag specific
%% words from your transcript. Custom vocabulary filters are commonly used to
%% mask profanity in transcripts.
%%
%% Each language has a character set that contains all allowed characters for
%% that specific language. If you use unsupported characters, your custom
%% vocabulary filter request fails. Refer to Character Sets for Custom
%% Vocabularies to get the character set for your language.
%%
%% For more information, see Vocabulary filtering.
create_vocabulary_filter(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_vocabulary_filter(Client, Input, []).
create_vocabulary_filter(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateVocabularyFilter">>, Input, Options).

%% @doc Deletes a Call Analytics category.
%%
%% To use this operation, specify the name of the category you want to delete
%% using `CategoryName'. Category names are case sensitive.
delete_call_analytics_category(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_call_analytics_category(Client, Input, []).
delete_call_analytics_category(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCallAnalyticsCategory">>, Input, Options).

%% @doc Deletes a Call Analytics job.
%%
%% To use this operation, specify the name of the job you want to delete
%% using `CallAnalyticsJobName'. Job names are case sensitive.
delete_call_analytics_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_call_analytics_job(Client, Input, []).
delete_call_analytics_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCallAnalyticsJob">>, Input, Options).

%% @doc Deletes a custom language model.
%%
%% To use this operation, specify the name of the language model you want to
%% delete using `ModelName'. custom language model names are case
%% sensitive.
delete_language_model(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_language_model(Client, Input, []).
delete_language_model(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLanguageModel">>, Input, Options).

%% @doc Deletes a medical transcription job.
%%
%% To use this operation, specify the name of the job you want to delete
%% using `MedicalTranscriptionJobName'. Job names are case sensitive.
delete_medical_transcription_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_medical_transcription_job(Client, Input, []).
delete_medical_transcription_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteMedicalTranscriptionJob">>, Input, Options).

%% @doc Deletes a custom medical vocabulary.
%%
%% To use this operation, specify the name of the custom vocabulary you want
%% to delete using `VocabularyName'. Custom vocabulary names are case
%% sensitive.
delete_medical_vocabulary(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_medical_vocabulary(Client, Input, []).
delete_medical_vocabulary(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteMedicalVocabulary">>, Input, Options).

%% @doc Deletes a transcription job.
%%
%% To use this operation, specify the name of the job you want to delete
%% using `TranscriptionJobName'. Job names are case sensitive.
delete_transcription_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_transcription_job(Client, Input, []).
delete_transcription_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTranscriptionJob">>, Input, Options).

%% @doc Deletes a custom vocabulary.
%%
%% To use this operation, specify the name of the custom vocabulary you want
%% to delete using `VocabularyName'. Custom vocabulary names are case
%% sensitive.
delete_vocabulary(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_vocabulary(Client, Input, []).
delete_vocabulary(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteVocabulary">>, Input, Options).

%% @doc Deletes a custom vocabulary filter.
%%
%% To use this operation, specify the name of the custom vocabulary filter
%% you want to delete using `VocabularyFilterName'. Custom vocabulary
%% filter names are case sensitive.
delete_vocabulary_filter(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_vocabulary_filter(Client, Input, []).
delete_vocabulary_filter(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteVocabularyFilter">>, Input, Options).

%% @doc Provides information about the specified custom language model.
%%
%% This operation also shows if the base language model that you used to
%% create your custom language model has been updated. If Amazon Transcribe
%% has updated the base model, you can create a new custom language model
%% using the updated base model.
%%
%% If you tried to create a new custom language model and the request
%% wasn't successful, you can use `DescribeLanguageModel' to help
%% identify the reason for this failure.
describe_language_model(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_language_model(Client, Input, []).
describe_language_model(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLanguageModel">>, Input, Options).

%% @doc Provides information about the specified Call Analytics category.
%%
%% To get a list of your Call Analytics categories, use the operation.
get_call_analytics_category(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_call_analytics_category(Client, Input, []).
get_call_analytics_category(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCallAnalyticsCategory">>, Input, Options).

%% @doc Provides information about the specified Call Analytics job.
%%
%% To view the job's status, refer to `CallAnalyticsJobStatus'. If
%% the status is `COMPLETED', the job is finished. You can find your
%% completed transcript at the URI specified in `TranscriptFileUri'. If
%% the status is `FAILED', `FailureReason' provides details on why
%% your transcription job failed.
%%
%% If you enabled personally identifiable information (PII) redaction, the
%% redacted transcript appears at the location specified in
%% `RedactedTranscriptFileUri'.
%%
%% If you chose to redact the audio in your media file, you can find your
%% redacted media file at the location specified in
%% `RedactedMediaFileUri'.
%%
%% To get a list of your Call Analytics jobs, use the operation.
get_call_analytics_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_call_analytics_job(Client, Input, []).
get_call_analytics_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCallAnalyticsJob">>, Input, Options).

%% @doc Provides information about the specified medical transcription job.
%%
%% To view the status of the specified medical transcription job, check the
%% `TranscriptionJobStatus' field. If the status is `COMPLETED', the
%% job is finished. You can find the results at the location specified in
%% `TranscriptFileUri'. If the status is `FAILED',
%% `FailureReason' provides details on why your transcription job failed.
%%
%% To get a list of your medical transcription jobs, use the operation.
get_medical_transcription_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_medical_transcription_job(Client, Input, []).
get_medical_transcription_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetMedicalTranscriptionJob">>, Input, Options).

%% @doc Provides information about the specified custom medical vocabulary.
%%
%% To view the status of the specified custom medical vocabulary, check the
%% `VocabularyState' field. If the status is `READY', your custom
%% vocabulary is available to use. If the status is `FAILED',
%% `FailureReason' provides details on why your vocabulary failed.
%%
%% To get a list of your custom medical vocabularies, use the operation.
get_medical_vocabulary(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_medical_vocabulary(Client, Input, []).
get_medical_vocabulary(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetMedicalVocabulary">>, Input, Options).

%% @doc Provides information about the specified transcription job.
%%
%% To view the status of the specified transcription job, check the
%% `TranscriptionJobStatus' field. If the status is `COMPLETED', the
%% job is finished. You can find the results at the location specified in
%% `TranscriptFileUri'. If the status is `FAILED',
%% `FailureReason' provides details on why your transcription job failed.
%%
%% If you enabled content redaction, the redacted transcript can be found at
%% the location specified in `RedactedTranscriptFileUri'.
%%
%% To get a list of your transcription jobs, use the operation.
get_transcription_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_transcription_job(Client, Input, []).
get_transcription_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTranscriptionJob">>, Input, Options).

%% @doc Provides information about the specified custom vocabulary.
%%
%% To view the status of the specified custom vocabulary, check the
%% `VocabularyState' field. If the status is `READY', your custom
%% vocabulary is available to use. If the status is `FAILED',
%% `FailureReason' provides details on why your custom vocabulary failed.
%%
%% To get a list of your custom vocabularies, use the operation.
get_vocabulary(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_vocabulary(Client, Input, []).
get_vocabulary(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetVocabulary">>, Input, Options).

%% @doc Provides information about the specified custom vocabulary filter.
%%
%% To get a list of your custom vocabulary filters, use the operation.
get_vocabulary_filter(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_vocabulary_filter(Client, Input, []).
get_vocabulary_filter(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetVocabularyFilter">>, Input, Options).

%% @doc Provides a list of Call Analytics categories, including all rules
%% that make up each category.
%%
%% To get detailed information about a specific Call Analytics category, use
%% the operation.
list_call_analytics_categories(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_call_analytics_categories(Client, Input, []).
list_call_analytics_categories(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCallAnalyticsCategories">>, Input, Options).

%% @doc Provides a list of Call Analytics jobs that match the specified
%% criteria.
%%
%% If no criteria are specified, all Call Analytics jobs are returned.
%%
%% To get detailed information about a specific Call Analytics job, use the
%% operation.
list_call_analytics_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_call_analytics_jobs(Client, Input, []).
list_call_analytics_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCallAnalyticsJobs">>, Input, Options).

%% @doc Provides a list of custom language models that match the specified
%% criteria.
%%
%% If no criteria are specified, all custom language models are returned.
%%
%% To get detailed information about a specific custom language model, use
%% the operation.
list_language_models(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_language_models(Client, Input, []).
list_language_models(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListLanguageModels">>, Input, Options).

%% @doc Provides a list of medical transcription jobs that match the
%% specified criteria.
%%
%% If no criteria are specified, all medical transcription jobs are returned.
%%
%% To get detailed information about a specific medical transcription job,
%% use the operation.
list_medical_transcription_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_medical_transcription_jobs(Client, Input, []).
list_medical_transcription_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListMedicalTranscriptionJobs">>, Input, Options).

%% @doc Provides a list of custom medical vocabularies that match the
%% specified criteria.
%%
%% If no criteria are specified, all custom medical vocabularies are
%% returned.
%%
%% To get detailed information about a specific custom medical vocabulary,
%% use the operation.
list_medical_vocabularies(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_medical_vocabularies(Client, Input, []).
list_medical_vocabularies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListMedicalVocabularies">>, Input, Options).

%% @doc Lists all tags associated with the specified transcription job,
%% vocabulary, model, or resource.
%%
%% To learn more about using tags with Amazon Transcribe, refer to Tagging
%% resources.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Provides a list of transcription jobs that match the specified
%% criteria.
%%
%% If no criteria are specified, all transcription jobs are returned.
%%
%% To get detailed information about a specific transcription job, use the
%% operation.
list_transcription_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_transcription_jobs(Client, Input, []).
list_transcription_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTranscriptionJobs">>, Input, Options).

%% @doc Provides a list of custom vocabularies that match the specified
%% criteria.
%%
%% If no criteria are specified, all custom vocabularies are returned.
%%
%% To get detailed information about a specific custom vocabulary, use the
%% operation.
list_vocabularies(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_vocabularies(Client, Input, []).
list_vocabularies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListVocabularies">>, Input, Options).

%% @doc Provides a list of custom vocabulary filters that match the specified
%% criteria.
%%
%% If no criteria are specified, all custom vocabularies are returned.
%%
%% To get detailed information about a specific custom vocabulary filter, use
%% the operation.
list_vocabulary_filters(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_vocabulary_filters(Client, Input, []).
list_vocabulary_filters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListVocabularyFilters">>, Input, Options).

%% @doc Transcribes the audio from a customer service call and applies any
%% additional Request Parameters you choose to include in your request.
%%
%% In addition to many standard transcription features, Call Analytics
%% provides you with call characteristics, call summarization, speaker
%% sentiment, and optional redaction of your text transcript and your audio
%% file. You can also apply custom categories to flag specified conditions.
%% To learn more about these features and insights, refer to Analyzing call
%% center audio with Call Analytics.
%%
%% If you want to apply categories to your Call Analytics job, you must
%% create them before submitting your job request. Categories cannot be
%% retroactively applied to a job. To create a new category, use the
%% operation. To learn more about Call Analytics categories, see Creating
%% categories for batch transcriptions and Creating categories for streaming
%% transcriptions.
%%
%% To make a `StartCallAnalyticsJob' request, you must first upload your
%% media file into an Amazon S3 bucket; you can then specify the Amazon S3
%% location of the file using the `Media' parameter.
%%
%% You must include the following parameters in your
%% `StartCallAnalyticsJob' request:
%%
%% <ul> <li> `region': The Amazon Web Services Region where you are
%% making your request. For a list of Amazon Web Services Regions supported
%% with Amazon Transcribe, refer to Amazon Transcribe endpoints and quotas.
%%
%% </li> <li> `CallAnalyticsJobName': A custom name that you create for
%% your transcription job that's unique within your Amazon Web Services
%% account.
%%
%% </li> <li> `DataAccessRoleArn': The Amazon Resource Name (ARN) of an
%% IAM role that has permissions to access the Amazon S3 bucket that contains
%% your input files.
%%
%% </li> <li> `Media' (`MediaFileUri' or `RedactedMediaFileUri'):
%% The Amazon S3 location of your media file.
%%
%% </li> </ul> With Call Analytics, you can redact the audio contained in
%% your media file by including `RedactedMediaFileUri', instead of
%% `MediaFileUri', to specify the location of your input audio. If you
%% choose to redact your audio, you can find your redacted media at the
%% location specified in the `RedactedMediaFileUri' field of your
%% response.
start_call_analytics_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_call_analytics_job(Client, Input, []).
start_call_analytics_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartCallAnalyticsJob">>, Input, Options).

%% @doc Transcribes the audio from a medical dictation or conversation and
%% applies any additional Request Parameters you choose to include in your
%% request.
%%
%% In addition to many standard transcription features, Amazon Transcribe
%% Medical provides you with a robust medical vocabulary and, optionally,
%% content identification, which adds flags to personal health information
%% (PHI). To learn more about these features, refer to How Amazon Transcribe
%% Medical works.
%%
%% To make a `StartMedicalTranscriptionJob' request, you must first
%% upload your media file into an Amazon S3 bucket; you can then specify the
%% S3 location of the file using the `Media' parameter.
%%
%% You must include the following parameters in your
%% `StartMedicalTranscriptionJob' request:
%%
%% <ul> <li> `region': The Amazon Web Services Region where you are
%% making your request. For a list of Amazon Web Services Regions supported
%% with Amazon Transcribe, refer to Amazon Transcribe endpoints and quotas.
%%
%% </li> <li> `MedicalTranscriptionJobName': A custom name you create for
%% your transcription job that is unique within your Amazon Web Services
%% account.
%%
%% </li> <li> `Media' (`MediaFileUri'): The Amazon S3 location of
%% your media file.
%%
%% </li> <li> `LanguageCode': This must be `en-US'.
%%
%% </li> <li> `OutputBucketName': The Amazon S3 bucket where you want
%% your transcript stored. If you want your output stored in a sub-folder of
%% this bucket, you must also include `OutputKey'.
%%
%% </li> <li> `Specialty': This must be `PRIMARYCARE'.
%%
%% </li> <li> `Type': Choose whether your audio is a conversation or a
%% dictation.
%%
%% </li> </ul>
start_medical_transcription_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_medical_transcription_job(Client, Input, []).
start_medical_transcription_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartMedicalTranscriptionJob">>, Input, Options).

%% @doc Transcribes the audio from a media file and applies any additional
%% Request Parameters you choose to include in your request.
%%
%% To make a `StartTranscriptionJob' request, you must first upload your
%% media file into an Amazon S3 bucket; you can then specify the Amazon S3
%% location of the file using the `Media' parameter.
%%
%% You must include the following parameters in your
%% `StartTranscriptionJob' request:
%%
%% <ul> <li> `region': The Amazon Web Services Region where you are
%% making your request. For a list of Amazon Web Services Regions supported
%% with Amazon Transcribe, refer to Amazon Transcribe endpoints and quotas.
%%
%% </li> <li> `TranscriptionJobName': A custom name you create for your
%% transcription job that is unique within your Amazon Web Services account.
%%
%% </li> <li> `Media' (`MediaFileUri'): The Amazon S3 location of
%% your media file.
%%
%% </li> <li> One of `LanguageCode', `IdentifyLanguage', or
%% `IdentifyMultipleLanguages': If you know the language of your media
%% file, specify it using the `LanguageCode' parameter; you can find all
%% valid language codes in the Supported languages table. If you don't
%% know the languages spoken in your media, use either `IdentifyLanguage'
%% or `IdentifyMultipleLanguages' and let Amazon Transcribe identify the
%% languages for you.
%%
%% </li> </ul>
start_transcription_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_transcription_job(Client, Input, []).
start_transcription_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartTranscriptionJob">>, Input, Options).

%% @doc Adds one or more custom tags, each in the form of a key:value pair,
%% to the specified resource.
%%
%% To learn more about using tags with Amazon Transcribe, refer to Tagging
%% resources.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Removes the specified tags from the specified Amazon Transcribe
%% resource.
%%
%% If you include `UntagResource' in your request, you must also include
%% `ResourceArn' and `TagKeys'.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Updates the specified Call Analytics category with new rules.
%%
%% Note that the `UpdateCallAnalyticsCategory' operation overwrites all
%% existing rules contained in the specified category. You cannot append
%% additional rules onto an existing category.
%%
%% To create a new category, see .
update_call_analytics_category(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_call_analytics_category(Client, Input, []).
update_call_analytics_category(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateCallAnalyticsCategory">>, Input, Options).

%% @doc Updates an existing custom medical vocabulary with new values.
%%
%% This operation overwrites all existing information with your new values;
%% you cannot append new terms onto an existing custom vocabulary.
update_medical_vocabulary(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_medical_vocabulary(Client, Input, []).
update_medical_vocabulary(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateMedicalVocabulary">>, Input, Options).

%% @doc Updates an existing custom vocabulary with new values.
%%
%% This operation overwrites all existing information with your new values;
%% you cannot append new terms onto an existing custom vocabulary.
update_vocabulary(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_vocabulary(Client, Input, []).
update_vocabulary(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateVocabulary">>, Input, Options).

%% @doc Updates an existing custom vocabulary filter with a new list of
%% words.
%%
%% The new list you provide overwrites all previous entries; you cannot
%% append new terms onto an existing custom vocabulary filter.
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
request(Client, Action, Input, Options) ->
    RequestFun = fun() -> do_request(Client, Action, Input, Options) end,
    aws_request:request(RequestFun, Options).

do_request(Client, Action, Input0, Options) ->
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
