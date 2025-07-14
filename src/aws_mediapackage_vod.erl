%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS Elemental MediaPackage VOD
-module(aws_mediapackage_vod).

-export([configure_logs/3,
         configure_logs/4,
         create_asset/2,
         create_asset/3,
         create_packaging_configuration/2,
         create_packaging_configuration/3,
         create_packaging_group/2,
         create_packaging_group/3,
         delete_asset/3,
         delete_asset/4,
         delete_packaging_configuration/3,
         delete_packaging_configuration/4,
         delete_packaging_group/3,
         delete_packaging_group/4,
         describe_asset/2,
         describe_asset/4,
         describe_asset/5,
         describe_packaging_configuration/2,
         describe_packaging_configuration/4,
         describe_packaging_configuration/5,
         describe_packaging_group/2,
         describe_packaging_group/4,
         describe_packaging_group/5,
         list_assets/1,
         list_assets/3,
         list_assets/4,
         list_packaging_configurations/1,
         list_packaging_configurations/3,
         list_packaging_configurations/4,
         list_packaging_groups/1,
         list_packaging_groups/3,
         list_packaging_groups/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_packaging_group/3,
         update_packaging_group/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% tag_resource_request() :: #{
%%   <<"Tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% describe_packaging_configuration_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CmafPackage">> => cmaf_package(),
%%   <<"CreatedAt">> => string(),
%%   <<"DashPackage">> => dash_package(),
%%   <<"HlsPackage">> => hls_package(),
%%   <<"Id">> => string(),
%%   <<"MssPackage">> => mss_package(),
%%   <<"PackagingGroupId">> => string(),
%%   <<"Tags">> => map()
%% }
-type describe_packaging_configuration_response() :: #{binary() => any()}.


%% Example:
%% create_packaging_configuration_request() :: #{
%%   <<"CmafPackage">> => cmaf_package(),
%%   <<"DashPackage">> => dash_package(),
%%   <<"HlsPackage">> => hls_package(),
%%   <<"Id">> := string(),
%%   <<"MssPackage">> => mss_package(),
%%   <<"PackagingGroupId">> := string(),
%%   <<"Tags">> => map()
%% }
-type create_packaging_configuration_request() :: #{binary() => any()}.


%% Example:
%% list_packaging_configurations_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"PackagingGroupId">> => string()
%% }
-type list_packaging_configurations_request() :: #{binary() => any()}.


%% Example:
%% list_packaging_groups_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_packaging_groups_request() :: #{binary() => any()}.


%% Example:
%% forbidden_exception() :: #{
%%   <<"Message">> => string()
%% }
-type forbidden_exception() :: #{binary() => any()}.


%% Example:
%% describe_asset_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedAt">> => string(),
%%   <<"EgressEndpoints">> => list(egress_endpoint()),
%%   <<"Id">> => string(),
%%   <<"PackagingGroupId">> => string(),
%%   <<"ResourceId">> => string(),
%%   <<"SourceArn">> => string(),
%%   <<"SourceRoleArn">> => string(),
%%   <<"Tags">> => map()
%% }
-type describe_asset_response() :: #{binary() => any()}.

%% Example:
%% delete_packaging_group_request() :: #{}
-type delete_packaging_group_request() :: #{}.


%% Example:
%% packaging_group() :: #{
%%   <<"ApproximateAssetCount">> => integer(),
%%   <<"Arn">> => string(),
%%   <<"Authorization">> => authorization(),
%%   <<"CreatedAt">> => string(),
%%   <<"DomainName">> => string(),
%%   <<"EgressAccessLogs">> => egress_access_logs(),
%%   <<"Id">> => string(),
%%   <<"Tags">> => map()
%% }
-type packaging_group() :: #{binary() => any()}.


%% Example:
%% create_asset_request() :: #{
%%   <<"Id">> := string(),
%%   <<"PackagingGroupId">> := string(),
%%   <<"ResourceId">> => string(),
%%   <<"SourceArn">> := string(),
%%   <<"SourceRoleArn">> := string(),
%%   <<"Tags">> => map()
%% }
-type create_asset_request() :: #{binary() => any()}.


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
%%   <<"IncludeIframeOnlyStream">> => boolean(),
%%   <<"ManifestName">> => string(),
%%   <<"ProgramDateTimeIntervalSeconds">> => integer(),
%%   <<"RepeatExtXKey">> => boolean(),
%%   <<"StreamSelection">> => stream_selection()
%% }
-type hls_manifest() :: #{binary() => any()}.

