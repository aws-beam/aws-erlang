%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.


-module(aws_kinesis_video).

-export([create_signaling_channel/2,
         create_signaling_channel/3,
         create_stream/2,
         create_stream/3,
         delete_signaling_channel/2,
         delete_signaling_channel/3,
         delete_stream/2,
         delete_stream/3,
         describe_signaling_channel/2,
         describe_signaling_channel/3,
         describe_stream/2,
         describe_stream/3,
         get_data_endpoint/2,
         get_data_endpoint/3,
         get_signaling_channel_endpoint/2,
         get_signaling_channel_endpoint/3,
         list_signaling_channels/2,
         list_signaling_channels/3,
         list_streams/2,
         list_streams/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_tags_for_stream/2,
         list_tags_for_stream/3,
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
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

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
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a specified signaling channel.
%%
%% `DeleteSignalingChannel' is an asynchronous operation. If you don't
%% specify the channel's current version, the most recent version is deleted.
delete_signaling_channel(Client, Input) ->
    delete_signaling_channel(Client, Input, []).
delete_signaling_channel(Client, Input0, Options0) ->
    Method = post,
    Path = ["/deleteSignalingChannel"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

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
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

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
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

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
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Gets an endpoint for a specified stream for either reading or
%% writing.
%%
%% Use this endpoint in your application to read from the specified stream
%% (using the `GetMedia' or `GetMediaForFragmentList' operations) or write to
%% it (using the `PutMedia' operation).
%%
%% The returned endpoint does not have the API name appended. The client
%% needs to add the API name to the returned endpoint.
%%
%% In the request, specify the stream either by `StreamName' or `StreamARN'.
get_data_endpoint(Client, Input) ->
    get_data_endpoint(Client, Input, []).
get_data_endpoint(Client, Input0, Options0) ->
    Method = post,
    Path = ["/getDataEndpoint"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Provides an endpoint for the specified signaling channel to send and
%% receive messages.
%%
%% This API uses the `SingleMasterChannelEndpointConfiguration' input
%% parameter, which consists of the `Protocols' and `Role' properties.
%%
%% `Protocols' is used to determine the communication mechanism. For example,
%% if you specify `WSS' as the protocol, this API produces a secure websocket
%% endpoint. If you specify `HTTPS' as the protocol, this API generates an
%% HTTPS endpoint.
%%
%% `Role' determines the messaging permissions. A `MASTER' role results in
%% this API generating an endpoint that a client can use to communicate with
%% any of the viewers on the channel. A `VIEWER' role results in this API
%% generating an endpoint that a client can use to communicate only with a
%% `MASTER'.
get_signaling_channel_endpoint(Client, Input) ->
    get_signaling_channel_endpoint(Client, Input, []).
get_signaling_channel_endpoint(Client, Input0, Options0) ->
    Method = post,
    Path = ["/getSignalingChannelEndpoint"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

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
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

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
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Returns a list of tags associated with the specified signaling
%% channel.
list_tags_for_resource(Client, Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListTagsForResource"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

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
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Adds one or more tags to a signaling channel.
%%
%% A tag is a key-value pair (the value is optional) that you can define and
%% assign to AWS resources. If you specify a tag that already exists, the tag
%% value is replaced with the value that you specify in the request. For more
%% information, see Using Cost Allocation Tags in the AWS Billing and Cost
%% Management User Guide.
tag_resource(Client, Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/TagResource"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Adds one or more tags to a stream.
%%
%% A tag is a key-value pair (the value is optional) that you can define and
%% assign to AWS resources. If you specify a tag that already exists, the tag
%% value is replaced with the value that you specify in the request. For more
%% information, see Using Cost Allocation Tags in the AWS Billing and Cost
%% Management User Guide.
%%
%% You must provide either the `StreamName' or the `StreamARN'.
%%
%% This operation requires permission for the `KinesisVideo:TagStream'
%% action.
%%
%% Kinesis video streams support up to 50 tags.
tag_stream(Client, Input) ->
    tag_stream(Client, Input, []).
tag_stream(Client, Input0, Options0) ->
    Method = post,
    Path = ["/tagStream"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Removes one or more tags from a signaling channel.
%%
%% In the request, specify only a tag key or keys; don't specify the value.
%% If you specify a tag key that does not exist, it's ignored.
untag_resource(Client, Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UntagResource"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Removes one or more tags from a stream.
%%
%% In the request, specify only a tag key or keys; don't specify the value.
%% If you specify a tag key that does not exist, it's ignored.
%%
%% In the request, you must provide the `StreamName' or `StreamARN'.
untag_stream(Client, Input) ->
    untag_stream(Client, Input, []).
untag_stream(Client, Input0, Options0) ->
    Method = post,
    Path = ["/untagStream"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Increases or decreases the stream's data retention period by the
%% value that you specify.
%%
%% To indicate whether you want to increase or decrease the data retention
%% period, specify the `Operation' parameter in the request body. In the
%% request, you must specify either the `StreamName' or the `StreamARN'.
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
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the existing signaling channel.
%%
%% This is an asynchronous operation and takes time to complete.
%%
%% If the `MessageTtlSeconds' value is updated (either increased or reduced),
%% it only applies to new messages sent via this channel after it's been
%% updated. Existing messages are still expired as per the previous
%% `MessageTtlSeconds' value.
update_signaling_channel(Client, Input) ->
    update_signaling_channel(Client, Input, []).
update_signaling_channel(Client, Input0, Options0) ->
    Method = post,
    Path = ["/updateSignalingChannel"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

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
%% `UpdateStream' is an asynchronous operation, and takes time to complete.
update_stream(Client, Input) ->
    update_stream(Client, Input, []).
update_stream(Client, Input0, Options0) ->
    Method = post,
    Path = ["/updateStream"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
    Client1 = Client#{service => <<"kinesisvideo">>},
    Host = build_host(<<"kinesisvideo">>, Client1),
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

handle_response({ok, StatusCode, ResponseHeaders, Client}, SuccessStatusCode, DecodeBody)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
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
