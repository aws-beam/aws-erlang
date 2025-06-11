%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon GameLift Streams
%%
%% Amazon GameLift Streams provides a global cloud solution for content
%% streaming experiences.
%%
%% Use Amazon GameLift Streams tools to upload and configure content for
%% streaming, deploy and scale computing resources to host streams, and
%% manage stream session placement to meet customer demand.
%%
%% This Reference Guide describes the Amazon GameLift Streams service API.
%% You can use the API through the Amazon Web Services SDK, the Command Line
%% Interface (CLI), or by making direct REST calls through HTTPS.
%%
%% See the Amazon GameLift Streams Developer Guide for more information on
%% how Amazon GameLift Streams works and how to work with it.
-module(aws_gameliftstreams).

-export([add_stream_group_locations/3,
         add_stream_group_locations/4,
         associate_applications/3,
         associate_applications/4,
         create_application/2,
         create_application/3,
         create_stream_group/2,
         create_stream_group/3,
         create_stream_session_connection/4,
         create_stream_session_connection/5,
         delete_application/3,
         delete_application/4,
         delete_stream_group/3,
         delete_stream_group/4,
         disassociate_applications/3,
         disassociate_applications/4,
         export_stream_session_files/4,
         export_stream_session_files/5,
         get_application/2,
         get_application/4,
         get_application/5,
         get_stream_group/2,
         get_stream_group/4,
         get_stream_group/5,
         get_stream_session/3,
         get_stream_session/5,
         get_stream_session/6,
         list_applications/1,
         list_applications/3,
         list_applications/4,
         list_stream_groups/1,
         list_stream_groups/3,
         list_stream_groups/4,
         list_stream_sessions/2,
         list_stream_sessions/4,
         list_stream_sessions/5,
         list_stream_sessions_by_account/1,
         list_stream_sessions_by_account/3,
         list_stream_sessions_by_account/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         remove_stream_group_locations/3,
         remove_stream_group_locations/4,
         start_stream_session/3,
         start_stream_session/4,
         tag_resource/3,
         tag_resource/4,
         terminate_stream_session/4,
         terminate_stream_session/5,
         untag_resource/3,
         untag_resource/4,
         update_application/3,
         update_application/4,
         update_stream_group/3,
         update_stream_group/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% stream_session_summary() :: #{
%%   <<"ApplicationArn">> => string(),
%%   <<"Arn">> => string(),
%%   <<"CreatedAt">> => [non_neg_integer()],
%%   <<"ExportFilesMetadata">> => export_files_metadata(),
%%   <<"LastUpdatedAt">> => [non_neg_integer()],
%%   <<"Location">> => string(),
%%   <<"Protocol">> => list(any()),
%%   <<"Status">> => list(any()),
%%   <<"UserId">> => string()
%% }
-type stream_session_summary() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"Tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% create_stream_session_connection_input() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"SignalRequest">> := string()
%% }
-type create_stream_session_connection_input() :: #{binary() => any()}.


%% Example:
%% disassociate_applications_input() :: #{
%%   <<"ApplicationIdentifiers">> := list(string()())
%% }
-type disassociate_applications_input() :: #{binary() => any()}.


%% Example:
%% remove_stream_group_locations_input() :: #{
%%   <<"Locations">> := list([string()]())
%% }
-type remove_stream_group_locations_input() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% list_stream_sessions_output() :: #{
%%   <<"Items">> => list(stream_session_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_stream_sessions_output() :: #{binary() => any()}.

%% Example:
%% get_stream_group_input() :: #{}
-type get_stream_group_input() :: #{}.


%% Example:
%% associate_applications_input() :: #{
%%   <<"ApplicationIdentifiers">> := list(string()())
%% }
-type associate_applications_input() :: #{binary() => any()}.


%% Example:
%% start_stream_session_output() :: #{
%%   <<"AdditionalEnvironmentVariables">> => map(),
%%   <<"AdditionalLaunchArgs">> => list([string()]()),
%%   <<"ApplicationArn">> => string(),
%%   <<"Arn">> => string(),
%%   <<"ConnectionTimeoutSeconds">> => integer(),
%%   <<"CreatedAt">> => [non_neg_integer()],
%%   <<"Description">> => string(),
%%   <<"ExportFilesMetadata">> => export_files_metadata(),
%%   <<"LastUpdatedAt">> => [non_neg_integer()],
%%   <<"Location">> => string(),
%%   <<"LogFileLocationUri">> => string(),
%%   <<"Protocol">> => list(any()),
%%   <<"SessionLengthSeconds">> => integer(),
%%   <<"SignalRequest">> => string(),
%%   <<"SignalResponse">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusReason">> => list(any()),
%%   <<"StreamGroupId">> => string(),
%%   <<"UserId">> => string(),
%%   <<"WebSdkProtocolUrl">> => string()
%% }
-type start_stream_session_output() :: #{binary() => any()}.


%% Example:
%% list_stream_sessions_by_account_output() :: #{
%%   <<"Items">> => list(stream_session_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_stream_sessions_by_account_output() :: #{binary() => any()}.


%% Example:
%% create_application_output() :: #{
%%   <<"ApplicationLogOutputUri">> => string(),
%%   <<"ApplicationLogPaths">> => list(string()()),
%%   <<"ApplicationSourceUri">> => string(),
%%   <<"Arn">> => string(),
%%   <<"AssociatedStreamGroups">> => list(string()()),
%%   <<"CreatedAt">> => [non_neg_integer()],
%%   <<"Description">> => string(),
%%   <<"ExecutablePath">> => string(),
%%   <<"Id">> => string(),
%%   <<"LastUpdatedAt">> => [non_neg_integer()],
%%   <<"ReplicationStatuses">> => list(replication_status()()),
%%   <<"RuntimeEnvironment">> => runtime_environment(),
%%   <<"Status">> => list(any()),
%%   <<"StatusReason">> => list(any())
%% }
-type create_application_output() :: #{binary() => any()}.


%% Example:
%% default_application() :: #{
%%   <<"Arn">> => string(),
%%   <<"Id">> => string()
%% }
-type default_application() :: #{binary() => any()}.


