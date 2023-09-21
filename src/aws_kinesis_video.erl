%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.


-module(aws_kinesis_video).

-export([create_signaling_channel/2,
         create_signaling_channel/3,
         create_stream/2,
         create_stream/3,
         delete_edge_configuration/2,
         delete_edge_configuration/3,
         delete_signaling_channel/2,
         delete_signaling_channel/3,
         delete_stream/2,
         delete_stream/3,
         describe_edge_configuration/2,
         describe_edge_configuration/3,
         describe_image_generation_configuration/2,
         describe_image_generation_configuration/3,
         describe_mapped_resource_configuration/2,
         describe_mapped_resource_configuration/3,
         describe_media_storage_configuration/2,
         describe_media_storage_configuration/3,
         describe_notification_configuration/2,
         describe_notification_configuration/3,
         describe_signaling_channel/2,
         describe_signaling_channel/3,
         describe_stream/2,
         describe_stream/3,
         get_data_endpoint/2,
         get_data_endpoint/3,
         get_signaling_channel_endpoint/2,
         get_signaling_channel_endpoint/3,
         list_edge_agent_configurations/2,
         list_edge_agent_configurations/3,
         list_signaling_channels/2,
         list_signaling_channels/3,
         list_streams/2,
         list_streams/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_tags_for_stream/2,
         list_tags_for_stream/3,
         start_edge_configuration_update/2,
         start_edge_configuration_update/3,
         tag_resource/2,
         tag_resource/3,
         tag_stream/2,
         tag_stream/3,
         untag_resource/2,
         untag_resource/3,
         untag_stream/2,
         untag_stream/3,
         update_data_retention/2,
         update_data_retention/3,
         update_image_generation_configuration/2,
         update_image_generation_configuration/3,
         update_media_storage_configuration/2,
         update_media_storage_configuration/3,
         update_notification_configuration/2,
         update_notification_configuration/3,
         update_signaling_channel/2,
         update_signaling_channel/3,
         update_stream/2,
         update_stream/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a signaling channel.
%%
%% `CreateSignalingChannel' is an asynchronous operation.
create_signaling_channel(Client, Input) ->
    create_signaling_channel(Client, Input, []).
create_signaling_channel(Client, Input0, Options0) ->
    Method = post,
    Path = ["/createSignalingChannel"],
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

%% @doc Creates a new Kinesis video stream.
%%
%% When you create a new stream, Kinesis Video Streams assigns it a version
%% number. When you change the stream's metadata, Kinesis Video Streams
%% updates the version.
%%
%% `CreateStream' is an asynchronous operation.
%%
%% For information about how the service works, see How it Works.
%%
%% You must have permissions for the `KinesisVideo:CreateStream' action.
create_stream(Client, Input) ->
    create_stream(Client, Input, []).
create_stream(Client, Input0, Options0) ->
    Method = post,
    Path = ["/createStream"],
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

%% @doc An asynchronous API that deletes a stream’s existing edge
%% configuration, as well as the corresponding media from the Edge Agent.
%%
%% When you invoke this API, the sync status is set to `DELETING'. A
%% deletion process starts, in which active edge jobs are stopped and all
%% media is deleted from the edge device. The time to delete varies,
%% depending on the total amount of stored media. If the deletion process
%% fails, the sync status changes to `DELETE_FAILED'. You will need to
%% re-try the deletion.
%%
%% When the deletion process has completed successfully, the edge
%% configuration is no longer accessible.
delete_edge_configuration(Client, Input) ->
    delete_edge_configuration(Client, Input, []).
delete_edge_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/deleteEdgeConfiguration"],
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

%% @doc Deletes a specified signaling channel.
%%
%% `DeleteSignalingChannel' is an asynchronous operation. If you
%% don't specify the channel's current version, the most recent
%% version is deleted.
delete_signaling_channel(Client, Input) ->
    delete_signaling_channel(Client, Input, []).
delete_signaling_channel(Client, Input0, Options0) ->
    Method = post,
    Path = ["/deleteSignalingChannel"],
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

%% @doc Deletes a Kinesis video stream and the data contained in the stream.
%%
%% This method marks the stream for deletion, and makes the data in the
%% stream inaccessible immediately.
%%
%% To ensure that you have the latest version of the stream before deleting
%% it, you can specify the stream version. Kinesis Video Streams assigns a
%% version to each stream. When you update a stream, Kinesis Video Streams
%% assigns a new version number. To get the latest stream version, use the
%% `DescribeStream' API.
%%
%% This operation requires permission for the `KinesisVideo:DeleteStream'
%% action.
delete_stream(Client, Input) ->
    delete_stream(Client, Input, []).
delete_stream(Client, Input0, Options0) ->
    Method = post,
    Path = ["/deleteStream"],
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

%% @doc Describes a stream’s edge configuration that was set using the
%% `StartEdgeConfigurationUpdate' API and the latest status of the edge
%% agent's recorder and uploader jobs.
%%
%% Use this API to get the status of the configuration to determine if the
%% configuration is in sync with the Edge Agent. Use this API to evaluate the
%% health of the Edge Agent.
describe_edge_configuration(Client, Input) ->
    describe_edge_configuration(Client, Input, []).
describe_edge_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describeEdgeConfiguration"],
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

%% @doc Gets the `ImageGenerationConfiguration' for a given Kinesis video
%% stream.
describe_image_generation_configuration(Client, Input) ->
    describe_image_generation_configuration(Client, Input, []).
describe_image_generation_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describeImageGenerationConfiguration"],
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

%% @doc Returns the most current information about the stream.
%%
%% The `streamName' or `streamARN' should be provided in the input.
describe_mapped_resource_configuration(Client, Input) ->
    describe_mapped_resource_configuration(Client, Input, []).
describe_mapped_resource_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describeMappedResourceConfiguration"],
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

%% @doc This API is related to WebRTC Ingestion and is only available in the
%% `us-west-2' region.
%%
%% Returns the most current information about the channel. Specify the
%% `ChannelName' or `ChannelARN' in the input.
describe_media_storage_configuration(Client, Input) ->
    describe_media_storage_configuration(Client, Input, []).
describe_media_storage_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describeMediaStorageConfiguration"],
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

%% @doc Gets the `NotificationConfiguration' for a given Kinesis video
%% stream.
describe_notification_configuration(Client, Input) ->
    describe_notification_configuration(Client, Input, []).
describe_notification_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describeNotificationConfiguration"],
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

%% @doc Returns the most current information about the signaling channel.
%%
%% You must specify either the name or the Amazon Resource Name (ARN) of the
%% channel that you want to describe.
describe_signaling_channel(Client, Input) ->
    describe_signaling_channel(Client, Input, []).
describe_signaling_channel(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describeSignalingChannel"],
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

%% @doc Returns the most current information about the specified stream.
%%
%% You must specify either the `StreamName' or the `StreamARN'.
describe_stream(Client, Input) ->
    describe_stream(Client, Input, []).
describe_stream(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describeStream"],
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

%% @doc Gets an endpoint for a specified stream for either reading or
%% writing.
%%
%% Use this endpoint in your application to read from the specified stream
%% (using the `GetMedia' or `GetMediaForFragmentList' operations) or
%% write to it (using the `PutMedia' operation).
%%
%% The returned endpoint does not have the API name appended. The client
%% needs to add the API name to the returned endpoint.
%%
%% In the request, specify the stream either by `StreamName' or
%% `StreamARN'.
get_data_endpoint(Client, Input) ->
    get_data_endpoint(Client, Input, []).
get_data_endpoint(Client, Input0, Options0) ->
    Method = post,
    Path = ["/getDataEndpoint"],
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

%% @doc Provides an endpoint for the specified signaling channel to send and
%% receive messages.
%%
%% This API uses the `SingleMasterChannelEndpointConfiguration' input
%% parameter, which consists of the `Protocols' and `Role'
%% properties.
%%
%% `Protocols' is used to determine the communication mechanism. For
%% example, if you specify `WSS' as the protocol, this API produces a
%% secure websocket endpoint. If you specify `HTTPS' as the protocol,
%% this API generates an HTTPS endpoint.
%%
%% `Role' determines the messaging permissions. A `MASTER' role
%% results in this API generating an endpoint that a client can use to
%% communicate with any of the viewers on the channel. A `VIEWER' role
%% results in this API generating an endpoint that a client can use to
%% communicate only with a `MASTER'.
get_signaling_channel_endpoint(Client, Input) ->
    get_signaling_channel_endpoint(Client, Input, []).
get_signaling_channel_endpoint(Client, Input0, Options0) ->
    Method = post,
    Path = ["/getSignalingChannelEndpoint"],
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

%% @doc Returns an array of edge configurations associated with the specified
%% Edge Agent.
%%
%% In the request, you must specify the Edge Agent `HubDeviceArn'.
list_edge_agent_configurations(Client, Input) ->
    list_edge_agent_configurations(Client, Input, []).
list_edge_agent_configurations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listEdgeAgentConfigurations"],
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

%% @doc Returns an array of `ChannelInfo' objects.
%%
%% Each object describes a signaling channel. To retrieve only those channels
%% that satisfy a specific condition, you can specify a
%% `ChannelNameCondition'.
list_signaling_channels(Client, Input) ->
    list_signaling_channels(Client, Input, []).
list_signaling_channels(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listSignalingChannels"],
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

%% @doc Returns an array of `StreamInfo' objects.
%%
%% Each object describes a stream. To retrieve only streams that satisfy a
%% specific condition, you can specify a `StreamNameCondition'.
list_streams(Client, Input) ->
    list_streams(Client, Input, []).
list_streams(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listStreams"],
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

%% @doc Returns a list of tags associated with the specified signaling
%% channel.
list_tags_for_resource(Client, Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListTagsForResource"],
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

%% @doc Returns a list of tags associated with the specified stream.
%%
%% In the request, you must specify either the `StreamName' or the
%% `StreamARN'.
list_tags_for_stream(Client, Input) ->
    list_tags_for_stream(Client, Input, []).
list_tags_for_stream(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listTagsForStream"],
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

%% @doc An asynchronous API that updates a stream’s existing edge
%% configuration.
%%
%% The Kinesis Video Stream will sync the stream’s edge configuration with
%% the Edge Agent IoT Greengrass component that runs on an IoT Hub Device,
%% setup at your premise. The time to sync can vary and depends on the
%% connectivity of the Hub Device. The `SyncStatus' will be updated as
%% the edge configuration is acknowledged, and synced with the Edge Agent.
%%
%% If this API is invoked for the first time, a new edge configuration will
%% be created for the stream, and the sync status will be set to
%% `SYNCING'. You will have to wait for the sync status to reach a
%% terminal state such as: `IN_SYNC', or `SYNC_FAILED', before using
%% this API again. If you invoke this API during the syncing process, a
%% `ResourceInUseException' will be thrown. The connectivity of the
%% stream’s edge configuration and the Edge Agent will be retried for 15
%% minutes. After 15 minutes, the status will transition into the
%% `SYNC_FAILED' state.
%%
%% To move an edge configuration from one device to another, use
%% `DeleteEdgeConfiguration' to delete the current edge configuration.
%% You can then invoke StartEdgeConfigurationUpdate with an updated Hub
%% Device ARN.
start_edge_configuration_update(Client, Input) ->
    start_edge_configuration_update(Client, Input, []).
start_edge_configuration_update(Client, Input0, Options0) ->
    Method = post,
    Path = ["/startEdgeConfigurationUpdate"],
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

%% @doc Adds one or more tags to a signaling channel.
%%
%% A tag is a key-value pair (the value is optional) that you can define and
%% assign to Amazon Web Services resources. If you specify a tag that already
%% exists, the tag value is replaced with the value that you specify in the
%% request. For more information, see Using Cost Allocation Tags in the
%% Billing and Cost Management and Cost Management User Guide.
tag_resource(Client, Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/TagResource"],
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

%% @doc Adds one or more tags to a stream.
%%
%% A tag is a key-value pair (the value is optional) that you can define and
%% assign to Amazon Web Services resources. If you specify a tag that already
%% exists, the tag value is replaced with the value that you specify in the
%% request. For more information, see Using Cost Allocation Tags in the
%% Billing and Cost Management and Cost Management User Guide.
%%
%% You must provide either the `StreamName' or the `StreamARN'.
%%
%% This operation requires permission for the `KinesisVideo:TagStream'
%% action.
%%
%% A Kinesis video stream can support up to 50 tags.
tag_stream(Client, Input) ->
    tag_stream(Client, Input, []).
tag_stream(Client, Input0, Options0) ->
    Method = post,
    Path = ["/tagStream"],
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

%% @doc Removes one or more tags from a signaling channel.
%%
%% In the request, specify only a tag key or keys; don't specify the
%% value. If you specify a tag key that does not exist, it's ignored.
untag_resource(Client, Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UntagResource"],
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

%% @doc Removes one or more tags from a stream.
%%
%% In the request, specify only a tag key or keys; don't specify the
%% value. If you specify a tag key that does not exist, it's ignored.
%%
%% In the request, you must provide the `StreamName' or `StreamARN'.
untag_stream(Client, Input) ->
    untag_stream(Client, Input, []).
untag_stream(Client, Input0, Options0) ->
    Method = post,
    Path = ["/untagStream"],
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

%% @doc Increases or decreases the stream's data retention period by the
%% value that you specify.
%%
%% To indicate whether you want to increase or decrease the data retention
%% period, specify the `Operation' parameter in the request body. In the
%% request, you must specify either the `StreamName' or the
%% `StreamARN'.
%%
%% The retention period that you specify replaces the current value.
%%
%% This operation requires permission for the
%% `KinesisVideo:UpdateDataRetention' action.
%%
%% Changing the data retention period affects the data in the stream as
%% follows:
%%
%% <ul> <li> If the data retention period is increased, existing data is
%% retained for the new retention period. For example, if the data retention
%% period is increased from one hour to seven hours, all existing data is
%% retained for seven hours.
%%
%% </li> <li> If the data retention period is decreased, existing data is
%% retained for the new retention period. For example, if the data retention
%% period is decreased from seven hours to one hour, all existing data is
%% retained for one hour, and any data older than one hour is deleted
%% immediately.
%%
%% </li> </ul>
update_data_retention(Client, Input) ->
    update_data_retention(Client, Input, []).
update_data_retention(Client, Input0, Options0) ->
    Method = post,
    Path = ["/updateDataRetention"],
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

%% @doc Updates the `StreamInfo' and `ImageProcessingConfiguration'
%% fields.
update_image_generation_configuration(Client, Input) ->
    update_image_generation_configuration(Client, Input, []).
update_image_generation_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/updateImageGenerationConfiguration"],
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

%% @doc This API is related to WebRTC Ingestion and is only available in the
%% `us-west-2' region.
%%
%% Associates a `SignalingChannel' to a stream to store the media. There
%% are two signaling modes that can specified :
%%
%% <ul> <li> If the `StorageStatus' is disabled, no data will be stored,
%% and the `StreamARN' parameter will not be needed.
%%
%% </li> <li> If the `StorageStatus' is enabled, the data will be stored
%% in the `StreamARN' provided.
%%
%% </li> </ul> If `StorageStatus' is enabled, direct peer-to-peer
%% (master-viewer) connections no longer occur. Peers connect directly to the
%% storage session. You must call the `JoinStorageSession' API to trigger
%% an SDP offer send and establish a connection between a peer and the
%% storage session.
update_media_storage_configuration(Client, Input) ->
    update_media_storage_configuration(Client, Input, []).
update_media_storage_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/updateMediaStorageConfiguration"],
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

%% @doc Updates the notification information for a stream.
update_notification_configuration(Client, Input) ->
    update_notification_configuration(Client, Input, []).
update_notification_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/updateNotificationConfiguration"],
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

%% @doc Updates the existing signaling channel.
%%
%% This is an asynchronous operation and takes time to complete.
%%
%% If the `MessageTtlSeconds' value is updated (either increased or
%% reduced), it only applies to new messages sent via this channel after
%% it's been updated. Existing messages are still expired as per the
%% previous `MessageTtlSeconds' value.
update_signaling_channel(Client, Input) ->
    update_signaling_channel(Client, Input, []).
update_signaling_channel(Client, Input0, Options0) ->
    Method = post,
    Path = ["/updateSignalingChannel"],
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

%% @doc Updates stream metadata, such as the device name and media type.
%%
%% You must provide the stream name or the Amazon Resource Name (ARN) of the
%% stream.
%%
%% To make sure that you have the latest version of the stream before
%% updating it, you can specify the stream version. Kinesis Video Streams
%% assigns a version to each stream. When you update a stream, Kinesis Video
%% Streams assigns a new version number. To get the latest stream version,
%% use the `DescribeStream' API.
%%
%% `UpdateStream' is an asynchronous operation, and takes time to
%% complete.
update_stream(Client, Input) ->
    update_stream(Client, Input, []).
update_stream(Client, Input0, Options0) ->
    Method = post,
    Path = ["/updateStream"],
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
    Client1 = Client#{service => <<"kinesisvideo">>},
    Host = build_host(<<"kinesisvideo">>, Client1),
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
