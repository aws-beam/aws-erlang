%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon EventBridge Schema Registry
-module(aws_schemas).

-export([create_discoverer/2,
         create_discoverer/3,
         create_registry/3,
         create_registry/4,
         create_schema/4,
         create_schema/5,
         delete_discoverer/3,
         delete_discoverer/4,
         delete_registry/3,
         delete_registry/4,
         delete_resource_policy/2,
         delete_resource_policy/3,
         delete_schema/4,
         delete_schema/5,
         delete_schema_version/5,
         delete_schema_version/6,
         describe_code_binding/4,
         describe_code_binding/6,
         describe_code_binding/7,
         describe_discoverer/2,
         describe_discoverer/4,
         describe_discoverer/5,
         describe_registry/2,
         describe_registry/4,
         describe_registry/5,
         describe_schema/3,
         describe_schema/5,
         describe_schema/6,
         export_schema/4,
         export_schema/6,
         export_schema/7,
         get_code_binding_source/4,
         get_code_binding_source/6,
         get_code_binding_source/7,
         get_discovered_schema/2,
         get_discovered_schema/3,
         get_resource_policy/1,
         get_resource_policy/3,
         get_resource_policy/4,
         list_discoverers/1,
         list_discoverers/3,
         list_discoverers/4,
         list_registries/1,
         list_registries/3,
         list_registries/4,
         list_schema_versions/3,
         list_schema_versions/5,
         list_schema_versions/6,
         list_schemas/2,
         list_schemas/4,
         list_schemas/5,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         put_code_binding/5,
         put_code_binding/6,
         put_resource_policy/2,
         put_resource_policy/3,
         search_schemas/3,
         search_schemas/5,
         search_schemas/6,
         start_discoverer/3,
         start_discoverer/4,
         stop_discoverer/3,
         stop_discoverer/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_discoverer/3,
         update_discoverer/4,
         update_registry/3,
         update_registry/4,
         update_schema/4,
         update_schema/5]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% tag_resource_request() :: #{
%%   <<"Tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% create_schema_request() :: #{
%%   <<"Content">> := string(),
%%   <<"Description">> => string(),
%%   <<"Tags">> => map(),
%%   <<"Type">> := list(any())
%% }
-type create_schema_request() :: #{binary() => any()}.


%% Example:
%% get_code_binding_source_request() :: #{
%%   <<"SchemaVersion">> => string()
%% }
-type get_code_binding_source_request() :: #{binary() => any()}.


%% Example:
%% unauthorized_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string()
%% }
-type unauthorized_exception() :: #{binary() => any()}.


%% Example:
%% describe_code_binding_request() :: #{
%%   <<"SchemaVersion">> => string()
%% }
-type describe_code_binding_request() :: #{binary() => any()}.


%% Example:
%% search_schemas_request() :: #{
%%   <<"Keywords">> := string(),
%%   <<"Limit">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type search_schemas_request() :: #{binary() => any()}.


%% Example:
%% describe_schema_request() :: #{
%%   <<"SchemaVersion">> => string()
%% }
-type describe_schema_request() :: #{binary() => any()}.

%% Example:
%% delete_schema_request() :: #{}
-type delete_schema_request() :: #{}.

%% Example:
%% delete_registry_request() :: #{}
-type delete_registry_request() :: #{}.


%% Example:
%% forbidden_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string()
%% }
-type forbidden_exception() :: #{binary() => any()}.


%% Example:
%% list_schema_versions_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"SchemaVersions">> => list(schema_version_summary())
%% }
-type list_schema_versions_response() :: #{binary() => any()}.


%% Example:
%% create_registry_response() :: #{
%%   <<"Description">> => string(),
%%   <<"RegistryArn">> => string(),
%%   <<"RegistryName">> => string(),
%%   <<"Tags">> => map()
%% }
-type create_registry_response() :: #{binary() => any()}.


%% Example:
%% list_discoverers_request() :: #{
%%   <<"DiscovererIdPrefix">> => string(),
%%   <<"Limit">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SourceArnPrefix">> => string()
%% }
-type list_discoverers_request() :: #{binary() => any()}.

%% Example:
%% delete_discoverer_request() :: #{}
-type delete_discoverer_request() :: #{}.


%% Example:
%% create_discoverer_response() :: #{
%%   <<"CrossAccount">> => boolean(),
%%   <<"Description">> => string(),
%%   <<"DiscovererArn">> => string(),
%%   <<"DiscovererId">> => string(),
%%   <<"SourceArn">> => string(),
%%   <<"State">> => list(any()),
%%   <<"Tags">> => map()
%% }
-type create_discoverer_response() :: #{binary() => any()}.


%% Example:
%% get_discovered_schema_request() :: #{
%%   <<"Events">> := list(string()),
%%   <<"Type">> := list(any())
%% }
-type get_discovered_schema_request() :: #{binary() => any()}.


%% Example:
%% get_resource_policy_response() :: #{
%%   <<"Policy">> => string(),
%%   <<"RevisionId">> => string()
%% }
-type get_resource_policy_response() :: #{binary() => any()}.


