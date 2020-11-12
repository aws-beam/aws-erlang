%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS IoT Analytics allows you to collect large amounts of device data,
%% process messages, and store them.
%%
%% You can then query the data and run sophisticated analytics on it. AWS IoT
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
%% AWS IoT Analytics automates the steps required to analyze data from IoT
%% devices. AWS IoT Analytics filters, transforms, and enriches IoT data
%% before storing it in a time-series data store for analysis. You can set up
%% the service to collect only the data you need from your devices, apply
%% mathematical transforms to process the data, and enrich the data with
%% device-specific metadata such as device type and location before storing
%% it. Then, you can analyze your data by running queries using the built-in
%% SQL query engine, or perform more complex analytics and machine learning
%% inference. AWS IoT Analytics includes pre-built models for common IoT use
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
         describe_channel/3,
         describe_channel/4,
         describe_dataset/2,
         describe_dataset/3,
         describe_datastore/3,
         describe_datastore/4,
         describe_logging_options/1,
         describe_logging_options/2,
         describe_pipeline/2,
         describe_pipeline/3,
         get_dataset_content/3,
         get_dataset_content/4,
         list_channels/3,
         list_channels/4,
         list_dataset_contents/6,
         list_dataset_contents/7,
         list_datasets/3,
         list_datasets/4,
         list_datastores/3,
         list_datastores/4,
         list_pipelines/3,
         list_pipelines/4,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         put_logging_options/2,
         put_logging_options/3,
         run_pipeline_activity/2,
         run_pipeline_activity/3,
         sample_channel_data/5,
         sample_channel_data/6,
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
batch_put_message(Client, Input0, Options) ->
    Method = post,
    Path = ["/messages/batch"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Cancels the reprocessing of data through the pipeline.
cancel_pipeline_reprocessing(Client, PipelineName, ReprocessingId, Input) ->
    cancel_pipeline_reprocessing(Client, PipelineName, ReprocessingId, Input, []).
cancel_pipeline_reprocessing(Client, PipelineName, ReprocessingId, Input0, Options) ->
    Method = delete,
    Path = ["/pipelines/", http_uri:encode(PipelineName), "/reprocessing/", http_uri:encode(ReprocessingId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a channel.
%%
%% A channel collects data from an MQTT topic and archives the raw,
%% unprocessed messages before publishing the data to a pipeline.
create_channel(Client, Input) ->
    create_channel(Client, Input, []).
create_channel(Client, Input0, Options) ->
    Method = post,
    Path = ["/channels"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a dataset.
%%
%% A dataset stores data retrieved from a data store by applying a
%% `queryAction` (a SQL query) or a `containerAction` (executing a
%% containerized application). This operation creates the skeleton of a
%% dataset. The dataset can be populated manually by calling
%% `CreateDatasetContent` or automatically according to a trigger you
%% specify.
create_dataset(Client, Input) ->
    create_dataset(Client, Input, []).
create_dataset(Client, Input0, Options) ->
    Method = post,
    Path = ["/datasets"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates the content of a data set by applying a `queryAction` (a SQL
%% query) or a `containerAction` (executing a containerized application).
create_dataset_content(Client, DatasetName, Input) ->
    create_dataset_content(Client, DatasetName, Input, []).
create_dataset_content(Client, DatasetName, Input0, Options) ->
    Method = post,
    Path = ["/datasets/", http_uri:encode(DatasetName), "/content"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a data store, which is a repository for messages.
create_datastore(Client, Input) ->
    create_datastore(Client, Input, []).
create_datastore(Client, Input0, Options) ->
    Method = post,
    Path = ["/datastores"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a pipeline.
%%
%% A pipeline consumes messages from a channel and allows you to process the
%% messages before storing them in a data store. You must specify both a
%% `channel` and a `datastore` activity and, optionally, as many as 23
%% additional activities in the `pipelineActivities` array.
create_pipeline(Client, Input) ->
    create_pipeline(Client, Input, []).
create_pipeline(Client, Input0, Options) ->
    Method = post,
    Path = ["/pipelines"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified channel.
delete_channel(Client, ChannelName, Input) ->
    delete_channel(Client, ChannelName, Input, []).
delete_channel(Client, ChannelName, Input0, Options) ->
    Method = delete,
    Path = ["/channels/", http_uri:encode(ChannelName), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified dataset.
%%
%% You do not have to delete the content of the dataset before you perform
%% this operation.
delete_dataset(Client, DatasetName, Input) ->
    delete_dataset(Client, DatasetName, Input, []).
delete_dataset(Client, DatasetName, Input0, Options) ->
    Method = delete,
    Path = ["/datasets/", http_uri:encode(DatasetName), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the content of the specified dataset.
delete_dataset_content(Client, DatasetName, Input) ->
    delete_dataset_content(Client, DatasetName, Input, []).
delete_dataset_content(Client, DatasetName, Input0, Options) ->
    Method = delete,
    Path = ["/datasets/", http_uri:encode(DatasetName), "/content"],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"versionId">>, <<"versionId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified data store.
delete_datastore(Client, DatastoreName, Input) ->
    delete_datastore(Client, DatastoreName, Input, []).
delete_datastore(Client, DatastoreName, Input0, Options) ->
    Method = delete,
    Path = ["/datastores/", http_uri:encode(DatastoreName), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified pipeline.
delete_pipeline(Client, PipelineName, Input) ->
    delete_pipeline(Client, PipelineName, Input, []).
delete_pipeline(Client, PipelineName, Input0, Options) ->
    Method = delete,
    Path = ["/pipelines/", http_uri:encode(PipelineName), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves information about a channel.
describe_channel(Client, ChannelName, IncludeStatistics)
  when is_map(Client) ->
    describe_channel(Client, ChannelName, IncludeStatistics, []).
describe_channel(Client, ChannelName, IncludeStatistics, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/channels/", http_uri:encode(ChannelName), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"includeStatistics">>, IncludeStatistics}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a dataset.
describe_dataset(Client, DatasetName)
  when is_map(Client) ->
    describe_dataset(Client, DatasetName, []).
describe_dataset(Client, DatasetName, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/datasets/", http_uri:encode(DatasetName), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a data store.
describe_datastore(Client, DatastoreName, IncludeStatistics)
  when is_map(Client) ->
    describe_datastore(Client, DatastoreName, IncludeStatistics, []).
describe_datastore(Client, DatastoreName, IncludeStatistics, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/datastores/", http_uri:encode(DatastoreName), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"includeStatistics">>, IncludeStatistics}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the current settings of the AWS IoT Analytics logging
%% options.
describe_logging_options(Client)
  when is_map(Client) ->
    describe_logging_options(Client, []).
describe_logging_options(Client, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/logging"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a pipeline.
describe_pipeline(Client, PipelineName)
  when is_map(Client) ->
    describe_pipeline(Client, PipelineName, []).
describe_pipeline(Client, PipelineName, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/pipelines/", http_uri:encode(PipelineName), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the contents of a data set as presigned URIs.
get_dataset_content(Client, DatasetName, VersionId)
  when is_map(Client) ->
    get_dataset_content(Client, DatasetName, VersionId, []).
get_dataset_content(Client, DatasetName, VersionId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/datasets/", http_uri:encode(DatasetName), "/content"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"versionId">>, VersionId}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of channels.
list_channels(Client, MaxResults, NextToken)
  when is_map(Client) ->
    list_channels(Client, MaxResults, NextToken, []).
list_channels(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/channels"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists information about data set contents that have been created.
list_dataset_contents(Client, DatasetName, MaxResults, NextToken, ScheduledBefore, ScheduledOnOrAfter)
  when is_map(Client) ->
    list_dataset_contents(Client, DatasetName, MaxResults, NextToken, ScheduledBefore, ScheduledOnOrAfter, []).
list_dataset_contents(Client, DatasetName, MaxResults, NextToken, ScheduledBefore, ScheduledOnOrAfter, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/datasets/", http_uri:encode(DatasetName), "/contents"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken},
        {<<"scheduledBefore">>, ScheduledBefore},
        {<<"scheduledOnOrAfter">>, ScheduledOnOrAfter}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about data sets.
list_datasets(Client, MaxResults, NextToken)
  when is_map(Client) ->
    list_datasets(Client, MaxResults, NextToken, []).
list_datasets(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/datasets"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of data stores.
list_datastores(Client, MaxResults, NextToken)
  when is_map(Client) ->
    list_datastores(Client, MaxResults, NextToken, []).
list_datastores(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/datastores"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of pipelines.
list_pipelines(Client, MaxResults, NextToken)
  when is_map(Client) ->
    list_pipelines(Client, MaxResults, NextToken, []).
list_pipelines(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/pipelines"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the tags (metadata) that you have assigned to the resource.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, []).
list_tags_for_resource(Client, ResourceArn, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/tags"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"resourceArn">>, ResourceArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Sets or updates the AWS IoT Analytics logging options.
%%
%% If you update the value of any `loggingOptions` field, it takes up to one
%% minute for the change to take effect. Also, if you change the policy
%% attached to the role you specified in the `roleArn` field (for example, to
%% correct an invalid policy), it takes up to five minutes for that change to
%% take effect.
put_logging_options(Client, Input) ->
    put_logging_options(Client, Input, []).
put_logging_options(Client, Input0, Options) ->
    Method = put,
    Path = ["/logging"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Simulates the results of running a pipeline activity on a message
%% payload.
run_pipeline_activity(Client, Input) ->
    run_pipeline_activity(Client, Input, []).
run_pipeline_activity(Client, Input0, Options) ->
    Method = post,
    Path = ["/pipelineactivities/run"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves a sample of messages from the specified channel ingested
%% during the specified timeframe.
%%
%% Up to 10 messages can be retrieved.
sample_channel_data(Client, ChannelName, EndTime, MaxMessages, StartTime)
  when is_map(Client) ->
    sample_channel_data(Client, ChannelName, EndTime, MaxMessages, StartTime, []).
sample_channel_data(Client, ChannelName, EndTime, MaxMessages, StartTime, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/channels/", http_uri:encode(ChannelName), "/sample"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"endTime">>, EndTime},
        {<<"maxMessages">>, MaxMessages},
        {<<"startTime">>, StartTime}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Starts the reprocessing of raw message data through the pipeline.
start_pipeline_reprocessing(Client, PipelineName, Input) ->
    start_pipeline_reprocessing(Client, PipelineName, Input, []).
start_pipeline_reprocessing(Client, PipelineName, Input0, Options) ->
    Method = post,
    Path = ["/pipelines/", http_uri:encode(PipelineName), "/reprocessing"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Adds to or modifies the tags of the given resource.
%%
%% Tags are metadata that can be used to manage a resource.
tag_resource(Client, Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input0, Options) ->
    Method = post,
    Path = ["/tags"],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"resourceArn">>, <<"resourceArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Removes the given tags (metadata) from the resource.
untag_resource(Client, Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input0, Options) ->
    Method = delete,
    Path = ["/tags"],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"resourceArn">>, <<"resourceArn">>},
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the settings of a channel.
update_channel(Client, ChannelName, Input) ->
    update_channel(Client, ChannelName, Input, []).
update_channel(Client, ChannelName, Input0, Options) ->
    Method = put,
    Path = ["/channels/", http_uri:encode(ChannelName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the settings of a data set.
update_dataset(Client, DatasetName, Input) ->
    update_dataset(Client, DatasetName, Input, []).
update_dataset(Client, DatasetName, Input0, Options) ->
    Method = put,
    Path = ["/datasets/", http_uri:encode(DatasetName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the settings of a data store.
update_datastore(Client, DatastoreName, Input) ->
    update_datastore(Client, DatastoreName, Input, []).
update_datastore(Client, DatastoreName, Input0, Options) ->
    Method = put,
    Path = ["/datastores/", http_uri:encode(DatastoreName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the settings of a pipeline.
%%
%% You must specify both a `channel` and a `datastore` activity and,
%% optionally, as many as 23 additional activities in the
%% `pipelineActivities` array.
update_pipeline(Client, PipelineName, Input) ->
    update_pipeline(Client, PipelineName, Input, []).
update_pipeline(Client, PipelineName, Input0, Options) ->
    Method = put,
    Path = ["/pipelines/", http_uri:encode(PipelineName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

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
    Client1 = Client#{service => <<"iotanalytics">>},
    Host = build_host(<<"iotanalytics">>, Client1),
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