%% Example:
%% delete_packaging_group_response() :: #{}
-type delete_packaging_group_response() :: #{}.


%% Example:
%% authorization() :: #{
%%   <<"CdnIdentifierSecret">> => string(),
%%   <<"SecretsRoleArn">> => string()
%% }
-type authorization() :: #{binary() => any()}.


%% Example:
%% hls_encryption() :: #{
%%   <<"ConstantInitializationVector">> => string(),
%%   <<"EncryptionMethod">> => list(any()),
%%   <<"SpekeKeyProvider">> => speke_key_provider()
%% }
-type hls_encryption() :: #{binary() => any()}.


%% Example:
%% cmaf_package() :: #{
%%   <<"Encryption">> => cmaf_encryption(),
%%   <<"HlsManifests">> => list(hls_manifest()),
%%   <<"IncludeEncoderConfigurationInSegments">> => boolean(),
%%   <<"SegmentDurationSeconds">> => integer()
%% }
-type cmaf_package() :: #{binary() => any()}.

%% Example:
%% delete_packaging_configuration_response() :: #{}
-type delete_packaging_configuration_response() :: #{}.


%% Example:
%% update_packaging_group_request() :: #{
%%   <<"Authorization">> => authorization()
%% }
-type update_packaging_group_request() :: #{binary() => any()}.


%% Example:
%% update_packaging_group_response() :: #{
%%   <<"ApproximateAssetCount">> => integer(),
%%   <<"Arn">> => string(),
%%   <<"Authorization">> => authorization(),
%%   <<"CreatedAt">> => string(),
%%   <<"DomainName">> => string(),
%%   <<"EgressAccessLogs">> => egress_access_logs(),
%%   <<"Id">> => string(),
%%   <<"Tags">> => map()
%% }
-type update_packaging_group_response() :: #{binary() => any()}.


%% Example:
%% create_packaging_group_request() :: #{
%%   <<"Authorization">> => authorization(),
%%   <<"EgressAccessLogs">> => egress_access_logs(),
%%   <<"Id">> := string(),
%%   <<"Tags">> => map()
%% }
-type create_packaging_group_request() :: #{binary() => any()}.


%% Example:
%% not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type not_found_exception() :: #{binary() => any()}.


%% Example:
%% speke_key_provider() :: #{
%%   <<"EncryptionContractConfiguration">> => encryption_contract_configuration(),
%%   <<"RoleArn">> => string(),
%%   <<"SystemIds">> => list(string()),
%%   <<"Url">> => string()
%% }
-type speke_key_provider() :: #{binary() => any()}.

%% Example:
%% delete_asset_response() :: #{}
-type delete_asset_response() :: #{}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% hls_package() :: #{
%%   <<"Encryption">> => hls_encryption(),
%%   <<"HlsManifests">> => list(hls_manifest()),
%%   <<"IncludeDvbSubtitles">> => boolean(),
%%   <<"SegmentDurationSeconds">> => integer(),
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
%%   <<"DashManifests">> => list(dash_manifest()),
%%   <<"Encryption">> => dash_encryption(),
%%   <<"IncludeEncoderConfigurationInSegments">> => boolean(),
%%   <<"IncludeIframeOnlyStream">> => boolean(),
%%   <<"PeriodTriggers">> => list(list(any())()),
%%   <<"SegmentDurationSeconds">> => integer(),
%%   <<"SegmentTemplateFormat">> => list(any())
%% }
-type dash_package() :: #{binary() => any()}.


%% Example:
%% packaging_configuration() :: #{
%%   <<"Arn">> => string(),
%%   <<"CmafPackage">> => cmaf_package(),
%%   <<"CreatedAt">> => string(),
%%   <<"DashPackage">> => dash_package(),
%%   <<"HlsPackage">> => hls_package(),
%%   <<"Id">> => string(),
%%   <<"MssPackage">> => mss_package(),
%%   <<"PackagingGroupId">> => string(),
%%   <<"Tags">> => map()
%% }
-type packaging_configuration() :: #{binary() => any()}.


%% Example:
%% list_packaging_configurations_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PackagingConfigurations">> => list(packaging_configuration())
%% }
-type list_packaging_configurations_response() :: #{binary() => any()}.


%% Example:
%% create_packaging_group_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Authorization">> => authorization(),
%%   <<"CreatedAt">> => string(),
%%   <<"DomainName">> => string(),
%%   <<"EgressAccessLogs">> => egress_access_logs(),
%%   <<"Id">> => string(),
%%   <<"Tags">> => map()
%% }
-type create_packaging_group_response() :: #{binary() => any()}.


