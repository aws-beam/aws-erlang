%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Polly is a web service that makes it easy to synthesize speech
%% from
%% text.
%%
%% The Amazon Polly service provides API operations for synthesizing
%% high-quality speech from plain text and Speech Synthesis Markup Language
%% (SSML), along with managing pronunciations lexicons that enable you to get
%% the best results for your application domain.
-module(aws_polly).

-export([delete_lexicon/3,
         delete_lexicon/4,
         describe_voices/1,
         describe_voices/3,
         describe_voices/4,
         get_lexicon/2,
         get_lexicon/4,
         get_lexicon/5,
         get_speech_synthesis_task/2,
         get_speech_synthesis_task/4,
         get_speech_synthesis_task/5,
         list_lexicons/1,
         list_lexicons/3,
         list_lexicons/4,
         list_speech_synthesis_tasks/1,
         list_speech_synthesis_tasks/3,
         list_speech_synthesis_tasks/4,
         put_lexicon/3,
         put_lexicon/4,
         start_speech_synthesis_task/2,
         start_speech_synthesis_task/3,
         synthesize_speech/2,
         synthesize_speech/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% synthesize_speech_input() :: #{
%%   <<"Engine">> => list(any()),
%%   <<"LanguageCode">> => list(any()),
%%   <<"LexiconNames">> => list(string()),
%%   <<"OutputFormat">> := list(any()),
%%   <<"SampleRate">> => string(),
%%   <<"SpeechMarkTypes">> => list(list(any())()),
%%   <<"Text">> := string(),
%%   <<"TextType">> => list(any()),
%%   <<"VoiceId">> := list(any())
%% }
-type synthesize_speech_input() :: #{binary() => any()}.


%% Example:
%% put_lexicon_input() :: #{
%%   <<"Content">> := string()
%% }
-type put_lexicon_input() :: #{binary() => any()}.


%% Example:
%% describe_voices_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Voices">> => list(voice())
%% }
-type describe_voices_output() :: #{binary() => any()}.


%% Example:
%% max_lexicons_number_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type max_lexicons_number_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% start_speech_synthesis_task_output() :: #{
%%   <<"SynthesisTask">> => synthesis_task()
%% }
-type start_speech_synthesis_task_output() :: #{binary() => any()}.


%% Example:
%% invalid_s3_key_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_s3_key_exception() :: #{binary() => any()}.


%% Example:
%% lexicon_size_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type lexicon_size_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% service_failure_exception() :: #{
%%   <<"message">> => string()
%% }
-type service_failure_exception() :: #{binary() => any()}.


%% Example:
%% list_lexicons_output() :: #{
%%   <<"Lexicons">> => list(lexicon_description()),
%%   <<"NextToken">> => string()
%% }
-type list_lexicons_output() :: #{binary() => any()}.

%% Example:
%% get_lexicon_input() :: #{}
-type get_lexicon_input() :: #{}.


%% Example:
%% describe_voices_input() :: #{
%%   <<"Engine">> => list(any()),
%%   <<"IncludeAdditionalLanguageCodes">> => boolean(),
%%   <<"LanguageCode">> => list(any()),
%%   <<"NextToken">> => string()
%% }
-type describe_voices_input() :: #{binary() => any()}.


%% Example:
%% list_speech_synthesis_tasks_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Status">> => list(any())
%% }
-type list_speech_synthesis_tasks_input() :: #{binary() => any()}.


%% Example:
%% list_speech_synthesis_tasks_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"SynthesisTasks">> => list(synthesis_task())
%% }
-type list_speech_synthesis_tasks_output() :: #{binary() => any()}.


%% Example:
%% lexicon_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type lexicon_not_found_exception() :: #{binary() => any()}.


%% Example:
%% ssml_marks_not_supported_for_text_type_exception() :: #{
%%   <<"message">> => string()
%% }
-type ssml_marks_not_supported_for_text_type_exception() :: #{binary() => any()}.


%% Example:
%% engine_not_supported_exception() :: #{
%%   <<"message">> => string()
%% }
-type engine_not_supported_exception() :: #{binary() => any()}.


%% Example:
%% get_lexicon_output() :: #{
%%   <<"Lexicon">> => lexicon(),
%%   <<"LexiconAttributes">> => lexicon_attributes()
%% }
-type get_lexicon_output() :: #{binary() => any()}.


%% Example:
%% invalid_ssml_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_ssml_exception() :: #{binary() => any()}.


%% Example:
%% unsupported_pls_alphabet_exception() :: #{
%%   <<"message">> => string()
%% }
-type unsupported_pls_alphabet_exception() :: #{binary() => any()}.

