%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS IoT Events monitors your equipment or device fleets for failures
%% or changes in operation, and triggers actions when such events occur.
%%
%% You can use AWS IoT Events API operations to create, read, update, and
%% delete inputs and detector models, and to list their versions.
-module(aws_iot_events).

-export([create_alarm_model/2,
         create_alarm_model/3,
         create_detector_model/2,
         create_detector_model/3,
         create_input/2,
         create_input/3,
         delete_alarm_model/3,
         delete_alarm_model/4,
         delete_detector_model/3,
         delete_detector_model/4,
         delete_input/3,
         delete_input/4,
         describe_alarm_model/2,
         describe_alarm_model/4,
         describe_alarm_model/5,
         describe_detector_model/2,
         describe_detector_model/4,
         describe_detector_model/5,
         describe_detector_model_analysis/2,
         describe_detector_model_analysis/4,
         describe_detector_model_analysis/5,
         describe_input/2,
         describe_input/4,
         describe_input/5,
         describe_logging_options/1,
         describe_logging_options/3,
         describe_logging_options/4,
         get_detector_model_analysis_results/2,
         get_detector_model_analysis_results/4,
         get_detector_model_analysis_results/5,
         list_alarm_model_versions/2,
         list_alarm_model_versions/4,
         list_alarm_model_versions/5,
         list_alarm_models/1,
         list_alarm_models/3,
         list_alarm_models/4,
         list_detector_model_versions/2,
         list_detector_model_versions/4,
         list_detector_model_versions/5,
         list_detector_models/1,
         list_detector_models/3,
         list_detector_models/4,
         list_input_routings/2,
         list_input_routings/3,
         list_inputs/1,
         list_inputs/3,
         list_inputs/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         put_logging_options/2,
         put_logging_options/3,
         start_detector_model_analysis/2,
         start_detector_model_analysis/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_alarm_model/3,
         update_alarm_model/4,
         update_detector_model/3,
         update_detector_model/4,
         update_input/3,
         update_input/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates an alarm model to monitor an AWS IoT Events input attribute.
%%
%% You can use the alarm to get notified when the value is outside a
%% specified range. For more information, see Create an alarm model in the
%% AWS IoT Events Developer Guide.
create_alarm_model(Client, Input) ->
    create_alarm_model(Client, Input, []).
create_alarm_model(Client, Input0, Options0) ->
    Method = post,
    Path = ["/alarm-models"],
    SuccessStatusCode = undefined,
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

%% @doc Creates a detector model.
create_detector_model(Client, Input) ->
    create_detector_model(Client, Input, []).
create_detector_model(Client, Input0, Options0) ->
    Method = post,
    Path = ["/detector-models"],
    SuccessStatusCode = undefined,
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

%% @doc Creates an input.
create_input(Client, Input) ->
    create_input(Client, Input, []).
create_input(Client, Input0, Options0) ->
    Method = post,
    Path = ["/inputs"],
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

%% @doc Deletes an alarm model.
%%
%% Any alarm instances that were created based on this alarm model are also
%% deleted. This action can't be undone.
delete_alarm_model(Client, AlarmModelName, Input) ->
    delete_alarm_model(Client, AlarmModelName, Input, []).
delete_alarm_model(Client, AlarmModelName, Input0, Options0) ->
    Method = delete,
    Path = ["/alarm-models/", aws_util:encode_uri(AlarmModelName), ""],
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

%% @doc Deletes a detector model.
%%
%% Any active instances of the detector model are also deleted.
delete_detector_model(Client, DetectorModelName, Input) ->
    delete_detector_model(Client, DetectorModelName, Input, []).
delete_detector_model(Client, DetectorModelName, Input0, Options0) ->
    Method = delete,
    Path = ["/detector-models/", aws_util:encode_uri(DetectorModelName), ""],
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

%% @doc Deletes an input.
delete_input(Client, InputName, Input) ->
    delete_input(Client, InputName, Input, []).
delete_input(Client, InputName, Input0, Options0) ->
    Method = delete,
    Path = ["/inputs/", aws_util:encode_uri(InputName), ""],
    SuccessStatusCode = undefined,
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

%% @doc Retrieves information about an alarm model.
%%
%% If you don't specify a value for the `alarmModelVersion' parameter, the
%% latest version is returned.
describe_alarm_model(Client, AlarmModelName)
  when is_map(Client) ->
    describe_alarm_model(Client, AlarmModelName, #{}, #{}).

describe_alarm_model(Client, AlarmModelName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_alarm_model(Client, AlarmModelName, QueryMap, HeadersMap, []).

describe_alarm_model(Client, AlarmModelName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/alarm-models/", aws_util:encode_uri(AlarmModelName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"version">>, maps:get(<<"version">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes a detector model.
%%
%% If the `version' parameter is not specified, information about the latest
%% version is returned.
describe_detector_model(Client, DetectorModelName)
  when is_map(Client) ->
    describe_detector_model(Client, DetectorModelName, #{}, #{}).

describe_detector_model(Client, DetectorModelName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_detector_model(Client, DetectorModelName, QueryMap, HeadersMap, []).

describe_detector_model(Client, DetectorModelName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/detector-models/", aws_util:encode_uri(DetectorModelName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"version">>, maps:get(<<"version">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves runtime information about a detector model analysis.
%%
%% After AWS IoT Events starts analyzing your detector model, you have up to
%% 24 hours to retrieve the analysis results.
describe_detector_model_analysis(Client, AnalysisId)
  when is_map(Client) ->
    describe_detector_model_analysis(Client, AnalysisId, #{}, #{}).

describe_detector_model_analysis(Client, AnalysisId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_detector_model_analysis(Client, AnalysisId, QueryMap, HeadersMap, []).

describe_detector_model_analysis(Client, AnalysisId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/analysis/detector-models/", aws_util:encode_uri(AnalysisId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes an input.
describe_input(Client, InputName)
  when is_map(Client) ->
    describe_input(Client, InputName, #{}, #{}).

describe_input(Client, InputName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_input(Client, InputName, QueryMap, HeadersMap, []).

describe_input(Client, InputName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/inputs/", aws_util:encode_uri(InputName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the current settings of the AWS IoT Events logging options.
describe_logging_options(Client)
  when is_map(Client) ->
    describe_logging_options(Client, #{}, #{}).

describe_logging_options(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_logging_options(Client, QueryMap, HeadersMap, []).

describe_logging_options(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/logging"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves one or more analysis results of the detector model.
%%
%% After AWS IoT Events starts analyzing your detector model, you have up to
%% 24 hours to retrieve the analysis results.
get_detector_model_analysis_results(Client, AnalysisId)
  when is_map(Client) ->
    get_detector_model_analysis_results(Client, AnalysisId, #{}, #{}).

get_detector_model_analysis_results(Client, AnalysisId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_detector_model_analysis_results(Client, AnalysisId, QueryMap, HeadersMap, []).

get_detector_model_analysis_results(Client, AnalysisId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/analysis/detector-models/", aws_util:encode_uri(AnalysisId), "/results"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all the versions of an alarm model.
%%
%% The operation returns only the metadata associated with each alarm model
%% version.
list_alarm_model_versions(Client, AlarmModelName)
  when is_map(Client) ->
    list_alarm_model_versions(Client, AlarmModelName, #{}, #{}).

list_alarm_model_versions(Client, AlarmModelName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_alarm_model_versions(Client, AlarmModelName, QueryMap, HeadersMap, []).

list_alarm_model_versions(Client, AlarmModelName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/alarm-models/", aws_util:encode_uri(AlarmModelName), "/versions"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the alarm models that you created.
%%
%% The operation returns only the metadata associated with each alarm model.
list_alarm_models(Client)
  when is_map(Client) ->
    list_alarm_models(Client, #{}, #{}).

list_alarm_models(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_alarm_models(Client, QueryMap, HeadersMap, []).

list_alarm_models(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/alarm-models"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all the versions of a detector model.
%%
%% Only the metadata associated with each detector model version is returned.
list_detector_model_versions(Client, DetectorModelName)
  when is_map(Client) ->
    list_detector_model_versions(Client, DetectorModelName, #{}, #{}).

list_detector_model_versions(Client, DetectorModelName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_detector_model_versions(Client, DetectorModelName, QueryMap, HeadersMap, []).

list_detector_model_versions(Client, DetectorModelName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/detector-models/", aws_util:encode_uri(DetectorModelName), "/versions"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the detector models you have created.
%%
%% Only the metadata associated with each detector model is returned.
list_detector_models(Client)
  when is_map(Client) ->
    list_detector_models(Client, #{}, #{}).

list_detector_models(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_detector_models(Client, QueryMap, HeadersMap, []).

list_detector_models(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/detector-models"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists one or more input routings.
list_input_routings(Client, Input) ->
    list_input_routings(Client, Input, []).
list_input_routings(Client, Input0, Options0) ->
    Method = post,
    Path = ["/input-routings"],
    SuccessStatusCode = undefined,
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

%% @doc Lists the inputs you have created.
list_inputs(Client)
  when is_map(Client) ->
    list_inputs(Client, #{}, #{}).

list_inputs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_inputs(Client, QueryMap, HeadersMap, []).

list_inputs(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/inputs"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the tags (metadata) you have assigned to the resource.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"resourceArn">>, ResourceArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Sets or updates the AWS IoT Events logging options.
%%
%% If you update the value of any `loggingOptions' field, it takes up to one
%% minute for the change to take effect. If you change the policy attached to
%% the role you specified in the `roleArn' field (for example, to correct an
%% invalid policy), it takes up to five minutes for that change to take
%% effect.
put_logging_options(Client, Input) ->
    put_logging_options(Client, Input, []).
put_logging_options(Client, Input0, Options0) ->
    Method = put,
    Path = ["/logging"],
    SuccessStatusCode = undefined,
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

%% @doc Performs an analysis of your detector model.
%%
%% For more information, see Troubleshooting a detector model in the AWS IoT
%% Events Developer Guide.
start_detector_model_analysis(Client, Input) ->
    start_detector_model_analysis(Client, Input, []).
start_detector_model_analysis(Client, Input0, Options0) ->
    Method = post,
    Path = ["/analysis/detector-models/"],
    SuccessStatusCode = undefined,
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

%% @doc Adds to or modifies the tags of the given resource.
%%
%% Tags are metadata that can be used to manage a resource.
tag_resource(Client, Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/tags"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"resourceArn">>, <<"resourceArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes the given tags (metadata) from the resource.
untag_resource(Client, Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/tags"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"resourceArn">>, <<"resourceArn">>},
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an alarm model.
%%
%% Any alarms that were created based on the previous version are deleted and
%% then created again as new data arrives.
update_alarm_model(Client, AlarmModelName, Input) ->
    update_alarm_model(Client, AlarmModelName, Input, []).
update_alarm_model(Client, AlarmModelName, Input0, Options0) ->
    Method = post,
    Path = ["/alarm-models/", aws_util:encode_uri(AlarmModelName), ""],
    SuccessStatusCode = undefined,
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

%% @doc Updates a detector model.
%%
%% Detectors (instances) spawned by the previous version are deleted and then
%% re-created as new inputs arrive.
update_detector_model(Client, DetectorModelName, Input) ->
    update_detector_model(Client, DetectorModelName, Input, []).
update_detector_model(Client, DetectorModelName, Input0, Options0) ->
    Method = post,
    Path = ["/detector-models/", aws_util:encode_uri(DetectorModelName), ""],
    SuccessStatusCode = undefined,
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

%% @doc Updates an input.
update_input(Client, InputName, Input) ->
    update_input(Client, InputName, Input, []).
update_input(Client, InputName, Input0, Options0) ->
    Method = put,
    Path = ["/inputs/", aws_util:encode_uri(InputName), ""],
    SuccessStatusCode = undefined,
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
    Client1 = Client#{service => <<"iotevents">>},
    Host = build_host(<<"iotevents">>, Client1),
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
    AdditionalHeaders = case proplists:get_value(append_sha256_content_hash, Options) of
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
