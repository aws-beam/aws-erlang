%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS CodeStar Connections
%%
%% This Amazon Web Services CodeStar Connections API Reference provides
%% descriptions and usage examples of the operations and data types for the
%% Amazon Web Services CodeStar Connections API.
%%
%% You can use the connections API to work with connections and
%% installations.
%%
%% Connections are configurations that you use to connect Amazon Web Services
%% resources to external code repositories. Each connection is a resource
%% that can be given to services such as CodePipeline to connect to a
%% third-party repository such as Bitbucket. For example, you can add the
%% connection in CodePipeline so that it triggers your pipeline when a code
%% change is made to your third-party code repository. Each connection is
%% named and associated with a unique ARN that is used to reference the
%% connection.
%%
%% When you create a connection, the console initiates a third-party
%% connection handshake. Installations are the apps that are used to conduct
%% this handshake. For example, the installation for the Bitbucket provider
%% type is the Bitbucket app. When you create a connection, you can choose an
%% existing installation or create one.
%%
%% When you want to create a connection to an installed provider type such as
%% GitHub Enterprise Server, you create a host for your connections.
%%
%% You can work with connections by calling:
%%
%% <ul> <li> `CreateConnection', which creates a uniquely named
%% connection that can be referenced by services such as CodePipeline.
%%
%% </li> <li> `DeleteConnection', which deletes the specified connection.
%%
%% </li> <li> `GetConnection', which returns information about the
%% connection, including the connection status.
%%
%% </li> <li> `ListConnections', which lists the connections associated
%% with your account.
%%
%% </li> </ul> You can work with hosts by calling:
%%
%% <ul> <li> `CreateHost', which creates a host that represents the
%% infrastructure where your provider is installed.
%%
%% </li> <li> `DeleteHost', which deletes the specified host.
%%
%% </li> <li> `GetHost', which returns information about the host,
%% including the setup status.
%%
%% </li> <li> `ListHosts', which lists the hosts associated with your
%% account.
%%
%% </li> </ul> You can work with tags in Amazon Web Services CodeStar
%% Connections by calling the following:
%%
%% <ul> <li> `ListTagsForResource', which gets information about Amazon
%% Web Services tags for a specified Amazon Resource Name (ARN) in Amazon Web
%% Services CodeStar Connections.
%%
%% </li> <li> `TagResource', which adds or updates tags for a resource in
%% Amazon Web Services CodeStar Connections.
%%
%% </li> <li> `UntagResource', which removes tags for a resource in
%% Amazon Web Services CodeStar Connections.
%%
%% </li> </ul> For information about how to use Amazon Web Services CodeStar
%% Connections, see the Developer Tools User Guide:
%% https://docs.aws.amazon.com/dtconsole/latest/userguide/welcome-connections.html.
-module(aws_codestar_connections).

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

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a connection that can then be given to other Amazon Web
%% Services services like CodePipeline so that it can access third-party code
%% repositories.
%%
%% The connection is in pending status until the third-party connection
%% handshake is completed from the console.
create_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_connection(Client, Input, []).
create_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateConnection">>, Input, Options).

%% @doc Creates a resource that represents the infrastructure where a
%% third-party provider is installed.
%%
%% The host is used when you create connections to an installed third-party
%% provider type, such as GitHub Enterprise Server. You create one host for
%% all connections to that provider.
%%
%% A host created through the CLI or the SDK is in `PENDING' status by
%% default. You can make its status `AVAILABLE' by setting up the host in the
%% console.
create_host(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_host(Client, Input, []).
create_host(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateHost">>, Input, Options).

%% @doc Creates a link to a specified external Git repository.
%%
%% A repository link allows Git sync to monitor and sync changes to files in
%% a specified Git repository.
create_repository_link(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_repository_link(Client, Input, []).
create_repository_link(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateRepositoryLink">>, Input, Options).

%% @doc Creates a sync configuration which allows Amazon Web Services to sync
%% content from a Git repository to update a specified Amazon Web Services
%% resource.
%%
%% Parameters for the sync configuration are determined by the sync type.
create_sync_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_sync_configuration(Client, Input, []).
create_sync_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSyncConfiguration">>, Input, Options).

%% @doc The connection to be deleted.
delete_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_connection(Client, Input, []).
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
delete_host(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_host(Client, Input, []).
delete_host(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteHost">>, Input, Options).

%% @doc Deletes the association between your connection and a specified
%% external Git repository.
delete_repository_link(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_repository_link(Client, Input, []).
delete_repository_link(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRepositoryLink">>, Input, Options).

%% @doc Deletes the sync configuration for a specified repository and
%% connection.
delete_sync_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_sync_configuration(Client, Input, []).
delete_sync_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSyncConfiguration">>, Input, Options).

%% @doc Returns the connection ARN and details such as status, owner, and
%% provider type.
get_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_connection(Client, Input, []).
get_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetConnection">>, Input, Options).

%% @doc Returns the host ARN and details such as status, provider type,
%% endpoint, and, if applicable, the VPC configuration.
get_host(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_host(Client, Input, []).
get_host(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetHost">>, Input, Options).

%% @doc Returns details about a repository link.
%%
%% A repository link allows Git sync to monitor and sync changes from files
%% in a specified Git repository.
get_repository_link(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_repository_link(Client, Input, []).
get_repository_link(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRepositoryLink">>, Input, Options).

%% @doc Returns details about the sync status for a repository.
%%
%% A repository sync uses Git sync to push and pull changes from your remote
%% repository.
get_repository_sync_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_repository_sync_status(Client, Input, []).
get_repository_sync_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRepositorySyncStatus">>, Input, Options).

%% @doc Returns the status of the sync with the Git repository for a specific
%% Amazon Web Services resource.
get_resource_sync_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_resource_sync_status(Client, Input, []).
get_resource_sync_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetResourceSyncStatus">>, Input, Options).

%% @doc Returns a list of the most recent sync blockers.
get_sync_blocker_summary(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_sync_blocker_summary(Client, Input, []).
get_sync_blocker_summary(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSyncBlockerSummary">>, Input, Options).

%% @doc Returns details about a sync configuration, including the sync type
%% and resource name.
%%
%% A sync configuration allows the configuration to sync (push and pull)
%% changes from the remote repository for a specified branch in a Git
%% repository.
get_sync_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_sync_configuration(Client, Input, []).
get_sync_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSyncConfiguration">>, Input, Options).

%% @doc Lists the connections associated with your account.
list_connections(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_connections(Client, Input, []).
list_connections(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListConnections">>, Input, Options).

%% @doc Lists the hosts associated with your account.
list_hosts(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_hosts(Client, Input, []).
list_hosts(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListHosts">>, Input, Options).

%% @doc Lists the repository links created for connections in your account.
list_repository_links(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_repository_links(Client, Input, []).
list_repository_links(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRepositoryLinks">>, Input, Options).

%% @doc Lists the repository sync definitions for repository links in your
%% account.
list_repository_sync_definitions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_repository_sync_definitions(Client, Input, []).
list_repository_sync_definitions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRepositorySyncDefinitions">>, Input, Options).

%% @doc Returns a list of sync configurations for a specified repository.
list_sync_configurations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_sync_configurations(Client, Input, []).
list_sync_configurations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSyncConfigurations">>, Input, Options).

%% @doc Gets the set of key-value pairs (metadata) that are used to manage
%% the resource.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Adds to or modifies the tags of the given resource.
%%
%% Tags are metadata that can be used to manage a resource.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Removes tags from an Amazon Web Services resource.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Updates a specified host with the provided configurations.
update_host(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_host(Client, Input, []).
update_host(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateHost">>, Input, Options).

%% @doc Updates the association between your connection and a specified
%% external Git repository.
%%
%% A repository link allows Git sync to monitor and sync changes to files in
%% a specified Git repository.
update_repository_link(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_repository_link(Client, Input, []).
update_repository_link(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateRepositoryLink">>, Input, Options).

%% @doc Allows you to update the status of a sync blocker, resolving the
%% blocker and allowing syncing to continue.
update_sync_blocker(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_sync_blocker(Client, Input, []).
update_sync_blocker(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateSyncBlocker">>, Input, Options).

%% @doc Updates the sync configuration for your connection and a specified
%% external Git repository.
update_sync_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_sync_configuration(Client, Input, []).
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
    Client1 = Client#{service => <<"codestar-connections">>},
    Host = build_host(<<"codestar-connections">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
        {<<"X-Amz-Target">>, <<"com.amazonaws.codestar.connections.CodeStar_connections_20191201.", Action/binary>>}
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
