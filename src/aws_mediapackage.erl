%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS Elemental MediaPackage
-module(aws_mediapackage).

-export([configure_logs/3,
         configure_logs/4,
         create_channel/2,
         create_channel/3,
         create_harvest_job/2,
         create_harvest_job/3,
         create_origin_endpoint/2,
         create_origin_endpoint/3,
         delete_channel/3,
         delete_channel/4,
         delete_origin_endpoint/3,
         delete_origin_endpoint/4,
         describe_channel/2,
         describe_channel/4,
         describe_channel/5,
         describe_harvest_job/2,
         describe_harvest_job/4,
         describe_harvest_job/5,
         describe_origin_endpoint/2,
         describe_origin_endpoint/4,
         describe_origin_endpoint/5,
         list_channels/1,
         list_channels/3,
         list_channels/4,
         list_harvest_jobs/1,
         list_harvest_jobs/3,
         list_harvest_jobs/4,
         list_origin_endpoints/1,
         list_origin_endpoints/3,
         list_origin_endpoints/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         rotate_channel_credentials/3,
         rotate_channel_credentials/4,
         rotate_ingest_endpoint_credentials/4,
         rotate_ingest_endpoint_credentials/5,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_channel/3,
         update_channel/4,
         update_origin_endpoint/3,
         update_origin_endpoint/4]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% rotate_ingest_endpoint_credentials_request() :: #{}
-type rotate_ingest_endpoint_credentials_request() :: #{}.

%% Example:
%% delete_channel_request() :: #{}
-type delete_channel_request() :: #{}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"Tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% hls_manifest_create_or_update_parameters() :: #{
%%   <<"AdMarkers">> => list(any()),
%%   <<"AdTriggers">> => list(list(any())()),
%%   <<"AdsOnDeliveryRestrictions">> => list(any()),
%%   <<"Id">> => string(),
%%   <<"IncludeIframeOnlyStream">> => boolean(),
%%   <<"ManifestName">> => string(),
%%   <<"PlaylistType">> => list(any()),
%%   <<"PlaylistWindowSeconds">> => integer(),
%%   <<"ProgramDateTimeIntervalSeconds">> => integer()
%% }
-type hls_manifest_create_or_update_parameters() :: #{binary() => any()}.


%% Example:
%% create_origin_endpoint_request() :: #{
%%   <<"Authorization">> => authorization(),
%%   <<"ChannelId">> := string(),
%%   <<"CmafPackage">> => cmaf_package_create_or_update_parameters(),
%%   <<"DashPackage">> => dash_package(),
%%   <<"Description">> => string(),
%%   <<"HlsPackage">> => hls_package(),
%%   <<"Id">> := string(),
%%   <<"ManifestName">> => string(),
%%   <<"MssPackage">> => mss_package(),
%%   <<"Origination">> => list(any()),
%%   <<"StartoverWindowSeconds">> => integer(),
%%   <<"Tags">> => map(),
%%   <<"TimeDelaySeconds">> => integer(),
%%   <<"Whitelist">> => list(string())
%% }
-type create_origin_endpoint_request() :: #{binary() => any()}.


%% Example:
%% create_channel_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedAt">> => string(),
%%   <<"Description">> => string(),
%%   <<"EgressAccessLogs">> => egress_access_logs(),
%%   <<"HlsIngest">> => hls_ingest(),
%%   <<"Id">> => string(),
%%   <<"IngressAccessLogs">> => ingress_access_logs(),
%%   <<"Tags">> => map()
%% }
-type create_channel_response() :: #{binary() => any()}.

%% Example:
%% delete_channel_response() :: #{}
-type delete_channel_response() :: #{}.


%% Example:
%% create_origin_endpoint_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Authorization">> => authorization(),
%%   <<"ChannelId">> => string(),
%%   <<"CmafPackage">> => cmaf_package(),
%%   <<"CreatedAt">> => string(),
%%   <<"DashPackage">> => dash_package(),
%%   <<"Description">> => string(),
%%   <<"HlsPackage">> => hls_package(),
%%   <<"Id">> => string(),
%%   <<"ManifestName">> => string(),
%%   <<"MssPackage">> => mss_package(),
%%   <<"Origination">> => list(any()),
%%   <<"StartoverWindowSeconds">> => integer(),
%%   <<"Tags">> => map(),
%%   <<"TimeDelaySeconds">> => integer(),
%%   <<"Url">> => string(),
%%   <<"Whitelist">> => list(string())
%% }
-type create_origin_endpoint_response() :: #{binary() => any()}.


