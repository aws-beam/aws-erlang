%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc The Amazon Chime SDK media pipeline APIs in this section allow
%% software developers to create Amazon Chime SDK media pipelines that
%% capture, concatenate, or stream your Amazon Chime SDK meetings.
%%
%% For more information about media pipelines, see Amazon Chime SDK media
%% pipelines.
-module(aws_chime_sdk_media_pipelines).

-export([create_media_capture_pipeline/2,
         create_media_capture_pipeline/3,
         create_media_concatenation_pipeline/2,
         create_media_concatenation_pipeline/3,
         create_media_insights_pipeline/2,
         create_media_insights_pipeline/3,
         create_media_insights_pipeline_configuration/2,
         create_media_insights_pipeline_configuration/3,
         create_media_live_connector_pipeline/2,
         create_media_live_connector_pipeline/3,
         delete_media_capture_pipeline/3,
         delete_media_capture_pipeline/4,
         delete_media_insights_pipeline_configuration/3,
         delete_media_insights_pipeline_configuration/4,
         delete_media_pipeline/3,
         delete_media_pipeline/4,
         get_media_capture_pipeline/2,
         get_media_capture_pipeline/4,
         get_media_capture_pipeline/5,
         get_media_insights_pipeline_configuration/2,
         get_media_insights_pipeline_configuration/4,
         get_media_insights_pipeline_configuration/5,
         get_media_pipeline/2,
         get_media_pipeline/4,
         get_media_pipeline/5,
         get_speaker_search_task/3,
         get_speaker_search_task/5,
         get_speaker_search_task/6,
         get_voice_tone_analysis_task/3,
         get_voice_tone_analysis_task/5,
         get_voice_tone_analysis_task/6,
         list_media_capture_pipelines/1,
         list_media_capture_pipelines/3,
         list_media_capture_pipelines/4,
         list_media_insights_pipeline_configurations/1,
         list_media_insights_pipeline_configurations/3,
         list_media_insights_pipeline_configurations/4,
         list_media_pipelines/1,
         list_media_pipelines/3,
         list_media_pipelines/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         start_speaker_search_task/3,
         start_speaker_search_task/4,
         start_voice_tone_analysis_task/3,
         start_voice_tone_analysis_task/4,
         stop_speaker_search_task/4,
         stop_speaker_search_task/5,
         stop_voice_tone_analysis_task/4,
         stop_voice_tone_analysis_task/5,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_media_insights_pipeline_configuration/3,
         update_media_insights_pipeline_configuration/4,
         update_media_insights_pipeline_status/3,
         update_media_insights_pipeline_status/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a media pipeline.
create_media_capture_pipeline(Client, Input) ->
    create_media_capture_pipeline(Client, Input, []).
create_media_capture_pipeline(Client, Input0, Options0) ->
    Method = post,
    Path = ["/sdk-media-capture-pipelines"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a media concatenation pipeline.
create_media_concatenation_pipeline(Client, Input) ->
    create_media_concatenation_pipeline(Client, Input, []).
create_media_concatenation_pipeline(Client, Input0, Options0) ->
    Method = post,
    Path = ["/sdk-media-concatenation-pipelines"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a media insights pipeline.
create_media_insights_pipeline(Client, Input) ->
    create_media_insights_pipeline(Client, Input, []).
create_media_insights_pipeline(Client, Input0, Options0) ->
    Method = post,
    Path = ["/media-insights-pipelines"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc A structure that contains the static configurations for a media
%% insights pipeline.
create_media_insights_pipeline_configuration(Client, Input) ->
    create_media_insights_pipeline_configuration(Client, Input, []).
create_media_insights_pipeline_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/media-insights-pipeline-configurations"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a media live connector pipeline in an Amazon Chime SDK
%% meeting.
create_media_live_connector_pipeline(Client, Input) ->
    create_media_live_connector_pipeline(Client, Input, []).
create_media_live_connector_pipeline(Client, Input0, Options0) ->
    Method = post,
    Path = ["/sdk-media-live-connector-pipelines"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the media pipeline.
delete_media_capture_pipeline(Client, MediaPipelineId, Input) ->
    delete_media_capture_pipeline(Client, MediaPipelineId, Input, []).
delete_media_capture_pipeline(Client, MediaPipelineId, Input0, Options0) ->
    Method = delete,
    Path = ["/sdk-media-capture-pipelines/", aws_util:encode_uri(MediaPipelineId), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified configuration settings.
delete_media_insights_pipeline_configuration(Client, Identifier, Input) ->
    delete_media_insights_pipeline_configuration(Client, Identifier, Input, []).
delete_media_insights_pipeline_configuration(Client, Identifier, Input0, Options0) ->
    Method = delete,
    Path = ["/media-insights-pipeline-configurations/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the media pipeline.
delete_media_pipeline(Client, MediaPipelineId, Input) ->
    delete_media_pipeline(Client, MediaPipelineId, Input, []).
delete_media_pipeline(Client, MediaPipelineId, Input0, Options0) ->
    Method = delete,
    Path = ["/sdk-media-pipelines/", aws_util:encode_uri(MediaPipelineId), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets an existing media pipeline.
get_media_capture_pipeline(Client, MediaPipelineId)
  when is_map(Client) ->
    get_media_capture_pipeline(Client, MediaPipelineId, #{}, #{}).

get_media_capture_pipeline(Client, MediaPipelineId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_media_capture_pipeline(Client, MediaPipelineId, QueryMap, HeadersMap, []).

get_media_capture_pipeline(Client, MediaPipelineId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sdk-media-capture-pipelines/", aws_util:encode_uri(MediaPipelineId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the configuration settings for a media insights pipeline.
get_media_insights_pipeline_configuration(Client, Identifier)
  when is_map(Client) ->
    get_media_insights_pipeline_configuration(Client, Identifier, #{}, #{}).

get_media_insights_pipeline_configuration(Client, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_media_insights_pipeline_configuration(Client, Identifier, QueryMap, HeadersMap, []).

get_media_insights_pipeline_configuration(Client, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/media-insights-pipeline-configurations/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets an existing media pipeline.
get_media_pipeline(Client, MediaPipelineId)
  when is_map(Client) ->
    get_media_pipeline(Client, MediaPipelineId, #{}, #{}).

get_media_pipeline(Client, MediaPipelineId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_media_pipeline(Client, MediaPipelineId, QueryMap, HeadersMap, []).

get_media_pipeline(Client, MediaPipelineId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sdk-media-pipelines/", aws_util:encode_uri(MediaPipelineId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the details of the specified speaker search task.
get_speaker_search_task(Client, Identifier, SpeakerSearchTaskId)
  when is_map(Client) ->
    get_speaker_search_task(Client, Identifier, SpeakerSearchTaskId, #{}, #{}).

get_speaker_search_task(Client, Identifier, SpeakerSearchTaskId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_speaker_search_task(Client, Identifier, SpeakerSearchTaskId, QueryMap, HeadersMap, []).

get_speaker_search_task(Client, Identifier, SpeakerSearchTaskId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/media-insights-pipelines/", aws_util:encode_uri(Identifier), "/speaker-search-tasks/", aws_util:encode_uri(SpeakerSearchTaskId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the details of a voice tone analysis task.
get_voice_tone_analysis_task(Client, Identifier, VoiceToneAnalysisTaskId)
  when is_map(Client) ->
    get_voice_tone_analysis_task(Client, Identifier, VoiceToneAnalysisTaskId, #{}, #{}).

get_voice_tone_analysis_task(Client, Identifier, VoiceToneAnalysisTaskId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_voice_tone_analysis_task(Client, Identifier, VoiceToneAnalysisTaskId, QueryMap, HeadersMap, []).

get_voice_tone_analysis_task(Client, Identifier, VoiceToneAnalysisTaskId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/media-insights-pipelines/", aws_util:encode_uri(Identifier), "/voice-tone-analysis-tasks/", aws_util:encode_uri(VoiceToneAnalysisTaskId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of media pipelines.
list_media_capture_pipelines(Client)
  when is_map(Client) ->
    list_media_capture_pipelines(Client, #{}, #{}).

list_media_capture_pipelines(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_media_capture_pipelines(Client, QueryMap, HeadersMap, []).

list_media_capture_pipelines(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sdk-media-capture-pipelines"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the available media insights pipeline configurations.
list_media_insights_pipeline_configurations(Client)
  when is_map(Client) ->
    list_media_insights_pipeline_configurations(Client, #{}, #{}).

list_media_insights_pipeline_configurations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_media_insights_pipeline_configurations(Client, QueryMap, HeadersMap, []).

list_media_insights_pipeline_configurations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/media-insights-pipeline-configurations"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of media pipelines.
list_media_pipelines(Client)
  when is_map(Client) ->
    list_media_pipelines(Client, #{}, #{}).

list_media_pipelines(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_media_pipelines(Client, QueryMap, HeadersMap, []).

list_media_pipelines(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sdk-media-pipelines"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the tags available for a media pipeline.
list_tags_for_resource(Client, ResourceARN)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceARN, #{}, #{}).

list_tags_for_resource(Client, ResourceARN, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceARN, QueryMap, HeadersMap, []).

list_tags_for_resource(Client, ResourceARN, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"arn">>, ResourceARN}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Starts a speaker search task.
%%
%% Before starting any speaker search tasks, you must provide all notices and
%% obtain all consents from the speaker as required under applicable privacy
%% and biometrics laws, and as required under the AWS service terms for the
%% Amazon Chime SDK.
start_speaker_search_task(Client, Identifier, Input) ->
    start_speaker_search_task(Client, Identifier, Input, []).
start_speaker_search_task(Client, Identifier, Input0, Options0) ->
    Method = post,
    Path = ["/media-insights-pipelines/", aws_util:encode_uri(Identifier), "/speaker-search-tasks?operation=start"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Starts a voice tone analysis task.
%%
%% For more information about voice tone analysis, see Using Amazon Chime SDK
%% voice analytics in the Amazon Chime SDK Developer Guide.
%%
%% Before starting any voice tone analysis tasks, you must provide all
%% notices and obtain all consents from the speaker as required under
%% applicable privacy and biometrics laws, and as required under the AWS
%% service terms for the Amazon Chime SDK.
start_voice_tone_analysis_task(Client, Identifier, Input) ->
    start_voice_tone_analysis_task(Client, Identifier, Input, []).
start_voice_tone_analysis_task(Client, Identifier, Input0, Options0) ->
    Method = post,
    Path = ["/media-insights-pipelines/", aws_util:encode_uri(Identifier), "/voice-tone-analysis-tasks?operation=start"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Stops a speaker search task.
stop_speaker_search_task(Client, Identifier, SpeakerSearchTaskId, Input) ->
    stop_speaker_search_task(Client, Identifier, SpeakerSearchTaskId, Input, []).
stop_speaker_search_task(Client, Identifier, SpeakerSearchTaskId, Input0, Options0) ->
    Method = post,
    Path = ["/media-insights-pipelines/", aws_util:encode_uri(Identifier), "/speaker-search-tasks/", aws_util:encode_uri(SpeakerSearchTaskId), "?operation=stop"],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Stops a voice tone analysis task.
stop_voice_tone_analysis_task(Client, Identifier, VoiceToneAnalysisTaskId, Input) ->
    stop_voice_tone_analysis_task(Client, Identifier, VoiceToneAnalysisTaskId, Input, []).
stop_voice_tone_analysis_task(Client, Identifier, VoiceToneAnalysisTaskId, Input0, Options0) ->
    Method = post,
    Path = ["/media-insights-pipelines/", aws_util:encode_uri(Identifier), "/voice-tone-analysis-tasks/", aws_util:encode_uri(VoiceToneAnalysisTaskId), "?operation=stop"],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc The ARN of the media pipeline that you want to tag.
%%
%% Consists of the pipeline's endpoint region, resource ID, and pipeline
%% ID.
tag_resource(Client, Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/tags?operation=tag-resource"],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes any tags from a media pipeline.
untag_resource(Client, Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/tags?operation=untag-resource"],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the media insights pipeline's configuration settings.
update_media_insights_pipeline_configuration(Client, Identifier, Input) ->
    update_media_insights_pipeline_configuration(Client, Identifier, Input, []).
update_media_insights_pipeline_configuration(Client, Identifier, Input0, Options0) ->
    Method = put,
    Path = ["/media-insights-pipeline-configurations/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the status of a media insights pipeline.
update_media_insights_pipeline_status(Client, Identifier, Input) ->
    update_media_insights_pipeline_status(Client, Identifier, Input, []).
update_media_insights_pipeline_status(Client, Identifier, Input0, Options0) ->
    Method = put,
    Path = ["/media-insights-pipeline-status/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

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
    Client1 = Client#{service => <<"chime">>},
    Host = build_host(<<"media-pipelines-chime">>, Client1),
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
