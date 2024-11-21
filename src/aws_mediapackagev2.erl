%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc
%% This guide is intended for creating AWS Elemental MediaPackage resources
%% in MediaPackage Version 2 (v2) starting from May 2023.
%%
%% To get started with MediaPackage v2, create your MediaPackage resources.
%% There isn't an automated process to
%% migrate your resources from MediaPackage v1 to MediaPackage v2.
%%
%% The names of the entities that you use to access this API, like URLs and
%% ARNs, all have the versioning information
%% added, like &quot;v2&quot;, to distinguish from the prior version. If you
%% used MediaPackage prior to this release, you can't use
%% the MediaPackage v2 CLI or the MediaPackage v2 API to access any
%% MediaPackage v1 resources.
%%
%% If you created resources in MediaPackage v1, use video on demand (VOD)
%% workflows, and aren't looking to migrate to MediaPackage v2 yet,
%% see the MediaPackage v1 Live API Reference:
%% https://docs.aws.amazon.com/mediapackage/latest/apireference/what-is.html.
%%
%% This is the AWS Elemental MediaPackage v2 Live REST API Reference. It
%% describes all the MediaPackage API operations for live content in detail,
%% and provides sample requests, responses, and errors for the supported web
%% services protocols.
%%
%% We assume that you have the IAM permissions that you need to use
%% MediaPackage via the REST API. We also assume that you are familiar with
%% the features and operations of MediaPackage, as described in the AWS
%% Elemental MediaPackage User Guide.
-module(aws_mediapackagev2).

-export([cancel_harvest_job/6,
         cancel_harvest_job/7,
         create_channel/3,
         create_channel/4,
         create_channel_group/2,
         create_channel_group/3,
         create_harvest_job/5,
         create_harvest_job/6,
         create_origin_endpoint/4,
         create_origin_endpoint/5,
         delete_channel/4,
         delete_channel/5,
         delete_channel_group/3,
         delete_channel_group/4,
         delete_channel_policy/4,
         delete_channel_policy/5,
         delete_origin_endpoint/5,
         delete_origin_endpoint/6,
         delete_origin_endpoint_policy/5,
         delete_origin_endpoint_policy/6,
         get_channel/3,
         get_channel/5,
         get_channel/6,
         get_channel_group/2,
         get_channel_group/4,
         get_channel_group/5,
         get_channel_policy/3,
         get_channel_policy/5,
         get_channel_policy/6,
         get_harvest_job/5,
         get_harvest_job/7,
         get_harvest_job/8,
         get_origin_endpoint/4,
         get_origin_endpoint/6,
         get_origin_endpoint/7,
         get_origin_endpoint_policy/4,
         get_origin_endpoint_policy/6,
         get_origin_endpoint_policy/7,
         list_channel_groups/1,
         list_channel_groups/3,
         list_channel_groups/4,
         list_channels/2,
         list_channels/4,
         list_channels/5,
         list_harvest_jobs/2,
         list_harvest_jobs/4,
         list_harvest_jobs/5,
         list_origin_endpoints/3,
         list_origin_endpoints/5,
         list_origin_endpoints/6,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         put_channel_policy/4,
         put_channel_policy/5,
         put_origin_endpoint_policy/5,
         put_origin_endpoint_policy/6,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_channel/4,
         update_channel/5,
         update_channel_group/3,
         update_channel_group/4,
         update_origin_endpoint/5,
         update_origin_endpoint/6]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% put_channel_policy_request() :: #{
%%   <<"Policy">> := string()
%% }
-type put_channel_policy_request() :: #{binary() => any()}.

%% Example:
%% delete_channel_request() :: #{}
-type delete_channel_request() :: #{}.


%% Example:
%% input_switch_configuration() :: #{
%%   <<"MQCSInputSwitching">> => [boolean()]
%% }
-type input_switch_configuration() :: #{binary() => any()}.

%% Example:
%% cancel_harvest_job_response() :: #{}
-type cancel_harvest_job_response() :: #{}.

%% Example:
%% get_channel_request() :: #{}
-type get_channel_request() :: #{}.

%% Example:
%% put_channel_policy_response() :: #{}
-type put_channel_policy_response() :: #{}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"Tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% create_origin_endpoint_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"ContainerType">> := list(any()),
%%   <<"DashManifests">> => list(create_dash_manifest_configuration()()),
%%   <<"Description">> => string(),
%%   <<"ForceEndpointErrorConfiguration">> => force_endpoint_error_configuration(),
%%   <<"HlsManifests">> => list(create_hls_manifest_configuration()()),
%%   <<"LowLatencyHlsManifests">> => list(create_low_latency_hls_manifest_configuration()()),
%%   <<"OriginEndpointName">> := string(),
%%   <<"Segment">> => segment(),
%%   <<"StartoverWindowSeconds">> => [integer()],
%%   <<"Tags">> => map()
%% }
-type create_origin_endpoint_request() :: #{binary() => any()}.


%% Example:
%% channel_list_configuration() :: #{
%%   <<"Arn">> => [string()],
%%   <<"ChannelGroupName">> => [string()],
%%   <<"ChannelName">> => [string()],
%%   <<"CreatedAt">> => [non_neg_integer()],
%%   <<"Description">> => string(),
%%   <<"InputType">> => list(any()),
%%   <<"ModifiedAt">> => [non_neg_integer()]
%% }
-type channel_list_configuration() :: #{binary() => any()}.


%% Example:
%% harvester_schedule_configuration() :: #{
%%   <<"EndTime">> => [non_neg_integer()],
%%   <<"StartTime">> => [non_neg_integer()]
%% }
-type harvester_schedule_configuration() :: #{binary() => any()}.


%% Example:
%% create_channel_response() :: #{
%%   <<"Arn">> => [string()],
%%   <<"ChannelGroupName">> => [string()],
%%   <<"ChannelName">> => [string()],
%%   <<"CreatedAt">> => [non_neg_integer()],
%%   <<"Description">> => string(),
%%   <<"ETag">> => string(),
%%   <<"IngestEndpoints">> => list(ingest_endpoint()()),
%%   <<"InputSwitchConfiguration">> => input_switch_configuration(),
%%   <<"InputType">> => list(any()),
%%   <<"ModifiedAt">> => [non_neg_integer()],
%%   <<"OutputHeaderConfiguration">> => output_header_configuration(),
%%   <<"Tags">> => map()
%% }
-type create_channel_response() :: #{binary() => any()}.


%% Example:
%% list_dash_manifest_configuration() :: #{
%%   <<"ManifestName">> => string(),
%%   <<"Url">> => [string()]
%% }
-type list_dash_manifest_configuration() :: #{binary() => any()}.


%% Example:
%% channel_group_list_configuration() :: #{
%%   <<"Arn">> => [string()],
%%   <<"ChannelGroupName">> => [string()],
%%   <<"CreatedAt">> => [non_neg_integer()],
%%   <<"Description">> => string(),
%%   <<"ModifiedAt">> => [non_neg_integer()]
%% }
-type channel_group_list_configuration() :: #{binary() => any()}.

%% Example:
%% delete_channel_response() :: #{}
-type delete_channel_response() :: #{}.


%% Example:
%% list_hls_manifest_configuration() :: #{
%%   <<"ChildManifestName">> => string(),
%%   <<"ManifestName">> => string(),
%%   <<"Url">> => [string()]
%% }
-type list_hls_manifest_configuration() :: #{binary() => any()}.


%% Example:
%% create_origin_endpoint_response() :: #{
%%   <<"Arn">> => [string()],
%%   <<"ChannelGroupName">> => string(),
%%   <<"ChannelName">> => string(),
%%   <<"ContainerType">> => list(any()),
%%   <<"CreatedAt">> => [non_neg_integer()],
%%   <<"DashManifests">> => list(get_dash_manifest_configuration()()),
%%   <<"Description">> => string(),
%%   <<"ETag">> => string(),
%%   <<"ForceEndpointErrorConfiguration">> => force_endpoint_error_configuration(),
%%   <<"HlsManifests">> => list(get_hls_manifest_configuration()()),
%%   <<"LowLatencyHlsManifests">> => list(get_low_latency_hls_manifest_configuration()()),
%%   <<"ModifiedAt">> => [non_neg_integer()],
%%   <<"OriginEndpointName">> => string(),
%%   <<"Segment">> => segment(),
%%   <<"StartoverWindowSeconds">> => [integer()],
%%   <<"Tags">> => map()
%% }
-type create_origin_endpoint_response() :: #{binary() => any()}.