%% Example:
%% rotate_channel_credentials_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedAt">> => string(),
%%   <<"Description">> => string(),
%%   <<"EgressAccessLogs">> => egress_access_logs(),
%%   <<"HlsIngest">> => hls_ingest(),
%%   <<"Id">> => string(),
%%   <<"IngressAccessLogs">> => ingress_access_logs(),
%%   <<"Tags">> => map()
%% }
-type rotate_channel_credentials_response() :: #{binary() => any()}.


%% Example:
%% forbidden_exception() :: #{
%%   <<"Message">> => string()
%% }
-type forbidden_exception() :: #{binary() => any()}.


%% Example:
%% update_origin_endpoint_request() :: #{
%%   <<"Authorization">> => authorization(),
%%   <<"CmafPackage">> => cmaf_package_create_or_update_parameters(),
%%   <<"DashPackage">> => dash_package(),
%%   <<"Description">> => string(),
%%   <<"HlsPackage">> => hls_package(),
%%   <<"ManifestName">> => string(),
%%   <<"MssPackage">> => mss_package(),
%%   <<"Origination">> => list(any()),
%%   <<"StartoverWindowSeconds">> => integer(),
%%   <<"TimeDelaySeconds">> => integer(),
%%   <<"Whitelist">> => list(string())
%% }
-type update_origin_endpoint_request() :: #{binary() => any()}.


%% Example:
%% origin_endpoint() :: #{
%%   <<"Arn">> => string(),
%%   <<"Authorization">> => authorization(),
%%   <<"ChannelId">> => string(),
%%   <<"CmafPackage">> => cmaf_package(),
%%   <<"CreatedAt">> => string(),
%%   <<"DashPackage">> => dash_package(),
%%   <<"Description">> => string(),
%%   <<"HlsPackage">> => hls_package(),
%%   <<"Id">> => string(),
%%   <<"ManifestName">> => string(),
%%   <<"MssPackage">> => mss_package(),
%%   <<"Origination">> => list(any()),
%%   <<"StartoverWindowSeconds">> => integer(),
%%   <<"Tags">> => map(),
%%   <<"TimeDelaySeconds">> => integer(),
%%   <<"Url">> => string(),
%%   <<"Whitelist">> => list(string())
%% }
-type origin_endpoint() :: #{binary() => any()}.


%% Example:
%% list_harvest_jobs_request() :: #{
%%   <<"IncludeChannelId">> => string(),
%%   <<"IncludeStatus">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_harvest_jobs_request() :: #{binary() => any()}.

%% Example:
%% delete_origin_endpoint_response() :: #{}
-type delete_origin_endpoint_response() :: #{}.

%% Example:
%% rotate_channel_credentials_request() :: #{}
-type rotate_channel_credentials_request() :: #{}.

%% Example:
%% delete_origin_endpoint_request() :: #{}
-type delete_origin_endpoint_request() :: #{}.


%% Example:
%% describe_origin_endpoint_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Authorization">> => authorization(),
%%   <<"ChannelId">> => string(),
%%   <<"CmafPackage">> => cmaf_package(),
%%   <<"CreatedAt">> => string(),
%%   <<"DashPackage">> => dash_package(),
%%   <<"Description">> => string(),
%%   <<"HlsPackage">> => hls_package(),
%%   <<"Id">> => string(),
%%   <<"ManifestName">> => string(),
%%   <<"MssPackage">> => mss_package(),
%%   <<"Origination">> => list(any()),
%%   <<"StartoverWindowSeconds">> => integer(),
%%   <<"Tags">> => map(),
%%   <<"TimeDelaySeconds">> => integer(),
%%   <<"Url">> => string(),
%%   <<"Whitelist">> => list(string())
%% }
-type describe_origin_endpoint_response() :: #{binary() => any()}.


%% Example:
%% rotate_ingest_endpoint_credentials_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedAt">> => string(),
%%   <<"Description">> => string(),
%%   <<"EgressAccessLogs">> => egress_access_logs(),
%%   <<"HlsIngest">> => hls_ingest(),
%%   <<"Id">> => string(),
%%   <<"IngressAccessLogs">> => ingress_access_logs(),
%%   <<"Tags">> => map()
%% }
-type rotate_ingest_endpoint_credentials_response() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% too_many_requests_exception() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_requests_exception() :: #{binary() => any()}.


%% Example:
%% hls_manifest() :: #{
%%   <<"AdMarkers">> => list(any()),
%%   <<"AdTriggers">> => list(list(any())()),
%%   <<"AdsOnDeliveryRestrictions">> => list(any()),
%%   <<"Id">> => string(),
%%   <<"IncludeIframeOnlyStream">> => boolean(),
%%   <<"ManifestName">> => string(),
%%   <<"PlaylistType">> => list(any()),
%%   <<"PlaylistWindowSeconds">> => integer(),
%%   <<"ProgramDateTimeIntervalSeconds">> => integer(),
%%   <<"Url">> => string()
%% }
-type hls_manifest() :: #{binary() => any()}.


