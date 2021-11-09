%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Introduction
%%
%% The Amazon Interactive Video Service (IVS) API is REST compatible, using a
%% standard HTTP API and an Amazon Web Services EventBridge event stream for
%% responses.
%%
%% JSON is used for both requests and responses, including errors.
%%
%% The API is an Amazon Web Services regional service. For a list of
%% supported regions and Amazon IVS HTTPS service endpoints, see the Amazon
%% IVS page in the Amazon Web Services General Reference.
%%
%% All API request parameters and URLs are case sensitive.
%%
%% For a summary of notable documentation changes in each release, see
%% Document History.
%%
%% <p> <b>Allowed Header Values</b> </p> <ul> <li> <p> <code> <b>Accept:</b>
%% </code> application/json</p> </li> <li> <p> <code> <b>Accept-Encoding:</b>
%% </code> gzip, deflate</p> </li> <li> <p> <code> <b>Content-Type:</b>
%% </code>application/json</p> </li> </ul> <p> <b>Resources</b> </p> <p>The
%% following resources contain information about your IVS live stream (see <a
%% href="https://docs.aws.amazon.com/ivs/latest/userguide/getting-started.html">
%% Getting Started with Amazon IVS</a>):</p> <ul> <li> <p>Channel — Stores
%% configuration data related to your live stream. You first create a channel
%% and then use the channel’s stream key to start your live stream. See the
%% Channel endpoints for more information. </p> </li> <li> <p>Stream key — An
%% identifier assigned by Amazon IVS when you create a channel, which is then
%% used to authorize streaming. See the StreamKey endpoints for more
%% information. <i> <b>Treat the stream key like a secret, since it allows
%% anyone to stream to the channel.</b> </i> </p> </li> <li> <p>Playback key
%% pair — Video playback may be restricted using playback-authorization
%% tokens, which use public-key encryption. A playback key pair is the
%% public-private pair of keys used to sign and validate the
%% playback-authorization token. See the PlaybackKeyPair endpoints for more
%% information.</p> </li> <li> <p>Recording configuration — Stores
%% configuration related to recording a live stream and where to store the
%% recorded content. Multiple channels can reference the same recording
%% configuration. See the Recording Configuration endpoints for more
%% information.</p> </li> </ul> <p> <b>Tagging</b> </p> <p>A <i>tag</i> is a
%% metadata label that you assign to an Amazon Web Services resource. A tag
%% comprises a <i>key</i> and a <i>value</i>, both set by you. For example,
%% you might set a tag as <code>topic:nature</code> to label a particular
%% video category. See <a
%% href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging
%% Amazon Web Services Resources</a> for more information, including
%% restrictions that apply to tags.</p> <p>Tags can help you identify and
%% organize your Amazon Web Services resources. For example, you can use the
%% same tag for different resources to indicate that they are related. You
%% can also use tags to manage access (see <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html">
%% Access Tags</a>). </p> <p>The Amazon IVS API has these tag-related
%% endpoints: <a>TagResource</a>, <a>UntagResource</a>, and
%% <a>ListTagsForResource</a>. The following resources support tagging:
%% Channels, Stream Keys, Playback Key Pairs, and Recording
%% Configurations.</p> <p>At most 50 tags can be applied to a resource. </p>
%% <p> <b>Authentication versus Authorization</b> </p> <p>Note the
%% differences between these concepts:</p> <ul> <li> <p>
%% <i>Authentication</i> is about verifying identity. You need to be
%% authenticated to sign Amazon IVS API requests.</p> </li> <li> <p>
%% <i>Authorization</i> is about granting permissions. You need to be
%% authorized to view <a
%% href="https://docs.aws.amazon.com/ivs/latest/userguide/private-channels.html">Amazon
%% IVS private channels</a>. (Private channels are channels that are enabled
%% for "playback authorization.")</p> </li> </ul> <p> <b>Authentication</b>
%% </p> <p>All Amazon IVS API requests must be authenticated with a
%% signature. The Amazon Web Services Command-Line Interface (CLI) and Amazon
%% IVS Player SDKs take care of signing the underlying API calls for you.
%% However, if your application calls the Amazon IVS API directly, it’s your
%% responsibility to sign the requests.</p> <p>You generate a signature using
%% valid Amazon Web Services credentials that have permission to perform the
%% requested action. For example, you must sign PutMetadata requests with a
%% signature generated from an IAM user account that has the
%% <code>ivs:PutMetadata</code> permission.</p> <p>For more information:</p>
%% <ul> <li> <p>Authentication and generating signatures — See <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/API/sig-v4-authenticating-requests.html">Authenticating
%% Requests (Amazon Web Services Signature Version 4)</a> in the <i>Amazon
%% Web Services General Reference</i>.</p> </li> <li> <p>Managing Amazon IVS
%% permissions — See <a
%% href="https://docs.aws.amazon.com/ivs/latest/userguide/security-iam.html">Identity
%% and Access Management</a> on the Security page of the <i>Amazon IVS User
%% Guide</i>.</p> </li> </ul> <p> <b>Channel Endpoints</b> </p> <ul> <li> <p>
%% <a>CreateChannel</a> — Creates a new channel and an associated stream key
%% to start streaming.</p> </li> <li> <p> <a>GetChannel</a> — Gets the
%% channel configuration for the specified channel ARN (Amazon Resource
%% Name).</p> </li> <li> <p> <a>BatchGetChannel</a> — Performs
%% <a>GetChannel</a> on multiple ARNs simultaneously.</p> </li> <li> <p>
%% <a>ListChannels</a> — Gets summary information about all channels in your
%% account, in the Amazon Web Services region where the API request is
%% processed. This list can be filtered to match a specified name or
%% recording-configuration ARN. Filters are mutually exclusive and cannot be
%% used together. If you try to use both filters, you will get an error (409
%% Conflict Exception).</p> </li> <li> <p> <a>UpdateChannel</a> — Updates a
%% channel's configuration. This does not affect an ongoing stream of this
%% channel. You must stop and restart the stream for the changes to take
%% effect.</p> </li> <li> <p> <a>DeleteChannel</a> — Deletes the specified
%% channel.</p> </li> </ul> <p> <b>StreamKey Endpoints</b> </p> <ul> <li> <p>
%% <a>CreateStreamKey</a> — Creates a stream key, used to initiate a stream,
%% for the specified channel ARN.</p> </li> <li> <p> <a>GetStreamKey</a> —
%% Gets stream key information for the specified ARN.</p> </li> <li> <p>
%% <a>BatchGetStreamKey</a> — Performs <a>GetStreamKey</a> on multiple ARNs
%% simultaneously.</p> </li> <li> <p> <a>ListStreamKeys</a> — Gets summary
%% information about stream keys for the specified channel.</p> </li> <li>
%% <p> <a>DeleteStreamKey</a> — Deletes the stream key for the specified ARN,
%% so it can no longer be used to stream.</p> </li> </ul> <p> <b>Stream
%% Endpoints</b> </p> <ul> <li> <p> <a>GetStream</a> — Gets information about
%% the active (live) stream on a specified channel.</p> </li> <li> <p>
%% <a>ListStreams</a> — Gets summary information about live streams in your
%% account, in the Amazon Web Services region where the API request is
%% processed.</p> </li> <li> <p> <a>StopStream</a> — Disconnects the incoming
%% RTMPS stream for the specified channel. Can be used in conjunction with
%% <a>DeleteStreamKey</a> to prevent further streaming to a channel.</p>
%% </li> <li> <p> <a>PutMetadata</a> — Inserts metadata into the active
%% stream of the specified channel. At most 5 requests per second per channel
%% are allowed, each with a maximum 1 KB payload. (If 5 TPS is not sufficient
%% for your needs, we recommend batching your data into a single PutMetadata
%% call.) At most 155 requests per second per account are allowed.</p> </li>
%% </ul> <p> <b>PlaybackKeyPair Endpoints</b> </p> <p>For more information,
%% see <a
%% href="https://docs.aws.amazon.com/ivs/latest/userguide/private-channels.html">Setting
%% Up Private Channels</a> in the <i>Amazon IVS User Guide</i>.</p> <ul> <li>
%% <p> <a>ImportPlaybackKeyPair</a> — Imports the public portion of a new key
%% pair and returns its <code>arn</code> and <code>fingerprint</code>. The
%% <code>privateKey</code> can then be used to generate viewer authorization
%% tokens, to grant viewers access to private channels (channels enabled for
%% playback authorization).</p> </li> <li> <p> <a>GetPlaybackKeyPair</a> —
%% Gets a specified playback authorization key pair and returns the
%% <code>arn</code> and <code>fingerprint</code>. The <code>privateKey</code>
%% held by the caller can be used to generate viewer authorization tokens, to
%% grant viewers access to private channels.</p> </li> <li> <p>
%% <a>ListPlaybackKeyPairs</a> — Gets summary information about playback key
%% pairs.</p> </li> <li> <p> <a>DeletePlaybackKeyPair</a> — Deletes a
%% specified authorization key pair. This invalidates future viewer tokens
%% generated using the key pair’s <code>privateKey</code>.</p> </li> </ul>
%% <p> <b>RecordingConfiguration Endpoints</b> </p> <ul> <li> <p>
%% <a>CreateRecordingConfiguration</a> — Creates a new recording
%% configuration, used to enable recording to Amazon S3.</p> </li> <li> <p>
%% <a>GetRecordingConfiguration</a> — Gets the recording-configuration
%% metadata for the specified ARN.</p> </li> <li> <p>
%% <a>ListRecordingConfigurations</a> — Gets summary information about all
%% recording configurations in your account, in the Amazon Web Services
%% region where the API request is processed.</p> </li> <li> <p>
%% <a>DeleteRecordingConfiguration</a> — Deletes the recording configuration
%% for the specified ARN.</p> </li> </ul> <p> <b>Amazon Web Services Tags
%% Endpoints</b> </p> <ul> <li> <p> <a>TagResource</a> — Adds or updates tags
%% for the Amazon Web Services resource with the specified ARN.</p> </li>
%% <li> <p> <a>UntagResource</a> — Removes tags from the resource with the
%% specified ARN.</p> </li> <li> <p> <a>ListTagsForResource</a> — Gets
%% information about Amazon Web Services tags for the specified ARN.</p>
%% </li> </ul>
-module(aws_ivs).

