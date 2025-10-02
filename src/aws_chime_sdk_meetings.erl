%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc The Amazon Chime SDK meetings APIs in this section allow software
%% developers to create Amazon Chime SDK meetings, set the Amazon Web
%% Services Regions for meetings, create and manage users, and send and
%% receive meeting notifications.
%%
%% For more information about the meeting APIs, see
%% Amazon Chime SDK meetings:
%% https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_Operations_Amazon_Chime_SDK_Meetings.html.
-module(aws_chime_sdk_meetings).

-export([batch_create_attendee/3,
         batch_create_attendee/4,
         batch_update_attendee_capabilities_except/3,
         batch_update_attendee_capabilities_except/4,
         create_attendee/3,
         create_attendee/4,
         create_meeting/2,
         create_meeting/3,
         create_meeting_with_attendees/2,
         create_meeting_with_attendees/3,
         delete_attendee/4,
         delete_attendee/5,
         delete_meeting/3,
         delete_meeting/4,
         get_attendee/3,
         get_attendee/5,
         get_attendee/6,
         get_meeting/2,
         get_meeting/4,
         get_meeting/5,
         list_attendees/2,
         list_attendees/4,
         list_attendees/5,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         start_meeting_transcription/3,
         start_meeting_transcription/4,
         stop_meeting_transcription/3,
         stop_meeting_transcription/4,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_attendee_capabilities/4,
         update_attendee_capabilities/5]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% update_attendee_capabilities_response() :: #{
%%   <<"Attendee">> => attendee()
%% }
-type update_attendee_capabilities_response() :: #{binary() => any()}.


%% Example:
%% notifications_configuration() :: #{
%%   <<"LambdaFunctionArn">> => string(),
%%   <<"SnsTopicArn">> => string(),
%%   <<"SqsQueueArn">> => string()
%% }
-type notifications_configuration() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"Tags">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% get_attendee_response() :: #{
%%   <<"Attendee">> => attendee()
%% }
-type get_attendee_response() :: #{binary() => any()}.


%% Example:
%% unauthorized_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type unauthorized_exception() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% create_meeting_with_attendees_request() :: #{
%%   <<"Attendees">> := list(create_attendee_request_item()),
%%   <<"ClientRequestToken">> := string(),
%%   <<"ExternalMeetingId">> := string(),
%%   <<"MediaPlacementNetworkType">> => list(any()),
%%   <<"MediaRegion">> := string(),
%%   <<"MeetingFeatures">> => meeting_features_configuration(),
%%   <<"MeetingHostId">> => string(),
%%   <<"NotificationsConfiguration">> => notifications_configuration(),
%%   <<"PrimaryMeetingId">> => string(),
%%   <<"Tags">> => list(tag()),
%%   <<"TenantIds">> => list(string())
%% }
-type create_meeting_with_attendees_request() :: #{binary() => any()}.


%% Example:
%% service_failure_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type service_failure_exception() :: #{binary() => any()}.


%% Example:
%% forbidden_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type forbidden_exception() :: #{binary() => any()}.


%% Example:
%% meeting() :: #{
%%   <<"ExternalMeetingId">> => string(),
%%   <<"MediaPlacement">> => media_placement(),
%%   <<"MediaRegion">> => string(),
%%   <<"MeetingArn">> => string(),
%%   <<"MeetingFeatures">> => meeting_features_configuration(),
%%   <<"MeetingHostId">> => string(),
%%   <<"MeetingId">> => string(),
%%   <<"PrimaryMeetingId">> => string(),
%%   <<"TenantIds">> => list(string())
%% }
-type meeting() :: #{binary() => any()}.


%% Example:
%% create_meeting_response() :: #{
%%   <<"Meeting">> => meeting()
%% }
-type create_meeting_response() :: #{binary() => any()}.


%% Example:
%% get_meeting_response() :: #{
%%   <<"Meeting">> => meeting()
%% }
-type get_meeting_response() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% stop_meeting_transcription_request() :: #{}
-type stop_meeting_transcription_request() :: #{}.


%% Example:
%% attendee_features() :: #{
%%   <<"MaxCount">> => integer()
%% }
-type attendee_features() :: #{binary() => any()}.