%% Example:
%% hls_ingest() :: #{
%%   <<"IngestEndpoints">> => list(ingest_endpoint())
%% }
-type hls_ingest() :: #{binary() => any()}.

%% Example:
%% describe_harvest_job_request() :: #{}
-type describe_harvest_job_request() :: #{}.


%% Example:
%% list_origin_endpoints_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"OriginEndpoints">> => list(origin_endpoint())
%% }
-type list_origin_endpoints_response() :: #{binary() => any()}.


%% Example:
%% authorization() :: #{
%%   <<"CdnIdentifierSecret">> => string(),
%%   <<"SecretsRoleArn">> => string()
%% }
-type authorization() :: #{binary() => any()}.


%% Example:
%% create_harvest_job_request() :: #{
%%   <<"EndTime">> := string(),
%%   <<"Id">> := string(),
%%   <<"OriginEndpointId">> := string(),
%%   <<"S3Destination">> := s3_destination(),
%%   <<"StartTime">> := string()
%% }
-type create_harvest_job_request() :: #{binary() => any()}.


%% Example:
%% hls_encryption() :: #{
%%   <<"ConstantInitializationVector">> => string(),
%%   <<"EncryptionMethod">> => list(any()),
%%   <<"KeyRotationIntervalSeconds">> => integer(),
%%   <<"RepeatExtXKey">> => boolean(),
%%   <<"SpekeKeyProvider">> => speke_key_provider()
%% }
-type hls_encryption() :: #{binary() => any()}.


%% Example:
%% cmaf_package() :: #{
%%   <<"Encryption">> => cmaf_encryption(),
%%   <<"HlsManifests">> => list(hls_manifest()),
%%   <<"SegmentDurationSeconds">> => integer(),
%%   <<"SegmentPrefix">> => string(),
%%   <<"StreamSelection">> => stream_selection()
%% }
-type cmaf_package() :: #{binary() => any()}.


%% Example:
%% describe_channel_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedAt">> => string(),
%%   <<"Description">> => string(),
%%   <<"EgressAccessLogs">> => egress_access_logs(),
%%   <<"HlsIngest">> => hls_ingest(),
%%   <<"Id">> => string(),
%%   <<"IngressAccessLogs">> => ingress_access_logs(),
%%   <<"Tags">> => map()
%% }
-type describe_channel_response() :: #{binary() => any()}.


%% Example:
%% cmaf_package_create_or_update_parameters() :: #{
%%   <<"Encryption">> => cmaf_encryption(),
%%   <<"HlsManifests">> => list(hls_manifest_create_or_update_parameters()),
%%   <<"SegmentDurationSeconds">> => integer(),
%%   <<"SegmentPrefix">> => string(),
%%   <<"StreamSelection">> => stream_selection()
%% }
-type cmaf_package_create_or_update_parameters() :: #{binary() => any()}.


%% Example:
%% not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type not_found_exception() :: #{binary() => any()}.

%% Example:
%% describe_channel_request() :: #{}
-type describe_channel_request() :: #{}.


%% Example:
%% speke_key_provider() :: #{
%%   <<"CertificateArn">> => string(),
%%   <<"EncryptionContractConfiguration">> => encryption_contract_configuration(),
%%   <<"ResourceId">> => string(),
%%   <<"RoleArn">> => string(),
%%   <<"SystemIds">> => list(string()),
%%   <<"Url">> => string()
%% }
-type speke_key_provider() :: #{binary() => any()}.


%% Example:
%% ingest_endpoint() :: #{
%%   <<"Id">> => string(),
%%   <<"Password">> => string(),
%%   <<"Url">> => string(),
%%   <<"Username">> => string()
%% }
-type ingest_endpoint() :: #{binary() => any()}.


%% Example:
%% create_channel_request() :: #{
%%   <<"Description">> => string(),
%%   <<"Id">> := string(),
%%   <<"Tags">> => map()
%% }
-type create_channel_request() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% hls_package() :: #{
%%   <<"AdMarkers">> => list(any()),
%%   <<"AdTriggers">> => list(list(any())()),
%%   <<"AdsOnDeliveryRestrictions">> => list(any()),
%%   <<"Encryption">> => hls_encryption(),
%%   <<"IncludeDvbSubtitles">> => boolean(),
%%   <<"IncludeIframeOnlyStream">> => boolean(),
%%   <<"PlaylistType">> => list(any()),
%%   <<"PlaylistWindowSeconds">> => integer(),
%%   <<"ProgramDateTimeIntervalSeconds">> => integer(),
%%   <<"SegmentDurationSeconds">> => integer(),
%%   <<"StreamSelection">> => stream_selection(),
%%   <<"UseAudioRenditionGroup">> => boolean()
%% }
-type hls_package() :: #{binary() => any()}.