%% Example:
%% create_hls_manifest_configuration() :: #{
%%   <<"ChildManifestName">> => string(),
%%   <<"FilterConfiguration">> => filter_configuration(),
%%   <<"ManifestName">> => string(),
%%   <<"ManifestWindowSeconds">> => [integer()],
%%   <<"ProgramDateTimeIntervalSeconds">> => [integer()],
%%   <<"ScteHls">> => scte_hls(),
%%   <<"StartTag">> => start_tag()
%% }
-type create_hls_manifest_configuration() :: #{binary() => any()}.


%% Example:
%% create_dash_manifest_configuration() :: #{
%%   <<"DrmSignaling">> => list(any()),
%%   <<"FilterConfiguration">> => filter_configuration(),
%%   <<"ManifestName">> => string(),
%%   <<"ManifestWindowSeconds">> => [integer()],
%%   <<"MinBufferTimeSeconds">> => [integer()],
%%   <<"MinUpdatePeriodSeconds">> => [integer()],
%%   <<"PeriodTriggers">> => list(list(any())()),
%%   <<"ScteDash">> => scte_dash(),
%%   <<"SegmentTemplateFormat">> => list(any()),
%%   <<"SuggestedPresentationDelaySeconds">> => [integer()],
%%   <<"UtcTiming">> => dash_utc_timing()
%% }
-type create_dash_manifest_configuration() :: #{binary() => any()}.


%% Example:
%% update_origin_endpoint_request() :: #{
%%   <<"ContainerType">> := list(any()),
%%   <<"DashManifests">> => list(create_dash_manifest_configuration()()),
%%   <<"Description">> => string(),
%%   <<"ETag">> => string(),
%%   <<"ForceEndpointErrorConfiguration">> => force_endpoint_error_configuration(),
%%   <<"HlsManifests">> => list(create_hls_manifest_configuration()()),
%%   <<"LowLatencyHlsManifests">> => list(create_low_latency_hls_manifest_configuration()()),
%%   <<"Segment">> => segment(),
%%   <<"StartoverWindowSeconds">> => [integer()]
%% }
-type update_origin_endpoint_request() :: #{binary() => any()}.

%% Example:
%% delete_channel_policy_request() :: #{}
-type delete_channel_policy_request() :: #{}.


%% Example:
%% harvested_dash_manifest() :: #{
%%   <<"ManifestName">> => string()
%% }
-type harvested_dash_manifest() :: #{binary() => any()}.


%% Example:
%% put_origin_endpoint_policy_request() :: #{
%%   <<"Policy">> := string()
%% }
-type put_origin_endpoint_policy_request() :: #{binary() => any()}.


%% Example:
%% dash_utc_timing() :: #{
%%   <<"TimingMode">> => list(any()),
%%   <<"TimingSource">> => [string()]
%% }
-type dash_utc_timing() :: #{binary() => any()}.


%% Example:
%% list_harvest_jobs_request() :: #{
%%   <<"ChannelName">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => [string()],
%%   <<"OriginEndpointName">> => string(),
%%   <<"Status">> => list(any())
%% }
-type list_harvest_jobs_request() :: #{binary() => any()}.

%% Example:
%% delete_origin_endpoint_response() :: #{}
-type delete_origin_endpoint_response() :: #{}.

%% Example:
%% delete_origin_endpoint_request() :: #{}
-type delete_origin_endpoint_request() :: #{}.


%% Example:
%% get_low_latency_hls_manifest_configuration() :: #{
%%   <<"ChildManifestName">> => string(),
%%   <<"FilterConfiguration">> => filter_configuration(),
%%   <<"ManifestName">> => string(),
%%   <<"ManifestWindowSeconds">> => [integer()],
%%   <<"ProgramDateTimeIntervalSeconds">> => [integer()],
%%   <<"ScteHls">> => scte_hls(),
%%   <<"StartTag">> => start_tag(),
%%   <<"Url">> => [string()]
%% }
-type get_low_latency_hls_manifest_configuration() :: #{binary() => any()}.


%% Example:
%% get_hls_manifest_configuration() :: #{
%%   <<"ChildManifestName">> => string(),
%%   <<"FilterConfiguration">> => filter_configuration(),
%%   <<"ManifestName">> => string(),
%%   <<"ManifestWindowSeconds">> => [integer()],
%%   <<"ProgramDateTimeIntervalSeconds">> => [integer()],
%%   <<"ScteHls">> => scte_hls(),
%%   <<"StartTag">> => start_tag(),
%%   <<"Url">> => [string()]
%% }
-type get_hls_manifest_configuration() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"TagKeys">> := list(string()())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% list_channel_groups_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => [string()]
%% }
-type list_channel_groups_request() :: #{binary() => any()}.


%% Example:
%% segment() :: #{
%%   <<"Encryption">> => encryption(),
%%   <<"IncludeIframeOnlyStreams">> => [boolean()],
%%   <<"Scte">> => scte(),
%%   <<"SegmentDurationSeconds">> => [integer()],
%%   <<"SegmentName">> => [string()],
%%   <<"TsIncludeDvbSubtitles">> => [boolean()],
%%   <<"TsUseAudioRenditionGroup">> => [boolean()]
%% }
-type segment() :: #{binary() => any()}.


%% Example:
%% list_origin_endpoints_response() :: #{
%%   <<"Items">> => list(origin_endpoint_list_configuration()()),
%%   <<"NextToken">> => [string()]
%% }
-type list_origin_endpoints_response() :: #{binary() => any()}.

%% Example:
%% delete_channel_group_request() :: #{}
-type delete_channel_group_request() :: #{}.


%% Example:
%% create_harvest_job_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"Description">> => string(),
%%   <<"Destination">> := destination(),
%%   <<"HarvestJobName">> => string(),
%%   <<"HarvestedManifests">> := harvested_manifests(),
%%   <<"ScheduleConfiguration">> := harvester_schedule_configuration(),
%%   <<"Tags">> => map()
%% }
-type create_harvest_job_request() :: #{binary() => any()}.


%% Example:
%% harvested_low_latency_hls_manifest() :: #{
%%   <<"ManifestName">> => string()
%% }
-type harvested_low_latency_hls_manifest() :: #{binary() => any()}.


%% Example:
%% start_tag() :: #{
%%   <<"Precise">> => [boolean()],
%%   <<"TimeOffset">> => [float()]
%% }
-type start_tag() :: #{binary() => any()}.


%% Example:
%% force_endpoint_error_configuration() :: #{
%%   <<"EndpointErrorConditions">> => list(list(any())())
%% }
-type force_endpoint_error_configuration() :: #{binary() => any()}.


%% Example:
%% output_header_configuration() :: #{
%%   <<"PublishMQCS">> => [boolean()]
%% }
-type output_header_configuration() :: #{binary() => any()}.

%% Example:
%% put_origin_endpoint_policy_response() :: #{}
-type put_origin_endpoint_policy_response() :: #{}.


%% Example:
%% conflict_exception() :: #{
%%   <<"ConflictExceptionType">> => list(any()),
%%   <<"Message">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => [string()],
%%   <<"ResourceTypeNotFound">> => list(any())
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% create_channel_group_request() :: #{
%%   <<"ChannelGroupName">> := string(),
%%   <<"ClientToken">> => string(),
%%   <<"Description">> => string(),
%%   <<"Tags">> => map()
%% }
-type create_channel_group_request() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% delete_origin_endpoint_policy_response() :: #{}
-type delete_origin_endpoint_policy_response() :: #{}.

%% Example:
%% get_origin_endpoint_policy_request() :: #{}
-type get_origin_endpoint_policy_request() :: #{}.