%% Example:
%% engine_transcribe_settings() :: #{
%%   <<"ContentIdentificationType">> => list(any()),
%%   <<"ContentRedactionType">> => list(any()),
%%   <<"EnablePartialResultsStabilization">> => boolean(),
%%   <<"IdentifyLanguage">> => boolean(),
%%   <<"LanguageCode">> => list(any()),
%%   <<"LanguageModelName">> => string(),
%%   <<"LanguageOptions">> => string(),
%%   <<"PartialResultsStability">> => list(any()),
%%   <<"PiiEntityTypes">> => string(),
%%   <<"PreferredLanguage">> => list(any()),
%%   <<"Region">> => list(any()),
%%   <<"VocabularyFilterMethod">> => list(any()),
%%   <<"VocabularyFilterName">> => string(),
%%   <<"VocabularyFilterNames">> => string(),
%%   <<"VocabularyName">> => string(),
%%   <<"VocabularyNames">> => string()
%% }
-type engine_transcribe_settings() :: #{binary() => any()}.


%% Example:
%% list_attendees_response() :: #{
%%   <<"Attendees">> => list(attendee()),
%%   <<"NextToken">> => string()
%% }
-type list_attendees_response() :: #{binary() => any()}.


%% Example:
%% create_meeting_with_attendees_response() :: #{
%%   <<"Attendees">> => list(attendee()),
%%   <<"Errors">> => list(create_attendee_error()),
%%   <<"Meeting">> => meeting()
%% }
-type create_meeting_with_attendees_response() :: #{binary() => any()}.


%% Example:
%% transcription_configuration() :: #{
%%   <<"EngineTranscribeMedicalSettings">> => engine_transcribe_medical_settings(),
%%   <<"EngineTranscribeSettings">> => engine_transcribe_settings()
%% }
-type transcription_configuration() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.

%% Example:
%% delete_meeting_request() :: #{}
-type delete_meeting_request() :: #{}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"ResourceName">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.


%% Example:
%% audio_features() :: #{
%%   <<"EchoReduction">> => list(any())
%% }
-type audio_features() :: #{binary() => any()}.


%% Example:
%% engine_transcribe_medical_settings() :: #{
%%   <<"ContentIdentificationType">> => list(any()),
%%   <<"LanguageCode">> => list(any()),
%%   <<"Region">> => list(any()),
%%   <<"Specialty">> => list(any()),
%%   <<"Type">> => list(any()),
%%   <<"VocabularyName">> => string()
%% }
-type engine_transcribe_medical_settings() :: #{binary() => any()}.


%% Example:
%% create_meeting_request() :: #{
%%   <<"ClientRequestToken">> := string(),
%%   <<"ExternalMeetingId">> := string(),
%%   <<"MediaPlacementNetworkType">> => list(any()),
%%   <<"MediaRegion">> := string(),
%%   <<"MeetingFeatures">> => meeting_features_configuration(),
%%   <<"MeetingHostId">> => string(),
%%   <<"NotificationsConfiguration">> => notifications_configuration(),
%%   <<"PrimaryMeetingId">> => string(),
%%   <<"Tags">> => list(tag()),
%%   <<"TenantIds">> => list(string())
%% }
-type create_meeting_request() :: #{binary() => any()}.


%% Example:
%% not_found_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type not_found_exception() :: #{binary() => any()}.


%% Example:
%% create_attendee_request_item() :: #{
%%   <<"Capabilities">> => attendee_capabilities(),
%%   <<"ExternalUserId">> => string()
%% }
-type create_attendee_request_item() :: #{binary() => any()}.


%% Example:
%% create_attendee_response() :: #{
%%   <<"Attendee">> => attendee()
%% }
-type create_attendee_response() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => list(tag())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% attendee_capabilities() :: #{
%%   <<"Audio">> => list(any()),
%%   <<"Content">> => list(any()),
%%   <<"Video">> => list(any())
%% }
-type attendee_capabilities() :: #{binary() => any()}.


%% Example:
%% service_unavailable_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"RetryAfterSeconds">> => string()
%% }
-type service_unavailable_exception() :: #{binary() => any()}.

%% Example:
%% get_meeting_request() :: #{}
-type get_meeting_request() :: #{}.


%% Example:
%% create_attendee_error() :: #{
%%   <<"ErrorCode">> => string(),
%%   <<"ErrorMessage">> => string(),
%%   <<"ExternalUserId">> => string()
%% }
-type create_attendee_error() :: #{binary() => any()}.


%% Example:
%% unprocessable_entity_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type unprocessable_entity_exception() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.

%% Example:
%% get_attendee_request() :: #{}
-type get_attendee_request() :: #{}.


%% Example:
%% attendee_id_item() :: #{
%%   <<"AttendeeId">> => string()
%% }
-type attendee_id_item() :: #{binary() => any()}.


