%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Polly is a web service that makes it easy to synthesize speech
%% from text.
%%
%% The Amazon Polly service provides API operations for synthesizing
%% high-quality speech from plain text and Speech Synthesis Markup Language
%% (SSML), along with managing pronunciations lexicons that enable you to get
%% the best results for your application domain.
-module(aws_polly).

-export([delete_lexicon/3,
         delete_lexicon/4,
         describe_voices/5,
         describe_voices/6,
         get_lexicon/2,
         get_lexicon/3,
         get_speech_synthesis_task/2,
         get_speech_synthesis_task/3,
         list_lexicons/2,
         list_lexicons/3,
         list_speech_synthesis_tasks/4,
         list_speech_synthesis_tasks/5,
         put_lexicon/3,
         put_lexicon/4,
         start_speech_synthesis_task/2,
         start_speech_synthesis_task/3,
         synthesize_speech/2,
         synthesize_speech/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Deletes the specified pronunciation lexicon stored in an AWS Region.
%% A lexicon which has been deleted is not available for speech synthesis,
%% nor is it possible to retrieve it using either the <code>GetLexicon</code>
%% or <code>ListLexicon</code> APIs.
%%
%% For more information, see <a
%% href="https://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html">Managing
%% Lexicons</a>.
delete_lexicon(Client, Name, Input) ->
    delete_lexicon(Client, Name, Input, []).
delete_lexicon(Client, Name, Input0, Options) ->
    Method = delete,
    Path = ["/v1/lexicons/", http_uri:encode(Name), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Returns the list of voices that are available for use when requesting
%% speech synthesis. Each voice speaks a specified language, is either male
%% or female, and is identified by an ID, which is the ASCII version of the
%% voice name.
%%
%% When synthesizing speech ( <code>SynthesizeSpeech</code> ), you provide
%% the voice ID for the voice you want from the list of voices returned by
%% <code>DescribeVoices</code>.
%%
%% For example, you want your news reader application to read news in a
%% specific language, but giving a user the option to choose the voice. Using
%% the <code>DescribeVoices</code> operation you can provide the user with a
%% list of available voices to select from.
%%
%% You can optionally specify a language code to filter the available voices.
%% For example, if you specify <code>en-US</code>, the operation returns a
%% list of all available US English voices.
%%
%% This operation requires permissions to perform the
%% <code>polly:DescribeVoices</code> action.
describe_voices(Client, Engine, IncludeAdditionalLanguageCodes, LanguageCode, NextToken)
  when is_map(Client) ->
    describe_voices(Client, Engine, IncludeAdditionalLanguageCodes, LanguageCode, NextToken, []).
describe_voices(Client, Engine, IncludeAdditionalLanguageCodes, LanguageCode, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/voices"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"Engine">>, Engine},
        {<<"IncludeAdditionalLanguageCodes">>, IncludeAdditionalLanguageCodes},
        {<<"LanguageCode">>, LanguageCode},
        {<<"NextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the content of the specified pronunciation lexicon stored in
%% an AWS Region. For more information, see <a
%% href="https://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html">Managing
%% Lexicons</a>.
get_lexicon(Client, Name)
  when is_map(Client) ->
    get_lexicon(Client, Name, []).
get_lexicon(Client, Name, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/lexicons/", http_uri:encode(Name), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a specific SpeechSynthesisTask object based on its TaskID.
%% This object contains information about the given speech synthesis task,
%% including the status of the task, and a link to the S3 bucket containing
%% the output of the task.
get_speech_synthesis_task(Client, TaskId)
  when is_map(Client) ->
    get_speech_synthesis_task(Client, TaskId, []).
get_speech_synthesis_task(Client, TaskId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/synthesisTasks/", http_uri:encode(TaskId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of pronunciation lexicons stored in an AWS Region. For
%% more information, see <a
%% href="https://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html">Managing
%% Lexicons</a>.
list_lexicons(Client, NextToken)
  when is_map(Client) ->
    list_lexicons(Client, NextToken, []).
list_lexicons(Client, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/lexicons"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"NextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of SpeechSynthesisTask objects ordered by their
%% creation date. This operation can filter the tasks by their status, for
%% example, allowing users to list only tasks that are completed.
list_speech_synthesis_tasks(Client, MaxResults, NextToken, Status)
  when is_map(Client) ->
    list_speech_synthesis_tasks(Client, MaxResults, NextToken, Status, []).
list_speech_synthesis_tasks(Client, MaxResults, NextToken, Status, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/synthesisTasks"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, MaxResults},
        {<<"NextToken">>, NextToken},
        {<<"Status">>, Status}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Stores a pronunciation lexicon in an AWS Region. If a lexicon with
%% the same name already exists in the region, it is overwritten by the new
%% lexicon. Lexicon operations have eventual consistency, therefore, it might
%% take some time before the lexicon is available to the SynthesizeSpeech
%% operation.
%%
%% For more information, see <a
%% href="https://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html">Managing
%% Lexicons</a>.
put_lexicon(Client, Name, Input) ->
    put_lexicon(Client, Name, Input, []).
put_lexicon(Client, Name, Input0, Options) ->
    Method = put,
    Path = ["/v1/lexicons/", http_uri:encode(Name), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Allows the creation of an asynchronous synthesis task, by starting a
%% new <code>SpeechSynthesisTask</code>. This operation requires all the
%% standard information needed for speech synthesis, plus the name of an
%% Amazon S3 bucket for the service to store the output of the synthesis task
%% and two optional parameters (OutputS3KeyPrefix and SnsTopicArn). Once the
%% synthesis task is created, this operation will return a
%% SpeechSynthesisTask object, which will include an identifier of this task
%% as well as the current status.
start_speech_synthesis_task(Client, Input) ->
    start_speech_synthesis_task(Client, Input, []).
start_speech_synthesis_task(Client, Input0, Options) ->
    Method = post,
    Path = ["/v1/synthesisTasks"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Synthesizes UTF-8 input, plain text or SSML, to a stream of bytes.
%% SSML input must be valid, well-formed SSML. Some alphabets might not be
%% available with all the voices (for example, Cyrillic might not be read at
%% all by English voices) unless phoneme mapping is used. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/polly/latest/dg/how-text-to-speech-works.html">How
%% it Works</a>.
synthesize_speech(Client, Input) ->
    synthesize_speech(Client, Input, []).
synthesize_speech(Client, Input0, Options) ->
    Method = post,
    Path = ["/v1/speech"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    case request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode) of
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

-spec request(aws_client:aws_client(), atom(), iolist(), list(),
              list(), map() | undefined, list(), pos_integer() | undefined) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map(),
    Error :: map().
request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
    Client1 = Client#{service => <<"polly">>},
    Host = build_host(<<"polly">>, Client1),
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
