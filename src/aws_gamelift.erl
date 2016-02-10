%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/jkakar/aws-codegen for more details.

%% @doc <fullname>Amazon GameLift Service</fullname>
%%
%% Welcome to the <i>Amazon GameLift API Reference</i>. Amazon GameLift is a
%% managed Amazon Web Services (AWS) service for developers who need a
%% scalable, server-based solution for multiplayer games. Amazon GameLift
%% provides setup and deployment of game servers, and handles infrastructure
%% scaling and session management. For more information about the GameLift
%% service, including a feature overview, getting started guide, and
%% tutorial, see the accompanying <a
%% href="http://docs.aws.amazon.com/gamelift/latest/developerguide/">Amazon
%% GameLift Developer Guide</a>.
%%
%% This reference describes the low-level service API for GameLift. You can
%% call this API directly or use the <a
%% href="https://aws.amazon.com/tools/">AWS SDK</a> for your preferred
%% language. The AWS SDK includes a set of high-level GameLift actions
%% multiplayer game sessions. Alternatively, you can use the <a
%% href="https://aws.amazon.com/cli/">AWS command-line interface</a> (CLI)
%% tool, which includes commands for GameLift. For administrative actions,
%% you can use the Amazon GameLift console.
%%
%% <b>Setting Up Your Game Servers</b>
%%
%% Use these administrative actions to configure GameLift to host your game
%% servers. When configuring GameLift, you'll need to (1) configure a build
%% for your game and provide build files, and (2) set up one or more fleets
%% to host game sessions.
%%
%% <ul> <li> <b>Build actions:</b> <ul> <li><a>ListBuilds</a></li>
%% <li><a>CreateBuild</a></li> <li><a>DescribeBuild</a></li>
%% <li><a>UpdateBuild</a></li> <li><a>DeleteBuild</a></li>
%% <li><a>RequestUploadCredentials</a></li> </ul> </li> <li> <b>Fleet
%% actions:</b> <ul> <li><a>ListFleets</a></li> <li><a>CreateFleet</a></li>
%% <li>Describe fleet actions: <ul> <li><a>DescribeFleetAttributes</a></li>
%% <li><a>DescribeFleetCapacity</a></li>
%% <li><a>DescribeFleetPortSettings</a></li>
%% <li><a>DescribeFleetUtilization</a></li>
%% <li><a>DescribeEC2InstanceLimits</a></li>
%% <li><a>DescribeFleetEvents</a></li> </ul> </li> <li>Update fleet actions:
%% <ul> <li><a>UpdateFleetAttributes</a></li>
%% <li><a>UpdateFleetCapacity</a></li>
%% <li><a>UpdateFleetPortSettings</a></li> </ul> </li>
%% <li><a>DeleteFleet</a></li> </ul> </li> <li> <b>Alias actions:</b> <ul>
%% <li><a>ListAliases</a></li> <li><a>CreateAlias</a></li>
%% <li><a>DescribeAlias</a></li> <li><a>UpdateAlias</a></li>
%% <li><a>DeleteAlias</a></li> <li><a>ResolveAlias</a></li> </ul> </li> </ul>
%% <b>Managing Game and Player Sessions Through GameLift</b>
%%
%% Call these actions from your game clients and/or services to create and
%% manage multiplayer game sessions.
%%
%% <ul> <li> <b>Game sessions</b> <ul> <li><a>CreateGameSession</a></li>
%% <li><a>DescribeGameSessions</a></li> <li><a>UpdateGameSession</a></li>
%% </ul> </li> <li> <b>Player sessions</b> <ul>
%% <li><a>CreatePlayerSession</a></li> <li><a>CreatePlayerSessions</a></li>
%% <li><a>DescribePlayerSessions</a></li> </ul> </li> <li> <b>Other
%% actions:</b> <ul> <li><a>GetGameSessionLogUrl</a></li> </ul> </li> </ul>
-module(aws_gamelift).