%% Example:
%% meeting_features_configuration() :: #{
%%   <<"Attendee">> => attendee_features(),
%%   <<"Audio">> => audio_features(),
%%   <<"Content">> => content_features(),
%%   <<"Video">> => video_features()
%% }
-type meeting_features_configuration() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"ResourceARN">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.


%% Example:
%% content_features() :: #{
%%   <<"MaxResolution">> => list(any())
%% }
-type content_features() :: #{binary() => any()}.


%% Example:
%% update_attendee_capabilities_request() :: #{
%%   <<"Capabilities">> := attendee_capabilities()
%% }
-type update_attendee_capabilities_request() :: #{binary() => any()}.


%% Example:
%% start_meeting_transcription_request() :: #{
%%   <<"TranscriptionConfiguration">> := transcription_configuration()
%% }
-type start_meeting_transcription_request() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% batch_create_attendee_request() :: #{
%%   <<"Attendees">> := list(create_attendee_request_item())
%% }
-type batch_create_attendee_request() :: #{binary() => any()}.


%% Example:
%% batch_create_attendee_response() :: #{
%%   <<"Attendees">> => list(attendee()),
%%   <<"Errors">> => list(create_attendee_error())
%% }
-type batch_create_attendee_response() :: #{binary() => any()}.


%% Example:
%% list_attendees_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_attendees_request() :: #{binary() => any()}.


%% Example:
%% batch_update_attendee_capabilities_except_request() :: #{
%%   <<"Capabilities">> := attendee_capabilities(),
%%   <<"ExcludedAttendeeIds">> := list(attendee_id_item())
%% }
-type batch_update_attendee_capabilities_except_request() :: #{binary() => any()}.


%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% video_features() :: #{
%%   <<"MaxResolution">> => list(any())
%% }
-type video_features() :: #{binary() => any()}.


%% Example:
%% attendee() :: #{
%%   <<"AttendeeId">> => string(),
%%   <<"Capabilities">> => attendee_capabilities(),
%%   <<"ExternalUserId">> => string(),
%%   <<"JoinToken">> => string()
%% }
-type attendee() :: #{binary() => any()}.


%% Example:
%% bad_request_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type bad_request_exception() :: #{binary() => any()}.


%% Example:
%% create_attendee_request() :: #{
%%   <<"Capabilities">> => attendee_capabilities(),
%%   <<"ExternalUserId">> := string()
%% }
-type create_attendee_request() :: #{binary() => any()}.


%% Example:
%% media_placement() :: #{
%%   <<"AudioFallbackUrl">> => string(),
%%   <<"AudioHostUrl">> => string(),
%%   <<"EventIngestionUrl">> => string(),
%%   <<"ScreenDataUrl">> => string(),
%%   <<"ScreenSharingUrl">> => string(),
%%   <<"ScreenViewingUrl">> => string(),
%%   <<"SignalingUrl">> => string(),
%%   <<"TurnControlUrl">> => string()
%% }
-type media_placement() :: #{binary() => any()}.


%% Example:
%% too_many_tags_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"ResourceName">> => string()
%% }
-type too_many_tags_exception() :: #{binary() => any()}.

%% Example:
%% delete_attendee_request() :: #{}
-type delete_attendee_request() :: #{}.

-type batch_create_attendee_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    unprocessable_entity_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    forbidden_exception() | 
    service_failure_exception() | 
    unauthorized_exception().

-type batch_update_attendee_capabilities_except_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    forbidden_exception() | 
    service_failure_exception() | 
    unauthorized_exception().

-type create_attendee_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    unprocessable_entity_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    forbidden_exception() | 
    service_failure_exception() | 
    unauthorized_exception().

-type create_meeting_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    service_unavailable_exception() | 
    conflict_exception() | 
    forbidden_exception() | 
    service_failure_exception() | 
    unauthorized_exception().

-type create_meeting_with_attendees_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    service_unavailable_exception() | 
    conflict_exception() | 
    forbidden_exception() | 
    service_failure_exception() | 
    unauthorized_exception().

-type delete_attendee_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    forbidden_exception() | 
    service_failure_exception() | 
    unauthorized_exception().

-type delete_meeting_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    forbidden_exception() | 
    service_failure_exception() | 
    unauthorized_exception().

-type get_attendee_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    forbidden_exception() | 
    service_failure_exception() | 
    unauthorized_exception().

-type get_meeting_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    forbidden_exception() | 
    service_failure_exception() | 
    unauthorized_exception().

-type list_attendees_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    forbidden_exception() | 
    service_failure_exception() | 
    unauthorized_exception().

-type list_tags_for_resource_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    forbidden_exception() | 
    service_failure_exception() | 
    unauthorized_exception().

