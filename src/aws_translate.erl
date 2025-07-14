%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Provides translation of the input content from the source language to
%% the target language.
-module(aws_translate).

-export([create_parallel_data/2,
         create_parallel_data/3,
         delete_parallel_data/2,
         delete_parallel_data/3,
         delete_terminology/2,
         delete_terminology/3,
         describe_text_translation_job/2,
         describe_text_translation_job/3,
         get_parallel_data/2,
         get_parallel_data/3,
         get_terminology/2,
         get_terminology/3,
         import_terminology/2,
         import_terminology/3,
         list_languages/2,
         list_languages/3,
         list_parallel_data/2,
         list_parallel_data/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_terminologies/2,
         list_terminologies/3,
         list_text_translation_jobs/2,
         list_text_translation_jobs/3,
         start_text_translation_job/2,
         start_text_translation_job/3,
         stop_text_translation_job/2,
         stop_text_translation_job/3,
         tag_resource/2,
         tag_resource/3,
         translate_document/2,
         translate_document/3,
         translate_text/2,
         translate_text/3,
         untag_resource/2,
         untag_resource/3,
         update_parallel_data/2,
         update_parallel_data/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% terminology_data_location() :: #{
%%   <<"Location">> => string(),
%%   <<"RepositoryType">> => string()
%% }
-type terminology_data_location() :: #{binary() => any()}.

%% Example:
%% translate_term() :: #{
%%   <<"SourceText">> => string(),
%%   <<"TargetText">> => string()
%% }
-type translate_term() :: #{binary() => any()}.

%% Example:
%% list_languages_request() :: #{
%%   <<"DisplayLanguageCode">> => list(any()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_languages_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"Tags">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% get_terminology_response() :: #{
%%   <<"AuxiliaryDataLocation">> => terminology_data_location(),
%%   <<"TerminologyDataLocation">> => terminology_data_location(),
%%   <<"TerminologyProperties">> => terminology_properties()
%% }
-type get_terminology_response() :: #{binary() => any()}.

%% Example:
%% unsupported_language_pair_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"SourceLanguageCode">> => string(),
%%   <<"TargetLanguageCode">> => string()
%% }
-type unsupported_language_pair_exception() :: #{binary() => any()}.

%% Example:
%% parallel_data_properties() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"EncryptionKey">> => encryption_key(),
%%   <<"FailedRecordCount">> => float(),
%%   <<"ImportedDataSize">> => float(),
%%   <<"ImportedRecordCount">> => float(),
%%   <<"LastUpdatedAt">> => non_neg_integer(),
%%   <<"LatestUpdateAttemptAt">> => non_neg_integer(),
%%   <<"LatestUpdateAttemptStatus">> => list(any()),
%%   <<"Message">> => string(),
%%   <<"Name">> => string(),
%%   <<"ParallelDataConfig">> => parallel_data_config(),
%%   <<"SkippedRecordCount">> => float(),
%%   <<"SourceLanguageCode">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"TargetLanguageCodes">> => list(string())
%% }
-type parallel_data_properties() :: #{binary() => any()}.

%% Example:
%% input_data_config() :: #{
%%   <<"ContentType">> => string(),
%%   <<"S3Uri">> => string()
%% }
-type input_data_config() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% translate_text_response() :: #{
%%   <<"AppliedSettings">> => translation_settings(),
%%   <<"AppliedTerminologies">> => list(applied_terminology()),
%%   <<"SourceLanguageCode">> => string(),
%%   <<"TargetLanguageCode">> => string(),
%%   <<"TranslatedText">> => string()
%% }
-type translate_text_response() :: #{binary() => any()}.

%% Example:
%% describe_text_translation_job_response() :: #{
%%   <<"TextTranslationJobProperties">> => text_translation_job_properties()
%% }
-type describe_text_translation_job_response() :: #{binary() => any()}.

%% Example:
%% translation_settings() :: #{
%%   <<"Brevity">> => list(any()),
%%   <<"Formality">> => list(any()),
%%   <<"Profanity">> => list(any())
%% }
-type translation_settings() :: #{binary() => any()}.

