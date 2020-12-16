%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Introduction
%%
%% The Amazon Interactive Video Service (IVS) API is REST compatible, using a
%% standard HTTP API and an AWS SNS event stream for responses.
%%
%% JSON is used for both requests and responses, including errors.
%%
%% The API is an AWS regional service, currently in these regions: us-west-2,
%% us-east-1, and eu-west-1.
%%
%% All API request parameters and URLs are case sensitive.
%%
%% For a summary of notable documentation changes in each release, see
%% Document History.
%%
%% Service Endpoints
%%
%% The following are the Amazon IVS service endpoints (all HTTPS):
%%
%% Region name: US West (Oregon)
%%
%% <ul> <li> Region: `us-west-2'
%%
%% </li> <li> Endpoint: `ivs.us-west-2.amazonaws.com'
%%
%% </li> </ul> Region name: US East (Virginia)
%%
%% <ul> <li> Region: `us-east-1'
%%
%% </li> <li> Endpoint: `ivs.us-east-1.amazonaws.com'
%%
%% </li> </ul> Region name: EU West (Dublin)
%%
%% <ul> <li> Region: `eu-west-1'
%%
%% </li> <li> Endpoint: `ivs.eu-west-1.amazonaws.com'
%%
%% </li> </ul> Allowed Header Values
%%
%% <ul> <li> ` Accept: ' application/json
%%
%% </li> <li> ` Accept-Encoding: ' gzip, deflate
%%
%% </li> <li> ` Content-Type: 'application/json
%%
%% </li> </ul> Resources
%%
%% The following resources contain information about your IVS live stream
%% (see Getting Started with Amazon IVS):
%%
%% <ul> <li> Channel — Stores configuration data related to your live stream.
%% You first create a channel and then use the channel’s stream key to start
%% your live stream. See the Channel endpoints for more information.
%%
%% </li> <li> Stream key — An identifier assigned by Amazon IVS when you
%% create a channel, which is then used to authorize streaming. See the
%% StreamKey endpoints for more information. Treat the stream key like a
%% secret, since it allows anyone to stream to the channel.
%%
%% </li> <li> Playback key pair — Video playback may be restricted using
%% playback-authorization tokens, which use public-key encryption. A playback
%% key pair is the public-private pair of keys used to sign and validate the
%% playback-authorization token. See the PlaybackKeyPair endpoints for more
%% information.
%%
%% </li> </ul> Tagging
%%
%% A tag is a metadata label that you assign to an AWS resource. A tag
%% comprises a key and a value, both set by you. For example, you might set a
%% tag as `topic:nature' to label a particular video category. See Tagging
%% AWS Resources for more information, including restrictions that apply to
%% tags.
%%
%% Tags can help you identify and organize your AWS resources. For example,
%% you can use the same tag for different resources to indicate that they are
%% related. You can also use tags to manage access (see Access Tags).
%%
%% The Amazon IVS API has these tag-related endpoints: `TagResource',
%% `UntagResource', and `ListTagsForResource'. The following resources
%% support tagging: Channels, Stream Keys, and Playback Key Pairs.
%%
%% Channel Endpoints
%%
%% <ul> <li> `CreateChannel' — Creates a new channel and an associated stream
%% key to start streaming.
%%
%% </li> <li> `GetChannel' — Gets the channel configuration for the specified
%% channel ARN (Amazon Resource Name).
%%
%% </li> <li> `BatchGetChannel' — Performs `GetChannel' on multiple ARNs
%% simultaneously.
%%
%% </li> <li> `ListChannels' — Gets summary information about all channels in
%% your account, in the AWS region where the API request is processed. This
%% list can be filtered to match a specified string.
%%
%% </li> <li> `UpdateChannel' — Updates a channel's configuration. This does
%% not affect an ongoing stream of this channel. You must stop and restart
%% the stream for the changes to take effect.
%%
%% </li> <li> `DeleteChannel' — Deletes the specified channel.
%%
%% </li> </ul> StreamKey Endpoints
%%
%% <ul> <li> `CreateStreamKey' — Creates a stream key, used to initiate a
%% stream, for the specified channel ARN.
%%
%% </li> <li> `GetStreamKey' — Gets stream key information for the specified
%% ARN.
%%
%% </li> <li> `BatchGetStreamKey' — Performs `GetStreamKey' on multiple ARNs
%% simultaneously.
%%
%% </li> <li> `ListStreamKeys' — Gets summary information about stream keys
%% for the specified channel.
%%
%% </li> <li> `DeleteStreamKey' — Deletes the stream key for the specified
%% ARN, so it can no longer be used to stream.
%%
%% </li> </ul> Stream Endpoints
%%
%% <ul> <li> `GetStream' — Gets information about the active (live) stream on
%% a specified channel.
%%
%% </li> <li> `ListStreams' — Gets summary information about live streams in
%% your account, in the AWS region where the API request is processed.
%%
%% </li> <li> `StopStream' — Disconnects the incoming RTMPS stream for the
%% specified channel. Can be used in conjunction with `DeleteStreamKey' to
%% prevent further streaming to a channel.
%%
%% </li> <li> `PutMetadata' — Inserts metadata into an RTMPS stream for the
%% specified channel. A maximum of 5 requests per second per channel is
%% allowed, each with a maximum 1KB payload.
%%
%% </li> </ul> PlaybackKeyPair Endpoints
%%
%% <ul> <li> `ImportPlaybackKeyPair' — Imports the public portion of a new
%% key pair and returns its `arn' and `fingerprint'. The `privateKey' can
%% then be used to generate viewer authorization tokens, to grant viewers
%% access to authorized channels.
%%
%% </li> <li> `GetPlaybackKeyPair' — Gets a specified playback authorization
%% key pair and returns the `arn' and `fingerprint'. The `privateKey' held by
%% the caller can be used to generate viewer authorization tokens, to grant
%% viewers access to authorized channels.
%%
%% </li> <li> `ListPlaybackKeyPairs' — Gets summary information about
%% playback key pairs.
%%
%% </li> <li> `DeletePlaybackKeyPair' — Deletes a specified authorization key
%% pair. This invalidates future viewer tokens generated using the key pair’s
%% `privateKey'.
%%
%% </li> </ul> AWS Tags Endpoints
%%
%% <ul> <li> `TagResource' — Adds or updates tags for the AWS resource with
%% the specified ARN.
%%
%% </li> <li> `UntagResource' — Removes tags from the resource with the
%% specified ARN.
%%
%% </li> <li> `ListTagsForResource' — Gets information about AWS tags for the
%% specified ARN.
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
         delete_playback_key_pair/2,
         delete_playback_key_pair/3,
         delete_stream_key/2,
         delete_stream_key/3,
         get_channel/2,
         get_channel/3,
         get_playback_key_pair/2,
         get_playback_key_pair/3,
         get_stream/2,
         get_stream/3,
         get_stream_key/2,
         get_stream_key/3,
         import_playback_key_pair/2,
         import_playback_key_pair/3,
         list_channels/2,
         list_channels/3,
         list_playback_key_pairs/2,
         list_playback_key_pairs/3,
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

%% @doc Performs `GetChannel' on multiple ARNs simultaneously.
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