%% Example:
%% describe_schema_response() :: #{
%%   <<"Content">> => string(),
%%   <<"Description">> => string(),
%%   <<"LastModified">> => non_neg_integer(),
%%   <<"SchemaArn">> => string(),
%%   <<"SchemaName">> => string(),
%%   <<"SchemaVersion">> => string(),
%%   <<"Tags">> => map(),
%%   <<"Type">> => string(),
%%   <<"VersionCreatedDate">> => non_neg_integer()
%% }
-type describe_schema_response() :: #{binary() => any()}.


%% Example:
%% gone_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string()
%% }
-type gone_exception() :: #{binary() => any()}.


%% Example:
%% update_registry_request() :: #{
%%   <<"Description">> => string()
%% }
-type update_registry_request() :: #{binary() => any()}.


%% Example:
%% update_schema_response() :: #{
%%   <<"Description">> => string(),
%%   <<"LastModified">> => non_neg_integer(),
%%   <<"SchemaArn">> => string(),
%%   <<"SchemaName">> => string(),
%%   <<"SchemaVersion">> => string(),
%%   <<"Tags">> => map(),
%%   <<"Type">> => string(),
%%   <<"VersionCreatedDate">> => non_neg_integer()
%% }
-type update_schema_response() :: #{binary() => any()}.


%% Example:
%% update_discoverer_response() :: #{
%%   <<"CrossAccount">> => boolean(),
%%   <<"Description">> => string(),
%%   <<"DiscovererArn">> => string(),
%%   <<"DiscovererId">> => string(),
%%   <<"SourceArn">> => string(),
%%   <<"State">> => list(any()),
%%   <<"Tags">> => map()
%% }
-type update_discoverer_response() :: #{binary() => any()}.


%% Example:
%% create_schema_response() :: #{
%%   <<"Description">> => string(),
%%   <<"LastModified">> => non_neg_integer(),
%%   <<"SchemaArn">> => string(),
%%   <<"SchemaName">> => string(),
%%   <<"SchemaVersion">> => string(),
%%   <<"Tags">> => map(),
%%   <<"Type">> => string(),
%%   <<"VersionCreatedDate">> => non_neg_integer()
%% }
-type create_schema_response() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% too_many_requests_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string()
%% }
-type too_many_requests_exception() :: #{binary() => any()}.


%% Example:
%% describe_discoverer_response() :: #{
%%   <<"CrossAccount">> => boolean(),
%%   <<"Description">> => string(),
%%   <<"DiscovererArn">> => string(),
%%   <<"DiscovererId">> => string(),
%%   <<"SourceArn">> => string(),
%%   <<"State">> => list(any()),
%%   <<"Tags">> => map()
%% }
-type describe_discoverer_response() :: #{binary() => any()}.


%% Example:
%% put_code_binding_request() :: #{
%%   <<"SchemaVersion">> => string()
%% }
-type put_code_binding_request() :: #{binary() => any()}.


%% Example:
%% list_schemas_request() :: #{
%%   <<"Limit">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SchemaNamePrefix">> => string()
%% }
-type list_schemas_request() :: #{binary() => any()}.


%% Example:
%% put_code_binding_response() :: #{
%%   <<"CreationDate">> => non_neg_integer(),
%%   <<"LastModified">> => non_neg_integer(),
%%   <<"SchemaVersion">> => string(),
%%   <<"Status">> => list(any())
%% }
-type put_code_binding_response() :: #{binary() => any()}.


%% Example:
%% export_schema_request() :: #{
%%   <<"SchemaVersion">> => string(),
%%   <<"Type">> := string()
%% }
-type export_schema_request() :: #{binary() => any()}.


%% Example:
%% update_discoverer_request() :: #{
%%   <<"CrossAccount">> => boolean(),
%%   <<"Description">> => string()
%% }
-type update_discoverer_request() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% create_discoverer_request() :: #{
%%   <<"CrossAccount">> => boolean(),
%%   <<"Description">> => string(),
%%   <<"SourceArn">> := string(),
%%   <<"Tags">> => map()
%% }
-type create_discoverer_request() :: #{binary() => any()}.


%% Example:
%% list_discoverers_response() :: #{
%%   <<"Discoverers">> => list(discoverer_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_discoverers_response() :: #{binary() => any()}.


%% Example:
%% get_code_binding_source_response() :: #{
%%   <<"Body">> => binary()
%% }
-type get_code_binding_source_response() :: #{binary() => any()}.

%% Example:
%% delete_schema_version_request() :: #{}
-type delete_schema_version_request() :: #{}.


%% Example:
%% schema_summary() :: #{
%%   <<"LastModified">> => non_neg_integer(),
%%   <<"SchemaArn">> => string(),
%%   <<"SchemaName">> => string(),
%%   <<"Tags">> => map(),
%%   <<"VersionCount">> => float()
%% }
-type schema_summary() :: #{binary() => any()}.


%% Example:
%% search_schema_summary() :: #{
%%   <<"RegistryName">> => string(),
%%   <<"SchemaArn">> => string(),
%%   <<"SchemaName">> => string(),
%%   <<"SchemaVersions">> => list(search_schema_version_summary())
%% }
-type search_schema_summary() :: #{binary() => any()}.