%% Example:
%% delete_channel_policy_response() :: #{}
-type delete_channel_policy_response() :: #{}.


%% Example:
%% update_channel_group_request() :: #{
%%   <<"Description">> => string(),
%%   <<"ETag">> => string()
%% }
-type update_channel_group_request() :: #{binary() => any()}.


%% Example:
%% speke_key_provider() :: #{
%%   <<"DrmSystems">> => list(list(any())()),
%%   <<"EncryptionContractConfiguration">> => encryption_contract_configuration(),
%%   <<"ResourceId">> => [string()],
%%   <<"RoleArn">> => [string()],
%%   <<"Url">> => [string()]
%% }
-type speke_key_provider() :: #{binary() => any()}.


%% Example:
%% encryption() :: #{
%%   <<"ConstantInitializationVector">> => [string()],
%%   <<"EncryptionMethod">> => encryption_method(),
%%   <<"KeyRotationIntervalSeconds">> => [integer()],
%%   <<"SpekeKeyProvider">> => speke_key_provider()
%% }
-type encryption() :: #{binary() => any()}.


%% Example:
%% ingest_endpoint() :: #{
%%   <<"Id">> => [string()],
%%   <<"Url">> => [string()]
%% }
-type ingest_endpoint() :: #{binary() => any()}.

%% Example:
%% delete_channel_group_response() :: #{}
-type delete_channel_group_response() :: #{}.


%% Example:
%% create_channel_request() :: #{
%%   <<"ChannelName">> := string(),
%%   <<"ClientToken">> => string(),
%%   <<"Description">> => string(),
%%   <<"InputSwitchConfiguration">> => input_switch_configuration(),
%%   <<"InputType">> => list(any()),
%%   <<"OutputHeaderConfiguration">> => output_header_configuration(),
%%   <<"Tags">> => map()
%% }
-type create_channel_request() :: #{binary() => any()}.


%% Example:
%% filter_configuration() :: #{
%%   <<"ClipStartTime">> => [non_neg_integer()],
%%   <<"End">> => [non_neg_integer()],
%%   <<"ManifestFilter">> => [string()],
%%   <<"Start">> => [non_neg_integer()],
%%   <<"TimeDelaySeconds">> => [integer()]
%% }
-type filter_configuration() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% get_channel_policy_response() :: #{
%%   <<"ChannelGroupName">> => [string()],
%%   <<"ChannelName">> => [string()],
%%   <<"Policy">> => string()
%% }
-type get_channel_policy_response() :: #{binary() => any()}.


%% Example:
%% get_dash_manifest_configuration() :: #{
%%   <<"DrmSignaling">> => list(any()),
%%   <<"FilterConfiguration">> => filter_configuration(),
%%   <<"ManifestName">> => string(),
%%   <<"ManifestWindowSeconds">> => [integer()],
%%   <<"MinBufferTimeSeconds">> => [integer()],
%%   <<"MinUpdatePeriodSeconds">> => [integer()],
%%   <<"PeriodTriggers">> => list(list(any())()),
%%   <<"ScteDash">> => scte_dash(),
%%   <<"SegmentTemplateFormat">> => list(any()),
%%   <<"SuggestedPresentationDelaySeconds">> => [integer()],
%%   <<"Url">> => [string()],
%%   <<"UtcTiming">> => dash_utc_timing()
%% }
-type get_dash_manifest_configuration() :: #{binary() => any()}.


%% Example:
%% list_channels_response() :: #{
%%   <<"Items">> => list(channel_list_configuration()()),
%%   <<"NextToken">> => [string()]
%% }
-type list_channels_response() :: #{binary() => any()}.

%% Example:
%% delete_origin_endpoint_policy_request() :: #{}
-type delete_origin_endpoint_policy_request() :: #{}.


%% Example:
%% update_channel_group_response() :: #{
%%   <<"Arn">> => [string()],
%%   <<"ChannelGroupName">> => [string()],
%%   <<"CreatedAt">> => [non_neg_integer()],
%%   <<"Description">> => string(),
%%   <<"ETag">> => string(),
%%   <<"EgressDomain">> => [string()],
%%   <<"ModifiedAt">> => [non_neg_integer()],
%%   <<"Tags">> => map()
%% }
-type update_channel_group_response() :: #{binary() => any()}.


%% Example:
%% update_channel_request() :: #{
%%   <<"Description">> => string(),
%%   <<"ETag">> => string(),
%%   <<"InputSwitchConfiguration">> => input_switch_configuration(),
%%   <<"OutputHeaderConfiguration">> => output_header_configuration()
%% }
-type update_channel_request() :: #{binary() => any()}.


%% Example:
%% encryption_contract_configuration() :: #{
%%   <<"PresetSpeke20Audio">> => list(any()),
%%   <<"PresetSpeke20Video">> => list(any())
%% }
-type encryption_contract_configuration() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% harvested_hls_manifest() :: #{
%%   <<"ManifestName">> => string()
%% }
-type harvested_hls_manifest() :: #{binary() => any()}.


%% Example:
%% scte_dash() :: #{
%%   <<"AdMarkerDash">> => list(any())
%% }
-type scte_dash() :: #{binary() => any()}.


%% Example:
%% list_channel_groups_response() :: #{
%%   <<"Items">> => list(channel_group_list_configuration()()),
%%   <<"NextToken">> => [string()]
%% }
-type list_channel_groups_response() :: #{binary() => any()}.


%% Example:
%% cancel_harvest_job_request() :: #{
%%   <<"ETag">> => string()
%% }
-type cancel_harvest_job_request() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% encryption_method() :: #{
%%   <<"CmafEncryptionMethod">> => list(any()),
%%   <<"TsEncryptionMethod">> => list(any())
%% }
-type encryption_method() :: #{binary() => any()}.


%% Example:
%% scte_hls() :: #{
%%   <<"AdMarkerHls">> => list(any())
%% }
-type scte_hls() :: #{binary() => any()}.

%% Example:
%% get_harvest_job_request() :: #{}
-type get_harvest_job_request() :: #{}.


%% Example:
%% validation_exception() :: #{
%%   <<"Message">> => [string()],
%%   <<"ValidationExceptionType">> => list(any())
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% destination() :: #{
%%   <<"S3Destination">> => s3_destination_config()
%% }
-type destination() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% list_low_latency_hls_manifest_configuration() :: #{
%%   <<"ChildManifestName">> => string(),
%%   <<"ManifestName">> => string(),
%%   <<"Url">> => [string()]
%% }
-type list_low_latency_hls_manifest_configuration() :: #{binary() => any()}.


%% Example:
%% get_harvest_job_response() :: #{
%%   <<"Arn">> => [string()],
%%   <<"ChannelGroupName">> => string(),
%%   <<"ChannelName">> => string(),
%%   <<"CreatedAt">> => [non_neg_integer()],
%%   <<"Description">> => string(),
%%   <<"Destination">> => destination(),
%%   <<"ETag">> => string(),
%%   <<"ErrorMessage">> => [string()],
%%   <<"HarvestJobName">> => string(),
%%   <<"HarvestedManifests">> => harvested_manifests(),
%%   <<"ModifiedAt">> => [non_neg_integer()],
%%   <<"OriginEndpointName">> => string(),
%%   <<"ScheduleConfiguration">> => harvester_schedule_configuration(),
%%   <<"Status">> => list(any()),
%%   <<"Tags">> => map()
%% }
-type get_harvest_job_response() :: #{binary() => any()}.


%% Example:
%% harvest_job() :: #{
%%   <<"Arn">> => [string()],
%%   <<"ChannelGroupName">> => string(),
%%   <<"ChannelName">> => string(),
%%   <<"CreatedAt">> => [non_neg_integer()],
%%   <<"Description">> => string(),
%%   <<"Destination">> => destination(),
%%   <<"ETag">> => string(),
%%   <<"ErrorMessage">> => [string()],
%%   <<"HarvestJobName">> => string(),
%%   <<"HarvestedManifests">> => harvested_manifests(),
%%   <<"ModifiedAt">> => [non_neg_integer()],
%%   <<"OriginEndpointName">> => string(),
%%   <<"ScheduleConfiguration">> => harvester_schedule_configuration(),
%%   <<"Status">> => list(any())
%% }
-type harvest_job() :: #{binary() => any()}.