-type start_meeting_transcription_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    unprocessable_entity_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    forbidden_exception() | 
    service_failure_exception() | 
    unauthorized_exception().

-type stop_meeting_transcription_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    unprocessable_entity_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    forbidden_exception() | 
    service_failure_exception() | 
    unauthorized_exception().

-type tag_resource_errors() ::
    too_many_tags_exception() | 
    bad_request_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    forbidden_exception() | 
    service_failure_exception() | 
    unauthorized_exception().

-type untag_resource_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    forbidden_exception() | 
    service_failure_exception() | 
    unauthorized_exception().

-type update_attendee_capabilities_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    forbidden_exception() | 
    service_failure_exception() | 
    unauthorized_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates up to 100 attendees for an active Amazon Chime SDK meeting.
%%
%% For more information about the Amazon Chime SDK, see
%% Using the Amazon Chime SDK:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/meetings-sdk.html in the
%% Amazon Chime Developer Guide.
-spec batch_create_attendee(aws_client:aws_client(), binary() | list(), batch_create_attendee_request()) ->
    {ok, batch_create_attendee_response(), tuple()} |
    {error, any()} |
    {error, batch_create_attendee_errors(), tuple()}.
batch_create_attendee(Client, MeetingId, Input) ->
    batch_create_attendee(Client, MeetingId, Input, []).

-spec batch_create_attendee(aws_client:aws_client(), binary() | list(), batch_create_attendee_request(), proplists:proplist()) ->
    {ok, batch_create_attendee_response(), tuple()} |
    {error, any()} |
    {error, batch_create_attendee_errors(), tuple()}.
batch_create_attendee(Client, MeetingId, Input0, Options0) ->
    Method = post,
    Path = ["/meetings/", aws_util:encode_uri(MeetingId), "/attendees?operation=batch-create"],
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

%% @doc Updates `AttendeeCapabilities' except the capabilities listed in
%% an `ExcludedAttendeeIds' table.
%%
%% You use the capabilities with a set of values that control what the
%% capabilities can do, such as `SendReceive' data. For more information
%% about those values, see
%% .
%%
%% When using capabilities, be aware of these corner cases:
%%
%% If you specify `MeetingFeatures:Video:MaxResolution:None' when you
%% create a meeting, all API requests
%% that include `SendReceive', `Send', or `Receive' for
%% `AttendeeCapabilities:Video' will be rejected with `ValidationError
%% 400'.
%%
%% If you specify `MeetingFeatures:Content:MaxResolution:None' when you
%% create a meeting, all API requests that include `SendReceive',
%% `Send', or
%% `Receive' for `AttendeeCapabilities:Content' will be rejected with
%% `ValidationError 400'.
%%
%% You can't set `content' capabilities to `SendReceive' or
%% `Receive' unless you also set `video' capabilities to
%% `SendReceive'
%% or `Receive'. If you don't set the `video' capability to
%% receive, the response will contain an HTTP 400 Bad Request status code.
%% However, you can set your `video' capability
%% to receive and you set your `content' capability to not receive.
%%
%% If meeting features is defined as `Video:MaxResolution:None' but
%% `Content:MaxResolution' is defined as something other than
%% `None' and attendee capabilities are not defined in the API
%% request, then the default attendee video capability is set to
%% `Receive' and attendee content capability is set to
%% `SendReceive'. This is because content `SendReceive'
%% requires video to be at least `Receive'.
%%
%% When you change an `audio' capability from `None' or `Receive'
%% to `Send' or `SendReceive' ,
%% and if the attendee left their microphone unmuted, audio will flow from
%% the attendee to the other meeting participants.
%%
%% When you change a `video' or `content' capability from `None'
%% or `Receive' to `Send' or `SendReceive' ,
%% and if the attendee turned on their video or content streams, remote
%% attendees can receive those streams, but only after media renegotiation
%% between the client and the Amazon Chime back-end server.
-spec batch_update_attendee_capabilities_except(aws_client:aws_client(), binary() | list(), batch_update_attendee_capabilities_except_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, batch_update_attendee_capabilities_except_errors(), tuple()}.
batch_update_attendee_capabilities_except(Client, MeetingId, Input) ->
    batch_update_attendee_capabilities_except(Client, MeetingId, Input, []).

-spec batch_update_attendee_capabilities_except(aws_client:aws_client(), binary() | list(), batch_update_attendee_capabilities_except_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, batch_update_attendee_capabilities_except_errors(), tuple()}.
batch_update_attendee_capabilities_except(Client, MeetingId, Input0, Options0) ->
    Method = put,
    Path = ["/meetings/", aws_util:encode_uri(MeetingId), "/attendees/capabilities?operation=batch-update-except"],
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