%% Example:
%% not_found_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string()
%% }
-type not_found_exception() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% service_unavailable_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string()
%% }
-type service_unavailable_exception() :: #{binary() => any()}.


%% Example:
%% stop_discoverer_response() :: #{
%%   <<"DiscovererId">> => string(),
%%   <<"State">> => list(any())
%% }
-type stop_discoverer_response() :: #{binary() => any()}.


%% Example:
%% get_resource_policy_request() :: #{
%%   <<"RegistryName">> => string()
%% }
-type get_resource_policy_request() :: #{binary() => any()}.


%% Example:
%% describe_registry_response() :: #{
%%   <<"Description">> => string(),
%%   <<"RegistryArn">> => string(),
%%   <<"RegistryName">> => string(),
%%   <<"Tags">> => map()
%% }
-type describe_registry_response() :: #{binary() => any()}.

%% Example:
%% stop_discoverer_request() :: #{}
-type stop_discoverer_request() :: #{}.


%% Example:
%% search_schema_version_summary() :: #{
%%   <<"CreatedDate">> => non_neg_integer(),
%%   <<"SchemaVersion">> => string(),
%%   <<"Type">> => list(any())
%% }
-type search_schema_version_summary() :: #{binary() => any()}.


%% Example:
%% update_registry_response() :: #{
%%   <<"Description">> => string(),
%%   <<"RegistryArn">> => string(),
%%   <<"RegistryName">> => string(),
%%   <<"Tags">> => map()
%% }
-type update_registry_response() :: #{binary() => any()}.


%% Example:
%% list_schema_versions_request() :: #{
%%   <<"Limit">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_schema_versions_request() :: #{binary() => any()}.

%% Example:
%% describe_discoverer_request() :: #{}
-type describe_discoverer_request() :: #{}.


%% Example:
%% list_registries_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Registries">> => list(registry_summary())
%% }
-type list_registries_response() :: #{binary() => any()}.


%% Example:
%% put_resource_policy_request() :: #{
%%   <<"Policy">> := string(),
%%   <<"RegistryName">> => string(),
%%   <<"RevisionId">> => string()
%% }
-type put_resource_policy_request() :: #{binary() => any()}.


%% Example:
%% search_schemas_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Schemas">> => list(search_schema_summary())
%% }
-type search_schemas_response() :: #{binary() => any()}.


%% Example:
%% get_discovered_schema_response() :: #{
%%   <<"Content">> => string()
%% }
-type get_discovered_schema_response() :: #{binary() => any()}.


%% Example:
%% list_registries_request() :: #{
%%   <<"Limit">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"RegistryNamePrefix">> => string(),
%%   <<"Scope">> => string()
%% }
-type list_registries_request() :: #{binary() => any()}.

%% Example:
%% describe_registry_request() :: #{}
-type describe_registry_request() :: #{}.


%% Example:
%% export_schema_response() :: #{
%%   <<"Content">> => string(),
%%   <<"SchemaArn">> => string(),
%%   <<"SchemaName">> => string(),
%%   <<"SchemaVersion">> => string(),
%%   <<"Type">> => string()
%% }
-type export_schema_response() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% internal_server_error_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string()
%% }
-type internal_server_error_exception() :: #{binary() => any()}.


%% Example:
%% create_registry_request() :: #{
%%   <<"Description">> => string(),
%%   <<"Tags">> => map()
%% }
-type create_registry_request() :: #{binary() => any()}.


%% Example:
%% put_resource_policy_response() :: #{
%%   <<"Policy">> => string(),
%%   <<"RevisionId">> => string()
%% }
-type put_resource_policy_response() :: #{binary() => any()}.


%% Example:
%% bad_request_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string()
%% }
-type bad_request_exception() :: #{binary() => any()}.


%% Example:
%% delete_resource_policy_request() :: #{
%%   <<"RegistryName">> => string()
%% }
-type delete_resource_policy_request() :: #{binary() => any()}.


%% Example:
%% start_discoverer_response() :: #{
%%   <<"DiscovererId">> => string(),
%%   <<"State">> => list(any())
%% }
-type start_discoverer_response() :: #{binary() => any()}.


%% Example:
%% discoverer_summary() :: #{
%%   <<"CrossAccount">> => boolean(),
%%   <<"DiscovererArn">> => string(),
%%   <<"DiscovererId">> => string(),
%%   <<"SourceArn">> => string(),
%%   <<"State">> => list(any()),
%%   <<"Tags">> => map()
%% }
-type discoverer_summary() :: #{binary() => any()}.


%% Example:
%% list_schemas_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Schemas">> => list(schema_summary())
%% }
-type list_schemas_response() :: #{binary() => any()}.


%% Example:
%% precondition_failed_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string()
%% }
-type precondition_failed_exception() :: #{binary() => any()}.


%% Example:
%% schema_version_summary() :: #{
%%   <<"SchemaArn">> => string(),
%%   <<"SchemaName">> => string(),
%%   <<"SchemaVersion">> => string(),
%%   <<"Type">> => list(any())
%% }
-type schema_version_summary() :: #{binary() => any()}.


