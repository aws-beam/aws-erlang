%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc <b>Introduction</b>
%%
%% The Amazon Interactive Video Service (IVS) API is REST compatible, using a
%% standard HTTP API and an <a href="http://aws.amazon.com/sns">AWS SNS</a>
%% event stream for responses. JSON is used for both requests and responses,
%% including errors.
%%
%% The API is an AWS regional service, currently in these regions: us-west-2,
%% us-east-1, and eu-west-1.
%%
%% <i> <b>All API request parameters and URLs are case sensitive. </b> </i>
%%
%% For a summary of notable documentation changes in each release, see <a
%% href="https://docs.aws.amazon.com/ivs/latest/userguide/doc-history.html">
%% Document History</a>.
%%
%% <b>Service Endpoints</b>
%%
%% The following are the Amazon IVS service endpoints (all HTTPS):
%%
%% Region name: US West (Oregon)
%%
%% <ul> <li> Region: <code>us-west-2</code>
%%
%% </li> <li> Endpoint: <code>ivs.us-west-2.amazonaws.com</code>
%%
%% </li> </ul> Region name: US East (Virginia)
%%
%% <ul> <li> Region: <code>us-east-1</code>
%%
%% </li> <li> Endpoint: <code>ivs.us-east-1.amazonaws.com</code>
%%
%% </li> </ul> Region name: EU West (Dublin)
%%
%% <ul> <li> Region: <code>eu-west-1</code>
%%
%% </li> <li> Endpoint: <code>ivs.eu-west-1.amazonaws.com</code>
%%
%% </li> </ul> <b>Allowed Header Values</b>
%%
%% <ul> <li> <code> <b>Accept:</b> </code> application/json
%%
%% </li> <li> <code> <b>Accept-Encoding:</b> </code> gzip, deflate
%%
%% </li> <li> <code> <b>Content-Type:</b> </code>application/json
%%
%% </li> </ul> <b>Resources</b>
%%
%% The following resources contain information about your IVS live stream
%% (see <a
%% href="https://docs.aws.amazon.com/ivs/latest/userguide/GSIVS.html">
%% Getting Started with Amazon IVS</a>):
%%
%% <ul> <li> Channel — Stores configuration data related to your live stream.
%% You first create a channel and then use the channel’s stream key to start
%% your live stream. See the <a>Channel</a> endpoints for more information.
%%
%% </li> <li> Stream key — An identifier assigned by Amazon IVS when you
%% create a channel, which is then used to authorize streaming. See the
%% <a>StreamKey</a> endpoints for more information. <i> <b>Treat the stream
%% key like a secret, since it allows anyone to stream to the channel.</b>
%% </i>
%%
%% </li> </ul> <b>Tagging</b>
%%
%% A <i>tag</i> is a metadata label that you assign to an AWS resource. A tag
%% comprises a <i>key</i> and a <i>value</i>, both set by you. For example,
%% you might set a tag as <code>topic:nature</code> to label a particular
%% video category. See <a
%% href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging
%% AWS Resources</a> for more information, including restrictions that apply
%% to tags.
%%
%% Tags can help you identify and organize your AWS resources. For example,
%% you can use the same tag for different resources to indicate that they are
%% related. You can also use tags to manage access (see <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html">
%% Access Tags</a>).
%%
%% The Amazon IVS API has these tag-related endpoints: <a>TagResource</a>,
%% <a>UntagResource</a>, and <a>ListTagsForResource</a>. The following
%% resources support tagging: Channels and Stream Keys.
%%
%% <b>API Endpoints</b>
%%
%% <a>Channel</a>:
%%
%% <ul> <li> <a>CreateChannel</a> — Creates a new channel and an associated
%% stream key to start streaming.
%%
%% </li> <li> <a>GetChannel</a> — Gets the channel configuration for the
%% specified channel ARN (Amazon Resource Name).
%%
%% </li> <li> <a>BatchGetChannel</a> — Performs <a>GetChannel</a> on multiple
%% ARNs simultaneously.
%%
%% </li> <li> <a>ListChannels</a> — Gets summary information about all
%% channels in your account, in the AWS region where the API request is
%% processed. This list can be filtered to match a specified string.
%%
%% </li> <li> <a>UpdateChannel</a> — Updates a channel's configuration. This
%% does not affect an ongoing stream of this channel. You must stop and
%% restart the stream for the changes to take effect.
%%
%% </li> <li> <a>DeleteChannel</a> — Deletes the specified channel.
%%
%% </li> </ul> <a>StreamKey</a>:
%%
%% <ul> <li> <a>CreateStreamKey</a> — Creates a stream key, used to initiate
%% a stream, for the specified channel ARN.
%%
%% </li> <li> <a>GetStreamKey</a> — Gets stream key information for the
%% specified ARN.
%%
%% </li> <li> <a>BatchGetStreamKey</a> — Performs <a>GetStreamKey</a> on
%% multiple ARNs simultaneously.
%%
%% </li> <li> <a>ListStreamKeys</a> — Gets summary information about stream
%% keys for the specified channel.
%%
%% </li> <li> <a>DeleteStreamKey</a> — Deletes the stream key for the
%% specified ARN, so it can no longer be used to stream.
%%
%% </li> </ul> <a>Stream</a>:
%%
%% <ul> <li> <a>GetStream</a> — Gets information about the active (live)
%% stream on a specified channel.
%%
%% </li> <li> <a>ListStreams</a> — Gets summary information about live
%% streams in your account, in the AWS region where the API request is
%% processed.
%%
%% </li> <li> <a>StopStream</a> — Disconnects the incoming RTMPS stream for
%% the specified channel. Can be used in conjunction with
%% <a>DeleteStreamKey</a> to prevent further streaming to a channel.
%%
%% </li> <li> <a>PutMetadata</a> — Inserts metadata into an RTMPS stream for
%% the specified channel. A maximum of 5 requests per second per channel is
%% allowed, each with a maximum 1KB payload.
%%
%% </li> </ul> <a
%% href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html"> AWS
%% Tags</a>:
%%
%% <ul> <li> <a>TagResource</a> — Adds or updates tags for the AWS resource
%% with the specified ARN.
%%
%% </li> <li> <a>UntagResource</a> — Removes tags from the resource with the
%% specified ARN.
%%
%% </li> <li> <a>ListTagsForResource</a> — Gets information about AWS tags
%% for the specified ARN.
%%
%% </li> </ul>
-module(aws_ivs).

