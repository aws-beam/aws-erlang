%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc
%% Introduction
%%
%% The Amazon Interactive Video Service (IVS) real-time API is REST
%% compatible, using a standard HTTP
%% API and an AWS EventBridge event stream for responses.
%%
%% JSON is used for both requests and responses,
%% including errors.
%%
%% Terminology:
%%
%% A stage is a virtual space where participants can exchange video in real
%% time.
%%
%% A participant token is a token that authenticates a participant when they
%% join a stage.
%%
%% A participant object represents participants (people) in the stage and
%% contains information about them. When a token is created, it includes a
%% participant ID;
%% when a participant uses that token to join a stage, the participant is
%% associated with
%% that participant ID. There is a 1:1 mapping between participant tokens and
%% participants.
%%
%% Server-side composition: The composition process composites participants
%% of a stage into a single video and forwards it to a set of outputs (e.g.,
%% IVS channels).
%% Composition endpoints support this process.
%%
%% Server-side composition: A composition controls the look of the outputs,
%% including how participants are positioned in the video.
%%
%% Resources
%%
%% The following resources contain information about your IVS live stream
%% (see Getting Started with Amazon IVS Real-Time Streaming:
%% https://docs.aws.amazon.com/ivs/latest/RealTimeUserGuide/getting-started.html):
%%
%% Stage — A stage is a virtual space where participants can exchange video
%% in real time.
%%
%% Tagging
%%
%% A tag is a metadata label that you assign to an AWS resource. A tag
%% comprises a key and a value, both set by you. For
%% example, you might set a tag as `topic:nature' to label a particular
%% video
%% category. See Tagging AWS Resources:
%% https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html for more
%% information, including restrictions that apply to
%% tags and &quot;Tag naming limits and requirements&quot;; Amazon IVS stages
%% has no service-specific
%% constraints beyond what is documented there.
%%
%% Tags can help you identify and organize your AWS resources. For example,
%% you can use the
%% same tag for different resources to indicate that they are related. You
%% can also use tags to
%% manage access (see Access Tags:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html).
%%
%% The Amazon IVS real-time API has these tag-related endpoints:
%% `TagResource', `UntagResource', and
%% `ListTagsForResource'. The following resource supports tagging: Stage.
%%
%% At most 50 tags can be applied to a resource.
%%
%% Stages Endpoints
%%
%% `CreateParticipantToken' — Creates an additional token for a specified
%% stage. This can be done after stage creation or when tokens expire.
%%
%% `CreateStage' — Creates a new stage (and optionally participant
%% tokens).
%%
%% `DeleteStage' — Shuts down and deletes the specified stage
%% (disconnecting all participants).
%%
%% `DisconnectParticipant' — Disconnects a specified participant and
%% revokes the participant permanently from a specified stage.
%%
%% `GetParticipant' — Gets information about the specified
%% participant token.
%%
%% `GetStage' — Gets information for the specified stage.
%%
%% `GetStageSession' — Gets information for the specified stage
%% session.
%%
%% `ListParticipantEvents' — Lists events for a specified
%% participant that occurred during a specified stage session.
%%
%% `ListParticipants' — Lists all participants in a specified stage
%% session.
%%
%% `ListStages' — Gets summary information about all stages in your
%% account, in the AWS region where the API request is processed.
%%
%% `ListStageSessions' — Gets all sessions for a specified stage.
%%
%% `UpdateStage' — Updates a stage’s configuration.
%%
%% Composition Endpoints
%%
%% `GetComposition' — Gets information about the specified
%% Composition resource.
%%
%% `ListCompositions' — Gets summary information about all
%% Compositions in your account, in the AWS region where the API request is
%% processed.
%%
%% `StartComposition' — Starts a Composition from a stage based on
%% the configuration provided in the request.
%%
%% `StopComposition' — Stops and deletes a Composition resource.
%% Any broadcast from the Composition resource is stopped.
%%
%% EncoderConfiguration Endpoints
%%
%% `CreateEncoderConfiguration' — Creates an EncoderConfiguration object.
%%
%% `DeleteEncoderConfiguration' — Deletes an EncoderConfiguration
%% resource. Ensures that no Compositions are using this template; otherwise,
%% returns an
%% error.
%%
%% `GetEncoderConfiguration' — Gets information about the specified
%% EncoderConfiguration resource.
%%
%% `ListEncoderConfigurations' — Gets summary information about all
%% EncoderConfigurations in your account, in the AWS region where the API
%% request is
%% processed.
%%
%% StorageConfiguration Endpoints
%%
%% `CreateStorageConfiguration' — Creates a new storage configuration,
%% used to enable
%% recording to Amazon S3.
%%
%% `DeleteStorageConfiguration' — Deletes the storage configuration for
%% the specified ARN.
%%
%% `GetStorageConfiguration' — Gets the storage configuration for the
%% specified ARN.
%%
%% `ListStorageConfigurations' — Gets summary information about all
%% storage configurations in your
%% account, in the AWS region where the API request is processed.
%%
%% Tags Endpoints
%%
%% `ListTagsForResource' — Gets information about AWS tags for the
%% specified ARN.
%%
%% `TagResource' — Adds or updates tags for the AWS resource with
%% the specified ARN.
%%
%% `UntagResource' — Removes tags from the resource with the
%% specified ARN.
-module(aws_ivs_realtime).

-export([create_encoder_configuration/2,
         create_encoder_configuration/3,
         create_participant_token/2,
         create_participant_token/3,
         create_stage/2,
         create_stage/3,
         create_storage_configuration/2,
         create_storage_configuration/3,
         delete_encoder_configuration/2,
         delete_encoder_configuration/3,
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
         get_participant/2,
         get_participant/3,
         get_stage/2,
         get_stage/3,
         get_stage_session/2,
         get_stage_session/3,
         get_storage_configuration/2,
         get_storage_configuration/3,
         list_compositions/2,
         list_compositions/3,
         list_encoder_configurations/2,
         list_encoder_configurations/3,
         list_participant_events/2,
         list_participant_events/3,
         list_participants/2,
         list_participants/3,
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
         stop_composition/2,
         stop_composition/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_stage/2,
         update_stage/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates an EncoderConfiguration object.
create_encoder_configuration(Client, Input) ->
    create_encoder_configuration(Client, Input, []).
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

%% @doc Creates an additional token for a specified stage.
%%
%% This can be done after stage creation
%% or when tokens expire. Tokens always are scoped to the stage for which
%% they are
%% created.
%%
%% Encryption keys are owned by Amazon IVS and never used directly by your
%% application.
create_participant_token(Client, Input) ->
    create_participant_token(Client, Input, []).
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
create_stage(Client, Input) ->
    create_stage(Client, Input, []).
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
create_storage_configuration(Client, Input) ->
    create_storage_configuration(Client, Input, []).
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
delete_encoder_configuration(Client, Input) ->
    delete_encoder_configuration(Client, Input, []).
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

%% @doc Shuts down and deletes the specified stage (disconnecting all
%% participants).
delete_stage(Client, Input) ->
    delete_stage(Client, Input, []).
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
delete_storage_configuration(Client, Input) ->
    delete_storage_configuration(Client, Input, []).
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

%% @doc Disconnects a specified participant and revokes the participant
%% permanently from a
%% specified stage.
disconnect_participant(Client, Input) ->
    disconnect_participant(Client, Input, []).
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
get_composition(Client, Input) ->
    get_composition(Client, Input, []).
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
get_encoder_configuration(Client, Input) ->
    get_encoder_configuration(Client, Input, []).
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

%% @doc Gets information about the specified participant token.
get_participant(Client, Input) ->
    get_participant(Client, Input, []).
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

%% @doc Gets information for the specified stage.
get_stage(Client, Input) ->
    get_stage(Client, Input, []).
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
get_stage_session(Client, Input) ->
    get_stage_session(Client, Input, []).
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
get_storage_configuration(Client, Input) ->
    get_storage_configuration(Client, Input, []).
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

%% @doc Gets summary information about all Compositions in your account, in
%% the AWS region
%% where the API request is processed.
list_compositions(Client, Input) ->
    list_compositions(Client, Input, []).
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
list_encoder_configurations(Client, Input) ->
    list_encoder_configurations(Client, Input, []).
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

%% @doc Lists events for a specified participant that occurred during a
%% specified stage
%% session.
list_participant_events(Client, Input) ->
    list_participant_events(Client, Input, []).
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

%% @doc Lists all participants in a specified stage session.
list_participants(Client, Input) ->
    list_participants(Client, Input, []).
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

%% @doc Gets all sessions for a specified stage.
list_stage_sessions(Client, Input) ->
    list_stage_sessions(Client, Input, []).
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
list_stages(Client, Input) ->
    list_stages(Client, Input, []).
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
list_storage_configurations(Client, Input) ->
    list_storage_configurations(Client, Input, []).
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
%% A Composition is an ephemeral resource that exists after this endpoint
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
start_composition(Client, Input) ->
    start_composition(Client, Input, []).
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

%% @doc Stops and deletes a Composition resource.
%%
%% Any broadcast from the Composition resource
%% is stopped.
stop_composition(Client, Input) ->
    stop_composition(Client, Input, []).
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

%% @doc Adds or updates tags for the AWS resource with the specified ARN.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
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
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
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

%% @doc Updates a stage’s configuration.
update_stage(Client, Input) ->
    update_stage(Client, Input, []).
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

-spec proplists_take(any(), proplists:proplists(), any()) -> {any(), proplists:proplists()}.
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