%% Example:
%% create_stream_group_output() :: #{
%%   <<"Arn">> => string(),
%%   <<"AssociatedApplications">> => list(string()()),
%%   <<"CreatedAt">> => [non_neg_integer()],
%%   <<"DefaultApplication">> => default_application(),
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"LastUpdatedAt">> => [non_neg_integer()],
%%   <<"LocationStates">> => list(location_state()()),
%%   <<"Status">> => list(any()),
%%   <<"StatusReason">> => list(any()),
%%   <<"StreamClass">> => list(any())
%% }
-type create_stream_group_output() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"TagKeys">> := list(string()())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% location_configuration() :: #{
%%   <<"AlwaysOnCapacity">> => integer(),
%%   <<"LocationName">> => string(),
%%   <<"OnDemandCapacity">> => integer()
%% }
-type location_configuration() :: #{binary() => any()}.


%% Example:
%% location_state() :: #{
%%   <<"AllocatedCapacity">> => integer(),
%%   <<"AlwaysOnCapacity">> => integer(),
%%   <<"IdleCapacity">> => integer(),
%%   <<"LocationName">> => string(),
%%   <<"OnDemandCapacity">> => integer(),
%%   <<"RequestedCapacity">> => integer(),
%%   <<"Status">> => list(any())
%% }
-type location_state() :: #{binary() => any()}.

%% Example:
%% delete_stream_group_input() :: #{}
-type delete_stream_group_input() :: #{}.

%% Example:
%% export_stream_session_files_output() :: #{}
-type export_stream_session_files_output() :: #{}.


%% Example:
%% associate_applications_output() :: #{
%%   <<"ApplicationArns">> => list(string()()),
%%   <<"Arn">> => string()
%% }
-type associate_applications_output() :: #{binary() => any()}.


%% Example:
%% list_applications_output() :: #{
%%   <<"Items">> => list(application_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_applications_output() :: #{binary() => any()}.


%% Example:
%% list_applications_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_applications_input() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% terminate_stream_session_input() :: #{}
-type terminate_stream_session_input() :: #{}.


%% Example:
%% create_application_input() :: #{
%%   <<"ApplicationLogOutputUri">> => string(),
%%   <<"ApplicationLogPaths">> => list(string()()),
%%   <<"ApplicationSourceUri">> := string(),
%%   <<"ClientToken">> => string(),
%%   <<"Description">> := string(),
%%   <<"ExecutablePath">> := string(),
%%   <<"RuntimeEnvironment">> := runtime_environment(),
%%   <<"Tags">> => map()
%% }
-type create_application_input() :: #{binary() => any()}.


%% Example:
%% list_stream_sessions_by_account_input() :: #{
%%   <<"ExportFilesStatus">> => list(any()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Status">> => list(any())
%% }
-type list_stream_sessions_by_account_input() :: #{binary() => any()}.


%% Example:
%% export_files_metadata() :: #{
%%   <<"OutputUri">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusReason">> => string()
%% }
-type export_files_metadata() :: #{binary() => any()}.


%% Example:
%% disassociate_applications_output() :: #{
%%   <<"ApplicationArns">> => list(string()()),
%%   <<"Arn">> => string()
%% }
-type disassociate_applications_output() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% add_stream_group_locations_output() :: #{
%%   <<"Identifier">> => string(),
%%   <<"Locations">> => list(location_state()())
%% }
-type add_stream_group_locations_output() :: #{binary() => any()}.


%% Example:
%% start_stream_session_input() :: #{
%%   <<"AdditionalEnvironmentVariables">> => map(),
%%   <<"AdditionalLaunchArgs">> => list([string()]()),
%%   <<"ApplicationIdentifier">> := string(),
%%   <<"ClientToken">> => string(),
%%   <<"ConnectionTimeoutSeconds">> => integer(),
%%   <<"Description">> => string(),
%%   <<"Locations">> => list(string()()),
%%   <<"Protocol">> := list(any()),
%%   <<"SessionLengthSeconds">> => integer(),
%%   <<"SignalRequest">> := string(),
%%   <<"UserId">> => string()
%% }
-type start_stream_session_input() :: #{binary() => any()}.


%% Example:
%% update_stream_group_input() :: #{
%%   <<"Description">> => string(),
%%   <<"LocationConfigurations">> => list(location_configuration()())
%% }
-type update_stream_group_input() :: #{binary() => any()}.


%% Example:
%% list_stream_groups_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_stream_groups_input() :: #{binary() => any()}.


%% Example:
%% replication_status() :: #{
%%   <<"Location">> => string(),
%%   <<"Status">> => list(any())
%% }
-type replication_status() :: #{binary() => any()}.


%% Example:
%% get_application_output() :: #{
%%   <<"ApplicationLogOutputUri">> => string(),
%%   <<"ApplicationLogPaths">> => list(string()()),
%%   <<"ApplicationSourceUri">> => string(),
%%   <<"Arn">> => string(),
%%   <<"AssociatedStreamGroups">> => list(string()()),
%%   <<"CreatedAt">> => [non_neg_integer()],
%%   <<"Description">> => string(),
%%   <<"ExecutablePath">> => string(),
%%   <<"Id">> => string(),
%%   <<"LastUpdatedAt">> => [non_neg_integer()],
%%   <<"ReplicationStatuses">> => list(replication_status()()),
%%   <<"RuntimeEnvironment">> => runtime_environment(),
%%   <<"Status">> => list(any()),
%%   <<"StatusReason">> => list(any())
%% }
-type get_application_output() :: #{binary() => any()}.


%% Example:
%% stream_group_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedAt">> => [non_neg_integer()],
%%   <<"DefaultApplication">> => default_application(),
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"LastUpdatedAt">> => [non_neg_integer()],
%%   <<"Status">> => list(any()),
%%   <<"StreamClass">> => list(any())
%% }
-type stream_group_summary() :: #{binary() => any()}.


%% Example:
%% create_stream_group_input() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"DefaultApplicationIdentifier">> => string(),
%%   <<"Description">> := string(),
%%   <<"LocationConfigurations">> => list(location_configuration()()),
%%   <<"StreamClass">> := list(any()),
%%   <<"Tags">> => map()
%% }
-type create_stream_group_input() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% delete_application_input() :: #{}
-type delete_application_input() :: #{}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% create_stream_session_connection_output() :: #{
%%   <<"SignalResponse">> => string()
%% }
-type create_stream_session_connection_output() :: #{binary() => any()}.