%% @doc
%% Creates a new attendee for an active Amazon Chime SDK meeting.
%%
%% For more information about the Amazon Chime SDK, see
%% Using the Amazon Chime SDK:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/meetings-sdk.html
%% in the
%% Amazon Chime Developer Guide.
-spec create_attendee(aws_client:aws_client(), binary() | list(), create_attendee_request()) ->
    {ok, create_attendee_response(), tuple()} |
    {error, any()} |
    {error, create_attendee_errors(), tuple()}.
create_attendee(Client, MeetingId, Input) ->
    create_attendee(Client, MeetingId, Input, []).

-spec create_attendee(aws_client:aws_client(), binary() | list(), create_attendee_request(), proplists:proplist()) ->
    {ok, create_attendee_response(), tuple()} |
    {error, any()} |
    {error, create_attendee_errors(), tuple()}.
create_attendee(Client, MeetingId, Input0, Options0) ->
    Method = post,
    Path = ["/meetings/", aws_util:encode_uri(MeetingId), "/attendees"],
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

%% @doc Creates a new Amazon Chime SDK meeting in the specified media Region
%% with no initial attendees.
%%
%% For more information about specifying media Regions, see
%% Available Regions:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/sdk-available-regions and
%% Using meeting Regions:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/chime-sdk-meetings-regions.html,
%% both
%% in the Amazon Chime SDK Developer Guide. For more information about the
%% Amazon Chime SDK, see
%% Using the Amazon Chime SDK:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/meetings-sdk.html
%% in the
%% Amazon Chime SDK Developer Guide.
%%
%% If you use this API in conjuction with the and APIs, and you don't
%% specify the
%% `MeetingFeatures.Content.MaxResolution' or
%% `MeetingFeatures.Video.MaxResolution' parameters, the following
%% defaults are used:
%%
%% Content.MaxResolution: FHD
%%
%% Video.MaxResolution: HD
-spec create_meeting(aws_client:aws_client(), create_meeting_request()) ->
    {ok, create_meeting_response(), tuple()} |
    {error, any()} |
    {error, create_meeting_errors(), tuple()}.
create_meeting(Client, Input) ->
    create_meeting(Client, Input, []).

-spec create_meeting(aws_client:aws_client(), create_meeting_request(), proplists:proplist()) ->
    {ok, create_meeting_response(), tuple()} |
    {error, any()} |
    {error, create_meeting_errors(), tuple()}.
create_meeting(Client, Input0, Options0) ->
    Method = post,
    Path = ["/meetings"],
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

%% @doc
%% Creates a new Amazon Chime SDK meeting in the specified media Region, with
%% attendees.
%%
%% For more information about specifying media Regions, see
%% Available Regions:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/sdk-available-regions and
%% Using meeting Regions:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/chime-sdk-meetings-regions.html,
%% both
%% in the Amazon Chime SDK Developer Guide. For more information about the
%% Amazon Chime SDK, see
%% Using the Amazon Chime SDK:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/meetings-sdk.html
%% in the
%% Amazon Chime SDK Developer Guide.
%%
%% If you use this API in conjuction with the and APIs, and you don't
%% specify the
%% `MeetingFeatures.Content.MaxResolution' or
%% `MeetingFeatures.Video.MaxResolution' parameters, the following
%% defaults are used:
%%
%% Content.MaxResolution: FHD
%%
%% Video.MaxResolution: HD
-spec create_meeting_with_attendees(aws_client:aws_client(), create_meeting_with_attendees_request()) ->
    {ok, create_meeting_with_attendees_response(), tuple()} |
    {error, any()} |
    {error, create_meeting_with_attendees_errors(), tuple()}.
create_meeting_with_attendees(Client, Input) ->
    create_meeting_with_attendees(Client, Input, []).

-spec create_meeting_with_attendees(aws_client:aws_client(), create_meeting_with_attendees_request(), proplists:proplist()) ->
    {ok, create_meeting_with_attendees_response(), tuple()} |
    {error, any()} |
    {error, create_meeting_with_attendees_errors(), tuple()}.
create_meeting_with_attendees(Client, Input0, Options0) ->
    Method = post,
    Path = ["/meetings?operation=create-attendees"],
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

