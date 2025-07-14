%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS Elastic Transcoder Service
%%
%% The AWS Elastic Transcoder Service.
-module(aws_elastic_transcoder).

-export([cancel_job/3,
         cancel_job/4,
         create_job/2,
         create_job/3,
         create_pipeline/2,
         create_pipeline/3,
         create_preset/2,
         create_preset/3,
         delete_pipeline/3,
         delete_pipeline/4,
         delete_preset/3,
         delete_preset/4,
         list_jobs_by_pipeline/2,
         list_jobs_by_pipeline/4,
         list_jobs_by_pipeline/5,
         list_jobs_by_status/2,
         list_jobs_by_status/4,
         list_jobs_by_status/5,
         list_pipelines/1,
         list_pipelines/3,
         list_pipelines/4,
         list_presets/1,
         list_presets/3,
         list_presets/4,
         read_job/2,
         read_job/4,
         read_job/5,
         read_pipeline/2,
         read_pipeline/4,
         read_pipeline/5,
         read_preset/2,
         read_preset/4,
         read_preset/5,
         test_role/2,
         test_role/3,
         update_pipeline/3,
         update_pipeline/4,
         update_pipeline_notifications/3,
         update_pipeline_notifications/4,
         update_pipeline_status/3,
         update_pipeline_status/4]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% cancel_job_request() :: #{}
-type cancel_job_request() :: #{}.

%% Example:
%% delete_preset_response() :: #{}
-type delete_preset_response() :: #{}.


%% Example:
%% list_pipelines_response() :: #{
%%   <<"NextPageToken">> => string(),
%%   <<"Pipelines">> => list(pipeline())
%% }
-type list_pipelines_response() :: #{binary() => any()}.


%% Example:
%% create_job_playlist() :: #{
%%   <<"Format">> => string(),
%%   <<"HlsContentProtection">> => hls_content_protection(),
%%   <<"Name">> => string(),
%%   <<"OutputKeys">> => list(string()),
%%   <<"PlayReadyDrm">> => play_ready_drm()
%% }
-type create_job_playlist() :: #{binary() => any()}.


%% Example:
%% update_pipeline_response() :: #{
%%   <<"Pipeline">> => pipeline(),
%%   <<"Warnings">> => list(warning())
%% }
-type update_pipeline_response() :: #{binary() => any()}.


%% Example:
%% create_job_response() :: #{
%%   <<"Job">> => job()
%% }
-type create_job_response() :: #{binary() => any()}.


%% Example:
%% list_pipelines_request() :: #{
%%   <<"Ascending">> => string(),
%%   <<"PageToken">> => string()
%% }
-type list_pipelines_request() :: #{binary() => any()}.


%% Example:
%% create_preset_request() :: #{
%%   <<"Audio">> => audio_parameters(),
%%   <<"Container">> := string(),
%%   <<"Description">> => string(),
%%   <<"Name">> := string(),
%%   <<"Thumbnails">> => thumbnails(),
%%   <<"Video">> => video_parameters()
%% }
-type create_preset_request() :: #{binary() => any()}.


%% Example:
%% captions() :: #{
%%   <<"CaptionFormats">> => list(caption_format()),
%%   <<"CaptionSources">> => list(caption_source()),
%%   <<"MergePolicy">> => string()
%% }
-type captions() :: #{binary() => any()}.


%% Example:
%% list_presets_request() :: #{
%%   <<"Ascending">> => string(),
%%   <<"PageToken">> => string()
%% }
-type list_presets_request() :: #{binary() => any()}.


%% Example:
%% resource_in_use_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_in_use_exception() :: #{binary() => any()}.


%% Example:
%% create_pipeline_response() :: #{
%%   <<"Pipeline">> => pipeline(),
%%   <<"Warnings">> => list(warning())
%% }
-type create_pipeline_response() :: #{binary() => any()}.


%% Example:
%% test_role_request() :: #{
%%   <<"InputBucket">> := string(),
%%   <<"OutputBucket">> := string(),
%%   <<"Role">> := string(),
%%   <<"Topics">> := list(string())
%% }
-type test_role_request() :: #{binary() => any()}.


%% Example:
%% input_captions() :: #{
%%   <<"CaptionSources">> => list(caption_source()),
%%   <<"MergePolicy">> => string()
%% }
-type input_captions() :: #{binary() => any()}.


%% Example:
%% read_pipeline_response() :: #{
%%   <<"Pipeline">> => pipeline(),
%%   <<"Warnings">> => list(warning())
%% }
-type read_pipeline_response() :: #{binary() => any()}.


%% Example:
%% pipeline() :: #{
%%   <<"Arn">> => string(),
%%   <<"AwsKmsKeyArn">> => string(),
%%   <<"ContentConfig">> => pipeline_output_config(),
%%   <<"Id">> => string(),
%%   <<"InputBucket">> => string(),
%%   <<"Name">> => string(),
%%   <<"Notifications">> => notifications(),
%%   <<"OutputBucket">> => string(),
%%   <<"Role">> => string(),
%%   <<"Status">> => string(),
%%   <<"ThumbnailConfig">> => pipeline_output_config()
%% }
-type pipeline() :: #{binary() => any()}.