%% Example:
%% runtime_environment() :: #{
%%   <<"Type">> => list(any()),
%%   <<"Version">> => string()
%% }
-type runtime_environment() :: #{binary() => any()}.


%% Example:
%% get_stream_group_output() :: #{
%%   <<"Arn">> => string(),
%%   <<"AssociatedApplications">> => list(string()()),
%%   <<"CreatedAt">> => [non_neg_integer()],
%%   <<"DefaultApplication">> => default_application(),
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"LastUpdatedAt">> => [non_neg_integer()],
%%   <<"LocationStates">> => list(location_state()()),
%%   <<"Status">> => list(any()),
%%   <<"StatusReason">> => list(any()),
%%   <<"StreamClass">> => list(any())
%% }
-type get_stream_group_output() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% application_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedAt">> => [non_neg_integer()],
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"LastUpdatedAt">> => [non_neg_integer()],
%%   <<"RuntimeEnvironment">> => runtime_environment(),
%%   <<"Status">> => list(any())
%% }
-type application_summary() :: #{binary() => any()}.


%% Example:
%% update_application_input() :: #{
%%   <<"ApplicationLogOutputUri">> => string(),
%%   <<"ApplicationLogPaths">> => list(string()()),
%%   <<"Description">> => string()
%% }
-type update_application_input() :: #{binary() => any()}.


%% Example:
%% add_stream_group_locations_input() :: #{
%%   <<"LocationConfigurations">> := list(location_configuration()())
%% }
-type add_stream_group_locations_input() :: #{binary() => any()}.


%% Example:
%% update_stream_group_output() :: #{
%%   <<"Arn">> => string(),
%%   <<"AssociatedApplications">> => list(string()()),
%%   <<"CreatedAt">> => [non_neg_integer()],
%%   <<"DefaultApplication">> => default_application(),
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"LastUpdatedAt">> => [non_neg_integer()],
%%   <<"LocationStates">> => list(location_state()()),
%%   <<"Status">> => list(any()),
%%   <<"StatusReason">> => list(any()),
%%   <<"StreamClass">> => list(any())
%% }
-type update_stream_group_output() :: #{binary() => any()}.


%% Example:
%% export_stream_session_files_input() :: #{
%%   <<"OutputUri">> := string()
%% }
-type export_stream_session_files_input() :: #{binary() => any()}.


%% Example:
%% list_stream_groups_output() :: #{
%%   <<"Items">> => list(stream_group_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_stream_groups_output() :: #{binary() => any()}.

%% Example:
%% get_application_input() :: #{}
-type get_application_input() :: #{}.


%% Example:
%% list_stream_sessions_input() :: #{
%%   <<"ExportFilesStatus">> => list(any()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Status">> => list(any())
%% }
-type list_stream_sessions_input() :: #{binary() => any()}.


%% Example:
%% get_stream_session_output() :: #{
%%   <<"AdditionalEnvironmentVariables">> => map(),
%%   <<"AdditionalLaunchArgs">> => list([string()]()),
%%   <<"ApplicationArn">> => string(),
%%   <<"Arn">> => string(),
%%   <<"ConnectionTimeoutSeconds">> => integer(),
%%   <<"CreatedAt">> => [non_neg_integer()],
%%   <<"Description">> => string(),
%%   <<"ExportFilesMetadata">> => export_files_metadata(),
%%   <<"LastUpdatedAt">> => [non_neg_integer()],
%%   <<"Location">> => string(),
%%   <<"LogFileLocationUri">> => string(),
%%   <<"Protocol">> => list(any()),
%%   <<"SessionLengthSeconds">> => integer(),
%%   <<"SignalRequest">> => string(),
%%   <<"SignalResponse">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusReason">> => list(any()),
%%   <<"StreamGroupId">> => string(),
%%   <<"UserId">> => string(),
%%   <<"WebSdkProtocolUrl">> => string()
%% }
-type get_stream_session_output() :: #{binary() => any()}.

%% Example:
%% get_stream_session_input() :: #{}
-type get_stream_session_input() :: #{}.


%% Example:
%% update_application_output() :: #{
%%   <<"ApplicationLogOutputUri">> => string(),
%%   <<"ApplicationLogPaths">> => list(string()()),
%%   <<"ApplicationSourceUri">> => string(),
%%   <<"Arn">> => string(),
%%   <<"AssociatedStreamGroups">> => list(string()()),
%%   <<"CreatedAt">> => [non_neg_integer()],
%%   <<"Description">> => string(),
%%   <<"ExecutablePath">> => string(),
%%   <<"Id">> => string(),
%%   <<"LastUpdatedAt">> => [non_neg_integer()],
%%   <<"ReplicationStatuses">> => list(replication_status()()),
%%   <<"RuntimeEnvironment">> => runtime_environment(),
%%   <<"Status">> => list(any()),
%%   <<"StatusReason">> => list(any())
%% }
-type update_application_output() :: #{binary() => any()}.

-type add_stream_group_locations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type associate_applications_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type create_application_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_stream_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_stream_session_connection_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_application_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_stream_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type disassociate_applications_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type export_stream_session_files_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_application_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_stream_group_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_stream_session_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_applications_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_stream_groups_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_stream_sessions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_stream_sessions_by_account_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type remove_stream_group_locations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type start_stream_session_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type tag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type terminate_stream_session_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type update_application_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_stream_group_errors() ::
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

%% @doc Add locations that can host stream sessions.
%%
%% You configure locations and their corresponding capacity for each stream
%% group. Creating a stream group in a location that's nearest to your
%% end users can help minimize latency and improve quality.
%%
%% This operation provisions stream capacity at the specified locations. By
%% default, all locations have 1 or 2 capacity, depending on the stream class
%% option: 2 for 'High' and 1 for 'Ultra' and
%% 'Win2022'. This operation also copies the content files of all
%% associated applications to an internal S3 bucket at each location. This
%% allows Amazon GameLift Streams to host performant stream sessions.
-spec add_stream_group_locations(aws_client:aws_client(), binary() | list(), add_stream_group_locations_input()) ->
    {ok, add_stream_group_locations_output(), tuple()} |
    {error, any()} |
    {error, add_stream_group_locations_errors(), tuple()}.