%% @doc Deletes an attendee from the specified Amazon Chime SDK meeting and
%% deletes their
%% `JoinToken'.
%%
%% Attendees are automatically deleted when a Amazon Chime SDK meeting is
%% deleted. For more information about the Amazon Chime SDK, see
%% Using the Amazon Chime SDK:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/meetings-sdk.html
%% in the Amazon Chime Developer Guide.
-spec delete_attendee(aws_client:aws_client(), binary() | list(), binary() | list(), delete_attendee_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_attendee_errors(), tuple()}.
delete_attendee(Client, AttendeeId, MeetingId, Input) ->
    delete_attendee(Client, AttendeeId, MeetingId, Input, []).

-spec delete_attendee(aws_client:aws_client(), binary() | list(), binary() | list(), delete_attendee_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_attendee_errors(), tuple()}.
delete_attendee(Client, AttendeeId, MeetingId, Input0, Options0) ->
    Method = delete,
    Path = ["/meetings/", aws_util:encode_uri(MeetingId), "/attendees/", aws_util:encode_uri(AttendeeId), ""],
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

%% @doc Deletes the specified Amazon Chime SDK meeting.
%%
%% The operation deletes all attendees, disconnects all clients, and prevents
%% new clients from
%% joining the meeting. For more information about the Amazon Chime SDK, see
%% Using the Amazon Chime SDK:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/meetings-sdk.html in the
%% Amazon Chime Developer Guide.
-spec delete_meeting(aws_client:aws_client(), binary() | list(), delete_meeting_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_meeting_errors(), tuple()}.
delete_meeting(Client, MeetingId, Input) ->
    delete_meeting(Client, MeetingId, Input, []).

-spec delete_meeting(aws_client:aws_client(), binary() | list(), delete_meeting_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_meeting_errors(), tuple()}.
delete_meeting(Client, MeetingId, Input0, Options0) ->
    Method = delete,
    Path = ["/meetings/", aws_util:encode_uri(MeetingId), ""],
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

%% @doc
%% Gets the Amazon Chime SDK attendee details for a specified meeting ID and
%% attendee ID.
%%
%% For more information about the Amazon Chime SDK, see
%% Using the Amazon Chime SDK:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/meetings-sdk.html
%% in the Amazon Chime Developer Guide.
-spec get_attendee(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_attendee_response(), tuple()} |
    {error, any()} |
    {error, get_attendee_errors(), tuple()}.
get_attendee(Client, AttendeeId, MeetingId)
  when is_map(Client) ->
    get_attendee(Client, AttendeeId, MeetingId, #{}, #{}).

-spec get_attendee(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_attendee_response(), tuple()} |
    {error, any()} |
    {error, get_attendee_errors(), tuple()}.
get_attendee(Client, AttendeeId, MeetingId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_attendee(Client, AttendeeId, MeetingId, QueryMap, HeadersMap, []).

-spec get_attendee(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_attendee_response(), tuple()} |
    {error, any()} |
    {error, get_attendee_errors(), tuple()}.
get_attendee(Client, AttendeeId, MeetingId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/meetings/", aws_util:encode_uri(MeetingId), "/attendees/", aws_util:encode_uri(AttendeeId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the Amazon Chime SDK meeting details for the specified meeting
%% ID.
%%
%% For more information about the Amazon Chime SDK, see
%% Using the Amazon Chime SDK:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/meetings-sdk.html
%% in the Amazon Chime Developer Guide.
-spec get_meeting(aws_client:aws_client(), binary() | list()) ->
    {ok, get_meeting_response(), tuple()} |
    {error, any()} |
    {error, get_meeting_errors(), tuple()}.
get_meeting(Client, MeetingId)
  when is_map(Client) ->
    get_meeting(Client, MeetingId, #{}, #{}).

-spec get_meeting(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_meeting_response(), tuple()} |
    {error, any()} |
    {error, get_meeting_errors(), tuple()}.
get_meeting(Client, MeetingId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_meeting(Client, MeetingId, QueryMap, HeadersMap, []).

-spec get_meeting(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_meeting_response(), tuple()} |
    {error, any()} |
    {error, get_meeting_errors(), tuple()}.
get_meeting(Client, MeetingId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/meetings/", aws_util:encode_uri(MeetingId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% Lists the attendees for the specified Amazon Chime SDK meeting.
%%
%% For more information about the Amazon Chime SDK, see
%% Using the Amazon Chime SDK:
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/meetings-sdk.html
%% in the Amazon Chime Developer Guide.
-spec list_attendees(aws_client:aws_client(), binary() | list()) ->
    {ok, list_attendees_response(), tuple()} |
    {error, any()} |
    {error, list_attendees_errors(), tuple()}.
list_attendees(Client, MeetingId)
  when is_map(Client) ->
    list_attendees(Client, MeetingId, #{}, #{}).

-spec list_attendees(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_attendees_response(), tuple()} |
    {error, any()} |
    {error, list_attendees_errors(), tuple()}.
list_attendees(Client, MeetingId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_attendees(Client, MeetingId, QueryMap, HeadersMap, []).

-spec list_attendees(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_attendees_response(), tuple()} |
    {error, any()} |
    {error, list_attendees_errors(), tuple()}.
list_attendees(Client, MeetingId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/meetings/", aws_util:encode_uri(MeetingId), "/attendees"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of the tags available for the specified resource.
-spec list_tags_for_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceARN)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceARN, #{}, #{}).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceARN, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceARN, QueryMap, HeadersMap, []).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceARN, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"arn">>, ResourceARN}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Starts transcription for the specified `meetingId'.
%%
%% For more information, refer to
%% Using Amazon Chime SDK live transcription
%% :
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/meeting-transcription.html
%% in the Amazon Chime SDK Developer Guide.
%%
%% If you specify an invalid configuration, a `TranscriptFailed' event
%% will be sent with the contents of the `BadRequestException' generated
%% by Amazon Transcribe.
%% For more information on each parameter and which combinations are valid,
%% refer to the
%% StartStreamTranscription:
%% https://docs.aws.amazon.com/transcribe/latest/APIReference/API_streaming_StartStreamTranscription.html
%% API in the
%% Amazon Transcribe Developer Guide.
%%
%% By default, Amazon Transcribe may use and store audio content processed by
%% the service to develop and improve Amazon Web Services AI/ML services as
%% further described in section 50 of the Amazon Web Services Service Terms:
%% https://aws.amazon.com/service-terms/. Using Amazon Transcribe
%% may be subject to federal and state laws or regulations regarding the
%% recording or interception of electronic communications. It is your and
%% your end users’
%% responsibility to comply with all applicable laws regarding the recording,
%% including properly notifying all participants in a recorded session or
%% communication
%% that the session or communication is being recorded, and obtaining all
%% necessary consents. You can opt out from Amazon Web Services using audio
%% content to develop and
%% improve AWS AI/ML services by configuring an AI services opt out policy
%% using Amazon Web Services Organizations.
-spec start_meeting_transcription(aws_client:aws_client(), binary() | list(), start_meeting_transcription_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, start_meeting_transcription_errors(), tuple()}.
start_meeting_transcription(Client, MeetingId, Input) ->
    start_meeting_transcription(Client, MeetingId, Input, []).

