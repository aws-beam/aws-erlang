%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc
%% Introduction
%%
%% The Amazon Interactive Video Service (IVS) API is REST compatible, using a
%% standard HTTP
%% API and an Amazon Web Services EventBridge event stream for responses.
%%
%% JSON is used for both
%% requests and responses, including errors.
%%
%% The API is an Amazon Web Services regional service. For a list of
%% supported regions and
%% Amazon IVS HTTPS service endpoints, see the Amazon IVS page:
%% https://docs.aws.amazon.com/general/latest/gr/ivs.html in the
%% Amazon Web Services General Reference.
%%
%% All API request parameters and URLs are case sensitive.
%%
%% For a summary of notable documentation changes in each release, see
%% Document
%% History:
%% https://docs.aws.amazon.com/ivs/latest/userguide/doc-history.html.
%%
%% Allowed Header Values
%%
%% ```
%% Accept: ''' application/json
%%
%% ```
%% Accept-Encoding: ''' gzip, deflate
%%
%% ```
%% Content-Type: '''application/json
%%
%% Key Concepts
%%
%% Channel — Stores configuration data related to your live stream. You first
%% create a channel and then use the channel’s stream key to start your live
%% stream.
%%
%% Stream key — An identifier assigned by Amazon IVS when you create a
%% channel, which is then used to authorize streaming.
%% Treat the stream key like a secret, since it allows anyone to stream to
%% the channel.
%%
%% Playback key pair — Video playback may be restricted using
%% playback-authorization tokens, which use public-key encryption. A playback
%% key pair is the public-private pair of keys used to sign and validate the
%% playback-authorization token.
%%
%% Recording configuration — Stores configuration related to recording a live
%% stream and where to store the recorded content. Multiple channels can
%% reference the same recording configuration.
%%
%% Playback restriction policy — Restricts playback by countries and/or
%% origin sites.
%%
%% For more information about your IVS live stream, also see Getting Started
%% with IVS Low-Latency Streaming:
%% https://docs.aws.amazon.com/ivs/latest/LowLatencyUserGuide/getting-started.html.
%%
%% Tagging
%%
%% A tag is a metadata label that you assign to an Amazon Web Services
%% resource. A tag comprises a key and a value, both
%% set by you. For example, you might set a tag as `topic:nature' to
%% label a
%% particular video category. See Best practices and strategies:
%% https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html
%% in Tagging Amazon Web Services Resources and Tag Editor for details,
%% including restrictions that apply to tags and &quot;Tag naming limits and
%% requirements&quot;; Amazon IVS has no service-specific constraints beyond
%% what is documented
%% there.
%%
%% Tags can help you identify and organize your Amazon Web Services
%% resources. For example,
%% you can use the same tag for different resources to indicate that they are
%% related. You can
%% also use tags to manage access (see Access Tags:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html).
%%
%% The Amazon IVS API has these tag-related operations: `TagResource',
%% `UntagResource', and `ListTagsForResource'. The following
%% resources support tagging: Channels, Stream Keys, Playback Key Pairs, and
%% Recording
%% Configurations.
%%
%% At most 50 tags can be applied to a resource.
%%
%% Authentication versus Authorization
%%
%% Note the differences between these concepts:
%%
%% Authentication is about verifying identity. You need to be
%% authenticated to sign Amazon IVS API requests.
%%
%% Authorization is about granting permissions. Your IAM roles need to have
%% permissions for Amazon IVS API requests. In addition,
%% authorization is needed to view Amazon IVS private channels:
%% https://docs.aws.amazon.com/ivs/latest/userguide/private-channels.html.
%% (Private channels are channels that are enabled for &quot;playback
%% authorization.&quot;)
%%
%% Authentication
%%
%% All Amazon IVS API requests must be authenticated with a signature. The
%% Amazon Web Services
%% Command-Line Interface (CLI) and Amazon IVS Player SDKs take care of
%% signing the underlying
%% API calls for you. However, if your application calls the Amazon IVS API
%% directly, it’s your
%% responsibility to sign the requests.
%%
%% You generate a signature using valid Amazon Web Services credentials that
%% have permission
%% to perform the requested action. For example, you must sign PutMetadata
%% requests with a
%% signature generated from a user account that has the `ivs:PutMetadata'
%% permission.
%%
%% For more information:
%%
%% Authentication and generating signatures — See Authenticating Requests
%% (Amazon Web Services Signature Version 4):
%% https://docs.aws.amazon.com/AmazonS3/latest/API/sig-v4-authenticating-requests.html
%% in the Amazon Web Services
%% General Reference.
%%
%% Managing Amazon IVS permissions — See Identity and Access Management:
%% https://docs.aws.amazon.com/ivs/latest/userguide/security-iam.html on
%% the Security page of the Amazon IVS User Guide.
%%
%% Amazon Resource Names (ARNs)
%%
%% ARNs uniquely identify AWS resources. An ARN is required when you need to
%% specify a
%% resource unambiguously across all of AWS, such as in IAM policies and API
%% calls. For more information, see Amazon
%% Resource Names:
%% https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
%% in the AWS General Reference.
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



%% Example:
%% update_playback_restriction_policy_request() :: #{
%%   <<"allowedCountries">> => list(string()()),
%%   <<"allowedOrigins">> => list(string()()),
%%   <<"arn">> := string(),
%%   <<"enableStrictOriginEnforcement">> => boolean(),
%%   <<"name">> => string()
%% }
-type update_playback_restriction_policy_request() :: #{binary() => any()}.


%% Example:
%% delete_channel_request() :: #{
%%   <<"arn">> := string()
%% }
-type delete_channel_request() :: #{binary() => any()}.


%% Example:
%% create_stream_key_response() :: #{
%%   <<"streamKey">> => stream_key()
%% }
-type create_stream_key_response() :: #{binary() => any()}.


%% Example:
%% ingest_configuration() :: #{
%%   <<"audio">> => audio_configuration(),
%%   <<"video">> => video_configuration()
%% }
-type ingest_configuration() :: #{binary() => any()}.


%% Example:
%% stream_session_summary() :: #{
%%   <<"endTime">> => non_neg_integer(),
%%   <<"hasErrorEvent">> => boolean(),
%%   <<"startTime">> => non_neg_integer(),
%%   <<"streamId">> => string()
%% }
-type stream_session_summary() :: #{binary() => any()}.


%% Example:
%% get_channel_request() :: #{
%%   <<"arn">> := string()
%% }
-type get_channel_request() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% recording_configuration() :: #{
%%   <<"arn">> => string(),
%%   <<"destinationConfiguration">> => destination_configuration(),
%%   <<"name">> => string(),
%%   <<"recordingReconnectWindowSeconds">> => integer(),
%%   <<"renditionConfiguration">> => rendition_configuration(),
%%   <<"state">> => string(),
%%   <<"tags">> => map(),
%%   <<"thumbnailConfiguration">> => thumbnail_configuration()
%% }
-type recording_configuration() :: #{binary() => any()}.


%% Example:
%% create_channel_response() :: #{
%%   <<"channel">> => channel(),
%%   <<"streamKey">> => stream_key()
%% }
-type create_channel_response() :: #{binary() => any()}.


%% Example:
%% import_playback_key_pair_request() :: #{
%%   <<"name">> => string(),
%%   <<"publicKeyMaterial">> := string(),
%%   <<"tags">> => map()
%% }
-type import_playback_key_pair_request() :: #{binary() => any()}.


%% Example:
%% get_stream_response() :: #{
%%   <<"stream">> => stream()
%% }
-type get_stream_response() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% get_stream_key_request() :: #{
%%   <<"arn">> := string()
%% }
-type get_stream_key_request() :: #{binary() => any()}.


%% Example:
%% playback_restriction_policy() :: #{
%%   <<"allowedCountries">> => list(string()()),
%%   <<"allowedOrigins">> => list(string()()),
%%   <<"arn">> => string(),
%%   <<"enableStrictOriginEnforcement">> => boolean(),
%%   <<"name">> => string(),
%%   <<"tags">> => map()
%% }
-type playback_restriction_policy() :: #{binary() => any()}.


%% Example:
%% delete_playback_restriction_policy_request() :: #{
%%   <<"arn">> := string()
%% }
-type delete_playback_restriction_policy_request() :: #{binary() => any()}.


%% Example:
%% list_stream_sessions_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"streamSessions">> := list(stream_session_summary()())
%% }
-type list_stream_sessions_response() :: #{binary() => any()}.


%% Example:
%% playback_key_pair_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"name">> => string(),
%%   <<"tags">> => map()
%% }
-type playback_key_pair_summary() :: #{binary() => any()}.


%% Example:
%% get_playback_key_pair_request() :: #{
%%   <<"arn">> := string()
%% }
-type get_playback_key_pair_request() :: #{binary() => any()}.


%% Example:
%% get_playback_restriction_policy_request() :: #{
%%   <<"arn">> := string()
%% }
-type get_playback_restriction_policy_request() :: #{binary() => any()}.


%% Example:
%% list_playback_key_pairs_response() :: #{
%%   <<"keyPairs">> := list(playback_key_pair_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_playback_key_pairs_response() :: #{binary() => any()}.


%% Example:
%% recording_configuration_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"destinationConfiguration">> => destination_configuration(),
%%   <<"name">> => string(),
%%   <<"state">> => string(),
%%   <<"tags">> => map()
%% }
-type recording_configuration_summary() :: #{binary() => any()}.


%% Example:
%% update_playback_restriction_policy_response() :: #{
%%   <<"playbackRestrictionPolicy">> => playback_restriction_policy()
%% }
-type update_playback_restriction_policy_response() :: #{binary() => any()}.


%% Example:
%% batch_get_channel_response() :: #{
%%   <<"channels">> => list(channel()()),
%%   <<"errors">> => list(batch_error()())
%% }
-type batch_get_channel_response() :: #{binary() => any()}.


%% Example:
%% create_recording_configuration_response() :: #{
%%   <<"recordingConfiguration">> => recording_configuration()
%% }
-type create_recording_configuration_response() :: #{binary() => any()}.


%% Example:
%% import_playback_key_pair_response() :: #{
%%   <<"keyPair">> => playback_key_pair()
%% }
-type import_playback_key_pair_response() :: #{binary() => any()}.

%% Example:
%% delete_playback_key_pair_response() :: #{}
-type delete_playback_key_pair_response() :: #{}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string()())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% list_stream_keys_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"streamKeys">> := list(stream_key_summary()())
%% }
-type list_stream_keys_response() :: #{binary() => any()}.


%% Example:
%% list_streams_request() :: #{
%%   <<"filterBy">> => stream_filters(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_streams_request() :: #{binary() => any()}.


%% Example:
%% get_stream_session_request() :: #{
%%   <<"channelArn">> := string(),
%%   <<"streamId">> => string()
%% }
-type get_stream_session_request() :: #{binary() => any()}.


%% Example:
%% stream_key() :: #{
%%   <<"arn">> => string(),
%%   <<"channelArn">> => string(),
%%   <<"tags">> => map(),
%%   <<"value">> => string()
%% }
-type stream_key() :: #{binary() => any()}.


%% Example:
%% batch_start_viewer_session_revocation_request() :: #{
%%   <<"viewerSessions">> := list(batch_start_viewer_session_revocation_viewer_session()())
%% }
-type batch_start_viewer_session_revocation_request() :: #{binary() => any()}.


%% Example:
%% create_recording_configuration_request() :: #{
%%   <<"destinationConfiguration">> := destination_configuration(),
%%   <<"name">> => string(),
%%   <<"recordingReconnectWindowSeconds">> => integer(),
%%   <<"renditionConfiguration">> => rendition_configuration(),
%%   <<"tags">> => map(),
%%   <<"thumbnailConfiguration">> => thumbnail_configuration()
%% }
-type create_recording_configuration_request() :: #{binary() => any()}.


%% Example:
%% create_stream_key_request() :: #{
%%   <<"channelArn">> := string(),
%%   <<"tags">> => map()
%% }
-type create_stream_key_request() :: #{binary() => any()}.


%% Example:
%% playback_key_pair() :: #{
%%   <<"arn">> => string(),
%%   <<"fingerprint">> => string(),
%%   <<"name">> => string(),
%%   <<"tags">> => map()
%% }
-type playback_key_pair() :: #{binary() => any()}.


%% Example:
%% batch_get_stream_key_request() :: #{
%%   <<"arns">> := list(string()())
%% }
-type batch_get_stream_key_request() :: #{binary() => any()}.


%% Example:
%% playback_restriction_policy_summary() :: #{
%%   <<"allowedCountries">> => list(string()()),
%%   <<"allowedOrigins">> => list(string()()),
%%   <<"arn">> => string(),
%%   <<"enableStrictOriginEnforcement">> => boolean(),
%%   <<"name">> => string(),
%%   <<"tags">> => map()
%% }
-type playback_restriction_policy_summary() :: #{binary() => any()}.


%% Example:
%% channel_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"authorized">> => boolean(),
%%   <<"insecureIngest">> => boolean(),
%%   <<"latencyMode">> => string(),
%%   <<"name">> => string(),
%%   <<"playbackRestrictionPolicyArn">> => string(),
%%   <<"preset">> => list(any()),
%%   <<"recordingConfigurationArn">> => string(),
%%   <<"tags">> => map(),
%%   <<"type">> => list(any())
%% }
-type channel_summary() :: #{binary() => any()}.


%% Example:
%% delete_recording_configuration_request() :: #{
%%   <<"arn">> := string()
%% }
-type delete_recording_configuration_request() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"exceptionMessage">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"exceptionMessage">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% list_streams_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"streams">> := list(stream_summary()())
%% }
-type list_streams_response() :: #{binary() => any()}.


%% Example:
%% get_recording_configuration_request() :: #{
%%   <<"arn">> := string()
%% }
-type get_recording_configuration_request() :: #{binary() => any()}.


%% Example:
%% list_recording_configurations_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"recordingConfigurations">> := list(recording_configuration_summary()())
%% }
-type list_recording_configurations_response() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"exceptionMessage">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% stream_session() :: #{
%%   <<"channel">> => channel(),
%%   <<"endTime">> => non_neg_integer(),
%%   <<"ingestConfiguration">> => ingest_configuration(),
%%   <<"ingestConfigurations">> => ingest_configurations(),
%%   <<"recordingConfiguration">> => recording_configuration(),
%%   <<"startTime">> => non_neg_integer(),
%%   <<"streamId">> => string(),
%%   <<"truncatedEvents">> => list(stream_event()())
%% }
-type stream_session() :: #{binary() => any()}.


%% Example:
%% batch_get_channel_request() :: #{
%%   <<"arns">> := list(string()())
%% }
-type batch_get_channel_request() :: #{binary() => any()}.


%% Example:
%% delete_stream_key_request() :: #{
%%   <<"arn">> := string()
%% }
-type delete_stream_key_request() :: #{binary() => any()}.


%% Example:
%% s3_destination_configuration() :: #{
%%   <<"bucketName">> => string()
%% }
-type s3_destination_configuration() :: #{binary() => any()}.


%% Example:
%% get_playback_restriction_policy_response() :: #{
%%   <<"playbackRestrictionPolicy">> => playback_restriction_policy()
%% }
-type get_playback_restriction_policy_response() :: #{binary() => any()}.


%% Example:
%% create_channel_request() :: #{
%%   <<"authorized">> => boolean(),
%%   <<"containerFormat">> => string(),
%%   <<"insecureIngest">> => boolean(),
%%   <<"latencyMode">> => string(),
%%   <<"multitrackInputConfiguration">> => multitrack_input_configuration(),
%%   <<"name">> => string(),
%%   <<"playbackRestrictionPolicyArn">> => string(),
%%   <<"preset">> => list(any()),
%%   <<"recordingConfigurationArn">> => string(),
%%   <<"tags">> => map(),
%%   <<"type">> => list(any())
%% }
-type create_channel_request() :: #{binary() => any()}.


%% Example:
%% stream_event() :: #{
%%   <<"code">> => string(),
%%   <<"eventTime">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"type">> => string()
%% }
-type stream_event() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> := map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% list_channels_response() :: #{
%%   <<"channels">> := list(channel_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_channels_response() :: #{binary() => any()}.


%% Example:
%% update_channel_request() :: #{
%%   <<"arn">> := string(),
%%   <<"authorized">> => boolean(),
%%   <<"containerFormat">> => string(),
%%   <<"insecureIngest">> => boolean(),
%%   <<"latencyMode">> => string(),
%%   <<"multitrackInputConfiguration">> => multitrack_input_configuration(),
%%   <<"name">> => string(),
%%   <<"playbackRestrictionPolicyArn">> => string(),
%%   <<"preset">> => list(any()),
%%   <<"recordingConfigurationArn">> => string(),
%%   <<"type">> => list(any())
%% }
-type update_channel_request() :: #{binary() => any()}.

%% Example:
%% stop_stream_response() :: #{}
-type stop_stream_response() :: #{}.


%% Example:
%% stream_unavailable() :: #{
%%   <<"exceptionMessage">> => string()
%% }
-type stream_unavailable() :: #{binary() => any()}.


%% Example:
%% delete_playback_key_pair_request() :: #{
%%   <<"arn">> := string()
%% }
-type delete_playback_key_pair_request() :: #{binary() => any()}.


%% Example:
%% create_playback_restriction_policy_response() :: #{
%%   <<"playbackRestrictionPolicy">> => playback_restriction_policy()
%% }
-type create_playback_restriction_policy_response() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"exceptionMessage">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% list_stream_sessions_request() :: #{
%%   <<"channelArn">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_stream_sessions_request() :: #{binary() => any()}.


%% Example:
%% list_playback_restriction_policies_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_playback_restriction_policies_request() :: #{binary() => any()}.


%% Example:
%% get_recording_configuration_response() :: #{
%%   <<"recordingConfiguration">> => recording_configuration()
%% }
-type get_recording_configuration_response() :: #{binary() => any()}.


%% Example:
%% get_playback_key_pair_response() :: #{
%%   <<"keyPair">> => playback_key_pair()
%% }
-type get_playback_key_pair_response() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"exceptionMessage">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% get_stream_request() :: #{
%%   <<"channelArn">> := string()
%% }
-type get_stream_request() :: #{binary() => any()}.


%% Example:
%% list_stream_keys_request() :: #{
%%   <<"channelArn">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_stream_keys_request() :: #{binary() => any()}.


%% Example:
%% audio_configuration() :: #{
%%   <<"channels">> => float(),
%%   <<"codec">> => string(),
%%   <<"sampleRate">> => float(),
%%   <<"targetBitrate">> => float(),
%%   <<"track">> => string()
%% }
-type audio_configuration() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% put_metadata_request() :: #{
%%   <<"channelArn">> := string(),
%%   <<"metadata">> := string()
%% }
-type put_metadata_request() :: #{binary() => any()}.


%% Example:
%% thumbnail_configuration() :: #{
%%   <<"recordingMode">> => string(),
%%   <<"resolution">> => list(any()),
%%   <<"storage">> => list(string()()),
%%   <<"targetIntervalSeconds">> => float()
%% }
-type thumbnail_configuration() :: #{binary() => any()}.


%% Example:
%% batch_start_viewer_session_revocation_viewer_session() :: #{
%%   <<"channelArn">> => string(),
%%   <<"viewerId">> => string(),
%%   <<"viewerSessionVersionsLessThanOrEqualTo">> => integer()
%% }
-type batch_start_viewer_session_revocation_viewer_session() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"exceptionMessage">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% rendition_configuration() :: #{
%%   <<"renditionSelection">> => string(),
%%   <<"renditions">> => list(list(any())())
%% }
-type rendition_configuration() :: #{binary() => any()}.


%% Example:
%% ingest_configurations() :: #{
%%   <<"audioConfigurations">> => list(audio_configuration()()),
%%   <<"videoConfigurations">> => list(video_configuration()())
%% }
-type ingest_configurations() :: #{binary() => any()}.


%% Example:
%% get_stream_key_response() :: #{
%%   <<"streamKey">> => stream_key()
%% }
-type get_stream_key_response() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"exceptionMessage">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% list_playback_restriction_policies_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"playbackRestrictionPolicies">> => list(playback_restriction_policy_summary()())
%% }
-type list_playback_restriction_policies_response() :: #{binary() => any()}.


%% Example:
%% channel() :: #{
%%   <<"arn">> => string(),
%%   <<"authorized">> => boolean(),
%%   <<"containerFormat">> => string(),
%%   <<"ingestEndpoint">> => string(),
%%   <<"insecureIngest">> => boolean(),
%%   <<"latencyMode">> => string(),
%%   <<"multitrackInputConfiguration">> => multitrack_input_configuration(),
%%   <<"name">> => string(),
%%   <<"playbackRestrictionPolicyArn">> => string(),
%%   <<"playbackUrl">> => string(),
%%   <<"preset">> => list(any()),
%%   <<"recordingConfigurationArn">> => string(),
%%   <<"srt">> => srt(),
%%   <<"tags">> => map(),
%%   <<"type">> => list(any())
%% }
-type channel() :: #{binary() => any()}.


%% Example:
%% stream_summary() :: #{
%%   <<"channelArn">> => string(),
%%   <<"health">> => string(),
%%   <<"startTime">> => non_neg_integer(),
%%   <<"state">> => string(),
%%   <<"streamId">> => string(),
%%   <<"viewerCount">> => float()
%% }
-type stream_summary() :: #{binary() => any()}.


%% Example:
%% batch_start_viewer_session_revocation_response() :: #{
%%   <<"errors">> => list(batch_start_viewer_session_revocation_error()())
%% }
-type batch_start_viewer_session_revocation_response() :: #{binary() => any()}.


%% Example:
%% batch_start_viewer_session_revocation_error() :: #{
%%   <<"channelArn">> => string(),
%%   <<"code">> => string(),
%%   <<"message">> => string(),
%%   <<"viewerId">> => string()
%% }
-type batch_start_viewer_session_revocation_error() :: #{binary() => any()}.


%% Example:
%% stop_stream_request() :: #{
%%   <<"channelArn">> := string()
%% }
-type stop_stream_request() :: #{binary() => any()}.


%% Example:
%% get_channel_response() :: #{
%%   <<"channel">> => channel()
%% }
-type get_channel_response() :: #{binary() => any()}.


%% Example:
%% stream_filters() :: #{
%%   <<"health">> => string()
%% }
-type stream_filters() :: #{binary() => any()}.


%% Example:
%% stream() :: #{
%%   <<"channelArn">> => string(),
%%   <<"health">> => string(),
%%   <<"playbackUrl">> => string(),
%%   <<"startTime">> => non_neg_integer(),
%%   <<"state">> => string(),
%%   <<"streamId">> => string(),
%%   <<"viewerCount">> => float()
%% }
-type stream() :: #{binary() => any()}.


%% Example:
%% start_viewer_session_revocation_request() :: #{
%%   <<"channelArn">> := string(),
%%   <<"viewerId">> := string(),
%%   <<"viewerSessionVersionsLessThanOrEqualTo">> => integer()
%% }
-type start_viewer_session_revocation_request() :: #{binary() => any()}.


%% Example:
%% update_channel_response() :: #{
%%   <<"channel">> => channel()
%% }
-type update_channel_response() :: #{binary() => any()}.


%% Example:
%% batch_error() :: #{
%%   <<"arn">> => string(),
%%   <<"code">> => string(),
%%   <<"message">> => string()
%% }
-type batch_error() :: #{binary() => any()}.

%% Example:
%% start_viewer_session_revocation_response() :: #{}
-type start_viewer_session_revocation_response() :: #{}.


%% Example:
%% video_configuration() :: #{
%%   <<"avcLevel">> => string(),
%%   <<"avcProfile">> => string(),
%%   <<"codec">> => string(),
%%   <<"encoder">> => string(),
%%   <<"level">> => string(),
%%   <<"profile">> => string(),
%%   <<"targetBitrate">> => float(),
%%   <<"targetFramerate">> => float(),
%%   <<"track">> => string(),
%%   <<"videoHeight">> => float(),
%%   <<"videoWidth">> => float()
%% }
-type video_configuration() :: #{binary() => any()}.


%% Example:
%% list_playback_key_pairs_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_playback_key_pairs_request() :: #{binary() => any()}.


%% Example:
%% list_channels_request() :: #{
%%   <<"filterByName">> => string(),
%%   <<"filterByPlaybackRestrictionPolicyArn">> => string(),
%%   <<"filterByRecordingConfigurationArn">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_channels_request() :: #{binary() => any()}.


%% Example:
%% get_stream_session_response() :: #{
%%   <<"streamSession">> => stream_session()
%% }
-type get_stream_session_response() :: #{binary() => any()}.


%% Example:
%% multitrack_input_configuration() :: #{
%%   <<"enabled">> => boolean(),
%%   <<"maximumResolution">> => list(any()),
%%   <<"policy">> => list(any())
%% }
-type multitrack_input_configuration() :: #{binary() => any()}.


%% Example:
%% stream_key_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"channelArn">> => string(),
%%   <<"tags">> => map()
%% }
-type stream_key_summary() :: #{binary() => any()}.


%% Example:
%% srt() :: #{
%%   <<"endpoint">> => string(),
%%   <<"passphrase">> => string()
%% }
-type srt() :: #{binary() => any()}.


%% Example:
%% create_playback_restriction_policy_request() :: #{
%%   <<"allowedCountries">> => list(string()()),
%%   <<"allowedOrigins">> => list(string()()),
%%   <<"enableStrictOriginEnforcement">> => boolean(),
%%   <<"name">> => string(),
%%   <<"tags">> => map()
%% }
-type create_playback_restriction_policy_request() :: #{binary() => any()}.


%% Example:
%% list_recording_configurations_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_recording_configurations_request() :: #{binary() => any()}.


%% Example:
%% pending_verification() :: #{
%%   <<"exceptionMessage">> => string()
%% }
-type pending_verification() :: #{binary() => any()}.


%% Example:
%% destination_configuration() :: #{
%%   <<"s3">> => s3_destination_configuration()
%% }
-type destination_configuration() :: #{binary() => any()}.


%% Example:
%% batch_get_stream_key_response() :: #{
%%   <<"errors">> => list(batch_error()()),
%%   <<"streamKeys">> => list(stream_key()())
%% }
-type batch_get_stream_key_response() :: #{binary() => any()}.


%% Example:
%% channel_not_broadcasting() :: #{
%%   <<"exceptionMessage">> => string()
%% }
-type channel_not_broadcasting() :: #{binary() => any()}.

-type batch_start_viewer_session_revocation_errors() ::
    pending_verification() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception().

-type create_channel_errors() ::
    pending_verification() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type create_playback_restriction_policy_errors() ::
    pending_verification() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception().

-type create_recording_configuration_errors() ::
    pending_verification() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_stream_key_errors() ::
    pending_verification() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type delete_channel_errors() ::
    pending_verification() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_playback_key_pair_errors() ::
    pending_verification() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type delete_playback_restriction_policy_errors() ::
    pending_verification() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_recording_configuration_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_stream_key_errors() ::
    pending_verification() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_channel_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_playback_key_pair_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_playback_restriction_policy_errors() ::
    pending_verification() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_recording_configuration_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_stream_errors() ::
    channel_not_broadcasting() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_stream_key_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_stream_session_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type import_playback_key_pair_errors() ::
    pending_verification() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type list_channels_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    conflict_exception().

-type list_playback_key_pairs_errors() ::
    validation_exception() | 
    access_denied_exception().

-type list_playback_restriction_policies_errors() ::
    pending_verification() | 
    validation_exception() | 
    access_denied_exception() | 
    conflict_exception().

-type list_recording_configurations_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_stream_keys_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type list_stream_sessions_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type list_streams_errors() ::
    validation_exception() | 
    access_denied_exception().

-type list_tags_for_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type put_metadata_errors() ::
    channel_not_broadcasting() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type start_viewer_session_revocation_errors() ::
    pending_verification() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type stop_stream_errors() ::
    channel_not_broadcasting() | 
    validation_exception() | 
    access_denied_exception() | 
    stream_unavailable() | 
    resource_not_found_exception().

-type tag_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_channel_errors() ::
    pending_verification() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_playback_restriction_policy_errors() ::
    pending_verification() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Performs `GetChannel' on multiple ARNs simultaneously.