%% Example:
%% delete_lexicon_input() :: #{}
-type delete_lexicon_input() :: #{}.


%% Example:
%% voice() :: #{
%%   <<"AdditionalLanguageCodes">> => list(list(any())()),
%%   <<"Gender">> => list(any()),
%%   <<"Id">> => list(any()),
%%   <<"LanguageCode">> => list(any()),
%%   <<"LanguageName">> => string(),
%%   <<"Name">> => string(),
%%   <<"SupportedEngines">> => list(list(any())())
%% }
-type voice() :: #{binary() => any()}.


%% Example:
%% get_speech_synthesis_task_output() :: #{
%%   <<"SynthesisTask">> => synthesis_task()
%% }
-type get_speech_synthesis_task_output() :: #{binary() => any()}.


%% Example:
%% invalid_s3_bucket_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_s3_bucket_exception() :: #{binary() => any()}.


%% Example:
%% lexicon_attributes() :: #{
%%   <<"Alphabet">> => string(),
%%   <<"LanguageCode">> => list(any()),
%%   <<"LastModified">> => non_neg_integer(),
%%   <<"LexemesCount">> => integer(),
%%   <<"LexiconArn">> => string(),
%%   <<"Size">> => integer()
%% }
-type lexicon_attributes() :: #{binary() => any()}.


%% Example:
%% invalid_next_token_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_next_token_exception() :: #{binary() => any()}.


%% Example:
%% synthesis_task() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"Engine">> => list(any()),
%%   <<"LanguageCode">> => list(any()),
%%   <<"LexiconNames">> => list(string()),
%%   <<"OutputFormat">> => list(any()),
%%   <<"OutputUri">> => string(),
%%   <<"RequestCharacters">> => integer(),
%%   <<"SampleRate">> => string(),
%%   <<"SnsTopicArn">> => string(),
%%   <<"SpeechMarkTypes">> => list(list(any())()),
%%   <<"TaskId">> => string(),
%%   <<"TaskStatus">> => list(any()),
%%   <<"TaskStatusReason">> => string(),
%%   <<"TextType">> => list(any()),
%%   <<"VoiceId">> => list(any())
%% }
-type synthesis_task() :: #{binary() => any()}.


%% Example:
%% max_lexeme_length_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type max_lexeme_length_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% language_not_supported_exception() :: #{
%%   <<"message">> => string()
%% }
-type language_not_supported_exception() :: #{binary() => any()}.


%% Example:
%% list_lexicons_input() :: #{
%%   <<"NextToken">> => string()
%% }
-type list_lexicons_input() :: #{binary() => any()}.


%% Example:
%% invalid_task_id_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_task_id_exception() :: #{binary() => any()}.


%% Example:
%% invalid_lexicon_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_lexicon_exception() :: #{binary() => any()}.


%% Example:
%% invalid_sns_topic_arn_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_sns_topic_arn_exception() :: #{binary() => any()}.


%% Example:
%% lexicon_description() :: #{
%%   <<"Attributes">> => lexicon_attributes(),
%%   <<"Name">> => string()
%% }
-type lexicon_description() :: #{binary() => any()}.

%% Example:
%% put_lexicon_output() :: #{}
-type put_lexicon_output() :: #{}.


%% Example:
%% lexicon() :: #{
%%   <<"Content">> => string(),
%%   <<"Name">> => string()
%% }
-type lexicon() :: #{binary() => any()}.


%% Example:
%% invalid_sample_rate_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_sample_rate_exception() :: #{binary() => any()}.


%% Example:
%% unsupported_pls_language_exception() :: #{
%%   <<"message">> => string()
%% }
-type unsupported_pls_language_exception() :: #{binary() => any()}.


%% Example:
%% synthesize_speech_output() :: #{
%%   <<"AudioStream">> => binary(),
%%   <<"ContentType">> => string(),
%%   <<"RequestCharacters">> => integer()
%% }
-type synthesize_speech_output() :: #{binary() => any()}.


%% Example:
%% start_speech_synthesis_task_input() :: #{
%%   <<"Engine">> => list(any()),
%%   <<"LanguageCode">> => list(any()),
%%   <<"LexiconNames">> => list(string()),
%%   <<"OutputFormat">> := list(any()),
%%   <<"OutputS3BucketName">> := string(),
%%   <<"OutputS3KeyPrefix">> => string(),
%%   <<"SampleRate">> => string(),
%%   <<"SnsTopicArn">> => string(),
%%   <<"SpeechMarkTypes">> => list(list(any())()),
%%   <<"Text">> := string(),
%%   <<"TextType">> => list(any()),
%%   <<"VoiceId">> := list(any())
%% }
-type start_speech_synthesis_task_input() :: #{binary() => any()}.