%% Example:
%% list_terminologies_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_terminologies_request() :: #{binary() => any()}.

%% Example:
%% get_parallel_data_request() :: #{
%%   <<"Name">> := string()
%% }
-type get_parallel_data_request() :: #{binary() => any()}.

%% Example:
%% delete_parallel_data_response() :: #{
%%   <<"Name">> => string(),
%%   <<"Status">> => list(any())
%% }
-type delete_parallel_data_response() :: #{binary() => any()}.

%% Example:
%% text_translation_job_properties() :: #{
%%   <<"DataAccessRoleArn">> => string(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"InputDataConfig">> => input_data_config(),
%%   <<"JobDetails">> => job_details(),
%%   <<"JobId">> => string(),
%%   <<"JobName">> => string(),
%%   <<"JobStatus">> => list(any()),
%%   <<"Message">> => string(),
%%   <<"OutputDataConfig">> => output_data_config(),
%%   <<"ParallelDataNames">> => list(string()),
%%   <<"Settings">> => translation_settings(),
%%   <<"SourceLanguageCode">> => string(),
%%   <<"SubmittedTime">> => non_neg_integer(),
%%   <<"TargetLanguageCodes">> => list(string()),
%%   <<"TerminologyNames">> => list(string())
%% }
-type text_translation_job_properties() :: #{binary() => any()}.

%% Example:
%% detected_language_low_confidence_exception() :: #{
%%   <<"DetectedLanguageCode">> => string(),
%%   <<"Message">> => string()
%% }
-type detected_language_low_confidence_exception() :: #{binary() => any()}.

%% Example:
%% import_terminology_request() :: #{
%%   <<"Description">> => string(),
%%   <<"EncryptionKey">> => encryption_key(),
%%   <<"MergeStrategy">> := list(any()),
%%   <<"Name">> := string(),
%%   <<"Tags">> => list(tag()),
%%   <<"TerminologyData">> := terminology_data()
%% }
-type import_terminology_request() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% import_terminology_response() :: #{
%%   <<"AuxiliaryDataLocation">> => terminology_data_location(),
%%   <<"TerminologyProperties">> => terminology_properties()
%% }
-type import_terminology_response() :: #{binary() => any()}.

%% Example:
%% too_many_requests_exception() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_requests_exception() :: #{binary() => any()}.

%% Example:
%% get_parallel_data_response() :: #{
%%   <<"AuxiliaryDataLocation">> => parallel_data_data_location(),
%%   <<"DataLocation">> => parallel_data_data_location(),
%%   <<"LatestUpdateAttemptAuxiliaryDataLocation">> => parallel_data_data_location(),
%%   <<"ParallelDataProperties">> => parallel_data_properties()
%% }
-type get_parallel_data_response() :: #{binary() => any()}.

%% Example:
%% invalid_filter_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_filter_exception() :: #{binary() => any()}.

%% Example:
%% parallel_data_config() :: #{
%%   <<"Format">> => list(any()),
%%   <<"S3Uri">> => string()
%% }
-type parallel_data_config() :: #{binary() => any()}.

%% Example:
%% list_text_translation_jobs_request() :: #{
%%   <<"Filter">> => text_translation_job_filter(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_text_translation_jobs_request() :: #{binary() => any()}.

%% Example:
%% list_text_translation_jobs_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"TextTranslationJobPropertiesList">> => list(text_translation_job_properties())
%% }
-type list_text_translation_jobs_response() :: #{binary() => any()}.

%% Example:
%% list_terminologies_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"TerminologyPropertiesList">> => list(terminology_properties())
%% }
-type list_terminologies_response() :: #{binary() => any()}.

%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% text_translation_job_filter() :: #{
%%   <<"JobName">> => string(),
%%   <<"JobStatus">> => list(any()),
%%   <<"SubmittedAfterTime">> => non_neg_integer(),
%%   <<"SubmittedBeforeTime">> => non_neg_integer()
%% }
-type text_translation_job_filter() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% invalid_request_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_request_exception() :: #{binary() => any()}.