add_stream_group_locations(Client, Identifier, Input) ->
    add_stream_group_locations(Client, Identifier, Input, []).

-spec add_stream_group_locations(aws_client:aws_client(), binary() | list(), add_stream_group_locations_input(), proplists:proplist()) ->
    {ok, add_stream_group_locations_output(), tuple()} |
    {error, any()} |
    {error, add_stream_group_locations_errors(), tuple()}.
add_stream_group_locations(Client, Identifier, Input0, Options0) ->
    Method = post,
    Path = ["/streamgroups/", aws_util:encode_uri(Identifier), "/locations"],
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

%% @doc When you associate, or link, an application with a stream group, then
%% Amazon GameLift Streams can launch the application using the stream
%% group's allocated compute resources.
%%
%% The stream group must be in `ACTIVE' status. You can reverse this
%% action by using DisassociateApplications:
%% https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_DisassociateApplications.html.
-spec associate_applications(aws_client:aws_client(), binary() | list(), associate_applications_input()) ->
    {ok, associate_applications_output(), tuple()} |
    {error, any()} |
    {error, associate_applications_errors(), tuple()}.
associate_applications(Client, Identifier, Input) ->
    associate_applications(Client, Identifier, Input, []).

-spec associate_applications(aws_client:aws_client(), binary() | list(), associate_applications_input(), proplists:proplist()) ->
    {ok, associate_applications_output(), tuple()} |
    {error, any()} |
    {error, associate_applications_errors(), tuple()}.
associate_applications(Client, Identifier, Input0, Options0) ->
    Method = post,
    Path = ["/streamgroups/", aws_util:encode_uri(Identifier), "/associations"],
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

%% @doc Creates an application resource in Amazon GameLift Streams, which
%% specifies the application content you want to stream, such as a game build
%% or other software, and configures the settings to run it.
%%
%% Before you create an application, upload your application content files to
%% an Amazon Simple Storage Service (Amazon S3) bucket. For more information,
%% see Getting Started in the Amazon GameLift Streams Developer Guide.
%%
%% Make sure that your files in the Amazon S3 bucket are the correct version
%% you want to use. If you change the files at a later time, you will need to
%% create a new Amazon GameLift Streams application.
%%
%% If the request is successful, Amazon GameLift Streams begins to create an
%% application and sets the status to `INITIALIZED'. When an application
%% reaches `READY' status, you can use the application to set up stream
%% groups and start streams. To track application status, call
%% GetApplication:
%% https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_GetApplication.html.
-spec create_application(aws_client:aws_client(), create_application_input()) ->
    {ok, create_application_output(), tuple()} |
    {error, any()} |
    {error, create_application_errors(), tuple()}.
create_application(Client, Input) ->
    create_application(Client, Input, []).

-spec create_application(aws_client:aws_client(), create_application_input(), proplists:proplist()) ->
    {ok, create_application_output(), tuple()} |
    {error, any()} |
    {error, create_application_errors(), tuple()}.
create_application(Client, Input0, Options0) ->
    Method = post,
    Path = ["/applications"],
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

%% @doc Manage how Amazon GameLift Streams streams your applications by using
%% a stream group.
%%
%% A stream group is a collection of resources that Amazon GameLift Streams
%% uses to stream your application to end-users. When you create a stream
%% group, you specify an application to stream by default and the type of
%% hardware to use, such as the graphical processing unit (GPU). You can also
%% link additional applications, which allows you to stream those
%% applications using this stream group. Depending on your expected users,
%% you also scale the number of concurrent streams you want to support at one
%% time, and in what locations.
%%
%% Stream capacity represents the number of concurrent streams that can be
%% active at a time. You set stream capacity per location, per stream group.
%% There are two types of capacity, always-on and on-demand:
%%
%% Always-on: The streaming capacity that is allocated and ready to handle
%% stream requests without delay. You pay for this capacity whether it's
%% in use or not. Best for quickest time from streaming request to streaming
%% session.
%%
%% On-demand: The streaming capacity that Amazon GameLift Streams can
%% allocate in response to stream requests, and then de-allocate when the
%% session has terminated. This offers a cost control measure at the expense
%% of a greater startup time (typically under 5 minutes).
%%
%% To adjust the capacity of any `ACTIVE' stream group, call
%% UpdateStreamGroup:
%% https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_UpdateStreamGroup.html.
%%
%% If the request is successful, Amazon GameLift Streams begins creating the
%% stream group. Amazon GameLift Streams assigns a unique ID to the stream
%% group resource and sets the status to `ACTIVATING'. When the stream
%% group reaches `ACTIVE' status, you can start stream sessions by using
%% StartStreamSession:
%% https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_StartStreamSession.html.
%% To check the stream group's status, call GetStreamGroup:
%% https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_GetStreamGroup.html.
-spec create_stream_group(aws_client:aws_client(), create_stream_group_input()) ->
    {ok, create_stream_group_output(), tuple()} |
    {error, any()} |
    {error, create_stream_group_errors(), tuple()}.
create_stream_group(Client, Input) ->
    create_stream_group(Client, Input, []).

-spec create_stream_group(aws_client:aws_client(), create_stream_group_input(), proplists:proplist()) ->
    {ok, create_stream_group_output(), tuple()} |
    {error, any()} |
    {error, create_stream_group_errors(), tuple()}.
create_stream_group(Client, Input0, Options0) ->
    Method = post,
    Path = ["/streamgroups"],
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

