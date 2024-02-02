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
%% Allowed Header Values
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
%% </li> <li> Recording configuration — Stores configuration related to
%% recording a live stream and where to store the recorded content. Multiple
%% channels can reference the same recording configuration. See the Recording
%% Configuration endpoints for more information.
%%
%% </li> <li> Playback restriction policy — Restricts playback by countries
%% and/or origin sites. See the Playback Restriction Policy endpoints for
%% more information.
%%
%% </li> </ul> Tagging
%%
%% A tag is a metadata label that you assign to an Amazon Web Services
%% resource. A tag comprises a key and a value, both set by you. For example,
%% you might set a tag as `topic:nature' to label a particular video
%% category. See Tagging Amazon Web Services Resources for more information,
%% including restrictions that apply to tags and &quot;Tag naming limits and
%% requirements&quot;; Amazon IVS has no service-specific constraints beyond
%% what is documented there.
%%
%% Tags can help you identify and organize your Amazon Web Services
%% resources. For example, you can use the same tag for different resources
%% to indicate that they are related. You can also use tags to manage access
%% (see Access Tags).
%%
%% The Amazon IVS API has these tag-related endpoints: `TagResource',
%% `UntagResource', and `ListTagsForResource'. The following
%% resources support tagging: Channels, Stream Keys, Playback Key Pairs, and
%% Recording Configurations.
%%
%% At most 50 tags can be applied to a resource.
%%
%% Authentication versus Authorization
%%
%% Note the differences between these concepts:
%%
%% <ul> <li> Authentication is about verifying identity. You need to be
%% authenticated to sign Amazon IVS API requests.
%%
%% </li> <li> Authorization is about granting permissions. Your IAM roles
%% need to have permissions for Amazon IVS API requests. In addition,
%% authorization is needed to view Amazon IVS private channels. (Private
%% channels are channels that are enabled for &quot;playback
%% authorization.&quot;)
%%
%% </li> </ul> Authentication
%%
%% All Amazon IVS API requests must be authenticated with a signature. The
%% Amazon Web Services Command-Line Interface (CLI) and Amazon IVS Player
%% SDKs take care of signing the underlying API calls for you. However, if
%% your application calls the Amazon IVS API directly, it’s your
%% responsibility to sign the requests.
%%
%% You generate a signature using valid Amazon Web Services credentials that
%% have permission to perform the requested action. For example, you must
%% sign PutMetadata requests with a signature generated from a user account
%% that has the `ivs:PutMetadata' permission.
%%
%% For more information:
%%
%% <ul> <li> Authentication and generating signatures — See Authenticating
%% Requests (Amazon Web Services Signature Version 4) in the Amazon Web
%% Services General Reference.
%%
%% </li> <li> Managing Amazon IVS permissions — See Identity and Access
%% Management on the Security page of the Amazon IVS User Guide.
%%
%% </li> </ul> Amazon Resource Names (ARNs)
%%
%% ARNs uniquely identify AWS resources. An ARN is required when you need to
%% specify a resource unambiguously across all of AWS, such as in IAM
%% policies and API calls. For more information, see Amazon Resource Names in
%% the AWS General Reference.
%%
%% Channel Endpoints
%%
%% <ul> <li> `CreateChannel' — Creates a new channel and an associated
%% stream key to start streaming.
%%
%% </li> <li> `GetChannel' — Gets the channel configuration for the
%% specified channel ARN.
%%
%% </li> <li> `BatchGetChannel' — Performs `GetChannel' on multiple
%% ARNs simultaneously.
%%
%% </li> <li> `ListChannels' — Gets summary information about all
%% channels in your account, in the Amazon Web Services region where the API
%% request is processed. This list can be filtered to match a specified name
%% or recording-configuration ARN. Filters are mutually exclusive and cannot
%% be used together. If you try to use both filters, you will get an error
%% (409 Conflict Exception).
%%
%% </li> <li> `UpdateChannel' — Updates a channel's configuration.
%% This does not affect an ongoing stream of this channel. You must stop and
%% restart the stream for the changes to take effect.
%%
%% </li> <li> `DeleteChannel' — Deletes the specified channel.
%%
%% </li> </ul> Playback Restriction Policy Endpoints
%%
%% <ul> <li> `CreatePlaybackRestrictionPolicy' — Creates a new playback
%% restriction policy, for constraining playback by countries and/or origins.
%%
%% </li> <li> `DeletePlaybackRestrictionPolicy' — Deletes the specified
%% playback restriction policy
%%
%% </li> <li> `GetPlaybackRestrictionPolicy' — Gets the specified
%% playback restriction policy.
%%
%% </li> <li> `ListPlaybackRestrictionPolicies' — Gets summary
%% information about playback restriction policies.
%%
%% </li> <li> `UpdatePlaybackRestrictionPolicy' — Updates a specified
%% playback restriction policy.
%%
%% </li> </ul> Private Channel Endpoints
%%
%% For more information, see Setting Up Private Channels in the Amazon IVS
%% User Guide.
%%
%% <ul> <li> `ImportPlaybackKeyPair' — Imports the public portion of a
%% new key pair and returns its `arn' and `fingerprint'. The
%% `privateKey' can then be used to generate viewer authorization tokens,
%% to grant viewers access to private channels (channels enabled for playback
%% authorization).
%%
%% </li> <li> `GetPlaybackKeyPair' — Gets a specified playback
%% authorization key pair and returns the `arn' and `fingerprint'.
%% The `privateKey' held by the caller can be used to generate viewer
%% authorization tokens, to grant viewers access to private channels.
%%
%% </li> <li> `ListPlaybackKeyPairs' — Gets summary information about
%% playback key pairs.
%%
%% </li> <li> `DeletePlaybackKeyPair' — Deletes a specified authorization
%% key pair. This invalidates future viewer tokens generated using the key
%% pair’s `privateKey'.
%%
%% </li> <li> `StartViewerSessionRevocation' — Starts the process of
%% revoking the viewer session associated with a specified channel ARN and
%% viewer ID. Optionally, you can provide a version to revoke viewer sessions
%% less than and including that version.
%%
%% </li> <li> `BatchStartViewerSessionRevocation' — Performs
%% `StartViewerSessionRevocation' on multiple channel ARN and viewer ID
%% pairs simultaneously.
%%
%% </li> </ul> RecordingConfiguration Endpoints
%%
%% <ul> <li> `CreateRecordingConfiguration' — Creates a new recording
%% configuration, used to enable recording to Amazon S3.
%%
%% </li> <li> `GetRecordingConfiguration' — Gets the
%% recording-configuration metadata for the specified ARN.
%%
%% </li> <li> `ListRecordingConfigurations' — Gets summary information
%% about all recording configurations in your account, in the Amazon Web
%% Services region where the API request is processed.
%%
%% </li> <li> `DeleteRecordingConfiguration' — Deletes the recording
%% configuration for the specified ARN.
%%
%% </li> </ul> Stream Endpoints
%%
%% <ul> <li> `GetStream' — Gets information about the active (live)
%% stream on a specified channel.
%%
%% </li> <li> `GetStreamSession' — Gets metadata on a specified stream.
%%
%% </li> <li> `ListStreams' — Gets summary information about live streams
%% in your account, in the Amazon Web Services region where the API request
%% is processed.
%%
%% </li> <li> `ListStreamSessions' — Gets a summary of current and
%% previous streams for a specified channel in your account, in the AWS
%% region where the API request is processed.
%%
%% </li> <li> `StopStream' — Disconnects the incoming RTMPS stream for
%% the specified channel. Can be used in conjunction with
%% `DeleteStreamKey' to prevent further streaming to a channel.
%%
%% </li> <li> `PutMetadata' — Inserts metadata into the active stream of
%% the specified channel. At most 5 requests per second per channel are
%% allowed, each with a maximum 1 KB payload. (If 5 TPS is not sufficient for
%% your needs, we recommend batching your data into a single PutMetadata
%% call.) At most 155 requests per second per account are allowed.
%%
%% </li> </ul> StreamKey Endpoints
%%
%% <ul> <li> `CreateStreamKey' — Creates a stream key, used to initiate a
%% stream, for the specified channel ARN.
%%
%% </li> <li> `GetStreamKey' — Gets stream key information for the
%% specified ARN.
%%
%% </li> <li> `BatchGetStreamKey' — Performs `GetStreamKey' on
%% multiple ARNs simultaneously.
%%
%% </li> <li> `ListStreamKeys' — Gets summary information about stream
%% keys for the specified channel.
%%
%% </li> <li> `DeleteStreamKey' — Deletes the stream key for the
%% specified ARN, so it can no longer be used to stream.
%%
%% </li> </ul> Amazon Web Services Tags Endpoints
%%
%% <ul> <li> `TagResource' — Adds or updates tags for the Amazon Web
%% Services resource with the specified ARN.
%%
%% </li> <li> `UntagResource' — Removes tags from the resource with the
%% specified ARN.
%%
%% </li> <li> `ListTagsForResource' — Gets information about Amazon Web
%% Services tags for the specified ARN.
%%
%% </li> </ul>
-module(aws_ivs).

-export([batch_get_channel/2,
         batch_get_channel/3,
         batch_get_stream_key/2,
         batch_get_stream_key/3,
         batch_start_viewer_session_revocation/2,
         batch_start_viewer_session_revocation/3,
         create_channel/2,
         create_channel/3,
         create_playback_restriction_policy/2,
         create_playback_restriction_policy/3,
         create_recording_configuration/2,
         create_recording_configuration/3,
         create_stream_key/2,
         create_stream_key/3,
         delete_channel/2,
         delete_channel/3,
         delete_playback_key_pair/2,
         delete_playback_key_pair/3,
         delete_playback_restriction_policy/2,
         delete_playback_restriction_policy/3,
         delete_recording_configuration/2,
         delete_recording_configuration/3,
         delete_stream_key/2,
         delete_stream_key/3,
         get_channel/2,
         get_channel/3,
         get_playback_key_pair/2,
         get_playback_key_pair/3,
         get_playback_restriction_policy/2,
         get_playback_restriction_policy/3,
         get_recording_configuration/2,
         get_recording_configuration/3,
         get_stream/2,
         get_stream/3,
         get_stream_key/2,
         get_stream_key/3,
         get_stream_session/2,
         get_stream_session/3,
         import_playback_key_pair/2,
         import_playback_key_pair/3,
         list_channels/2,
         list_channels/3,
         list_playback_key_pairs/2,
         list_playback_key_pairs/3,
         list_playback_restriction_policies/2,
         list_playback_restriction_policies/3,
         list_recording_configurations/2,
         list_recording_configurations/3,
         list_stream_keys/2,
         list_stream_keys/3,
         list_stream_sessions/2,
         list_stream_sessions/3,
         list_streams/2,
         list_streams/3,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         put_metadata/2,
         put_metadata/3,
         start_viewer_session_revocation/2,
         start_viewer_session_revocation/3,
         stop_stream/2,
         stop_stream/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_channel/2,
         update_channel/3,
         update_playback_restriction_policy/2,
         update_playback_restriction_policy/3]).

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

%% @doc Performs `GetStreamKey' on multiple ARNs simultaneously.
batch_get_stream_key(Client, Input) ->
    batch_get_stream_key(Client, Input, []).
