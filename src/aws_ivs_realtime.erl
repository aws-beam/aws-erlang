%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc The Amazon Interactive Video Service (IVS) real-time API is REST
%% compatible, using a standard HTTP
%% API and an AWS EventBridge event stream for responses.
%%
%% JSON is used for both requests and responses,
%% including errors.
%%
%% Key Concepts
%%
%% Stage — A virtual space where participants can exchange video in real
%% time.
%%
%% Participant token — A token that authenticates a participant when they
%% join a stage.
%%
%% Participant object — Represents participants (people) in the stage and
%% contains information about them. When a token is created, it includes a
%% participant ID;
%% when a participant uses that token to join a stage, the participant is
%% associated with
%% that participant ID. There is a 1:1 mapping between participant tokens and
%% participants.
%%
%% For server-side composition:
%%
%% Composition process — Composites participants
%% of a stage into a single video and forwards it to a set of outputs (e.g.,
%% IVS channels).
%% Composition operations support this process.
%%
%% Composition — Controls the look of the outputs,
%% including how participants are positioned in the video.
%%
%% For participant replication:
%%
%% Source stage — The stage where the participant originally joined, which is
%% used as the source for
%% replication.
%%
%% Destination stage — The stage to which the participant is replicated.
%%
%% Replicated participant — A participant in a stage that is replicated to
%% one or more destination stages.
%%
%% Replica participant — A participant in a destination stage that is
%% replicated from another stage
%% (the source stage).
%%
%% For more information about your IVS live stream, also see Getting Started
%% with Amazon IVS Real-Time Streaming:
%% https://docs.aws.amazon.com/ivs/latest/RealTimeUserGuide/getting-started.html.
%%
%% Tagging
%%
%% A tag is a metadata label that you assign to an AWS resource. A tag
%% comprises a key and a value, both set by you. For
%% example, you might set a tag as `topic:nature' to label a particular
%% video
%% category. See Best practices and strategies:
%% https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html
%% in Tagging AWS Resources and Tag Editor for details, including
%% restrictions that apply to tags and &quot;Tag naming
%% limits and requirements&quot;; Amazon IVS stages has no service-specific
%% constraints beyond what is documented there.
%%
%% Tags can help you identify and organize your AWS resources. For example,
%% you can use the
%% same tag for different resources to indicate that they are related. You
%% can also use tags to
%% manage access (see Access Tags:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html).
%%
%% The Amazon IVS real-time API has these tag-related operations:
%% `TagResource', `UntagResource', and
%% `ListTagsForResource'. The following resource supports tagging: Stage.
%%
%% At most 50 tags can be applied to a resource.
-module(aws_ivs_realtime).

-export([create_encoder_configuration/2,
         create_encoder_configuration/3,
         create_ingest_configuration/2,
         create_ingest_configuration/3,
         create_participant_token/2,
         create_participant_token/3,
         create_stage/2,
         create_stage/3,
         create_storage_configuration/2,
         create_storage_configuration/3,
         delete_encoder_configuration/2,
         delete_encoder_configuration/3,
         delete_ingest_configuration/2,
         delete_ingest_configuration/3,
         delete_public_key/2,
         delete_public_key/3,
         delete_stage/2,
         delete_stage/3,
         delete_storage_configuration/2,
         delete_storage_configuration/3,
         disconnect_participant/2,
         disconnect_participant/3,
         get_composition/2,
         get_composition/3,
         get_encoder_configuration/2,
         get_encoder_configuration/3,
         get_ingest_configuration/2,
         get_ingest_configuration/3,
         get_participant/2,
         get_participant/3,
         get_public_key/2,
         get_public_key/3,
         get_stage/2,
         get_stage/3,
         get_stage_session/2,
         get_stage_session/3,
         get_storage_configuration/2,
         get_storage_configuration/3,
         import_public_key/2,
         import_public_key/3,
         list_compositions/2,
         list_compositions/3,
         list_encoder_configurations/2,
         list_encoder_configurations/3,
         list_ingest_configurations/2,
         list_ingest_configurations/3,
         list_participant_events/2,
         list_participant_events/3,
         list_participant_replicas/2,
         list_participant_replicas/3,
         list_participants/2,
         list_participants/3,
         list_public_keys/2,
         list_public_keys/3,
         list_stage_sessions/2,
         list_stage_sessions/3,
         list_stages/2,
         list_stages/3,
         list_storage_configurations/2,
         list_storage_configurations/3,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         start_composition/2,
         start_composition/3,
         start_participant_replication/2,
         start_participant_replication/3,
         stop_composition/2,
         stop_composition/3,
         stop_participant_replication/2,
         stop_participant_replication/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_ingest_configuration/2,
         update_ingest_configuration/3,
         update_stage/2,
         update_stage/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% video() :: #{
%%   <<"bitrate">> => integer(),
%%   <<"framerate">> => float(),
%%   <<"height">> => integer(),
%%   <<"width">> => integer()
%% }
-type video() :: #{binary() => any()}.


%% Example:
%% update_stage_request() :: #{
%%   <<"arn">> := string(),
%%   <<"autoParticipantRecordingConfiguration">> => auto_participant_recording_configuration(),
%%   <<"name">> => string()
%% }
-type update_stage_request() :: #{binary() => any()}.


%% Example:
%% list_participant_replicas_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"replicas">> => list(participant_replica()())
%% }
-type list_participant_replicas_response() :: #{binary() => any()}.


%% Example:
%% ingest_configuration() :: #{
%%   <<"arn">> => string(),
%%   <<"attributes">> => map(),
%%   <<"ingestProtocol">> => list(any()),
%%   <<"name">> => string(),
%%   <<"participantId">> => string(),
%%   <<"stageArn">> => string(),
%%   <<"state">> => string(),
%%   <<"streamKey">> => string(),
%%   <<"tags">> => map(),
%%   <<"userId">> => string()
%% }
-type ingest_configuration() :: #{binary() => any()}.


%% Example:
%% get_composition_response() :: #{
%%   <<"composition">> => composition()
%% }
-type get_composition_response() :: #{binary() => any()}.


%% Example:
%% stage() :: #{
%%   <<"activeSessionId">> => string(),
%%   <<"arn">> => string(),
%%   <<"autoParticipantRecordingConfiguration">> => auto_participant_recording_configuration(),
%%   <<"endpoints">> => stage_endpoints(),
%%   <<"name">> => string(),
%%   <<"tags">> => map()
%% }
-type stage() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% list_stages_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_stages_request() :: #{binary() => any()}.


%% Example:
%% composition() :: #{
%%   <<"arn">> => string(),
%%   <<"destinations">> => list(destination()()),
%%   <<"endTime">> => non_neg_integer(),
%%   <<"layout">> => layout_configuration(),
%%   <<"stageArn">> => string(),
%%   <<"startTime">> => non_neg_integer(),
%%   <<"state">> => string(),
%%   <<"tags">> => map()
%% }
-type composition() :: #{binary() => any()}.


%% Example:
%% get_storage_configuration_response() :: #{
%%   <<"storageConfiguration">> => storage_configuration()
%% }
-type get_storage_configuration_response() :: #{binary() => any()}.


%% Example:
%% create_stage_response() :: #{
%%   <<"participantTokens">> => list(participant_token()()),
%%   <<"stage">> => stage()
%% }
-type create_stage_response() :: #{binary() => any()}.


%% Example:
%% recording_configuration() :: #{
%%   <<"format">> => string(),
%%   <<"hlsConfiguration">> => composition_recording_hls_configuration()
%% }
-type recording_configuration() :: #{binary() => any()}.


%% Example:
%% participant() :: #{
%%   <<"attributes">> => map(),
%%   <<"browserName">> => string(),
%%   <<"browserVersion">> => string(),
%%   <<"firstJoinTime">> => non_neg_integer(),
%%   <<"ispName">> => string(),
%%   <<"osName">> => string(),
%%   <<"osVersion">> => string(),
%%   <<"participantId">> => string(),
%%   <<"protocol">> => list(any()),
%%   <<"published">> => boolean(),
%%   <<"recordingS3BucketName">> => string(),
%%   <<"recordingS3Prefix">> => string(),
%%   <<"recordingState">> => string(),
%%   <<"replicationState">> => string(),
%%   <<"replicationType">> => string(),
%%   <<"sdkVersion">> => string(),
%%   <<"sourceSessionId">> => string(),
%%   <<"sourceStageArn">> => string(),
%%   <<"state">> => string(),
%%   <<"userId">> => string()
%% }
-type participant() :: #{binary() => any()}.


%% Example:
%% create_ingest_configuration_response() :: #{
%%   <<"ingestConfiguration">> => ingest_configuration()
%% }
-type create_ingest_configuration_response() :: #{binary() => any()}.


%% Example:
%% participant_replica() :: #{
%%   <<"destinationSessionId">> => string(),
%%   <<"destinationStageArn">> => string(),
%%   <<"participantId">> => string(),
%%   <<"replicationState">> => string(),
%%   <<"sourceSessionId">> => string(),
%%   <<"sourceStageArn">> => string()
%% }
-type participant_replica() :: #{binary() => any()}.


%% Example:
%% get_stage_response() :: #{
%%   <<"stage">> => stage()
%% }
-type get_stage_response() :: #{binary() => any()}.


%% Example:
%% stop_composition_request() :: #{
%%   <<"arn">> := string()
%% }
-type stop_composition_request() :: #{binary() => any()}.


%% Example:
%% create_ingest_configuration_request() :: #{
%%   <<"attributes">> => map(),
%%   <<"ingestProtocol">> := list(any()),
%%   <<"insecureIngest">> => boolean(),
%%   <<"name">> => string(),
%%   <<"stageArn">> => string(),
%%   <<"tags">> => map(),
%%   <<"userId">> => string()
%% }
-type create_ingest_configuration_request() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% pip_configuration() :: #{
%%   <<"featuredParticipantAttribute">> => string(),
%%   <<"gridGap">> => integer(),
%%   <<"omitStoppedVideo">> => boolean(),
%%   <<"pipBehavior">> => list(any()),
%%   <<"pipHeight">> => integer(),
%%   <<"pipOffset">> => integer(),
%%   <<"pipParticipantAttribute">> => string(),
%%   <<"pipPosition">> => list(any()),
%%   <<"pipWidth">> => integer(),
%%   <<"videoFillMode">> => list(any())
%% }
-type pip_configuration() :: #{binary() => any()}.


%% Example:
%% list_compositions_response() :: #{
%%   <<"compositions">> => list(composition_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_compositions_response() :: #{binary() => any()}.


%% Example:
%% list_public_keys_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"publicKeys">> => list(public_key_summary()())
%% }
-type list_public_keys_response() :: #{binary() => any()}.


%% Example:
%% delete_encoder_configuration_request() :: #{
%%   <<"arn">> := string()
%% }
-type delete_encoder_configuration_request() :: #{binary() => any()}.


%% Example:
%% get_storage_configuration_request() :: #{
%%   <<"arn">> := string()
%% }
-type get_storage_configuration_request() :: #{binary() => any()}.


%% Example:
%% get_ingest_configuration_response() :: #{
%%   <<"ingestConfiguration">> => ingest_configuration()
%% }
-type get_ingest_configuration_response() :: #{binary() => any()}.


%% Example:
%% list_compositions_request() :: #{
%%   <<"filterByEncoderConfigurationArn">> => string(),
%%   <<"filterByStageArn">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_compositions_request() :: #{binary() => any()}.


%% Example:
%% participant_summary() :: #{
%%   <<"firstJoinTime">> => non_neg_integer(),
%%   <<"participantId">> => string(),
%%   <<"published">> => boolean(),
%%   <<"recordingState">> => string(),
%%   <<"replicationState">> => string(),
%%   <<"replicationType">> => string(),
%%   <<"sourceSessionId">> => string(),
%%   <<"sourceStageArn">> => string(),
%%   <<"state">> => string(),
%%   <<"userId">> => string()
%% }
-type participant_summary() :: #{binary() => any()}.


%% Example:
%% list_ingest_configurations_response() :: #{
%%   <<"ingestConfigurations">> => list(ingest_configuration_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_ingest_configurations_response() :: #{binary() => any()}.

%% Example:
%% disconnect_participant_response() :: #{}
-type disconnect_participant_response() :: #{}.


%% Example:
%% stage_endpoints() :: #{
%%   <<"events">> => string(),
%%   <<"rtmp">> => string(),
%%   <<"rtmps">> => string(),
%%   <<"whip">> => string()
%% }
-type stage_endpoints() :: #{binary() => any()}.


%% Example:
%% get_stage_session_request() :: #{
%%   <<"sessionId">> := string(),
%%   <<"stageArn">> := string()
%% }
-type get_stage_session_request() :: #{binary() => any()}.


%% Example:
%% get_stage_session_response() :: #{
%%   <<"stageSession">> => stage_session()
%% }
-type get_stage_session_response() :: #{binary() => any()}.


%% Example:
%% list_participant_replicas_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"participantId">> := string(),
%%   <<"sourceStageArn">> := string()
%% }
-type list_participant_replicas_request() :: #{binary() => any()}.


%% Example:
%% update_stage_response() :: #{
%%   <<"stage">> => stage()
%% }
-type update_stage_response() :: #{binary() => any()}.


%% Example:
%% participant_token_configuration() :: #{
%%   <<"attributes">> => map(),
%%   <<"capabilities">> => list(string()()),
%%   <<"duration">> => integer(),
%%   <<"userId">> => string()
%% }
-type participant_token_configuration() :: #{binary() => any()}.


%% Example:
%% update_ingest_configuration_request() :: #{
%%   <<"arn">> := string(),
%%   <<"stageArn">> => string()
%% }
-type update_ingest_configuration_request() :: #{binary() => any()}.


%% Example:
%% storage_configuration_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"name">> => string(),
%%   <<"s3">> => s3_storage_configuration(),
%%   <<"tags">> => map()
%% }
-type storage_configuration_summary() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string()())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% import_public_key_response() :: #{
%%   <<"publicKey">> => public_key()
%% }
-type import_public_key_response() :: #{binary() => any()}.


%% Example:
%% list_encoder_configurations_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_encoder_configurations_request() :: #{binary() => any()}.


%% Example:
%% get_stage_request() :: #{
%%   <<"arn">> := string()
%% }
-type get_stage_request() :: #{binary() => any()}.


%% Example:
%% list_public_keys_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_public_keys_request() :: #{binary() => any()}.


%% Example:
%% start_composition_response() :: #{
%%   <<"composition">> => composition()
%% }
-type start_composition_response() :: #{binary() => any()}.


%% Example:
%% start_composition_request() :: #{
%%   <<"destinations">> := list(destination_configuration()()),
%%   <<"idempotencyToken">> => string(),
%%   <<"layout">> => layout_configuration(),
%%   <<"stageArn">> := string(),
%%   <<"tags">> => map()
%% }
-type start_composition_request() :: #{binary() => any()}.


%% Example:
%% delete_stage_request() :: #{
%%   <<"arn">> := string()
%% }
-type delete_stage_request() :: #{binary() => any()}.


%% Example:
%% get_composition_request() :: #{
%%   <<"arn">> := string()
%% }
-type get_composition_request() :: #{binary() => any()}.


%% Example:
%% get_encoder_configuration_response() :: #{
%%   <<"encoderConfiguration">> => encoder_configuration()
%% }
-type get_encoder_configuration_response() :: #{binary() => any()}.


%% Example:
%% list_storage_configurations_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_storage_configurations_request() :: #{binary() => any()}.


%% Example:
%% disconnect_participant_request() :: #{
%%   <<"participantId">> := string(),
%%   <<"reason">> => string(),
%%   <<"stageArn">> := string()
%% }
-type disconnect_participant_request() :: #{binary() => any()}.


%% Example:
%% start_participant_replication_response() :: #{
%%   <<"accessControlAllowOrigin">> => string(),
%%   <<"accessControlExposeHeaders">> => string(),
%%   <<"cacheControl">> => string(),
%%   <<"contentSecurityPolicy">> => string(),
%%   <<"strictTransportSecurity">> => string(),
%%   <<"xContentTypeOptions">> => string(),
%%   <<"xFrameOptions">> => string()
%% }
-type start_participant_replication_response() :: #{binary() => any()}.


%% Example:
%% list_storage_configurations_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"storageConfigurations">> => list(storage_configuration_summary()())
%% }
-type list_storage_configurations_response() :: #{binary() => any()}.


%% Example:
%% delete_public_key_request() :: #{
%%   <<"arn">> := string()
%% }
-type delete_public_key_request() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"accessControlAllowOrigin">> => string(),
%%   <<"accessControlExposeHeaders">> => string(),
%%   <<"cacheControl">> => string(),
%%   <<"contentSecurityPolicy">> => string(),
%%   <<"exceptionMessage">> => string(),
%%   <<"strictTransportSecurity">> => string(),
%%   <<"xAmznErrorType">> => string(),
%%   <<"xContentTypeOptions">> => string(),
%%   <<"xFrameOptions">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"accessControlAllowOrigin">> => string(),
%%   <<"accessControlExposeHeaders">> => string(),
%%   <<"cacheControl">> => string(),
%%   <<"contentSecurityPolicy">> => string(),
%%   <<"exceptionMessage">> => string(),
%%   <<"strictTransportSecurity">> => string(),
%%   <<"xAmznErrorType">> => string(),
%%   <<"xContentTypeOptions">> => string(),
%%   <<"xFrameOptions">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% delete_ingest_configuration_request() :: #{
%%   <<"arn">> := string(),
%%   <<"force">> => boolean()
%% }
-type delete_ingest_configuration_request() :: #{binary() => any()}.


%% Example:
%% list_participants_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"participants">> => list(participant_summary()())
%% }
-type list_participants_response() :: #{binary() => any()}.


%% Example:
%% list_ingest_configurations_request() :: #{
%%   <<"filterByStageArn">> => string(),
%%   <<"filterByState">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_ingest_configurations_request() :: #{binary() => any()}.


%% Example:
%% channel_destination_configuration() :: #{
%%   <<"channelArn">> => string(),
%%   <<"encoderConfigurationArn">> => string()
%% }
-type channel_destination_configuration() :: #{binary() => any()}.


%% Example:
%% get_participant_response() :: #{
%%   <<"participant">> => participant()
%% }
-type get_participant_response() :: #{binary() => any()}.


%% Example:
%% list_participants_request() :: #{
%%   <<"filterByPublished">> => boolean(),
%%   <<"filterByRecordingState">> => string(),
%%   <<"filterByState">> => string(),
%%   <<"filterByUserId">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"sessionId">> := string(),
%%   <<"stageArn">> := string()
%% }
-type list_participants_request() :: #{binary() => any()}.


%% Example:
%% participant_recording_hls_configuration() :: #{
%%   <<"targetSegmentDurationSeconds">> => integer()
%% }
-type participant_recording_hls_configuration() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"accessControlAllowOrigin">> => string(),
%%   <<"accessControlExposeHeaders">> => string(),
%%   <<"cacheControl">> => string(),
%%   <<"contentSecurityPolicy">> => string(),
%%   <<"exceptionMessage">> => string(),
%%   <<"strictTransportSecurity">> => string(),
%%   <<"xAmznErrorType">> => string(),
%%   <<"xContentTypeOptions">> => string(),
%%   <<"xFrameOptions">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% list_stage_sessions_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"stageArn">> := string()
%% }
-type list_stage_sessions_request() :: #{binary() => any()}.


%% Example:
%% create_storage_configuration_response() :: #{
%%   <<"storageConfiguration">> => storage_configuration()
%% }
-type create_storage_configuration_response() :: #{binary() => any()}.


%% Example:
%% auto_participant_recording_configuration() :: #{
%%   <<"hlsConfiguration">> => participant_recording_hls_configuration(),
%%   <<"mediaTypes">> => list(list(any())()),
%%   <<"recordParticipantReplicas">> => boolean(),
%%   <<"recordingReconnectWindowSeconds">> => integer(),
%%   <<"storageConfigurationArn">> => string(),
%%   <<"thumbnailConfiguration">> => participant_thumbnail_configuration()
%% }
-type auto_participant_recording_configuration() :: #{binary() => any()}.


%% Example:
%% create_participant_token_response() :: #{
%%   <<"participantToken">> => participant_token()
%% }
-type create_participant_token_response() :: #{binary() => any()}.


%% Example:
%% s3_destination_configuration() :: #{
%%   <<"encoderConfigurationArns">> => list(string()()),
%%   <<"recordingConfiguration">> => recording_configuration(),
%%   <<"storageConfigurationArn">> => string(),
%%   <<"thumbnailConfigurations">> => list(composition_thumbnail_configuration()())
%% }
-type s3_destination_configuration() :: #{binary() => any()}.


%% Example:
%% destination_summary() :: #{
%%   <<"endTime">> => non_neg_integer(),
%%   <<"id">> => string(),
%%   <<"startTime">> => non_neg_integer(),
%%   <<"state">> => string()
%% }
-type destination_summary() :: #{binary() => any()}.


%% Example:
%% storage_configuration() :: #{
%%   <<"arn">> => string(),
%%   <<"name">> => string(),
%%   <<"s3">> => s3_storage_configuration(),
%%   <<"tags">> => map()
%% }
-type storage_configuration() :: #{binary() => any()}.


%% Example:
%% list_stage_sessions_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"stageSessions">> => list(stage_session_summary()())
%% }
-type list_stage_sessions_response() :: #{binary() => any()}.


%% Example:
%% participant_thumbnail_configuration() :: #{
%%   <<"recordingMode">> => list(any()),
%%   <<"storage">> => list(list(any())()),
%%   <<"targetIntervalSeconds">> => integer()
%% }
-type participant_thumbnail_configuration() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> := map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% encoder_configuration() :: #{
%%   <<"arn">> => string(),
%%   <<"name">> => string(),
%%   <<"tags">> => map(),
%%   <<"video">> => video()
%% }
-type encoder_configuration() :: #{binary() => any()}.


%% Example:
%% public_key() :: #{
%%   <<"arn">> => string(),
%%   <<"fingerprint">> => string(),
%%   <<"name">> => string(),
%%   <<"publicKeyMaterial">> => string(),
%%   <<"tags">> => map()
%% }
-type public_key() :: #{binary() => any()}.


%% Example:
%% encoder_configuration_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"name">> => string(),
%%   <<"tags">> => map()
%% }
-type encoder_configuration_summary() :: #{binary() => any()}.


%% Example:
%% update_ingest_configuration_response() :: #{
%%   <<"ingestConfiguration">> => ingest_configuration()
%% }
-type update_ingest_configuration_response() :: #{binary() => any()}.


%% Example:
%% stage_session_summary() :: #{
%%   <<"endTime">> => non_neg_integer(),
%%   <<"sessionId">> => string(),
%%   <<"startTime">> => non_neg_integer()
%% }
-type stage_session_summary() :: #{binary() => any()}.

%% Example:
%% delete_stage_response() :: #{}
-type delete_stage_response() :: #{}.


%% Example:
%% create_stage_request() :: #{
%%   <<"autoParticipantRecordingConfiguration">> => auto_participant_recording_configuration(),
%%   <<"name">> => string(),
%%   <<"participantTokenConfigurations">> => list(participant_token_configuration()()),
%%   <<"tags">> => map()
%% }
-type create_stage_request() :: #{binary() => any()}.


%% Example:
%% s3_detail() :: #{
%%   <<"recordingPrefix">> => string()
%% }
-type s3_detail() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"accessControlAllowOrigin">> => string(),
%%   <<"accessControlExposeHeaders">> => string(),
%%   <<"cacheControl">> => string(),
%%   <<"contentSecurityPolicy">> => string(),
%%   <<"exceptionMessage">> => string(),
%%   <<"strictTransportSecurity">> => string(),
%%   <<"xAmznErrorType">> => string(),
%%   <<"xContentTypeOptions">> => string(),
%%   <<"xFrameOptions">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% create_participant_token_request() :: #{
%%   <<"attributes">> => map(),
%%   <<"capabilities">> => list(string()()),
%%   <<"duration">> => integer(),
%%   <<"stageArn">> := string(),
%%   <<"userId">> => string()
%% }
-type create_participant_token_request() :: #{binary() => any()}.


%% Example:
%% import_public_key_request() :: #{
%%   <<"name">> => string(),
%%   <<"publicKeyMaterial">> := string(),
%%   <<"tags">> => map()
%% }
-type import_public_key_request() :: #{binary() => any()}.


%% Example:
%% ingest_configuration_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"ingestProtocol">> => list(any()),
%%   <<"name">> => string(),
%%   <<"participantId">> => string(),
%%   <<"stageArn">> => string(),
%%   <<"state">> => string(),
%%   <<"userId">> => string()
%% }
-type ingest_configuration_summary() :: #{binary() => any()}.

%% Example:
%% delete_public_key_response() :: #{}
-type delete_public_key_response() :: #{}.


%% Example:
%% list_stages_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"stages">> := list(stage_summary()())
%% }
-type list_stages_response() :: #{binary() => any()}.


%% Example:
%% event() :: #{
%%   <<"destinationSessionId">> => string(),
%%   <<"destinationStageArn">> => string(),
%%   <<"errorCode">> => list(any()),
%%   <<"eventTime">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"participantId">> => string(),
%%   <<"remoteParticipantId">> => string(),
%%   <<"replica">> => boolean()
%% }
-type event() :: #{binary() => any()}.


%% Example:
%% list_encoder_configurations_response() :: #{
%%   <<"encoderConfigurations">> => list(encoder_configuration_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_encoder_configurations_response() :: #{binary() => any()}.


%% Example:
%% get_public_key_request() :: #{
%%   <<"arn">> := string()
%% }
-type get_public_key_request() :: #{binary() => any()}.


%% Example:
%% get_participant_request() :: #{
%%   <<"participantId">> := string(),
%%   <<"sessionId">> := string(),
%%   <<"stageArn">> := string()
%% }
-type get_participant_request() :: #{binary() => any()}.


%% Example:
%% get_public_key_response() :: #{
%%   <<"publicKey">> => public_key()
%% }
-type get_public_key_response() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"accessControlAllowOrigin">> => string(),
%%   <<"accessControlExposeHeaders">> => string(),
%%   <<"cacheControl">> => string(),
%%   <<"contentSecurityPolicy">> => string(),
%%   <<"exceptionMessage">> => string(),
%%   <<"strictTransportSecurity">> => string(),
%%   <<"xAmznErrorType">> => string(),
%%   <<"xContentTypeOptions">> => string(),
%%   <<"xFrameOptions">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% stop_participant_replication_request() :: #{
%%   <<"destinationStageArn">> := string(),
%%   <<"participantId">> := string(),
%%   <<"sourceStageArn">> := string()
%% }
-type stop_participant_replication_request() :: #{binary() => any()}.

%% Example:
%% delete_storage_configuration_response() :: #{}
-type delete_storage_configuration_response() :: #{}.


%% Example:
%% list_participant_events_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"participantId">> := string(),
%%   <<"sessionId">> := string(),
%%   <<"stageArn">> := string()
%% }
-type list_participant_events_request() :: #{binary() => any()}.


%% Example:
%% stop_participant_replication_response() :: #{
%%   <<"accessControlAllowOrigin">> => string(),
%%   <<"accessControlExposeHeaders">> => string(),
%%   <<"cacheControl">> => string(),
%%   <<"contentSecurityPolicy">> => string(),
%%   <<"strictTransportSecurity">> => string(),
%%   <<"xContentTypeOptions">> => string(),
%%   <<"xFrameOptions">> => string()
%% }
-type stop_participant_replication_response() :: #{binary() => any()}.


%% Example:
%% composition_recording_hls_configuration() :: #{
%%   <<"targetSegmentDurationSeconds">> => integer()
%% }
-type composition_recording_hls_configuration() :: #{binary() => any()}.


%% Example:
%% grid_configuration() :: #{
%%   <<"featuredParticipantAttribute">> => string(),
%%   <<"gridGap">> => integer(),
%%   <<"omitStoppedVideo">> => boolean(),
%%   <<"videoAspectRatio">> => list(any()),
%%   <<"videoFillMode">> => list(any())
%% }
-type grid_configuration() :: #{binary() => any()}.


%% Example:
%% get_ingest_configuration_request() :: #{
%%   <<"arn">> := string()
%% }
-type get_ingest_configuration_request() :: #{binary() => any()}.


%% Example:
%% composition_thumbnail_configuration() :: #{
%%   <<"storage">> => list(list(any())()),
%%   <<"targetIntervalSeconds">> => integer()
%% }
-type composition_thumbnail_configuration() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"accessControlAllowOrigin">> => string(),
%%   <<"accessControlExposeHeaders">> => string(),
%%   <<"cacheControl">> => string(),
%%   <<"contentSecurityPolicy">> => string(),
%%   <<"exceptionMessage">> => string(),
%%   <<"strictTransportSecurity">> => string(),
%%   <<"xAmznErrorType">> => string(),
%%   <<"xContentTypeOptions">> => string(),
%%   <<"xFrameOptions">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% destination() :: #{
%%   <<"configuration">> => destination_configuration(),
%%   <<"detail">> => destination_detail(),
%%   <<"endTime">> => non_neg_integer(),
%%   <<"id">> => string(),
%%   <<"startTime">> => non_neg_integer(),
%%   <<"state">> => string()
%% }
-type destination() :: #{binary() => any()}.


%% Example:
%% participant_token() :: #{
%%   <<"attributes">> => map(),
%%   <<"capabilities">> => list(string()()),
%%   <<"duration">> => integer(),
%%   <<"expirationTime">> => non_neg_integer(),
%%   <<"participantId">> => string(),
%%   <<"token">> => string(),
%%   <<"userId">> => string()
%% }
-type participant_token() :: #{binary() => any()}.

%% Example:
%% stop_composition_response() :: #{}
-type stop_composition_response() :: #{}.


%% Example:
%% start_participant_replication_request() :: #{
%%   <<"attributes">> => map(),
%%   <<"destinationStageArn">> := string(),
%%   <<"participantId">> := string(),
%%   <<"reconnectWindowSeconds">> => integer(),
%%   <<"sourceStageArn">> := string()
%% }
-type start_participant_replication_request() :: #{binary() => any()}.


%% Example:
%% create_storage_configuration_request() :: #{
%%   <<"name">> => string(),
%%   <<"s3">> := s3_storage_configuration(),
%%   <<"tags">> => map()
%% }
-type create_storage_configuration_request() :: #{binary() => any()}.


%% Example:
%% destination_detail() :: #{
%%   <<"s3">> => s3_detail()
%% }
-type destination_detail() :: #{binary() => any()}.


%% Example:
%% get_encoder_configuration_request() :: #{
%%   <<"arn">> := string()
%% }
-type get_encoder_configuration_request() :: #{binary() => any()}.


%% Example:
%% public_key_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"name">> => string(),
%%   <<"tags">> => map()
%% }
-type public_key_summary() :: #{binary() => any()}.


%% Example:
%% create_encoder_configuration_request() :: #{
%%   <<"name">> => string(),
%%   <<"tags">> => map(),
%%   <<"video">> => video()
%% }
-type create_encoder_configuration_request() :: #{binary() => any()}.


%% Example:
%% s3_storage_configuration() :: #{
%%   <<"bucketName">> => string()
%% }
-type s3_storage_configuration() :: #{binary() => any()}.


%% Example:
%% stage_session() :: #{
%%   <<"endTime">> => non_neg_integer(),
%%   <<"sessionId">> => string(),
%%   <<"startTime">> => non_neg_integer()
%% }
-type stage_session() :: #{binary() => any()}.


%% Example:
%% stage_summary() :: #{
%%   <<"activeSessionId">> => string(),
%%   <<"arn">> => string(),
%%   <<"name">> => string(),
%%   <<"tags">> => map()
%% }
-type stage_summary() :: #{binary() => any()}.


%% Example:
%% delete_storage_configuration_request() :: #{
%%   <<"arn">> := string()
%% }
-type delete_storage_configuration_request() :: #{binary() => any()}.


%% Example:
%% composition_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"destinations">> => list(destination_summary()()),
%%   <<"endTime">> => non_neg_integer(),
%%   <<"stageArn">> => string(),
%%   <<"startTime">> => non_neg_integer(),
%%   <<"state">> => string(),
%%   <<"tags">> => map()
%% }
-type composition_summary() :: #{binary() => any()}.

%% Example:
%% delete_encoder_configuration_response() :: #{}
-type delete_encoder_configuration_response() :: #{}.


%% Example:
%% create_encoder_configuration_response() :: #{
%%   <<"encoderConfiguration">> => encoder_configuration()
%% }
-type create_encoder_configuration_response() :: #{binary() => any()}.


%% Example:
%% layout_configuration() :: #{
%%   <<"grid">> => grid_configuration(),
%%   <<"pip">> => pip_configuration()
%% }
-type layout_configuration() :: #{binary() => any()}.


%% Example:
%% pending_verification() :: #{
%%   <<"accessControlAllowOrigin">> => string(),
%%   <<"accessControlExposeHeaders">> => string(),
%%   <<"cacheControl">> => string(),
%%   <<"contentSecurityPolicy">> => string(),
%%   <<"exceptionMessage">> => string(),
%%   <<"strictTransportSecurity">> => string(),
%%   <<"xAmznErrorType">> => string(),
%%   <<"xContentTypeOptions">> => string(),
%%   <<"xFrameOptions">> => string()
%% }
-type pending_verification() :: #{binary() => any()}.


%% Example:
%% destination_configuration() :: #{
%%   <<"channel">> => channel_destination_configuration(),
%%   <<"name">> => string(),
%%   <<"s3">> => s3_destination_configuration()
%% }
-type destination_configuration() :: #{binary() => any()}.


%% Example:
%% list_participant_events_response() :: #{
%%   <<"events">> => list(event()()),
%%   <<"nextToken">> => string()
%% }
-type list_participant_events_response() :: #{binary() => any()}.

%% Example:
%% delete_ingest_configuration_response() :: #{}
-type delete_ingest_configuration_response() :: #{}.

-type create_encoder_configuration_errors() ::
    pending_verification() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_ingest_configuration_errors() ::
    pending_verification() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception().

-type create_participant_token_errors() ::
    pending_verification() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type create_stage_errors() ::
    pending_verification() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception().

-type create_storage_configuration_errors() ::
    pending_verification() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_encoder_configuration_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_ingest_configuration_errors() ::
    pending_verification() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_public_key_errors() ::
    pending_verification() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_stage_errors() ::
    pending_verification() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_storage_configuration_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type disconnect_participant_errors() ::
    pending_verification() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_composition_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_encoder_configuration_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_ingest_configuration_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_participant_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_public_key_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_stage_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_stage_session_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_storage_configuration_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type import_public_key_errors() ::
    pending_verification() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type list_compositions_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type list_encoder_configurations_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type list_ingest_configurations_errors() ::
    validation_exception() | 
    access_denied_exception().

-type list_participant_events_errors() ::
    validation_exception() | 
    access_denied_exception().

-type list_participant_replicas_errors() ::
    validation_exception() | 
    access_denied_exception().

-type list_participants_errors() ::
    validation_exception() | 
    access_denied_exception().

-type list_public_keys_errors() ::
    validation_exception() | 
    access_denied_exception().

-type list_stage_sessions_errors() ::
    validation_exception() | 
    access_denied_exception().

-type list_stages_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    conflict_exception().

-type list_storage_configurations_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type list_tags_for_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type start_composition_errors() ::
    pending_verification() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type start_participant_replication_errors() ::
    pending_verification() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type stop_composition_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type stop_participant_replication_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type tag_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_ingest_configuration_errors() ::
    pending_verification() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_stage_errors() ::
    pending_verification() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates an EncoderConfiguration object.
-spec create_encoder_configuration(aws_client:aws_client(), create_encoder_configuration_request()) ->
    {ok, create_encoder_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_encoder_configuration_errors(), tuple()}.
create_encoder_configuration(Client, Input) ->
    create_encoder_configuration(Client, Input, []).

-spec create_encoder_configuration(aws_client:aws_client(), create_encoder_configuration_request(), proplists:proplist()) ->
    {ok, create_encoder_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_encoder_configuration_errors(), tuple()}.
create_encoder_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CreateEncoderConfiguration"],
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

%% @doc Creates a new IngestConfiguration resource, used to specify the
%% ingest protocol for a stage.
-spec create_ingest_configuration(aws_client:aws_client(), create_ingest_configuration_request()) ->
    {ok, create_ingest_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_ingest_configuration_errors(), tuple()}.
create_ingest_configuration(Client, Input) ->
    create_ingest_configuration(Client, Input, []).

-spec create_ingest_configuration(aws_client:aws_client(), create_ingest_configuration_request(), proplists:proplist()) ->
    {ok, create_ingest_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_ingest_configuration_errors(), tuple()}.
create_ingest_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CreateIngestConfiguration"],
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

%% @doc Creates an additional token for a specified stage.
%%
%% This can be done after stage creation
%% or when tokens expire. Tokens always are scoped to the stage for which
%% they are
%% created.
%%
%% Encryption keys are owned by Amazon IVS and never used directly by your
%% application.
-spec create_participant_token(aws_client:aws_client(), create_participant_token_request()) ->
    {ok, create_participant_token_response(), tuple()} |
    {error, any()} |
    {error, create_participant_token_errors(), tuple()}.
create_participant_token(Client, Input) ->
    create_participant_token(Client, Input, []).

-spec create_participant_token(aws_client:aws_client(), create_participant_token_request(), proplists:proplist()) ->
    {ok, create_participant_token_response(), tuple()} |
    {error, any()} |
    {error, create_participant_token_errors(), tuple()}.
create_participant_token(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CreateParticipantToken"],
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

%% @doc Creates a new stage (and optionally participant tokens).
-spec create_stage(aws_client:aws_client(), create_stage_request()) ->
    {ok, create_stage_response(), tuple()} |
    {error, any()} |
    {error, create_stage_errors(), tuple()}.
create_stage(Client, Input) ->
    create_stage(Client, Input, []).

-spec create_stage(aws_client:aws_client(), create_stage_request(), proplists:proplist()) ->
    {ok, create_stage_response(), tuple()} |
    {error, any()} |
    {error, create_stage_errors(), tuple()}.
create_stage(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CreateStage"],
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

%% @doc Creates a new storage configuration, used to enable recording to
%% Amazon S3.
%%
%% When a StorageConfiguration is created, IVS will modify the S3
%% bucketPolicy of the provided bucket.
%% This will ensure that IVS has sufficient permissions to write content to
%% the provided bucket.
-spec create_storage_configuration(aws_client:aws_client(), create_storage_configuration_request()) ->
    {ok, create_storage_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_storage_configuration_errors(), tuple()}.
create_storage_configuration(Client, Input) ->
    create_storage_configuration(Client, Input, []).

-spec create_storage_configuration(aws_client:aws_client(), create_storage_configuration_request(), proplists:proplist()) ->
    {ok, create_storage_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_storage_configuration_errors(), tuple()}.
create_storage_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CreateStorageConfiguration"],
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

%% @doc Deletes an EncoderConfiguration resource.
%%
%% Ensures that no Compositions are using this
%% template; otherwise, returns an error.
-spec delete_encoder_configuration(aws_client:aws_client(), delete_encoder_configuration_request()) ->
    {ok, delete_encoder_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_encoder_configuration_errors(), tuple()}.
delete_encoder_configuration(Client, Input) ->
    delete_encoder_configuration(Client, Input, []).

-spec delete_encoder_configuration(aws_client:aws_client(), delete_encoder_configuration_request(), proplists:proplist()) ->
    {ok, delete_encoder_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_encoder_configuration_errors(), tuple()}.
delete_encoder_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteEncoderConfiguration"],
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

%% @doc Deletes a specified IngestConfiguration, so it can no longer be used
%% to broadcast.
%%
%% An IngestConfiguration cannot be deleted if the publisher is actively
%% streaming to a stage, unless `force' is set to `true'.
-spec delete_ingest_configuration(aws_client:aws_client(), delete_ingest_configuration_request()) ->
    {ok, delete_ingest_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_ingest_configuration_errors(), tuple()}.