%% Example:
%% service_unavailable_exception() :: #{
%%   <<"Message">> => string()
%% }
-type service_unavailable_exception() :: #{binary() => any()}.


%% Example:
%% dash_package() :: #{
%%   <<"AdTriggers">> => list(list(any())()),
%%   <<"AdsOnDeliveryRestrictions">> => list(any()),
%%   <<"Encryption">> => dash_encryption(),
%%   <<"IncludeIframeOnlyStream">> => boolean(),
%%   <<"ManifestLayout">> => list(any()),
%%   <<"ManifestWindowSeconds">> => integer(),
%%   <<"MinBufferTimeSeconds">> => integer(),
%%   <<"MinUpdatePeriodSeconds">> => integer(),
%%   <<"PeriodTriggers">> => list(list(any())()),
%%   <<"Profile">> => list(any()),
%%   <<"SegmentDurationSeconds">> => integer(),
%%   <<"SegmentTemplateFormat">> => list(any()),
%%   <<"StreamSelection">> => stream_selection(),
%%   <<"SuggestedPresentationDelaySeconds">> => integer(),
%%   <<"UtcTiming">> => list(any()),
%%   <<"UtcTimingUri">> => string()
%% }
-type dash_package() :: #{binary() => any()}.


%% Example:
%% list_channels_response() :: #{
%%   <<"Channels">> => list(channel()),
%%   <<"NextToken">> => string()
%% }
-type list_channels_response() :: #{binary() => any()}.


%% Example:
%% s3_destination() :: #{
%%   <<"BucketName">> => string(),
%%   <<"ManifestKey">> => string(),
%%   <<"RoleArn">> => string()
%% }
-type s3_destination() :: #{binary() => any()}.


%% Example:
%% update_channel_request() :: #{
%%   <<"Description">> => string()
%% }
-type update_channel_request() :: #{binary() => any()}.


%% Example:
%% stream_selection() :: #{
%%   <<"MaxVideoBitsPerSecond">> => integer(),
%%   <<"MinVideoBitsPerSecond">> => integer(),
%%   <<"StreamOrder">> => list(any())
%% }
-type stream_selection() :: #{binary() => any()}.


%% Example:
%% encryption_contract_configuration() :: #{
%%   <<"PresetSpeke20Audio">> => list(any()),
%%   <<"PresetSpeke20Video">> => list(any())
%% }
-type encryption_contract_configuration() :: #{binary() => any()}.


%% Example:
%% egress_access_logs() :: #{
%%   <<"LogGroupName">> => string()
%% }
-type egress_access_logs() :: #{binary() => any()}.


%% Example:
%% dash_encryption() :: #{
%%   <<"KeyRotationIntervalSeconds">> => integer(),
%%   <<"SpekeKeyProvider">> => speke_key_provider()
%% }
-type dash_encryption() :: #{binary() => any()}.


%% Example:
%% unprocessable_entity_exception() :: #{
%%   <<"Message">> => string()
%% }
-type unprocessable_entity_exception() :: #{binary() => any()}.


%% Example:
%% cmaf_encryption() :: #{
%%   <<"ConstantInitializationVector">> => string(),
%%   <<"EncryptionMethod">> => list(any()),
%%   <<"KeyRotationIntervalSeconds">> => integer(),
%%   <<"SpekeKeyProvider">> => speke_key_provider()
%% }
-type cmaf_encryption() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% internal_server_error_exception() :: #{
%%   <<"Message">> => string()
%% }
-type internal_server_error_exception() :: #{binary() => any()}.


%% Example:
%% channel() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedAt">> => string(),
%%   <<"Description">> => string(),
%%   <<"EgressAccessLogs">> => egress_access_logs(),
%%   <<"HlsIngest">> => hls_ingest(),
%%   <<"Id">> => string(),
%%   <<"IngressAccessLogs">> => ingress_access_logs(),
%%   <<"Tags">> => map()
%% }
-type channel() :: #{binary() => any()}.


%% Example:
%% harvest_job() :: #{
%%   <<"Arn">> => string(),
%%   <<"ChannelId">> => string(),
%%   <<"CreatedAt">> => string(),
%%   <<"EndTime">> => string(),
%%   <<"Id">> => string(),
%%   <<"OriginEndpointId">> => string(),
%%   <<"S3Destination">> => s3_destination(),
%%   <<"StartTime">> => string(),
%%   <<"Status">> => list(any())
%% }
-type harvest_job() :: #{binary() => any()}.