%% Example:
%% describe_code_binding_response() :: #{
%%   <<"CreationDate">> => non_neg_integer(),
%%   <<"LastModified">> => non_neg_integer(),
%%   <<"SchemaVersion">> => string(),
%%   <<"Status">> => list(any())
%% }
-type describe_code_binding_response() :: #{binary() => any()}.


%% Example:
%% registry_summary() :: #{
%%   <<"RegistryArn">> => string(),
%%   <<"RegistryName">> => string(),
%%   <<"Tags">> => map()
%% }
-type registry_summary() :: #{binary() => any()}.

%% Example:
%% start_discoverer_request() :: #{}
-type start_discoverer_request() :: #{}.


%% Example:
%% update_schema_request() :: #{
%%   <<"ClientTokenId">> => string(),
%%   <<"Content">> => string(),
%%   <<"Description">> => string(),
%%   <<"Type">> => list(any())
%% }
-type update_schema_request() :: #{binary() => any()}.

-type create_discoverer_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    conflict_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type create_registry_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    conflict_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type create_schema_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    forbidden_exception().

-type delete_discoverer_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type delete_registry_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type delete_resource_policy_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type delete_schema_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type delete_schema_version_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type describe_code_binding_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type describe_discoverer_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type describe_registry_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type describe_schema_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type export_schema_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type get_code_binding_source_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type get_discovered_schema_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type get_resource_policy_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type list_discoverers_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type list_registries_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type list_schema_versions_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type list_schemas_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type list_tags_for_resource_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    forbidden_exception().

-type put_code_binding_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    gone_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type put_resource_policy_errors() ::
    precondition_failed_exception() | 
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type search_schemas_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type start_discoverer_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type stop_discoverer_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type tag_resource_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    forbidden_exception().

-type untag_resource_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    forbidden_exception().

-type update_discoverer_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type update_registry_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type update_schema_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    forbidden_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a discoverer.
-spec create_discoverer(aws_client:aws_client(), create_discoverer_request()) ->
    {ok, create_discoverer_response(), tuple()} |
    {error, any()} |
    {error, create_discoverer_errors(), tuple()}.
create_discoverer(Client, Input) ->
    create_discoverer(Client, Input, []).

-spec create_discoverer(aws_client:aws_client(), create_discoverer_request(), proplists:proplist()) ->
    {ok, create_discoverer_response(), tuple()} |
    {error, any()} |
    {error, create_discoverer_errors(), tuple()}.
