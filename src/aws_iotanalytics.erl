%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc IoT Analytics allows you to collect large amounts of device data,
%% process messages, and store them.
%%
%% You can then query the data and run sophisticated analytics on it. IoT
%% Analytics enables advanced data exploration through integration with
%% Jupyter Notebooks and data visualization through integration with Amazon
%% QuickSight.
%%
%% Traditional analytics and business intelligence tools are designed to
%% process structured data. IoT data often comes from devices that record
%% noisy processes (such as temperature, motion, or sound). As a result the
%% data from these devices can have significant gaps, corrupted messages, and
%% false readings that must be cleaned up before analysis can occur. Also,
%% IoT data is often only meaningful in the context of other data from
%% external sources.
%%
%% IoT Analytics automates the steps required to analyze data from IoT
%% devices. IoT Analytics filters, transforms, and enriches IoT data before
%% storing it in a time-series data store for analysis. You can set up the
%% service to collect only the data you need from your devices, apply
%% mathematical transforms to process the data, and enrich the data with
%% device-specific metadata such as device type and location before storing
%% it. Then, you can analyze your data by running queries using the built-in
%% SQL query engine, or perform more complex analytics and machine learning
%% inference. IoT Analytics includes pre-built models for common IoT use
%% cases so you can answer questions like which devices are about to fail or
%% which customers are at risk of abandoning their wearable devices.
-module(aws_iotanalytics).