%% Example:
%% describe_harvest_job_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"ChannelId">> => string(),
%%   <<"CreatedAt">> => string(),
%%   <<"EndTime">> => string(),
%%   <<"Id">> => string(),
%%   <<"OriginEndpointId">> => string(),
%%   <<"S3Destination">> => s3_destination(),
%%   <<"StartTime">> => string(),
%%   <<"Status">> => list(any())
%% }
-type describe_harvest_job_response() :: #{binary() => any()}.


%% Example:
%% create_harvest_job_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"ChannelId">> => string(),
%%   <<"CreatedAt">> => string(),
%%   <<"EndTime">> => string(),
%%   <<"Id">> => string(),
%%   <<"OriginEndpointId">> => string(),
%%   <<"S3Destination">> => s3_destination(),
%%   <<"StartTime">> => string(),
%%   <<"Status">> => list(any())
%% }
-type create_harvest_job_response() :: #{binary() => any()}.


%% Example:
%% configure_logs_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedAt">> => string(),
%%   <<"Description">> => string(),
%%   <<"EgressAccessLogs">> => egress_access_logs(),
%%   <<"HlsIngest">> => hls_ingest(),
%%   <<"Id">> => string(),
%%   <<"IngressAccessLogs">> => ingress_access_logs(),
%%   <<"Tags">> => map()
%% }
-type configure_logs_response() :: #{binary() => any()}.

%% Example:
%% describe_origin_endpoint_request() :: #{}
-type describe_origin_endpoint_request() :: #{}.


%% Example:
%% configure_logs_request() :: #{
%%   <<"EgressAccessLogs">> => egress_access_logs(),
%%   <<"IngressAccessLogs">> => ingress_access_logs()
%% }
-type configure_logs_request() :: #{binary() => any()}.


%% Example:
%% list_harvest_jobs_response() :: #{
%%   <<"HarvestJobs">> => list(harvest_job()),
%%   <<"NextToken">> => string()
%% }
-type list_harvest_jobs_response() :: #{binary() => any()}.


%% Example:
%% update_channel_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedAt">> => string(),
%%   <<"Description">> => string(),
%%   <<"EgressAccessLogs">> => egress_access_logs(),
%%   <<"HlsIngest">> => hls_ingest(),
%%   <<"Id">> => string(),
%%   <<"IngressAccessLogs">> => ingress_access_logs(),
%%   <<"Tags">> => map()
%% }
-type update_channel_response() :: #{binary() => any()}.


%% Example:
%% mss_encryption() :: #{
%%   <<"SpekeKeyProvider">> => speke_key_provider()
%% }
-type mss_encryption() :: #{binary() => any()}.


%% Example:
%% update_origin_endpoint_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Authorization">> => authorization(),
%%   <<"ChannelId">> => string(),
%%   <<"CmafPackage">> => cmaf_package(),
%%   <<"CreatedAt">> => string(),
%%   <<"DashPackage">> => dash_package(),
%%   <<"Description">> => string(),
%%   <<"HlsPackage">> => hls_package(),
%%   <<"Id">> => string(),
%%   <<"ManifestName">> => string(),
%%   <<"MssPackage">> => mss_package(),
%%   <<"Origination">> => list(any()),
%%   <<"StartoverWindowSeconds">> => integer(),
%%   <<"Tags">> => map(),
%%   <<"TimeDelaySeconds">> => integer(),
%%   <<"Url">> => string(),
%%   <<"Whitelist">> => list(string())
%% }
-type update_origin_endpoint_response() :: #{binary() => any()}.


%% Example:
%% list_channels_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_channels_request() :: #{binary() => any()}.


%% Example:
%% list_origin_endpoints_request() :: #{
%%   <<"ChannelId">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_origin_endpoints_request() :: #{binary() => any()}.


%% Example:
%% ingress_access_logs() :: #{
%%   <<"LogGroupName">> => string()
%% }
-type ingress_access_logs() :: #{binary() => any()}.


%% Example:
%% mss_package() :: #{
%%   <<"Encryption">> => mss_encryption(),
%%   <<"ManifestWindowSeconds">> => integer(),
%%   <<"SegmentDurationSeconds">> => integer(),
%%   <<"StreamSelection">> => stream_selection()
%% }
-type mss_package() :: #{binary() => any()}.