%% Example:
%% translated_document() :: #{
%%   <<"Content">> => binary()
%% }
-type translated_document() :: #{binary() => any()}.

%% Example:
%% invalid_parameter_value_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_parameter_value_exception() :: #{binary() => any()}.

%% Example:
%% create_parallel_data_response() :: #{
%%   <<"Name">> => string(),
%%   <<"Status">> => list(any())
%% }
-type create_parallel_data_response() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => list(tag())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% stop_text_translation_job_request() :: #{
%%   <<"JobId">> := string()
%% }
-type stop_text_translation_job_request() :: #{binary() => any()}.

%% Example:
%% service_unavailable_exception() :: #{
%%   <<"Message">> => string()
%% }
-type service_unavailable_exception() :: #{binary() => any()}.

%% Example:
%% language() :: #{
%%   <<"LanguageCode">> => string(),
%%   <<"LanguageName">> => string()
%% }
-type language() :: #{binary() => any()}.

%% Example:
%% delete_terminology_request() :: #{
%%   <<"Name">> := string()
%% }
-type delete_terminology_request() :: #{binary() => any()}.

%% Example:
%% job_details() :: #{
%%   <<"DocumentsWithErrorsCount">> => integer(),
%%   <<"InputDocumentsCount">> => integer(),
%%   <<"TranslatedDocumentsCount">> => integer()
%% }
-type job_details() :: #{binary() => any()}.

%% Example:
%% update_parallel_data_request() :: #{
%%   <<"ClientToken">> := string(),
%%   <<"Description">> => string(),
%%   <<"Name">> := string(),
%%   <<"ParallelDataConfig">> := parallel_data_config()
%% }
-type update_parallel_data_request() :: #{binary() => any()}.

%% Example:
%% translate_text_request() :: #{
%%   <<"Settings">> => translation_settings(),
%%   <<"SourceLanguageCode">> := string(),
%%   <<"TargetLanguageCode">> := string(),
%%   <<"TerminologyNames">> => list(string()),
%%   <<"Text">> := string()
%% }
-type translate_text_request() :: #{binary() => any()}.

%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% create_parallel_data_request() :: #{
%%   <<"ClientToken">> := string(),
%%   <<"Description">> => string(),
%%   <<"EncryptionKey">> => encryption_key(),
%%   <<"Name">> := string(),
%%   <<"ParallelDataConfig">> := parallel_data_config(),
%%   <<"Tags">> => list(tag())
%% }
-type create_parallel_data_request() :: #{binary() => any()}.

%% Example:
%% list_parallel_data_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ParallelDataPropertiesList">> => list(parallel_data_properties())
%% }
-type list_parallel_data_response() :: #{binary() => any()}.

%% Example:
%% start_text_translation_job_response() :: #{
%%   <<"JobId">> => string(),
%%   <<"JobStatus">> => list(any())
%% }
-type start_text_translation_job_response() :: #{binary() => any()}.

%% Example:
%% list_languages_response() :: #{
%%   <<"DisplayLanguageCode">> => list(any()),
%%   <<"Languages">> => list(language()),
%%   <<"NextToken">> => string()
%% }
-type list_languages_response() :: #{binary() => any()}.

%% Example:
%% list_parallel_data_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_parallel_data_request() :: #{binary() => any()}.

%% Example:
%% translate_document_response() :: #{
%%   <<"AppliedSettings">> => translation_settings(),
%%   <<"AppliedTerminologies">> => list(applied_terminology()),
%%   <<"SourceLanguageCode">> => string(),
%%   <<"TargetLanguageCode">> => string(),
%%   <<"TranslatedDocument">> => translated_document()
%% }
-type translate_document_response() :: #{binary() => any()}.

%% Example:
%% text_size_limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type text_size_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% update_parallel_data_response() :: #{
%%   <<"LatestUpdateAttemptAt">> => non_neg_integer(),
%%   <<"LatestUpdateAttemptStatus">> => list(any()),
%%   <<"Name">> => string(),
%%   <<"Status">> => list(any())
%% }
-type update_parallel_data_response() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% stop_text_translation_job_response() :: #{
%%   <<"JobId">> => string(),
%%   <<"JobStatus">> => list(any())
%% }
-type stop_text_translation_job_response() :: #{binary() => any()}.