-export([batch_put_message/2,
         batch_put_message/3,
         cancel_pipeline_reprocessing/4,
         cancel_pipeline_reprocessing/5,
         create_channel/2,
         create_channel/3,
         create_dataset/2,
         create_dataset/3,
         create_dataset_content/3,
         create_dataset_content/4,
         create_datastore/2,
         create_datastore/3,
         create_pipeline/2,
         create_pipeline/3,
         delete_channel/3,
         delete_channel/4,
         delete_dataset/3,
         delete_dataset/4,
         delete_dataset_content/3,
         delete_dataset_content/4,
         delete_datastore/3,
         delete_datastore/4,
         delete_pipeline/3,
         delete_pipeline/4,
         describe_channel/2,
         describe_channel/4,
         describe_channel/5,
         describe_dataset/2,
         describe_dataset/4,
         describe_dataset/5,
         describe_datastore/2,
         describe_datastore/4,
         describe_datastore/5,
         describe_logging_options/1,
         describe_logging_options/3,
         describe_logging_options/4,
         describe_pipeline/2,
         describe_pipeline/4,
         describe_pipeline/5,
         get_dataset_content/2,
         get_dataset_content/4,
         get_dataset_content/5,
         list_channels/1,
         list_channels/3,
         list_channels/4,
         list_dataset_contents/2,
         list_dataset_contents/4,
         list_dataset_contents/5,
         list_datasets/1,
         list_datasets/3,
         list_datasets/4,
         list_datastores/1,
         list_datastores/3,
         list_datastores/4,
         list_pipelines/1,
         list_pipelines/3,
         list_pipelines/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         put_logging_options/2,
         put_logging_options/3,
         run_pipeline_activity/2,
         run_pipeline_activity/3,
         sample_channel_data/2,
         sample_channel_data/4,
         sample_channel_data/5,
         start_pipeline_reprocessing/3,
         start_pipeline_reprocessing/4,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_channel/3,
         update_channel/4,
         update_dataset/3,
         update_dataset/4,
         update_datastore/3,
         update_datastore/4,
         update_pipeline/3,
         update_pipeline/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Sends messages to a channel.
batch_put_message(Client, Input) ->
    batch_put_message(Client, Input, []).
batch_put_message(Client, Input0, Options0) ->
    Method = post,
    Path = ["/messages/batch"],
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

%% @doc Cancels the reprocessing of data through the pipeline.
cancel_pipeline_reprocessing(Client, PipelineName, ReprocessingId, Input) ->
    cancel_pipeline_reprocessing(Client, PipelineName, ReprocessingId, Input, []).
cancel_pipeline_reprocessing(Client, PipelineName, ReprocessingId, Input0, Options0) ->
    Method = delete,
    Path = ["/pipelines/", aws_util:encode_uri(PipelineName), "/reprocessing/", aws_util:encode_uri(ReprocessingId), ""],
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

%% @doc Used to create a channel.
%%
%% A channel collects data from an MQTT topic and archives the raw,
%% unprocessed messages before publishing the data to a pipeline.
create_channel(Client, Input) ->
    create_channel(Client, Input, []).
create_channel(Client, Input0, Options0) ->
    Method = post,
    Path = ["/channels"],
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

%% @doc Used to create a dataset.
%%
%% A dataset stores data retrieved from a data store by applying a
%% `queryAction' (a SQL query) or a `containerAction' (executing a
%% containerized application). This operation creates the skeleton of a
%% dataset. The dataset can be populated manually by calling
%% `CreateDatasetContent' or automatically according to a trigger you
%% specify.
create_dataset(Client, Input) ->
    create_dataset(Client, Input, []).
create_dataset(Client, Input0, Options0) ->
    Method = post,
    Path = ["/datasets"],
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

%% @doc Creates the content of a dataset by applying a `queryAction' (a SQL
%% query) or a `containerAction' (executing a containerized application).
create_dataset_content(Client, DatasetName, Input) ->
    create_dataset_content(Client, DatasetName, Input, []).
create_dataset_content(Client, DatasetName, Input0, Options0) ->
    Method = post,
    Path = ["/datasets/", aws_util:encode_uri(DatasetName), "/content"],
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

%% @doc Creates a data store, which is a repository for messages.
create_datastore(Client, Input) ->
    create_datastore(Client, Input, []).
create_datastore(Client, Input0, Options0) ->
    Method = post,
    Path = ["/datastores"],
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

%% @doc Creates a pipeline.
%%
%% A pipeline consumes messages from a channel and allows you to process the
%% messages before storing them in a data store. You must specify both a
%% `channel' and a `datastore' activity and, optionally, as many as 23
%% additional activities in the `pipelineActivities' array.
create_pipeline(Client, Input) ->
    create_pipeline(Client, Input, []).
create_pipeline(Client, Input0, Options0) ->
    Method = post,
    Path = ["/pipelines"],
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

%% @doc Deletes the specified channel.
delete_channel(Client, ChannelName, Input) ->
    delete_channel(Client, ChannelName, Input, []).
delete_channel(Client, ChannelName, Input0, Options0) ->
    Method = delete,
    Path = ["/channels/", aws_util:encode_uri(ChannelName), ""],
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

%% @doc Deletes the specified dataset.
%%
%% You do not have to delete the content of the dataset before you perform
%% this operation.
delete_dataset(Client, DatasetName, Input) ->
    delete_dataset(Client, DatasetName, Input, []).
delete_dataset(Client, DatasetName, Input0, Options0) ->
    Method = delete,
    Path = ["/datasets/", aws_util:encode_uri(DatasetName), ""],
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

%% @doc Deletes the content of the specified dataset.
delete_dataset_content(Client, DatasetName, Input) ->
    delete_dataset_content(Client, DatasetName, Input, []).
delete_dataset_content(Client, DatasetName, Input0, Options0) ->
    Method = delete,
    Path = ["/datasets/", aws_util:encode_uri(DatasetName), "/content"],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"versionId">>, <<"versionId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified data store.
delete_datastore(Client, DatastoreName, Input) ->
    delete_datastore(Client, DatastoreName, Input, []).
delete_datastore(Client, DatastoreName, Input0, Options0) ->
    Method = delete,
    Path = ["/datastores/", aws_util:encode_uri(DatastoreName), ""],
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

%% @doc Deletes the specified pipeline.
delete_pipeline(Client, PipelineName, Input) ->
    delete_pipeline(Client, PipelineName, Input, []).
delete_pipeline(Client, PipelineName, Input0, Options0) ->
    Method = delete,
    Path = ["/pipelines/", aws_util:encode_uri(PipelineName), ""],
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

%% @doc Retrieves information about a channel.
describe_channel(Client, ChannelName)
  when is_map(Client) ->
    describe_channel(Client, ChannelName, #{}, #{}).

describe_channel(Client, ChannelName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_channel(Client, ChannelName, QueryMap, HeadersMap, []).

describe_channel(Client, ChannelName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channels/", aws_util:encode_uri(ChannelName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"includeStatistics">>, maps:get(<<"includeStatistics">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a dataset.
describe_dataset(Client, DatasetName)
  when is_map(Client) ->
    describe_dataset(Client, DatasetName, #{}, #{}).

describe_dataset(Client, DatasetName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_dataset(Client, DatasetName, QueryMap, HeadersMap, []).

describe_dataset(Client, DatasetName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/datasets/", aws_util:encode_uri(DatasetName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a data store.
describe_datastore(Client, DatastoreName)
  when is_map(Client) ->
    describe_datastore(Client, DatastoreName, #{}, #{}).

describe_datastore(Client, DatastoreName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_datastore(Client, DatastoreName, QueryMap, HeadersMap, []).

describe_datastore(Client, DatastoreName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/datastores/", aws_util:encode_uri(DatastoreName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"includeStatistics">>, maps:get(<<"includeStatistics">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the current settings of the IoT Analytics logging options.
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

%% @doc Retrieves information about a pipeline.
describe_pipeline(Client, PipelineName)
  when is_map(Client) ->
    describe_pipeline(Client, PipelineName, #{}, #{}).

describe_pipeline(Client, PipelineName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_pipeline(Client, PipelineName, QueryMap, HeadersMap, []).

describe_pipeline(Client, PipelineName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/pipelines/", aws_util:encode_uri(PipelineName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the contents of a dataset as presigned URIs.
get_dataset_content(Client, DatasetName)
  when is_map(Client) ->
    get_dataset_content(Client, DatasetName, #{}, #{}).

get_dataset_content(Client, DatasetName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_dataset_content(Client, DatasetName, QueryMap, HeadersMap, []).

get_dataset_content(Client, DatasetName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/datasets/", aws_util:encode_uri(DatasetName), "/content"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"versionId">>, maps:get(<<"versionId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of channels.
list_channels(Client)
  when is_map(Client) ->
    list_channels(Client, #{}, #{}).

list_channels(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_channels(Client, QueryMap, HeadersMap, []).

list_channels(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channels"],
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

%% @doc Lists information about dataset contents that have been created.
list_dataset_contents(Client, DatasetName)
  when is_map(Client) ->
    list_dataset_contents(Client, DatasetName, #{}, #{}).

list_dataset_contents(Client, DatasetName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_dataset_contents(Client, DatasetName, QueryMap, HeadersMap, []).

list_dataset_contents(Client, DatasetName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/datasets/", aws_util:encode_uri(DatasetName), "/contents"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"scheduledBefore">>, maps:get(<<"scheduledBefore">>, QueryMap, undefined)},
        {<<"scheduledOnOrAfter">>, maps:get(<<"scheduledOnOrAfter">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about datasets.
list_datasets(Client)
  when is_map(Client) ->
    list_datasets(Client, #{}, #{}).

list_datasets(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_datasets(Client, QueryMap, HeadersMap, []).

list_datasets(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/datasets"],
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

%% @doc Retrieves a list of data stores.
list_datastores(Client)
  when is_map(Client) ->
    list_datastores(Client, #{}, #{}).

list_datastores(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_datastores(Client, QueryMap, HeadersMap, []).

list_datastores(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/datastores"],
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

%% @doc Retrieves a list of pipelines.
list_pipelines(Client)
  when is_map(Client) ->
    list_pipelines(Client, #{}, #{}).

list_pipelines(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_pipelines(Client, QueryMap, HeadersMap, []).

list_pipelines(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/pipelines"],
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

%% @doc Lists the tags (metadata) that you have assigned to the resource.
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

%% @doc Sets or updates the IoT Analytics logging options.
%%
%% If you update the value of any `loggingOptions' field, it takes up to one
%% minute for the change to take effect. Also, if you change the policy
%% attached to the role you specified in the `roleArn' field (for example, to
%% correct an invalid policy), it takes up to five minutes for that change to
%% take effect.
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

%% @doc Simulates the results of running a pipeline activity on a message
%% payload.
run_pipeline_activity(Client, Input) ->
    run_pipeline_activity(Client, Input, []).
run_pipeline_activity(Client, Input0, Options0) ->
    Method = post,
    Path = ["/pipelineactivities/run"],
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

%% @doc Retrieves a sample of messages from the specified channel ingested
%% during the specified timeframe.
%%
%% Up to 10 messages can be retrieved.
sample_channel_data(Client, ChannelName)
  when is_map(Client) ->
    sample_channel_data(Client, ChannelName, #{}, #{}).

sample_channel_data(Client, ChannelName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    sample_channel_data(Client, ChannelName, QueryMap, HeadersMap, []).

sample_channel_data(Client, ChannelName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channels/", aws_util:encode_uri(ChannelName), "/sample"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"endTime">>, maps:get(<<"endTime">>, QueryMap, undefined)},
        {<<"maxMessages">>, maps:get(<<"maxMessages">>, QueryMap, undefined)},
        {<<"startTime">>, maps:get(<<"startTime">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Starts the reprocessing of raw message data through the pipeline.
start_pipeline_reprocessing(Client, PipelineName, Input) ->
    start_pipeline_reprocessing(Client, PipelineName, Input, []).
start_pipeline_reprocessing(Client, PipelineName, Input0, Options0) ->
    Method = post,
    Path = ["/pipelines/", aws_util:encode_uri(PipelineName), "/reprocessing"],
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
    SuccessStatusCode = 204,
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
    SuccessStatusCode = 204,
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

%% @doc Used to update the settings of a channel.
update_channel(Client, ChannelName, Input) ->
    update_channel(Client, ChannelName, Input, []).
update_channel(Client, ChannelName, Input0, Options0) ->
    Method = put,
    Path = ["/channels/", aws_util:encode_uri(ChannelName), ""],
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

%% @doc Updates the settings of a dataset.
update_dataset(Client, DatasetName, Input) ->
    update_dataset(Client, DatasetName, Input, []).
update_dataset(Client, DatasetName, Input0, Options0) ->
    Method = put,
    Path = ["/datasets/", aws_util:encode_uri(DatasetName), ""],
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

%% @doc Used to update the settings of a data store.
update_datastore(Client, DatastoreName, Input) ->
    update_datastore(Client, DatastoreName, Input, []).
update_datastore(Client, DatastoreName, Input0, Options0) ->
    Method = put,
    Path = ["/datastores/", aws_util:encode_uri(DatastoreName), ""],
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

%% @doc Updates the settings of a pipeline.
%%
%% You must specify both a `channel' and a `datastore' activity and,
%% optionally, as many as 23 additional activities in the
%% `pipelineActivities' array.
update_pipeline(Client, PipelineName, Input) ->
    update_pipeline(Client, PipelineName, Input, []).
update_pipeline(Client, PipelineName, Input0, Options0) ->
    Method = put,
    Path = ["/pipelines/", aws_util:encode_uri(PipelineName), ""],
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
    Client1 = Client#{service => <<"iotanalytics">>},
    Host = build_host(<<"iotanalytics">>, Client1),
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
