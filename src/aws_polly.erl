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

%%====================================================================
%% API
%%====================================================================

%% @doc Deletes the specified pronunciation lexicon stored in an Amazon Web
%% Services Region.
%%
%% A lexicon which has been deleted is not available for speech synthesis,
%% nor is it possible to retrieve it using either the `GetLexicon' or
%% `ListLexicon' APIs.
%%
%% For more information, see Managing Lexicons.
delete_lexicon(Client, Name, Input) ->
    delete_lexicon(Client, Name, Input, []).
delete_lexicon(Client, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/lexicons/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns the list of voices that are available for use when requesting
%% speech synthesis.
%%
%% Each voice speaks a specified language, is either male or female, and is
%% identified by an ID, which is the ASCII version of the voice name.
%%
%% When synthesizing speech ( `SynthesizeSpeech' ), you provide the voice ID
%% for the voice you want from the list of voices returned by
%% `DescribeVoices'.
%%
%% For example, you want your news reader application to read news in a
%% specific language, but giving a user the option to choose the voice. Using
%% the `DescribeVoices' operation you can provide the user with a list of
%% available voices to select from.
%%
%% You can optionally specify a language code to filter the available voices.
%% For example, if you specify `en-US', the operation returns a list of all
%% available US English voices.
%%
%% This operation requires permissions to perform the `polly:DescribeVoices'
%% action.
describe_voices(Client)
  when is_map(Client) ->
    describe_voices(Client, #{}, #{}).

describe_voices(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_voices(Client, QueryMap, HeadersMap, []).

describe_voices(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/voices"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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

%% @doc Returns the content of the specified pronunciation lexicon stored in
%% an Amazon Web Services Region.
%%
%% For more information, see Managing Lexicons.
get_lexicon(Client, Name)
  when is_map(Client) ->
    get_lexicon(Client, Name, #{}, #{}).

get_lexicon(Client, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_lexicon(Client, Name, QueryMap, HeadersMap, []).

get_lexicon(Client, Name, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/lexicons/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a specific SpeechSynthesisTask object based on its TaskID.
%%
%% This object contains information about the given speech synthesis task,
%% including the status of the task, and a link to the S3 bucket containing
%% the output of the task.
get_speech_synthesis_task(Client, TaskId)
  when is_map(Client) ->
    get_speech_synthesis_task(Client, TaskId, #{}, #{}).

get_speech_synthesis_task(Client, TaskId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_speech_synthesis_task(Client, TaskId, QueryMap, HeadersMap, []).

get_speech_synthesis_task(Client, TaskId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/synthesisTasks/", aws_util:encode_uri(TaskId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of pronunciation lexicons stored in an Amazon Web
%% Services Region.
%%
%% For more information, see Managing Lexicons.
list_lexicons(Client)
  when is_map(Client) ->
    list_lexicons(Client, #{}, #{}).

list_lexicons(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_lexicons(Client, QueryMap, HeadersMap, []).

list_lexicons(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/lexicons"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
%% This operation can filter the tasks by their status, for example, allowing
%% users to list only tasks that are completed.
list_speech_synthesis_tasks(Client)
  when is_map(Client) ->
    list_speech_synthesis_tasks(Client, #{}, #{}).

list_speech_synthesis_tasks(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_speech_synthesis_tasks(Client, QueryMap, HeadersMap, []).

list_speech_synthesis_tasks(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/synthesisTasks"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
%% If a lexicon with the same name already exists in the region, it is
%% overwritten by the new lexicon. Lexicon operations have eventual
%% consistency, therefore, it might take some time before the lexicon is
%% available to the SynthesizeSpeech operation.
%%
%% For more information, see Managing Lexicons.
put_lexicon(Client, Name, Input) ->
    put_lexicon(Client, Name, Input, []).
put_lexicon(Client, Name, Input0, Options0) ->
    Method = put,
    Path = ["/v1/lexicons/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% This operation requires all the standard information needed for speech
%% synthesis, plus the name of an Amazon S3 bucket for the service to store
%% the output of the synthesis task and two optional parameters
%% (`OutputS3KeyPrefix' and `SnsTopicArn'). Once the synthesis task is
%% created, this operation will return a `SpeechSynthesisTask' object, which
%% will include an identifier of this task as well as the current status. The
%% `SpeechSynthesisTask' object is available for 72 hours after starting the
%% asynchronous synthesis task.
start_speech_synthesis_task(Client, Input) ->
    start_speech_synthesis_task(Client, Input, []).
start_speech_synthesis_task(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/synthesisTasks"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
%% information, see How it Works.
synthesize_speech(Client, Input) ->
    synthesize_speech(Client, Input, []).
synthesize_speech(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/speech"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