%% Example:
%% concurrent_modification_exception() :: #{
%%   <<"Message">> => string()
%% }
-type concurrent_modification_exception() :: #{binary() => any()}.

%% Example:
%% unsupported_display_language_code_exception() :: #{
%%   <<"DisplayLanguageCode">> => string(),
%%   <<"Message">> => string()
%% }
-type unsupported_display_language_code_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"ResourceArn">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% describe_text_translation_job_request() :: #{
%%   <<"JobId">> := string()
%% }
-type describe_text_translation_job_request() :: #{binary() => any()}.

%% Example:
%% output_data_config() :: #{
%%   <<"EncryptionKey">> => encryption_key(),
%%   <<"S3Uri">> => string()
%% }
-type output_data_config() :: #{binary() => any()}.

%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% parallel_data_data_location() :: #{
%%   <<"Location">> => string(),
%%   <<"RepositoryType">> => string()
%% }
-type parallel_data_data_location() :: #{binary() => any()}.

%% Example:
%% translate_document_request() :: #{
%%   <<"Document">> := document(),
%%   <<"Settings">> => translation_settings(),
%%   <<"SourceLanguageCode">> := string(),
%%   <<"TargetLanguageCode">> := string(),
%%   <<"TerminologyNames">> => list(string())
%% }
-type translate_document_request() :: #{binary() => any()}.

%% Example:
%% terminology_data() :: #{
%%   <<"Directionality">> => list(any()),
%%   <<"File">> => binary(),
%%   <<"Format">> => list(any())
%% }
-type terminology_data() :: #{binary() => any()}.

%% Example:
%% delete_parallel_data_request() :: #{
%%   <<"Name">> := string()
%% }
-type delete_parallel_data_request() :: #{binary() => any()}.

%% Example:
%% encryption_key() :: #{
%%   <<"Id">> => string(),
%%   <<"Type">> => list(any())
%% }
-type encryption_key() :: #{binary() => any()}.

%% Example:
%% terminology_properties() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"Directionality">> => list(any()),
%%   <<"EncryptionKey">> => encryption_key(),
%%   <<"Format">> => list(any()),
%%   <<"LastUpdatedAt">> => non_neg_integer(),
%%   <<"Message">> => string(),
%%   <<"Name">> => string(),
%%   <<"SizeBytes">> => integer(),
%%   <<"SkippedTermCount">> => integer(),
%%   <<"SourceLanguageCode">> => string(),
%%   <<"TargetLanguageCodes">> => list(string()),
%%   <<"TermCount">> => integer()
%% }
-type terminology_properties() :: #{binary() => any()}.

%% Example:
%% start_text_translation_job_request() :: #{
%%   <<"ClientToken">> := string(),
%%   <<"DataAccessRoleArn">> := string(),
%%   <<"InputDataConfig">> := input_data_config(),
%%   <<"JobName">> => string(),
%%   <<"OutputDataConfig">> := output_data_config(),
%%   <<"ParallelDataNames">> => list(string()),
%%   <<"Settings">> => translation_settings(),
%%   <<"SourceLanguageCode">> := string(),
%%   <<"TargetLanguageCodes">> := list(string()),
%%   <<"TerminologyNames">> => list(string())
%% }
-type start_text_translation_job_request() :: #{binary() => any()}.

%% Example:
%% document() :: #{
%%   <<"Content">> => binary(),
%%   <<"ContentType">> => string()
%% }
-type document() :: #{binary() => any()}.

%% Example:
%% get_terminology_request() :: #{
%%   <<"Name">> := string(),
%%   <<"TerminologyDataFormat">> => list(any())
%% }
-type get_terminology_request() :: #{binary() => any()}.

%% Example:
%% too_many_tags_exception() :: #{
%%   <<"ResourceArn">> => string(),
%%   <<"message">> => string()
%% }
-type too_many_tags_exception() :: #{binary() => any()}.