-spec start_meeting_transcription(aws_client:aws_client(), binary() | list(), start_meeting_transcription_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, start_meeting_transcription_errors(), tuple()}.
start_meeting_transcription(Client, MeetingId, Input0, Options0) ->
    Method = post,
    Path = ["/meetings/", aws_util:encode_uri(MeetingId), "/transcription?operation=start"],
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

%% @doc Stops transcription for the specified `meetingId'.
%%
%% For more information, refer to
%% Using Amazon Chime SDK live transcription
%% :
%% https://docs.aws.amazon.com/chime-sdk/latest/dg/meeting-transcription.html
%% in the Amazon Chime SDK Developer Guide.
%%
%% By default, Amazon Transcribe may use and store audio content processed by
%% the service to develop and improve Amazon Web Services AI/ML services as
%% further described in section 50 of the Amazon Web Services Service Terms:
%% https://aws.amazon.com/service-terms/. Using Amazon Transcribe
%% may be subject to federal and state laws or regulations regarding the
%% recording or interception of electronic communications. It is your and
%% your end users’
%% responsibility to comply with all applicable laws regarding the recording,
%% including properly notifying all participants in a recorded session or
%% communication
%% that the session or communication is being recorded, and obtaining all
%% necessary consents. You can opt out from Amazon Web Services using audio
%% content to develop and
%% improve Amazon Web Services AI/ML services by configuring an AI services
%% opt out policy using Amazon Web Services Organizations.
-spec stop_meeting_transcription(aws_client:aws_client(), binary() | list(), stop_meeting_transcription_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, stop_meeting_transcription_errors(), tuple()}.
stop_meeting_transcription(Client, MeetingId, Input) ->
    stop_meeting_transcription(Client, MeetingId, Input, []).

-spec stop_meeting_transcription(aws_client:aws_client(), binary() | list(), stop_meeting_transcription_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, stop_meeting_transcription_errors(), tuple()}.
stop_meeting_transcription(Client, MeetingId, Input0, Options0) ->
    Method = post,
    Path = ["/meetings/", aws_util:encode_uri(MeetingId), "/transcription?operation=stop"],
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

%% @doc The resource that supports tags.
-spec tag_resource(aws_client:aws_client(), tag_resource_request()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/tags?operation=tag-resource"],
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

%% @doc Removes the specified tags from the specified resources.
%%
%% When you specify a tag key, the action removes both that key and its
%% associated value. The operation succeeds even if you
%% attempt to remove tags from a resource that were already removed. Note the
%% following:
%%
%% To remove tags from a resource, you need the necessary permissions for the
%% service that the resource belongs to as well as permissions for removing
%% tags. For more information,
%% see the documentation for the service whose resource you want to untag.
%%
%% You can only tag resources that are located in the specified Amazon Web
%% Services Region for the calling Amazon Web Services account.
%%
%% Minimum permissions
%%
%% In addition to the `tag:UntagResources' permission required by this
%% operation, you must also have the remove tags permission defined by the
%% service that created the resource.
%% For example, to remove the tags from an Amazon EC2 instance using the
%% `UntagResources' operation, you must have both of the following
%% permissions:
%%
%% `tag:UntagResource'
%%
%% `ChimeSDKMeetings:DeleteTags'
-spec untag_resource(aws_client:aws_client(), untag_resource_request()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input) ->
    untag_resource(Client, Input, []).

-spec untag_resource(aws_client:aws_client(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/tags?operation=untag-resource"],
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

%% @doc The capabilities that you want to update.
%%
%% You use the capabilities with a set of values that control what the
%% capabilities can do, such as `SendReceive' data. For more information
%% about those values, see
%% .
%%
%% When using capabilities, be aware of these corner cases:
%%
%% If you specify `MeetingFeatures:Video:MaxResolution:None' when you
%% create a meeting, all API requests
%% that include `SendReceive', `Send', or `Receive' for
%% `AttendeeCapabilities:Video' will be rejected with `ValidationError
%% 400'.
%%
%% If you specify `MeetingFeatures:Content:MaxResolution:None' when you
%% create a meeting, all API requests that include `SendReceive',
%% `Send', or
%% `Receive' for `AttendeeCapabilities:Content' will be rejected with
%% `ValidationError 400'.
%%
%% You can't set `content' capabilities to `SendReceive' or
%% `Receive' unless you also set `video' capabilities to
%% `SendReceive'
%% or `Receive'. If you don't set the `video' capability to
%% receive, the response will contain an HTTP 400 Bad Request status code.
%% However, you can set your `video' capability
%% to receive and you set your `content' capability to not receive.
%%
%% If meeting features is defined as `Video:MaxResolution:None' but
%% `Content:MaxResolution' is defined as something other than
%% `None' and attendee capabilities are not defined in the API
%% request, then the default attendee video capability is set to
%% `Receive' and attendee content capability is set to
%% `SendReceive'. This is because content `SendReceive'
%% requires video to be at least `Receive'.
%%
%% When you change an `audio' capability from `None' or `Receive'
%% to `Send' or `SendReceive' ,
%% and if the attendee left their microphone unmuted, audio will flow from
%% the attendee to the other meeting participants.
%%
%% When you change a `video' or `content' capability from `None'
%% or `Receive' to `Send' or `SendReceive' ,
%% and if the attendee turned on their video or content streams, remote
%% attendees can receive those streams, but only after media renegotiation
%% between the client and the Amazon Chime back-end server.
-spec update_attendee_capabilities(aws_client:aws_client(), binary() | list(), binary() | list(), update_attendee_capabilities_request()) ->
    {ok, update_attendee_capabilities_response(), tuple()} |
    {error, any()} |
    {error, update_attendee_capabilities_errors(), tuple()}.
update_attendee_capabilities(Client, AttendeeId, MeetingId, Input) ->
    update_attendee_capabilities(Client, AttendeeId, MeetingId, Input, []).

-spec update_attendee_capabilities(aws_client:aws_client(), binary() | list(), binary() | list(), update_attendee_capabilities_request(), proplists:proplist()) ->
    {ok, update_attendee_capabilities_response(), tuple()} |
    {error, any()} |
    {error, update_attendee_capabilities_errors(), tuple()}.
update_attendee_capabilities(Client, AttendeeId, MeetingId, Input0, Options0) ->
    Method = put,
    Path = ["/meetings/", aws_util:encode_uri(MeetingId), "/attendees/", aws_util:encode_uri(AttendeeId), "/capabilities"],
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
    Client1 = Client#{service => <<"chime">>},
    Host = build_host(<<"meetings-chime">>, Client1),
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