%% @doc Allows clients to reconnect to a recently disconnected stream session
%% without losing any data from the last session.
%%
%% A client can reconnect to a stream session that's in
%% `PENDING_CLIENT_RECONNECTION' or `ACTIVE' status. In the stream
%% session life cycle, when the client disconnects from the stream session,
%% the stream session transitions from `CONNECTED' to
%% `PENDING_CLIENT_RECONNECTION' status. When a client requests to
%% reconnect by calling `CreateStreamSessionConnection', the stream
%% session transitions to `RECONNECTING' status. When the reconnection is
%% successful, the stream session transitions to `ACTIVE' status. After a
%% stream session is disconnected for longer than
%% `ConnectionTimeoutSeconds', the stream session transitions to the
%% `TERMINATED' status.
%%
%% To connect to an existing stream session, specify the stream group ID and
%% stream session ID that you want to reconnect to, as well as the signal
%% request settings to use with the stream.
%%
%% `ConnectionTimeoutSeconds' defines the amount of time after the stream
%% session disconnects that a reconnection is allowed. If a client is
%% disconnected from the stream for longer than
%% `ConnectionTimeoutSeconds', the stream session ends.
-spec create_stream_session_connection(aws_client:aws_client(), binary() | list(), binary() | list(), create_stream_session_connection_input()) ->
    {ok, create_stream_session_connection_output(), tuple()} |
    {error, any()} |
    {error, create_stream_session_connection_errors(), tuple()}.
create_stream_session_connection(Client, Identifier, StreamSessionIdentifier, Input) ->
    create_stream_session_connection(Client, Identifier, StreamSessionIdentifier, Input, []).

-spec create_stream_session_connection(aws_client:aws_client(), binary() | list(), binary() | list(), create_stream_session_connection_input(), proplists:proplist()) ->
    {ok, create_stream_session_connection_output(), tuple()} |
    {error, any()} |
    {error, create_stream_session_connection_errors(), tuple()}.
create_stream_session_connection(Client, Identifier, StreamSessionIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/streamgroups/", aws_util:encode_uri(Identifier), "/streamsessions/", aws_util:encode_uri(StreamSessionIdentifier), "/connections"],
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

%% @doc Permanently deletes an Amazon GameLift Streams application resource.
%%
%% This also deletes the application content files stored with Amazon
%% GameLift Streams. However, this does not delete the original files that
%% you uploaded to your Amazon S3 bucket; you can delete these any time after
%% Amazon GameLift Streams creates an application, which is the only time
%% Amazon GameLift Streams accesses your Amazon S3 bucket.
%%
%% You can only delete an application that meets the following conditions:
%%
%% The application is in `READY' or `ERROR' status. You cannot delete
%% an application that's in `PROCESSING' or `INITIALIZED' status.
%%
%% The application is not the default application of any stream groups. You
%% must first delete the stream group by using DeleteStreamGroup:
%% https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_DeleteStreamGroup.html.
%%
%% The application is not linked to any stream groups. You must first unlink
%% the stream group by using DisassociateApplications:
%% https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_DisassociateApplications.html.
%%
%% An application is not streaming in any ongoing stream session. You must
%% wait until the client ends the stream session or call
%% TerminateStreamSession:
%% https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_TerminateStreamSession.html
%% to end the stream.
%%
%% If any active stream groups exist for this application, this request
%% returns a `ValidationException'.
-spec delete_application(aws_client:aws_client(), binary() | list(), delete_application_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_application_errors(), tuple()}.
delete_application(Client, Identifier, Input) ->
    delete_application(Client, Identifier, Input, []).

-spec delete_application(aws_client:aws_client(), binary() | list(), delete_application_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_application_errors(), tuple()}.
delete_application(Client, Identifier, Input0, Options0) ->
    Method = delete,
    Path = ["/applications/", aws_util:encode_uri(Identifier), ""],
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

%% @doc Permanently deletes all compute resources and information related to
%% a stream group.
%%
%% To delete a stream group, specify the unique stream group identifier.
%% During the deletion process, the stream group's status is
%% `DELETING'. This operation stops streams in progress and prevents new
%% streams from starting. As a best practice, before deleting the stream
%% group, call ListStreamSessions:
%% https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_ListStreamSessions.html
%% to check for streams in progress and take action to stop them. When you
%% delete a stream group, any application associations referring to that
%% stream group are automatically removed.
-spec delete_stream_group(aws_client:aws_client(), binary() | list(), delete_stream_group_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_stream_group_errors(), tuple()}.
delete_stream_group(Client, Identifier, Input) ->
    delete_stream_group(Client, Identifier, Input, []).

-spec delete_stream_group(aws_client:aws_client(), binary() | list(), delete_stream_group_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_stream_group_errors(), tuple()}.
delete_stream_group(Client, Identifier, Input0, Options0) ->
    Method = delete,
    Path = ["/streamgroups/", aws_util:encode_uri(Identifier), ""],
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

%% @doc When you disassociate, or unlink, an application from a stream group,
%% you can no longer stream this application by using that stream group's
%% allocated compute resources.
%%
%% Any streams in process will continue until they terminate, which helps
%% avoid interrupting an end-user's stream. Amazon GameLift Streams will
%% not initiate new streams using this stream group. The disassociate action
%% does not affect the stream capacity of a stream group.
%%
%% You can only disassociate an application if it's not a default
%% application of the stream group. Check `DefaultApplicationIdentifier'
%% by calling GetStreamGroup:
%% https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_GetStreamGroup.html.
-spec disassociate_applications(aws_client:aws_client(), binary() | list(), disassociate_applications_input()) ->
    {ok, disassociate_applications_output(), tuple()} |
    {error, any()} |
    {error, disassociate_applications_errors(), tuple()}.
disassociate_applications(Client, Identifier, Input) ->
    disassociate_applications(Client, Identifier, Input, []).

-spec disassociate_applications(aws_client:aws_client(), binary() | list(), disassociate_applications_input(), proplists:proplist()) ->
    {ok, disassociate_applications_output(), tuple()} |
    {error, any()} |
    {error, disassociate_applications_errors(), tuple()}.
disassociate_applications(Client, Identifier, Input0, Options0) ->
    Method = post,
    Path = ["/streamgroups/", aws_util:encode_uri(Identifier), "/disassociations"],
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