-export([batch_get_channel/2,
         batch_get_channel/3,
         batch_get_stream_key/2,
         batch_get_stream_key/3,
         create_channel/2,
         create_channel/3,
         create_stream_key/2,
         create_stream_key/3,
         delete_channel/2,
         delete_channel/3,
         delete_stream_key/2,
         delete_stream_key/3,
         get_channel/2,
         get_channel/3,
         get_stream/2,
         get_stream/3,
         get_stream_key/2,
         get_stream_key/3,
         list_channels/2,
         list_channels/3,
         list_stream_keys/2,
         list_stream_keys/3,
         list_streams/2,
         list_streams/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         put_metadata/2,
         put_metadata/3,
         stop_stream/2,
         stop_stream/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_channel/2,
         update_channel/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Performs <a>GetChannel</a> on multiple ARNs simultaneously.
batch_get_channel(Client, Input) ->
    batch_get_channel(Client, Input, []).
batch_get_channel(Client, Input0, Options) ->
    Method = post,
    Path = ["/BatchGetChannel"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Performs <a>GetStreamKey</a> on multiple ARNs simultaneously.
batch_get_stream_key(Client, Input) ->
    batch_get_stream_key(Client, Input, []).
batch_get_stream_key(Client, Input0, Options) ->
    Method = post,
    Path = ["/BatchGetStreamKey"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new channel and an associated stream key to start
%% streaming.
create_channel(Client, Input) ->
    create_channel(Client, Input, []).
create_channel(Client, Input0, Options) ->
    Method = post,
    Path = ["/CreateChannel"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a stream key, used to initiate a stream, for the specified
%% channel ARN.
%%
%% Note that <a>CreateChannel</a> creates a stream key. If you subsequently
%% use CreateStreamKey on the same channel, it will fail because a stream key
%% already exists and there is a limit of 1 stream key per channel. To reset
%% the stream key on a channel, use <a>DeleteStreamKey</a> and then
%% CreateStreamKey.
create_stream_key(Client, Input) ->
    create_stream_key(Client, Input, []).
create_stream_key(Client, Input0, Options) ->
    Method = post,
    Path = ["/CreateStreamKey"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified channel and its associated stream keys.
delete_channel(Client, Input) ->
    delete_channel(Client, Input, []).
delete_channel(Client, Input0, Options) ->
    Method = post,
    Path = ["/DeleteChannel"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the stream key for the specified ARN, so it can no longer be
%% used to stream.
delete_stream_key(Client, Input) ->
    delete_stream_key(Client, Input, []).
delete_stream_key(Client, Input0, Options) ->
    Method = post,
    Path = ["/DeleteStreamKey"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Gets the channel configuration for the specified channel ARN. See
%% also <a>BatchGetChannel</a>.
get_channel(Client, Input) ->
    get_channel(Client, Input, []).
get_channel(Client, Input0, Options) ->
    Method = post,
    Path = ["/GetChannel"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Gets information about the active (live) stream on a specified
%% channel.
get_stream(Client, Input) ->
    get_stream(Client, Input, []).
get_stream(Client, Input0, Options) ->
    Method = post,
    Path = ["/GetStream"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Gets stream-key information for a specified ARN.
get_stream_key(Client, Input) ->
    get_stream_key(Client, Input, []).
get_stream_key(Client, Input0, Options) ->
    Method = post,
    Path = ["/GetStreamKey"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Gets summary information about all channels in your account, in the
%% AWS region where the API request is processed. This list can be filtered
%% to match a specified string.
list_channels(Client, Input) ->
    list_channels(Client, Input, []).
list_channels(Client, Input0, Options) ->
    Method = post,
    Path = ["/ListChannels"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Gets summary information about stream keys for the specified channel.
list_stream_keys(Client, Input) ->
    list_stream_keys(Client, Input, []).
list_stream_keys(Client, Input0, Options) ->
    Method = post,
    Path = ["/ListStreamKeys"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Gets summary information about live streams in your account, in the
%% AWS region where the API request is processed.
list_streams(Client, Input) ->
    list_streams(Client, Input, []).
list_streams(Client, Input0, Options) ->
    Method = post,
    Path = ["/ListStreams"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Gets information about AWS tags for the specified ARN.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, []).
list_tags_for_resource(Client, ResourceArn, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/tags/", http_uri:encode(ResourceArn), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Inserts metadata into an RTMPS stream for the specified channel. A
%% maximum of 5 requests per second per channel is allowed, each with a
%% maximum 1KB payload.
put_metadata(Client, Input) ->
    put_metadata(Client, Input, []).
put_metadata(Client, Input0, Options) ->
    Method = post,
    Path = ["/PutMetadata"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Disconnects the incoming RTMPS stream for the specified channel. Can
%% be used in conjunction with <a>DeleteStreamKey</a> to prevent further
%% streaming to a channel.
%%
%% <note> Many streaming client-software libraries automatically reconnect a
%% dropped RTMPS session, so to stop the stream permanently, you may want to
%% first revoke the <code>streamKey</code> attached to the channel.
%%
%% </note>
stop_stream(Client, Input) ->
    stop_stream(Client, Input, []).
stop_stream(Client, Input0, Options) ->
    Method = post,
    Path = ["/StopStream"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Adds or updates tags for the AWS resource with the specified ARN.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options) ->
    Method = post,
    Path = ["/tags/", http_uri:encode(ResourceArn), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Removes tags from the resource with the specified ARN.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options) ->
    Method = delete,
    Path = ["/tags/", http_uri:encode(ResourceArn), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a channel's configuration. This does not affect an ongoing
%% stream of this channel. You must stop and restart the stream for the
%% changes to take effect.
update_channel(Client, Input) ->
    update_channel(Client, Input, []).
update_channel(Client, Input0, Options) ->
    Method = post,
    Path = ["/UpdateChannel"],
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
    Client1 = Client#{service => <<"ivs">>},
    Host = build_host(<<"ivs">>, Client1),
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