batch_get_stream_key(Client, Input0, Options0) ->
    Method = post,
    Path = ["/BatchGetStreamKey"],
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

%% @doc Performs `StartViewerSessionRevocation' on multiple channel ARN
%% and viewer ID pairs simultaneously.
batch_start_viewer_session_revocation(Client, Input) ->
    batch_start_viewer_session_revocation(Client, Input, []).
batch_start_viewer_session_revocation(Client, Input0, Options0) ->
    Method = post,
    Path = ["/BatchStartViewerSessionRevocation"],
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

%% @doc Creates a new channel and an associated stream key to start
%% streaming.
create_channel(Client, Input) ->
    create_channel(Client, Input, []).
create_channel(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CreateChannel"],
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

%% @doc Creates a new playback restriction policy, for constraining playback
%% by countries and/or origins.
create_playback_restriction_policy(Client, Input) ->
    create_playback_restriction_policy(Client, Input, []).
create_playback_restriction_policy(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CreatePlaybackRestrictionPolicy"],
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

%% @doc Creates a new recording configuration, used to enable recording to
%% Amazon S3.
%%
%% Known issue: In the us-east-1 region, if you use the Amazon Web Services
%% CLI to create a recording configuration, it returns success even if the S3
%% bucket is in a different region. In this case, the `state' of the
%% recording configuration is `CREATE_FAILED' (instead of `ACTIVE').
%% (In other regions, the CLI correctly returns failure if the bucket is in a
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

%% @doc Creates a stream key, used to initiate a stream, for the specified
%% channel ARN.
%%
%% Note that `CreateChannel' creates a stream key. If you subsequently
%% use CreateStreamKey on the same channel, it will fail because a stream key
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

%% @doc Deletes the specified channel and its associated stream keys.
%%
%% If you try to delete a live channel, you will get an error (409
%% ConflictException). To delete a channel that is live, call
%% `StopStream', wait for the Amazon EventBridge &quot;Stream End&quot;
%% event (to verify that the stream's state is no longer Live), then call
%% DeleteChannel. (See Using EventBridge with Amazon IVS.)
delete_channel(Client, Input) ->
    delete_channel(Client, Input, []).
delete_channel(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteChannel"],
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

%% @doc Deletes a specified authorization key pair.
%%
%% This invalidates future viewer tokens generated using the key pair’s
%% `privateKey'. For more information, see Setting Up Private Channels in
%% the Amazon IVS User Guide.
delete_playback_key_pair(Client, Input) ->
    delete_playback_key_pair(Client, Input, []).
delete_playback_key_pair(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeletePlaybackKeyPair"],
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

%% @doc Deletes the specified playback restriction policy.
delete_playback_restriction_policy(Client, Input) ->
    delete_playback_restriction_policy(Client, Input, []).
delete_playback_restriction_policy(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeletePlaybackRestrictionPolicy"],
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

%% @doc Deletes the recording configuration for the specified ARN.
%%
%% If you try to delete a recording configuration that is associated with a
%% channel, you will get an error (409 ConflictException). To avoid this, for
%% all channels that reference the recording configuration, first use
%% `UpdateChannel' to set the `recordingConfigurationArn' field to an
%% empty string, then use DeleteRecordingConfiguration.
delete_recording_configuration(Client, Input) ->
    delete_recording_configuration(Client, Input, []).
delete_recording_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteRecordingConfiguration"],
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

%% @doc Deletes the stream key for the specified ARN, so it can no longer be
%% used to stream.
delete_stream_key(Client, Input) ->
    delete_stream_key(Client, Input, []).
delete_stream_key(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteStreamKey"],
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

%% @doc Gets the specified playback restriction policy.
get_playback_restriction_policy(Client, Input) ->
    get_playback_restriction_policy(Client, Input, []).
get_playback_restriction_policy(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetPlaybackRestrictionPolicy"],
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

%% @doc Gets the recording configuration for the specified ARN.
get_recording_configuration(Client, Input) ->
    get_recording_configuration(Client, Input, []).
get_recording_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetRecordingConfiguration"],
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

%% @doc Gets information about the active (live) stream on a specified
%% channel.
get_stream(Client, Input) ->
    get_stream(Client, Input, []).
get_stream(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetStream"],
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

%% @doc Gets stream-key information for a specified ARN.
get_stream_key(Client, Input) ->
    get_stream_key(Client, Input, []).
get_stream_key(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetStreamKey"],
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

%% @doc Gets metadata on a specified stream.
get_stream_session(Client, Input) ->
    get_stream_session(Client, Input, []).
get_stream_session(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetStreamSession"],
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

%% @doc Imports the public portion of a new key pair and returns its
%% `arn' and `fingerprint'.
%%
%% The `privateKey' can then be used to generate viewer authorization
%% tokens, to grant viewers access to private channels. For more information,
%% see Setting Up Private Channels in the Amazon IVS User Guide.
import_playback_key_pair(Client, Input) ->
    import_playback_key_pair(Client, Input, []).
import_playback_key_pair(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ImportPlaybackKeyPair"],
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

%% @doc Gets summary information about playback restriction policies.
list_playback_restriction_policies(Client, Input) ->
    list_playback_restriction_policies(Client, Input, []).
list_playback_restriction_policies(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListPlaybackRestrictionPolicies"],
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

%% @doc Gets summary information about stream keys for the specified channel.
list_stream_keys(Client, Input) ->
    list_stream_keys(Client, Input, []).
list_stream_keys(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListStreamKeys"],
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

%% @doc Gets a summary of current and previous streams for a specified
%% channel in your account, in the AWS region where the API request is
%% processed.
list_stream_sessions(Client, Input) ->
    list_stream_sessions(Client, Input, []).
list_stream_sessions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListStreamSessions"],
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

%% @doc Gets summary information about live streams in your account, in the
%% Amazon Web Services region where the API request is processed.
list_streams(Client, Input) ->
    list_streams(Client, Input, []).
list_streams(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListStreams"],
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

%% @doc Starts the process of revoking the viewer session associated with a
%% specified channel ARN and viewer ID.
%%
%% Optionally, you can provide a version to revoke viewer sessions less than
%% and including that version. For instructions on associating a viewer ID
%% with a viewer session, see Setting Up Private Channels.
start_viewer_session_revocation(Client, Input) ->
    start_viewer_session_revocation(Client, Input, []).
start_viewer_session_revocation(Client, Input0, Options0) ->
    Method = post,
    Path = ["/StartViewerSessionRevocation"],
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

%% @doc Adds or updates tags for the Amazon Web Services resource with the
%% specified ARN.
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

%% @doc Removes tags from the resource with the specified ARN.
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

%% @doc Updates a channel's configuration.
%%
%% Live channels cannot be updated. You must stop the ongoing stream, update
%% the channel, and restart the stream for the changes to take effect.
update_channel(Client, Input) ->
    update_channel(Client, Input, []).
update_channel(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UpdateChannel"],
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

%% @doc Updates a specified playback restriction policy.
update_playback_restriction_policy(Client, Input) ->
    update_playback_restriction_policy(Client, Input, []).
update_playback_restriction_policy(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UpdatePlaybackRestrictionPolicy"],
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
    Client1 = Client#{service => <<"ivs">>},
    Host = build_host(<<"ivs">>, Client1),
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