-spec batch_get_channel(aws_client:aws_client(), batch_get_channel_request()) ->
    {ok, batch_get_channel_response(), tuple()} |
    {error, any()}.
batch_get_channel(Client, Input) ->
    batch_get_channel(Client, Input, []).

-spec batch_get_channel(aws_client:aws_client(), batch_get_channel_request(), proplists:proplist()) ->
    {ok, batch_get_channel_response(), tuple()} |
    {error, any()}.
batch_get_channel(Client, Input0, Options0) ->
    Method = post,
    Path = ["/BatchGetChannel"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Performs `GetStreamKey' on multiple ARNs simultaneously.
-spec batch_get_stream_key(aws_client:aws_client(), batch_get_stream_key_request()) ->
    {ok, batch_get_stream_key_response(), tuple()} |
    {error, any()}.
batch_get_stream_key(Client, Input) ->
    batch_get_stream_key(Client, Input, []).

-spec batch_get_stream_key(aws_client:aws_client(), batch_get_stream_key_request(), proplists:proplist()) ->
    {ok, batch_get_stream_key_response(), tuple()} |
    {error, any()}.
batch_get_stream_key(Client, Input0, Options0) ->
    Method = post,
    Path = ["/BatchGetStreamKey"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Performs `StartViewerSessionRevocation' on multiple channel ARN
%% and viewer
%% ID pairs simultaneously.
-spec batch_start_viewer_session_revocation(aws_client:aws_client(), batch_start_viewer_session_revocation_request()) ->
    {ok, batch_start_viewer_session_revocation_response(), tuple()} |
    {error, any()} |
    {error, batch_start_viewer_session_revocation_errors(), tuple()}.
batch_start_viewer_session_revocation(Client, Input) ->
    batch_start_viewer_session_revocation(Client, Input, []).

-spec batch_start_viewer_session_revocation(aws_client:aws_client(), batch_start_viewer_session_revocation_request(), proplists:proplist()) ->
    {ok, batch_start_viewer_session_revocation_response(), tuple()} |
    {error, any()} |
    {error, batch_start_viewer_session_revocation_errors(), tuple()}.
batch_start_viewer_session_revocation(Client, Input0, Options0) ->
    Method = post,
    Path = ["/BatchStartViewerSessionRevocation"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new channel and an associated stream key to start
%% streaming.
-spec create_channel(aws_client:aws_client(), create_channel_request()) ->
    {ok, create_channel_response(), tuple()} |
    {error, any()} |
    {error, create_channel_errors(), tuple()}.
create_channel(Client, Input) ->
    create_channel(Client, Input, []).

-spec create_channel(aws_client:aws_client(), create_channel_request(), proplists:proplist()) ->
    {ok, create_channel_response(), tuple()} |
    {error, any()} |
    {error, create_channel_errors(), tuple()}.
create_channel(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CreateChannel"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new playback restriction policy, for constraining playback
%% by countries and/or
%% origins.
-spec create_playback_restriction_policy(aws_client:aws_client(), create_playback_restriction_policy_request()) ->
    {ok, create_playback_restriction_policy_response(), tuple()} |
    {error, any()} |
    {error, create_playback_restriction_policy_errors(), tuple()}.
create_playback_restriction_policy(Client, Input) ->
    create_playback_restriction_policy(Client, Input, []).

-spec create_playback_restriction_policy(aws_client:aws_client(), create_playback_restriction_policy_request(), proplists:proplist()) ->
    {ok, create_playback_restriction_policy_response(), tuple()} |
    {error, any()} |
    {error, create_playback_restriction_policy_errors(), tuple()}.
create_playback_restriction_policy(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CreatePlaybackRestrictionPolicy"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

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
%% Known issue: In the us-east-1 region, if you use the
%% Amazon Web Services CLI to create a recording configuration, it returns
%% success even if the
%% S3 bucket is in a different region. In this case, the `state' of the
%% recording
%% configuration is `CREATE_FAILED' (instead of `ACTIVE'). (In other
%% regions, the CLI correctly returns failure if the bucket is in a different
%% region.)
%%
%% Workaround: Ensure that your S3 bucket is in the same
%% region as the recording configuration. If you create a recording
%% configuration in a different
%% region as your S3 bucket, delete that recording configuration and create a
%% new one with an S3
%% bucket from the correct region.
-spec create_recording_configuration(aws_client:aws_client(), create_recording_configuration_request()) ->
    {ok, create_recording_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_recording_configuration_errors(), tuple()}.
create_recording_configuration(Client, Input) ->
    create_recording_configuration(Client, Input, []).

-spec create_recording_configuration(aws_client:aws_client(), create_recording_configuration_request(), proplists:proplist()) ->
    {ok, create_recording_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_recording_configuration_errors(), tuple()}.
create_recording_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CreateRecordingConfiguration"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

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
%% use
%% CreateStreamKey on the same channel, it will fail because a stream key
%% already exists and
%% there is a limit of 1 stream key per channel. To reset the stream key on a
%% channel, use `DeleteStreamKey' and then CreateStreamKey.
-spec create_stream_key(aws_client:aws_client(), create_stream_key_request()) ->
    {ok, create_stream_key_response(), tuple()} |
    {error, any()} |
    {error, create_stream_key_errors(), tuple()}.
create_stream_key(Client, Input) ->
    create_stream_key(Client, Input, []).

-spec create_stream_key(aws_client:aws_client(), create_stream_key_request(), proplists:proplist()) ->
    {ok, create_stream_key_response(), tuple()} |
    {error, any()} |
    {error, create_stream_key_errors(), tuple()}.
create_stream_key(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CreateStreamKey"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

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
%% ConflictException). To
%% delete a channel that is live, call `StopStream', wait for the Amazon
%% EventBridge &quot;Stream End&quot; event (to verify that the stream's
%% state is no longer Live), then
%% call DeleteChannel. (See Using EventBridge with Amazon IVS:
%% https://docs.aws.amazon.com/ivs/latest/userguide/eventbridge.html.)
-spec delete_channel(aws_client:aws_client(), delete_channel_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_channel_errors(), tuple()}.
delete_channel(Client, Input) ->
    delete_channel(Client, Input, []).

-spec delete_channel(aws_client:aws_client(), delete_channel_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_channel_errors(), tuple()}.
delete_channel(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteChannel"],
    SuccessStatusCode = 204,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a specified authorization key pair.
%%
%% This invalidates future viewer tokens
%% generated using the key pair’s `privateKey'. For more information, see
%% Setting Up Private
%% Channels:
%% https://docs.aws.amazon.com/ivs/latest/userguide/private-channels.html in
%% the Amazon IVS User Guide.
-spec delete_playback_key_pair(aws_client:aws_client(), delete_playback_key_pair_request()) ->
    {ok, delete_playback_key_pair_response(), tuple()} |
    {error, any()} |
    {error, delete_playback_key_pair_errors(), tuple()}.
delete_playback_key_pair(Client, Input) ->
    delete_playback_key_pair(Client, Input, []).

-spec delete_playback_key_pair(aws_client:aws_client(), delete_playback_key_pair_request(), proplists:proplist()) ->
    {ok, delete_playback_key_pair_response(), tuple()} |
    {error, any()} |
    {error, delete_playback_key_pair_errors(), tuple()}.
delete_playback_key_pair(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeletePlaybackKeyPair"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified playback restriction policy.
-spec delete_playback_restriction_policy(aws_client:aws_client(), delete_playback_restriction_policy_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_playback_restriction_policy_errors(), tuple()}.
delete_playback_restriction_policy(Client, Input) ->
    delete_playback_restriction_policy(Client, Input, []).

-spec delete_playback_restriction_policy(aws_client:aws_client(), delete_playback_restriction_policy_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_playback_restriction_policy_errors(), tuple()}.
delete_playback_restriction_policy(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeletePlaybackRestrictionPolicy"],
    SuccessStatusCode = 204,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

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
%% channel, you will
%% get an error (409 ConflictException). To avoid this, for all channels that
%% reference the
%% recording configuration, first use `UpdateChannel' to set the
%% `recordingConfigurationArn' field to an empty string, then use
%% DeleteRecordingConfiguration.
-spec delete_recording_configuration(aws_client:aws_client(), delete_recording_configuration_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_recording_configuration_errors(), tuple()}.
delete_recording_configuration(Client, Input) ->
    delete_recording_configuration(Client, Input, []).

-spec delete_recording_configuration(aws_client:aws_client(), delete_recording_configuration_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_recording_configuration_errors(), tuple()}.
delete_recording_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteRecordingConfiguration"],
    SuccessStatusCode = 204,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the stream key for the specified ARN, so it can no longer be
%% used to
%% stream.
-spec delete_stream_key(aws_client:aws_client(), delete_stream_key_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_stream_key_errors(), tuple()}.
delete_stream_key(Client, Input) ->
    delete_stream_key(Client, Input, []).

-spec delete_stream_key(aws_client:aws_client(), delete_stream_key_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_stream_key_errors(), tuple()}.
delete_stream_key(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteStreamKey"],
    SuccessStatusCode = 204,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

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
-spec get_channel(aws_client:aws_client(), get_channel_request()) ->
    {ok, get_channel_response(), tuple()} |
    {error, any()} |
    {error, get_channel_errors(), tuple()}.
get_channel(Client, Input) ->
    get_channel(Client, Input, []).

-spec get_channel(aws_client:aws_client(), get_channel_request(), proplists:proplist()) ->
    {ok, get_channel_response(), tuple()} |
    {error, any()} |
    {error, get_channel_errors(), tuple()}.
get_channel(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetChannel"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets a specified playback authorization key pair and returns the
%% `arn' and
%% `fingerprint'.
%%
%% The `privateKey' held by the caller can be used to
%% generate viewer authorization tokens, to grant viewers access to private
%% channels. For more
%% information, see Setting Up Private Channels:
%% https://docs.aws.amazon.com/ivs/latest/userguide/private-channels.html in
%% the Amazon IVS User
%% Guide.
-spec get_playback_key_pair(aws_client:aws_client(), get_playback_key_pair_request()) ->
    {ok, get_playback_key_pair_response(), tuple()} |
    {error, any()} |
    {error, get_playback_key_pair_errors(), tuple()}.
get_playback_key_pair(Client, Input) ->
    get_playback_key_pair(Client, Input, []).

-spec get_playback_key_pair(aws_client:aws_client(), get_playback_key_pair_request(), proplists:proplist()) ->
    {ok, get_playback_key_pair_response(), tuple()} |
    {error, any()} |
    {error, get_playback_key_pair_errors(), tuple()}.
get_playback_key_pair(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetPlaybackKeyPair"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets the specified playback restriction policy.
-spec get_playback_restriction_policy(aws_client:aws_client(), get_playback_restriction_policy_request()) ->
    {ok, get_playback_restriction_policy_response(), tuple()} |
    {error, any()} |
    {error, get_playback_restriction_policy_errors(), tuple()}.
get_playback_restriction_policy(Client, Input) ->
    get_playback_restriction_policy(Client, Input, []).

-spec get_playback_restriction_policy(aws_client:aws_client(), get_playback_restriction_policy_request(), proplists:proplist()) ->
    {ok, get_playback_restriction_policy_response(), tuple()} |
    {error, any()} |
    {error, get_playback_restriction_policy_errors(), tuple()}.
get_playback_restriction_policy(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetPlaybackRestrictionPolicy"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets the recording configuration for the specified ARN.
-spec get_recording_configuration(aws_client:aws_client(), get_recording_configuration_request()) ->
    {ok, get_recording_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_recording_configuration_errors(), tuple()}.
get_recording_configuration(Client, Input) ->
    get_recording_configuration(Client, Input, []).

-spec get_recording_configuration(aws_client:aws_client(), get_recording_configuration_request(), proplists:proplist()) ->
    {ok, get_recording_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_recording_configuration_errors(), tuple()}.
get_recording_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetRecordingConfiguration"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets information about the active (live) stream on a specified
%% channel.
-spec get_stream(aws_client:aws_client(), get_stream_request()) ->
    {ok, get_stream_response(), tuple()} |
    {error, any()} |
    {error, get_stream_errors(), tuple()}.
get_stream(Client, Input) ->
    get_stream(Client, Input, []).

-spec get_stream(aws_client:aws_client(), get_stream_request(), proplists:proplist()) ->
    {ok, get_stream_response(), tuple()} |
    {error, any()} |
    {error, get_stream_errors(), tuple()}.
get_stream(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetStream"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets stream-key information for a specified ARN.
-spec get_stream_key(aws_client:aws_client(), get_stream_key_request()) ->
    {ok, get_stream_key_response(), tuple()} |
    {error, any()} |
    {error, get_stream_key_errors(), tuple()}.
get_stream_key(Client, Input) ->
    get_stream_key(Client, Input, []).

-spec get_stream_key(aws_client:aws_client(), get_stream_key_request(), proplists:proplist()) ->
    {ok, get_stream_key_response(), tuple()} |
    {error, any()} |
    {error, get_stream_key_errors(), tuple()}.
get_stream_key(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetStreamKey"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets metadata on a specified stream.
-spec get_stream_session(aws_client:aws_client(), get_stream_session_request()) ->
    {ok, get_stream_session_response(), tuple()} |
    {error, any()} |
    {error, get_stream_session_errors(), tuple()}.
get_stream_session(Client, Input) ->
    get_stream_session(Client, Input, []).

-spec get_stream_session(aws_client:aws_client(), get_stream_session_request(), proplists:proplist()) ->
    {ok, get_stream_session_response(), tuple()} |
    {error, any()} |
    {error, get_stream_session_errors(), tuple()}.
get_stream_session(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetStreamSession"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Imports the public portion of a new key pair and returns its
%% `arn' and
%% `fingerprint'.
%%
%% The `privateKey' can then be used to generate viewer
%% authorization tokens, to grant viewers access to private channels. For
%% more information, see
%% Setting Up
%% Private Channels:
%% https://docs.aws.amazon.com/ivs/latest/userguide/private-channels.html in
%% the Amazon IVS User Guide.
-spec import_playback_key_pair(aws_client:aws_client(), import_playback_key_pair_request()) ->
    {ok, import_playback_key_pair_response(), tuple()} |
    {error, any()} |
    {error, import_playback_key_pair_errors(), tuple()}.
import_playback_key_pair(Client, Input) ->
    import_playback_key_pair(Client, Input, []).

-spec import_playback_key_pair(aws_client:aws_client(), import_playback_key_pair_request(), proplists:proplist()) ->
    {ok, import_playback_key_pair_response(), tuple()} |
    {error, any()} |
    {error, import_playback_key_pair_errors(), tuple()}.
import_playback_key_pair(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ImportPlaybackKeyPair"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets summary information about all channels in your account, in the
%% Amazon Web Services
%% region where the API request is processed.
%%
%% This list can be filtered to match a specified name
%% or recording-configuration ARN. Filters are mutually exclusive and cannot
%% be used together. If
%% you try to use both filters, you will get an error (409
%% ConflictException).
-spec list_channels(aws_client:aws_client(), list_channels_request()) ->
    {ok, list_channels_response(), tuple()} |
    {error, any()} |
    {error, list_channels_errors(), tuple()}.
list_channels(Client, Input) ->
    list_channels(Client, Input, []).

-spec list_channels(aws_client:aws_client(), list_channels_request(), proplists:proplist()) ->
    {ok, list_channels_response(), tuple()} |
    {error, any()} |
    {error, list_channels_errors(), tuple()}.
list_channels(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListChannels"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets summary information about playback key pairs.
%%
%% For more information, see Setting Up Private
%% Channels:
%% https://docs.aws.amazon.com/ivs/latest/userguide/private-channels.html in
%% the Amazon IVS User Guide.
-spec list_playback_key_pairs(aws_client:aws_client(), list_playback_key_pairs_request()) ->
    {ok, list_playback_key_pairs_response(), tuple()} |
    {error, any()} |
    {error, list_playback_key_pairs_errors(), tuple()}.
list_playback_key_pairs(Client, Input) ->
    list_playback_key_pairs(Client, Input, []).

-spec list_playback_key_pairs(aws_client:aws_client(), list_playback_key_pairs_request(), proplists:proplist()) ->
    {ok, list_playback_key_pairs_response(), tuple()} |
    {error, any()} |
    {error, list_playback_key_pairs_errors(), tuple()}.
list_playback_key_pairs(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListPlaybackKeyPairs"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets summary information about playback restriction policies.
-spec list_playback_restriction_policies(aws_client:aws_client(), list_playback_restriction_policies_request()) ->
    {ok, list_playback_restriction_policies_response(), tuple()} |
    {error, any()} |
    {error, list_playback_restriction_policies_errors(), tuple()}.
list_playback_restriction_policies(Client, Input) ->
    list_playback_restriction_policies(Client, Input, []).

-spec list_playback_restriction_policies(aws_client:aws_client(), list_playback_restriction_policies_request(), proplists:proplist()) ->
    {ok, list_playback_restriction_policies_response(), tuple()} |
    {error, any()} |
    {error, list_playback_restriction_policies_errors(), tuple()}.
list_playback_restriction_policies(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListPlaybackRestrictionPolicies"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets summary information about all recording configurations in your
%% account, in the
%% Amazon Web Services region where the API request is processed.
-spec list_recording_configurations(aws_client:aws_client(), list_recording_configurations_request()) ->
    {ok, list_recording_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_recording_configurations_errors(), tuple()}.
list_recording_configurations(Client, Input) ->
    list_recording_configurations(Client, Input, []).

-spec list_recording_configurations(aws_client:aws_client(), list_recording_configurations_request(), proplists:proplist()) ->
    {ok, list_recording_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_recording_configurations_errors(), tuple()}.
list_recording_configurations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListRecordingConfigurations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets summary information about stream keys for the specified channel.
-spec list_stream_keys(aws_client:aws_client(), list_stream_keys_request()) ->
    {ok, list_stream_keys_response(), tuple()} |
    {error, any()} |
    {error, list_stream_keys_errors(), tuple()}.
list_stream_keys(Client, Input) ->
    list_stream_keys(Client, Input, []).

-spec list_stream_keys(aws_client:aws_client(), list_stream_keys_request(), proplists:proplist()) ->
    {ok, list_stream_keys_response(), tuple()} |
    {error, any()} |
    {error, list_stream_keys_errors(), tuple()}.
list_stream_keys(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListStreamKeys"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets a summary of current and previous streams for a specified
%% channel in your account, in
%% the AWS region where the API request is processed.
-spec list_stream_sessions(aws_client:aws_client(), list_stream_sessions_request()) ->
    {ok, list_stream_sessions_response(), tuple()} |
    {error, any()} |
    {error, list_stream_sessions_errors(), tuple()}.
list_stream_sessions(Client, Input) ->
    list_stream_sessions(Client, Input, []).

-spec list_stream_sessions(aws_client:aws_client(), list_stream_sessions_request(), proplists:proplist()) ->
    {ok, list_stream_sessions_response(), tuple()} |
    {error, any()} |
    {error, list_stream_sessions_errors(), tuple()}.
list_stream_sessions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListStreamSessions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets summary information about live streams in your account, in the
%% Amazon Web Services
%% region where the API request is processed.
-spec list_streams(aws_client:aws_client(), list_streams_request()) ->
    {ok, list_streams_response(), tuple()} |
    {error, any()} |
    {error, list_streams_errors(), tuple()}.
list_streams(Client, Input) ->
    list_streams(Client, Input, []).

-spec list_streams(aws_client:aws_client(), list_streams_request(), proplists:proplist()) ->
    {ok, list_streams_response(), tuple()} |
    {error, any()} |
    {error, list_streams_errors(), tuple()}.
list_streams(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListStreams"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets information about Amazon Web Services tags for the specified
%% ARN.
-spec list_tags_for_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Inserts metadata into the active stream of the specified channel.
%%
%% At most 5 requests per
%% second per channel are allowed, each with a maximum 1 KB payload. (If 5
%% TPS is not sufficient
%% for your needs, we recommend batching your data into a single PutMetadata
%% call.) At most 155
%% requests per second per account are allowed. Also see Embedding Metadata
%% within a Video Stream:
%% https://docs.aws.amazon.com/ivs/latest/userguide/metadata.html in
%% the Amazon IVS User Guide.
-spec put_metadata(aws_client:aws_client(), put_metadata_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_metadata_errors(), tuple()}.
put_metadata(Client, Input) ->
    put_metadata(Client, Input, []).

-spec put_metadata(aws_client:aws_client(), put_metadata_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_metadata_errors(), tuple()}.
put_metadata(Client, Input0, Options0) ->
    Method = post,
    Path = ["/PutMetadata"],
    SuccessStatusCode = 204,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Starts the process of revoking the viewer session associated with a
%% specified channel ARN
%% and viewer ID.
%%
%% Optionally, you can provide a version to revoke viewer sessions less than
%% and
%% including that version. For instructions on associating a viewer ID with a
%% viewer session, see
%% Setting Up
%% Private Channels:
%% https://docs.aws.amazon.com/ivs/latest/userguide/private-channels.html.
-spec start_viewer_session_revocation(aws_client:aws_client(), start_viewer_session_revocation_request()) ->
    {ok, start_viewer_session_revocation_response(), tuple()} |
    {error, any()} |
    {error, start_viewer_session_revocation_errors(), tuple()}.
start_viewer_session_revocation(Client, Input) ->
    start_viewer_session_revocation(Client, Input, []).

-spec start_viewer_session_revocation(aws_client:aws_client(), start_viewer_session_revocation_request(), proplists:proplist()) ->
    {ok, start_viewer_session_revocation_response(), tuple()} |
    {error, any()} |
    {error, start_viewer_session_revocation_errors(), tuple()}.
start_viewer_session_revocation(Client, Input0, Options0) ->
    Method = post,
    Path = ["/StartViewerSessionRevocation"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Disconnects the incoming RTMPS stream for the specified channel.
%%
%% Can be used in
%% conjunction with `DeleteStreamKey' to prevent further streaming to a
%% channel.
%%
%% Many streaming client-software libraries automatically reconnect a dropped
%% RTMPS
%% session, so to stop the stream permanently, you may want to first revoke
%% the
%% `streamKey' attached to the channel.
-spec stop_stream(aws_client:aws_client(), stop_stream_request()) ->
    {ok, stop_stream_response(), tuple()} |
    {error, any()} |
    {error, stop_stream_errors(), tuple()}.
stop_stream(Client, Input) ->
    stop_stream(Client, Input, []).

-spec stop_stream(aws_client:aws_client(), stop_stream_request(), proplists:proplist()) ->
    {ok, stop_stream_response(), tuple()} |
    {error, any()} |
    {error, stop_stream_errors(), tuple()}.
stop_stream(Client, Input0, Options0) ->
    Method = post,
    Path = ["/StopStream"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Adds or updates tags for the Amazon Web Services resource with the
%% specified ARN.
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes tags from the resource with the specified ARN.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

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
%% Live channels cannot be updated. You must stop the
%% ongoing stream, update the channel, and restart the stream for the changes
%% to take
%% effect.
-spec update_channel(aws_client:aws_client(), update_channel_request()) ->
    {ok, update_channel_response(), tuple()} |
    {error, any()} |
    {error, update_channel_errors(), tuple()}.
update_channel(Client, Input) ->
    update_channel(Client, Input, []).

-spec update_channel(aws_client:aws_client(), update_channel_request(), proplists:proplist()) ->
    {ok, update_channel_response(), tuple()} |
    {error, any()} |
    {error, update_channel_errors(), tuple()}.
update_channel(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UpdateChannel"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a specified playback restriction policy.
-spec update_playback_restriction_policy(aws_client:aws_client(), update_playback_restriction_policy_request()) ->
    {ok, update_playback_restriction_policy_response(), tuple()} |
    {error, any()} |
    {error, update_playback_restriction_policy_errors(), tuple()}.
update_playback_restriction_policy(Client, Input) ->
    update_playback_restriction_policy(Client, Input, []).

-spec update_playback_restriction_policy(aws_client:aws_client(), update_playback_restriction_policy_request(), proplists:proplist()) ->
    {ok, update_playback_restriction_policy_response(), tuple()} |
    {error, any()} |
    {error, update_playback_restriction_policy_errors(), tuple()}.
update_playback_restriction_policy(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UpdatePlaybackRestrictionPolicy"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

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

-spec proplists_take(any(), proplists:proplist(), any()) -> {any(), proplists:proplist()}.
proplists_take(Key, Proplist, Default) ->
  Value = proplists:get_value(Key, Proplist, Default),
  {Value, proplists:delete(Key, Proplist)}.

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