create_discoverer(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/discoverers"],
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

%% @doc Creates a registry.
-spec create_registry(aws_client:aws_client(), binary() | list(), create_registry_request()) ->
    {ok, create_registry_response(), tuple()} |
    {error, any()} |
    {error, create_registry_errors(), tuple()}.
create_registry(Client, RegistryName, Input) ->
    create_registry(Client, RegistryName, Input, []).

-spec create_registry(aws_client:aws_client(), binary() | list(), create_registry_request(), proplists:proplist()) ->
    {ok, create_registry_response(), tuple()} |
    {error, any()} |
    {error, create_registry_errors(), tuple()}.
create_registry(Client, RegistryName, Input0, Options0) ->
    Method = post,
    Path = ["/v1/registries/name/", aws_util:encode_uri(RegistryName), ""],
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

%% @doc Creates a schema definition.
%%
%% Inactive schemas will be deleted after two years.
-spec create_schema(aws_client:aws_client(), binary() | list(), binary() | list(), create_schema_request()) ->
    {ok, create_schema_response(), tuple()} |
    {error, any()} |
    {error, create_schema_errors(), tuple()}.
create_schema(Client, RegistryName, SchemaName, Input) ->
    create_schema(Client, RegistryName, SchemaName, Input, []).

-spec create_schema(aws_client:aws_client(), binary() | list(), binary() | list(), create_schema_request(), proplists:proplist()) ->
    {ok, create_schema_response(), tuple()} |
    {error, any()} |
    {error, create_schema_errors(), tuple()}.
create_schema(Client, RegistryName, SchemaName, Input0, Options0) ->
    Method = post,
    Path = ["/v1/registries/name/", aws_util:encode_uri(RegistryName), "/schemas/name/", aws_util:encode_uri(SchemaName), ""],
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

%% @doc Deletes a discoverer.
-spec delete_discoverer(aws_client:aws_client(), binary() | list(), delete_discoverer_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_discoverer_errors(), tuple()}.
delete_discoverer(Client, DiscovererId, Input) ->
    delete_discoverer(Client, DiscovererId, Input, []).

-spec delete_discoverer(aws_client:aws_client(), binary() | list(), delete_discoverer_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_discoverer_errors(), tuple()}.
delete_discoverer(Client, DiscovererId, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/discoverers/id/", aws_util:encode_uri(DiscovererId), ""],
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

%% @doc Deletes a Registry.
-spec delete_registry(aws_client:aws_client(), binary() | list(), delete_registry_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_registry_errors(), tuple()}.
delete_registry(Client, RegistryName, Input) ->
    delete_registry(Client, RegistryName, Input, []).

-spec delete_registry(aws_client:aws_client(), binary() | list(), delete_registry_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_registry_errors(), tuple()}.
delete_registry(Client, RegistryName, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/registries/name/", aws_util:encode_uri(RegistryName), ""],
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

%% @doc Delete the resource-based policy attached to the specified registry.
-spec delete_resource_policy(aws_client:aws_client(), delete_resource_policy_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_resource_policy_errors(), tuple()}.
delete_resource_policy(Client, Input) ->
    delete_resource_policy(Client, Input, []).

-spec delete_resource_policy(aws_client:aws_client(), delete_resource_policy_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_resource_policy_errors(), tuple()}.
delete_resource_policy(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/policy"],
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
                     {<<"registryName">>, <<"RegistryName">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Delete a schema definition.
-spec delete_schema(aws_client:aws_client(), binary() | list(), binary() | list(), delete_schema_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_schema_errors(), tuple()}.
delete_schema(Client, RegistryName, SchemaName, Input) ->
    delete_schema(Client, RegistryName, SchemaName, Input, []).

-spec delete_schema(aws_client:aws_client(), binary() | list(), binary() | list(), delete_schema_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_schema_errors(), tuple()}.
delete_schema(Client, RegistryName, SchemaName, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/registries/name/", aws_util:encode_uri(RegistryName), "/schemas/name/", aws_util:encode_uri(SchemaName), ""],
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

%% @doc Delete the schema version definition
-spec delete_schema_version(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_schema_version_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_schema_version_errors(), tuple()}.
delete_schema_version(Client, RegistryName, SchemaName, SchemaVersion, Input) ->
    delete_schema_version(Client, RegistryName, SchemaName, SchemaVersion, Input, []).

-spec delete_schema_version(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_schema_version_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_schema_version_errors(), tuple()}.
delete_schema_version(Client, RegistryName, SchemaName, SchemaVersion, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/registries/name/", aws_util:encode_uri(RegistryName), "/schemas/name/", aws_util:encode_uri(SchemaName), "/version/", aws_util:encode_uri(SchemaVersion), ""],
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

%% @doc Describe the code binding URI.
-spec describe_code_binding(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, describe_code_binding_response(), tuple()} |
    {error, any()} |
    {error, describe_code_binding_errors(), tuple()}.
describe_code_binding(Client, Language, RegistryName, SchemaName)
  when is_map(Client) ->
    describe_code_binding(Client, Language, RegistryName, SchemaName, #{}, #{}).

-spec describe_code_binding(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_code_binding_response(), tuple()} |
    {error, any()} |
    {error, describe_code_binding_errors(), tuple()}.
describe_code_binding(Client, Language, RegistryName, SchemaName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_code_binding(Client, Language, RegistryName, SchemaName, QueryMap, HeadersMap, []).

-spec describe_code_binding(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_code_binding_response(), tuple()} |
    {error, any()} |
    {error, describe_code_binding_errors(), tuple()}.
describe_code_binding(Client, Language, RegistryName, SchemaName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/registries/name/", aws_util:encode_uri(RegistryName), "/schemas/name/", aws_util:encode_uri(SchemaName), "/language/", aws_util:encode_uri(Language), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"schemaVersion">>, maps:get(<<"schemaVersion">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the discoverer.
-spec describe_discoverer(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_discoverer_response(), tuple()} |
    {error, any()} |
    {error, describe_discoverer_errors(), tuple()}.
describe_discoverer(Client, DiscovererId)
  when is_map(Client) ->
    describe_discoverer(Client, DiscovererId, #{}, #{}).

-spec describe_discoverer(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_discoverer_response(), tuple()} |
    {error, any()} |
    {error, describe_discoverer_errors(), tuple()}.
describe_discoverer(Client, DiscovererId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_discoverer(Client, DiscovererId, QueryMap, HeadersMap, []).

-spec describe_discoverer(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_discoverer_response(), tuple()} |
    {error, any()} |
    {error, describe_discoverer_errors(), tuple()}.
describe_discoverer(Client, DiscovererId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/discoverers/id/", aws_util:encode_uri(DiscovererId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the registry.
-spec describe_registry(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_registry_response(), tuple()} |
    {error, any()} |
    {error, describe_registry_errors(), tuple()}.
describe_registry(Client, RegistryName)
  when is_map(Client) ->
    describe_registry(Client, RegistryName, #{}, #{}).

-spec describe_registry(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_registry_response(), tuple()} |
    {error, any()} |
    {error, describe_registry_errors(), tuple()}.
describe_registry(Client, RegistryName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_registry(Client, RegistryName, QueryMap, HeadersMap, []).

-spec describe_registry(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_registry_response(), tuple()} |
    {error, any()} |
    {error, describe_registry_errors(), tuple()}.
describe_registry(Client, RegistryName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/registries/name/", aws_util:encode_uri(RegistryName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieve the schema definition.
-spec describe_schema(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_schema_response(), tuple()} |
    {error, any()} |
    {error, describe_schema_errors(), tuple()}.
describe_schema(Client, RegistryName, SchemaName)
  when is_map(Client) ->
    describe_schema(Client, RegistryName, SchemaName, #{}, #{}).

-spec describe_schema(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_schema_response(), tuple()} |
    {error, any()} |
    {error, describe_schema_errors(), tuple()}.
describe_schema(Client, RegistryName, SchemaName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_schema(Client, RegistryName, SchemaName, QueryMap, HeadersMap, []).

-spec describe_schema(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_schema_response(), tuple()} |
    {error, any()} |
    {error, describe_schema_errors(), tuple()}.
describe_schema(Client, RegistryName, SchemaName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/registries/name/", aws_util:encode_uri(RegistryName), "/schemas/name/", aws_util:encode_uri(SchemaName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"schemaVersion">>, maps:get(<<"schemaVersion">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).


-spec export_schema(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, export_schema_response(), tuple()} |
    {error, any()} |
    {error, export_schema_errors(), tuple()}.
export_schema(Client, RegistryName, SchemaName, Type)
  when is_map(Client) ->
    export_schema(Client, RegistryName, SchemaName, Type, #{}, #{}).

-spec export_schema(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, export_schema_response(), tuple()} |
    {error, any()} |
    {error, export_schema_errors(), tuple()}.
export_schema(Client, RegistryName, SchemaName, Type, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    export_schema(Client, RegistryName, SchemaName, Type, QueryMap, HeadersMap, []).

-spec export_schema(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, export_schema_response(), tuple()} |
    {error, any()} |
    {error, export_schema_errors(), tuple()}.
export_schema(Client, RegistryName, SchemaName, Type, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/registries/name/", aws_util:encode_uri(RegistryName), "/schemas/name/", aws_util:encode_uri(SchemaName), "/export"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"schemaVersion">>, maps:get(<<"schemaVersion">>, QueryMap, undefined)},
        {<<"type">>, Type}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get the code binding source URI.
-spec get_code_binding_source(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_code_binding_source_response(), tuple()} |
    {error, any()} |
    {error, get_code_binding_source_errors(), tuple()}.
get_code_binding_source(Client, Language, RegistryName, SchemaName)
  when is_map(Client) ->
    get_code_binding_source(Client, Language, RegistryName, SchemaName, #{}, #{}).

-spec get_code_binding_source(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_code_binding_source_response(), tuple()} |
    {error, any()} |
    {error, get_code_binding_source_errors(), tuple()}.
get_code_binding_source(Client, Language, RegistryName, SchemaName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_code_binding_source(Client, Language, RegistryName, SchemaName, QueryMap, HeadersMap, []).

-spec get_code_binding_source(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_code_binding_source_response(), tuple()} |
    {error, any()} |
    {error, get_code_binding_source_errors(), tuple()}.
get_code_binding_source(Client, Language, RegistryName, SchemaName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/registries/name/", aws_util:encode_uri(RegistryName), "/schemas/name/", aws_util:encode_uri(SchemaName), "/language/", aws_util:encode_uri(Language), "/source"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"schemaVersion">>, maps:get(<<"schemaVersion">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get the discovered schema that was generated based on sampled events.
-spec get_discovered_schema(aws_client:aws_client(), get_discovered_schema_request()) ->
    {ok, get_discovered_schema_response(), tuple()} |
    {error, any()} |
    {error, get_discovered_schema_errors(), tuple()}.
get_discovered_schema(Client, Input) ->
    get_discovered_schema(Client, Input, []).

-spec get_discovered_schema(aws_client:aws_client(), get_discovered_schema_request(), proplists:proplist()) ->
    {ok, get_discovered_schema_response(), tuple()} |
    {error, any()} |
    {error, get_discovered_schema_errors(), tuple()}.
get_discovered_schema(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/discover"],
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

%% @doc Retrieves the resource-based policy attached to a given registry.
-spec get_resource_policy(aws_client:aws_client()) ->
    {ok, get_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, get_resource_policy_errors(), tuple()}.
get_resource_policy(Client)
  when is_map(Client) ->
    get_resource_policy(Client, #{}, #{}).

-spec get_resource_policy(aws_client:aws_client(), map(), map()) ->
    {ok, get_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, get_resource_policy_errors(), tuple()}.
get_resource_policy(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_resource_policy(Client, QueryMap, HeadersMap, []).

-spec get_resource_policy(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, get_resource_policy_errors(), tuple()}.
get_resource_policy(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/policy"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"registryName">>, maps:get(<<"registryName">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the discoverers.
-spec list_discoverers(aws_client:aws_client()) ->
    {ok, list_discoverers_response(), tuple()} |
    {error, any()} |
    {error, list_discoverers_errors(), tuple()}.
list_discoverers(Client)
  when is_map(Client) ->
    list_discoverers(Client, #{}, #{}).

-spec list_discoverers(aws_client:aws_client(), map(), map()) ->
    {ok, list_discoverers_response(), tuple()} |
    {error, any()} |
    {error, list_discoverers_errors(), tuple()}.
list_discoverers(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_discoverers(Client, QueryMap, HeadersMap, []).

-spec list_discoverers(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_discoverers_response(), tuple()} |
    {error, any()} |
    {error, list_discoverers_errors(), tuple()}.
list_discoverers(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/discoverers"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"discovererIdPrefix">>, maps:get(<<"discovererIdPrefix">>, QueryMap, undefined)},
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"sourceArnPrefix">>, maps:get(<<"sourceArnPrefix">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the registries.
-spec list_registries(aws_client:aws_client()) ->
    {ok, list_registries_response(), tuple()} |
    {error, any()} |
    {error, list_registries_errors(), tuple()}.
list_registries(Client)
  when is_map(Client) ->
    list_registries(Client, #{}, #{}).

-spec list_registries(aws_client:aws_client(), map(), map()) ->
    {ok, list_registries_response(), tuple()} |
    {error, any()} |
    {error, list_registries_errors(), tuple()}.
list_registries(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_registries(Client, QueryMap, HeadersMap, []).

-spec list_registries(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_registries_response(), tuple()} |
    {error, any()} |
    {error, list_registries_errors(), tuple()}.
list_registries(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/registries"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"registryNamePrefix">>, maps:get(<<"registryNamePrefix">>, QueryMap, undefined)},
        {<<"scope">>, maps:get(<<"scope">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Provides a list of the schema versions and related information.
-spec list_schema_versions(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_schema_versions_response(), tuple()} |
    {error, any()} |
    {error, list_schema_versions_errors(), tuple()}.
list_schema_versions(Client, RegistryName, SchemaName)
  when is_map(Client) ->
    list_schema_versions(Client, RegistryName, SchemaName, #{}, #{}).

-spec list_schema_versions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_schema_versions_response(), tuple()} |
    {error, any()} |
    {error, list_schema_versions_errors(), tuple()}.
list_schema_versions(Client, RegistryName, SchemaName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_schema_versions(Client, RegistryName, SchemaName, QueryMap, HeadersMap, []).

-spec list_schema_versions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_schema_versions_response(), tuple()} |
    {error, any()} |
    {error, list_schema_versions_errors(), tuple()}.
list_schema_versions(Client, RegistryName, SchemaName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/registries/name/", aws_util:encode_uri(RegistryName), "/schemas/name/", aws_util:encode_uri(SchemaName), "/versions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the schemas.
-spec list_schemas(aws_client:aws_client(), binary() | list()) ->
    {ok, list_schemas_response(), tuple()} |
    {error, any()} |
    {error, list_schemas_errors(), tuple()}.
list_schemas(Client, RegistryName)
  when is_map(Client) ->
    list_schemas(Client, RegistryName, #{}, #{}).

-spec list_schemas(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_schemas_response(), tuple()} |
    {error, any()} |
    {error, list_schemas_errors(), tuple()}.
list_schemas(Client, RegistryName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_schemas(Client, RegistryName, QueryMap, HeadersMap, []).

-spec list_schemas(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_schemas_response(), tuple()} |
    {error, any()} |
    {error, list_schemas_errors(), tuple()}.
list_schemas(Client, RegistryName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/registries/name/", aws_util:encode_uri(RegistryName), "/schemas"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"schemaNamePrefix">>, maps:get(<<"schemaNamePrefix">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get tags for resource.
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

%% @doc Put code binding URI
-spec put_code_binding(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), put_code_binding_request()) ->
    {ok, put_code_binding_response(), tuple()} |
    {error, any()} |
    {error, put_code_binding_errors(), tuple()}.
put_code_binding(Client, Language, RegistryName, SchemaName, Input) ->
    put_code_binding(Client, Language, RegistryName, SchemaName, Input, []).

-spec put_code_binding(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), put_code_binding_request(), proplists:proplist()) ->
    {ok, put_code_binding_response(), tuple()} |
    {error, any()} |
    {error, put_code_binding_errors(), tuple()}.
put_code_binding(Client, Language, RegistryName, SchemaName, Input0, Options0) ->
    Method = post,
    Path = ["/v1/registries/name/", aws_util:encode_uri(RegistryName), "/schemas/name/", aws_util:encode_uri(SchemaName), "/language/", aws_util:encode_uri(Language), ""],
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

    QueryMapping = [
                     {<<"schemaVersion">>, <<"SchemaVersion">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc The name of the policy.
-spec put_resource_policy(aws_client:aws_client(), put_resource_policy_request()) ->
    {ok, put_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, put_resource_policy_errors(), tuple()}.
put_resource_policy(Client, Input) ->
    put_resource_policy(Client, Input, []).

-spec put_resource_policy(aws_client:aws_client(), put_resource_policy_request(), proplists:proplist()) ->
    {ok, put_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, put_resource_policy_errors(), tuple()}.
put_resource_policy(Client, Input0, Options0) ->
    Method = put,
    Path = ["/v1/policy"],
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
                     {<<"registryName">>, <<"RegistryName">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Search the schemas
-spec search_schemas(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, search_schemas_response(), tuple()} |
    {error, any()} |
    {error, search_schemas_errors(), tuple()}.
search_schemas(Client, RegistryName, Keywords)
  when is_map(Client) ->
    search_schemas(Client, RegistryName, Keywords, #{}, #{}).

-spec search_schemas(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, search_schemas_response(), tuple()} |
    {error, any()} |
    {error, search_schemas_errors(), tuple()}.
search_schemas(Client, RegistryName, Keywords, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    search_schemas(Client, RegistryName, Keywords, QueryMap, HeadersMap, []).

-spec search_schemas(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, search_schemas_response(), tuple()} |
    {error, any()} |
    {error, search_schemas_errors(), tuple()}.
search_schemas(Client, RegistryName, Keywords, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/registries/name/", aws_util:encode_uri(RegistryName), "/schemas/search"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"keywords">>, Keywords},
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Starts the discoverer
-spec start_discoverer(aws_client:aws_client(), binary() | list(), start_discoverer_request()) ->
    {ok, start_discoverer_response(), tuple()} |
    {error, any()} |
    {error, start_discoverer_errors(), tuple()}.
start_discoverer(Client, DiscovererId, Input) ->
    start_discoverer(Client, DiscovererId, Input, []).

-spec start_discoverer(aws_client:aws_client(), binary() | list(), start_discoverer_request(), proplists:proplist()) ->
    {ok, start_discoverer_response(), tuple()} |
    {error, any()} |
    {error, start_discoverer_errors(), tuple()}.
start_discoverer(Client, DiscovererId, Input0, Options0) ->
    Method = post,
    Path = ["/v1/discoverers/id/", aws_util:encode_uri(DiscovererId), "/start"],
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

%% @doc Stops the discoverer
-spec stop_discoverer(aws_client:aws_client(), binary() | list(), stop_discoverer_request()) ->
    {ok, stop_discoverer_response(), tuple()} |
    {error, any()} |
    {error, stop_discoverer_errors(), tuple()}.
stop_discoverer(Client, DiscovererId, Input) ->
    stop_discoverer(Client, DiscovererId, Input, []).

-spec stop_discoverer(aws_client:aws_client(), binary() | list(), stop_discoverer_request(), proplists:proplist()) ->
    {ok, stop_discoverer_response(), tuple()} |
    {error, any()} |
    {error, stop_discoverer_errors(), tuple()}.
stop_discoverer(Client, DiscovererId, Input0, Options0) ->
    Method = post,
    Path = ["/v1/discoverers/id/", aws_util:encode_uri(DiscovererId), "/stop"],
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

%% @doc Add tags to a resource.
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

%% @doc Removes tags from a resource.
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

%% @doc Updates the discoverer
-spec update_discoverer(aws_client:aws_client(), binary() | list(), update_discoverer_request()) ->
    {ok, update_discoverer_response(), tuple()} |
    {error, any()} |
    {error, update_discoverer_errors(), tuple()}.
update_discoverer(Client, DiscovererId, Input) ->
    update_discoverer(Client, DiscovererId, Input, []).

-spec update_discoverer(aws_client:aws_client(), binary() | list(), update_discoverer_request(), proplists:proplist()) ->
    {ok, update_discoverer_response(), tuple()} |
    {error, any()} |
    {error, update_discoverer_errors(), tuple()}.
update_discoverer(Client, DiscovererId, Input0, Options0) ->
    Method = put,
    Path = ["/v1/discoverers/id/", aws_util:encode_uri(DiscovererId), ""],
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

%% @doc Updates a registry.
-spec update_registry(aws_client:aws_client(), binary() | list(), update_registry_request()) ->
    {ok, update_registry_response(), tuple()} |
    {error, any()} |
    {error, update_registry_errors(), tuple()}.
update_registry(Client, RegistryName, Input) ->
    update_registry(Client, RegistryName, Input, []).

-spec update_registry(aws_client:aws_client(), binary() | list(), update_registry_request(), proplists:proplist()) ->
    {ok, update_registry_response(), tuple()} |
    {error, any()} |
    {error, update_registry_errors(), tuple()}.
update_registry(Client, RegistryName, Input0, Options0) ->
    Method = put,
    Path = ["/v1/registries/name/", aws_util:encode_uri(RegistryName), ""],
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

%% @doc Updates the schema definition
%%
%% Inactive schemas will be deleted after two years.
-spec update_schema(aws_client:aws_client(), binary() | list(), binary() | list(), update_schema_request()) ->
    {ok, update_schema_response(), tuple()} |
    {error, any()} |
    {error, update_schema_errors(), tuple()}.
update_schema(Client, RegistryName, SchemaName, Input) ->
    update_schema(Client, RegistryName, SchemaName, Input, []).

-spec update_schema(aws_client:aws_client(), binary() | list(), binary() | list(), update_schema_request(), proplists:proplist()) ->
    {ok, update_schema_response(), tuple()} |
    {error, any()} |
    {error, update_schema_errors(), tuple()}.
update_schema(Client, RegistryName, SchemaName, Input0, Options0) ->
    Method = put,
    Path = ["/v1/registries/name/", aws_util:encode_uri(RegistryName), "/schemas/name/", aws_util:encode_uri(SchemaName), ""],
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
    Client1 = Client#{service => <<"schemas">>},
    Host = build_host(<<"schemas">>, Client1),
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