-export([batch_get_channel/2,
         batch_get_channel/3,
         batch_get_stream_key/2,
         batch_get_stream_key/3,
         create_channel/2,
         create_channel/3,
         create_recording_configuration/2,
         create_recording_configuration/3,
         create_stream_key/2,
         create_stream_key/3,
         delete_channel/2,
         delete_channel/3,
         delete_playback_key_pair/2,
         delete_playback_key_pair/3,
         delete_recording_configuration/2,
         delete_recording_configuration/3,
         delete_stream_key/2,
         delete_stream_key/3,
         get_channel/2,
         get_channel/3,
         get_playback_key_pair/2,
         get_playback_key_pair/3,
         get_recording_configuration/2,
         get_recording_configuration/3,
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
         list_recording_configurations/2,
         list_recording_configurations/3,
         list_stream_keys/2,
         list_stream_keys/3,
         list_streams/2,
         list_streams/3,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
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
batch_get_channel(Client, Input0, Options0) ->
    Method = post,
    Path = ["/BatchGetChannel"],
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

%% @doc Performs `GetStreamKey' on multiple ARNs simultaneously.
batch_get_stream_key(Client, Input) ->
    batch_get_stream_key(Client, Input, []).
batch_get_stream_key(Client, Input0, Options0) ->
    Method = post,
    Path = ["/BatchGetStreamKey"],
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

%% @doc Creates a new channel and an associated stream key to start
%% streaming.
create_channel(Client, Input) ->
    create_channel(Client, Input, []).
create_channel(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CreateChannel"],
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

%% @doc Creates a new recording configuration, used to enable recording to
%% Amazon S3.
%%
%% Known issue: In the us-east-1 region, if you use the Amazon Web Services
%% CLI to create a recording configuration, it returns success even if the S3
%% bucket is in a different region. In this case, the `state' of the
%% recording configuration is `CREATE_FAILED' (instead of `ACTIVE'). (In
%% other regions, the CLI correctly returns failure if the bucket is in a
%% different region.)
%%
%% Workaround: Ensure that your S3 bucket is in the same region as the
%% recording configuration. If you create a recording configuration in a
%% different region as your S3 bucket, delete that recording configuration
%% and create a new one with an S3 bucket from the correct region.
create_recording_configuration(Client, Input) ->
    create_recording_configuration(Client, Input, []).
create_recording_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CreateRecordingConfiguration"],
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
create_stream_key(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CreateStreamKey"],
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

%% @doc Deletes the specified channel and its associated stream keys.
%%
%% If you try to delete a live channel, you will get an error (409
%% ConflictException). To delete a channel that is live, call `StopStream',
%% wait for the Amazon EventBridge "Stream End" event (to verify that the
%% stream's state was changed from Live to Offline), then call DeleteChannel.
%% (See Using EventBridge with Amazon IVS.)
delete_channel(Client, Input) ->
    delete_channel(Client, Input, []).
delete_channel(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteChannel"],
    SuccessStatusCode = 204,
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

%% @doc Deletes a specified authorization key pair.
%%
%% This invalidates future viewer tokens generated using the key pair’s
%% `privateKey'. For more information, see Setting Up Private Channels in the
%% Amazon IVS User Guide.
delete_playback_key_pair(Client, Input) ->
    delete_playback_key_pair(Client, Input, []).
delete_playback_key_pair(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeletePlaybackKeyPair"],
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

%% @doc Deletes the recording configuration for the specified ARN.
%%
%% If you try to delete a recording configuration that is associated with a
%% channel, you will get an error (409 ConflictException). To avoid this, for
%% all channels that reference the recording configuration, first use
%% `UpdateChannel' to set the `recordingConfigurationArn' field to an empty
%% string, then use DeleteRecordingConfiguration.
delete_recording_configuration(Client, Input) ->
    delete_recording_configuration(Client, Input, []).
delete_recording_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteRecordingConfiguration"],
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

%% @doc Deletes the stream key for the specified ARN, so it can no longer be
%% used to stream.
delete_stream_key(Client, Input) ->
    delete_stream_key(Client, Input, []).
delete_stream_key(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteStreamKey"],
    SuccessStatusCode = 204,
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

%% @doc Gets the channel configuration for the specified channel ARN.
%%
%% See also `BatchGetChannel'.
get_channel(Client, Input) ->
    get_channel(Client, Input, []).
get_channel(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetChannel"],
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

%% @doc Gets a specified playback authorization key pair and returns the
%% `arn' and `fingerprint'.
%%
%% The `privateKey' held by the caller can be used to generate viewer
%% authorization tokens, to grant viewers access to private channels. For
%% more information, see Setting Up Private Channels in the Amazon IVS User
%% Guide.
get_playback_key_pair(Client, Input) ->
    get_playback_key_pair(Client, Input, []).
get_playback_key_pair(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetPlaybackKeyPair"],
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

%% @doc Gets the recording configuration for the specified ARN.
get_recording_configuration(Client, Input) ->
    get_recording_configuration(Client, Input, []).
get_recording_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetRecordingConfiguration"],
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

%% @doc Gets information about the active (live) stream on a specified
%% channel.
get_stream(Client, Input) ->
    get_stream(Client, Input, []).
get_stream(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetStream"],
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

%% @doc Gets stream-key information for a specified ARN.
get_stream_key(Client, Input) ->
    get_stream_key(Client, Input, []).
get_stream_key(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetStreamKey"],
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

%% @doc Imports the public portion of a new key pair and returns its `arn'
%% and `fingerprint'.
%%
%% The `privateKey' can then be used to generate viewer authorization tokens,
%% to grant viewers access to private channels. For more information, see
%% Setting Up Private Channels in the Amazon IVS User Guide.
import_playback_key_pair(Client, Input) ->
    import_playback_key_pair(Client, Input, []).
import_playback_key_pair(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ImportPlaybackKeyPair"],
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

%% @doc Gets summary information about all channels in your account, in the
%% Amazon Web Services region where the API request is processed.
%%
%% This list can be filtered to match a specified name or
%% recording-configuration ARN. Filters are mutually exclusive and cannot be
%% used together. If you try to use both filters, you will get an error (409
%% ConflictException).
list_channels(Client, Input) ->
    list_channels(Client, Input, []).
list_channels(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListChannels"],
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

%% @doc Gets summary information about playback key pairs.
%%
%% For more information, see Setting Up Private Channels in the Amazon IVS
%% User Guide.
list_playback_key_pairs(Client, Input) ->
    list_playback_key_pairs(Client, Input, []).
list_playback_key_pairs(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListPlaybackKeyPairs"],
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

%% @doc Gets summary information about all recording configurations in your
%% account, in the Amazon Web Services region where the API request is
%% processed.
list_recording_configurations(Client, Input) ->
    list_recording_configurations(Client, Input, []).
list_recording_configurations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListRecordingConfigurations"],
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

%% @doc Gets summary information about stream keys for the specified channel.
list_stream_keys(Client, Input) ->
    list_stream_keys(Client, Input, []).
list_stream_keys(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListStreamKeys"],
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

%% @doc Gets summary information about live streams in your account, in the
%% Amazon Web Services region where the API request is processed.
list_streams(Client, Input) ->
    list_streams(Client, Input, []).
list_streams(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListStreams"],
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

%% @doc Gets information about Amazon Web Services tags for the specified
%% ARN.
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

%% @doc Inserts metadata into the active stream of the specified channel.
%%
%% At most 5 requests per second per channel are allowed, each with a maximum
%% 1 KB payload. (If 5 TPS is not sufficient for your needs, we recommend
%% batching your data into a single PutMetadata call.) At most 155 requests
%% per second per account are allowed. Also see Embedding Metadata within a
%% Video Stream in the Amazon IVS User Guide.
put_metadata(Client, Input) ->
    put_metadata(Client, Input, []).
put_metadata(Client, Input0, Options0) ->
    Method = post,
    Path = ["/PutMetadata"],
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
stop_stream(Client, Input0, Options0) ->
    Method = post,
    Path = ["/StopStream"],
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

%% @doc Adds or updates tags for the Amazon Web Services resource with the
%% specified ARN.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
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

%% @doc Removes tags from the resource with the specified ARN.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
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

%% @doc Updates a channel's configuration.
%%
%% This does not affect an ongoing stream of this channel. You must stop and
%% restart the stream for the changes to take effect.
update_channel(Client, Input) ->
    update_channel(Client, Input, []).
update_channel(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UpdateChannel"],
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
    Client1 = Client#{service => <<"ivs">>},
    Host = build_host(<<"ivs">>, Client1),
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
       StatusCode =:= SuccessStatusCode ->
    {ok, {StatusCode, ResponseHeaders}};
handle_response({ok, StatusCode, ResponseHeaders}, _, _DecodeBody) ->
    {error, {StatusCode, ResponseHeaders}};
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