%% @doc Performs `GetStreamKey' on multiple ARNs simultaneously.
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
%% Note that `CreateChannel' creates a stream key. If you subsequently use
%% CreateStreamKey on the same channel, it will fail because a stream key
%% already exists and there is a limit of 1 stream key per channel. To reset
%% the stream key on a channel, use `DeleteStreamKey' and then
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

%% @doc Deletes a specified authorization key pair.
%%
%% This invalidates future viewer tokens generated using the key pair’s
%% `privateKey'.
delete_playback_key_pair(Client, Input) ->
    delete_playback_key_pair(Client, Input, []).
delete_playback_key_pair(Client, Input0, Options) ->
    Method = post,
    Path = ["/DeletePlaybackKeyPair"],
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

%% @doc Gets the channel configuration for the specified channel ARN.
%%
%% See also `BatchGetChannel'.
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

%% @doc Gets a specified playback authorization key pair and returns the
%% `arn' and `fingerprint'.
%%
%% The `privateKey' held by the caller can be used to generate viewer
%% authorization tokens, to grant viewers access to authorized channels.
get_playback_key_pair(Client, Input) ->
    get_playback_key_pair(Client, Input, []).
get_playback_key_pair(Client, Input0, Options) ->
    Method = post,
    Path = ["/GetPlaybackKeyPair"],
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

%% @doc Imports the public portion of a new key pair and returns its `arn'
%% and `fingerprint'.
%%
%% The `privateKey' can then be used to generate viewer authorization tokens,
%% to grant viewers access to authorized channels.
import_playback_key_pair(Client, Input) ->
    import_playback_key_pair(Client, Input, []).
import_playback_key_pair(Client, Input0, Options) ->
    Method = post,
    Path = ["/ImportPlaybackKeyPair"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Gets summary information about all channels in your account, in the
%% AWS region where the API request is processed.
%%
%% This list can be filtered to match a specified string.
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

%% @doc Gets summary information about playback key pairs.
list_playback_key_pairs(Client, Input) ->
    list_playback_key_pairs(Client, Input, []).
list_playback_key_pairs(Client, Input0, Options) ->
    Method = post,
    Path = ["/ListPlaybackKeyPairs"],
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
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Inserts metadata into an RTMPS stream for the specified channel.
%%
%% A maximum of 5 requests per second per channel is allowed, each with a
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

%% @doc Disconnects the incoming RTMPS stream for the specified channel.
%%
%% Can be used in conjunction with `DeleteStreamKey' to prevent further
%% streaming to a channel.
%%
%% Many streaming client-software libraries automatically reconnect a dropped
%% RTMPS session, so to stop the stream permanently, you may want to first
%% revoke the `streamKey' attached to the channel.
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
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
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
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a channel's configuration.
%%
%% This does not affect an ongoing stream of this channel. You must stop and
%% restart the stream for the changes to take effect.
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

    Payload =
      case proplists:get_value(should_send_body_as_binary, Options) of
        true ->
          maps:get(<<"Body">>, Input, <<"">>);
        undefined ->
          encode_payload(Input)
      end,

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