%% Example:
%% get_channel_group_request() :: #{}
-type get_channel_group_request() :: #{}.


%% Example:
%% scte() :: #{
%%   <<"ScteFilter">> => list(list(any())())
%% }
-type scte() :: #{binary() => any()}.


%% Example:
%% get_channel_response() :: #{
%%   <<"Arn">> => [string()],
%%   <<"ChannelGroupName">> => [string()],
%%   <<"ChannelName">> => [string()],
%%   <<"CreatedAt">> => [non_neg_integer()],
%%   <<"Description">> => string(),
%%   <<"ETag">> => string(),
%%   <<"IngestEndpoints">> => list(ingest_endpoint()()),
%%   <<"InputSwitchConfiguration">> => input_switch_configuration(),
%%   <<"InputType">> => list(any()),
%%   <<"ModifiedAt">> => [non_neg_integer()],
%%   <<"OutputHeaderConfiguration">> => output_header_configuration(),
%%   <<"Tags">> => map()
%% }
-type get_channel_response() :: #{binary() => any()}.


%% Example:
%% create_harvest_job_response() :: #{
%%   <<"Arn">> => [string()],
%%   <<"ChannelGroupName">> => string(),
%%   <<"ChannelName">> => string(),
%%   <<"CreatedAt">> => [non_neg_integer()],
%%   <<"Description">> => string(),
%%   <<"Destination">> => destination(),
%%   <<"ETag">> => string(),
%%   <<"ErrorMessage">> => [string()],
%%   <<"HarvestJobName">> => string(),
%%   <<"HarvestedManifests">> => harvested_manifests(),
%%   <<"ModifiedAt">> => [non_neg_integer()],
%%   <<"OriginEndpointName">> => string(),
%%   <<"ScheduleConfiguration">> => harvester_schedule_configuration(),
%%   <<"Status">> => list(any()),
%%   <<"Tags">> => map()
%% }
-type create_harvest_job_response() :: #{binary() => any()}.


%% Example:
%% list_harvest_jobs_response() :: #{
%%   <<"Items">> => list(harvest_job()()),
%%   <<"NextToken">> => [string()]
%% }
-type list_harvest_jobs_response() :: #{binary() => any()}.

%% Example:
%% get_origin_endpoint_request() :: #{}
-type get_origin_endpoint_request() :: #{}.


%% Example:
%% update_channel_response() :: #{
%%   <<"Arn">> => [string()],
%%   <<"ChannelGroupName">> => [string()],
%%   <<"ChannelName">> => [string()],
%%   <<"CreatedAt">> => [non_neg_integer()],
%%   <<"Description">> => string(),
%%   <<"ETag">> => string(),
%%   <<"IngestEndpoints">> => list(ingest_endpoint()()),
%%   <<"InputSwitchConfiguration">> => input_switch_configuration(),
%%   <<"InputType">> => list(any()),
%%   <<"ModifiedAt">> => [non_neg_integer()],
%%   <<"OutputHeaderConfiguration">> => output_header_configuration(),
%%   <<"Tags">> => map()
%% }
-type update_channel_response() :: #{binary() => any()}.


%% Example:
%% origin_endpoint_list_configuration() :: #{
%%   <<"Arn">> => [string()],
%%   <<"ChannelGroupName">> => string(),
%%   <<"ChannelName">> => string(),
%%   <<"ContainerType">> => list(any()),
%%   <<"CreatedAt">> => [non_neg_integer()],
%%   <<"DashManifests">> => list(list_dash_manifest_configuration()()),
%%   <<"Description">> => string(),
%%   <<"ForceEndpointErrorConfiguration">> => force_endpoint_error_configuration(),
%%   <<"HlsManifests">> => list(list_hls_manifest_configuration()()),
%%   <<"LowLatencyHlsManifests">> => list(list_low_latency_hls_manifest_configuration()()),
%%   <<"ModifiedAt">> => [non_neg_integer()],
%%   <<"OriginEndpointName">> => string()
%% }
-type origin_endpoint_list_configuration() :: #{binary() => any()}.

%% Example:
%% get_channel_policy_request() :: #{}
-type get_channel_policy_request() :: #{}.


%% Example:
%% get_channel_group_response() :: #{
%%   <<"Arn">> => [string()],
%%   <<"ChannelGroupName">> => [string()],
%%   <<"CreatedAt">> => [non_neg_integer()],
%%   <<"Description">> => string(),
%%   <<"ETag">> => string(),
%%   <<"EgressDomain">> => [string()],
%%   <<"ModifiedAt">> => [non_neg_integer()],
%%   <<"Tags">> => map()
%% }
-type get_channel_group_response() :: #{binary() => any()}.


%% Example:
%% create_low_latency_hls_manifest_configuration() :: #{
%%   <<"ChildManifestName">> => string(),
%%   <<"FilterConfiguration">> => filter_configuration(),
%%   <<"ManifestName">> => string(),
%%   <<"ManifestWindowSeconds">> => [integer()],
%%   <<"ProgramDateTimeIntervalSeconds">> => [integer()],
%%   <<"ScteHls">> => scte_hls(),
%%   <<"StartTag">> => start_tag()
%% }
-type create_low_latency_hls_manifest_configuration() :: #{binary() => any()}.


%% Example:
%% create_channel_group_response() :: #{
%%   <<"Arn">> => [string()],
%%   <<"ChannelGroupName">> => [string()],
%%   <<"CreatedAt">> => [non_neg_integer()],
%%   <<"Description">> => string(),
%%   <<"ETag">> => string(),
%%   <<"EgressDomain">> => [string()],
%%   <<"ModifiedAt">> => [non_neg_integer()],
%%   <<"Tags">> => map()
%% }
-type create_channel_group_response() :: #{binary() => any()}.


%% Example:
%% harvested_manifests() :: #{
%%   <<"DashManifests">> => list(harvested_dash_manifest()()),
%%   <<"HlsManifests">> => list(harvested_hls_manifest()()),
%%   <<"LowLatencyHlsManifests">> => list(harvested_low_latency_hls_manifest()())
%% }
-type harvested_manifests() :: #{binary() => any()}.


%% Example:
%% update_origin_endpoint_response() :: #{
%%   <<"Arn">> => [string()],
%%   <<"ChannelGroupName">> => string(),
%%   <<"ChannelName">> => string(),
%%   <<"ContainerType">> => list(any()),
%%   <<"CreatedAt">> => [non_neg_integer()],
%%   <<"DashManifests">> => list(get_dash_manifest_configuration()()),
%%   <<"Description">> => string(),
%%   <<"ETag">> => string(),
%%   <<"ForceEndpointErrorConfiguration">> => force_endpoint_error_configuration(),
%%   <<"HlsManifests">> => list(get_hls_manifest_configuration()()),
%%   <<"LowLatencyHlsManifests">> => list(get_low_latency_hls_manifest_configuration()()),
%%   <<"ModifiedAt">> => [non_neg_integer()],
%%   <<"OriginEndpointName">> => string(),
%%   <<"Segment">> => segment(),
%%   <<"StartoverWindowSeconds">> => [integer()],
%%   <<"Tags">> => map()
%% }
-type update_origin_endpoint_response() :: #{binary() => any()}.


%% Example:
%% list_channels_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => [string()]
%% }
-type list_channels_request() :: #{binary() => any()}.


%% Example:
%% list_origin_endpoints_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => [string()]
%% }
-type list_origin_endpoints_request() :: #{binary() => any()}.


%% Example:
%% s3_destination_config() :: #{
%%   <<"BucketName">> => string(),
%%   <<"DestinationPath">> => string()
%% }
-type s3_destination_config() :: #{binary() => any()}.