-export([create_alias/2,
         create_alias/3,
         create_build/2,
         create_build/3,
         create_fleet/2,
         create_fleet/3,
         create_game_session/2,
         create_game_session/3,
         create_player_session/2,
         create_player_session/3,
         create_player_sessions/2,
         create_player_sessions/3,
         delete_alias/2,
         delete_alias/3,
         delete_build/2,
         delete_build/3,
         delete_fleet/2,
         delete_fleet/3,
         describe_alias/2,
         describe_alias/3,
         describe_build/2,
         describe_build/3,
         describe_e_c2_instance_limits/2,
         describe_e_c2_instance_limits/3,
         describe_fleet_attributes/2,
         describe_fleet_attributes/3,
         describe_fleet_capacity/2,
         describe_fleet_capacity/3,
         describe_fleet_events/2,
         describe_fleet_events/3,
         describe_fleet_port_settings/2,
         describe_fleet_port_settings/3,
         describe_fleet_utilization/2,
         describe_fleet_utilization/3,
         describe_game_sessions/2,
         describe_game_sessions/3,
         describe_player_sessions/2,
         describe_player_sessions/3,
         get_game_session_log_url/2,
         get_game_session_log_url/3,
         list_aliases/2,
         list_aliases/3,
         list_builds/2,
         list_builds/3,
         list_fleets/2,
         list_fleets/3,
         request_upload_credentials/2,
         request_upload_credentials/3,
         resolve_alias/2,
         resolve_alias/3,
         update_alias/2,
         update_alias/3,
         update_build/2,
         update_build/3,
         update_fleet_attributes/2,
         update_fleet_attributes/3,
         update_fleet_capacity/2,
         update_fleet_capacity/3,
         update_fleet_port_settings/2,
         update_fleet_port_settings/3,
         update_game_session/2,
         update_game_session/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates an alias for a fleet. You can use an alias to anonymize your
%% fleet by referencing an alias instead of a specific fleet when you create
%% game sessions. Amazon GameLift supports two types of routing strategies
%% for aliases: simple and terminal. Use a simple alias to point to an active
%% fleet. Use a terminal alias to display a message to incoming traffic
%% instead of routing players to an active fleet. This option is useful when
%% a game server is no longer supported but you want to provide better
%% messaging than a standard 404 error.
%%
%% To create a fleet alias, specify an alias name, routing strategy, and
%% optional description. If successful, a new alias record is returned,
%% including an alias ID, which you can reference when creating a game
%% session. To reassign the alias to another fleet ID, call
%% <a>UpdateAlias</a>.
create_alias(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_alias(Client, Input, []).
create_alias(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAlias">>, Input, Options).

%% @doc Initializes a new build record and generates information required to
%% upload a game build to Amazon GameLift. Once the build record has been
%% created and is in an INITIALIZED state, you can upload your game build.
%%
%% <important>To create a build, use the CLI command
%% <code>upload-build</code>, which creates a new build record and uploads
%% the build files in one step. (See the <a
%% href="http://docs.aws.amazon.com/gamelift/latest/developerguide/">Amazon
%% GameLift Developer Guide</a> for more details on the CLI and the upload
%% process.) Call the <code>CreateBuild</code> action only if you have your
%% own Amazon Simple Storage Service (Amazon S3) client and need to manually
%% upload your build files.
%%
%% </important> To create a new build, optionally specify a build name and
%% version. This metadata is stored with other properties in the build record
%% and is displayed in the GameLift console (but not visible to players). If
%% successful, this action returns the newly created build record along with
%% an Amazon S3 storage location and AWS account credentials. Use the
%% location and credentials to upload your game build.
create_build(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_build(Client, Input, []).
create_build(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateBuild">>, Input, Options).

%% @doc Creates a new fleet to host game servers. A fleet consists of a set
%% of Amazon Elastic Compute Cloud (Amazon EC2) instances of a certain type,
%% which defines the CPU, memory, storage, and networking capacity of each
%% host in the fleet. See <a
%% href="https://aws.amazon.com/ec2/instance-types/">Amazon EC2 Instance
%% Types</a> for more information. Each instance in the fleet hosts a game
%% server created from the specified game build. Once a fleet is in an ACTIVE
%% state, it can begin hosting game sessions.
%%
%% To create a new fleet, provide a name and the EC2 instance type for the
%% new fleet, and specify the build and server launch path. Builds must be in
%% a READY state before they can be used to build fleets. When configuring
%% the new fleet, you can optionally (1) provide a set of launch parameters
%% to be passed to a game server when activated; (2) limit incoming traffic
%% to a specified range of IP addresses and port numbers; and (3) configure
%% Amazon GameLift to store game session logs by specifying the path to the
%% logs stored in your game server files. If the call is successful, Amazon
%% GameLift performs the following tasks:
%%
%% <ul> <li>Creates a fleet record and sets the state to NEW.</li> <li>Sets
%% the fleet's capacity to 1 "desired" and 1 "active" EC2 instance
%% count.</li> <li>Creates an EC2 instance and begins the process of
%% initializing the fleet and activating a game server on the instance.</li>
%% <li>Begins writing events to the fleet event log, which can be accessed in
%% the GameLift console.</li> </ul> Once a fleet is created, use the
%% following actions to change certain fleet properties (server launch
%% parameters and log paths cannot be changed):
%%
%% <ul> <li> <a>UpdateFleetAttributes</a> -- Update fleet metadata, including
%% name and description.</li> <li> <a>UpdateFleetCapacity</a> -- Increase or
%% decrease the number of instances you want the fleet to maintain.</li> <li>
%% <a>UpdateFleetPortSettings</a> -- Change the IP addresses and ports that
%% allow access to incoming traffic.</li> </ul>
create_fleet(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_fleet(Client, Input, []).
create_fleet(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateFleet">>, Input, Options).

%% @doc Creates a multiplayer game session for players. This action creates a
%% game session record and assigns the new session to an instance in the
%% specified fleet, which activates the server initialization process in your
%% game server. A fleet must be in an ACTIVE state before a game session can
%% be created for it.
%%
%% To create a game session, specify either a fleet ID or an alias ID and
%% indicate the maximum number of players the game session allows. You can
%% also provide a name and a set of properties for your game (optional). If
%% successful, a <a>GameSession</a> object is returned containing session
%% properties, including an IP address. By default, newly created game
%% sessions are set to accept adding any new players to the game session. Use
%% <a>UpdateGameSession</a> to change the creation policy.
create_game_session(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_game_session(Client, Input, []).
create_game_session(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateGameSession">>, Input, Options).

%% @doc Adds a player to a game session and creates a player session record.
%% A game session must be in an ACTIVE state, have a creation policy of
%% ALLOW_ALL, and have an open player slot before players can be added to the
%% session.
%%
%% To create a player session, specify a game session ID and player ID. If
%% successful, the player is added to the game session and a new
%% <a>PlayerSession</a> object is returned.
create_player_session(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_player_session(Client, Input, []).
create_player_session(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePlayerSession">>, Input, Options).

%% @doc Adds a group of players to a game session. Similar to
%% <a>CreatePlayerSession</a>, this action allows you to add multiple players
%% in a single call, which is useful for games that provide party and/or
%% matchmaking features. A game session must be in an ACTIVE state, have a
%% creation policy of ALLOW_ALL, and have an open player slot before players
%% can be added to the session.
%%
%% To create player sessions, specify a game session ID and a list of player
%% IDs. If successful, the players are added to the game session and a set of
%% new <a>PlayerSession</a> objects is returned.
create_player_sessions(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_player_sessions(Client, Input, []).
create_player_sessions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePlayerSessions">>, Input, Options).

%% @doc Deletes an alias. This action removes all record of the alias; game
%% clients attempting to access a game server using the deleted alias receive
%% an error. To delete an alias, specify the alias ID to be deleted.
delete_alias(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_alias(Client, Input, []).
delete_alias(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAlias">>, Input, Options).

%% @doc Deletes a build. This action permanently deletes the build record and
%% any uploaded build files.
%%
%% To delete a build, specify its ID. Deleting a build does not affect the
%% status of any active fleets, but you can no longer create new fleets for
%% the deleted build.
delete_build(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_build(Client, Input, []).
delete_build(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteBuild">>, Input, Options).

%% @doc Deletes everything related to a fleet. Before deleting a fleet, you
%% must set the fleet's desired capacity to zero. See
%% <a>UpdateFleetCapacity</a>.
%%
%% This action removes the fleet's resources and the fleet record. Once a
%% fleet is deleted, you can no longer use that fleet.
delete_fleet(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_fleet(Client, Input, []).
delete_fleet(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteFleet">>, Input, Options).

%% @doc Retrieves properties for a specified alias. To get the alias, specify
%% an alias ID. If successful, an <a>Alias</a> object is returned.
describe_alias(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_alias(Client, Input, []).
describe_alias(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAlias">>, Input, Options).

%% @doc Retrieves properties for a build. To get a build record, specify a
%% build ID. If successful, an object containing the build properties is
%% returned.
describe_build(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_build(Client, Input, []).
describe_build(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeBuild">>, Input, Options).

%% @doc Retrieves the maximum number of instances allowed, per AWS account,
%% for each specified EC2 instance type. The current usage level for the AWS
%% account is also retrieved.
describe_e_c2_instance_limits(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_e_c2_instance_limits(Client, Input, []).
describe_e_c2_instance_limits(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEC2InstanceLimits">>, Input, Options).

%% @doc Retrieves fleet properties, including metadata, status, and
%% configuration, for one or more fleets. You can request attributes for all
%% fleets, or specify a list of one or more fleet IDs. When requesting all
%% fleets, use the pagination parameters to retrieve results as a set of
%% sequential pages. If successful, a <a>FleetAttributes</a> object is
%% returned for each requested fleet ID. When specifying a list of fleet IDs,
%% attribute objects are returned only for fleets that currently exist.
%%
%% <note>Some API actions may limit the number of fleet IDs allowed in one
%% request. If a request exceeds this limit, the request fails and the error
%% message includes the maximum allowed.
%%
%% </note>
describe_fleet_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_fleet_attributes(Client, Input, []).
describe_fleet_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFleetAttributes">>, Input, Options).

%% @doc Retrieves the current status of fleet capacity for one or more
%% fleets. This information includes the number of instances that have been
%% requested for the fleet and the number currently active. You can request
%% capacity for all fleets, or specify a list of one or more fleet IDs. When
%% requesting all fleets, use the pagination parameters to retrieve results
%% as a set of sequential pages. If successful, a <a>FleetCapacity</a> object
%% is returned for each requested fleet ID. When specifying a list of fleet
%% IDs, attribute objects are returned only for fleets that currently exist.
%%
%% <note>Some API actions may limit the number of fleet IDs allowed in one
%% request. If a request exceeds this limit, the request fails and the error
%% message includes the maximum allowed.
%%
%% </note>
describe_fleet_capacity(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_fleet_capacity(Client, Input, []).
describe_fleet_capacity(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFleetCapacity">>, Input, Options).

%% @doc Retrieves entries from the fleet event log. You can specify a time
%% range to limit the result set. Use the pagination parameters to retrieve
%% results as a set of sequential pages. If successful, a collection of event
%% log entries matching the request are returned.
describe_fleet_events(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_fleet_events(Client, Input, []).
describe_fleet_events(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFleetEvents">>, Input, Options).

%% @doc Retrieves the port settings for a fleet. Port settings are used to
%% limit incoming traffic access to game servers in the fleet. To get a
%% fleet's port settings, specify a fleet ID. If successful, an
%% <a>IpPermission</a> object is returned for the requested fleet ID. If the
%% requested fleet has been deleted, the result set will be empty.
describe_fleet_port_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_fleet_port_settings(Client, Input, []).
describe_fleet_port_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFleetPortSettings">>, Input, Options).

%% @doc Retrieves utilization statistics for one or more fleets. You can
%% request utilization data for all fleets, or specify a list of one or more
%% fleet IDs. When requesting all fleets, use the pagination parameters to
%% retrieve results as a set of sequential pages. If successful, a
%% <a>FleetUtilization</a> object is returned for each requested fleet ID.
%% When specifying a list of fleet IDs, utilization objects are returned only
%% for fleets that currently exist.
%%
%% <note>Some API actions may limit the number of fleet IDs allowed in one
%% request. If a request exceeds this limit, the request fails and the error
%% message includes the maximum allowed.
%%
%% </note>
describe_fleet_utilization(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_fleet_utilization(Client, Input, []).
describe_fleet_utilization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFleetUtilization">>, Input, Options).

%% @doc Retrieves properties for one or more game sessions. This action can
%% be used in several ways: (1) provide a <i>GameSessionId</i> parameter to
%% request properties for a specific game session; (2) provide a
%% <i>FleetId</i> or <i>AliasId</i> parameter to request properties for all
%% game sessions running on a fleet.
%%
%% To get game session record(s), specify only one of the following: game
%% session ID, fleet ID, or alias ID. You can filter this request by game
%% session status. Use the pagination parameters to retrieve results as a set
%% of sequential pages. If successful, a <a>GameSession</a> object is
%% returned for each session matching the request.
describe_game_sessions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_game_sessions(Client, Input, []).
describe_game_sessions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeGameSessions">>, Input, Options).

%% @doc Retrieves properties for one or more player sessions. This action can
%% be used in several ways: (1) provide a <i>PlayerSessionId</i> parameter to
%% request properties for a specific player session; (2) provide a
%% <i>GameSessionId</i> parameter to request properties for all player
%% sessions in the specified game session; (3) provide a <i>PlayerId</i>
%% parameter to request properties for all player sessions of a specified
%% player.
%%
%% To get game session record(s), specify only one of the following: a player
%% session ID, a game session ID, or a player ID. You can filter this request
%% by player session status. Use the pagination parameters to retrieve
%% results as a set of sequential pages. If successful, a
%% <a>PlayerSession</a> object is returned for each session matching the
%% request.
describe_player_sessions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_player_sessions(Client, Input, []).
describe_player_sessions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePlayerSessions">>, Input, Options).

%% @doc Retrieves the location of stored game session logs for a specified
%% game session. When a game session is terminated, Amazon GameLift
%% automatically stores the logs in Amazon S3. Use this URL to download the
%% logs.
%%
%% <note>See the <a
%% href="http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_gamelift">AWS
%% Service Limits</a> page for maximum log file sizes. Log files that exceed
%% this limit are not saved.
%%
%% </note>
get_game_session_log_url(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_game_session_log_url(Client, Input, []).
get_game_session_log_url(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetGameSessionLogUrl">>, Input, Options).

%% @doc Retrieves a collection of alias records for this AWS account. You can
%% filter the result set by alias name and/or routing strategy type. Use the
%% pagination parameters to retrieve results in sequential pages.
%%
%% <note>Aliases are not listed in any particular order.
%%
%% </note>
list_aliases(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_aliases(Client, Input, []).
list_aliases(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAliases">>, Input, Options).

%% @doc Retrieves build records for all builds associated with an AWS
%% account. You can filter the result set by build status. Use the pagination
%% parameters to retrieve results in a set of sequential pages.
%%
%% <note>Build records are not listed in any particular order.
%%
%% </note>
list_builds(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_builds(Client, Input, []).
list_builds(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListBuilds">>, Input, Options).

%% @doc Retrieves a collection of fleet records for this AWS account. You can
%% filter the result set by build ID. Use the pagination parameters to
%% retrieve results in sequential pages.
%%
%% <note>Fleet records are not listed in any particular order.
%%
%% </note>
list_fleets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_fleets(Client, Input, []).
list_fleets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListFleets">>, Input, Options).

%% @doc Retrieves a fresh set of upload credentials and the assigned Amazon
%% S3 storage location for a specific build. Valid credentials are required
%% to upload your game build files to Amazon S3.
%%
%% <important>Call this action only if you need credentials for a build
%% created with <a>CreateBuild</a>. This is a rare situation; in most cases,
%% builds are created using the CLI command <code>upload-build</code>, which
%% creates a build record and also uploads build files.
%%
%% </important> Upload credentials are returned when you create the build,
%% but they have a limited lifespan. You can get fresh credentials and use
%% them to re-upload game files until the state of that build changes to
%% READY. Once this happens, you must create a brand new build.
request_upload_credentials(Client, Input)
  when is_map(Client), is_map(Input) ->
    request_upload_credentials(Client, Input, []).
request_upload_credentials(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RequestUploadCredentials">>, Input, Options).

%% @doc Retrieves the fleet ID that a specified alias is currently pointing
%% to.
resolve_alias(Client, Input)
  when is_map(Client), is_map(Input) ->
    resolve_alias(Client, Input, []).
resolve_alias(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ResolveAlias">>, Input, Options).

%% @doc Updates properties for an alias. To update properties, specify the
%% alias ID to be updated and provide the information to be changed. To
%% reassign an alias to another fleet, provide an updated routing strategy.
%% If successful, the updated alias record is returned.
update_alias(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_alias(Client, Input, []).
update_alias(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateAlias">>, Input, Options).

%% @doc Updates metadata in a build record, including the build name and
%% version. To update the metadata, specify the build ID to update and
%% provide the new values. If successful, a build object containing the
%% updated metadata is returned.
update_build(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_build(Client, Input, []).
update_build(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateBuild">>, Input, Options).

%% @doc Updates fleet properties, including name and description, for a
%% fleet. To update metadata, specify the fleet ID and the property values
%% you want to change. If successful, the fleet ID for the updated fleet is
%% returned.
update_fleet_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_fleet_attributes(Client, Input, []).
update_fleet_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateFleetAttributes">>, Input, Options).

%% @doc Updates capacity settings for a fleet. Use this action to specify the
%% number of EC2 instances (hosts) you want this fleet to contain. Before
%% calling this action, you may want to call <a>DescribeEC2InstanceLimits</a>
%% to get the maximum capacity based on the fleet's EC2 instance type.
%%
%% To update fleet capacity, specify the fleet ID and the desired number of
%% instances. If successful, Amazon GameLift starts or terminates instances
%% so that the fleet's active instance count matches the desired instance
%% count. You can view a fleet's current capacity information by calling
%% <a>DescribeFleetCapacity</a>. If the desired instance count is higher than
%% the instance type's limit, the "Limit Exceeded" exception will occur.
update_fleet_capacity(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_fleet_capacity(Client, Input, []).
update_fleet_capacity(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateFleetCapacity">>, Input, Options).

%% @doc Updates port settings for a fleet. To update settings, specify the
%% fleet ID to be updated and list the permissions you want to update. List
%% the permissions you want to add in <i>InboundPermissionAuthorizations</i>,
%% and permissions you want to remove in <i>InboundPermissionRevocations</i>.
%% Permissions to be removed must match existing fleet permissions. If
%% successful, the fleet ID for the updated fleet is returned.
update_fleet_port_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_fleet_port_settings(Client, Input, []).
update_fleet_port_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateFleetPortSettings">>, Input, Options).

%% @doc Updates game session properties. This includes the session name,
%% maximum player count and the player session creation policy, which either
%% allows or denies new players from joining the session. To update a game
%% session, specify the game session ID and the values you want to change. If
%% successful, an updated <a>GameSession</a> object is returned.
update_game_session(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_game_session(Client, Input, []).
update_game_session(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateGameSession">>, Input, Options).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), binary(), map(), list()) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map() | undefined,
    Error :: {binary(), binary()}.
request(Client, Action, Input, Options) ->
    Client1 = Client#{service => <<"gamelift">>},
    Host = get_host(<<"gamelift">>, Client1),
    URL = get_url(Host, Client1),
    Headers = [{<<"Host">>, Host},
               {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
               {<<"X-Amz-Target">>, << <<"GameLift.">>/binary, Action/binary>>}],
    Payload = jsx:encode(Input),
    Headers1 = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, Headers1, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    case hackney:body(Client) of
        {ok, <<>>} ->
            {ok, undefined, {200, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body, [return_maps]),
            {ok, Result, {200, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body, [return_maps]),
    Exception = maps:get(<<"__type">>, Error, undefined),
    Reason = maps:get(<<"message">>, Error, undefined),
    {error, {Exception, Reason}, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.

get_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
get_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix,
			  <<".">>,
			  Region,
			  <<".">>,
			  Endpoint],
			 <<"">>).

get_url(Host, Client) ->
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>],
			 <<"">>).