%% Example:
%% stream_selection() :: #{
%%   <<"MaxVideoBitsPerSecond">> => integer(),
%%   <<"MinVideoBitsPerSecond">> => integer(),
%%   <<"StreamOrder">> => list(any())
%% }
-type stream_selection() :: #{binary() => any()}.


%% Example:
%% dash_manifest() :: #{
%%   <<"ManifestLayout">> => list(any()),
%%   <<"ManifestName">> => string(),
%%   <<"MinBufferTimeSeconds">> => integer(),
%%   <<"Profile">> => list(any()),
%%   <<"ScteMarkersSource">> => list(any()),
%%   <<"StreamSelection">> => stream_selection()
%% }
-type dash_manifest() :: #{binary() => any()}.


%% Example:
%% egress_endpoint() :: #{
%%   <<"PackagingConfigurationId">> => string(),
%%   <<"Status">> => string(),
%%   <<"Url">> => string()
%% }
-type egress_endpoint() :: #{binary() => any()}.


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
%%   <<"SpekeKeyProvider">> => speke_key_provider()
%% }
-type dash_encryption() :: #{binary() => any()}.

%% Example:
%% delete_asset_request() :: #{}
-type delete_asset_request() :: #{}.


%% Example:
%% create_packaging_configuration_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CmafPackage">> => cmaf_package(),
%%   <<"CreatedAt">> => string(),
%%   <<"DashPackage">> => dash_package(),
%%   <<"HlsPackage">> => hls_package(),
%%   <<"Id">> => string(),
%%   <<"MssPackage">> => mss_package(),
%%   <<"PackagingGroupId">> => string(),
%%   <<"Tags">> => map()
%% }
-type create_packaging_configuration_response() :: #{binary() => any()}.


%% Example:
%% asset_shallow() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedAt">> => string(),
%%   <<"Id">> => string(),
%%   <<"PackagingGroupId">> => string(),
%%   <<"ResourceId">> => string(),
%%   <<"SourceArn">> => string(),
%%   <<"SourceRoleArn">> => string(),
%%   <<"Tags">> => map()
%% }
-type asset_shallow() :: #{binary() => any()}.


%% Example:
%% unprocessable_entity_exception() :: #{
%%   <<"Message">> => string()
%% }
-type unprocessable_entity_exception() :: #{binary() => any()}.


%% Example:
%% create_asset_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedAt">> => string(),
%%   <<"EgressEndpoints">> => list(egress_endpoint()),
%%   <<"Id">> => string(),
%%   <<"PackagingGroupId">> => string(),
%%   <<"ResourceId">> => string(),
%%   <<"SourceArn">> => string(),
%%   <<"SourceRoleArn">> => string(),
%%   <<"Tags">> => map()
%% }
-type create_asset_response() :: #{binary() => any()}.


%% Example:
%% cmaf_encryption() :: #{
%%   <<"ConstantInitializationVector">> => string(),
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
%% describe_packaging_configuration_request() :: #{}
-type describe_packaging_configuration_request() :: #{}.


%% Example:
%% list_assets_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"PackagingGroupId">> => string()
%% }
-type list_assets_request() :: #{binary() => any()}.


%% Example:
%% mss_manifest() :: #{
%%   <<"ManifestName">> => string(),
%%   <<"StreamSelection">> => stream_selection()
%% }
-type mss_manifest() :: #{binary() => any()}.


%% Example:
%% configure_logs_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Authorization">> => authorization(),
%%   <<"CreatedAt">> => string(),
%%   <<"DomainName">> => string(),
%%   <<"EgressAccessLogs">> => egress_access_logs(),
%%   <<"Id">> => string(),
%%   <<"Tags">> => map()
%% }
-type configure_logs_response() :: #{binary() => any()}.


%% Example:
%% configure_logs_request() :: #{
%%   <<"EgressAccessLogs">> => egress_access_logs()
%% }
-type configure_logs_request() :: #{binary() => any()}.


%% Example:
%% mss_encryption() :: #{
%%   <<"SpekeKeyProvider">> => speke_key_provider()
%% }
-type mss_encryption() :: #{binary() => any()}.


%% Example:
%% list_assets_response() :: #{
%%   <<"Assets">> => list(asset_shallow()),
%%   <<"NextToken">> => string()
%% }
-type list_assets_response() :: #{binary() => any()}.