%% Example:
%% applied_terminology() :: #{
%%   <<"Name">> => string(),
%%   <<"Terms">> => list(term())
%% }
-type applied_terminology() :: #{binary() => any()}.

-type create_parallel_data_errors() ::
    too_many_tags_exception() | 
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    internal_server_exception() | 
    invalid_parameter_value_exception() | 
    invalid_request_exception() | 
    conflict_exception() | 
    too_many_requests_exception().

-type delete_parallel_data_errors() ::
    concurrent_modification_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type delete_terminology_errors() ::
    internal_server_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type describe_text_translation_job_errors() ::
    internal_server_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type get_parallel_data_errors() ::
    internal_server_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type get_terminology_errors() ::
    internal_server_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type import_terminology_errors() ::
    too_many_tags_exception() | 
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    internal_server_exception() | 
    invalid_parameter_value_exception() | 
    too_many_requests_exception().

-type list_languages_errors() ::
    unsupported_display_language_code_exception() | 
    internal_server_exception() | 
    invalid_parameter_value_exception() | 
    too_many_requests_exception().

-type list_parallel_data_errors() ::
    internal_server_exception() | 
    invalid_parameter_value_exception() | 
    too_many_requests_exception().

-type list_tags_for_resource_errors() ::
    internal_server_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception().

-type list_terminologies_errors() ::
    internal_server_exception() | 
    invalid_parameter_value_exception() | 
    too_many_requests_exception().

-type list_text_translation_jobs_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    invalid_filter_exception() | 
    too_many_requests_exception().

-type start_text_translation_job_errors() ::
    internal_server_exception() | 
    invalid_parameter_value_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    unsupported_language_pair_exception().

-type stop_text_translation_job_errors() ::
    internal_server_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type tag_resource_errors() ::
    too_many_tags_exception() | 
    concurrent_modification_exception() | 
    internal_server_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception().

-type translate_document_errors() ::
    limit_exceeded_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    unsupported_language_pair_exception().

-type translate_text_errors() ::
    text_size_limit_exceeded_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    detected_language_low_confidence_exception() | 
    unsupported_language_pair_exception().

-type untag_resource_errors() ::
    concurrent_modification_exception() | 
    internal_server_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception().

-type update_parallel_data_errors() ::
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    internal_server_exception() | 
    invalid_parameter_value_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    too_many_requests_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a parallel data resource in Amazon Translate by importing an
%% input file from
%% Amazon S3.
%%
%% Parallel data files contain examples that show how you want segments of
%% text to be
%% translated. By adding parallel data, you can influence the style, tone,
%% and word choice in
%% your translation output.
-spec create_parallel_data(aws_client:aws_client(), create_parallel_data_request()) ->
    {ok, create_parallel_data_response(), tuple()} |
    {error, any()} |
    {error, create_parallel_data_errors(), tuple()}.