%% @doc Export the files that your application modifies or generates in a
%% stream session, which can help you debug or verify your application.
%%
%% When your application runs, it generates output files such as logs,
%% diagnostic information, crash dumps, save files, user data, screenshots,
%% and so on. The files can be defined by the engine or frameworks that your
%% application uses, or information that you've programmed your
%% application to output.
%%
%% You can only call this action on a stream session that is in progress,
%% specifically in one of the following statuses `ACTIVE',
%% `CONNECTED', `PENDING_CLIENT_RECONNECTION', and
%% `RECONNECTING'. You must provide an Amazon Simple Storage Service
%% (Amazon S3) bucket to store the files in. When the session ends, Amazon
%% GameLift Streams produces a compressed folder that contains all of the
%% files and directories that were modified or created by the application
%% during the stream session. AWS uses your security credentials to
%% authenticate and authorize access to your Amazon S3 bucket.
%%
%% Amazon GameLift Streams collects the following generated and modified
%% files. Find them in the corresponding folders in the `.zip' archive.
%%
%% `application/': The folder where your application or game is stored.
%%
%% `profile/': The user profile folder.
%%
%% `temp/': The system temp folder.
%%
%% To verify the status of the exported files, use GetStreamSession.
%%
%% To delete the files, delete the object in the S3 bucket.
-spec export_stream_session_files(aws_client:aws_client(), binary() | list(), binary() | list(), export_stream_session_files_input()) ->
    {ok, export_stream_session_files_output(), tuple()} |
    {error, any()} |
    {error, export_stream_session_files_errors(), tuple()}.
export_stream_session_files(Client, Identifier, StreamSessionIdentifier, Input) ->
    export_stream_session_files(Client, Identifier, StreamSessionIdentifier, Input, []).

-spec export_stream_session_files(aws_client:aws_client(), binary() | list(), binary() | list(), export_stream_session_files_input(), proplists:proplist()) ->
    {ok, export_stream_session_files_output(), tuple()} |
    {error, any()} |
    {error, export_stream_session_files_errors(), tuple()}.
export_stream_session_files(Client, Identifier, StreamSessionIdentifier, Input0, Options0) ->
    Method = put,
    Path = ["/streamgroups/", aws_util:encode_uri(Identifier), "/streamsessions/", aws_util:encode_uri(StreamSessionIdentifier), "/exportfiles"],
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

%% @doc Retrieves properties for an Amazon GameLift Streams application
%% resource.
%%
%% Specify the ID of the application that you want to retrieve. If the
%% operation is successful, it returns properties for the requested
%% application.
-spec get_application(aws_client:aws_client(), binary() | list()) ->
    {ok, get_application_output(), tuple()} |
    {error, any()} |
    {error, get_application_errors(), tuple()}.
get_application(Client, Identifier)
  when is_map(Client) ->
    get_application(Client, Identifier, #{}, #{}).

-spec get_application(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_application_output(), tuple()} |
    {error, any()} |
    {error, get_application_errors(), tuple()}.
get_application(Client, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_application(Client, Identifier, QueryMap, HeadersMap, []).

-spec get_application(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_application_output(), tuple()} |
    {error, any()} |
    {error, get_application_errors(), tuple()}.
get_application(Client, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves properties for a Amazon GameLift Streams stream group
%% resource.
%%
%% Specify the ID of the stream group that you want to retrieve. If the
%% operation is successful, it returns properties for the requested stream
%% group.
-spec get_stream_group(aws_client:aws_client(), binary() | list()) ->
    {ok, get_stream_group_output(), tuple()} |
    {error, any()} |
    {error, get_stream_group_errors(), tuple()}.
get_stream_group(Client, Identifier)
  when is_map(Client) ->
    get_stream_group(Client, Identifier, #{}, #{}).

-spec get_stream_group(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_stream_group_output(), tuple()} |
    {error, any()} |
    {error, get_stream_group_errors(), tuple()}.
get_stream_group(Client, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_stream_group(Client, Identifier, QueryMap, HeadersMap, []).

-spec get_stream_group(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_stream_group_output(), tuple()} |
    {error, any()} |
    {error, get_stream_group_errors(), tuple()}.
get_stream_group(Client, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/streamgroups/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves properties for a Amazon GameLift Streams stream session
%% resource.
%%
%% Specify the Amazon Resource Name (ARN) of the stream session that you want
%% to retrieve and its stream group ARN. If the operation is successful, it
%% returns properties for the requested resource.
-spec get_stream_session(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_stream_session_output(), tuple()} |
    {error, any()} |
    {error, get_stream_session_errors(), tuple()}.
get_stream_session(Client, Identifier, StreamSessionIdentifier)
  when is_map(Client) ->
    get_stream_session(Client, Identifier, StreamSessionIdentifier, #{}, #{}).

-spec get_stream_session(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_stream_session_output(), tuple()} |
    {error, any()} |
    {error, get_stream_session_errors(), tuple()}.
get_stream_session(Client, Identifier, StreamSessionIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_stream_session(Client, Identifier, StreamSessionIdentifier, QueryMap, HeadersMap, []).

-spec get_stream_session(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_stream_session_output(), tuple()} |
    {error, any()} |
    {error, get_stream_session_errors(), tuple()}.
get_stream_session(Client, Identifier, StreamSessionIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/streamgroups/", aws_util:encode_uri(Identifier), "/streamsessions/", aws_util:encode_uri(StreamSessionIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of all Amazon GameLift Streams applications that are
%% associated with the Amazon Web Services account in use.
%%
%% This operation returns applications in all statuses, in no particular
%% order. You can paginate the results as needed.
-spec list_applications(aws_client:aws_client()) ->
    {ok, list_applications_output(), tuple()} |
    {error, any()} |
    {error, list_applications_errors(), tuple()}.
list_applications(Client)
  when is_map(Client) ->
    list_applications(Client, #{}, #{}).

-spec list_applications(aws_client:aws_client(), map(), map()) ->
    {ok, list_applications_output(), tuple()} |
    {error, any()} |
    {error, list_applications_errors(), tuple()}.
list_applications(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_applications(Client, QueryMap, HeadersMap, []).

-spec list_applications(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_applications_output(), tuple()} |
    {error, any()} |
    {error, list_applications_errors(), tuple()}.
list_applications(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of all Amazon GameLift Streams stream groups that
%% are associated with the Amazon Web Services account in use.
%%
%% This operation returns stream groups in all statuses, in no particular
%% order. You can paginate the results as needed.
-spec list_stream_groups(aws_client:aws_client()) ->
    {ok, list_stream_groups_output(), tuple()} |
    {error, any()} |
    {error, list_stream_groups_errors(), tuple()}.
list_stream_groups(Client)
  when is_map(Client) ->
    list_stream_groups(Client, #{}, #{}).

-spec list_stream_groups(aws_client:aws_client(), map(), map()) ->
    {ok, list_stream_groups_output(), tuple()} |
    {error, any()} |
    {error, list_stream_groups_errors(), tuple()}.
list_stream_groups(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_stream_groups(Client, QueryMap, HeadersMap, []).

-spec list_stream_groups(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_stream_groups_output(), tuple()} |
    {error, any()} |
    {error, list_stream_groups_errors(), tuple()}.
list_stream_groups(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/streamgroups"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of Amazon GameLift Streams stream sessions that a
%% stream group is hosting.
%%
%% To retrieve stream sessions, specify the stream group, and optionally
%% filter by stream session status. You can paginate the results as needed.
%%
%% This operation returns the requested stream sessions in no particular
%% order.
-spec list_stream_sessions(aws_client:aws_client(), binary() | list()) ->
    {ok, list_stream_sessions_output(), tuple()} |
    {error, any()} |
    {error, list_stream_sessions_errors(), tuple()}.
list_stream_sessions(Client, Identifier)
  when is_map(Client) ->
    list_stream_sessions(Client, Identifier, #{}, #{}).

-spec list_stream_sessions(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_stream_sessions_output(), tuple()} |
    {error, any()} |
    {error, list_stream_sessions_errors(), tuple()}.
list_stream_sessions(Client, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_stream_sessions(Client, Identifier, QueryMap, HeadersMap, []).

-spec list_stream_sessions(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_stream_sessions_output(), tuple()} |
    {error, any()} |
    {error, list_stream_sessions_errors(), tuple()}.
list_stream_sessions(Client, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/streamgroups/", aws_util:encode_uri(Identifier), "/streamsessions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"ExportFilesStatus">>, maps:get(<<"ExportFilesStatus">>, QueryMap, undefined)},
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)},
        {<<"Status">>, maps:get(<<"Status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of Amazon GameLift Streams stream sessions that this
%% user account has access to.
%%
%% In the returned list of stream sessions, the `ExportFilesMetadata'
%% property only shows the `Status' value. To get the `OutpurUri' and
%% `StatusReason' values, use GetStreamSession:
%% https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_GetStreamSession.html.
%%
%% We don't recommend using this operation to regularly check stream
%% session statuses because it's costly. Instead, to check status updates
%% for a specific stream session, use GetStreamSession:
%% https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_GetStreamSession.html.
-spec list_stream_sessions_by_account(aws_client:aws_client()) ->
    {ok, list_stream_sessions_by_account_output(), tuple()} |
    {error, any()} |
    {error, list_stream_sessions_by_account_errors(), tuple()}.
list_stream_sessions_by_account(Client)
  when is_map(Client) ->
    list_stream_sessions_by_account(Client, #{}, #{}).

-spec list_stream_sessions_by_account(aws_client:aws_client(), map(), map()) ->
    {ok, list_stream_sessions_by_account_output(), tuple()} |
    {error, any()} |
    {error, list_stream_sessions_by_account_errors(), tuple()}.
list_stream_sessions_by_account(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_stream_sessions_by_account(Client, QueryMap, HeadersMap, []).

-spec list_stream_sessions_by_account(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_stream_sessions_by_account_output(), tuple()} |
    {error, any()} |
    {error, list_stream_sessions_by_account_errors(), tuple()}.
list_stream_sessions_by_account(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/streamsessions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"ExportFilesStatus">>, maps:get(<<"ExportFilesStatus">>, QueryMap, undefined)},
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)},
        {<<"Status">>, maps:get(<<"Status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves all tags assigned to a Amazon GameLift Streams resource.
%%
%% To list tags for a resource, specify the ARN value for the resource.
%%
%% Learn more
%%
%% Tagging Amazon Web Services Resources:
%% https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html in the
%% Amazon Web Services General Reference
%%
%% Amazon Web Services Tagging Strategies:
%% http://aws.amazon.com/answers/account-management/aws-tagging-strategies/
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

%% @doc Removes a set of remote locations from this stream group.
%%
%% Amazon GameLift Streams works to release allocated compute resources in
%% these location. Thus, stream sessions can no longer start from these
%% locations by using this stream group. Amazon GameLift Streams also deletes
%% the content files of all associated applications that were in Amazon
%% GameLift Streams's internal S3 bucket at this location.
%%
%% You cannot remove the region where you initially created this stream
%% group, known as the primary location. However, you can set the stream
%% capacity to zero.
-spec remove_stream_group_locations(aws_client:aws_client(), binary() | list(), remove_stream_group_locations_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, remove_stream_group_locations_errors(), tuple()}.
remove_stream_group_locations(Client, Identifier, Input) ->
    remove_stream_group_locations(Client, Identifier, Input, []).

-spec remove_stream_group_locations(aws_client:aws_client(), binary() | list(), remove_stream_group_locations_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, remove_stream_group_locations_errors(), tuple()}.
remove_stream_group_locations(Client, Identifier, Input0, Options0) ->
    Method = delete,
    Path = ["/streamgroups/", aws_util:encode_uri(Identifier), "/locations"],
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
                     {<<"locations">>, <<"Locations">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc This action initiates a new stream session and outputs connection
%% information that clients can use to access the stream.
%%
%% A stream session refers to an instance of a stream that Amazon GameLift
%% Streams transmits from the server to the end-user. A stream session runs
%% on a compute resource that a stream group has allocated.
%%
%% To start a new stream session, specify a stream group and application ID,
%% along with the transport protocol and signal request settings to use with
%% the stream. You must have associated at least one application to the
%% stream group before starting a stream session, either when creating the
%% stream group, or by using AssociateApplications:
%% https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_AssociateApplications.html.
%%
%% For stream groups that have multiple locations, provide a set of locations
%% ordered by priority using a `Locations' parameter. Amazon GameLift
%% Streams will start a single stream session in the next available location.
%% An application must be finished replicating in a remote location before
%% the remote location can host a stream.
%%
%% If the request is successful, Amazon GameLift Streams begins to prepare
%% the stream. Amazon GameLift Streams assigns an Amazon Resource Name (ARN)
%% value to the stream session resource and sets the status to
%% `ACTIVATING'. During the stream preparation process, Amazon GameLift
%% Streams queues the request and searches for available stream capacity to
%% run the stream. This results in one of the following:
%%
%% Amazon GameLift Streams identifies an available compute resource to run
%% the application content and start the stream. When the stream is ready,
%% the stream session's status changes to `ACTIVE' and includes
%% stream connection information. Provide the connection information to the
%% requesting client to join the stream session.
%%
%% Amazon GameLift Streams doesn't identify an available resource within
%% a certain time, set by `ClientToken'. In this case, Amazon GameLift
%% Streams stops processing the request, and the stream session object status
%% changes to `ERROR' with status reason `placementTimeout'.
-spec start_stream_session(aws_client:aws_client(), binary() | list(), start_stream_session_input()) ->
    {ok, start_stream_session_output(), tuple()} |
    {error, any()} |
    {error, start_stream_session_errors(), tuple()}.