%% Example:
%% describe_asset_request() :: #{}
-type describe_asset_request() :: #{}.


%% Example:
%% list_packaging_groups_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PackagingGroups">> => list(packaging_group())
%% }
-type list_packaging_groups_response() :: #{binary() => any()}.

%% Example:
%% describe_packaging_group_request() :: #{}
-type describe_packaging_group_request() :: #{}.

%% Example:
%% delete_packaging_configuration_request() :: #{}
-type delete_packaging_configuration_request() :: #{}.


%% Example:
%% describe_packaging_group_response() :: #{
%%   <<"ApproximateAssetCount">> => integer(),
%%   <<"Arn">> => string(),
%%   <<"Authorization">> => authorization(),
%%   <<"CreatedAt">> => string(),
%%   <<"DomainName">> => string(),
%%   <<"EgressAccessLogs">> => egress_access_logs(),
%%   <<"Id">> => string(),
%%   <<"Tags">> => map()
%% }
-type describe_packaging_group_response() :: #{binary() => any()}.


%% Example:
%% mss_package() :: #{
%%   <<"Encryption">> => mss_encryption(),
%%   <<"MssManifests">> => list(mss_manifest()),
%%   <<"SegmentDurationSeconds">> => integer()
%% }
-type mss_package() :: #{binary() => any()}.

-type configure_logs_errors() ::
    internal_server_error_exception() | 
    unprocessable_entity_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type create_asset_errors() ::
    internal_server_error_exception() | 
    unprocessable_entity_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type create_packaging_configuration_errors() ::
    internal_server_error_exception() | 
    unprocessable_entity_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type create_packaging_group_errors() ::
    internal_server_error_exception() | 
    unprocessable_entity_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type delete_asset_errors() ::
    internal_server_error_exception() | 
    unprocessable_entity_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type delete_packaging_configuration_errors() ::
    internal_server_error_exception() | 
    unprocessable_entity_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type delete_packaging_group_errors() ::
    internal_server_error_exception() | 
    unprocessable_entity_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type describe_asset_errors() ::
    internal_server_error_exception() | 
    unprocessable_entity_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type describe_packaging_configuration_errors() ::
    internal_server_error_exception() | 
    unprocessable_entity_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type describe_packaging_group_errors() ::
    internal_server_error_exception() | 
    unprocessable_entity_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type list_assets_errors() ::
    internal_server_error_exception() | 
    unprocessable_entity_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type list_packaging_configurations_errors() ::
    internal_server_error_exception() | 
    unprocessable_entity_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type list_packaging_groups_errors() ::
    internal_server_error_exception() | 
    unprocessable_entity_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

-type update_packaging_group_errors() ::
    internal_server_error_exception() | 
    unprocessable_entity_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Changes the packaging group's properities to configure log
%% subscription
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
    Path = ["/packaging_groups/", aws_util:encode_uri(Id), "/configure_logs"],
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

%% @doc Creates a new MediaPackage VOD Asset resource.
-spec create_asset(aws_client:aws_client(), create_asset_request()) ->
    {ok, create_asset_response(), tuple()} |
    {error, any()} |
    {error, create_asset_errors(), tuple()}.
create_asset(Client, Input) ->
    create_asset(Client, Input, []).

-spec create_asset(aws_client:aws_client(), create_asset_request(), proplists:proplist()) ->
    {ok, create_asset_response(), tuple()} |
    {error, any()} |
    {error, create_asset_errors(), tuple()}.
create_asset(Client, Input0, Options0) ->
    Method = post,
    Path = ["/assets"],
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

%% @doc Creates a new MediaPackage VOD PackagingConfiguration resource.
-spec create_packaging_configuration(aws_client:aws_client(), create_packaging_configuration_request()) ->
    {ok, create_packaging_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_packaging_configuration_errors(), tuple()}.
create_packaging_configuration(Client, Input) ->
    create_packaging_configuration(Client, Input, []).

-spec create_packaging_configuration(aws_client:aws_client(), create_packaging_configuration_request(), proplists:proplist()) ->
    {ok, create_packaging_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_packaging_configuration_errors(), tuple()}.
create_packaging_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/packaging_configurations"],
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

%% @doc Creates a new MediaPackage VOD PackagingGroup resource.
-spec create_packaging_group(aws_client:aws_client(), create_packaging_group_request()) ->
    {ok, create_packaging_group_response(), tuple()} |
    {error, any()} |
    {error, create_packaging_group_errors(), tuple()}.