%% Example:
%% read_job_response() :: #{
%%   <<"Job">> => job()
%% }
-type read_job_response() :: #{binary() => any()}.

%% Example:
%% read_pipeline_request() :: #{}
-type read_pipeline_request() :: #{}.


%% Example:
%% list_jobs_by_pipeline_response() :: #{
%%   <<"Jobs">> => list(job()),
%%   <<"NextPageToken">> => string()
%% }
-type list_jobs_by_pipeline_response() :: #{binary() => any()}.


%% Example:
%% create_job_request() :: #{
%%   <<"Input">> => job_input(),
%%   <<"Inputs">> => list(job_input()),
%%   <<"Output">> => create_job_output(),
%%   <<"OutputKeyPrefix">> => string(),
%%   <<"Outputs">> => list(create_job_output()),
%%   <<"PipelineId">> := string(),
%%   <<"Playlists">> => list(create_job_playlist()),
%%   <<"UserMetadata">> => map()
%% }
-type create_job_request() :: #{binary() => any()}.


%% Example:
%% internal_service_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_service_exception() :: #{binary() => any()}.


%% Example:
%% read_preset_response() :: #{
%%   <<"Preset">> => preset()
%% }
-type read_preset_response() :: #{binary() => any()}.


%% Example:
%% job_output() :: #{
%%   <<"AlbumArt">> => job_album_art(),
%%   <<"AppliedColorSpaceConversion">> => string(),
%%   <<"Captions">> => captions(),
%%   <<"Composition">> => list(clip()),
%%   <<"Duration">> => float(),
%%   <<"DurationMillis">> => float(),
%%   <<"Encryption">> => encryption(),
%%   <<"FileSize">> => float(),
%%   <<"FrameRate">> => string(),
%%   <<"Height">> => integer(),
%%   <<"Id">> => string(),
%%   <<"Key">> => string(),
%%   <<"PresetId">> => string(),
%%   <<"Rotate">> => string(),
%%   <<"SegmentDuration">> => string(),
%%   <<"Status">> => string(),
%%   <<"StatusDetail">> => string(),
%%   <<"ThumbnailEncryption">> => encryption(),
%%   <<"ThumbnailPattern">> => string(),
%%   <<"Watermarks">> => list(job_watermark()),
%%   <<"Width">> => integer()
%% }
-type job_output() :: #{binary() => any()}.


%% Example:
%% update_pipeline_notifications_response() :: #{
%%   <<"Pipeline">> => pipeline()
%% }
-type update_pipeline_notifications_response() :: #{binary() => any()}.


%% Example:
%% clip() :: #{
%%   <<"TimeSpan">> => time_span()
%% }
-type clip() :: #{binary() => any()}.


%% Example:
%% detected_properties() :: #{
%%   <<"DurationMillis">> => float(),
%%   <<"FileSize">> => float(),
%%   <<"FrameRate">> => string(),
%%   <<"Height">> => integer(),
%%   <<"Width">> => integer()
%% }
-type detected_properties() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% hls_content_protection() :: #{
%%   <<"InitializationVector">> => string(),
%%   <<"Key">> => string(),
%%   <<"KeyMd5">> => string(),
%%   <<"KeyStoragePolicy">> => string(),
%%   <<"LicenseAcquisitionUrl">> => string(),
%%   <<"Method">> => string()
%% }
-type hls_content_protection() :: #{binary() => any()}.


%% Example:
%% create_pipeline_request() :: #{
%%   <<"AwsKmsKeyArn">> => string(),
%%   <<"ContentConfig">> => pipeline_output_config(),
%%   <<"InputBucket">> := string(),
%%   <<"Name">> := string(),
%%   <<"Notifications">> => notifications(),
%%   <<"OutputBucket">> => string(),
%%   <<"Role">> := string(),
%%   <<"ThumbnailConfig">> => pipeline_output_config()
%% }
-type create_pipeline_request() :: #{binary() => any()}.


%% Example:
%% update_pipeline_request() :: #{
%%   <<"AwsKmsKeyArn">> => string(),
%%   <<"ContentConfig">> => pipeline_output_config(),
%%   <<"InputBucket">> => string(),
%%   <<"Name">> => string(),
%%   <<"Notifications">> => notifications(),
%%   <<"Role">> => string(),
%%   <<"ThumbnailConfig">> => pipeline_output_config()
%% }
-type update_pipeline_request() :: #{binary() => any()}.

%% Example:
%% delete_pipeline_request() :: #{}
-type delete_pipeline_request() :: #{}.


%% Example:
%% artwork() :: #{
%%   <<"AlbumArtFormat">> => string(),
%%   <<"Encryption">> => encryption(),
%%   <<"InputKey">> => string(),
%%   <<"MaxHeight">> => string(),
%%   <<"MaxWidth">> => string(),
%%   <<"PaddingPolicy">> => string(),
%%   <<"SizingPolicy">> => string()
%% }
-type artwork() :: #{binary() => any()}.