%% Example:
%% marks_not_supported_for_format_exception() :: #{
%%   <<"message">> => string()
%% }
-type marks_not_supported_for_format_exception() :: #{binary() => any()}.


%% Example:
%% synthesis_task_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type synthesis_task_not_found_exception() :: #{binary() => any()}.

%% Example:
%% get_speech_synthesis_task_input() :: #{}
-type get_speech_synthesis_task_input() :: #{}.


%% Example:
%% text_length_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type text_length_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% delete_lexicon_output() :: #{}
-type delete_lexicon_output() :: #{}.

-type delete_lexicon_errors() ::
    lexicon_not_found_exception() | 
    service_failure_exception().

-type describe_voices_errors() ::
    invalid_next_token_exception() | 
    service_failure_exception().

-type get_lexicon_errors() ::
    lexicon_not_found_exception() | 
    service_failure_exception().

-type get_speech_synthesis_task_errors() ::
    synthesis_task_not_found_exception() | 
    invalid_task_id_exception() | 
    service_failure_exception().

-type list_lexicons_errors() ::
    invalid_next_token_exception() | 
    service_failure_exception().

-type list_speech_synthesis_tasks_errors() ::
    invalid_next_token_exception() | 
    service_failure_exception().

-type put_lexicon_errors() ::
    unsupported_pls_language_exception() | 
    invalid_lexicon_exception() | 
    max_lexeme_length_exceeded_exception() | 
    unsupported_pls_alphabet_exception() | 
    service_failure_exception() | 
    lexicon_size_exceeded_exception() | 
    max_lexicons_number_exceeded_exception().

-type start_speech_synthesis_task_errors() ::
    text_length_exceeded_exception() | 
    marks_not_supported_for_format_exception() | 
    invalid_sample_rate_exception() | 
    invalid_sns_topic_arn_exception() | 
    language_not_supported_exception() | 
    invalid_s3_bucket_exception() | 
    invalid_ssml_exception() | 
    engine_not_supported_exception() | 
    ssml_marks_not_supported_for_text_type_exception() | 
    lexicon_not_found_exception() | 
    service_failure_exception() | 
    invalid_s3_key_exception().

-type synthesize_speech_errors() ::
    text_length_exceeded_exception() | 
    marks_not_supported_for_format_exception() | 
    invalid_sample_rate_exception() | 
    language_not_supported_exception() | 
    invalid_ssml_exception() | 
    engine_not_supported_exception() | 
    ssml_marks_not_supported_for_text_type_exception() | 
    lexicon_not_found_exception() | 
    service_failure_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Deletes the specified pronunciation lexicon stored in an Amazon Web
%% Services Region.
%%
%% A lexicon which has been deleted is not available for
%% speech synthesis, nor is it possible to retrieve it using either the
%% `GetLexicon' or `ListLexicon' APIs.
%%
%% For more information, see Managing Lexicons:
%% https://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html.
-spec delete_lexicon(aws_client:aws_client(), binary() | list(), delete_lexicon_input()) ->
    {ok, delete_lexicon_output(), tuple()} |
    {error, any()} |
    {error, delete_lexicon_errors(), tuple()}.
delete_lexicon(Client, Name, Input) ->
    delete_lexicon(Client, Name, Input, []).

-spec delete_lexicon(aws_client:aws_client(), binary() | list(), delete_lexicon_input(), proplists:proplist()) ->
    {ok, delete_lexicon_output(), tuple()} |
    {error, any()} |
    {error, delete_lexicon_errors(), tuple()}.
