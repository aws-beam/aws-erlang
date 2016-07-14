%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/jkakar/aws-codegen for more details.

%% @doc <fullname>Amazon GameLift Service</fullname>
%%
%% Welcome to the <i>Amazon GameLift API Reference</i>. Amazon GameLift is a
%% managed Amazon Web Services (AWS) service for developers who need a
%% scalable, server-based solution for multiplayer games. Amazon GameLift
%% provides setup and deployment of game servers, and handles infrastructure
%% scaling and session management.
%%
%% This reference describes the low-level service API for GameLift. You can
%% call this API directly or use the <a
%% href="https://aws.amazon.com/tools/">AWS SDK</a> for your preferred
%% language. The AWS SDK includes a set of high-level GameLift actions
%% multiplayer game sessions. Alternatively, you can use the <a
%% href="https://aws.amazon.com/cli/">AWS command-line interface</a> (CLI)
%% tool, which includes commands for GameLift. For administrative actions,
%% you can also use the Amazon GameLift console.
%%
%% <b>More Resources</b>
%%
%% <ul> <li> <a
%% href="http://docs.aws.amazon.com/gamelift/latest/developerguide/">Amazon
%% GameLift Developer Guide</a>: Learn more about GameLift features and how
%% to use them </li> <li> <a
%% href="https://gamedev.amazon.com/forums/tutorials">Lumberyard and GameLift
%% Tutorials</a>: Get started fast with walkthroughs and sample projects</li>
%% <li> <a href="https://aws.amazon.com/blogs/gamedev/">GameDev Blog</a>:
%% Stay up to date with new features and techniques</li> <li> <a
%% href="https://gamedev.amazon.com/forums/spaces/123/gamelift-discussion.html">GameDev
%% Forums</a>: Connect with the GameDev community</li> </ul> <b>Manage Games
%% and Players Through GameLift</b>
%%
%% Call these actions from your game clients and/or services to create and
%% manage multiplayer game sessions and player sessions.
%%
%% <ul> <li> <b>Game sessions</b> <ul> <li><a>CreateGameSession</a></li>
%% <li><a>DescribeGameSessions</a></li>
%% <li><a>DescribeGameSessionDetails</a></li>
%% <li><a>UpdateGameSession</a></li> </ul> </li> <li> <b>Player sessions</b>
%% <ul> <li><a>CreatePlayerSession</a></li>
%% <li><a>CreatePlayerSessions</a></li>
%% <li><a>DescribePlayerSessions</a></li> </ul> </li> <li> <b>Other
%% actions:</b> <ul> <li><a>GetGameSessionLogUrl</a></li> </ul> </li> </ul>
%% <b>Set Up and Manage Game Servers</b>
%%
%% Use these administrative actions to configure GameLift to host your game
%% servers. When setting up GameLift, you'll need to (1) configure a build
%% for your game and upload build files, and (2) set up one or more fleets to
%% host game sessions. Once you've created and activated a fleet, you can
%% assign aliases to it, scale capacity, track performance and utilization,
%% etc.
%%
%% <ul> <li> <b>Manage your builds:</b> <ul> <li><a>ListBuilds</a></li>
%% <li><a>CreateBuild</a></li> <li><a>DescribeBuild</a></li>
%% <li><a>UpdateBuild</a></li> <li><a>DeleteBuild</a></li>
%% <li><a>RequestUploadCredentials</a></li> </ul> </li> <li> <b>Manage your
%% fleets:</b> <ul> <li><a>ListFleets</a></li> <li><a>CreateFleet</a></li>
%% <li>Describe fleets: <ul> <li><a>DescribeFleetAttributes</a></li>
%% <li><a>DescribeFleetCapacity</a></li>
%% <li><a>DescribeFleetPortSettings</a></li>
%% <li><a>DescribeFleetUtilization</a></li>
%% <li><a>DescribeEC2InstanceLimits</a></li>
%% <li><a>DescribeFleetEvents</a></li>
%% <li><a>DescribeRuntimeConfiguration</a></li> </ul> </li> <li>Update
%% fleets: <ul> <li><a>UpdateFleetAttributes</a></li>
%% <li><a>UpdateFleetCapacity</a></li>
%% <li><a>UpdateFleetPortSettings</a></li>
%% <li><a>UpdateRuntimeConfiguration</a></li> </ul> </li>
%% <li><a>DeleteFleet</a></li> </ul> </li> <li> <b>Manage fleet aliases:</b>
%% <ul> <li><a>ListAliases</a></li> <li><a>CreateAlias</a></li>
%% <li><a>DescribeAlias</a></li> <li><a>UpdateAlias</a></li>
%% <li><a>DeleteAlias</a></li> <li><a>ResolveAlias</a></li> </ul> </li> <li>
%% <b>Manage autoscaling:</b> <ul> <li><a>PutScalingPolicy</a></li>
%% <li><a>DescribeScalingPolicies</a></li>
%% <li><a>DeleteScalingPolicy</a></li> </ul> </li> </ul> To view changes to
%% the API, see the GameLift <a
%% href="http://docs.aws.amazon.com/gamelift/latest/developerguide/doc-history.html">Document
%% History</a> page.
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
         delete_scaling_policy/2,
         delete_scaling_policy/3,
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
         describe_game_session_details/2,
         describe_game_session_details/3,
         describe_game_sessions/2,
         describe_game_sessions/3,
         describe_player_sessions/2,
         describe_player_sessions/3,
         describe_runtime_configuration/2,
         describe_runtime_configuration/3,
         describe_scaling_policies/2,
         describe_scaling_policies/3,
         get_game_session_log_url/2,
         get_game_session_log_url/3,
         list_aliases/2,
         list_aliases/3,
         list_builds/2,
         list_builds/3,
         list_fleets/2,
         list_fleets/3,
         put_scaling_policy/2,
         put_scaling_policy/3,
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
         update_game_session/3,
         update_runtime_configuration/2,
         update_runtime_configuration/3]).

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
%% created and is in an <code>INITIALIZED</code> state, you can upload your
%% game build.
%%
%% <important> Do not use this API action unless you are using your own
%% Amazon Simple Storage Service (Amazon S3) client and need to manually
%% upload your build files. Instead, to create a build, use the CLI command
%% <code>upload-build</code>, which creates a new build record and uploads
%% the build files in one step. (See the <a
%% href="http://docs.aws.amazon.com/gamelift/latest/developerguide/">Amazon
%% GameLift Developer Guide</a> for more details on the CLI and the upload
%% process.)
%%
%% </important> To create a new build, optionally specify a build name and
%% version. This metadata is stored with other properties in the build record
%% and is displayed in the GameLift console (it is not visible to players).
%% If successful, this action returns the newly created build record along
%% with the Amazon S3 storage location and AWS account credentials. Use the
%% location and credentials to upload your game build.
create_build(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_build(Client, Input, []).
create_build(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateBuild">>, Input, Options).

%% @doc Creates a new fleet to run your game servers. A fleet is a set of
%% Amazon Elastic Compute Cloud (Amazon EC2) instances, each of which can run
%% multiple server processes to host game sessions. You configure a fleet to
%% create instances with certain hardware specifications (see <a
%% href="https://aws.amazon.com/ec2/instance-types/">Amazon EC2 Instance
%% Types</a> for more information), and deploy a specified game build to each
%% instance. A newly created fleet passes through several states; once it
%% reaches the <code>ACTIVE</code> state, it can begin hosting game sessions.
%%
%% To create a new fleet, provide a fleet name, an EC2 instance type, and a
%% build ID of the game build to deploy. You can also configure the new fleet
%% with the following settings: (1) a runtime configuration describing what
%% server processes to run on each instance in the fleet (required to create
%% fleet), (2) access permissions for inbound traffic, (3) fleet-wide game
%% session protection, and (4) the location of default log files for GameLift
%% to upload and store.
%%
%% If the <code>CreateFleet</code> call is successful, Amazon GameLift
%% performs the following tasks:
%%
%% <ul> <li>Creates a fleet record and sets the state to <code>NEW</code>
%% (followed by other states as the fleet is activated).</li> <li>Sets the
%% fleet's capacity to 1 "desired", which causes GameLift to start one new
%% EC2 instance.</li> <li>Starts launching server processes on the instance.
%% If the fleet is configured to run multiple server processes per instance,
%% GameLift staggers each launch by a few seconds.</li> <li>Begins writing
%% events to the fleet event log, which can be accessed in the GameLift
%% console.</li> <li>Sets the fleet's status to <code>ACTIVE</code> once one
%% server process in the fleet is ready to host a game session.</li> </ul>
%% After a fleet is created, use the following actions to change fleet
%% properties and configuration:
%%
%% <ul> <li> <a>UpdateFleetAttributes</a> -- Update fleet metadata, including
%% name and description.</li> <li> <a>UpdateFleetCapacity</a> -- Increase or
%% decrease the number of instances you want the fleet to maintain.</li> <li>
%% <a>UpdateFleetPortSettings</a> -- Change the IP address and port ranges
%% that allow access to incoming traffic.</li> <li>
%% <a>UpdateRuntimeConfiguration</a> -- Change how server processes are
%% launched in the fleet, including launch path, launch parameters, and the
%% number of concurrent processes.</li> </ul>
create_fleet(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_fleet(Client, Input, []).
create_fleet(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateFleet">>, Input, Options).

%% @doc Creates a multiplayer game session for players. This action creates a
%% game session record and assigns the new session to an instance in the
%% specified fleet, which initializes a new server process to host the game
%% session. A fleet must be in an <code>ACTIVE</code> state before a game
%% session can be created in it.
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
%% A game session must be in an <code>ACTIVE</code> state, have a creation
%% policy of <code>ALLOW_ALL</code>, and have an open player slot before
%% players can be added to the session.
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
%% matchmaking features. A game session must be in an <code>ACTIVE</code>
%% state, have a creation policy of <code>ALLOW_ALL</code>, and have an open
%% player slot before players can be added to the session.
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
%% clients attempting to access a server process using the deleted alias
%% receive an error. To delete an alias, specify the alias ID to be deleted.
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
%% status of any active fleets using the build, but you can no longer create
%% new fleets with the deleted build.
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

%% @doc Deletes a fleet scaling policy. This action means that the policy is
%% no longer in force and removes all record of it. To delete a scaling
%% policy, specify both the scaling policy name and the fleet ID it is
%% associated with.
delete_scaling_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_scaling_policy(Client, Input, []).
delete_scaling_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteScalingPolicy">>, Input, Options).

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

%% @doc Retrieves the following information for the specified EC2 instance
%% type:
%%
%% <ul> <li>maximum number of instances allowed per AWS account (service
%% limit)</li> <li>current usage level for the AWS account </li> </ul>
%% Service limits vary depending on region. Available regions for GameLift
%% can be found in the AWS Management Console for GameLift (see the drop-down
%% list in the upper right corner).
describe_e_c2_instance_limits(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_e_c2_instance_limits(Client, Input, []).
describe_e_c2_instance_limits(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEC2InstanceLimits">>, Input, Options).

%% @doc Retrieves fleet properties, including metadata, status, and
%% configuration, for one or more fleets. You can request attributes for all
%% fleets, or specify a list of one or more fleet IDs. When requesting
%% multiple fleets, use the pagination parameters to retrieve results as a
%% set of sequential pages. If successful, a <a>FleetAttributes</a> object is
%% returned for each requested fleet ID. When specifying a list of fleet IDs,
%% attribute objects are returned only for fleets that currently exist.
%%
%% <note> Some API actions may limit the number of fleet IDs allowed in one
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
%% requesting multiple fleets, use the pagination parameters to retrieve
%% results as a set of sequential pages. If successful, a
%% <a>FleetCapacity</a> object is returned for each requested fleet ID. When
%% specifying a list of fleet IDs, attribute objects are returned only for
%% fleets that currently exist.
%%
%% <note> Some API actions may limit the number of fleet IDs allowed in one
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

%% @doc Retrieves entries from the specified fleet's event log. You can
%% specify a time range to limit the result set. Use the pagination
%% parameters to retrieve results as a set of sequential pages. If
%% successful, a collection of event log entries matching the request are
%% returned.
describe_fleet_events(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_fleet_events(Client, Input, []).
describe_fleet_events(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFleetEvents">>, Input, Options).

%% @doc Retrieves the inbound connection permissions for a fleet. Connection
%% permissions include a range of IP addresses and port settings that
%% incoming traffic can use to access server processes in the fleet. To get a
%% fleet's inbound connection permissions, specify a fleet ID. If successful,
%% a collection of <a>IpPermission</a> objects is returned for the requested
%% fleet ID. If the requested fleet has been deleted, the result set is
%% empty.
describe_fleet_port_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_fleet_port_settings(Client, Input, []).
describe_fleet_port_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFleetPortSettings">>, Input, Options).

%% @doc Retrieves utilization statistics for one or more fleets. You can
%% request utilization data for all fleets, or specify a list of one or more
%% fleet IDs. When requesting multiple fleets, use the pagination parameters
%% to retrieve results as a set of sequential pages. If successful, a
%% <a>FleetUtilization</a> object is returned for each requested fleet ID.
%% When specifying a list of fleet IDs, utilization objects are returned only
%% for fleets that currently exist.
%%
%% <note> Some API actions may limit the number of fleet IDs allowed in one
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

%% @doc Retrieves properties, including the protection policy in force, for
%% one or more game sessions. This action can be used in several ways: (1)
%% provide a <code>GameSessionId</code> to request details for a specific
%% game session; (2) provide either a <code>FleetId</code> or an
%% <code>AliasId</code> to request properties for all game sessions running
%% on a fleet.
%%
%% To get game session record(s), specify just one of the following: game
%% session ID, fleet ID, or alias ID. You can filter this request by game
%% session status. Use the pagination parameters to retrieve results as a set
%% of sequential pages. If successful, a <a>GameSessionDetail</a> object is
%% returned for each session matching the request.
describe_game_session_details(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_game_session_details(Client, Input, []).
describe_game_session_details(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeGameSessionDetails">>, Input, Options).

%% @doc Retrieves properties for one or more game sessions. This action can
%% be used in several ways: (1) provide a <code>GameSessionId</code> to
%% request properties for a specific game session; (2) provide a
%% <code>FleetId</code> or an <code>AliasId</code> to request properties for
%% all game sessions running on a fleet.
%%
%% To get game session record(s), specify just one of the following: game
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
%% be used in several ways: (1) provide a <code>PlayerSessionId</code>
%% parameter to request properties for a specific player session; (2) provide
%% a <code>GameSessionId</code> parameter to request properties for all
%% player sessions in the specified game session; (3) provide a
%% <code>PlayerId</code> parameter to request properties for all player
%% sessions of a specified player.
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

%% @doc Retrieves the current runtime configuration for the specified fleet.
%% The runtime configuration tells GameLift how to launch server processes on
%% instances in the fleet.
describe_runtime_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_runtime_configuration(Client, Input, []).
describe_runtime_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRuntimeConfiguration">>, Input, Options).

%% @doc Retrieves all scaling policies applied to a fleet.
%%
%% To get a fleet's scaling policies, specify the fleet ID. You can filter
%% this request by policy status, such as to retrieve only active scaling
%% policies. Use the pagination parameters to retrieve results as a set of
%% sequential pages. If successful, set of <a>ScalingPolicy</a> objects is
%% returned for the fleet.
describe_scaling_policies(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_scaling_policies(Client, Input, []).
describe_scaling_policies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeScalingPolicies">>, Input, Options).

%% @doc Retrieves the location of stored game session logs for a specified
%% game session. When a game session is terminated, Amazon GameLift
%% automatically stores the logs in Amazon S3. Use this URL to download the
%% logs.
%%
%% <note> See the <a
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
%% <note> Aliases are not listed in any particular order.
%%
%% </note>
list_aliases(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_aliases(Client, Input, []).
list_aliases(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAliases">>, Input, Options).

%% @doc Retrieves build records for all builds associated with the AWS
%% account in use. You can limit results to builds in a specific state using
%% the <code>Status</code> parameter. Use the pagination parameters to
%% retrieve results in a set of sequential pages.
%%
%% <note> Build records are not listed in any particular order.
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
%% <note> Fleet records are not listed in any particular order.
%%
%% </note>
list_fleets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_fleets(Client, Input, []).
list_fleets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListFleets">>, Input, Options).

%% @doc Creates or updates a scaling policy for a fleet. An active scaling
%% policy prompts Amazon GameLift to track a certain metric for a fleet and
%% automatically change the fleet's capacity in specific circumstances. Each
%% scaling policy contains one rule statement. Fleets can have multiple
%% scaling policies in force simultaneously.
%%
%% A scaling policy rule statement has the following structure:
%%
%% If <code>[MetricName]</code> is <code>[ComparisonOperator]</code>
%% <code>[Threshold]</code> for <code>[EvaluationPeriods]</code> minutes,
%% then <code>[ScalingAdjustmentType]</code> to/by
%% <code>[ScalingAdjustment]</code>.
%%
%% For example, this policy: "If the number of idle instances exceeds 20 for
%% more than 15 minutes, then reduce the fleet capacity by 10 instances"
%% could be implemented as the following rule statement:
%%
%% If [IdleInstances] is [GreaterThanOrEqualToThreshold] [20] for [15]
%% minutes, then [ChangeInCapacity] by [-10].
%%
%% To create or update a scaling policy, specify a unique combination of name
%% and fleet ID, and set the rule values. All parameters for this action are
%% required. If successful, the policy name is returned. Scaling policies
%% cannot be suspended or made inactive. To stop enforcing a scaling policy,
%% call <a>DeleteScalingPolicy</a>.
put_scaling_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_scaling_policy(Client, Input, []).
put_scaling_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutScalingPolicy">>, Input, Options).

%% @doc Retrieves a fresh set of upload credentials and the assigned Amazon
%% S3 storage location for a specific build. Valid credentials are required
%% to upload your game build files to Amazon S3.
%%
%% <important> Call this action only if you need credentials for a build
%% created with <code><a>CreateBuild</a></code>. This is a rare situation; in
%% most cases, builds are created using the CLI command
%% <code>upload-build</code>, which creates a build record and also uploads
%% build files.
%%
%% </important> Upload credentials are returned when you create the build,
%% but they have a limited lifespan. You can get fresh credentials and use
%% them to re-upload game files until the state of that build changes to
%% <code>READY</code>. Once this happens, you must create a brand new build.
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
%% number of EC2 instances (hosts) that you want this fleet to contain.
%% Before calling this action, you may want to call
%% <a>DescribeEC2InstanceLimits</a> to get the maximum capacity based on the
%% fleet's EC2 instance type.
%%
%% If you're using autoscaling (see <a>PutScalingPolicy</a>), you may want to
%% specify a minimum and/or maximum capacity. If you don't provide these,
%% autoscaling can set capacity anywhere between zero and the <a
%% href="http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_gamelift">service
%% limits</a>.
%%
%% To update fleet capacity, specify the fleet ID and the number of instances
%% you want the fleet to host. If successful, Amazon GameLift starts or
%% terminates instances so that the fleet's active instance count matches the
%% desired instance count. You can view a fleet's current capacity
%% information by calling <a>DescribeFleetCapacity</a>. If the desired
%% instance count is higher than the instance type's limit, the "Limit
%% Exceeded" exception occurs.
update_fleet_capacity(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_fleet_capacity(Client, Input, []).
update_fleet_capacity(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateFleetCapacity">>, Input, Options).

%% @doc Updates port settings for a fleet. To update settings, specify the
%% fleet ID to be updated and list the permissions you want to update. List
%% the permissions you want to add in
%% <code>InboundPermissionAuthorizations</code>, and permissions you want to
%% remove in <code>InboundPermissionRevocations</code>. Permissions to be
%% removed must match existing fleet permissions. If successful, the fleet ID
%% for the updated fleet is returned.
update_fleet_port_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_fleet_port_settings(Client, Input, []).
update_fleet_port_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateFleetPortSettings">>, Input, Options).

%% @doc Updates game session properties. This includes the session name,
%% maximum player count, protection policy, which controls whether or not an
%% active game session can be terminated during a scale-down event, and the
%% player session creation policy, which controls whether or not new players
%% can join the session. To update a game session, specify the game session
%% ID and the values you want to change. If successful, an updated
%% <a>GameSession</a> object is returned.
update_game_session(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_game_session(Client, Input, []).
update_game_session(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateGameSession">>, Input, Options).

%% @doc Updates the current runtime configuration for the specified fleet,
%% which tells GameLift how to launch server processes on instances in the
%% fleet. You can update a fleet's runtime configuration at any time after
%% the fleet is created; it does not need to be in an <code>ACTIVE</code>
%% state.
%%
%% To update runtime configuration, specify the fleet ID and provide a
%% <code>RuntimeConfiguration</code> object with the updated collection of
%% server process configurations.
%%
%% Each instance in a GameLift fleet checks regularly for an updated runtime
%% configuration and changes how it launches server processes to comply with
%% the latest version. Existing server processes are not affected by the
%% update; they continue to run until they end, while GameLift simply adds
%% new server processes to fit the current runtime configuration. As a
%% result, the runtime configuration changes are applied gradually as
%% existing processes shut down and new processes are launched in GameLift's
%% normal process recycling activity.
update_runtime_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_runtime_configuration(Client, Input, []).
update_runtime_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateRuntimeConfiguration">>, Input, Options).

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
