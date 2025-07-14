%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS CodeConnections
%%
%% This Amazon Web Services CodeConnections API Reference provides
%% descriptions and usage examples of
%% the operations and data types for the Amazon Web Services CodeConnections
%% API.
%%
%% You can use the
%% connections API to work with connections and installations.
%%
%% Connections are configurations that you use to connect Amazon Web Services
%% resources to external code repositories. Each connection is a resource
%% that can be given to
%% services such as CodePipeline to connect to a third-party repository such
%% as Bitbucket. For
%% example, you can add the connection in CodePipeline so that it triggers
%% your pipeline when a
%% code change is made to your third-party code repository. Each connection
%% is named and
%% associated with a unique ARN that is used to reference the connection.
%%
%% When you create a connection, the console initiates a third-party
%% connection handshake.
%% Installations are the apps that are used to conduct this handshake. For
%% example, the installation for the Bitbucket provider type is the Bitbucket
%% app. When you
%% create a connection, you can choose an existing installation or create
%% one.
%%
%% When you want to create a connection to an installed provider type such as
%% GitHub
%% Enterprise Server, you create a host for your connections.
%%
%% You can work with connections by calling:
%%
%% `CreateConnection', which creates a uniquely named connection that can
%% be
%% referenced by services such as CodePipeline.
%%
%% `DeleteConnection', which deletes the specified connection.
%%
%% `GetConnection', which returns information about the connection,
%% including
%% the connection status.
%%
%% `ListConnections', which lists the connections associated with your
%% account.
%%
%% You can work with hosts by calling:
%%
%% `CreateHost', which creates a host that represents the infrastructure
%% where your provider is installed.
%%
%% `DeleteHost', which deletes the specified host.
%%
%% `GetHost', which returns information about the host, including
%% the setup status.
%%
%% `ListHosts', which lists the hosts associated with your
%% account.
%%
%% You can work with tags in Amazon Web Services CodeConnections by calling
%% the following:
%%
%% `ListTagsForResource', which gets information about Amazon Web
%% Services tags for a
%% specified Amazon Resource Name (ARN) in Amazon Web Services
%% CodeConnections.
%%
%% `TagResource', which adds or updates tags for a resource in Amazon Web
%% Services CodeConnections.
%%
%% `UntagResource', which removes tags for a resource in Amazon Web
%% Services
%% CodeConnections.
%%
%% For information about how to use Amazon Web Services CodeConnections, see
%% the Developer
%% Tools User Guide:
%% https://docs.aws.amazon.com/dtconsole/latest/userguide/welcome-connections.html.
-module(aws_codeconnections).

-export([create_connection/2,
         create_connection/3,
         create_host/2,
         create_host/3,
         create_repository_link/2,
         create_repository_link/3,
         create_sync_configuration/2,
         create_sync_configuration/3,
         delete_connection/2,
         delete_connection/3,
         delete_host/2,
         delete_host/3,
         delete_repository_link/2,
         delete_repository_link/3,
         delete_sync_configuration/2,
         delete_sync_configuration/3,
         get_connection/2,
         get_connection/3,
         get_host/2,
         get_host/3,
         get_repository_link/2,
         get_repository_link/3,
         get_repository_sync_status/2,
         get_repository_sync_status/3,
         get_resource_sync_status/2,
         get_resource_sync_status/3,
         get_sync_blocker_summary/2,
         get_sync_blocker_summary/3,
         get_sync_configuration/2,
         get_sync_configuration/3,
         list_connections/2,
         list_connections/3,
         list_hosts/2,
         list_hosts/3,
         list_repository_links/2,
         list_repository_links/3,
         list_repository_sync_definitions/2,
         list_repository_sync_definitions/3,
         list_sync_configurations/2,
         list_sync_configurations/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_host/2,
         update_host/3,
         update_repository_link/2,
         update_repository_link/3,
         update_sync_blocker/2,
         update_sync_blocker/3,
         update_sync_configuration/2,
         update_sync_configuration/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% get_repository_link_input() :: #{
%%   <<"RepositoryLinkId">> := string()
%% }
-type get_repository_link_input() :: #{binary() => any()}.

%% Example:
%% create_sync_configuration_output() :: #{
%%   <<"SyncConfiguration">> => sync_configuration()
%% }
-type create_sync_configuration_output() :: #{binary() => any()}.

%% Example:
%% repository_sync_attempt() :: #{
%%   <<"Events">> => list(repository_sync_event()),
%%   <<"StartedAt">> => non_neg_integer(),
%%   <<"Status">> => list(any())
%% }
-type repository_sync_attempt() :: #{binary() => any()}.

%% Example:
%% delete_connection_input() :: #{
%%   <<"ConnectionArn">> := string()
%% }
-type delete_connection_input() :: #{binary() => any()}.

%% Example:
%% unsupported_operation_exception() :: #{
%%   <<"Message">> => string()
%% }
-type unsupported_operation_exception() :: #{binary() => any()}.

%% Example:
%% vpc_configuration() :: #{
%%   <<"SecurityGroupIds">> => list(string()),
%%   <<"SubnetIds">> => list(string()),
%%   <<"TlsCertificate">> => string(),
%%   <<"VpcId">> => string()
%% }
-type vpc_configuration() :: #{binary() => any()}.

%% Example:
%% create_repository_link_input() :: #{
%%   <<"ConnectionArn">> := string(),
%%   <<"EncryptionKeyArn">> => string(),
%%   <<"OwnerId">> := string(),
%%   <<"RepositoryName">> := string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_repository_link_input() :: #{binary() => any()}.

%% Example:
%% list_sync_configurations_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"SyncConfigurations">> => list(sync_configuration())
%% }
-type list_sync_configurations_output() :: #{binary() => any()}.

%% Example:
%% delete_repository_link_output() :: #{

%% }
-type delete_repository_link_output() :: #{binary() => any()}.

%% Example:
%% sync_blocker_context() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type sync_blocker_context() :: #{binary() => any()}.

%% Example:
%% resource_unavailable_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_unavailable_exception() :: #{binary() => any()}.

%% Example:
%% get_resource_sync_status_input() :: #{
%%   <<"ResourceName">> := string(),
%%   <<"SyncType">> := list(any())
%% }
-type get_resource_sync_status_input() :: #{binary() => any()}.

%% Example:
%% update_sync_blocker_input() :: #{
%%   <<"Id">> := string(),
%%   <<"ResolvedReason">> := string(),
%%   <<"ResourceName">> := string(),
%%   <<"SyncType">> := list(any())
%% }
-type update_sync_blocker_input() :: #{binary() => any()}.

%% Example:
%% sync_blocker_summary() :: #{
%%   <<"LatestBlockers">> => list(sync_blocker()),
%%   <<"ParentResourceName">> => string(),
%%   <<"ResourceName">> => string()
%% }
-type sync_blocker_summary() :: #{binary() => any()}.

%% Example:
%% list_connections_output() :: #{
%%   <<"Connections">> => list(connection()),
%%   <<"NextToken">> => string()
%% }
-type list_connections_output() :: #{binary() => any()}.

%% Example:
%% create_repository_link_output() :: #{
%%   <<"RepositoryLinkInfo">> => repository_link_info()
%% }
-type create_repository_link_output() :: #{binary() => any()}.

%% Example:
%% create_connection_output() :: #{
%%   <<"ConnectionArn">> => string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_connection_output() :: #{binary() => any()}.

%% Example:
%% get_resource_sync_status_output() :: #{
%%   <<"DesiredState">> => revision(),
%%   <<"LatestSuccessfulSync">> => resource_sync_attempt(),
%%   <<"LatestSync">> => resource_sync_attempt()
%% }
-type get_resource_sync_status_output() :: #{binary() => any()}.

%% Example:
%% sync_configuration_still_exists_exception() :: #{
%%   <<"Message">> => string()
%% }
-type sync_configuration_still_exists_exception() :: #{binary() => any()}.

%% Example:
%% retry_latest_commit_failed_exception() :: #{
%%   <<"Message">> => string()
%% }
-type retry_latest_commit_failed_exception() :: #{binary() => any()}.

%% Example:
%% create_host_output() :: #{
%%   <<"HostArn">> => string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_host_output() :: #{binary() => any()}.

%% Example:
%% update_sync_configuration_input() :: #{
%%   <<"Branch">> => string(),
%%   <<"ConfigFile">> => string(),
%%   <<"PublishDeploymentStatus">> => list(any()),
%%   <<"PullRequestComment">> => list(any()),
%%   <<"RepositoryLinkId">> => string(),
%%   <<"ResourceName">> := string(),
%%   <<"RoleArn">> => string(),
%%   <<"SyncType">> := list(any()),
%%   <<"TriggerResourceUpdateOn">> => list(any())
%% }
-type update_sync_configuration_input() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_output() :: #{
%%   <<"Tags">> => list(tag())
%% }
-type list_tags_for_resource_output() :: #{binary() => any()}.

%% Example:
%% repository_sync_definition() :: #{
%%   <<"Branch">> => string(),
%%   <<"Directory">> => string(),
%%   <<"Parent">> => string(),
%%   <<"Target">> => string()
%% }
-type repository_sync_definition() :: #{binary() => any()}.

%% Example:
%% delete_sync_configuration_input() :: #{
%%   <<"ResourceName">> := string(),
%%   <<"SyncType">> := list(any())
%% }
-type delete_sync_configuration_input() :: #{binary() => any()}.

%% Example:
%% list_repository_links_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"RepositoryLinks">> => list(repository_link_info())
%% }
-type list_repository_links_output() :: #{binary() => any()}.

%% Example:
%% update_repository_link_output() :: #{
%%   <<"RepositoryLinkInfo">> => repository_link_info()
%% }
-type update_repository_link_output() :: #{binary() => any()}.

%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% update_sync_blocker_output() :: #{
%%   <<"ParentResourceName">> => string(),
%%   <<"ResourceName">> => string(),
%%   <<"SyncBlocker">> => sync_blocker()
%% }
-type update_sync_blocker_output() :: #{binary() => any()}.

%% Example:
%% get_sync_configuration_output() :: #{
%%   <<"SyncConfiguration">> => sync_configuration()
%% }
-type get_sync_configuration_output() :: #{binary() => any()}.

%% Example:
%% unsupported_provider_type_exception() :: #{
%%   <<"Message">> => string()
%% }
-type unsupported_provider_type_exception() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% update_host_input() :: #{
%%   <<"HostArn">> := string(),
%%   <<"ProviderEndpoint">> => string(),
%%   <<"VpcConfiguration">> => vpc_configuration()
%% }
-type update_host_input() :: #{binary() => any()}.

%% Example:
%% get_connection_input() :: #{
%%   <<"ConnectionArn">> := string()
%% }
-type get_connection_input() :: #{binary() => any()}.

%% Example:
%% get_connection_output() :: #{
%%   <<"Connection">> => connection()
%% }
-type get_connection_output() :: #{binary() => any()}.

%% Example:
%% connection() :: #{
%%   <<"ConnectionArn">> => string(),
%%   <<"ConnectionName">> => string(),
%%   <<"ConnectionStatus">> => list(any()),
%%   <<"HostArn">> => string(),
%%   <<"OwnerAccountId">> => string(),
%%   <<"ProviderType">> => list(any())
%% }
-type connection() :: #{binary() => any()}.

%% Example:
%% update_sync_configuration_output() :: #{
%%   <<"SyncConfiguration">> => sync_configuration()
%% }
-type update_sync_configuration_output() :: #{binary() => any()}.

%% Example:
%% list_sync_configurations_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"RepositoryLinkId">> := string(),
%%   <<"SyncType">> := list(any())
%% }
-type list_sync_configurations_input() :: #{binary() => any()}.

%% Example:
%% get_repository_sync_status_output() :: #{
%%   <<"LatestSync">> => repository_sync_attempt()
%% }
-type get_repository_sync_status_output() :: #{binary() => any()}.

%% Example:
%% invalid_input_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_input_exception() :: #{binary() => any()}.

%% Example:
%% sync_blocker() :: #{
%%   <<"Contexts">> => list(sync_blocker_context()),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"CreatedReason">> => string(),
%%   <<"Id">> => string(),
%%   <<"ResolvedAt">> => non_neg_integer(),
%%   <<"ResolvedReason">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Type">> => list(any())
%% }
-type sync_blocker() :: #{binary() => any()}.

%% Example:
%% update_repository_link_input() :: #{
%%   <<"ConnectionArn">> => string(),
%%   <<"EncryptionKeyArn">> => string(),
%%   <<"RepositoryLinkId">> := string()
%% }
-type update_repository_link_input() :: #{binary() => any()}.

%% Example:
%% get_sync_blocker_summary_output() :: #{
%%   <<"SyncBlockerSummary">> => sync_blocker_summary()
%% }
-type get_sync_blocker_summary_output() :: #{binary() => any()}.

%% Example:
%% tag_resource_input() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"Tags">> := list(tag())
%% }
-type tag_resource_input() :: #{binary() => any()}.

%% Example:
%% list_repository_sync_definitions_input() :: #{
%%   <<"RepositoryLinkId">> := string(),
%%   <<"SyncType">> := list(any())
%% }
-type list_repository_sync_definitions_input() :: #{binary() => any()}.

%% Example:
%% host() :: #{
%%   <<"HostArn">> => string(),
%%   <<"Name">> => string(),
%%   <<"ProviderEndpoint">> => string(),
%%   <<"ProviderType">> => list(any()),
%%   <<"Status">> => string(),
%%   <<"StatusMessage">> => string(),
%%   <<"VpcConfiguration">> => vpc_configuration()
%% }
-type host() :: #{binary() => any()}.

%% Example:
%% list_hosts_output() :: #{
%%   <<"Hosts">> => list(host()),
%%   <<"NextToken">> => string()
%% }
-type list_hosts_output() :: #{binary() => any()}.

%% Example:
%% tag_resource_output() :: #{

%% }
-type tag_resource_output() :: #{binary() => any()}.

%% Example:
%% conditional_check_failed_exception() :: #{
%%   <<"Message">> => string()
%% }
-type conditional_check_failed_exception() :: #{binary() => any()}.

%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% sync_configuration() :: #{
%%   <<"Branch">> => string(),
%%   <<"ConfigFile">> => string(),
%%   <<"OwnerId">> => string(),
%%   <<"ProviderType">> => list(any()),
%%   <<"PublishDeploymentStatus">> => list(any()),
%%   <<"PullRequestComment">> => list(any()),
%%   <<"RepositoryLinkId">> => string(),
%%   <<"RepositoryName">> => string(),
%%   <<"ResourceName">> => string(),
%%   <<"RoleArn">> => string(),
%%   <<"SyncType">> => list(any()),
%%   <<"TriggerResourceUpdateOn">> => list(any())
%% }
-type sync_configuration() :: #{binary() => any()}.

%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% untag_resource_input() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_input() :: #{binary() => any()}.

%% Example:
%% delete_host_input() :: #{
%%   <<"HostArn">> := string()
%% }
-type delete_host_input() :: #{binary() => any()}.

%% Example:
%% get_sync_configuration_input() :: #{
%%   <<"ResourceName">> := string(),
%%   <<"SyncType">> := list(any())
%% }
-type get_sync_configuration_input() :: #{binary() => any()}.

%% Example:
%% delete_connection_output() :: #{

%% }
-type delete_connection_output() :: #{binary() => any()}.

%% Example:
%% concurrent_modification_exception() :: #{
%%   <<"Message">> => string()
%% }
-type concurrent_modification_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_input() :: #{
%%   <<"ResourceArn">> := string()
%% }
-type list_tags_for_resource_input() :: #{binary() => any()}.

%% Example:
%% resource_sync_attempt() :: #{
%%   <<"Events">> => list(resource_sync_event()),
%%   <<"InitialRevision">> => revision(),
%%   <<"StartedAt">> => non_neg_integer(),
%%   <<"Status">> => list(any()),
%%   <<"Target">> => string(),
%%   <<"TargetRevision">> => revision()
%% }
-type resource_sync_attempt() :: #{binary() => any()}.

%% Example:
%% untag_resource_output() :: #{

%% }
-type untag_resource_output() :: #{binary() => any()}.

%% Example:
%% delete_host_output() :: #{

%% }
-type delete_host_output() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% get_repository_sync_status_input() :: #{
%%   <<"Branch">> := string(),
%%   <<"RepositoryLinkId">> := string(),
%%   <<"SyncType">> := list(any())
%% }
-type get_repository_sync_status_input() :: #{binary() => any()}.

%% Example:
%% list_repository_links_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_repository_links_input() :: #{binary() => any()}.

%% Example:
%% create_host_input() :: #{
%%   <<"Name">> := string(),
%%   <<"ProviderEndpoint">> := string(),
%%   <<"ProviderType">> := list(any()),
%%   <<"Tags">> => list(tag()),
%%   <<"VpcConfiguration">> => vpc_configuration()
%% }
-type create_host_input() :: #{binary() => any()}.

%% Example:
%% list_repository_sync_definitions_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"RepositorySyncDefinitions">> => list(repository_sync_definition())
%% }
-type list_repository_sync_definitions_output() :: #{binary() => any()}.

%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% list_connections_input() :: #{
%%   <<"HostArnFilter">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ProviderTypeFilter">> => list(any())
%% }
-type list_connections_input() :: #{binary() => any()}.

%% Example:
%% create_sync_configuration_input() :: #{
%%   <<"Branch">> := string(),
%%   <<"ConfigFile">> := string(),
%%   <<"PublishDeploymentStatus">> => list(any()),
%%   <<"PullRequestComment">> => list(any()),
%%   <<"RepositoryLinkId">> := string(),
%%   <<"ResourceName">> := string(),
%%   <<"RoleArn">> := string(),
%%   <<"SyncType">> := list(any()),
%%   <<"TriggerResourceUpdateOn">> => list(any())
%% }
-type create_sync_configuration_input() :: #{binary() => any()}.

%% Example:
%% delete_repository_link_input() :: #{
%%   <<"RepositoryLinkId">> := string()
%% }
-type delete_repository_link_input() :: #{binary() => any()}.

%% Example:
%% update_host_output() :: #{

%% }
-type update_host_output() :: #{binary() => any()}.

%% Example:
%% get_repository_link_output() :: #{
%%   <<"RepositoryLinkInfo">> => repository_link_info()
%% }
-type get_repository_link_output() :: #{binary() => any()}.

%% Example:
%% get_sync_blocker_summary_input() :: #{
%%   <<"ResourceName">> := string(),
%%   <<"SyncType">> := list(any())
%% }
-type get_sync_blocker_summary_input() :: #{binary() => any()}.

%% Example:
%% resource_already_exists_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_already_exists_exception() :: #{binary() => any()}.

%% Example:
%% create_connection_input() :: #{
%%   <<"ConnectionName">> := string(),
%%   <<"HostArn">> => string(),
%%   <<"ProviderType">> => list(any()),
%%   <<"Tags">> => list(tag())
%% }
-type create_connection_input() :: #{binary() => any()}.

%% Example:
%% sync_blocker_does_not_exist_exception() :: #{
%%   <<"Message">> => string()
%% }
-type sync_blocker_does_not_exist_exception() :: #{binary() => any()}.

%% Example:
%% delete_sync_configuration_output() :: #{

%% }
-type delete_sync_configuration_output() :: #{binary() => any()}.

%% Example:
%% repository_link_info() :: #{
%%   <<"ConnectionArn">> => string(),
%%   <<"EncryptionKeyArn">> => string(),
%%   <<"OwnerId">> => string(),
%%   <<"ProviderType">> => list(any()),
%%   <<"RepositoryLinkArn">> => string(),
%%   <<"RepositoryLinkId">> => string(),
%%   <<"RepositoryName">> => string()
%% }
-type repository_link_info() :: #{binary() => any()}.

%% Example:
%% resource_sync_event() :: #{
%%   <<"Event">> => string(),
%%   <<"ExternalId">> => string(),
%%   <<"Time">> => non_neg_integer(),
%%   <<"Type">> => string()
%% }
-type resource_sync_event() :: #{binary() => any()}.

%% Example:
%% repository_sync_event() :: #{
%%   <<"Event">> => string(),
%%   <<"ExternalId">> => string(),
%%   <<"Time">> => non_neg_integer(),
%%   <<"Type">> => string()
%% }
-type repository_sync_event() :: #{binary() => any()}.

%% Example:
%% revision() :: #{
%%   <<"Branch">> => string(),
%%   <<"Directory">> => string(),
%%   <<"OwnerId">> => string(),
%%   <<"ProviderType">> => list(any()),
%%   <<"RepositoryName">> => string(),
%%   <<"Sha">> => string()
%% }
-type revision() :: #{binary() => any()}.

%% Example:
%% update_out_of_sync_exception() :: #{
%%   <<"Message">> => string()
%% }
-type update_out_of_sync_exception() :: #{binary() => any()}.

%% Example:
%% get_host_output() :: #{
%%   <<"Name">> => string(),
%%   <<"ProviderEndpoint">> => string(),
%%   <<"ProviderType">> => list(any()),
%%   <<"Status">> => string(),
%%   <<"VpcConfiguration">> => vpc_configuration()
%% }
-type get_host_output() :: #{binary() => any()}.

%% Example:
%% list_hosts_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_hosts_input() :: #{binary() => any()}.

%% Example:
%% get_host_input() :: #{
%%   <<"HostArn">> := string()
%% }
-type get_host_input() :: #{binary() => any()}.

-type create_connection_errors() ::
    limit_exceeded_exception() | 
    resource_not_found_exception() | 
    resource_unavailable_exception().

-type create_host_errors() ::
    limit_exceeded_exception().

-type create_repository_link_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    concurrent_modification_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    invalid_input_exception().

-type create_sync_configuration_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    concurrent_modification_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    invalid_input_exception().

-type delete_connection_errors() ::
    resource_not_found_exception().

-type delete_host_errors() ::
    resource_not_found_exception() | 
    resource_unavailable_exception().

-type delete_repository_link_errors() ::
    throttling_exception() | 
    concurrent_modification_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    invalid_input_exception() | 
    unsupported_provider_type_exception() | 
    resource_not_found_exception() | 
    sync_configuration_still_exists_exception().

-type delete_sync_configuration_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    concurrent_modification_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    invalid_input_exception().

-type get_connection_errors() ::
    resource_not_found_exception() | 
    resource_unavailable_exception().

-type get_host_errors() ::
    resource_not_found_exception() | 
    resource_unavailable_exception().

-type get_repository_link_errors() ::
    throttling_exception() | 
    concurrent_modification_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception().

-type get_repository_sync_status_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception().

-type get_resource_sync_status_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception().

-type get_sync_blocker_summary_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception().

-type get_sync_configuration_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception().

-type list_connections_errors() ::
    resource_not_found_exception().

-type list_repository_links_errors() ::
    throttling_exception() | 
    concurrent_modification_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception().

-type list_repository_sync_definitions_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception().

-type list_sync_configurations_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception().

-type list_tags_for_resource_errors() ::
    resource_not_found_exception().

-type tag_resource_errors() ::
    limit_exceeded_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    resource_not_found_exception().

-type update_host_errors() ::
    resource_not_found_exception() | 
    conflict_exception() | 
    resource_unavailable_exception() | 
    unsupported_operation_exception().

-type update_repository_link_errors() ::
    update_out_of_sync_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conditional_check_failed_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception().

-type update_sync_blocker_errors() ::
    sync_blocker_does_not_exist_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    retry_latest_commit_failed_exception().

-type update_sync_configuration_errors() ::
    update_out_of_sync_exception() | 
    throttling_exception() | 
    concurrent_modification_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a connection that can then be given to other Amazon Web
%% Services services like CodePipeline so
%% that it can access third-party code repositories.
%%
%% The connection is in pending status until
%% the third-party connection handshake is completed from the console.
-spec create_connection(aws_client:aws_client(), create_connection_input()) ->
    {ok, create_connection_output(), tuple()} |
    {error, any()} |
    {error, create_connection_errors(), tuple()}.
create_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_connection(Client, Input, []).

-spec create_connection(aws_client:aws_client(), create_connection_input(), proplists:proplist()) ->
    {ok, create_connection_output(), tuple()} |
    {error, any()} |
    {error, create_connection_errors(), tuple()}.
create_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateConnection">>, Input, Options).

%% @doc Creates a resource that represents the infrastructure where a
%% third-party provider is
%% installed.
%%
%% The host is used when you create connections to an installed third-party
%% provider
%% type, such as GitHub Enterprise Server. You create one host for all
%% connections to that
%% provider.
%%
%% A host created through the CLI or the SDK is in `PENDING' status by
%% default. You can make its status `AVAILABLE' by setting up the host in the
%% console.
-spec create_host(aws_client:aws_client(), create_host_input()) ->
    {ok, create_host_output(), tuple()} |
    {error, any()} |
    {error, create_host_errors(), tuple()}.
create_host(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_host(Client, Input, []).

-spec create_host(aws_client:aws_client(), create_host_input(), proplists:proplist()) ->
    {ok, create_host_output(), tuple()} |
    {error, any()} |
    {error, create_host_errors(), tuple()}.
create_host(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateHost">>, Input, Options).

%% @doc Creates a link to a specified external Git repository.
%%
%% A repository link allows Git sync to monitor and sync changes to files in
%% a specified Git repository.
-spec create_repository_link(aws_client:aws_client(), create_repository_link_input()) ->
    {ok, create_repository_link_output(), tuple()} |
    {error, any()} |
    {error, create_repository_link_errors(), tuple()}.
create_repository_link(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_repository_link(Client, Input, []).

-spec create_repository_link(aws_client:aws_client(), create_repository_link_input(), proplists:proplist()) ->
    {ok, create_repository_link_output(), tuple()} |
    {error, any()} |
    {error, create_repository_link_errors(), tuple()}.
create_repository_link(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateRepositoryLink">>, Input, Options).

%% @doc Creates a sync configuration which allows Amazon Web Services to sync
%% content from a Git
%% repository to update a specified Amazon Web Services resource.
%%
%% Parameters for the sync
%% configuration are determined by the sync type.
-spec create_sync_configuration(aws_client:aws_client(), create_sync_configuration_input()) ->
    {ok, create_sync_configuration_output(), tuple()} |
    {error, any()} |
    {error, create_sync_configuration_errors(), tuple()}.
create_sync_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_sync_configuration(Client, Input, []).

-spec create_sync_configuration(aws_client:aws_client(), create_sync_configuration_input(), proplists:proplist()) ->
    {ok, create_sync_configuration_output(), tuple()} |
    {error, any()} |
    {error, create_sync_configuration_errors(), tuple()}.
create_sync_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSyncConfiguration">>, Input, Options).

%% @doc The connection to be deleted.
-spec delete_connection(aws_client:aws_client(), delete_connection_input()) ->
    {ok, delete_connection_output(), tuple()} |
    {error, any()} |
    {error, delete_connection_errors(), tuple()}.
delete_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_connection(Client, Input, []).

-spec delete_connection(aws_client:aws_client(), delete_connection_input(), proplists:proplist()) ->
    {ok, delete_connection_output(), tuple()} |
    {error, any()} |
    {error, delete_connection_errors(), tuple()}.
delete_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteConnection">>, Input, Options).

%% @doc The host to be deleted.
%%
%% Before you delete a host, all connections associated to the host must be
%% deleted.
%%
%% A host cannot be deleted if it is in the VPC_CONFIG_INITIALIZING or
%% VPC_CONFIG_DELETING state.
-spec delete_host(aws_client:aws_client(), delete_host_input()) ->
    {ok, delete_host_output(), tuple()} |
    {error, any()} |
    {error, delete_host_errors(), tuple()}.
delete_host(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_host(Client, Input, []).

-spec delete_host(aws_client:aws_client(), delete_host_input(), proplists:proplist()) ->
    {ok, delete_host_output(), tuple()} |
    {error, any()} |
    {error, delete_host_errors(), tuple()}.
delete_host(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteHost">>, Input, Options).

%% @doc Deletes the association between your connection and a specified
%% external Git repository.
-spec delete_repository_link(aws_client:aws_client(), delete_repository_link_input()) ->
    {ok, delete_repository_link_output(), tuple()} |
    {error, any()} |
    {error, delete_repository_link_errors(), tuple()}.
delete_repository_link(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_repository_link(Client, Input, []).

-spec delete_repository_link(aws_client:aws_client(), delete_repository_link_input(), proplists:proplist()) ->
    {ok, delete_repository_link_output(), tuple()} |
    {error, any()} |
    {error, delete_repository_link_errors(), tuple()}.
delete_repository_link(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRepositoryLink">>, Input, Options).

%% @doc Deletes the sync configuration for a specified repository and
%% connection.
-spec delete_sync_configuration(aws_client:aws_client(), delete_sync_configuration_input()) ->
    {ok, delete_sync_configuration_output(), tuple()} |
    {error, any()} |
    {error, delete_sync_configuration_errors(), tuple()}.
delete_sync_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_sync_configuration(Client, Input, []).

-spec delete_sync_configuration(aws_client:aws_client(), delete_sync_configuration_input(), proplists:proplist()) ->
    {ok, delete_sync_configuration_output(), tuple()} |
    {error, any()} |
    {error, delete_sync_configuration_errors(), tuple()}.
delete_sync_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSyncConfiguration">>, Input, Options).

%% @doc Returns the connection ARN and details such as status, owner, and
%% provider type.
-spec get_connection(aws_client:aws_client(), get_connection_input()) ->
    {ok, get_connection_output(), tuple()} |
    {error, any()} |
    {error, get_connection_errors(), tuple()}.
get_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_connection(Client, Input, []).

-spec get_connection(aws_client:aws_client(), get_connection_input(), proplists:proplist()) ->
    {ok, get_connection_output(), tuple()} |
    {error, any()} |
    {error, get_connection_errors(), tuple()}.
get_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetConnection">>, Input, Options).

%% @doc Returns the host ARN and details such as status, provider type,
%% endpoint, and, if
%% applicable, the VPC configuration.
-spec get_host(aws_client:aws_client(), get_host_input()) ->
    {ok, get_host_output(), tuple()} |
    {error, any()} |
    {error, get_host_errors(), tuple()}.
get_host(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_host(Client, Input, []).

-spec get_host(aws_client:aws_client(), get_host_input(), proplists:proplist()) ->
    {ok, get_host_output(), tuple()} |
    {error, any()} |
    {error, get_host_errors(), tuple()}.
get_host(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetHost">>, Input, Options).

%% @doc Returns details about a repository link.
%%
%% A repository link allows Git sync to monitor
%% and sync changes from files in a specified Git repository.
-spec get_repository_link(aws_client:aws_client(), get_repository_link_input()) ->
    {ok, get_repository_link_output(), tuple()} |
    {error, any()} |
    {error, get_repository_link_errors(), tuple()}.
get_repository_link(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_repository_link(Client, Input, []).

-spec get_repository_link(aws_client:aws_client(), get_repository_link_input(), proplists:proplist()) ->
    {ok, get_repository_link_output(), tuple()} |
    {error, any()} |
    {error, get_repository_link_errors(), tuple()}.
get_repository_link(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRepositoryLink">>, Input, Options).

%% @doc Returns details about the sync status for a repository.
%%
%% A repository sync uses Git sync
%% to push and pull changes from your remote repository.
-spec get_repository_sync_status(aws_client:aws_client(), get_repository_sync_status_input()) ->
    {ok, get_repository_sync_status_output(), tuple()} |
    {error, any()} |
    {error, get_repository_sync_status_errors(), tuple()}.
get_repository_sync_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_repository_sync_status(Client, Input, []).

-spec get_repository_sync_status(aws_client:aws_client(), get_repository_sync_status_input(), proplists:proplist()) ->
    {ok, get_repository_sync_status_output(), tuple()} |
    {error, any()} |
    {error, get_repository_sync_status_errors(), tuple()}.
get_repository_sync_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRepositorySyncStatus">>, Input, Options).

%% @doc Returns the status of the sync with the Git repository for a specific
%% Amazon Web Services
%% resource.
-spec get_resource_sync_status(aws_client:aws_client(), get_resource_sync_status_input()) ->
    {ok, get_resource_sync_status_output(), tuple()} |
    {error, any()} |
    {error, get_resource_sync_status_errors(), tuple()}.
get_resource_sync_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_resource_sync_status(Client, Input, []).

-spec get_resource_sync_status(aws_client:aws_client(), get_resource_sync_status_input(), proplists:proplist()) ->
    {ok, get_resource_sync_status_output(), tuple()} |
    {error, any()} |
    {error, get_resource_sync_status_errors(), tuple()}.
get_resource_sync_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetResourceSyncStatus">>, Input, Options).

%% @doc Returns a list of the most recent sync blockers.
-spec get_sync_blocker_summary(aws_client:aws_client(), get_sync_blocker_summary_input()) ->
    {ok, get_sync_blocker_summary_output(), tuple()} |
    {error, any()} |
    {error, get_sync_blocker_summary_errors(), tuple()}.
get_sync_blocker_summary(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_sync_blocker_summary(Client, Input, []).

-spec get_sync_blocker_summary(aws_client:aws_client(), get_sync_blocker_summary_input(), proplists:proplist()) ->
    {ok, get_sync_blocker_summary_output(), tuple()} |
    {error, any()} |
    {error, get_sync_blocker_summary_errors(), tuple()}.
get_sync_blocker_summary(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSyncBlockerSummary">>, Input, Options).

%% @doc Returns details about a sync configuration, including the sync type
%% and resource name.
%%
%% A sync configuration allows the configuration to sync (push and pull)
%% changes from the remote repository for a specified branch in a Git
%% repository.
-spec get_sync_configuration(aws_client:aws_client(), get_sync_configuration_input()) ->
    {ok, get_sync_configuration_output(), tuple()} |
    {error, any()} |
    {error, get_sync_configuration_errors(), tuple()}.
get_sync_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_sync_configuration(Client, Input, []).

-spec get_sync_configuration(aws_client:aws_client(), get_sync_configuration_input(), proplists:proplist()) ->
    {ok, get_sync_configuration_output(), tuple()} |
    {error, any()} |
    {error, get_sync_configuration_errors(), tuple()}.
get_sync_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSyncConfiguration">>, Input, Options).

%% @doc Lists the connections associated with your account.
-spec list_connections(aws_client:aws_client(), list_connections_input()) ->
    {ok, list_connections_output(), tuple()} |
    {error, any()} |
    {error, list_connections_errors(), tuple()}.
list_connections(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_connections(Client, Input, []).

-spec list_connections(aws_client:aws_client(), list_connections_input(), proplists:proplist()) ->
    {ok, list_connections_output(), tuple()} |
    {error, any()} |
    {error, list_connections_errors(), tuple()}.
list_connections(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListConnections">>, Input, Options).

%% @doc Lists the hosts associated with your account.
-spec list_hosts(aws_client:aws_client(), list_hosts_input()) ->
    {ok, list_hosts_output(), tuple()} |
    {error, any()}.
list_hosts(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_hosts(Client, Input, []).

-spec list_hosts(aws_client:aws_client(), list_hosts_input(), proplists:proplist()) ->
    {ok, list_hosts_output(), tuple()} |
    {error, any()}.
list_hosts(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListHosts">>, Input, Options).

%% @doc Lists the repository links created for connections in your account.
-spec list_repository_links(aws_client:aws_client(), list_repository_links_input()) ->
    {ok, list_repository_links_output(), tuple()} |
    {error, any()} |
    {error, list_repository_links_errors(), tuple()}.
list_repository_links(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_repository_links(Client, Input, []).

-spec list_repository_links(aws_client:aws_client(), list_repository_links_input(), proplists:proplist()) ->
    {ok, list_repository_links_output(), tuple()} |
    {error, any()} |
    {error, list_repository_links_errors(), tuple()}.
list_repository_links(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRepositoryLinks">>, Input, Options).

%% @doc Lists the repository sync definitions for repository links in your
%% account.
-spec list_repository_sync_definitions(aws_client:aws_client(), list_repository_sync_definitions_input()) ->
    {ok, list_repository_sync_definitions_output(), tuple()} |
    {error, any()} |
    {error, list_repository_sync_definitions_errors(), tuple()}.
list_repository_sync_definitions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_repository_sync_definitions(Client, Input, []).

-spec list_repository_sync_definitions(aws_client:aws_client(), list_repository_sync_definitions_input(), proplists:proplist()) ->
    {ok, list_repository_sync_definitions_output(), tuple()} |
    {error, any()} |
    {error, list_repository_sync_definitions_errors(), tuple()}.
list_repository_sync_definitions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRepositorySyncDefinitions">>, Input, Options).

%% @doc Returns a list of sync configurations for a specified repository.
-spec list_sync_configurations(aws_client:aws_client(), list_sync_configurations_input()) ->
    {ok, list_sync_configurations_output(), tuple()} |
    {error, any()} |
    {error, list_sync_configurations_errors(), tuple()}.
list_sync_configurations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_sync_configurations(Client, Input, []).

-spec list_sync_configurations(aws_client:aws_client(), list_sync_configurations_input(), proplists:proplist()) ->
    {ok, list_sync_configurations_output(), tuple()} |
    {error, any()} |
    {error, list_sync_configurations_errors(), tuple()}.
list_sync_configurations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSyncConfigurations">>, Input, Options).

%% @doc Gets the set of key-value pairs (metadata) that are used to manage
%% the resource.
-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_input()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).

-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_input(), proplists:proplist()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Adds to or modifies the tags of the given resource.
%%
%% Tags are metadata that can be used
%% to manage a resource.
-spec tag_resource(aws_client:aws_client(), tag_resource_input()) ->
    {ok, tag_resource_output(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_input(), proplists:proplist()) ->
    {ok, tag_resource_output(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Removes tags from an Amazon Web Services resource.
-spec untag_resource(aws_client:aws_client(), untag_resource_input()) ->
    {ok, untag_resource_output(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).

-spec untag_resource(aws_client:aws_client(), untag_resource_input(), proplists:proplist()) ->
    {ok, untag_resource_output(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Updates a specified host with the provided configurations.
-spec update_host(aws_client:aws_client(), update_host_input()) ->
    {ok, update_host_output(), tuple()} |
    {error, any()} |
    {error, update_host_errors(), tuple()}.
update_host(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_host(Client, Input, []).

-spec update_host(aws_client:aws_client(), update_host_input(), proplists:proplist()) ->
    {ok, update_host_output(), tuple()} |
    {error, any()} |
    {error, update_host_errors(), tuple()}.
update_host(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateHost">>, Input, Options).

%% @doc Updates the association between your connection and a specified
%% external Git repository.
%%
%% A repository link allows Git sync to monitor and sync changes to files in
%% a specified Git
%% repository.
-spec update_repository_link(aws_client:aws_client(), update_repository_link_input()) ->
    {ok, update_repository_link_output(), tuple()} |
    {error, any()} |
    {error, update_repository_link_errors(), tuple()}.
update_repository_link(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_repository_link(Client, Input, []).

-spec update_repository_link(aws_client:aws_client(), update_repository_link_input(), proplists:proplist()) ->
    {ok, update_repository_link_output(), tuple()} |
    {error, any()} |
    {error, update_repository_link_errors(), tuple()}.
update_repository_link(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateRepositoryLink">>, Input, Options).

%% @doc Allows you to update the status of a sync blocker, resolving the
%% blocker and allowing syncing to continue.
-spec update_sync_blocker(aws_client:aws_client(), update_sync_blocker_input()) ->
    {ok, update_sync_blocker_output(), tuple()} |
    {error, any()} |
    {error, update_sync_blocker_errors(), tuple()}.
update_sync_blocker(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_sync_blocker(Client, Input, []).

-spec update_sync_blocker(aws_client:aws_client(), update_sync_blocker_input(), proplists:proplist()) ->
    {ok, update_sync_blocker_output(), tuple()} |
    {error, any()} |
    {error, update_sync_blocker_errors(), tuple()}.
update_sync_blocker(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateSyncBlocker">>, Input, Options).

%% @doc Updates the sync configuration for your connection and a specified
%% external Git repository.
-spec update_sync_configuration(aws_client:aws_client(), update_sync_configuration_input()) ->
    {ok, update_sync_configuration_output(), tuple()} |
    {error, any()} |
    {error, update_sync_configuration_errors(), tuple()}.
update_sync_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_sync_configuration(Client, Input, []).

-spec update_sync_configuration(aws_client:aws_client(), update_sync_configuration_input(), proplists:proplist()) ->
    {ok, update_sync_configuration_output(), tuple()} |
    {error, any()} |
    {error, update_sync_configuration_errors(), tuple()}.
update_sync_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateSyncConfiguration">>, Input, Options).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), binary(), map(), list()) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map() | undefined,
    Error :: map().
request(Client, Action, Input, Options) ->
    RequestFun = fun() -> do_request(Client, Action, Input, Options) end,
    aws_request:request(RequestFun, Options).

do_request(Client, Action, Input0, Options) ->
    Client1 = Client#{service => <<"codeconnections">>},
    Host = build_host(<<"codeconnections">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
        {<<"X-Amz-Target">>, <<"CodeConnections_20231201.", Action/binary>>}
    ],

    Input = Input0,

    Payload = jsx:encode(Input),
    SignedHeaders = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, SignedHeaders, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    case hackney:body(Client) of
        {ok, <<>>} ->
            {ok, undefined, {200, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body),
            {ok, Result, {200, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Client) ->
    Proto = aws_client:proto(Client),
    Port = aws_client:port(Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