delete_lexicon(Client, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/lexicons/", aws_util:encode_uri(Name), ""],
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

%% @doc Returns the list of voices that are available for use when
%% requesting speech synthesis.
%%
%% Each voice speaks a specified language, is
%% either male or female, and is identified by an ID, which is the ASCII
%% version of the voice name.
%%
%% When synthesizing speech ( `SynthesizeSpeech' ), you
%% provide the voice ID for the voice you want from the list of voices
%% returned by `DescribeVoices'.
%%
%% For example, you want your news reader application to read news in
%% a specific language, but giving a user the option to choose the voice.
%% Using the `DescribeVoices' operation you can provide the user
%% with a list of available voices to select from.
%%
%% You can optionally specify a language code to filter the available
%% voices. For example, if you specify `en-US', the operation
%% returns a list of all available US English voices.
%%
%% This operation requires permissions to perform the
%% `polly:DescribeVoices' action.
-spec describe_voices(aws_client:aws_client()) ->
    {ok, describe_voices_output(), tuple()} |
    {error, any()} |
    {error, describe_voices_errors(), tuple()}.
describe_voices(Client)
  when is_map(Client) ->
    describe_voices(Client, #{}, #{}).

-spec describe_voices(aws_client:aws_client(), map(), map()) ->
    {ok, describe_voices_output(), tuple()} |
    {error, any()} |
    {error, describe_voices_errors(), tuple()}.
describe_voices(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_voices(Client, QueryMap, HeadersMap, []).

-spec describe_voices(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, describe_voices_output(), tuple()} |
    {error, any()} |
    {error, describe_voices_errors(), tuple()}.
describe_voices(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/voices"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"Engine">>, maps:get(<<"Engine">>, QueryMap, undefined)},
        {<<"IncludeAdditionalLanguageCodes">>, maps:get(<<"IncludeAdditionalLanguageCodes">>, QueryMap, undefined)},
        {<<"LanguageCode">>, maps:get(<<"LanguageCode">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the content of the specified pronunciation lexicon stored
%% in an Amazon Web Services Region.
%%
%% For more information, see Managing Lexicons:
%% https://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html.
-spec get_lexicon(aws_client:aws_client(), binary() | list()) ->
    {ok, get_lexicon_output(), tuple()} |
    {error, any()} |
    {error, get_lexicon_errors(), tuple()}.
get_lexicon(Client, Name)
  when is_map(Client) ->
    get_lexicon(Client, Name, #{}, #{}).

-spec get_lexicon(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_lexicon_output(), tuple()} |
    {error, any()} |
    {error, get_lexicon_errors(), tuple()}.
get_lexicon(Client, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_lexicon(Client, Name, QueryMap, HeadersMap, []).

-spec get_lexicon(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_lexicon_output(), tuple()} |
    {error, any()} |
    {error, get_lexicon_errors(), tuple()}.
get_lexicon(Client, Name, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/lexicons/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a specific SpeechSynthesisTask object based on its TaskID.
%%
%% This object contains information about the given speech synthesis task,
%% including the status of the task, and a link to the S3 bucket containing
%% the output of the task.
-spec get_speech_synthesis_task(aws_client:aws_client(), binary() | list()) ->
    {ok, get_speech_synthesis_task_output(), tuple()} |
    {error, any()} |
    {error, get_speech_synthesis_task_errors(), tuple()}.
get_speech_synthesis_task(Client, TaskId)
  when is_map(Client) ->
    get_speech_synthesis_task(Client, TaskId, #{}, #{}).

-spec get_speech_synthesis_task(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_speech_synthesis_task_output(), tuple()} |
    {error, any()} |
    {error, get_speech_synthesis_task_errors(), tuple()}.
get_speech_synthesis_task(Client, TaskId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_speech_synthesis_task(Client, TaskId, QueryMap, HeadersMap, []).

-spec get_speech_synthesis_task(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_speech_synthesis_task_output(), tuple()} |
    {error, any()} |
    {error, get_speech_synthesis_task_errors(), tuple()}.
get_speech_synthesis_task(Client, TaskId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/synthesisTasks/", aws_util:encode_uri(TaskId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of pronunciation lexicons stored in an Amazon Web
%% Services Region.
%%
%% For more information, see Managing Lexicons:
%% https://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html.
-spec list_lexicons(aws_client:aws_client()) ->
    {ok, list_lexicons_output(), tuple()} |
    {error, any()} |
    {error, list_lexicons_errors(), tuple()}.
list_lexicons(Client)
  when is_map(Client) ->
    list_lexicons(Client, #{}, #{}).

-spec list_lexicons(aws_client:aws_client(), map(), map()) ->
    {ok, list_lexicons_output(), tuple()} |
    {error, any()} |
    {error, list_lexicons_errors(), tuple()}.
list_lexicons(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_lexicons(Client, QueryMap, HeadersMap, []).

-spec list_lexicons(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_lexicons_output(), tuple()} |
    {error, any()} |
    {error, list_lexicons_errors(), tuple()}.
list_lexicons(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/lexicons"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of SpeechSynthesisTask objects ordered by their
%% creation date.
%%
%% This operation can filter the tasks by their status, for
%% example, allowing users to list only tasks that are completed.
-spec list_speech_synthesis_tasks(aws_client:aws_client()) ->
    {ok, list_speech_synthesis_tasks_output(), tuple()} |
    {error, any()} |
    {error, list_speech_synthesis_tasks_errors(), tuple()}.
list_speech_synthesis_tasks(Client)
  when is_map(Client) ->
    list_speech_synthesis_tasks(Client, #{}, #{}).

-spec list_speech_synthesis_tasks(aws_client:aws_client(), map(), map()) ->
    {ok, list_speech_synthesis_tasks_output(), tuple()} |
    {error, any()} |
    {error, list_speech_synthesis_tasks_errors(), tuple()}.
list_speech_synthesis_tasks(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_speech_synthesis_tasks(Client, QueryMap, HeadersMap, []).

-spec list_speech_synthesis_tasks(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_speech_synthesis_tasks_output(), tuple()} |
    {error, any()} |
    {error, list_speech_synthesis_tasks_errors(), tuple()}.
list_speech_synthesis_tasks(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/synthesisTasks"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)},
        {<<"Status">>, maps:get(<<"Status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Stores a pronunciation lexicon in an Amazon Web Services Region.
%%
%% If
%% a lexicon with the same name already exists in the region, it is
%% overwritten by the new lexicon. Lexicon operations have eventual
%% consistency, therefore, it might take some time before the lexicon is
%% available to the SynthesizeSpeech operation.
%%
%% For more information, see Managing Lexicons:
%% https://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html.
-spec put_lexicon(aws_client:aws_client(), binary() | list(), put_lexicon_input()) ->
    {ok, put_lexicon_output(), tuple()} |
    {error, any()} |
    {error, put_lexicon_errors(), tuple()}.
put_lexicon(Client, Name, Input) ->
    put_lexicon(Client, Name, Input, []).

-spec put_lexicon(aws_client:aws_client(), binary() | list(), put_lexicon_input(), proplists:proplist()) ->
    {ok, put_lexicon_output(), tuple()} |
    {error, any()} |
    {error, put_lexicon_errors(), tuple()}.
put_lexicon(Client, Name, Input0, Options0) ->
    Method = put,
    Path = ["/v1/lexicons/", aws_util:encode_uri(Name), ""],
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

%% @doc Allows the creation of an asynchronous synthesis task, by starting a
%% new `SpeechSynthesisTask'.
%%
%% This operation requires all the
%% standard information needed for speech synthesis, plus the name of an
%% Amazon S3 bucket for the service to store the output of the synthesis task
%% and two optional parameters (`OutputS3KeyPrefix' and
%% `SnsTopicArn'). Once the synthesis task is created, this
%% operation will return a `SpeechSynthesisTask' object, which
%% will include an identifier of this task as well as the current status. The
%% `SpeechSynthesisTask' object is available for 72 hours after
%% starting the asynchronous synthesis task.
-spec start_speech_synthesis_task(aws_client:aws_client(), start_speech_synthesis_task_input()) ->
    {ok, start_speech_synthesis_task_output(), tuple()} |
    {error, any()} |
    {error, start_speech_synthesis_task_errors(), tuple()}.
start_speech_synthesis_task(Client, Input) ->
    start_speech_synthesis_task(Client, Input, []).

-spec start_speech_synthesis_task(aws_client:aws_client(), start_speech_synthesis_task_input(), proplists:proplist()) ->
    {ok, start_speech_synthesis_task_output(), tuple()} |
    {error, any()} |
    {error, start_speech_synthesis_task_errors(), tuple()}.
start_speech_synthesis_task(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/synthesisTasks"],
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

%% @doc Synthesizes UTF-8 input, plain text or SSML, to a stream of bytes.
%%
%% SSML input must be valid, well-formed SSML. Some alphabets might not be
%% available with all the voices (for example, Cyrillic might not be read at
%% all by English voices) unless phoneme mapping is used. For more
%% information, see How it Works:
%% https://docs.aws.amazon.com/polly/latest/dg/how-text-to-speech-works.html.
-spec synthesize_speech(aws_client:aws_client(), synthesize_speech_input()) ->
    {ok, synthesize_speech_output(), tuple()} |
    {error, any()} |
    {error, synthesize_speech_errors(), tuple()}.
synthesize_speech(Client, Input) ->
    synthesize_speech(Client, Input, []).

-spec synthesize_speech(aws_client:aws_client(), synthesize_speech_input(), proplists:proplist()) ->
    {ok, synthesize_speech_output(), tuple()} |
    {error, any()} |
    {error, synthesize_speech_errors(), tuple()}.
synthesize_speech(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/speech"],
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

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"Content-Type">>, <<"ContentType">>},
            {<<"x-amzn-RequestCharacters">>, <<"RequestCharacters">>}
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
    Client1 = Client#{service => <<"polly">>},
    Host = build_host(<<"polly">>, Client1),
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