%% Example:
%% list_jobs_by_status_response() :: #{
%%   <<"Jobs">> => list(job()),
%%   <<"NextPageToken">> => string()
%% }
-type list_jobs_by_status_response() :: #{binary() => any()}.


%% Example:
%% video_parameters() :: #{
%%   <<"AspectRatio">> => string(),
%%   <<"BitRate">> => string(),
%%   <<"Codec">> => string(),
%%   <<"CodecOptions">> => map(),
%%   <<"DisplayAspectRatio">> => string(),
%%   <<"FixedGOP">> => string(),
%%   <<"FrameRate">> => string(),
%%   <<"KeyframesMaxDist">> => string(),
%%   <<"MaxFrameRate">> => string(),
%%   <<"MaxHeight">> => string(),
%%   <<"MaxWidth">> => string(),
%%   <<"PaddingPolicy">> => string(),
%%   <<"Resolution">> => string(),
%%   <<"SizingPolicy">> => string(),
%%   <<"Watermarks">> => list(preset_watermark())
%% }
-type video_parameters() :: #{binary() => any()}.


%% Example:
%% list_jobs_by_status_request() :: #{
%%   <<"Ascending">> => string(),
%%   <<"PageToken">> => string()
%% }
-type list_jobs_by_status_request() :: #{binary() => any()}.


%% Example:
%% encryption() :: #{
%%   <<"InitializationVector">> => string(),
%%   <<"Key">> => string(),
%%   <<"KeyMd5">> => string(),
%%   <<"Mode">> => string()
%% }
-type encryption() :: #{binary() => any()}.


%% Example:
%% pipeline_output_config() :: #{
%%   <<"Bucket">> => string(),
%%   <<"Permissions">> => list(permission()),
%%   <<"StorageClass">> => string()
%% }
-type pipeline_output_config() :: #{binary() => any()}.


%% Example:
%% audio_parameters() :: #{
%%   <<"AudioPackingMode">> => string(),
%%   <<"BitRate">> => string(),
%%   <<"Channels">> => string(),
%%   <<"Codec">> => string(),
%%   <<"CodecOptions">> => audio_codec_options(),
%%   <<"SampleRate">> => string()
%% }
-type audio_parameters() :: #{binary() => any()}.


%% Example:
%% update_pipeline_status_request() :: #{
%%   <<"Status">> := string()
%% }
-type update_pipeline_status_request() :: #{binary() => any()}.


%% Example:
%% list_presets_response() :: #{
%%   <<"NextPageToken">> => string(),
%%   <<"Presets">> => list(preset())
%% }
-type list_presets_response() :: #{binary() => any()}.


%% Example:
%% job_input() :: #{
%%   <<"AspectRatio">> => string(),
%%   <<"Container">> => string(),
%%   <<"DetectedProperties">> => detected_properties(),
%%   <<"Encryption">> => encryption(),
%%   <<"FrameRate">> => string(),
%%   <<"InputCaptions">> => input_captions(),
%%   <<"Interlaced">> => string(),
%%   <<"Key">> => string(),
%%   <<"Resolution">> => string(),
%%   <<"TimeSpan">> => time_span()
%% }
-type job_input() :: #{binary() => any()}.

%% Example:
%% delete_preset_request() :: #{}
-type delete_preset_request() :: #{}.


%% Example:
%% preset_watermark() :: #{
%%   <<"HorizontalAlign">> => string(),
%%   <<"HorizontalOffset">> => string(),
%%   <<"Id">> => string(),
%%   <<"MaxHeight">> => string(),
%%   <<"MaxWidth">> => string(),
%%   <<"Opacity">> => string(),
%%   <<"SizingPolicy">> => string(),
%%   <<"Target">> => string(),
%%   <<"VerticalAlign">> => string(),
%%   <<"VerticalOffset">> => string()
%% }
-type preset_watermark() :: #{binary() => any()}.


%% Example:
%% incompatible_version_exception() :: #{
%%   <<"message">> => string()
%% }
-type incompatible_version_exception() :: #{binary() => any()}.


%% Example:
%% notifications() :: #{
%%   <<"Completed">> => string(),
%%   <<"Error">> => string(),
%%   <<"Progressing">> => string(),
%%   <<"Warning">> => string()
%% }
-type notifications() :: #{binary() => any()}.


%% Example:
%% timing() :: #{
%%   <<"FinishTimeMillis">> => float(),
%%   <<"StartTimeMillis">> => float(),
%%   <<"SubmitTimeMillis">> => float()
%% }
-type timing() :: #{binary() => any()}.

%% Example:
%% read_preset_request() :: #{}
-type read_preset_request() :: #{}.


%% Example:
%% warning() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string()
%% }
-type warning() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% caption_format() :: #{
%%   <<"Encryption">> => encryption(),
%%   <<"Format">> => string(),
%%   <<"Pattern">> => string()
%% }
-type caption_format() :: #{binary() => any()}.


