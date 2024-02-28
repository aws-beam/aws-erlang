%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Welcome to the Amazon Web Services Clean Rooms ML API Reference.
%%
%% Amazon Web Services Clean Rooms ML provides a privacy-enhancing method for
%% two parties to identify similar users in their data without the need to
%% share their data with each other. The first party brings the training data
%% to Clean Rooms so that they can create and configure an audience model
%% (lookalike model) and associate it with a collaboration. The second party
%% then brings their seed data to Clean Rooms and generates an audience
%% (lookalike segment) that resembles the training data.
%%
%% To learn more about Amazon Web Services Clean Rooms ML concepts,
%% procedures, and best practices, see the Clean Rooms User Guide:
%% https://docs.aws.amazon.com/clean-rooms/latest/userguide/machine-learning.html.
%%
%% To learn more about SQL commands, functions, and conditions supported in
%% Clean Rooms, see the Clean Rooms SQL Reference:
%% https://docs.aws.amazon.com/clean-rooms/latest/sql-reference/sql-reference.html.
-module(aws_cleanroomsml).

-export([create_audience_model/2,
         create_audience_model/3,
         create_configured_audience_model/2,
         create_configured_audience_model/3,
         create_training_dataset/2,
         create_training_dataset/3,
         delete_audience_generation_job/3,
         delete_audience_generation_job/4,
         delete_audience_model/3,
         delete_audience_model/4,
         delete_configured_audience_model/3,
         delete_configured_audience_model/4,
         delete_configured_audience_model_policy/3,
         delete_configured_audience_model_policy/4,
         delete_training_dataset/3,
         delete_training_dataset/4,
         get_audience_generation_job/2,
         get_audience_generation_job/4,
         get_audience_generation_job/5,
         get_audience_model/2,
         get_audience_model/4,
         get_audience_model/5,
         get_configured_audience_model/2,
         get_configured_audience_model/4,
         get_configured_audience_model/5,
         get_configured_audience_model_policy/2,
         get_configured_audience_model_policy/4,
         get_configured_audience_model_policy/5,
         get_training_dataset/2,
         get_training_dataset/4,
         get_training_dataset/5,
         list_audience_export_jobs/1,
         list_audience_export_jobs/3,
         list_audience_export_jobs/4,
         list_audience_generation_jobs/1,
         list_audience_generation_jobs/3,
         list_audience_generation_jobs/4,
         list_audience_models/1,
         list_audience_models/3,
         list_audience_models/4,
         list_configured_audience_models/1,
         list_configured_audience_models/3,
         list_configured_audience_models/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_training_datasets/1,
         list_training_datasets/3,
         list_training_datasets/4,
         put_configured_audience_model_policy/3,
         put_configured_audience_model_policy/4,
         start_audience_export_job/2,
         start_audience_export_job/3,
         start_audience_generation_job/2,
         start_audience_generation_job/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_configured_audience_model/3,
         update_configured_audience_model/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Defines the information necessary to create an audience model.
%%
%% An audience model is a machine learning model that Clean Rooms ML trains
%% to measure similarity between users. Clean Rooms ML manages training and
%% storing the audience model. The audience model can be used in multiple
%% calls to the `StartAudienceGenerationJob' API.
create_audience_model(Client, Input) ->
    create_audience_model(Client, Input, []).
create_audience_model(Client, Input0, Options0) ->
    Method = post,
    Path = ["/audience-model"],
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

%% @doc Defines the information necessary to create a configured audience
%% model.
create_configured_audience_model(Client, Input) ->
    create_configured_audience_model(Client, Input, []).
create_configured_audience_model(Client, Input0, Options0) ->
    Method = post,
    Path = ["/configured-audience-model"],
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

%% @doc Defines the information necessary to create a training dataset, or
%% seed audience.
%%
%% In Clean Rooms ML, the `TrainingDataset' is metadata that points to a
%% Glue table, which is read only during `AudienceModel' creation.
create_training_dataset(Client, Input) ->
    create_training_dataset(Client, Input, []).
create_training_dataset(Client, Input0, Options0) ->
    Method = post,
    Path = ["/training-dataset"],
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

%% @doc Deletes the specified audience generation job, and removes all data
%% associated with the job.
delete_audience_generation_job(Client, AudienceGenerationJobArn, Input) ->
    delete_audience_generation_job(Client, AudienceGenerationJobArn, Input, []).
delete_audience_generation_job(Client, AudienceGenerationJobArn, Input0, Options0) ->
    Method = delete,
    Path = ["/audience-generation-job/", aws_util:encode_uri(AudienceGenerationJobArn), ""],
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

%% @doc Specifies an audience model that you want to delete.
%%
%% You can't delete an audience model if there are any configured
%% audience models that depend on the audience model.
delete_audience_model(Client, AudienceModelArn, Input) ->
    delete_audience_model(Client, AudienceModelArn, Input, []).
delete_audience_model(Client, AudienceModelArn, Input0, Options0) ->
    Method = delete,
    Path = ["/audience-model/", aws_util:encode_uri(AudienceModelArn), ""],
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

%% @doc Deletes the specified configured audience model.
%%
%% You can't delete a configured audience model if there are any
%% lookalike models that use the configured audience model. If you delete a
%% configured audience model, it will be removed from any collaborations that
%% it is associated to.
delete_configured_audience_model(Client, ConfiguredAudienceModelArn, Input) ->
    delete_configured_audience_model(Client, ConfiguredAudienceModelArn, Input, []).
delete_configured_audience_model(Client, ConfiguredAudienceModelArn, Input0, Options0) ->
    Method = delete,
    Path = ["/configured-audience-model/", aws_util:encode_uri(ConfiguredAudienceModelArn), ""],
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

%% @doc Deletes the specified configured audience model policy.
delete_configured_audience_model_policy(Client, ConfiguredAudienceModelArn, Input) ->
    delete_configured_audience_model_policy(Client, ConfiguredAudienceModelArn, Input, []).
delete_configured_audience_model_policy(Client, ConfiguredAudienceModelArn, Input0, Options0) ->
    Method = delete,
    Path = ["/configured-audience-model/", aws_util:encode_uri(ConfiguredAudienceModelArn), "/policy"],
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

%% @doc Specifies a training dataset that you want to delete.
%%
%% You can't delete a training dataset if there are any audience models
%% that depend on the training dataset. In Clean Rooms ML, the
%% `TrainingDataset' is metadata that points to a Glue table, which is
%% read only during `AudienceModel' creation. This action deletes the
%% metadata.
delete_training_dataset(Client, TrainingDatasetArn, Input) ->
    delete_training_dataset(Client, TrainingDatasetArn, Input, []).
delete_training_dataset(Client, TrainingDatasetArn, Input0, Options0) ->
    Method = delete,
    Path = ["/training-dataset/", aws_util:encode_uri(TrainingDatasetArn), ""],
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

%% @doc Returns information about an audience generation job.
get_audience_generation_job(Client, AudienceGenerationJobArn)
  when is_map(Client) ->
    get_audience_generation_job(Client, AudienceGenerationJobArn, #{}, #{}).

get_audience_generation_job(Client, AudienceGenerationJobArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_audience_generation_job(Client, AudienceGenerationJobArn, QueryMap, HeadersMap, []).

get_audience_generation_job(Client, AudienceGenerationJobArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/audience-generation-job/", aws_util:encode_uri(AudienceGenerationJobArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about an audience model
get_audience_model(Client, AudienceModelArn)
  when is_map(Client) ->
    get_audience_model(Client, AudienceModelArn, #{}, #{}).

get_audience_model(Client, AudienceModelArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_audience_model(Client, AudienceModelArn, QueryMap, HeadersMap, []).

get_audience_model(Client, AudienceModelArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/audience-model/", aws_util:encode_uri(AudienceModelArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a specified configured audience model.
get_configured_audience_model(Client, ConfiguredAudienceModelArn)
  when is_map(Client) ->
    get_configured_audience_model(Client, ConfiguredAudienceModelArn, #{}, #{}).

get_configured_audience_model(Client, ConfiguredAudienceModelArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_configured_audience_model(Client, ConfiguredAudienceModelArn, QueryMap, HeadersMap, []).

get_configured_audience_model(Client, ConfiguredAudienceModelArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/configured-audience-model/", aws_util:encode_uri(ConfiguredAudienceModelArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a configured audience model policy.
get_configured_audience_model_policy(Client, ConfiguredAudienceModelArn)
  when is_map(Client) ->
    get_configured_audience_model_policy(Client, ConfiguredAudienceModelArn, #{}, #{}).

get_configured_audience_model_policy(Client, ConfiguredAudienceModelArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_configured_audience_model_policy(Client, ConfiguredAudienceModelArn, QueryMap, HeadersMap, []).

get_configured_audience_model_policy(Client, ConfiguredAudienceModelArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/configured-audience-model/", aws_util:encode_uri(ConfiguredAudienceModelArn), "/policy"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a training dataset.
get_training_dataset(Client, TrainingDatasetArn)
  when is_map(Client) ->
    get_training_dataset(Client, TrainingDatasetArn, #{}, #{}).

get_training_dataset(Client, TrainingDatasetArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_training_dataset(Client, TrainingDatasetArn, QueryMap, HeadersMap, []).

get_training_dataset(Client, TrainingDatasetArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/training-dataset/", aws_util:encode_uri(TrainingDatasetArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of the audience export jobs.
list_audience_export_jobs(Client)
  when is_map(Client) ->
    list_audience_export_jobs(Client, #{}, #{}).

list_audience_export_jobs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_audience_export_jobs(Client, QueryMap, HeadersMap, []).

list_audience_export_jobs(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/audience-export-job"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"audienceGenerationJobArn">>, maps:get(<<"audienceGenerationJobArn">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of audience generation jobs.
list_audience_generation_jobs(Client)
  when is_map(Client) ->
    list_audience_generation_jobs(Client, #{}, #{}).

list_audience_generation_jobs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_audience_generation_jobs(Client, QueryMap, HeadersMap, []).

list_audience_generation_jobs(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/audience-generation-job"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"collaborationId">>, maps:get(<<"collaborationId">>, QueryMap, undefined)},
        {<<"configuredAudienceModelArn">>, maps:get(<<"configuredAudienceModelArn">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of audience models.
list_audience_models(Client)
  when is_map(Client) ->
    list_audience_models(Client, #{}, #{}).

list_audience_models(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_audience_models(Client, QueryMap, HeadersMap, []).

list_audience_models(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/audience-model"],
    SuccessStatusCode = 200,
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

%% @doc Returns a list of the configured audience models.
list_configured_audience_models(Client)
  when is_map(Client) ->
    list_configured_audience_models(Client, #{}, #{}).

list_configured_audience_models(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_configured_audience_models(Client, QueryMap, HeadersMap, []).

list_configured_audience_models(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/configured-audience-model"],
    SuccessStatusCode = 200,
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

%% @doc Returns a list of tags for a provided resource.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of training datasets.
list_training_datasets(Client)
  when is_map(Client) ->
    list_training_datasets(Client, #{}, #{}).

list_training_datasets(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_training_datasets(Client, QueryMap, HeadersMap, []).

list_training_datasets(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/training-dataset"],
    SuccessStatusCode = 200,
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

%% @doc Create or update the resource policy for a configured audience model.
put_configured_audience_model_policy(Client, ConfiguredAudienceModelArn, Input) ->
    put_configured_audience_model_policy(Client, ConfiguredAudienceModelArn, Input, []).
put_configured_audience_model_policy(Client, ConfiguredAudienceModelArn, Input0, Options0) ->
    Method = put,
    Path = ["/configured-audience-model/", aws_util:encode_uri(ConfiguredAudienceModelArn), "/policy"],
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

%% @doc Export an audience of a specified size after you have generated an
%% audience.
start_audience_export_job(Client, Input) ->
    start_audience_export_job(Client, Input, []).
start_audience_export_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/audience-export-job"],
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

%% @doc Information necessary to start the audience generation job.
start_audience_generation_job(Client, Input) ->
    start_audience_generation_job(Client, Input, []).
start_audience_generation_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/audience-generation-job"],
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

%% @doc Adds metadata tags to a specified resource.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
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

%% @doc Removes metadata tags from a specified resource.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Provides the information necessary to update a configured audience
%% model.
%%
%% Updates that impact audience generation jobs take effect when a new job
%% starts, but do not impact currently running jobs.
update_configured_audience_model(Client, ConfiguredAudienceModelArn, Input) ->
    update_configured_audience_model(Client, ConfiguredAudienceModelArn, Input, []).
update_configured_audience_model(Client, ConfiguredAudienceModelArn, Input0, Options0) ->
    Method = patch,
    Path = ["/configured-audience-model/", aws_util:encode_uri(ConfiguredAudienceModelArn), ""],
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
    Client1 = Client#{service => <<"cleanrooms-ml">>},
    Host = build_host(<<"cleanrooms-ml">>, Client1),
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