-type configure_logs_errors() ::
    internal_server_error_exception() | 
    unprocessable_entity_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type create_channel_errors() ::
    internal_server_error_exception() | 
    unprocessable_entity_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type create_harvest_job_errors() ::
    internal_server_error_exception() | 
    unprocessable_entity_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type create_origin_endpoint_errors() ::
    internal_server_error_exception() | 
    unprocessable_entity_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type delete_channel_errors() ::
    internal_server_error_exception() | 
    unprocessable_entity_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type delete_origin_endpoint_errors() ::
    internal_server_error_exception() | 
    unprocessable_entity_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type describe_channel_errors() ::
    internal_server_error_exception() | 
    unprocessable_entity_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type describe_harvest_job_errors() ::
    internal_server_error_exception() | 
    unprocessable_entity_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type describe_origin_endpoint_errors() ::
    internal_server_error_exception() | 
    unprocessable_entity_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type list_channels_errors() ::
    internal_server_error_exception() | 
    unprocessable_entity_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type list_harvest_jobs_errors() ::
    internal_server_error_exception() | 
    unprocessable_entity_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type list_origin_endpoints_errors() ::
    internal_server_error_exception() | 
    unprocessable_entity_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type rotate_channel_credentials_errors() ::
    internal_server_error_exception() | 
    unprocessable_entity_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type rotate_ingest_endpoint_credentials_errors() ::
    internal_server_error_exception() | 
    unprocessable_entity_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type update_channel_errors() ::
    internal_server_error_exception() | 
    unprocessable_entity_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type update_origin_endpoint_errors() ::
    internal_server_error_exception() | 
    unprocessable_entity_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Changes the Channel's properities to configure log subscription
-spec configure_logs(aws_client:aws_client(), binary() | list(), configure_logs_request()) ->
    {ok, configure_logs_response(), tuple()} |
    {error, any()} |
    {error, configure_logs_errors(), tuple()}.
configure_logs(Client, Id, Input) ->
    configure_logs(Client, Id, Input, []).

-spec configure_logs(aws_client:aws_client(), binary() | list(), configure_logs_request(), proplists:proplist()) ->
    {ok, configure_logs_response(), tuple()} |
    {error, any()} |
    {error, configure_logs_errors(), tuple()}.
configure_logs(Client, Id, Input0, Options0) ->
    Method = put,
    Path = ["/channels/", aws_util:encode_uri(Id), "/configure_logs"],
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

%% @doc Creates a new Channel.
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
    Path = ["/channels"],
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

%% @doc Creates a new HarvestJob record.
-spec create_harvest_job(aws_client:aws_client(), create_harvest_job_request()) ->
    {ok, create_harvest_job_response(), tuple()} |
    {error, any()} |
    {error, create_harvest_job_errors(), tuple()}.
create_harvest_job(Client, Input) ->
    create_harvest_job(Client, Input, []).

-spec create_harvest_job(aws_client:aws_client(), create_harvest_job_request(), proplists:proplist()) ->
    {ok, create_harvest_job_response(), tuple()} |
    {error, any()} |
    {error, create_harvest_job_errors(), tuple()}.
create_harvest_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/harvest_jobs"],
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

%% @doc Creates a new OriginEndpoint record.
-spec create_origin_endpoint(aws_client:aws_client(), create_origin_endpoint_request()) ->
    {ok, create_origin_endpoint_response(), tuple()} |
    {error, any()} |
    {error, create_origin_endpoint_errors(), tuple()}.
create_origin_endpoint(Client, Input) ->
    create_origin_endpoint(Client, Input, []).

-spec create_origin_endpoint(aws_client:aws_client(), create_origin_endpoint_request(), proplists:proplist()) ->
    {ok, create_origin_endpoint_response(), tuple()} |
    {error, any()} |
    {error, create_origin_endpoint_errors(), tuple()}.
create_origin_endpoint(Client, Input0, Options0) ->
    Method = post,
    Path = ["/origin_endpoints"],
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

%% @doc Deletes an existing Channel.
-spec delete_channel(aws_client:aws_client(), binary() | list(), delete_channel_request()) ->
    {ok, delete_channel_response(), tuple()} |
    {error, any()} |
    {error, delete_channel_errors(), tuple()}.
delete_channel(Client, Id, Input) ->
    delete_channel(Client, Id, Input, []).

-spec delete_channel(aws_client:aws_client(), binary() | list(), delete_channel_request(), proplists:proplist()) ->
    {ok, delete_channel_response(), tuple()} |
    {error, any()} |
    {error, delete_channel_errors(), tuple()}.