create_packaging_group(Client, Input) ->
    create_packaging_group(Client, Input, []).

-spec create_packaging_group(aws_client:aws_client(), create_packaging_group_request(), proplists:proplist()) ->
    {ok, create_packaging_group_response(), tuple()} |
    {error, any()} |
    {error, create_packaging_group_errors(), tuple()}.
create_packaging_group(Client, Input0, Options0) ->
    Method = post,
    Path = ["/packaging_groups"],
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

%% @doc Deletes an existing MediaPackage VOD Asset resource.
-spec delete_asset(aws_client:aws_client(), binary() | list(), delete_asset_request()) ->
    {ok, delete_asset_response(), tuple()} |
    {error, any()} |
    {error, delete_asset_errors(), tuple()}.
delete_asset(Client, Id, Input) ->
    delete_asset(Client, Id, Input, []).

-spec delete_asset(aws_client:aws_client(), binary() | list(), delete_asset_request(), proplists:proplist()) ->
    {ok, delete_asset_response(), tuple()} |
    {error, any()} |
    {error, delete_asset_errors(), tuple()}.
delete_asset(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/assets/", aws_util:encode_uri(Id), ""],
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

%% @doc Deletes a MediaPackage VOD PackagingConfiguration resource.
-spec delete_packaging_configuration(aws_client:aws_client(), binary() | list(), delete_packaging_configuration_request()) ->
    {ok, delete_packaging_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_packaging_configuration_errors(), tuple()}.
delete_packaging_configuration(Client, Id, Input) ->
    delete_packaging_configuration(Client, Id, Input, []).

-spec delete_packaging_configuration(aws_client:aws_client(), binary() | list(), delete_packaging_configuration_request(), proplists:proplist()) ->
    {ok, delete_packaging_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_packaging_configuration_errors(), tuple()}.
delete_packaging_configuration(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/packaging_configurations/", aws_util:encode_uri(Id), ""],
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

%% @doc Deletes a MediaPackage VOD PackagingGroup resource.
-spec delete_packaging_group(aws_client:aws_client(), binary() | list(), delete_packaging_group_request()) ->
    {ok, delete_packaging_group_response(), tuple()} |
    {error, any()} |
    {error, delete_packaging_group_errors(), tuple()}.
delete_packaging_group(Client, Id, Input) ->
    delete_packaging_group(Client, Id, Input, []).

-spec delete_packaging_group(aws_client:aws_client(), binary() | list(), delete_packaging_group_request(), proplists:proplist()) ->
    {ok, delete_packaging_group_response(), tuple()} |
    {error, any()} |
    {error, delete_packaging_group_errors(), tuple()}.
delete_packaging_group(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/packaging_groups/", aws_util:encode_uri(Id), ""],
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

%% @doc Returns a description of a MediaPackage VOD Asset resource.
-spec describe_asset(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_asset_response(), tuple()} |
    {error, any()} |
    {error, describe_asset_errors(), tuple()}.
describe_asset(Client, Id)
  when is_map(Client) ->
    describe_asset(Client, Id, #{}, #{}).

-spec describe_asset(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_asset_response(), tuple()} |
    {error, any()} |
    {error, describe_asset_errors(), tuple()}.
describe_asset(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_asset(Client, Id, QueryMap, HeadersMap, []).

-spec describe_asset(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_asset_response(), tuple()} |
    {error, any()} |
    {error, describe_asset_errors(), tuple()}.
describe_asset(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/assets/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a description of a MediaPackage VOD PackagingConfiguration
%% resource.
-spec describe_packaging_configuration(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_packaging_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_packaging_configuration_errors(), tuple()}.
describe_packaging_configuration(Client, Id)
  when is_map(Client) ->
    describe_packaging_configuration(Client, Id, #{}, #{}).

-spec describe_packaging_configuration(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_packaging_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_packaging_configuration_errors(), tuple()}.
describe_packaging_configuration(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_packaging_configuration(Client, Id, QueryMap, HeadersMap, []).

-spec describe_packaging_configuration(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_packaging_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_packaging_configuration_errors(), tuple()}.
describe_packaging_configuration(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/packaging_configurations/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a description of a MediaPackage VOD PackagingGroup resource.
-spec describe_packaging_group(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_packaging_group_response(), tuple()} |
    {error, any()} |
    {error, describe_packaging_group_errors(), tuple()}.
describe_packaging_group(Client, Id)
  when is_map(Client) ->
    describe_packaging_group(Client, Id, #{}, #{}).

-spec describe_packaging_group(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_packaging_group_response(), tuple()} |
    {error, any()} |
    {error, describe_packaging_group_errors(), tuple()}.
describe_packaging_group(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_packaging_group(Client, Id, QueryMap, HeadersMap, []).

-spec describe_packaging_group(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_packaging_group_response(), tuple()} |
    {error, any()} |
    {error, describe_packaging_group_errors(), tuple()}.
describe_packaging_group(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/packaging_groups/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a collection of MediaPackage VOD Asset resources.
-spec list_assets(aws_client:aws_client()) ->
    {ok, list_assets_response(), tuple()} |
    {error, any()} |
    {error, list_assets_errors(), tuple()}.
list_assets(Client)
  when is_map(Client) ->
    list_assets(Client, #{}, #{}).

-spec list_assets(aws_client:aws_client(), map(), map()) ->
    {ok, list_assets_response(), tuple()} |
    {error, any()} |
    {error, list_assets_errors(), tuple()}.
list_assets(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_assets(Client, QueryMap, HeadersMap, []).

-spec list_assets(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_assets_response(), tuple()} |
    {error, any()} |
    {error, list_assets_errors(), tuple()}.
list_assets(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/assets"],
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
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"packagingGroupId">>, maps:get(<<"packagingGroupId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a collection of MediaPackage VOD PackagingConfiguration
%% resources.
-spec list_packaging_configurations(aws_client:aws_client()) ->
    {ok, list_packaging_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_packaging_configurations_errors(), tuple()}.
list_packaging_configurations(Client)
  when is_map(Client) ->
    list_packaging_configurations(Client, #{}, #{}).

-spec list_packaging_configurations(aws_client:aws_client(), map(), map()) ->
    {ok, list_packaging_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_packaging_configurations_errors(), tuple()}.
list_packaging_configurations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_packaging_configurations(Client, QueryMap, HeadersMap, []).

-spec list_packaging_configurations(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_packaging_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_packaging_configurations_errors(), tuple()}.
list_packaging_configurations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/packaging_configurations"],
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
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"packagingGroupId">>, maps:get(<<"packagingGroupId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a collection of MediaPackage VOD PackagingGroup resources.
-spec list_packaging_groups(aws_client:aws_client()) ->
    {ok, list_packaging_groups_response(), tuple()} |
    {error, any()} |
    {error, list_packaging_groups_errors(), tuple()}.
list_packaging_groups(Client)
  when is_map(Client) ->
    list_packaging_groups(Client, #{}, #{}).

-spec list_packaging_groups(aws_client:aws_client(), map(), map()) ->
    {ok, list_packaging_groups_response(), tuple()} |
    {error, any()} |
    {error, list_packaging_groups_errors(), tuple()}.
list_packaging_groups(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_packaging_groups(Client, QueryMap, HeadersMap, []).

-spec list_packaging_groups(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_packaging_groups_response(), tuple()} |
    {error, any()} |
    {error, list_packaging_groups_errors(), tuple()}.
list_packaging_groups(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/packaging_groups"],
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

%% @doc Returns a list of the tags assigned to the specified resource.
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

%% @doc Adds tags to the specified resource.
%%
%% You can specify one or more tags to add.
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

%% @doc Removes tags from the specified resource.
%%
%% You can specify one or more tags to remove.
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

%% @doc Updates a specific packaging group.
%%
%% You can't change the id attribute or any other system-generated
%% attributes.
-spec update_packaging_group(aws_client:aws_client(), binary() | list(), update_packaging_group_request()) ->
    {ok, update_packaging_group_response(), tuple()} |
    {error, any()} |
    {error, update_packaging_group_errors(), tuple()}.
update_packaging_group(Client, Id, Input) ->
    update_packaging_group(Client, Id, Input, []).

-spec update_packaging_group(aws_client:aws_client(), binary() | list(), update_packaging_group_request(), proplists:proplist()) ->
    {ok, update_packaging_group_response(), tuple()} |
    {error, any()} |
    {error, update_packaging_group_errors(), tuple()}.
update_packaging_group(Client, Id, Input0, Options0) ->
    Method = put,
    Path = ["/packaging_groups/", aws_util:encode_uri(Id), ""],
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
    Client1 = Client#{service => <<"mediapackage-vod">>},
    Host = build_host(<<"mediapackage-vod">>, Client1),
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