create_parallel_data(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_parallel_data(Client, Input, []).

-spec create_parallel_data(aws_client:aws_client(), create_parallel_data_request(), proplists:proplist()) ->
    {ok, create_parallel_data_response(), tuple()} |
    {error, any()} |
    {error, create_parallel_data_errors(), tuple()}.
create_parallel_data(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateParallelData">>, Input, Options).

%% @doc Deletes a parallel data resource in Amazon Translate.
-spec delete_parallel_data(aws_client:aws_client(), delete_parallel_data_request()) ->
    {ok, delete_parallel_data_response(), tuple()} |
    {error, any()} |
    {error, delete_parallel_data_errors(), tuple()}.
delete_parallel_data(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_parallel_data(Client, Input, []).

-spec delete_parallel_data(aws_client:aws_client(), delete_parallel_data_request(), proplists:proplist()) ->
    {ok, delete_parallel_data_response(), tuple()} |
    {error, any()} |
    {error, delete_parallel_data_errors(), tuple()}.
delete_parallel_data(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteParallelData">>, Input, Options).

%% @doc A synchronous action that deletes a custom terminology.
-spec delete_terminology(aws_client:aws_client(), delete_terminology_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_terminology_errors(), tuple()}.
delete_terminology(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_terminology(Client, Input, []).

-spec delete_terminology(aws_client:aws_client(), delete_terminology_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_terminology_errors(), tuple()}.
delete_terminology(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTerminology">>, Input, Options).

%% @doc Gets the properties associated with an asynchronous batch translation
%% job including name,
%% ID, status, source and target languages, input/output S3 buckets, and so
%% on.
-spec describe_text_translation_job(aws_client:aws_client(), describe_text_translation_job_request()) ->
    {ok, describe_text_translation_job_response(), tuple()} |
    {error, any()} |
    {error, describe_text_translation_job_errors(), tuple()}.
describe_text_translation_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_text_translation_job(Client, Input, []).

-spec describe_text_translation_job(aws_client:aws_client(), describe_text_translation_job_request(), proplists:proplist()) ->
    {ok, describe_text_translation_job_response(), tuple()} |
    {error, any()} |
    {error, describe_text_translation_job_errors(), tuple()}.
describe_text_translation_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTextTranslationJob">>, Input, Options).

%% @doc Provides information about a parallel data resource.
-spec get_parallel_data(aws_client:aws_client(), get_parallel_data_request()) ->
    {ok, get_parallel_data_response(), tuple()} |
    {error, any()} |
    {error, get_parallel_data_errors(), tuple()}.
get_parallel_data(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_parallel_data(Client, Input, []).

-spec get_parallel_data(aws_client:aws_client(), get_parallel_data_request(), proplists:proplist()) ->
    {ok, get_parallel_data_response(), tuple()} |
    {error, any()} |
    {error, get_parallel_data_errors(), tuple()}.
get_parallel_data(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetParallelData">>, Input, Options).

%% @doc Retrieves a custom terminology.
-spec get_terminology(aws_client:aws_client(), get_terminology_request()) ->
    {ok, get_terminology_response(), tuple()} |
    {error, any()} |
    {error, get_terminology_errors(), tuple()}.
get_terminology(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_terminology(Client, Input, []).

-spec get_terminology(aws_client:aws_client(), get_terminology_request(), proplists:proplist()) ->
    {ok, get_terminology_response(), tuple()} |
    {error, any()} |
    {error, get_terminology_errors(), tuple()}.
get_terminology(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTerminology">>, Input, Options).

%% @doc Creates or updates a custom terminology, depending on whether one
%% already exists for the
%% given terminology name.
%%
%% Importing a terminology with the same name as an existing one will
%% merge the terminologies based on the chosen merge strategy. The only
%% supported merge strategy
%% is OVERWRITE, where the imported terminology overwrites the existing
%% terminology of the same
%% name.
%%
%% If you import a terminology that overwrites an existing one, the new
%% terminology takes up
%% to 10 minutes to fully propagate. After that, translations have access to
%% the new
%% terminology.
-spec import_terminology(aws_client:aws_client(), import_terminology_request()) ->
    {ok, import_terminology_response(), tuple()} |
    {error, any()} |
    {error, import_terminology_errors(), tuple()}.
import_terminology(Client, Input)
  when is_map(Client), is_map(Input) ->
    import_terminology(Client, Input, []).

-spec import_terminology(aws_client:aws_client(), import_terminology_request(), proplists:proplist()) ->
    {ok, import_terminology_response(), tuple()} |
    {error, any()} |
    {error, import_terminology_errors(), tuple()}.
import_terminology(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ImportTerminology">>, Input, Options).

%% @doc Provides a list of languages (RFC-5646 codes and names) that Amazon
%% Translate supports.
-spec list_languages(aws_client:aws_client(), list_languages_request()) ->
    {ok, list_languages_response(), tuple()} |
    {error, any()} |
    {error, list_languages_errors(), tuple()}.
list_languages(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_languages(Client, Input, []).

-spec list_languages(aws_client:aws_client(), list_languages_request(), proplists:proplist()) ->
    {ok, list_languages_response(), tuple()} |
    {error, any()} |
    {error, list_languages_errors(), tuple()}.
list_languages(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListLanguages">>, Input, Options).

%% @doc Provides a list of your parallel data resources in Amazon Translate.
-spec list_parallel_data(aws_client:aws_client(), list_parallel_data_request()) ->
    {ok, list_parallel_data_response(), tuple()} |
    {error, any()} |
    {error, list_parallel_data_errors(), tuple()}.
list_parallel_data(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_parallel_data(Client, Input, []).

-spec list_parallel_data(aws_client:aws_client(), list_parallel_data_request(), proplists:proplist()) ->
    {ok, list_parallel_data_response(), tuple()} |
    {error, any()} |
    {error, list_parallel_data_errors(), tuple()}.
list_parallel_data(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListParallelData">>, Input, Options).

%% @doc Lists all tags associated with a given Amazon Translate resource.
%%
%% For more information, see
%% Tagging your resources:
%% https://docs.aws.amazon.com/translate/latest/dg/tagging.html.
-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).

-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Provides a list of custom terminologies associated with your account.
-spec list_terminologies(aws_client:aws_client(), list_terminologies_request()) ->
    {ok, list_terminologies_response(), tuple()} |
    {error, any()} |
    {error, list_terminologies_errors(), tuple()}.
list_terminologies(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_terminologies(Client, Input, []).

-spec list_terminologies(aws_client:aws_client(), list_terminologies_request(), proplists:proplist()) ->
    {ok, list_terminologies_response(), tuple()} |
    {error, any()} |
    {error, list_terminologies_errors(), tuple()}.
list_terminologies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTerminologies">>, Input, Options).

%% @doc Gets a list of the batch translation jobs that you have submitted.
-spec list_text_translation_jobs(aws_client:aws_client(), list_text_translation_jobs_request()) ->
    {ok, list_text_translation_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_text_translation_jobs_errors(), tuple()}.
list_text_translation_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_text_translation_jobs(Client, Input, []).

-spec list_text_translation_jobs(aws_client:aws_client(), list_text_translation_jobs_request(), proplists:proplist()) ->
    {ok, list_text_translation_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_text_translation_jobs_errors(), tuple()}.
list_text_translation_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTextTranslationJobs">>, Input, Options).

%% @doc Starts an asynchronous batch translation job.
%%
%% Use batch translation jobs to
%% translate large volumes of text across multiple documents at once.
%% For batch translation, you can input documents with different source
%% languages (specify `auto'
%% as the source language). You can specify one
%% or more target languages. Batch translation translates each input document
%% into each of the target languages.
%% For more information, see
%% Asynchronous batch processing:
%% https://docs.aws.amazon.com/translate/latest/dg/async.html.
%%
%% Batch translation jobs can be described with the
%% `DescribeTextTranslationJob' operation, listed with the
%% `ListTextTranslationJobs' operation, and stopped with the
%% `StopTextTranslationJob' operation.
-spec start_text_translation_job(aws_client:aws_client(), start_text_translation_job_request()) ->
    {ok, start_text_translation_job_response(), tuple()} |
    {error, any()} |
    {error, start_text_translation_job_errors(), tuple()}.
start_text_translation_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_text_translation_job(Client, Input, []).

-spec start_text_translation_job(aws_client:aws_client(), start_text_translation_job_request(), proplists:proplist()) ->
    {ok, start_text_translation_job_response(), tuple()} |
    {error, any()} |
    {error, start_text_translation_job_errors(), tuple()}.
start_text_translation_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartTextTranslationJob">>, Input, Options).

%% @doc Stops an asynchronous batch translation job that is in progress.
%%
%% If the job's state is `IN_PROGRESS', the job will be marked for
%% termination and
%% put into the `STOP_REQUESTED' state. If the job completes before it
%% can be stopped,
%% it is put into the `COMPLETED' state. Otherwise, the job is put into
%% the
%% `STOPPED' state.
%%
%% Asynchronous batch translation jobs are started with the
%% `StartTextTranslationJob' operation. You can use the
%% `DescribeTextTranslationJob' or `ListTextTranslationJobs'
%% operations to get a batch translation job's `JobId'.
-spec stop_text_translation_job(aws_client:aws_client(), stop_text_translation_job_request()) ->
    {ok, stop_text_translation_job_response(), tuple()} |
    {error, any()} |
    {error, stop_text_translation_job_errors(), tuple()}.
stop_text_translation_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_text_translation_job(Client, Input, []).

-spec stop_text_translation_job(aws_client:aws_client(), stop_text_translation_job_request(), proplists:proplist()) ->
    {ok, stop_text_translation_job_response(), tuple()} |
    {error, any()} |
    {error, stop_text_translation_job_errors(), tuple()}.
stop_text_translation_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopTextTranslationJob">>, Input, Options).

%% @doc Associates a specific tag with a resource.
%%
%% A tag is a key-value pair
%% that adds as a metadata to a resource.
%% For more information, see
%% Tagging your resources:
%% https://docs.aws.amazon.com/translate/latest/dg/tagging.html.
-spec tag_resource(aws_client:aws_client(), tag_resource_request()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Translates the input document from the source language to the target
%% language.
%%
%% This synchronous operation supports text, HTML, or Word documents as the
%% input document.
%%
%% `TranslateDocument' supports translations from English to any
%% supported language,
%% and from any supported language to English. Therefore, specify either the
%% source language code
%% or the target language code as “en” (English).
%%
%% If you set the `Formality' parameter, the request will fail if the
%% target language does
%% not support formality. For a list of target languages that support
%% formality, see
%% Setting formality:
%% https://docs.aws.amazon.com/translate/latest/dg/customizing-translations-formality.html.
-spec translate_document(aws_client:aws_client(), translate_document_request()) ->
    {ok, translate_document_response(), tuple()} |
    {error, any()} |
    {error, translate_document_errors(), tuple()}.
translate_document(Client, Input)
  when is_map(Client), is_map(Input) ->
    translate_document(Client, Input, []).

-spec translate_document(aws_client:aws_client(), translate_document_request(), proplists:proplist()) ->
    {ok, translate_document_response(), tuple()} |
    {error, any()} |
    {error, translate_document_errors(), tuple()}.
translate_document(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TranslateDocument">>, Input, Options).

%% @doc Translates input text from the source language to the target
%% language.
%%
%% For a list of
%% available languages and language codes, see Supported languages:
%% https://docs.aws.amazon.com/translate/latest/dg/what-is-languages.html.
-spec translate_text(aws_client:aws_client(), translate_text_request()) ->
    {ok, translate_text_response(), tuple()} |
    {error, any()} |
    {error, translate_text_errors(), tuple()}.
translate_text(Client, Input)
  when is_map(Client), is_map(Input) ->
    translate_text(Client, Input, []).

-spec translate_text(aws_client:aws_client(), translate_text_request(), proplists:proplist()) ->
    {ok, translate_text_response(), tuple()} |
    {error, any()} |
    {error, translate_text_errors(), tuple()}.
translate_text(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TranslateText">>, Input, Options).

%% @doc Removes a specific tag associated with an Amazon Translate resource.
%%
%% For more information, see
%% Tagging your resources:
%% https://docs.aws.amazon.com/translate/latest/dg/tagging.html.
-spec untag_resource(aws_client:aws_client(), untag_resource_request()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).

-spec untag_resource(aws_client:aws_client(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Updates a previously created parallel data resource by importing a
%% new input file from
%% Amazon S3.
-spec update_parallel_data(aws_client:aws_client(), update_parallel_data_request()) ->
    {ok, update_parallel_data_response(), tuple()} |
    {error, any()} |
    {error, update_parallel_data_errors(), tuple()}.
update_parallel_data(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_parallel_data(Client, Input, []).

-spec update_parallel_data(aws_client:aws_client(), update_parallel_data_request(), proplists:proplist()) ->
    {ok, update_parallel_data_response(), tuple()} |
    {error, any()} |
    {error, update_parallel_data_errors(), tuple()}.
update_parallel_data(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateParallelData">>, Input, Options).

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

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Client) ->
    Proto = aws_client:proto(Client),
    Port = aws_client:port(Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