%% Example:
%% get_origin_endpoint_policy_response() :: #{
%%   <<"ChannelGroupName">> => string(),
%%   <<"ChannelName">> => string(),
%%   <<"OriginEndpointName">> => string(),
%%   <<"Policy">> => string()
%% }
-type get_origin_endpoint_policy_response() :: #{binary() => any()}.


%% Example:
%% get_origin_endpoint_response() :: #{
%%   <<"Arn">> => [string()],
%%   <<"ChannelGroupName">> => string(),
%%   <<"ChannelName">> => string(),
%%   <<"ContainerType">> => list(any()),
%%   <<"CreatedAt">> => [non_neg_integer()],
%%   <<"DashManifests">> => list(get_dash_manifest_configuration()()),
%%   <<"Description">> => string(),
%%   <<"ETag">> => string(),
%%   <<"ForceEndpointErrorConfiguration">> => force_endpoint_error_configuration(),
%%   <<"HlsManifests">> => list(get_hls_manifest_configuration()()),
%%   <<"LowLatencyHlsManifests">> => list(get_low_latency_hls_manifest_configuration()()),
%%   <<"ModifiedAt">> => [non_neg_integer()],
%%   <<"OriginEndpointName">> => string(),
%%   <<"Segment">> => segment(),
%%   <<"StartoverWindowSeconds">> => [integer()],
%%   <<"Tags">> => map()
%% }
-type get_origin_endpoint_response() :: #{binary() => any()}.

-type cancel_harvest_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_channel_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_channel_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_harvest_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_origin_endpoint_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_channel_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type delete_channel_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type delete_channel_policy_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type delete_origin_endpoint_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type delete_origin_endpoint_policy_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type get_channel_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_channel_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_channel_policy_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_harvest_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_origin_endpoint_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_origin_endpoint_policy_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_channel_groups_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_channels_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_harvest_jobs_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_origin_endpoints_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_tags_for_resource_errors() ::
    validation_exception().

-type put_channel_policy_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type put_origin_endpoint_policy_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type tag_resource_errors() ::
    validation_exception().

-type untag_resource_errors() ::
    validation_exception().

-type update_channel_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_channel_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_origin_endpoint_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Cancels an in-progress harvest job.
-spec cancel_harvest_job(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), cancel_harvest_job_request()) ->
    {ok, cancel_harvest_job_response(), tuple()} |
    {error, any()} |
    {error, cancel_harvest_job_errors(), tuple()}.
cancel_harvest_job(Client, ChannelGroupName, ChannelName, HarvestJobName, OriginEndpointName, Input) ->
    cancel_harvest_job(Client, ChannelGroupName, ChannelName, HarvestJobName, OriginEndpointName, Input, []).

-spec cancel_harvest_job(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), cancel_harvest_job_request(), proplists:proplist()) ->
    {ok, cancel_harvest_job_response(), tuple()} |
    {error, any()} |
    {error, cancel_harvest_job_errors(), tuple()}.