start_stream_session(Client, Identifier, Input) ->
    start_stream_session(Client, Identifier, Input, []).

-spec start_stream_session(aws_client:aws_client(), binary() | list(), start_stream_session_input(), proplists:proplist()) ->
    {ok, start_stream_session_output(), tuple()} |
    {error, any()} |
    {error, start_stream_session_errors(), tuple()}.
start_stream_session(Client, Identifier, Input0, Options0) ->
    Method = post,
    Path = ["/streamgroups/", aws_util:encode_uri(Identifier), "/streamsessions"],
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

%% @doc Assigns one or more tags to a Amazon GameLift Streams resource.
%%
%% Use tags to organize Amazon Web Services resources for a range of
%% purposes. You can assign tags to the following Amazon GameLift Streams
%% resource types:
%%
%% Application
%%
%% StreamGroup
%%
%% Learn more
%%
%% Tagging Amazon Web Services Resources:
%% https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html in the
%% Amazon Web Services General Reference
%%
%% Amazon Web Services Tagging Strategies:
%% http://aws.amazon.com/answers/account-management/aws-tagging-strategies/
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

%% @doc Permanently terminates an active stream session.
%%
%% When called, the stream session status changes to `TERMINATING'. You
%% can terminate a stream session in any status except `ACTIVATING'. If
%% the stream session is in `ACTIVATING' status, an exception is thrown.
-spec terminate_stream_session(aws_client:aws_client(), binary() | list(), binary() | list(), terminate_stream_session_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, terminate_stream_session_errors(), tuple()}.
terminate_stream_session(Client, Identifier, StreamSessionIdentifier, Input) ->
    terminate_stream_session(Client, Identifier, StreamSessionIdentifier, Input, []).

-spec terminate_stream_session(aws_client:aws_client(), binary() | list(), binary() | list(), terminate_stream_session_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, terminate_stream_session_errors(), tuple()}.
terminate_stream_session(Client, Identifier, StreamSessionIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/streamgroups/", aws_util:encode_uri(Identifier), "/streamsessions/", aws_util:encode_uri(StreamSessionIdentifier), ""],
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

%% @doc Removes one or more tags from a Amazon GameLift Streams resource.
%%
%% To remove tags, specify the Amazon GameLift Streams resource and a list of
%% one or more tags to remove.
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
                     {<<"tagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the mutable configuration settings for a Amazon GameLift
%% Streams application resource.
%%
%% You can change the `Description', `ApplicationLogOutputUri', and
%% `ApplicationLogPaths'.
%%
%% To update application settings, specify the application ID and provide the
%% new values. If the operation is successful, it returns the complete
%% updated set of settings for the application.
-spec update_application(aws_client:aws_client(), binary() | list(), update_application_input()) ->
    {ok, update_application_output(), tuple()} |
    {error, any()} |
    {error, update_application_errors(), tuple()}.
update_application(Client, Identifier, Input) ->
    update_application(Client, Identifier, Input, []).

-spec update_application(aws_client:aws_client(), binary() | list(), update_application_input(), proplists:proplist()) ->
    {ok, update_application_output(), tuple()} |
    {error, any()} |
    {error, update_application_errors(), tuple()}.
update_application(Client, Identifier, Input0, Options0) ->
    Method = patch,
    Path = ["/applications/", aws_util:encode_uri(Identifier), ""],
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

%% @doc Updates the configuration settings for an Amazon GameLift Streams
%% stream group resource.
%%
%% You can change the description, the set of locations, and the requested
%% capacity of a stream group per location. If you want to change the stream
%% class, create a new stream group.
%%
%% Stream capacity represents the number of concurrent streams that can be
%% active at a time. You set stream capacity per location, per stream group.
%% There are two types of capacity, always-on and on-demand:
%%
%% Always-on: The streaming capacity that is allocated and ready to handle
%% stream requests without delay. You pay for this capacity whether it's
%% in use or not. Best for quickest time from streaming request to streaming
%% session.
%%
%% On-demand: The streaming capacity that Amazon GameLift Streams can
%% allocate in response to stream requests, and then de-allocate when the
%% session has terminated. This offers a cost control measure at the expense
%% of a greater startup time (typically under 5 minutes).
%%
%% To update a stream group, specify the stream group's Amazon Resource
%% Name (ARN) and provide the new values. If the request is successful,
%% Amazon GameLift Streams returns the complete updated metadata for the
%% stream group.
-spec update_stream_group(aws_client:aws_client(), binary() | list(), update_stream_group_input()) ->
    {ok, update_stream_group_output(), tuple()} |
    {error, any()} |
    {error, update_stream_group_errors(), tuple()}.
update_stream_group(Client, Identifier, Input) ->
    update_stream_group(Client, Identifier, Input, []).

-spec update_stream_group(aws_client:aws_client(), binary() | list(), update_stream_group_input(), proplists:proplist()) ->
    {ok, update_stream_group_output(), tuple()} |
    {error, any()} |
    {error, update_stream_group_errors(), tuple()}.
update_stream_group(Client, Identifier, Input0, Options0) ->
    Method = patch,
    Path = ["/streamgroups/", aws_util:encode_uri(Identifier), ""],
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
    Client1 = Client#{service => <<"gameliftstreams">>},
    Host = build_host(<<"gameliftstreams">>, Client1),
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