delete_ingest_configuration(Client, Input) ->
    delete_ingest_configuration(Client, Input, []).

-spec delete_ingest_configuration(aws_client:aws_client(), delete_ingest_configuration_request(), proplists:proplist()) ->
    {ok, delete_ingest_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_ingest_configuration_errors(), tuple()}.
delete_ingest_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteIngestConfiguration"],
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

%% @doc Deletes the specified public key used to sign stage participant
%% tokens.
%%
%% This invalidates future participant tokens generated using the key pair’s
%% private key.
-spec delete_public_key(aws_client:aws_client(), delete_public_key_request()) ->
    {ok, delete_public_key_response(), tuple()} |
    {error, any()} |
    {error, delete_public_key_errors(), tuple()}.
delete_public_key(Client, Input) ->
    delete_public_key(Client, Input, []).

-spec delete_public_key(aws_client:aws_client(), delete_public_key_request(), proplists:proplist()) ->
    {ok, delete_public_key_response(), tuple()} |
    {error, any()} |
    {error, delete_public_key_errors(), tuple()}.
delete_public_key(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeletePublicKey"],
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

%% @doc Shuts down and deletes the specified stage (disconnecting all
%% participants).
%%
%% This operation also
%% removes the `stageArn' from the associated `IngestConfiguration',
%% if there are participants
%% using the IngestConfiguration to publish to the stage.
-spec delete_stage(aws_client:aws_client(), delete_stage_request()) ->
    {ok, delete_stage_response(), tuple()} |
    {error, any()} |
    {error, delete_stage_errors(), tuple()}.
delete_stage(Client, Input) ->
    delete_stage(Client, Input, []).

-spec delete_stage(aws_client:aws_client(), delete_stage_request(), proplists:proplist()) ->
    {ok, delete_stage_response(), tuple()} |
    {error, any()} |
    {error, delete_stage_errors(), tuple()}.
delete_stage(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteStage"],
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

%% @doc Deletes the storage configuration for the specified ARN.
%%
%% If you try to delete a storage configuration that is used by a
%% Composition, you will get an error (409 ConflictException).
%% To avoid this, for all Compositions that reference the storage
%% configuration, first use `StopComposition' and wait for it to
%% complete,
%% then use DeleteStorageConfiguration.
-spec delete_storage_configuration(aws_client:aws_client(), delete_storage_configuration_request()) ->
    {ok, delete_storage_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_storage_configuration_errors(), tuple()}.
delete_storage_configuration(Client, Input) ->
    delete_storage_configuration(Client, Input, []).

-spec delete_storage_configuration(aws_client:aws_client(), delete_storage_configuration_request(), proplists:proplist()) ->
    {ok, delete_storage_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_storage_configuration_errors(), tuple()}.
delete_storage_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteStorageConfiguration"],
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

%% @doc Disconnects a specified participant from a specified stage.
%%
%% If the participant is publishing using
%% an `IngestConfiguration', DisconnectParticipant also updates the
%% `stageArn'
%% in the IngestConfiguration to be an empty string.
-spec disconnect_participant(aws_client:aws_client(), disconnect_participant_request()) ->
    {ok, disconnect_participant_response(), tuple()} |
    {error, any()} |
    {error, disconnect_participant_errors(), tuple()}.
disconnect_participant(Client, Input) ->
    disconnect_participant(Client, Input, []).

-spec disconnect_participant(aws_client:aws_client(), disconnect_participant_request(), proplists:proplist()) ->
    {ok, disconnect_participant_response(), tuple()} |
    {error, any()} |
    {error, disconnect_participant_errors(), tuple()}.
disconnect_participant(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DisconnectParticipant"],
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

%% @doc Get information about the specified Composition resource.
-spec get_composition(aws_client:aws_client(), get_composition_request()) ->
    {ok, get_composition_response(), tuple()} |
    {error, any()} |
    {error, get_composition_errors(), tuple()}.
get_composition(Client, Input) ->
    get_composition(Client, Input, []).

-spec get_composition(aws_client:aws_client(), get_composition_request(), proplists:proplist()) ->
    {ok, get_composition_response(), tuple()} |
    {error, any()} |
    {error, get_composition_errors(), tuple()}.
get_composition(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetComposition"],
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

%% @doc Gets information about the specified EncoderConfiguration resource.
-spec get_encoder_configuration(aws_client:aws_client(), get_encoder_configuration_request()) ->
    {ok, get_encoder_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_encoder_configuration_errors(), tuple()}.
get_encoder_configuration(Client, Input) ->
    get_encoder_configuration(Client, Input, []).

-spec get_encoder_configuration(aws_client:aws_client(), get_encoder_configuration_request(), proplists:proplist()) ->
    {ok, get_encoder_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_encoder_configuration_errors(), tuple()}.
get_encoder_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetEncoderConfiguration"],
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

%% @doc Gets information about the specified IngestConfiguration.
-spec get_ingest_configuration(aws_client:aws_client(), get_ingest_configuration_request()) ->
    {ok, get_ingest_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_ingest_configuration_errors(), tuple()}.
get_ingest_configuration(Client, Input) ->
    get_ingest_configuration(Client, Input, []).

-spec get_ingest_configuration(aws_client:aws_client(), get_ingest_configuration_request(), proplists:proplist()) ->
    {ok, get_ingest_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_ingest_configuration_errors(), tuple()}.
get_ingest_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetIngestConfiguration"],
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

%% @doc Gets information about the specified participant token.
-spec get_participant(aws_client:aws_client(), get_participant_request()) ->
    {ok, get_participant_response(), tuple()} |
    {error, any()} |
    {error, get_participant_errors(), tuple()}.
get_participant(Client, Input) ->
    get_participant(Client, Input, []).

-spec get_participant(aws_client:aws_client(), get_participant_request(), proplists:proplist()) ->
    {ok, get_participant_response(), tuple()} |
    {error, any()} |
    {error, get_participant_errors(), tuple()}.
get_participant(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetParticipant"],
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

%% @doc Gets information for the specified public key.
-spec get_public_key(aws_client:aws_client(), get_public_key_request()) ->
    {ok, get_public_key_response(), tuple()} |
    {error, any()} |
    {error, get_public_key_errors(), tuple()}.
get_public_key(Client, Input) ->
    get_public_key(Client, Input, []).

-spec get_public_key(aws_client:aws_client(), get_public_key_request(), proplists:proplist()) ->
    {ok, get_public_key_response(), tuple()} |
    {error, any()} |
    {error, get_public_key_errors(), tuple()}.
get_public_key(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetPublicKey"],
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

%% @doc Gets information for the specified stage.
-spec get_stage(aws_client:aws_client(), get_stage_request()) ->
    {ok, get_stage_response(), tuple()} |
    {error, any()} |
    {error, get_stage_errors(), tuple()}.
get_stage(Client, Input) ->
    get_stage(Client, Input, []).

-spec get_stage(aws_client:aws_client(), get_stage_request(), proplists:proplist()) ->
    {ok, get_stage_response(), tuple()} |
    {error, any()} |
    {error, get_stage_errors(), tuple()}.
get_stage(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetStage"],
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

%% @doc Gets information for the specified stage session.
-spec get_stage_session(aws_client:aws_client(), get_stage_session_request()) ->
    {ok, get_stage_session_response(), tuple()} |
    {error, any()} |
    {error, get_stage_session_errors(), tuple()}.
get_stage_session(Client, Input) ->
    get_stage_session(Client, Input, []).

-spec get_stage_session(aws_client:aws_client(), get_stage_session_request(), proplists:proplist()) ->
    {ok, get_stage_session_response(), tuple()} |
    {error, any()} |
    {error, get_stage_session_errors(), tuple()}.
get_stage_session(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetStageSession"],
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

%% @doc Gets the storage configuration for the specified ARN.
-spec get_storage_configuration(aws_client:aws_client(), get_storage_configuration_request()) ->
    {ok, get_storage_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_storage_configuration_errors(), tuple()}.
get_storage_configuration(Client, Input) ->
    get_storage_configuration(Client, Input, []).

-spec get_storage_configuration(aws_client:aws_client(), get_storage_configuration_request(), proplists:proplist()) ->
    {ok, get_storage_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_storage_configuration_errors(), tuple()}.
get_storage_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetStorageConfiguration"],
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

%% @doc Import a public key to be used for signing stage participant tokens.
-spec import_public_key(aws_client:aws_client(), import_public_key_request()) ->
    {ok, import_public_key_response(), tuple()} |
    {error, any()} |
    {error, import_public_key_errors(), tuple()}.
import_public_key(Client, Input) ->
    import_public_key(Client, Input, []).

-spec import_public_key(aws_client:aws_client(), import_public_key_request(), proplists:proplist()) ->
    {ok, import_public_key_response(), tuple()} |
    {error, any()} |
    {error, import_public_key_errors(), tuple()}.
import_public_key(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ImportPublicKey"],
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

%% @doc Gets summary information about all Compositions in your account, in
%% the AWS region
%% where the API request is processed.
-spec list_compositions(aws_client:aws_client(), list_compositions_request()) ->
    {ok, list_compositions_response(), tuple()} |
    {error, any()} |
    {error, list_compositions_errors(), tuple()}.
list_compositions(Client, Input) ->
    list_compositions(Client, Input, []).

-spec list_compositions(aws_client:aws_client(), list_compositions_request(), proplists:proplist()) ->
    {ok, list_compositions_response(), tuple()} |
    {error, any()} |
    {error, list_compositions_errors(), tuple()}.
list_compositions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListCompositions"],
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

%% @doc Gets summary information about all EncoderConfigurations in your
%% account, in the AWS
%% region where the API request is processed.
-spec list_encoder_configurations(aws_client:aws_client(), list_encoder_configurations_request()) ->
    {ok, list_encoder_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_encoder_configurations_errors(), tuple()}.
list_encoder_configurations(Client, Input) ->
    list_encoder_configurations(Client, Input, []).

-spec list_encoder_configurations(aws_client:aws_client(), list_encoder_configurations_request(), proplists:proplist()) ->
    {ok, list_encoder_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_encoder_configurations_errors(), tuple()}.
list_encoder_configurations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListEncoderConfigurations"],
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

%% @doc Lists all IngestConfigurations in your account, in the AWS region
%% where the API request is processed.
-spec list_ingest_configurations(aws_client:aws_client(), list_ingest_configurations_request()) ->
    {ok, list_ingest_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_ingest_configurations_errors(), tuple()}.
list_ingest_configurations(Client, Input) ->
    list_ingest_configurations(Client, Input, []).

-spec list_ingest_configurations(aws_client:aws_client(), list_ingest_configurations_request(), proplists:proplist()) ->
    {ok, list_ingest_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_ingest_configurations_errors(), tuple()}.
list_ingest_configurations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListIngestConfigurations"],
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

%% @doc Lists events for a specified participant that occurred during a
%% specified stage
%% session.
-spec list_participant_events(aws_client:aws_client(), list_participant_events_request()) ->
    {ok, list_participant_events_response(), tuple()} |
    {error, any()} |
    {error, list_participant_events_errors(), tuple()}.
list_participant_events(Client, Input) ->
    list_participant_events(Client, Input, []).

-spec list_participant_events(aws_client:aws_client(), list_participant_events_request(), proplists:proplist()) ->
    {ok, list_participant_events_response(), tuple()} |
    {error, any()} |
    {error, list_participant_events_errors(), tuple()}.
list_participant_events(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListParticipantEvents"],
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

%% @doc Lists all the replicas for a participant from a source stage.
-spec list_participant_replicas(aws_client:aws_client(), list_participant_replicas_request()) ->
    {ok, list_participant_replicas_response(), tuple()} |
    {error, any()} |
    {error, list_participant_replicas_errors(), tuple()}.
list_participant_replicas(Client, Input) ->
    list_participant_replicas(Client, Input, []).

-spec list_participant_replicas(aws_client:aws_client(), list_participant_replicas_request(), proplists:proplist()) ->
    {ok, list_participant_replicas_response(), tuple()} |
    {error, any()} |
    {error, list_participant_replicas_errors(), tuple()}.
list_participant_replicas(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListParticipantReplicas"],
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

%% @doc Lists all participants in a specified stage session.
-spec list_participants(aws_client:aws_client(), list_participants_request()) ->
    {ok, list_participants_response(), tuple()} |
    {error, any()} |
    {error, list_participants_errors(), tuple()}.
list_participants(Client, Input) ->
    list_participants(Client, Input, []).

-spec list_participants(aws_client:aws_client(), list_participants_request(), proplists:proplist()) ->
    {ok, list_participants_response(), tuple()} |
    {error, any()} |
    {error, list_participants_errors(), tuple()}.
list_participants(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListParticipants"],
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

%% @doc Gets summary information about all public keys in your account, in
%% the AWS region where the API request is processed.
-spec list_public_keys(aws_client:aws_client(), list_public_keys_request()) ->
    {ok, list_public_keys_response(), tuple()} |
    {error, any()} |
    {error, list_public_keys_errors(), tuple()}.
list_public_keys(Client, Input) ->
    list_public_keys(Client, Input, []).

-spec list_public_keys(aws_client:aws_client(), list_public_keys_request(), proplists:proplist()) ->
    {ok, list_public_keys_response(), tuple()} |
    {error, any()} |
    {error, list_public_keys_errors(), tuple()}.
list_public_keys(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListPublicKeys"],
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

%% @doc Gets all sessions for a specified stage.
-spec list_stage_sessions(aws_client:aws_client(), list_stage_sessions_request()) ->
    {ok, list_stage_sessions_response(), tuple()} |
    {error, any()} |
    {error, list_stage_sessions_errors(), tuple()}.
list_stage_sessions(Client, Input) ->
    list_stage_sessions(Client, Input, []).

-spec list_stage_sessions(aws_client:aws_client(), list_stage_sessions_request(), proplists:proplist()) ->
    {ok, list_stage_sessions_response(), tuple()} |
    {error, any()} |
    {error, list_stage_sessions_errors(), tuple()}.
list_stage_sessions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListStageSessions"],
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

%% @doc Gets summary information about all stages in your account, in the AWS
%% region where the
%% API request is processed.
-spec list_stages(aws_client:aws_client(), list_stages_request()) ->
    {ok, list_stages_response(), tuple()} |
    {error, any()} |
    {error, list_stages_errors(), tuple()}.
list_stages(Client, Input) ->
    list_stages(Client, Input, []).

-spec list_stages(aws_client:aws_client(), list_stages_request(), proplists:proplist()) ->
    {ok, list_stages_response(), tuple()} |
    {error, any()} |
    {error, list_stages_errors(), tuple()}.
list_stages(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListStages"],
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

%% @doc Gets summary information about all storage configurations in your
%% account,
%% in the AWS region where the API request is processed.
-spec list_storage_configurations(aws_client:aws_client(), list_storage_configurations_request()) ->
    {ok, list_storage_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_storage_configurations_errors(), tuple()}.
list_storage_configurations(Client, Input) ->
    list_storage_configurations(Client, Input, []).

-spec list_storage_configurations(aws_client:aws_client(), list_storage_configurations_request(), proplists:proplist()) ->
    {ok, list_storage_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_storage_configurations_errors(), tuple()}.
list_storage_configurations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListStorageConfigurations"],
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

%% @doc Gets information about AWS tags for the specified ARN.
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

%% @doc Starts a Composition from a stage based on the configuration provided
%% in the
%% request.
%%
%% A Composition is an ephemeral resource that exists after this operation
%% returns
%% successfully. Composition stops and the resource is deleted:
%%
%% When `StopComposition' is called.
%%
%% After a 1-minute timeout, when all participants are disconnected from the
%% stage.
%%
%% After a 1-minute timeout, if there are no participants in the stage when
%% StartComposition is called.
%%
%% When broadcasting to the IVS channel fails and all retries are exhausted.
%%
%% When broadcasting is disconnected and all attempts to reconnect are
%% exhausted.
-spec start_composition(aws_client:aws_client(), start_composition_request()) ->
    {ok, start_composition_response(), tuple()} |
    {error, any()} |
    {error, start_composition_errors(), tuple()}.
start_composition(Client, Input) ->
    start_composition(Client, Input, []).

-spec start_composition(aws_client:aws_client(), start_composition_request(), proplists:proplist()) ->
    {ok, start_composition_response(), tuple()} |
    {error, any()} |
    {error, start_composition_errors(), tuple()}.
start_composition(Client, Input0, Options0) ->
    Method = post,
    Path = ["/StartComposition"],
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

%% @doc Starts replicating a publishing participant from a source stage to a
%% destination stage.
-spec start_participant_replication(aws_client:aws_client(), start_participant_replication_request()) ->
    {ok, start_participant_replication_response(), tuple()} |
    {error, any()} |
    {error, start_participant_replication_errors(), tuple()}.
start_participant_replication(Client, Input) ->
    start_participant_replication(Client, Input, []).

-spec start_participant_replication(aws_client:aws_client(), start_participant_replication_request(), proplists:proplist()) ->
    {ok, start_participant_replication_response(), tuple()} |
    {error, any()} |
    {error, start_participant_replication_errors(), tuple()}.
start_participant_replication(Client, Input0, Options0) ->
    Method = post,
    Path = ["/StartParticipantReplication"],
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

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"Access-Control-Allow-Origin">>, <<"accessControlAllowOrigin">>},
            {<<"Access-Control-Expose-Headers">>, <<"accessControlExposeHeaders">>},
            {<<"Cache-Control">>, <<"cacheControl">>},
            {<<"Content-Security-Policy">>, <<"contentSecurityPolicy">>},
            {<<"Strict-Transport-Security">>, <<"strictTransportSecurity">>},
            {<<"X-Content-Type-Options">>, <<"xContentTypeOptions">>},
            {<<"X-Frame-Options">>, <<"xFrameOptions">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Stops and deletes a Composition resource.
%%
%% Any broadcast from the Composition resource
%% is stopped.
-spec stop_composition(aws_client:aws_client(), stop_composition_request()) ->
    {ok, stop_composition_response(), tuple()} |
    {error, any()} |
    {error, stop_composition_errors(), tuple()}.
stop_composition(Client, Input) ->
    stop_composition(Client, Input, []).

-spec stop_composition(aws_client:aws_client(), stop_composition_request(), proplists:proplist()) ->
    {ok, stop_composition_response(), tuple()} |
    {error, any()} |
    {error, stop_composition_errors(), tuple()}.
stop_composition(Client, Input0, Options0) ->
    Method = post,
    Path = ["/StopComposition"],
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

%% @doc Stops a replicated participant session.
-spec stop_participant_replication(aws_client:aws_client(), stop_participant_replication_request()) ->
    {ok, stop_participant_replication_response(), tuple()} |
    {error, any()} |
    {error, stop_participant_replication_errors(), tuple()}.
stop_participant_replication(Client, Input) ->
    stop_participant_replication(Client, Input, []).

-spec stop_participant_replication(aws_client:aws_client(), stop_participant_replication_request(), proplists:proplist()) ->
    {ok, stop_participant_replication_response(), tuple()} |
    {error, any()} |
    {error, stop_participant_replication_errors(), tuple()}.
stop_participant_replication(Client, Input0, Options0) ->
    Method = post,
    Path = ["/StopParticipantReplication"],
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

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"Access-Control-Allow-Origin">>, <<"accessControlAllowOrigin">>},
            {<<"Access-Control-Expose-Headers">>, <<"accessControlExposeHeaders">>},
            {<<"Cache-Control">>, <<"cacheControl">>},
            {<<"Content-Security-Policy">>, <<"contentSecurityPolicy">>},
            {<<"Strict-Transport-Security">>, <<"strictTransportSecurity">>},
            {<<"X-Content-Type-Options">>, <<"xContentTypeOptions">>},
            {<<"X-Frame-Options">>, <<"xFrameOptions">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Adds or updates tags for the AWS resource with the specified ARN.
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

%% @doc Updates a specified IngestConfiguration.
%%
%% Only the stage ARN attached to the IngestConfiguration can be updated. An
%% IngestConfiguration that is active cannot be updated.
-spec update_ingest_configuration(aws_client:aws_client(), update_ingest_configuration_request()) ->
    {ok, update_ingest_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_ingest_configuration_errors(), tuple()}.
update_ingest_configuration(Client, Input) ->
    update_ingest_configuration(Client, Input, []).

-spec update_ingest_configuration(aws_client:aws_client(), update_ingest_configuration_request(), proplists:proplist()) ->
    {ok, update_ingest_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_ingest_configuration_errors(), tuple()}.
update_ingest_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UpdateIngestConfiguration"],
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

%% @doc Updates a stage’s configuration.
-spec update_stage(aws_client:aws_client(), update_stage_request()) ->
    {ok, update_stage_response(), tuple()} |
    {error, any()} |
    {error, update_stage_errors(), tuple()}.
update_stage(Client, Input) ->
    update_stage(Client, Input, []).

-spec update_stage(aws_client:aws_client(), update_stage_request(), proplists:proplist()) ->
    {ok, update_stage_response(), tuple()} |
    {error, any()} |
    {error, update_stage_errors(), tuple()}.
update_stage(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UpdateStage"],
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
    Host = build_host(<<"ivsrealtime">>, Client1),
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