delete_channel(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/channels/", aws_util:encode_uri(Id), ""],
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

%% @doc Deletes an existing OriginEndpoint.
-spec delete_origin_endpoint(aws_client:aws_client(), binary() | list(), delete_origin_endpoint_request()) ->
    {ok, delete_origin_endpoint_response(), tuple()} |
    {error, any()} |
    {error, delete_origin_endpoint_errors(), tuple()}.
delete_origin_endpoint(Client, Id, Input) ->
    delete_origin_endpoint(Client, Id, Input, []).

-spec delete_origin_endpoint(aws_client:aws_client(), binary() | list(), delete_origin_endpoint_request(), proplists:proplist()) ->
    {ok, delete_origin_endpoint_response(), tuple()} |
    {error, any()} |
    {error, delete_origin_endpoint_errors(), tuple()}.
delete_origin_endpoint(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/origin_endpoints/", aws_util:encode_uri(Id), ""],
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

%% @doc Gets details about a Channel.
-spec describe_channel(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_channel_response(), tuple()} |
    {error, any()} |
    {error, describe_channel_errors(), tuple()}.
describe_channel(Client, Id)
  when is_map(Client) ->
    describe_channel(Client, Id, #{}, #{}).

-spec describe_channel(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_channel_response(), tuple()} |
    {error, any()} |
    {error, describe_channel_errors(), tuple()}.
describe_channel(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_channel(Client, Id, QueryMap, HeadersMap, []).

-spec describe_channel(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_channel_response(), tuple()} |
    {error, any()} |
    {error, describe_channel_errors(), tuple()}.
describe_channel(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channels/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets details about an existing HarvestJob.
-spec describe_harvest_job(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_harvest_job_response(), tuple()} |
    {error, any()} |
    {error, describe_harvest_job_errors(), tuple()}.
describe_harvest_job(Client, Id)
  when is_map(Client) ->
    describe_harvest_job(Client, Id, #{}, #{}).

-spec describe_harvest_job(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_harvest_job_response(), tuple()} |
    {error, any()} |
    {error, describe_harvest_job_errors(), tuple()}.
describe_harvest_job(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_harvest_job(Client, Id, QueryMap, HeadersMap, []).

-spec describe_harvest_job(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_harvest_job_response(), tuple()} |
    {error, any()} |
    {error, describe_harvest_job_errors(), tuple()}.
describe_harvest_job(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/harvest_jobs/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets details about an existing OriginEndpoint.
-spec describe_origin_endpoint(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_origin_endpoint_response(), tuple()} |
    {error, any()} |
    {error, describe_origin_endpoint_errors(), tuple()}.
describe_origin_endpoint(Client, Id)
  when is_map(Client) ->
    describe_origin_endpoint(Client, Id, #{}, #{}).

-spec describe_origin_endpoint(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_origin_endpoint_response(), tuple()} |
    {error, any()} |
    {error, describe_origin_endpoint_errors(), tuple()}.
describe_origin_endpoint(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_origin_endpoint(Client, Id, QueryMap, HeadersMap, []).

-spec describe_origin_endpoint(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_origin_endpoint_response(), tuple()} |
    {error, any()} |
    {error, describe_origin_endpoint_errors(), tuple()}.
describe_origin_endpoint(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/origin_endpoints/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a collection of Channels.
-spec list_channels(aws_client:aws_client()) ->
    {ok, list_channels_response(), tuple()} |
    {error, any()} |
    {error, list_channels_errors(), tuple()}.
list_channels(Client)
  when is_map(Client) ->
    list_channels(Client, #{}, #{}).

-spec list_channels(aws_client:aws_client(), map(), map()) ->
    {ok, list_channels_response(), tuple()} |
    {error, any()} |
    {error, list_channels_errors(), tuple()}.
list_channels(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_channels(Client, QueryMap, HeadersMap, []).

-spec list_channels(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_channels_response(), tuple()} |
    {error, any()} |
    {error, list_channels_errors(), tuple()}.
list_channels(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channels"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a collection of HarvestJob records.
-spec list_harvest_jobs(aws_client:aws_client()) ->
    {ok, list_harvest_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_harvest_jobs_errors(), tuple()}.
list_harvest_jobs(Client)
  when is_map(Client) ->
    list_harvest_jobs(Client, #{}, #{}).

-spec list_harvest_jobs(aws_client:aws_client(), map(), map()) ->
    {ok, list_harvest_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_harvest_jobs_errors(), tuple()}.
list_harvest_jobs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_harvest_jobs(Client, QueryMap, HeadersMap, []).

-spec list_harvest_jobs(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_harvest_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_harvest_jobs_errors(), tuple()}.
list_harvest_jobs(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/harvest_jobs"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"includeChannelId">>, maps:get(<<"includeChannelId">>, QueryMap, undefined)},
        {<<"includeStatus">>, maps:get(<<"includeStatus">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a collection of OriginEndpoint records.
-spec list_origin_endpoints(aws_client:aws_client()) ->
    {ok, list_origin_endpoints_response(), tuple()} |
    {error, any()} |
    {error, list_origin_endpoints_errors(), tuple()}.
list_origin_endpoints(Client)
  when is_map(Client) ->
    list_origin_endpoints(Client, #{}, #{}).

-spec list_origin_endpoints(aws_client:aws_client(), map(), map()) ->
    {ok, list_origin_endpoints_response(), tuple()} |
    {error, any()} |
    {error, list_origin_endpoints_errors(), tuple()}.
list_origin_endpoints(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_origin_endpoints(Client, QueryMap, HeadersMap, []).

-spec list_origin_endpoints(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_origin_endpoints_response(), tuple()} |
    {error, any()} |
    {error, list_origin_endpoints_errors(), tuple()}.
list_origin_endpoints(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/origin_endpoints"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"channelId">>, maps:get(<<"channelId">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).


-spec list_tags_for_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()}.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()}.
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

%% @doc Changes the Channel's first IngestEndpoint's username and
%% password.
%%
%% WARNING - This API is deprecated. Please use
%% RotateIngestEndpointCredentials instead
-spec rotate_channel_credentials(aws_client:aws_client(), binary() | list(), rotate_channel_credentials_request()) ->
    {ok, rotate_channel_credentials_response(), tuple()} |
    {error, any()} |
    {error, rotate_channel_credentials_errors(), tuple()}.
rotate_channel_credentials(Client, Id, Input) ->
    rotate_channel_credentials(Client, Id, Input, []).

-spec rotate_channel_credentials(aws_client:aws_client(), binary() | list(), rotate_channel_credentials_request(), proplists:proplist()) ->
    {ok, rotate_channel_credentials_response(), tuple()} |
    {error, any()} |
    {error, rotate_channel_credentials_errors(), tuple()}.
rotate_channel_credentials(Client, Id, Input0, Options0) ->
    Method = put,
    Path = ["/channels/", aws_util:encode_uri(Id), "/credentials"],
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

%% @doc Rotate the IngestEndpoint's username and password, as specified
%% by the IngestEndpoint's id.
-spec rotate_ingest_endpoint_credentials(aws_client:aws_client(), binary() | list(), binary() | list(), rotate_ingest_endpoint_credentials_request()) ->
    {ok, rotate_ingest_endpoint_credentials_response(), tuple()} |
    {error, any()} |
    {error, rotate_ingest_endpoint_credentials_errors(), tuple()}.
rotate_ingest_endpoint_credentials(Client, Id, IngestEndpointId, Input) ->
    rotate_ingest_endpoint_credentials(Client, Id, IngestEndpointId, Input, []).

-spec rotate_ingest_endpoint_credentials(aws_client:aws_client(), binary() | list(), binary() | list(), rotate_ingest_endpoint_credentials_request(), proplists:proplist()) ->
    {ok, rotate_ingest_endpoint_credentials_response(), tuple()} |
    {error, any()} |
    {error, rotate_ingest_endpoint_credentials_errors(), tuple()}.
rotate_ingest_endpoint_credentials(Client, Id, IngestEndpointId, Input0, Options0) ->
    Method = put,
    Path = ["/channels/", aws_util:encode_uri(Id), "/ingest_endpoints/", aws_util:encode_uri(IngestEndpointId), "/credentials"],
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


-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
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


-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
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

    QueryMapping = [
                     {<<"tagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an existing Channel.
-spec update_channel(aws_client:aws_client(), binary() | list(), update_channel_request()) ->
    {ok, update_channel_response(), tuple()} |
    {error, any()} |
    {error, update_channel_errors(), tuple()}.
update_channel(Client, Id, Input) ->
    update_channel(Client, Id, Input, []).

-spec update_channel(aws_client:aws_client(), binary() | list(), update_channel_request(), proplists:proplist()) ->
    {ok, update_channel_response(), tuple()} |
    {error, any()} |
    {error, update_channel_errors(), tuple()}.
update_channel(Client, Id, Input0, Options0) ->
    Method = put,
    Path = ["/channels/", aws_util:encode_uri(Id), ""],
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

%% @doc Updates an existing OriginEndpoint.
-spec update_origin_endpoint(aws_client:aws_client(), binary() | list(), update_origin_endpoint_request()) ->
    {ok, update_origin_endpoint_response(), tuple()} |
    {error, any()} |
    {error, update_origin_endpoint_errors(), tuple()}.
update_origin_endpoint(Client, Id, Input) ->
    update_origin_endpoint(Client, Id, Input, []).

-spec update_origin_endpoint(aws_client:aws_client(), binary() | list(), update_origin_endpoint_request(), proplists:proplist()) ->
    {ok, update_origin_endpoint_response(), tuple()} |
    {error, any()} |
    {error, update_origin_endpoint_errors(), tuple()}.
update_origin_endpoint(Client, Id, Input0, Options0) ->
    Method = put,
    Path = ["/origin_endpoints/", aws_util:encode_uri(Id), ""],
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
    Client1 = Client#{service => <<"mediapackage">>},
    Host = build_host(<<"mediapackage">>, Client1),
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