%% Example:
%% audio_codec_options() :: #{
%%   <<"BitDepth">> => string(),
%%   <<"BitOrder">> => string(),
%%   <<"Profile">> => string(),
%%   <<"Signed">> => string()
%% }
-type audio_codec_options() :: #{binary() => any()}.


%% Example:
%% job_album_art() :: #{
%%   <<"Artwork">> => list(artwork()),
%%   <<"MergePolicy">> => string()
%% }
-type job_album_art() :: #{binary() => any()}.


%% Example:
%% job_watermark() :: #{
%%   <<"Encryption">> => encryption(),
%%   <<"InputKey">> => string(),
%%   <<"PresetWatermarkId">> => string()
%% }
-type job_watermark() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.


%% Example:
%% job() :: #{
%%   <<"Arn">> => string(),
%%   <<"Id">> => string(),
%%   <<"Input">> => job_input(),
%%   <<"Inputs">> => list(job_input()),
%%   <<"Output">> => job_output(),
%%   <<"OutputKeyPrefix">> => string(),
%%   <<"Outputs">> => list(job_output()),
%%   <<"PipelineId">> => string(),
%%   <<"Playlists">> => list(playlist()),
%%   <<"Status">> => string(),
%%   <<"Timing">> => timing(),
%%   <<"UserMetadata">> => map()
%% }
-type job() :: #{binary() => any()}.


%% Example:
%% update_pipeline_status_response() :: #{
%%   <<"Pipeline">> => pipeline()
%% }
-type update_pipeline_status_response() :: #{binary() => any()}.

%% Example:
%% read_job_request() :: #{}
-type read_job_request() :: #{}.


%% Example:
%% thumbnails() :: #{
%%   <<"AspectRatio">> => string(),
%%   <<"Format">> => string(),
%%   <<"Interval">> => string(),
%%   <<"MaxHeight">> => string(),
%%   <<"MaxWidth">> => string(),
%%   <<"PaddingPolicy">> => string(),
%%   <<"Resolution">> => string(),
%%   <<"SizingPolicy">> => string()
%% }
-type thumbnails() :: #{binary() => any()}.


%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% caption_source() :: #{
%%   <<"Encryption">> => encryption(),
%%   <<"Key">> => string(),
%%   <<"Label">> => string(),
%%   <<"Language">> => string(),
%%   <<"TimeOffset">> => string()
%% }
-type caption_source() :: #{binary() => any()}.


%% Example:
%% list_jobs_by_pipeline_request() :: #{
%%   <<"Ascending">> => string(),
%%   <<"PageToken">> => string()
%% }
-type list_jobs_by_pipeline_request() :: #{binary() => any()}.


%% Example:
%% create_preset_response() :: #{
%%   <<"Preset">> => preset(),
%%   <<"Warning">> => string()
%% }
-type create_preset_response() :: #{binary() => any()}.


%% Example:
%% create_job_output() :: #{
%%   <<"AlbumArt">> => job_album_art(),
%%   <<"Captions">> => captions(),
%%   <<"Composition">> => list(clip()),
%%   <<"Encryption">> => encryption(),
%%   <<"Key">> => string(),
%%   <<"PresetId">> => string(),
%%   <<"Rotate">> => string(),
%%   <<"SegmentDuration">> => string(),
%%   <<"ThumbnailEncryption">> => encryption(),
%%   <<"ThumbnailPattern">> => string(),
%%   <<"Watermarks">> => list(job_watermark())
%% }
-type create_job_output() :: #{binary() => any()}.


%% Example:
%% play_ready_drm() :: #{
%%   <<"Format">> => string(),
%%   <<"InitializationVector">> => string(),
%%   <<"Key">> => string(),
%%   <<"KeyId">> => string(),
%%   <<"KeyMd5">> => string(),
%%   <<"LicenseAcquisitionUrl">> => string()
%% }
-type play_ready_drm() :: #{binary() => any()}.


%% Example:
%% playlist() :: #{
%%   <<"Format">> => string(),
%%   <<"HlsContentProtection">> => hls_content_protection(),
%%   <<"Name">> => string(),
%%   <<"OutputKeys">> => list(string()),
%%   <<"PlayReadyDrm">> => play_ready_drm(),
%%   <<"Status">> => string(),
%%   <<"StatusDetail">> => string()
%% }
-type playlist() :: #{binary() => any()}.

%% Example:
%% cancel_job_response() :: #{}
-type cancel_job_response() :: #{}.


%% Example:
%% preset() :: #{
%%   <<"Arn">> => string(),
%%   <<"Audio">> => audio_parameters(),
%%   <<"Container">> => string(),
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"Thumbnails">> => thumbnails(),
%%   <<"Type">> => string(),
%%   <<"Video">> => video_parameters()
%% }
-type preset() :: #{binary() => any()}.


%% Example:
%% test_role_response() :: #{
%%   <<"Messages">> => list(string()),
%%   <<"Success">> => string()
%% }
-type test_role_response() :: #{binary() => any()}.