cancel_harvest_job(Client, ChannelGroupName, ChannelName, HarvestJobName, OriginEndpointName, Input0, Options0) ->
    Method = put,
    Path = ["/channelGroup/", aws_util:encode_uri(ChannelGroupName), "/channel/", aws_util:encode_uri(ChannelName), "/originEndpoint/", aws_util:encode_uri(OriginEndpointName), "/harvestJob/", aws_util:encode_uri(HarvestJobName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amzn-update-if-match">>, <<"ETag">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Create a channel to start receiving content streams.
%%
%% The channel represents the input to MediaPackage for incoming live content
%% from an encoder such as AWS Elemental MediaLive. The channel receives
%% content, and after packaging it, outputs it through an origin endpoint to
%% downstream devices (such as video players or CDNs) that request the
%% content. You can create only one channel with each request. We recommend
%% that you spread out channels between channel groups, such as putting
%% redundant channels in the same AWS Region in different channel groups.
-spec create_channel(aws_client:aws_client(), binary() | list(), create_channel_request()) ->
    {ok, create_channel_response(), tuple()} |
    {error, any()} |
    {error, create_channel_errors(), tuple()}.
create_channel(Client, ChannelGroupName, Input) ->
    create_channel(Client, ChannelGroupName, Input, []).

-spec create_channel(aws_client:aws_client(), binary() | list(), create_channel_request(), proplists:proplist()) ->
    {ok, create_channel_response(), tuple()} |
    {error, any()} |
    {error, create_channel_errors(), tuple()}.
create_channel(Client, ChannelGroupName, Input0, Options0) ->
    Method = post,
    Path = ["/channelGroup/", aws_util:encode_uri(ChannelGroupName), "/channel"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amzn-client-token">>, <<"ClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Create a channel group to group your channels and origin endpoints.
%%
%% A channel group is the top-level resource that consists of channels and
%% origin endpoints that are associated with it and that provides predictable
%% URLs for stream delivery. All channels and origin endpoints within the
%% channel group are guaranteed to share the DNS. You can create only one
%% channel group with each request.
-spec create_channel_group(aws_client:aws_client(), create_channel_group_request()) ->
    {ok, create_channel_group_response(), tuple()} |
    {error, any()} |
    {error, create_channel_group_errors(), tuple()}.
create_channel_group(Client, Input) ->
    create_channel_group(Client, Input, []).

-spec create_channel_group(aws_client:aws_client(), create_channel_group_request(), proplists:proplist()) ->
    {ok, create_channel_group_response(), tuple()} |
    {error, any()} |
    {error, create_channel_group_errors(), tuple()}.
create_channel_group(Client, Input0, Options0) ->
    Method = post,
    Path = ["/channelGroup"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amzn-client-token">>, <<"ClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new harvest job to export content from a MediaPackage v2
%% channel to an S3 bucket.
-spec create_harvest_job(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), create_harvest_job_request()) ->
    {ok, create_harvest_job_response(), tuple()} |
    {error, any()} |
    {error, create_harvest_job_errors(), tuple()}.
create_harvest_job(Client, ChannelGroupName, ChannelName, OriginEndpointName, Input) ->
    create_harvest_job(Client, ChannelGroupName, ChannelName, OriginEndpointName, Input, []).

-spec create_harvest_job(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), create_harvest_job_request(), proplists:proplist()) ->
    {ok, create_harvest_job_response(), tuple()} |
    {error, any()} |
    {error, create_harvest_job_errors(), tuple()}.
create_harvest_job(Client, ChannelGroupName, ChannelName, OriginEndpointName, Input0, Options0) ->
    Method = post,
    Path = ["/channelGroup/", aws_util:encode_uri(ChannelGroupName), "/channel/", aws_util:encode_uri(ChannelName), "/originEndpoint/", aws_util:encode_uri(OriginEndpointName), "/harvestJob"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amzn-client-token">>, <<"ClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc The endpoint is attached to a channel, and represents the output of
%% the live content.
%%
%% You can associate multiple endpoints to a single channel. Each endpoint
%% gives players and downstream CDNs (such as Amazon CloudFront) access to
%% the content for playback. Content can't be served from a channel until
%% it has an endpoint. You can create only one endpoint with each request.
-spec create_origin_endpoint(aws_client:aws_client(), binary() | list(), binary() | list(), create_origin_endpoint_request()) ->
    {ok, create_origin_endpoint_response(), tuple()} |
    {error, any()} |
    {error, create_origin_endpoint_errors(), tuple()}.
create_origin_endpoint(Client, ChannelGroupName, ChannelName, Input) ->
    create_origin_endpoint(Client, ChannelGroupName, ChannelName, Input, []).

-spec create_origin_endpoint(aws_client:aws_client(), binary() | list(), binary() | list(), create_origin_endpoint_request(), proplists:proplist()) ->
    {ok, create_origin_endpoint_response(), tuple()} |
    {error, any()} |
    {error, create_origin_endpoint_errors(), tuple()}.
create_origin_endpoint(Client, ChannelGroupName, ChannelName, Input0, Options0) ->
    Method = post,
    Path = ["/channelGroup/", aws_util:encode_uri(ChannelGroupName), "/channel/", aws_util:encode_uri(ChannelName), "/originEndpoint"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amzn-client-token">>, <<"ClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Delete a channel to stop AWS Elemental MediaPackage from receiving
%% further content.
%%
%% You must delete the channel's origin endpoints before you can delete
%% the channel.
-spec delete_channel(aws_client:aws_client(), binary() | list(), binary() | list(), delete_channel_request()) ->
    {ok, delete_channel_response(), tuple()} |
    {error, any()} |
    {error, delete_channel_errors(), tuple()}.
delete_channel(Client, ChannelGroupName, ChannelName, Input) ->
    delete_channel(Client, ChannelGroupName, ChannelName, Input, []).

-spec delete_channel(aws_client:aws_client(), binary() | list(), binary() | list(), delete_channel_request(), proplists:proplist()) ->
    {ok, delete_channel_response(), tuple()} |
    {error, any()} |
    {error, delete_channel_errors(), tuple()}.
delete_channel(Client, ChannelGroupName, ChannelName, Input0, Options0) ->
    Method = delete,
    Path = ["/channelGroup/", aws_util:encode_uri(ChannelGroupName), "/channel/", aws_util:encode_uri(ChannelName), "/"],
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

%% @doc Delete a channel group.
%%
%% You must delete the channel group's channels and origin endpoints
%% before you can delete the channel group. If you delete a channel group,
%% you'll lose access to the egress domain and will have to create a new
%% channel group to replace it.
-spec delete_channel_group(aws_client:aws_client(), binary() | list(), delete_channel_group_request()) ->
    {ok, delete_channel_group_response(), tuple()} |
    {error, any()} |
    {error, delete_channel_group_errors(), tuple()}.
delete_channel_group(Client, ChannelGroupName, Input) ->
    delete_channel_group(Client, ChannelGroupName, Input, []).

-spec delete_channel_group(aws_client:aws_client(), binary() | list(), delete_channel_group_request(), proplists:proplist()) ->
    {ok, delete_channel_group_response(), tuple()} |
    {error, any()} |
    {error, delete_channel_group_errors(), tuple()}.
delete_channel_group(Client, ChannelGroupName, Input0, Options0) ->
    Method = delete,
    Path = ["/channelGroup/", aws_util:encode_uri(ChannelGroupName), ""],
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

%% @doc Delete a channel policy.
-spec delete_channel_policy(aws_client:aws_client(), binary() | list(), binary() | list(), delete_channel_policy_request()) ->
    {ok, delete_channel_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_channel_policy_errors(), tuple()}.
delete_channel_policy(Client, ChannelGroupName, ChannelName, Input) ->
    delete_channel_policy(Client, ChannelGroupName, ChannelName, Input, []).

-spec delete_channel_policy(aws_client:aws_client(), binary() | list(), binary() | list(), delete_channel_policy_request(), proplists:proplist()) ->
    {ok, delete_channel_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_channel_policy_errors(), tuple()}.
delete_channel_policy(Client, ChannelGroupName, ChannelName, Input0, Options0) ->
    Method = delete,
    Path = ["/channelGroup/", aws_util:encode_uri(ChannelGroupName), "/channel/", aws_util:encode_uri(ChannelName), "/policy"],
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

%% @doc Origin endpoints can serve content until they're deleted.
%%
%% Delete the endpoint if it should no longer respond to playback requests.
%% You must delete all endpoints from a channel before you can delete the
%% channel.
-spec delete_origin_endpoint(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_origin_endpoint_request()) ->
    {ok, delete_origin_endpoint_response(), tuple()} |
    {error, any()} |
    {error, delete_origin_endpoint_errors(), tuple()}.
delete_origin_endpoint(Client, ChannelGroupName, ChannelName, OriginEndpointName, Input) ->
    delete_origin_endpoint(Client, ChannelGroupName, ChannelName, OriginEndpointName, Input, []).

-spec delete_origin_endpoint(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_origin_endpoint_request(), proplists:proplist()) ->
    {ok, delete_origin_endpoint_response(), tuple()} |
    {error, any()} |
    {error, delete_origin_endpoint_errors(), tuple()}.
delete_origin_endpoint(Client, ChannelGroupName, ChannelName, OriginEndpointName, Input0, Options0) ->
    Method = delete,
    Path = ["/channelGroup/", aws_util:encode_uri(ChannelGroupName), "/channel/", aws_util:encode_uri(ChannelName), "/originEndpoint/", aws_util:encode_uri(OriginEndpointName), ""],
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

%% @doc Delete an origin endpoint policy.
-spec delete_origin_endpoint_policy(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_origin_endpoint_policy_request()) ->
    {ok, delete_origin_endpoint_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_origin_endpoint_policy_errors(), tuple()}.
delete_origin_endpoint_policy(Client, ChannelGroupName, ChannelName, OriginEndpointName, Input) ->
    delete_origin_endpoint_policy(Client, ChannelGroupName, ChannelName, OriginEndpointName, Input, []).

-spec delete_origin_endpoint_policy(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_origin_endpoint_policy_request(), proplists:proplist()) ->
    {ok, delete_origin_endpoint_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_origin_endpoint_policy_errors(), tuple()}.
delete_origin_endpoint_policy(Client, ChannelGroupName, ChannelName, OriginEndpointName, Input0, Options0) ->
    Method = delete,
    Path = ["/channelGroup/", aws_util:encode_uri(ChannelGroupName), "/channel/", aws_util:encode_uri(ChannelName), "/originEndpoint/", aws_util:encode_uri(OriginEndpointName), "/policy"],
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

%% @doc Retrieves the specified channel that's configured in AWS
%% Elemental MediaPackage, including the origin endpoints that are associated
%% with it.
-spec get_channel(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_channel_response(), tuple()} |
    {error, any()} |
    {error, get_channel_errors(), tuple()}.
get_channel(Client, ChannelGroupName, ChannelName)
  when is_map(Client) ->
    get_channel(Client, ChannelGroupName, ChannelName, #{}, #{}).

-spec get_channel(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_channel_response(), tuple()} |
    {error, any()} |
    {error, get_channel_errors(), tuple()}.
get_channel(Client, ChannelGroupName, ChannelName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_channel(Client, ChannelGroupName, ChannelName, QueryMap, HeadersMap, []).

-spec get_channel(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_channel_response(), tuple()} |
    {error, any()} |
    {error, get_channel_errors(), tuple()}.
get_channel(Client, ChannelGroupName, ChannelName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channelGroup/", aws_util:encode_uri(ChannelGroupName), "/channel/", aws_util:encode_uri(ChannelName), "/"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the specified channel group that's configured in AWS
%% Elemental MediaPackage, including the channels and origin endpoints that
%% are associated with it.
-spec get_channel_group(aws_client:aws_client(), binary() | list()) ->
    {ok, get_channel_group_response(), tuple()} |
    {error, any()} |
    {error, get_channel_group_errors(), tuple()}.
get_channel_group(Client, ChannelGroupName)
  when is_map(Client) ->
    get_channel_group(Client, ChannelGroupName, #{}, #{}).

-spec get_channel_group(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_channel_group_response(), tuple()} |
    {error, any()} |
    {error, get_channel_group_errors(), tuple()}.
get_channel_group(Client, ChannelGroupName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_channel_group(Client, ChannelGroupName, QueryMap, HeadersMap, []).

-spec get_channel_group(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_channel_group_response(), tuple()} |
    {error, any()} |
    {error, get_channel_group_errors(), tuple()}.
get_channel_group(Client, ChannelGroupName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channelGroup/", aws_util:encode_uri(ChannelGroupName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the specified channel policy that's configured in AWS
%% Elemental MediaPackage.
%%
%% With policies, you can specify who has access to AWS resources and what
%% actions they can perform on those resources.
-spec get_channel_policy(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_channel_policy_response(), tuple()} |
    {error, any()} |
    {error, get_channel_policy_errors(), tuple()}.
get_channel_policy(Client, ChannelGroupName, ChannelName)
  when is_map(Client) ->
    get_channel_policy(Client, ChannelGroupName, ChannelName, #{}, #{}).

-spec get_channel_policy(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_channel_policy_response(), tuple()} |
    {error, any()} |
    {error, get_channel_policy_errors(), tuple()}.
get_channel_policy(Client, ChannelGroupName, ChannelName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_channel_policy(Client, ChannelGroupName, ChannelName, QueryMap, HeadersMap, []).

-spec get_channel_policy(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_channel_policy_response(), tuple()} |
    {error, any()} |
    {error, get_channel_policy_errors(), tuple()}.
get_channel_policy(Client, ChannelGroupName, ChannelName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channelGroup/", aws_util:encode_uri(ChannelGroupName), "/channel/", aws_util:encode_uri(ChannelName), "/policy"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the details of a specific harvest job.
-spec get_harvest_job(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_harvest_job_response(), tuple()} |
    {error, any()} |
    {error, get_harvest_job_errors(), tuple()}.
get_harvest_job(Client, ChannelGroupName, ChannelName, HarvestJobName, OriginEndpointName)
  when is_map(Client) ->
    get_harvest_job(Client, ChannelGroupName, ChannelName, HarvestJobName, OriginEndpointName, #{}, #{}).

-spec get_harvest_job(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_harvest_job_response(), tuple()} |
    {error, any()} |
    {error, get_harvest_job_errors(), tuple()}.
get_harvest_job(Client, ChannelGroupName, ChannelName, HarvestJobName, OriginEndpointName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_harvest_job(Client, ChannelGroupName, ChannelName, HarvestJobName, OriginEndpointName, QueryMap, HeadersMap, []).

-spec get_harvest_job(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_harvest_job_response(), tuple()} |
    {error, any()} |
    {error, get_harvest_job_errors(), tuple()}.
get_harvest_job(Client, ChannelGroupName, ChannelName, HarvestJobName, OriginEndpointName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channelGroup/", aws_util:encode_uri(ChannelGroupName), "/channel/", aws_util:encode_uri(ChannelName), "/originEndpoint/", aws_util:encode_uri(OriginEndpointName), "/harvestJob/", aws_util:encode_uri(HarvestJobName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the specified origin endpoint that's configured in AWS
%% Elemental MediaPackage to obtain its playback URL and to view the
%% packaging settings that it's currently using.
-spec get_origin_endpoint(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_origin_endpoint_response(), tuple()} |
    {error, any()} |
    {error, get_origin_endpoint_errors(), tuple()}.
get_origin_endpoint(Client, ChannelGroupName, ChannelName, OriginEndpointName)
  when is_map(Client) ->
    get_origin_endpoint(Client, ChannelGroupName, ChannelName, OriginEndpointName, #{}, #{}).

-spec get_origin_endpoint(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_origin_endpoint_response(), tuple()} |
    {error, any()} |
    {error, get_origin_endpoint_errors(), tuple()}.
get_origin_endpoint(Client, ChannelGroupName, ChannelName, OriginEndpointName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_origin_endpoint(Client, ChannelGroupName, ChannelName, OriginEndpointName, QueryMap, HeadersMap, []).

-spec get_origin_endpoint(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_origin_endpoint_response(), tuple()} |
    {error, any()} |
    {error, get_origin_endpoint_errors(), tuple()}.
get_origin_endpoint(Client, ChannelGroupName, ChannelName, OriginEndpointName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channelGroup/", aws_util:encode_uri(ChannelGroupName), "/channel/", aws_util:encode_uri(ChannelName), "/originEndpoint/", aws_util:encode_uri(OriginEndpointName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the specified origin endpoint policy that's configured
%% in AWS Elemental MediaPackage.
-spec get_origin_endpoint_policy(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_origin_endpoint_policy_response(), tuple()} |
    {error, any()} |
    {error, get_origin_endpoint_policy_errors(), tuple()}.
get_origin_endpoint_policy(Client, ChannelGroupName, ChannelName, OriginEndpointName)
  when is_map(Client) ->
    get_origin_endpoint_policy(Client, ChannelGroupName, ChannelName, OriginEndpointName, #{}, #{}).

-spec get_origin_endpoint_policy(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_origin_endpoint_policy_response(), tuple()} |
    {error, any()} |
    {error, get_origin_endpoint_policy_errors(), tuple()}.
get_origin_endpoint_policy(Client, ChannelGroupName, ChannelName, OriginEndpointName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_origin_endpoint_policy(Client, ChannelGroupName, ChannelName, OriginEndpointName, QueryMap, HeadersMap, []).

-spec get_origin_endpoint_policy(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_origin_endpoint_policy_response(), tuple()} |
    {error, any()} |
    {error, get_origin_endpoint_policy_errors(), tuple()}.
get_origin_endpoint_policy(Client, ChannelGroupName, ChannelName, OriginEndpointName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channelGroup/", aws_util:encode_uri(ChannelGroupName), "/channel/", aws_util:encode_uri(ChannelName), "/originEndpoint/", aws_util:encode_uri(OriginEndpointName), "/policy"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves all channel groups that are configured in AWS Elemental
%% MediaPackage, including the channels and origin endpoints that are
%% associated with it.
-spec list_channel_groups(aws_client:aws_client()) ->
    {ok, list_channel_groups_response(), tuple()} |
    {error, any()} |
    {error, list_channel_groups_errors(), tuple()}.
list_channel_groups(Client)
  when is_map(Client) ->
    list_channel_groups(Client, #{}, #{}).

-spec list_channel_groups(aws_client:aws_client(), map(), map()) ->
    {ok, list_channel_groups_response(), tuple()} |
    {error, any()} |
    {error, list_channel_groups_errors(), tuple()}.
list_channel_groups(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_channel_groups(Client, QueryMap, HeadersMap, []).

-spec list_channel_groups(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_channel_groups_response(), tuple()} |
    {error, any()} |
    {error, list_channel_groups_errors(), tuple()}.
list_channel_groups(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channelGroup"],
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

%% @doc Retrieves all channels in a specific channel group that are
%% configured in AWS Elemental MediaPackage, including the origin endpoints
%% that are associated with it.
-spec list_channels(aws_client:aws_client(), binary() | list()) ->
    {ok, list_channels_response(), tuple()} |
    {error, any()} |
    {error, list_channels_errors(), tuple()}.
list_channels(Client, ChannelGroupName)
  when is_map(Client) ->
    list_channels(Client, ChannelGroupName, #{}, #{}).

-spec list_channels(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_channels_response(), tuple()} |
    {error, any()} |
    {error, list_channels_errors(), tuple()}.
list_channels(Client, ChannelGroupName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_channels(Client, ChannelGroupName, QueryMap, HeadersMap, []).

-spec list_channels(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_channels_response(), tuple()} |
    {error, any()} |
    {error, list_channels_errors(), tuple()}.
list_channels(Client, ChannelGroupName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channelGroup/", aws_util:encode_uri(ChannelGroupName), "/channel"],
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

%% @doc Retrieves a list of harvest jobs that match the specified criteria.
-spec list_harvest_jobs(aws_client:aws_client(), binary() | list()) ->
    {ok, list_harvest_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_harvest_jobs_errors(), tuple()}.
list_harvest_jobs(Client, ChannelGroupName)
  when is_map(Client) ->
    list_harvest_jobs(Client, ChannelGroupName, #{}, #{}).

-spec list_harvest_jobs(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_harvest_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_harvest_jobs_errors(), tuple()}.
list_harvest_jobs(Client, ChannelGroupName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_harvest_jobs(Client, ChannelGroupName, QueryMap, HeadersMap, []).

-spec list_harvest_jobs(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_harvest_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_harvest_jobs_errors(), tuple()}.
list_harvest_jobs(Client, ChannelGroupName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channelGroup/", aws_util:encode_uri(ChannelGroupName), "/harvestJob"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"channelName">>, maps:get(<<"channelName">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"originEndpointName">>, maps:get(<<"originEndpointName">>, QueryMap, undefined)},
        {<<"includeStatus">>, maps:get(<<"includeStatus">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves all origin endpoints in a specific channel that are
%% configured in AWS Elemental MediaPackage.
-spec list_origin_endpoints(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_origin_endpoints_response(), tuple()} |
    {error, any()} |
    {error, list_origin_endpoints_errors(), tuple()}.
list_origin_endpoints(Client, ChannelGroupName, ChannelName)
  when is_map(Client) ->
    list_origin_endpoints(Client, ChannelGroupName, ChannelName, #{}, #{}).

-spec list_origin_endpoints(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_origin_endpoints_response(), tuple()} |
    {error, any()} |
    {error, list_origin_endpoints_errors(), tuple()}.
list_origin_endpoints(Client, ChannelGroupName, ChannelName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_origin_endpoints(Client, ChannelGroupName, ChannelName, QueryMap, HeadersMap, []).

-spec list_origin_endpoints(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_origin_endpoints_response(), tuple()} |
    {error, any()} |
    {error, list_origin_endpoints_errors(), tuple()}.
list_origin_endpoints(Client, ChannelGroupName, ChannelName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channelGroup/", aws_util:encode_uri(ChannelGroupName), "/channel/", aws_util:encode_uri(ChannelName), "/originEndpoint"],
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

%% @doc Lists the tags assigned to a resource.
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

%% @doc Attaches an IAM policy to the specified channel.
%%
%% With policies, you can specify who has access to AWS resources and what
%% actions they can perform on those resources. You can attach only one
%% policy with each request.
-spec put_channel_policy(aws_client:aws_client(), binary() | list(), binary() | list(), put_channel_policy_request()) ->
    {ok, put_channel_policy_response(), tuple()} |
    {error, any()} |
    {error, put_channel_policy_errors(), tuple()}.
put_channel_policy(Client, ChannelGroupName, ChannelName, Input) ->
    put_channel_policy(Client, ChannelGroupName, ChannelName, Input, []).

-spec put_channel_policy(aws_client:aws_client(), binary() | list(), binary() | list(), put_channel_policy_request(), proplists:proplist()) ->
    {ok, put_channel_policy_response(), tuple()} |
    {error, any()} |
    {error, put_channel_policy_errors(), tuple()}.
put_channel_policy(Client, ChannelGroupName, ChannelName, Input0, Options0) ->
    Method = put,
    Path = ["/channelGroup/", aws_util:encode_uri(ChannelGroupName), "/channel/", aws_util:encode_uri(ChannelName), "/policy"],
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

%% @doc Attaches an IAM policy to the specified origin endpoint.
%%
%% You can attach only one policy with each request.
-spec put_origin_endpoint_policy(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), put_origin_endpoint_policy_request()) ->
    {ok, put_origin_endpoint_policy_response(), tuple()} |
    {error, any()} |
    {error, put_origin_endpoint_policy_errors(), tuple()}.
put_origin_endpoint_policy(Client, ChannelGroupName, ChannelName, OriginEndpointName, Input) ->
    put_origin_endpoint_policy(Client, ChannelGroupName, ChannelName, OriginEndpointName, Input, []).

-spec put_origin_endpoint_policy(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), put_origin_endpoint_policy_request(), proplists:proplist()) ->
    {ok, put_origin_endpoint_policy_response(), tuple()} |
    {error, any()} |
    {error, put_origin_endpoint_policy_errors(), tuple()}.
put_origin_endpoint_policy(Client, ChannelGroupName, ChannelName, OriginEndpointName, Input0, Options0) ->
    Method = post,
    Path = ["/channelGroup/", aws_util:encode_uri(ChannelGroupName), "/channel/", aws_util:encode_uri(ChannelName), "/originEndpoint/", aws_util:encode_uri(OriginEndpointName), "/policy"],
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

%% @doc Assigns one of more tags (key-value pairs) to the specified
%% MediaPackage resource.
%%
%% Tags can help you organize and categorize your resources. You can also use
%% them to scope user
%% permissions, by granting a user permission to access or change only
%% resources with certain tag values.
%% You can use the TagResource operation with a resource that already has
%% tags. If you specify a new tag
%% key for the resource, this tag is appended to the list of tags associated
%% with the resource. If you
%% specify a tag key that is already associated with the resource, the new
%% tag value that you specify replaces the previous value for that tag.
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
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

%% @doc Removes one or more tags from the specified resource.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
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

%% @doc Update the specified channel.
%%
%% You can edit if MediaPackage sends ingest or egress access logs to the
%% CloudWatch log group, if content will be encrypted, the description on a
%% channel, and your channel's policy settings. You can't edit the
%% name of the channel or CloudFront distribution details.
%%
%% Any edits you make that impact the video output may not be reflected for a
%% few minutes.
-spec update_channel(aws_client:aws_client(), binary() | list(), binary() | list(), update_channel_request()) ->
    {ok, update_channel_response(), tuple()} |
    {error, any()} |
    {error, update_channel_errors(), tuple()}.
update_channel(Client, ChannelGroupName, ChannelName, Input) ->
    update_channel(Client, ChannelGroupName, ChannelName, Input, []).

-spec update_channel(aws_client:aws_client(), binary() | list(), binary() | list(), update_channel_request(), proplists:proplist()) ->
    {ok, update_channel_response(), tuple()} |
    {error, any()} |
    {error, update_channel_errors(), tuple()}.
update_channel(Client, ChannelGroupName, ChannelName, Input0, Options0) ->
    Method = put,
    Path = ["/channelGroup/", aws_util:encode_uri(ChannelGroupName), "/channel/", aws_util:encode_uri(ChannelName), "/"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amzn-update-if-match">>, <<"ETag">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Update the specified channel group.
%%
%% You can edit the description on a channel group for easier identification
%% later from the AWS Elemental MediaPackage console. You can't edit the
%% name of the channel group.
%%
%% Any edits you make that impact the video output may not be reflected for a
%% few minutes.
-spec update_channel_group(aws_client:aws_client(), binary() | list(), update_channel_group_request()) ->
    {ok, update_channel_group_response(), tuple()} |
    {error, any()} |
    {error, update_channel_group_errors(), tuple()}.
update_channel_group(Client, ChannelGroupName, Input) ->
    update_channel_group(Client, ChannelGroupName, Input, []).

-spec update_channel_group(aws_client:aws_client(), binary() | list(), update_channel_group_request(), proplists:proplist()) ->
    {ok, update_channel_group_response(), tuple()} |
    {error, any()} |
    {error, update_channel_group_errors(), tuple()}.
update_channel_group(Client, ChannelGroupName, Input0, Options0) ->
    Method = put,
    Path = ["/channelGroup/", aws_util:encode_uri(ChannelGroupName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amzn-update-if-match">>, <<"ETag">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Update the specified origin endpoint.
%%
%% Edit the packaging preferences on an endpoint to optimize the viewing
%% experience. You can't edit the name of the endpoint.
%%
%% Any edits you make that impact the video output may not be reflected for a
%% few minutes.
-spec update_origin_endpoint(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_origin_endpoint_request()) ->
    {ok, update_origin_endpoint_response(), tuple()} |
    {error, any()} |
    {error, update_origin_endpoint_errors(), tuple()}.
update_origin_endpoint(Client, ChannelGroupName, ChannelName, OriginEndpointName, Input) ->
    update_origin_endpoint(Client, ChannelGroupName, ChannelName, OriginEndpointName, Input, []).

-spec update_origin_endpoint(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_origin_endpoint_request(), proplists:proplist()) ->
    {ok, update_origin_endpoint_response(), tuple()} |
    {error, any()} |
    {error, update_origin_endpoint_errors(), tuple()}.
update_origin_endpoint(Client, ChannelGroupName, ChannelName, OriginEndpointName, Input0, Options0) ->
    Method = put,
    Path = ["/channelGroup/", aws_util:encode_uri(ChannelGroupName), "/channel/", aws_util:encode_uri(ChannelName), "/originEndpoint/", aws_util:encode_uri(OriginEndpointName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amzn-update-if-match">>, <<"ETag">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

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
    Client1 = Client#{service => <<"mediapackagev2">>},
    Host = build_host(<<"mediapackagev2">>, Client1),
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