%% Example:
%% time_span() :: #{
%%   <<"Duration">> => string(),
%%   <<"StartTime">> => string()
%% }
-type time_span() :: #{binary() => any()}.


%% Example:
%% permission() :: #{
%%   <<"Access">> => list(string()),
%%   <<"Grantee">> => string(),
%%   <<"GranteeType">> => string()
%% }
-type permission() :: #{binary() => any()}.


%% Example:
%% update_pipeline_notifications_request() :: #{
%%   <<"Notifications">> := notifications()
%% }
-type update_pipeline_notifications_request() :: #{binary() => any()}.

%% Example:
%% delete_pipeline_response() :: #{}
-type delete_pipeline_response() :: #{}.

-type cancel_job_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    incompatible_version_exception() | 
    resource_not_found_exception() | 
    internal_service_exception() | 
    resource_in_use_exception().

-type create_job_errors() ::
    limit_exceeded_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    incompatible_version_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type create_pipeline_errors() ::
    limit_exceeded_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    incompatible_version_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type create_preset_errors() ::
    limit_exceeded_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    incompatible_version_exception() | 
    internal_service_exception().

-type delete_pipeline_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    incompatible_version_exception() | 
    resource_not_found_exception() | 
    internal_service_exception() | 
    resource_in_use_exception().

-type delete_preset_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    incompatible_version_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type list_jobs_by_pipeline_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    incompatible_version_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type list_jobs_by_status_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    incompatible_version_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type list_pipelines_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    incompatible_version_exception() | 
    internal_service_exception().

-type list_presets_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    incompatible_version_exception() | 
    internal_service_exception().

-type read_job_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    incompatible_version_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type read_pipeline_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    incompatible_version_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type read_preset_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    incompatible_version_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type test_role_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    incompatible_version_exception() | 
    resource_not_found_exception() | 
    internal_service_exception().

-type update_pipeline_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    incompatible_version_exception() | 
    resource_not_found_exception() | 
    internal_service_exception() | 
    resource_in_use_exception().

-type update_pipeline_notifications_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    incompatible_version_exception() | 
    resource_not_found_exception() | 
    internal_service_exception() | 
    resource_in_use_exception().

-type update_pipeline_status_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    incompatible_version_exception() | 
    resource_not_found_exception() | 
    internal_service_exception() | 
    resource_in_use_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc The CancelJob operation cancels an unfinished job.
%%
%% You can only cancel a job that has a status of `Submitted'. To prevent
%% a
%% pipeline from starting to process a job while you're getting the job
%% identifier, use
%% `UpdatePipelineStatus' to temporarily pause the pipeline.
-spec cancel_job(aws_client:aws_client(), binary() | list(), cancel_job_request()) ->
    {ok, cancel_job_response(), tuple()} |
    {error, any()} |
    {error, cancel_job_errors(), tuple()}.
cancel_job(Client, Id, Input) ->
    cancel_job(Client, Id, Input, []).

-spec cancel_job(aws_client:aws_client(), binary() | list(), cancel_job_request(), proplists:proplist()) ->
    {ok, cancel_job_response(), tuple()} |
    {error, any()} |
    {error, cancel_job_errors(), tuple()}.
cancel_job(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/2012-09-25/jobs/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 202,
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

%% @doc When you create a job, Elastic Transcoder returns JSON data that
%% includes the values that you specified
%% plus information about the job that is created.
%%
%% If you have specified more than one output for your jobs (for example, one
%% output for the
%% Kindle Fire and another output for the Apple iPhone 4s), you currently
%% must use the Elastic Transcoder API to
%% list the jobs (as opposed to the AWS Console).
-spec create_job(aws_client:aws_client(), create_job_request()) ->
    {ok, create_job_response(), tuple()} |
    {error, any()} |
    {error, create_job_errors(), tuple()}.
create_job(Client, Input) ->
    create_job(Client, Input, []).

-spec create_job(aws_client:aws_client(), create_job_request(), proplists:proplist()) ->
    {ok, create_job_response(), tuple()} |
    {error, any()} |
    {error, create_job_errors(), tuple()}.
create_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2012-09-25/jobs"],
    SuccessStatusCode = 201,
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

%% @doc The CreatePipeline operation creates a pipeline with settings that
%% you specify.
-spec create_pipeline(aws_client:aws_client(), create_pipeline_request()) ->
    {ok, create_pipeline_response(), tuple()} |
    {error, any()} |
    {error, create_pipeline_errors(), tuple()}.
create_pipeline(Client, Input) ->
    create_pipeline(Client, Input, []).

-spec create_pipeline(aws_client:aws_client(), create_pipeline_request(), proplists:proplist()) ->
    {ok, create_pipeline_response(), tuple()} |
    {error, any()} |
    {error, create_pipeline_errors(), tuple()}.
create_pipeline(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2012-09-25/pipelines"],
    SuccessStatusCode = 201,
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

%% @doc The CreatePreset operation creates a preset with settings that you
%% specify.
%%
%% Elastic Transcoder checks the CreatePreset settings to ensure that they
%% meet Elastic Transcoder requirements
%% and to determine whether they comply with H.264 standards. If your
%% settings are not
%% valid for Elastic Transcoder, Elastic Transcoder returns an HTTP 400
%% response (`ValidationException') and
%% does not create the preset. If the settings are valid for Elastic
%% Transcoder but aren't strictly
%% compliant with the H.264 standard, Elastic Transcoder creates the preset
%% and returns a warning message
%% in the response. This helps you determine whether your settings comply
%% with the H.264
%% standard while giving you greater flexibility with respect to the video
%% that Elastic Transcoder
%% produces.
%%
%% Elastic Transcoder uses the H.264 video-compression format. For more
%% information, see the International
%% Telecommunication Union publication Recommendation ITU-T H.264: Advanced
%% video coding
%% for generic audiovisual services.
-spec create_preset(aws_client:aws_client(), create_preset_request()) ->
    {ok, create_preset_response(), tuple()} |
    {error, any()} |
    {error, create_preset_errors(), tuple()}.
create_preset(Client, Input) ->
    create_preset(Client, Input, []).

-spec create_preset(aws_client:aws_client(), create_preset_request(), proplists:proplist()) ->
    {ok, create_preset_response(), tuple()} |
    {error, any()} |
    {error, create_preset_errors(), tuple()}.
create_preset(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2012-09-25/presets"],
    SuccessStatusCode = 201,
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

%% @doc The DeletePipeline operation removes a pipeline.
%%
%% You can only delete a pipeline that has never been used or that is not
%% currently in use
%% (doesn't contain any active jobs). If the pipeline is currently in
%% use,
%% `DeletePipeline' returns an error.
-spec delete_pipeline(aws_client:aws_client(), binary() | list(), delete_pipeline_request()) ->
    {ok, delete_pipeline_response(), tuple()} |
    {error, any()} |
    {error, delete_pipeline_errors(), tuple()}.
delete_pipeline(Client, Id, Input) ->
    delete_pipeline(Client, Id, Input, []).

-spec delete_pipeline(aws_client:aws_client(), binary() | list(), delete_pipeline_request(), proplists:proplist()) ->
    {ok, delete_pipeline_response(), tuple()} |
    {error, any()} |
    {error, delete_pipeline_errors(), tuple()}.
delete_pipeline(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/2012-09-25/pipelines/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 202,
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

%% @doc The DeletePreset operation removes a preset that you've added in
%% an AWS region.
%%
%% You can't delete the default presets that are included with Elastic
%% Transcoder.
-spec delete_preset(aws_client:aws_client(), binary() | list(), delete_preset_request()) ->
    {ok, delete_preset_response(), tuple()} |
    {error, any()} |
    {error, delete_preset_errors(), tuple()}.
delete_preset(Client, Id, Input) ->
    delete_preset(Client, Id, Input, []).

-spec delete_preset(aws_client:aws_client(), binary() | list(), delete_preset_request(), proplists:proplist()) ->
    {ok, delete_preset_response(), tuple()} |
    {error, any()} |
    {error, delete_preset_errors(), tuple()}.
delete_preset(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/2012-09-25/presets/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 202,
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

%% @doc The ListJobsByPipeline operation gets a list of the jobs currently in
%% a pipeline.
%%
%% Elastic Transcoder returns all of the jobs currently in the specified
%% pipeline. The response body contains
%% one element for each job that satisfies the search criteria.
-spec list_jobs_by_pipeline(aws_client:aws_client(), binary() | list()) ->
    {ok, list_jobs_by_pipeline_response(), tuple()} |
    {error, any()} |
    {error, list_jobs_by_pipeline_errors(), tuple()}.
list_jobs_by_pipeline(Client, PipelineId)
  when is_map(Client) ->
    list_jobs_by_pipeline(Client, PipelineId, #{}, #{}).

-spec list_jobs_by_pipeline(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_jobs_by_pipeline_response(), tuple()} |
    {error, any()} |
    {error, list_jobs_by_pipeline_errors(), tuple()}.
list_jobs_by_pipeline(Client, PipelineId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_jobs_by_pipeline(Client, PipelineId, QueryMap, HeadersMap, []).

-spec list_jobs_by_pipeline(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_jobs_by_pipeline_response(), tuple()} |
    {error, any()} |
    {error, list_jobs_by_pipeline_errors(), tuple()}.
list_jobs_by_pipeline(Client, PipelineId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2012-09-25/jobsByPipeline/", aws_util:encode_uri(PipelineId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"Ascending">>, maps:get(<<"Ascending">>, QueryMap, undefined)},
        {<<"PageToken">>, maps:get(<<"PageToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc The ListJobsByStatus operation gets a list of jobs that have a
%% specified status.
%%
%% The response
%% body contains one element for each job that satisfies the search criteria.
-spec list_jobs_by_status(aws_client:aws_client(), binary() | list()) ->
    {ok, list_jobs_by_status_response(), tuple()} |
    {error, any()} |
    {error, list_jobs_by_status_errors(), tuple()}.
list_jobs_by_status(Client, Status)
  when is_map(Client) ->
    list_jobs_by_status(Client, Status, #{}, #{}).

-spec list_jobs_by_status(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_jobs_by_status_response(), tuple()} |
    {error, any()} |
    {error, list_jobs_by_status_errors(), tuple()}.
list_jobs_by_status(Client, Status, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_jobs_by_status(Client, Status, QueryMap, HeadersMap, []).

-spec list_jobs_by_status(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_jobs_by_status_response(), tuple()} |
    {error, any()} |
    {error, list_jobs_by_status_errors(), tuple()}.
list_jobs_by_status(Client, Status, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2012-09-25/jobsByStatus/", aws_util:encode_uri(Status), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"Ascending">>, maps:get(<<"Ascending">>, QueryMap, undefined)},
        {<<"PageToken">>, maps:get(<<"PageToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc The ListPipelines operation gets a list of the pipelines associated
%% with the current AWS account.
-spec list_pipelines(aws_client:aws_client()) ->
    {ok, list_pipelines_response(), tuple()} |
    {error, any()} |
    {error, list_pipelines_errors(), tuple()}.
list_pipelines(Client)
  when is_map(Client) ->
    list_pipelines(Client, #{}, #{}).

-spec list_pipelines(aws_client:aws_client(), map(), map()) ->
    {ok, list_pipelines_response(), tuple()} |
    {error, any()} |
    {error, list_pipelines_errors(), tuple()}.
list_pipelines(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_pipelines(Client, QueryMap, HeadersMap, []).

-spec list_pipelines(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_pipelines_response(), tuple()} |
    {error, any()} |
    {error, list_pipelines_errors(), tuple()}.
list_pipelines(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2012-09-25/pipelines"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"Ascending">>, maps:get(<<"Ascending">>, QueryMap, undefined)},
        {<<"PageToken">>, maps:get(<<"PageToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc The ListPresets operation gets a list of the default presets included
%% with Elastic Transcoder and the presets that
%% you've added in an AWS region.
-spec list_presets(aws_client:aws_client()) ->
    {ok, list_presets_response(), tuple()} |
    {error, any()} |
    {error, list_presets_errors(), tuple()}.
list_presets(Client)
  when is_map(Client) ->
    list_presets(Client, #{}, #{}).

-spec list_presets(aws_client:aws_client(), map(), map()) ->
    {ok, list_presets_response(), tuple()} |
    {error, any()} |
    {error, list_presets_errors(), tuple()}.
list_presets(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_presets(Client, QueryMap, HeadersMap, []).

-spec list_presets(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_presets_response(), tuple()} |
    {error, any()} |
    {error, list_presets_errors(), tuple()}.
list_presets(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2012-09-25/presets"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"Ascending">>, maps:get(<<"Ascending">>, QueryMap, undefined)},
        {<<"PageToken">>, maps:get(<<"PageToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc The ReadJob operation returns detailed information about a job.
-spec read_job(aws_client:aws_client(), binary() | list()) ->
    {ok, read_job_response(), tuple()} |
    {error, any()} |
    {error, read_job_errors(), tuple()}.
read_job(Client, Id)
  when is_map(Client) ->
    read_job(Client, Id, #{}, #{}).

-spec read_job(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, read_job_response(), tuple()} |
    {error, any()} |
    {error, read_job_errors(), tuple()}.
read_job(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    read_job(Client, Id, QueryMap, HeadersMap, []).

-spec read_job(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, read_job_response(), tuple()} |
    {error, any()} |
    {error, read_job_errors(), tuple()}.
read_job(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2012-09-25/jobs/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc The ReadPipeline operation gets detailed information about a
%% pipeline.
-spec read_pipeline(aws_client:aws_client(), binary() | list()) ->
    {ok, read_pipeline_response(), tuple()} |
    {error, any()} |
    {error, read_pipeline_errors(), tuple()}.
read_pipeline(Client, Id)
  when is_map(Client) ->
    read_pipeline(Client, Id, #{}, #{}).

-spec read_pipeline(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, read_pipeline_response(), tuple()} |
    {error, any()} |
    {error, read_pipeline_errors(), tuple()}.
read_pipeline(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    read_pipeline(Client, Id, QueryMap, HeadersMap, []).

-spec read_pipeline(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, read_pipeline_response(), tuple()} |
    {error, any()} |
    {error, read_pipeline_errors(), tuple()}.
read_pipeline(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2012-09-25/pipelines/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc The ReadPreset operation gets detailed information about a preset.
-spec read_preset(aws_client:aws_client(), binary() | list()) ->
    {ok, read_preset_response(), tuple()} |
    {error, any()} |
    {error, read_preset_errors(), tuple()}.
read_preset(Client, Id)
  when is_map(Client) ->
    read_preset(Client, Id, #{}, #{}).

-spec read_preset(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, read_preset_response(), tuple()} |
    {error, any()} |
    {error, read_preset_errors(), tuple()}.
read_preset(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    read_preset(Client, Id, QueryMap, HeadersMap, []).

-spec read_preset(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, read_preset_response(), tuple()} |
    {error, any()} |
    {error, read_preset_errors(), tuple()}.
read_preset(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2012-09-25/presets/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc The TestRole operation tests the IAM role used to create the
%% pipeline.
%%
%% The `TestRole' action lets you determine whether the IAM role you are
%% using
%% has sufficient permissions to let Elastic Transcoder perform tasks
%% associated with the transcoding
%% process. The action attempts to assume the specified IAM role, checks read
%% access to the
%% input and output buckets, and tries to send a test notification to Amazon
%% SNS topics
%% that you specify.
-spec test_role(aws_client:aws_client(), test_role_request()) ->
    {ok, test_role_response(), tuple()} |
    {error, any()} |
    {error, test_role_errors(), tuple()}.
test_role(Client, Input) ->
    test_role(Client, Input, []).

-spec test_role(aws_client:aws_client(), test_role_request(), proplists:proplist()) ->
    {ok, test_role_response(), tuple()} |
    {error, any()} |
    {error, test_role_errors(), tuple()}.
test_role(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2012-09-25/roleTests"],
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

%% @doc Use the `UpdatePipeline' operation to update settings for a
%% pipeline.
%%
%% When you change pipeline settings, your changes take effect immediately.
%% Jobs that you have already submitted and that Elastic Transcoder has not
%% started to process are
%% affected in addition to jobs that you submit after you change settings.
-spec update_pipeline(aws_client:aws_client(), binary() | list(), update_pipeline_request()) ->
    {ok, update_pipeline_response(), tuple()} |
    {error, any()} |
    {error, update_pipeline_errors(), tuple()}.
update_pipeline(Client, Id, Input) ->
    update_pipeline(Client, Id, Input, []).

-spec update_pipeline(aws_client:aws_client(), binary() | list(), update_pipeline_request(), proplists:proplist()) ->
    {ok, update_pipeline_response(), tuple()} |
    {error, any()} |
    {error, update_pipeline_errors(), tuple()}.
update_pipeline(Client, Id, Input0, Options0) ->
    Method = put,
    Path = ["/2012-09-25/pipelines/", aws_util:encode_uri(Id), ""],
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

%% @doc With the UpdatePipelineNotifications operation, you can update Amazon
%% Simple Notification Service (Amazon SNS) notifications for a pipeline.
%%
%% When you update notifications for a pipeline, Elastic Transcoder returns
%% the values that you specified in the request.
-spec update_pipeline_notifications(aws_client:aws_client(), binary() | list(), update_pipeline_notifications_request()) ->
    {ok, update_pipeline_notifications_response(), tuple()} |
    {error, any()} |
    {error, update_pipeline_notifications_errors(), tuple()}.
update_pipeline_notifications(Client, Id, Input) ->
    update_pipeline_notifications(Client, Id, Input, []).

-spec update_pipeline_notifications(aws_client:aws_client(), binary() | list(), update_pipeline_notifications_request(), proplists:proplist()) ->
    {ok, update_pipeline_notifications_response(), tuple()} |
    {error, any()} |
    {error, update_pipeline_notifications_errors(), tuple()}.
update_pipeline_notifications(Client, Id, Input0, Options0) ->
    Method = post,
    Path = ["/2012-09-25/pipelines/", aws_util:encode_uri(Id), "/notifications"],
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

%% @doc The UpdatePipelineStatus operation pauses or reactivates a pipeline,
%% so that the pipeline
%% stops or restarts the processing of jobs.
%%
%% Changing the pipeline status is useful if you want to cancel one or more
%% jobs. You can't
%% cancel jobs after Elastic Transcoder has started processing them; if you
%% pause the pipeline to which
%% you submitted the jobs, you have more time to get the job IDs for the jobs
%% that you want
%% to cancel, and to send a `CancelJob' request.
-spec update_pipeline_status(aws_client:aws_client(), binary() | list(), update_pipeline_status_request()) ->
    {ok, update_pipeline_status_response(), tuple()} |
    {error, any()} |
    {error, update_pipeline_status_errors(), tuple()}.
update_pipeline_status(Client, Id, Input) ->
    update_pipeline_status(Client, Id, Input, []).

-spec update_pipeline_status(aws_client:aws_client(), binary() | list(), update_pipeline_status_request(), proplists:proplist()) ->
    {ok, update_pipeline_status_response(), tuple()} |
    {error, any()} |
    {error, update_pipeline_status_errors(), tuple()}.
update_pipeline_status(Client, Id, Input0, Options0) ->
    Method = post,
    Path = ["/2012-09-25/pipelines/", aws_util:encode_uri(Id), "/status"],
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
    Client1 = Client#{service => <<"elastictranscoder">>},
    Host = build_host(<<"elastictranscoder">>, Client1),
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
