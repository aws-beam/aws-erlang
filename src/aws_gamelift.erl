%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc <fullname>Amazon GameLift Service</fullname>
%%
%% Amazon GameLift provides a range of multiplayer game hosting solutions. As
%% a fully managed service, GameLift helps you:
%%
%% <ul> <li> Set up EC2-based computing resources and use GameLift FleetIQ to
%% and deploy your game servers on low-cost, reliable Spot instances.
%%
%% </li> <li> Track game server availability and route players into game
%% sessions to minimize latency.
%%
%% </li> <li> Automatically scale your resources to meet player demand and
%% manage costs
%%
%% </li> <li> Optionally add FlexMatch matchmaking.
%%
%% </li> </ul> With GameLift as a managed service, you have the option to
%% deploy your custom game server or use Amazon GameLift Realtime Servers to
%% quickly stand up lightweight game servers for your game. Realtime Servers
%% provides an efficient game server framework with core Amazon GameLift
%% infrastructure already built in.
%%
%% <b>Now in Public Preview:</b>
%%
%% Use GameLift FleetIQ as a standalone feature with EC2 instances and Auto
%% Scaling groups. GameLift FleetIQ provides optimizations that make low-cost
%% Spot instances viable for game hosting. This extension of GameLift FleetIQ
%% gives you access to these optimizations while managing your EC2 instances
%% and Auto Scaling groups within your own AWS account.
%%
%% <b>Get Amazon GameLift Tools and Resources</b>
%%
%% This reference guide describes the low-level service API for Amazon
%% GameLift and provides links to language-specific SDK reference topics. See
%% also <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-components.html">
%% Amazon GameLift Tools and Resources</a>.
%%
%% <b>API Summary</b>
%%
%% The Amazon GameLift service API includes two key sets of actions:
%%
%% <ul> <li> Manage game sessions and player access -- Integrate this
%% functionality into game client services in order to create new game
%% sessions, retrieve information on existing game sessions; reserve a player
%% slot in a game session, request matchmaking, etc.
%%
%% </li> <li> Configure and manage game server resources -- Manage your
%% Amazon GameLift hosting resources, including builds, scripts, fleets,
%% queues, and aliases. Set up matchmakers, configure auto-scaling, retrieve
%% game logs, and get hosting and game metrics.
%%
%% </li> </ul> <b> <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html">
%% Task-based list of API actions</a> </b>
-module(aws_gamelift).

-export([accept_match/2,
         accept_match/3,
         claim_game_server/2,
         claim_game_server/3,
         create_alias/2,
         create_alias/3,
         create_build/2,
         create_build/3,
         create_fleet/2,
         create_fleet/3,
         create_game_server_group/2,
         create_game_server_group/3,
         create_game_session/2,
         create_game_session/3,
         create_game_session_queue/2,
         create_game_session_queue/3,
         create_matchmaking_configuration/2,
         create_matchmaking_configuration/3,
         create_matchmaking_rule_set/2,
         create_matchmaking_rule_set/3,
         create_player_session/2,
         create_player_session/3,
         create_player_sessions/2,
         create_player_sessions/3,
         create_script/2,
         create_script/3,
         create_vpc_peering_authorization/2,
         create_vpc_peering_authorization/3,
         create_vpc_peering_connection/2,
         create_vpc_peering_connection/3,
         delete_alias/2,
         delete_alias/3,
         delete_build/2,
         delete_build/3,
         delete_fleet/2,
         delete_fleet/3,
         delete_game_server_group/2,
         delete_game_server_group/3,
         delete_game_session_queue/2,
         delete_game_session_queue/3,
         delete_matchmaking_configuration/2,
         delete_matchmaking_configuration/3,
         delete_matchmaking_rule_set/2,
         delete_matchmaking_rule_set/3,
         delete_scaling_policy/2,
         delete_scaling_policy/3,
         delete_script/2,
         delete_script/3,
         delete_vpc_peering_authorization/2,
         delete_vpc_peering_authorization/3,
         delete_vpc_peering_connection/2,
         delete_vpc_peering_connection/3,
         deregister_game_server/2,
         deregister_game_server/3,
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
         describe_game_server/2,
         describe_game_server/3,
         describe_game_server_group/2,
         describe_game_server_group/3,
         describe_game_session_details/2,
         describe_game_session_details/3,
         describe_game_session_placement/2,
         describe_game_session_placement/3,
         describe_game_session_queues/2,
         describe_game_session_queues/3,
         describe_game_sessions/2,
         describe_game_sessions/3,
         describe_instances/2,
         describe_instances/3,
         describe_matchmaking/2,
         describe_matchmaking/3,
         describe_matchmaking_configurations/2,
         describe_matchmaking_configurations/3,
         describe_matchmaking_rule_sets/2,
         describe_matchmaking_rule_sets/3,
         describe_player_sessions/2,
         describe_player_sessions/3,
         describe_runtime_configuration/2,
         describe_runtime_configuration/3,
         describe_scaling_policies/2,
         describe_scaling_policies/3,
         describe_script/2,
         describe_script/3,
         describe_vpc_peering_authorizations/2,
         describe_vpc_peering_authorizations/3,
         describe_vpc_peering_connections/2,
         describe_vpc_peering_connections/3,
         get_game_session_log_url/2,
         get_game_session_log_url/3,
         get_instance_access/2,
         get_instance_access/3,
         list_aliases/2,
         list_aliases/3,
         list_builds/2,
         list_builds/3,
         list_fleets/2,
         list_fleets/3,
         list_game_server_groups/2,
         list_game_server_groups/3,
         list_game_servers/2,
         list_game_servers/3,
         list_scripts/2,
         list_scripts/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         put_scaling_policy/2,
         put_scaling_policy/3,
         register_game_server/2,
         register_game_server/3,
         request_upload_credentials/2,
         request_upload_credentials/3,
         resolve_alias/2,
         resolve_alias/3,
         resume_game_server_group/2,
         resume_game_server_group/3,
         search_game_sessions/2,
         search_game_sessions/3,
         start_fleet_actions/2,
         start_fleet_actions/3,
         start_game_session_placement/2,
         start_game_session_placement/3,
         start_match_backfill/2,
         start_match_backfill/3,
         start_matchmaking/2,
         start_matchmaking/3,
         stop_fleet_actions/2,
         stop_fleet_actions/3,
         stop_game_session_placement/2,
         stop_game_session_placement/3,
         stop_matchmaking/2,
         stop_matchmaking/3,
         suspend_game_server_group/2,
         suspend_game_server_group/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
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
         update_game_server/2,
         update_game_server/3,
         update_game_server_group/2,
         update_game_server_group/3,
         update_game_session/2,
         update_game_session/3,
         update_game_session_queue/2,
         update_game_session_queue/3,
         update_matchmaking_configuration/2,
         update_matchmaking_configuration/3,
         update_runtime_configuration/2,
         update_runtime_configuration/3,
         update_script/2,
         update_script/3,
         validate_matchmaking_rule_set/2,
         validate_matchmaking_rule_set/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Registers a player's acceptance or rejection of a proposed FlexMatch
%% match. A matchmaking configuration may require player acceptance; if so,
%% then matches built with that configuration cannot be completed unless all
%% players accept the proposed match within a specified time limit.
%%
%% When FlexMatch builds a match, all the matchmaking tickets involved in the
%% proposed match are placed into status <code>REQUIRES_ACCEPTANCE</code>.
%% This is a trigger for your game to get acceptance from all players in the
%% ticket. Acceptances are only valid for tickets when they are in this
%% status; all other acceptances result in an error.
%%
%% To register acceptance, specify the ticket ID, a response, and one or more
%% players. Once all players have registered acceptance, the matchmaking
%% tickets advance to status <code>PLACING</code>, where a new game session
%% is created for the match.
%%
%% If any player rejects the match, or if acceptances are not received before
%% a specified timeout, the proposed match is dropped. The matchmaking
%% tickets are then handled in one of two ways: For tickets where one or more
%% players rejected the match, the ticket status is returned to
%% <code>SEARCHING</code> to find a new match. For tickets where one or more
%% players failed to respond, the ticket status is set to
%% <code>CANCELLED</code>, and processing is terminated. A new matchmaking
%% request for these players can be submitted as needed.
%%
%% <b>Learn more</b>
%%
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/match-client.html">
%% Add FlexMatch to a Game Client</a>
%%
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/match-events.html">
%% FlexMatch Events Reference</a>
%%
%% <b>Related operations</b>
%%
%% <ul> <li> <a>StartMatchmaking</a>
%%
%% </li> <li> <a>DescribeMatchmaking</a>
%%
%% </li> <li> <a>StopMatchmaking</a>
%%
%% </li> <li> <a>AcceptMatch</a>
%%
%% </li> <li> <a>StartMatchBackfill</a>
%%
%% </li> </ul>
accept_match(Client, Input)
  when is_map(Client), is_map(Input) ->
    accept_match(Client, Input, []).
accept_match(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AcceptMatch">>, Input, Options).

%% @doc <b>This action is part of Amazon GameLift FleetIQ with game server
%% groups, which is in preview release and is subject to change.</b>
%%
%% Locates an available game server and temporarily reserves it to host
%% gameplay and players. This action is called by a game client or client
%% service (such as a matchmaker) to request hosting resources for a new game
%% session. In response, GameLift FleetIQ searches for an available game
%% server in the specified game server group, places the game server in
%% "claimed" status for 60 seconds, and returns connection information back
%% to the requester so that players can connect to the game server.
%%
%% There are two ways you can claim a game server. For the first option, you
%% provide a game server group ID only, which prompts GameLift FleetIQ to
%% search for an available game server in the specified group and claim it.
%% With this option, GameLift FleetIQ attempts to consolidate gameplay on as
%% few instances as possible to minimize hosting costs. For the second
%% option, you request a specific game server by its ID. This option results
%% in a less efficient claiming process because it does not take advantage of
%% consolidation and may fail if the requested game server is unavailable.
%%
%% To claim a game server, identify a game server group and (optionally) a
%% game server ID. If your game requires that game data be provided to the
%% game server at the start of a game, such as a game map or player
%% information, you can provide it in your claim request.
%%
%% When a game server is successfully claimed, connection information is
%% returned. A claimed game server's utilization status remains AVAILABLE,
%% while the claim status is set to CLAIMED for up to 60 seconds. This time
%% period allows the game server to be prompted to update its status to
%% UTILIZED (using <a>UpdateGameServer</a>). If the game server's status is
%% not updated within 60 seconds, the game server reverts to unclaimed status
%% and is available to be claimed by another request.
%%
%% If you try to claim a specific game server, this request will fail in the
%% following cases: (1) if the game server utilization status is UTILIZED,
%% (2) if the game server claim status is CLAIMED, or (3) if the instance
%% that the game server is running on is flagged as draining.
%%
%% <b>Learn more</b>
%%
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gsg-intro.html">GameLift
%% FleetIQ Guide</a>
%%
%% <b>Related operations</b>
%%
%% <ul> <li> <a>RegisterGameServer</a>
%%
%% </li> <li> <a>ListGameServers</a>
%%
%% </li> <li> <a>ClaimGameServer</a>
%%
%% </li> <li> <a>DescribeGameServer</a>
%%
%% </li> <li> <a>UpdateGameServer</a>
%%
%% </li> <li> <a>DeregisterGameServer</a>
%%
%% </li> </ul>
claim_game_server(Client, Input)
  when is_map(Client), is_map(Input) ->
    claim_game_server(Client, Input, []).
claim_game_server(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ClaimGameServer">>, Input, Options).

%% @doc Creates an alias for a fleet. In most situations, you can use an
%% alias ID in place of a fleet ID. An alias provides a level of abstraction
%% for a fleet that is useful when redirecting player traffic from one fleet
%% to another, such as when updating your game build.
%%
%% Amazon GameLift supports two types of routing strategies for aliases:
%% simple and terminal. A simple alias points to an active fleet. A terminal
%% alias is used to display messaging or link to a URL instead of routing
%% players to an active fleet. For example, you might use a terminal alias
%% when a game version is no longer supported and you want to direct players
%% to an upgrade site.
%%
%% To create a fleet alias, specify an alias name, routing strategy, and
%% optional description. Each simple alias can point to only one fleet, but a
%% fleet can have multiple aliases. If successful, a new alias record is
%% returned, including an alias ID and an ARN. You can reassign an alias to
%% another fleet by calling <code>UpdateAlias</code>.
%%
%% <ul> <li> <a>CreateAlias</a>
%%
%% </li> <li> <a>ListAliases</a>
%%
%% </li> <li> <a>DescribeAlias</a>
%%
%% </li> <li> <a>UpdateAlias</a>
%%
%% </li> <li> <a>DeleteAlias</a>
%%
%% </li> <li> <a>ResolveAlias</a>
%%
%% </li> </ul>
create_alias(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_alias(Client, Input, []).
create_alias(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAlias">>, Input, Options).

%% @doc Creates a new Amazon GameLift build resource for your game server
%% binary files. Game server binaries must be combined into a zip file for
%% use with Amazon GameLift.
%%
%% <important> When setting up a new game build for GameLift, we recommend
%% using the AWS CLI command <b> <a
%% href="https://docs.aws.amazon.com/cli/latest/reference/gamelift/upload-build.html">upload-build</a>
%% </b>. This helper command combines two tasks: (1) it uploads your build
%% files from a file directory to a GameLift Amazon S3 location, and (2) it
%% creates a new build resource.
%%
%% </important> The <code>CreateBuild</code> operation can used in the
%% following scenarios:
%%
%% <ul> <li> To create a new game build with build files that are in an S3
%% location under an AWS account that you control. To use this option, you
%% must first give Amazon GameLift access to the S3 bucket. With permissions
%% in place, call <code>CreateBuild</code> and specify a build name,
%% operating system, and the S3 storage location of your game build.
%%
%% </li> <li> To directly upload your build files to a GameLift S3 location.
%% To use this option, first call <code>CreateBuild</code> and specify a
%% build name and operating system. This action creates a new build resource
%% and also returns an S3 location with temporary access credentials. Use the
%% credentials to manually upload your build files to the specified S3
%% location. For more information, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/UploadingObjects.html">Uploading
%% Objects</a> in the <i>Amazon S3 Developer Guide</i>. Build files can be
%% uploaded to the GameLift S3 location once only; that can't be updated.
%%
%% </li> </ul> If successful, this operation creates a new build resource
%% with a unique build ID and places it in <code>INITIALIZED</code> status. A
%% build must be in <code>READY</code> status before you can create fleets
%% with it.
%%
%% <b>Learn more</b>
%%
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-intro.html">Uploading
%% Your Game</a>
%%
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-cli-uploading.html#gamelift-build-cli-uploading-create-build">
%% Create a Build with Files in Amazon S3</a>
%%
%% <b>Related operations</b>
%%
%% <ul> <li> <a>CreateBuild</a>
%%
%% </li> <li> <a>ListBuilds</a>
%%
%% </li> <li> <a>DescribeBuild</a>
%%
%% </li> <li> <a>UpdateBuild</a>
%%
%% </li> <li> <a>DeleteBuild</a>
%%
%% </li> </ul>
create_build(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_build(Client, Input, []).
create_build(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateBuild">>, Input, Options).

%% @doc Creates a new fleet to run your game servers. whether they are custom
%% game builds or Realtime Servers with game-specific script. A fleet is a
%% set of Amazon Elastic Compute Cloud (Amazon EC2) instances, each of which
%% can host multiple game sessions. When creating a fleet, you choose the
%% hardware specifications, set some configuration options, and specify the
%% game server to deploy on the new fleet.
%%
%% To create a new fleet, provide the following: (1) a fleet name, (2) an EC2
%% instance type and fleet type (spot or on-demand), (3) the build ID for
%% your game build or script ID if using Realtime Servers, and (4) a runtime
%% configuration, which determines how game servers will run on each instance
%% in the fleet.
%%
%% If the <code>CreateFleet</code> call is successful, Amazon GameLift
%% performs the following tasks. You can track the process of a fleet by
%% checking the fleet status or by monitoring fleet creation events:
%%
%% <ul> <li> Creates a fleet resource. Status: <code>NEW</code>.
%%
%% </li> <li> Begins writing events to the fleet event log, which can be
%% accessed in the Amazon GameLift console.
%%
%% </li> <li> Sets the fleet's target capacity to 1 (desired instances),
%% which triggers Amazon GameLift to start one new EC2 instance.
%%
%% </li> <li> Downloads the game build or Realtime script to the new instance
%% and installs it. Statuses: <code>DOWNLOADING</code>,
%% <code>VALIDATING</code>, <code>BUILDING</code>.
%%
%% </li> <li> Starts launching server processes on the instance. If the fleet
%% is configured to run multiple server processes per instance, Amazon
%% GameLift staggers each process launch by a few seconds. Status:
%% <code>ACTIVATING</code>.
%%
%% </li> <li> Sets the fleet's status to <code>ACTIVE</code> as soon as one
%% server process is ready to host a game session.
%%
%% </li> </ul> <b>Learn more</b>
%%
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html">Setting
%% Up Fleets</a>
%%
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-creating-debug.html#fleets-creating-debug-creation">Debug
%% Fleet Creation Issues</a>
%%
%% <b>Related operations</b>
%%
%% <ul> <li> <a>CreateFleet</a>
%%
%% </li> <li> <a>ListFleets</a>
%%
%% </li> <li> <a>DeleteFleet</a>
%%
%% </li> <li> <a>DescribeFleetAttributes</a>
%%
%% </li> <li> <a>UpdateFleetAttributes</a>
%%
%% </li> <li> <a>StartFleetActions</a> or <a>StopFleetActions</a>
%%
%% </li> </ul>
create_fleet(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_fleet(Client, Input, []).
create_fleet(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateFleet">>, Input, Options).

%% @doc <b>This action is part of Amazon GameLift FleetIQ with game server
%% groups, which is in preview release and is subject to change.</b>
%%
%% Creates a GameLift FleetIQ game server group to manage a collection of EC2
%% instances for game hosting. In addition to creating the game server group,
%% this action also creates an Auto Scaling group in your AWS account and
%% establishes a link between the two groups. You have full control over
%% configuration of the Auto Scaling group, but GameLift FleetIQ routinely
%% certain Auto Scaling group properties in order to optimize the group's
%% instances for low-cost game hosting. You can view the status of your game
%% server groups in the GameLift Console. Game server group metrics and
%% events are emitted to Amazon CloudWatch.
%%
%% Prior creating a new game server group, you must set up the following:
%%
%% <ul> <li> An EC2 launch template. The template provides configuration
%% settings for a set of EC2 instances and includes the game server build
%% that you want to deploy and run on each instance. For more information on
%% creating a launch template, see <a
%% href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html">
%% Launching an Instance from a Launch Template</a> in the <i>Amazon EC2 User
%% Guide</i>.
%%
%% </li> <li> An IAM role. The role sets up limited access to your AWS
%% account, allowing GameLift FleetIQ to create and manage the EC2 Auto
%% Scaling group, get instance data, and emit metrics and events to
%% CloudWatch. For more information on setting up an IAM permissions policy
%% with principal access for GameLift, see <a
%% href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-bucket-user-policy-specifying-principal-intro.html">
%% Specifying a Principal in a Policy</a> in the <i>Amazon S3 Developer
%% Guide</i>.
%%
%% </li> </ul> To create a new game server group, provide a name and specify
%% the IAM role and EC2 launch template. You also need to provide a list of
%% instance types to be used in the group and set initial maximum and minimum
%% limits on the group's instance count. You can optionally set an
%% autoscaling policy with target tracking based on a GameLift FleetIQ
%% metric.
%%
%% Once the game server group and corresponding Auto Scaling group are
%% created, you have full access to change the Auto Scaling group's
%% configuration as needed. Keep in mind, however, that some properties are
%% periodically updated by GameLift FleetIQ as it balances the group's
%% instances based on availability and cost.
%%
%% <b>Learn more</b>
%%
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gsg-intro.html">GameLift
%% FleetIQ Guide</a>
%%
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gsg-asgroups.html">Updating
%% a GameLift FleetIQ-Linked Auto Scaling Group</a>
%%
%% <b>Related operations</b>
%%
%% <ul> <li> <a>CreateGameServerGroup</a>
%%
%% </li> <li> <a>ListGameServerGroups</a>
%%
%% </li> <li> <a>DescribeGameServerGroup</a>
%%
%% </li> <li> <a>UpdateGameServerGroup</a>
%%
%% </li> <li> <a>DeleteGameServerGroup</a>
%%
%% </li> <li> <a>ResumeGameServerGroup</a>
%%
%% </li> <li> <a>SuspendGameServerGroup</a>
%%
%% </li> </ul>
create_game_server_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_game_server_group(Client, Input, []).
create_game_server_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateGameServerGroup">>, Input, Options).

%% @doc Creates a multiplayer game session for players. This action creates a
%% game session record and assigns an available server process in the
%% specified fleet to host the game session. A fleet must have an
%% <code>ACTIVE</code> status before a game session can be created in it.
%%
%% To create a game session, specify either fleet ID or alias ID and indicate
%% a maximum number of players to allow in the game session. You can also
%% provide a name and game-specific properties for this game session. If
%% successful, a <a>GameSession</a> object is returned containing the game
%% session properties and other settings you specified.
%%
%% <b>Idempotency tokens.</b> You can add a token that uniquely identifies
%% game session requests. This is useful for ensuring that game session
%% requests are idempotent. Multiple requests with the same idempotency token
%% are processed only once; subsequent requests return the original result.
%% All response values are the same with the exception of game session
%% status, which may change.
%%
%% <b>Resource creation limits.</b> If you are creating a game session on a
%% fleet with a resource creation limit policy in force, then you must
%% specify a creator ID. Without this ID, Amazon GameLift has no way to
%% evaluate the policy for this new game session request.
%%
%% <b>Player acceptance policy.</b> By default, newly created game sessions
%% are open to new players. You can restrict new player access by using
%% <a>UpdateGameSession</a> to change the game session's player session
%% creation policy.
%%
%% <b>Game session logs.</b> Logs are retained for all active game sessions
%% for 14 days. To access the logs, call <a>GetGameSessionLogUrl</a> to
%% download the log files.
%%
%% <i>Available in Amazon GameLift Local.</i>
%%
%% <ul> <li> <a>CreateGameSession</a>
%%
%% </li> <li> <a>DescribeGameSessions</a>
%%
%% </li> <li> <a>DescribeGameSessionDetails</a>
%%
%% </li> <li> <a>SearchGameSessions</a>
%%
%% </li> <li> <a>UpdateGameSession</a>
%%
%% </li> <li> <a>GetGameSessionLogUrl</a>
%%
%% </li> <li> Game session placements
%%
%% <ul> <li> <a>StartGameSessionPlacement</a>
%%
%% </li> <li> <a>DescribeGameSessionPlacement</a>
%%
%% </li> <li> <a>StopGameSessionPlacement</a>
%%
%% </li> </ul> </li> </ul>
create_game_session(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_game_session(Client, Input, []).
create_game_session(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateGameSession">>, Input, Options).

%% @doc Establishes a new queue for processing requests to place new game
%% sessions. A queue identifies where new game sessions can be hosted -- by
%% specifying a list of destinations (fleets or aliases) -- and how long
%% requests can wait in the queue before timing out. You can set up a queue
%% to try to place game sessions on fleets in multiple Regions. To add
%% placement requests to a queue, call <a>StartGameSessionPlacement</a> and
%% reference the queue name.
%%
%% <b>Destination order.</b> When processing a request for a game session,
%% Amazon GameLift tries each destination in order until it finds one with
%% available resources to host the new game session. A queue's default order
%% is determined by how destinations are listed. The default order is
%% overridden when a game session placement request provides player latency
%% information. Player latency information enables Amazon GameLift to
%% prioritize destinations where players report the lowest average latency,
%% as a result placing the new game session where the majority of players
%% will have the best possible gameplay experience.
%%
%% <b>Player latency policies.</b> For placement requests containing player
%% latency information, use player latency policies to protect individual
%% players from very high latencies. With a latency cap, even when a
%% destination can deliver a low latency for most players, the game is not
%% placed where any individual player is reporting latency higher than a
%% policy's maximum. A queue can have multiple latency policies, which are
%% enforced consecutively starting with the policy with the lowest latency
%% cap. Use multiple policies to gradually relax latency controls; for
%% example, you might set a policy with a low latency cap for the first 60
%% seconds, a second policy with a higher cap for the next 60 seconds, etc.
%%
%% To create a new queue, provide a name, timeout value, a list of
%% destinations and, if desired, a set of latency policies. If successful, a
%% new queue object is returned.
%%
%% <b>Learn more</b>
%%
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/queues-design.html">
%% Design a Game Session Queue</a>
%%
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/queues-creating.html">
%% Create a Game Session Queue</a>
%%
%% <b>Related operations</b>
%%
%% <ul> <li> <a>CreateGameSessionQueue</a>
%%
%% </li> <li> <a>DescribeGameSessionQueues</a>
%%
%% </li> <li> <a>UpdateGameSessionQueue</a>
%%
%% </li> <li> <a>DeleteGameSessionQueue</a>
%%
%% </li> </ul>
create_game_session_queue(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_game_session_queue(Client, Input, []).
create_game_session_queue(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateGameSessionQueue">>, Input, Options).

%% @doc Defines a new matchmaking configuration for use with FlexMatch. A
%% matchmaking configuration sets out guidelines for matching players and
%% getting the matches into games. You can set up multiple matchmaking
%% configurations to handle the scenarios needed for your game. Each
%% matchmaking ticket (<a>StartMatchmaking</a> or <a>StartMatchBackfill</a>)
%% specifies a configuration for the match and provides player attributes to
%% support the configuration being used.
%%
%% To create a matchmaking configuration, at a minimum you must specify the
%% following: configuration name; a rule set that governs how to evaluate
%% players and find acceptable matches; a game session queue to use when
%% placing a new game session for the match; and the maximum time allowed for
%% a matchmaking attempt.
%%
%% There are two ways to track the progress of matchmaking tickets: (1)
%% polling ticket status with <a>DescribeMatchmaking</a>; or (2) receiving
%% notifications with Amazon Simple Notification Service (SNS). To use
%% notifications, you first need to set up an SNS topic to receive the
%% notifications, and provide the topic ARN in the matchmaking configuration.
%% Since notifications promise only "best effort" delivery, we recommend
%% calling <code>DescribeMatchmaking</code> if no notifications are received
%% within 30 seconds.
%%
%% <b>Learn more</b>
%%
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/match-configuration.html">
%% Design a FlexMatch Matchmaker</a>
%%
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/match-notification.html">
%% Setting up Notifications for Matchmaking</a>
%%
%% <b>Related operations</b>
%%
%% <ul> <li> <a>CreateMatchmakingConfiguration</a>
%%
%% </li> <li> <a>DescribeMatchmakingConfigurations</a>
%%
%% </li> <li> <a>UpdateMatchmakingConfiguration</a>
%%
%% </li> <li> <a>DeleteMatchmakingConfiguration</a>
%%
%% </li> <li> <a>CreateMatchmakingRuleSet</a>
%%
%% </li> <li> <a>DescribeMatchmakingRuleSets</a>
%%
%% </li> <li> <a>ValidateMatchmakingRuleSet</a>
%%
%% </li> <li> <a>DeleteMatchmakingRuleSet</a>
%%
%% </li> </ul>
create_matchmaking_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_matchmaking_configuration(Client, Input, []).
create_matchmaking_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateMatchmakingConfiguration">>, Input, Options).

%% @doc Creates a new rule set for FlexMatch matchmaking. A rule set
%% describes the type of match to create, such as the number and size of
%% teams. It also sets the parameters for acceptable player matches, such as
%% minimum skill level or character type. A rule set is used by a
%% <a>MatchmakingConfiguration</a>.
%%
%% To create a matchmaking rule set, provide unique rule set name and the
%% rule set body in JSON format. Rule sets must be defined in the same Region
%% as the matchmaking configuration they are used with.
%%
%% Since matchmaking rule sets cannot be edited, it is a good idea to check
%% the rule set syntax using <a>ValidateMatchmakingRuleSet</a> before
%% creating a new rule set.
%%
%% <b>Learn more</b>
%%
%% <ul> <li> <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/match-rulesets.html">Build
%% a Rule Set</a>
%%
%% </li> <li> <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/match-configuration.html">Design
%% a Matchmaker</a>
%%
%% </li> <li> <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/match-intro.html">Matchmaking
%% with FlexMatch</a>
%%
%% </li> </ul> <b>Related operations</b>
%%
%% <ul> <li> <a>CreateMatchmakingConfiguration</a>
%%
%% </li> <li> <a>DescribeMatchmakingConfigurations</a>
%%
%% </li> <li> <a>UpdateMatchmakingConfiguration</a>
%%
%% </li> <li> <a>DeleteMatchmakingConfiguration</a>
%%
%% </li> <li> <a>CreateMatchmakingRuleSet</a>
%%
%% </li> <li> <a>DescribeMatchmakingRuleSets</a>
%%
%% </li> <li> <a>ValidateMatchmakingRuleSet</a>
%%
%% </li> <li> <a>DeleteMatchmakingRuleSet</a>
%%
%% </li> </ul>
create_matchmaking_rule_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_matchmaking_rule_set(Client, Input, []).
create_matchmaking_rule_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateMatchmakingRuleSet">>, Input, Options).

%% @doc Reserves an open player slot in an active game session. Before a
%% player can be added, a game session must have an <code>ACTIVE</code>
%% status, have a creation policy of <code>ALLOW_ALL</code>, and have an open
%% player slot. To add a group of players to a game session, use
%% <a>CreatePlayerSessions</a>. When the player connects to the game server
%% and references a player session ID, the game server contacts the Amazon
%% GameLift service to validate the player reservation and accept the player.
%%
%% To create a player session, specify a game session ID, player ID, and
%% optionally a string of player data. If successful, a slot is reserved in
%% the game session for the player and a new <a>PlayerSession</a> object is
%% returned. Player sessions cannot be updated.
%%
%% <i>Available in Amazon GameLift Local.</i>
%%
%% <ul> <li> <a>CreatePlayerSession</a>
%%
%% </li> <li> <a>CreatePlayerSessions</a>
%%
%% </li> <li> <a>DescribePlayerSessions</a>
%%
%% </li> <li> Game session placements
%%
%% <ul> <li> <a>StartGameSessionPlacement</a>
%%
%% </li> <li> <a>DescribeGameSessionPlacement</a>
%%
%% </li> <li> <a>StopGameSessionPlacement</a>
%%
%% </li> </ul> </li> </ul>
create_player_session(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_player_session(Client, Input, []).
create_player_session(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePlayerSession">>, Input, Options).

%% @doc Reserves open slots in a game session for a group of players. Before
%% players can be added, a game session must have an <code>ACTIVE</code>
%% status, have a creation policy of <code>ALLOW_ALL</code>, and have an open
%% player slot. To add a single player to a game session, use
%% <a>CreatePlayerSession</a>. When a player connects to the game server and
%% references a player session ID, the game server contacts the Amazon
%% GameLift service to validate the player reservation and accept the player.
%%
%% To create player sessions, specify a game session ID, a list of player
%% IDs, and optionally a set of player data strings. If successful, a slot is
%% reserved in the game session for each player and a set of new
%% <a>PlayerSession</a> objects is returned. Player sessions cannot be
%% updated.
%%
%% <i>Available in Amazon GameLift Local.</i>
%%
%% <ul> <li> <a>CreatePlayerSession</a>
%%
%% </li> <li> <a>CreatePlayerSessions</a>
%%
%% </li> <li> <a>DescribePlayerSessions</a>
%%
%% </li> <li> Game session placements
%%
%% <ul> <li> <a>StartGameSessionPlacement</a>
%%
%% </li> <li> <a>DescribeGameSessionPlacement</a>
%%
%% </li> <li> <a>StopGameSessionPlacement</a>
%%
%% </li> </ul> </li> </ul>
create_player_sessions(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_player_sessions(Client, Input, []).
create_player_sessions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePlayerSessions">>, Input, Options).

%% @doc Creates a new script record for your Realtime Servers script.
%% Realtime scripts are JavaScript that provide configuration settings and
%% optional custom game logic for your game. The script is deployed when you
%% create a Realtime Servers fleet to host your game sessions. Script logic
%% is executed during an active game session.
%%
%% To create a new script record, specify a script name and provide the
%% script file(s). The script files and all dependencies must be zipped into
%% a single file. You can pull the zip file from either of these locations:
%%
%% <ul> <li> A locally available directory. Use the <i>ZipFile</i> parameter
%% for this option.
%%
%% </li> <li> An Amazon Simple Storage Service (Amazon S3) bucket under your
%% AWS account. Use the <i>StorageLocation</i> parameter for this option.
%% You'll need to have an Identity Access Management (IAM) role that allows
%% the Amazon GameLift service to access your S3 bucket.
%%
%% </li> </ul> If the call is successful, a new script record is created with
%% a unique script ID. If the script file is provided as a local file, the
%% file is uploaded to an Amazon GameLift-owned S3 bucket and the script
%% record's storage location reflects this location. If the script file is
%% provided as an S3 bucket, Amazon GameLift accesses the file at this
%% storage location as needed for deployment.
%%
%% <b>Learn more</b>
%%
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/realtime-intro.html">Amazon
%% GameLift Realtime Servers</a>
%%
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/setting-up-role.html">Set
%% Up a Role for Amazon GameLift Access</a>
%%
%% <b>Related operations</b>
%%
%% <ul> <li> <a>CreateScript</a>
%%
%% </li> <li> <a>ListScripts</a>
%%
%% </li> <li> <a>DescribeScript</a>
%%
%% </li> <li> <a>UpdateScript</a>
%%
%% </li> <li> <a>DeleteScript</a>
%%
%% </li> </ul>
create_script(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_script(Client, Input, []).
create_script(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateScript">>, Input, Options).

%% @doc Requests authorization to create or delete a peer connection between
%% the VPC for your Amazon GameLift fleet and a virtual private cloud (VPC)
%% in your AWS account. VPC peering enables the game servers on your fleet to
%% communicate directly with other AWS resources. Once you've received
%% authorization, call <a>CreateVpcPeeringConnection</a> to establish the
%% peering connection. For more information, see <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html">VPC
%% Peering with Amazon GameLift Fleets</a>.
%%
%% You can peer with VPCs that are owned by any AWS account you have access
%% to, including the account that you use to manage your Amazon GameLift
%% fleets. You cannot peer with VPCs that are in different Regions.
%%
%% To request authorization to create a connection, call this operation from
%% the AWS account with the VPC that you want to peer to your Amazon GameLift
%% fleet. For example, to enable your game servers to retrieve data from a
%% DynamoDB table, use the account that manages that DynamoDB resource.
%% Identify the following values: (1) The ID of the VPC that you want to peer
%% with, and (2) the ID of the AWS account that you use to manage Amazon
%% GameLift. If successful, VPC peering is authorized for the specified VPC.
%%
%% To request authorization to delete a connection, call this operation from
%% the AWS account with the VPC that is peered with your Amazon GameLift
%% fleet. Identify the following values: (1) VPC ID that you want to delete
%% the peering connection for, and (2) ID of the AWS account that you use to
%% manage Amazon GameLift.
%%
%% The authorization remains valid for 24 hours unless it is canceled by a
%% call to <a>DeleteVpcPeeringAuthorization</a>. You must create or delete
%% the peering connection while the authorization is valid.
%%
%% <ul> <li> <a>CreateVpcPeeringAuthorization</a>
%%
%% </li> <li> <a>DescribeVpcPeeringAuthorizations</a>
%%
%% </li> <li> <a>DeleteVpcPeeringAuthorization</a>
%%
%% </li> <li> <a>CreateVpcPeeringConnection</a>
%%
%% </li> <li> <a>DescribeVpcPeeringConnections</a>
%%
%% </li> <li> <a>DeleteVpcPeeringConnection</a>
%%
%% </li> </ul>
create_vpc_peering_authorization(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_vpc_peering_authorization(Client, Input, []).
create_vpc_peering_authorization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateVpcPeeringAuthorization">>, Input, Options).

%% @doc Establishes a VPC peering connection between a virtual private cloud
%% (VPC) in an AWS account with the VPC for your Amazon GameLift fleet. VPC
%% peering enables the game servers on your fleet to communicate directly
%% with other AWS resources. You can peer with VPCs in any AWS account that
%% you have access to, including the account that you use to manage your
%% Amazon GameLift fleets. You cannot peer with VPCs that are in different
%% Regions. For more information, see <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html">VPC
%% Peering with Amazon GameLift Fleets</a>.
%%
%% Before calling this operation to establish the peering connection, you
%% first need to call <a>CreateVpcPeeringAuthorization</a> and identify the
%% VPC you want to peer with. Once the authorization for the specified VPC is
%% issued, you have 24 hours to establish the connection. These two
%% operations handle all tasks necessary to peer the two VPCs, including
%% acceptance, updating routing tables, etc.
%%
%% To establish the connection, call this operation from the AWS account that
%% is used to manage the Amazon GameLift fleets. Identify the following
%% values: (1) The ID of the fleet you want to be enable a VPC peering
%% connection for; (2) The AWS account with the VPC that you want to peer
%% with; and (3) The ID of the VPC you want to peer with. This operation is
%% asynchronous. If successful, a <a>VpcPeeringConnection</a> request is
%% created. You can use continuous polling to track the request's status
%% using <a>DescribeVpcPeeringConnections</a>, or by monitoring fleet events
%% for success or failure using <a>DescribeFleetEvents</a>.
%%
%% <ul> <li> <a>CreateVpcPeeringAuthorization</a>
%%
%% </li> <li> <a>DescribeVpcPeeringAuthorizations</a>
%%
%% </li> <li> <a>DeleteVpcPeeringAuthorization</a>
%%
%% </li> <li> <a>CreateVpcPeeringConnection</a>
%%
%% </li> <li> <a>DescribeVpcPeeringConnections</a>
%%
%% </li> <li> <a>DeleteVpcPeeringConnection</a>
%%
%% </li> </ul>
create_vpc_peering_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_vpc_peering_connection(Client, Input, []).
create_vpc_peering_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateVpcPeeringConnection">>, Input, Options).

%% @doc Deletes an alias. This action removes all record of the alias. Game
%% clients attempting to access a server process using the deleted alias
%% receive an error. To delete an alias, specify the alias ID to be deleted.
%%
%% <ul> <li> <a>CreateAlias</a>
%%
%% </li> <li> <a>ListAliases</a>
%%
%% </li> <li> <a>DescribeAlias</a>
%%
%% </li> <li> <a>UpdateAlias</a>
%%
%% </li> <li> <a>DeleteAlias</a>
%%
%% </li> <li> <a>ResolveAlias</a>
%%
%% </li> </ul>
delete_alias(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_alias(Client, Input, []).
delete_alias(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAlias">>, Input, Options).

%% @doc Deletes a build. This action permanently deletes the build resource
%% and any uploaded build files. Deleting a build does not affect the status
%% of any active fleets using the build, but you can no longer create new
%% fleets with the deleted build.
%%
%% To delete a build, specify the build ID.
%%
%% <b>Learn more</b>
%%
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-intro.html">
%% Upload a Custom Server Build</a>
%%
%% <b>Related operations</b>
%%
%% <ul> <li> <a>CreateBuild</a>
%%
%% </li> <li> <a>ListBuilds</a>
%%
%% </li> <li> <a>DescribeBuild</a>
%%
%% </li> <li> <a>UpdateBuild</a>
%%
%% </li> <li> <a>DeleteBuild</a>
%%
%% </li> </ul>
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
%% If the fleet being deleted has a VPC peering connection, you first need to
%% get a valid authorization (good for 24 hours) by calling
%% <a>CreateVpcPeeringAuthorization</a>. You do not need to explicitly delete
%% the VPC peering connection--this is done as part of the delete fleet
%% process.
%%
%% This action removes the fleet and its resources. Once a fleet is deleted,
%% you can no longer use any of the resource in that fleet.
%%
%% <b>Learn more</b>
%%
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html">Setting
%% up GameLift Fleets</a>
%%
%% <b>Related operations</b>
%%
%% <ul> <li> <a>CreateFleet</a>
%%
%% </li> <li> <a>ListFleets</a>
%%
%% </li> <li> <a>DeleteFleet</a>
%%
%% </li> <li> <a>DescribeFleetAttributes</a>
%%
%% </li> <li> <a>UpdateFleetAttributes</a>
%%
%% </li> <li> <a>StartFleetActions</a> or <a>StopFleetActions</a>
%%
%% </li> </ul>
delete_fleet(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_fleet(Client, Input, []).
delete_fleet(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteFleet">>, Input, Options).

%% @doc <b>This action is part of Amazon GameLift FleetIQ with game server
%% groups, which is in preview release and is subject to change.</b>
%%
%% Terminates a game server group and permanently deletes the game server
%% group record. You have several options for how these resources are
%% impacted when deleting the game server group. Depending on the type of
%% delete action selected, this action may affect three types of resources:
%% the game server group, the corresponding Auto Scaling group, and all game
%% servers currently running in the group.
%%
%% To delete a game server group, identify the game server group to delete
%% and specify the type of delete action to initiate. Game server groups can
%% only be deleted if they are in ACTIVE or ERROR status.
%%
%% If the delete request is successful, a series of actions are kicked off.
%% The game server group status is changed to DELETE_SCHEDULED, which
%% prevents new game servers from being registered and stops autoscaling
%% activity. Once all game servers in the game server group are
%% de-registered, GameLift FleetIQ can begin deleting resources. If any of
%% the delete actions fail, the game server group is placed in ERROR status.
%%
%% GameLift FleetIQ emits delete events to Amazon CloudWatch.
%%
%% <b>Learn more</b>
%%
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gsg-intro.html">GameLift
%% FleetIQ Guide</a>
%%
%% <b>Related operations</b>
%%
%% <ul> <li> <a>CreateGameServerGroup</a>
%%
%% </li> <li> <a>ListGameServerGroups</a>
%%
%% </li> <li> <a>DescribeGameServerGroup</a>
%%
%% </li> <li> <a>UpdateGameServerGroup</a>
%%
%% </li> <li> <a>DeleteGameServerGroup</a>
%%
%% </li> <li> <a>ResumeGameServerGroup</a>
%%
%% </li> <li> <a>SuspendGameServerGroup</a>
%%
%% </li> </ul>
delete_game_server_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_game_server_group(Client, Input, []).
delete_game_server_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteGameServerGroup">>, Input, Options).

%% @doc Deletes a game session queue. This action means that any
%% <a>StartGameSessionPlacement</a> requests that reference this queue will
%% fail. To delete a queue, specify the queue name.
%%
%% <b>Learn more</b>
%%
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/queues-intro.html">
%% Using Multi-Region Queues</a>
%%
%% <b>Related operations</b>
%%
%% <ul> <li> <a>CreateGameSessionQueue</a>
%%
%% </li> <li> <a>DescribeGameSessionQueues</a>
%%
%% </li> <li> <a>UpdateGameSessionQueue</a>
%%
%% </li> <li> <a>DeleteGameSessionQueue</a>
%%
%% </li> </ul>
delete_game_session_queue(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_game_session_queue(Client, Input, []).
delete_game_session_queue(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteGameSessionQueue">>, Input, Options).

%% @doc Permanently removes a FlexMatch matchmaking configuration. To delete,
%% specify the configuration name. A matchmaking configuration cannot be
%% deleted if it is being used in any active matchmaking tickets.
%%
%% <b>Related operations</b>
%%
%% <ul> <li> <a>CreateMatchmakingConfiguration</a>
%%
%% </li> <li> <a>DescribeMatchmakingConfigurations</a>
%%
%% </li> <li> <a>UpdateMatchmakingConfiguration</a>
%%
%% </li> <li> <a>DeleteMatchmakingConfiguration</a>
%%
%% </li> <li> <a>CreateMatchmakingRuleSet</a>
%%
%% </li> <li> <a>DescribeMatchmakingRuleSets</a>
%%
%% </li> <li> <a>ValidateMatchmakingRuleSet</a>
%%
%% </li> <li> <a>DeleteMatchmakingRuleSet</a>
%%
%% </li> </ul>
delete_matchmaking_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_matchmaking_configuration(Client, Input, []).
delete_matchmaking_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteMatchmakingConfiguration">>, Input, Options).

%% @doc Deletes an existing matchmaking rule set. To delete the rule set,
%% provide the rule set name. Rule sets cannot be deleted if they are
%% currently being used by a matchmaking configuration.
%%
%% <b>Learn more</b>
%%
%% <ul> <li> <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/match-rulesets.html">Build
%% a Rule Set</a>
%%
%% </li> </ul> <b>Related operations</b>
%%
%% <ul> <li> <a>CreateMatchmakingConfiguration</a>
%%
%% </li> <li> <a>DescribeMatchmakingConfigurations</a>
%%
%% </li> <li> <a>UpdateMatchmakingConfiguration</a>
%%
%% </li> <li> <a>DeleteMatchmakingConfiguration</a>
%%
%% </li> <li> <a>CreateMatchmakingRuleSet</a>
%%
%% </li> <li> <a>DescribeMatchmakingRuleSets</a>
%%
%% </li> <li> <a>ValidateMatchmakingRuleSet</a>
%%
%% </li> <li> <a>DeleteMatchmakingRuleSet</a>
%%
%% </li> </ul>
delete_matchmaking_rule_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_matchmaking_rule_set(Client, Input, []).
delete_matchmaking_rule_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteMatchmakingRuleSet">>, Input, Options).

%% @doc Deletes a fleet scaling policy. This action means that the policy is
%% no longer in force and removes all record of it. To delete a scaling
%% policy, specify both the scaling policy name and the fleet ID it is
%% associated with.
%%
%% To temporarily suspend scaling policies, call <a>StopFleetActions</a>.
%% This operation suspends all policies for the fleet.
%%
%% <ul> <li> <a>DescribeFleetCapacity</a>
%%
%% </li> <li> <a>UpdateFleetCapacity</a>
%%
%% </li> <li> <a>DescribeEC2InstanceLimits</a>
%%
%% </li> <li> Manage scaling policies:
%%
%% <ul> <li> <a>PutScalingPolicy</a> (auto-scaling)
%%
%% </li> <li> <a>DescribeScalingPolicies</a> (auto-scaling)
%%
%% </li> <li> <a>DeleteScalingPolicy</a> (auto-scaling)
%%
%% </li> </ul> </li> <li> Manage fleet actions:
%%
%% <ul> <li> <a>StartFleetActions</a>
%%
%% </li> <li> <a>StopFleetActions</a>
%%
%% </li> </ul> </li> </ul>
delete_scaling_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_scaling_policy(Client, Input, []).
delete_scaling_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteScalingPolicy">>, Input, Options).

%% @doc Deletes a Realtime script. This action permanently deletes the script
%% record. If script files were uploaded, they are also deleted (files stored
%% in an S3 bucket are not deleted).
%%
%% To delete a script, specify the script ID. Before deleting a script, be
%% sure to terminate all fleets that are deployed with the script being
%% deleted. Fleet instances periodically check for script updates, and if the
%% script record no longer exists, the instance will go into an error state
%% and be unable to host game sessions.
%%
%% <b>Learn more</b>
%%
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/realtime-intro.html">Amazon
%% GameLift Realtime Servers</a>
%%
%% <b>Related operations</b>
%%
%% <ul> <li> <a>CreateScript</a>
%%
%% </li> <li> <a>ListScripts</a>
%%
%% </li> <li> <a>DescribeScript</a>
%%
%% </li> <li> <a>UpdateScript</a>
%%
%% </li> <li> <a>DeleteScript</a>
%%
%% </li> </ul>
delete_script(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_script(Client, Input, []).
delete_script(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteScript">>, Input, Options).

%% @doc Cancels a pending VPC peering authorization for the specified VPC. If
%% you need to delete an existing VPC peering connection, call
%% <a>DeleteVpcPeeringConnection</a>.
%%
%% <ul> <li> <a>CreateVpcPeeringAuthorization</a>
%%
%% </li> <li> <a>DescribeVpcPeeringAuthorizations</a>
%%
%% </li> <li> <a>DeleteVpcPeeringAuthorization</a>
%%
%% </li> <li> <a>CreateVpcPeeringConnection</a>
%%
%% </li> <li> <a>DescribeVpcPeeringConnections</a>
%%
%% </li> <li> <a>DeleteVpcPeeringConnection</a>
%%
%% </li> </ul>
delete_vpc_peering_authorization(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_vpc_peering_authorization(Client, Input, []).
delete_vpc_peering_authorization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteVpcPeeringAuthorization">>, Input, Options).

%% @doc Removes a VPC peering connection. To delete the connection, you must
%% have a valid authorization for the VPC peering connection that you want to
%% delete. You can check for an authorization by calling
%% <a>DescribeVpcPeeringAuthorizations</a> or request a new one using
%% <a>CreateVpcPeeringAuthorization</a>.
%%
%% Once a valid authorization exists, call this operation from the AWS
%% account that is used to manage the Amazon GameLift fleets. Identify the
%% connection to delete by the connection ID and fleet ID. If successful, the
%% connection is removed.
%%
%% <ul> <li> <a>CreateVpcPeeringAuthorization</a>
%%
%% </li> <li> <a>DescribeVpcPeeringAuthorizations</a>
%%
%% </li> <li> <a>DeleteVpcPeeringAuthorization</a>
%%
%% </li> <li> <a>CreateVpcPeeringConnection</a>
%%
%% </li> <li> <a>DescribeVpcPeeringConnections</a>
%%
%% </li> <li> <a>DeleteVpcPeeringConnection</a>
%%
%% </li> </ul>
delete_vpc_peering_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_vpc_peering_connection(Client, Input, []).
delete_vpc_peering_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteVpcPeeringConnection">>, Input, Options).

%% @doc <b>This action is part of Amazon GameLift FleetIQ with game server
%% groups, which is in preview release and is subject to change.</b>
%%
%% Removes the game server resource from the game server group. As a result
%% of this action, the de-registered game server can no longer be claimed and
%% will not returned in a list of active game servers.
%%
%% To de-register a game server, specify the game server group and game
%% server ID. If successful, this action emits a CloudWatch event with
%% termination time stamp and reason.
%%
%% <b>Learn more</b>
%%
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gsg-intro.html">GameLift
%% FleetIQ Guide</a>
%%
%% <b>Related operations</b>
%%
%% <ul> <li> <a>RegisterGameServer</a>
%%
%% </li> <li> <a>ListGameServers</a>
%%
%% </li> <li> <a>ClaimGameServer</a>
%%
%% </li> <li> <a>DescribeGameServer</a>
%%
%% </li> <li> <a>UpdateGameServer</a>
%%
%% </li> <li> <a>DeregisterGameServer</a>
%%
%% </li> </ul>
deregister_game_server(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_game_server(Client, Input, []).
deregister_game_server(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterGameServer">>, Input, Options).

%% @doc Retrieves properties for an alias. This operation returns all alias
%% metadata and settings. To get an alias's target fleet ID only, use
%% <code>ResolveAlias</code>.
%%
%% To get alias properties, specify the alias ID. If successful, the
%% requested alias record is returned.
%%
%% <ul> <li> <a>CreateAlias</a>
%%
%% </li> <li> <a>ListAliases</a>
%%
%% </li> <li> <a>DescribeAlias</a>
%%
%% </li> <li> <a>UpdateAlias</a>
%%
%% </li> <li> <a>DeleteAlias</a>
%%
%% </li> <li> <a>ResolveAlias</a>
%%
%% </li> </ul>
describe_alias(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_alias(Client, Input, []).
describe_alias(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAlias">>, Input, Options).

%% @doc Retrieves properties for a custom game build. To request a build
%% resource, specify a build ID. If successful, an object containing the
%% build properties is returned.
%%
%% <b>Learn more</b>
%%
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-intro.html">
%% Upload a Custom Server Build</a>
%%
%% <b>Related operations</b>
%%
%% <ul> <li> <a>CreateBuild</a>
%%
%% </li> <li> <a>ListBuilds</a>
%%
%% </li> <li> <a>DescribeBuild</a>
%%
%% </li> <li> <a>UpdateBuild</a>
%%
%% </li> <li> <a>DeleteBuild</a>
%%
%% </li> </ul>
describe_build(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_build(Client, Input, []).
describe_build(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeBuild">>, Input, Options).

%% @doc Retrieves the following information for the specified EC2 instance
%% type:
%%
%% <ul> <li> Maximum number of instances allowed per AWS account (service
%% limit).
%%
%% </li> <li> Current usage for the AWS account.
%%
%% </li> </ul> To learn more about the capabilities of each instance type,
%% see <a href="http://aws.amazon.com/ec2/instance-types/">Amazon EC2
%% Instance Types</a>. Note that the instance types offered may vary
%% depending on the region.
%%
%% <b>Learn more</b>
%%
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html">Setting
%% up GameLift Fleets</a>
%%
%% <b>Related operations</b>
%%
%% <ul> <li> <a>CreateFleet</a>
%%
%% </li> <li> <a>ListFleets</a>
%%
%% </li> <li> <a>DeleteFleet</a>
%%
%% </li> <li> <a>DescribeFleetAttributes</a>
%%
%% </li> <li> <a>UpdateFleetAttributes</a>
%%
%% </li> <li> <a>StartFleetActions</a> or <a>StopFleetActions</a>
%%
%% </li> </ul>
describe_e_c2_instance_limits(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_e_c2_instance_limits(Client, Input, []).
describe_e_c2_instance_limits(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEC2InstanceLimits">>, Input, Options).

%% @doc Retrieves core properties, including configuration, status, and
%% metadata, for a fleet.
%%
%% To get attributes for one or more fleets, provide a list of fleet IDs or
%% fleet ARNs. To get attributes for all fleets, do not specify a fleet
%% identifier. When requesting attributes for multiple fleets, use the
%% pagination parameters to retrieve results as a set of sequential pages. If
%% successful, a <a>FleetAttributes</a> object is returned for each fleet
%% requested, unless the fleet identifier is not found.
%%
%% <note> Some API actions may limit the number of fleet IDs allowed in one
%% request. If a request exceeds this limit, the request fails and the error
%% message includes the maximum allowed number.
%%
%% </note> <b>Learn more</b>
%%
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html">Setting
%% up GameLift Fleets</a>
%%
%% <b>Related operations</b>
%%
%% <ul> <li> <a>CreateFleet</a>
%%
%% </li> <li> <a>ListFleets</a>
%%
%% </li> <li> <a>DeleteFleet</a>
%%
%% </li> <li> Describe fleets:
%%
%% <ul> <li> <a>DescribeFleetAttributes</a>
%%
%% </li> <li> <a>DescribeFleetCapacity</a>
%%
%% </li> <li> <a>DescribeFleetPortSettings</a>
%%
%% </li> <li> <a>DescribeFleetUtilization</a>
%%
%% </li> <li> <a>DescribeRuntimeConfiguration</a>
%%
%% </li> <li> <a>DescribeEC2InstanceLimits</a>
%%
%% </li> <li> <a>DescribeFleetEvents</a>
%%
%% </li> </ul> </li> <li> <a>UpdateFleetAttributes</a>
%%
%% </li> <li> <a>StartFleetActions</a> or <a>StopFleetActions</a>
%%
%% </li> </ul>
describe_fleet_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_fleet_attributes(Client, Input, []).
describe_fleet_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFleetAttributes">>, Input, Options).

%% @doc Retrieves the current capacity statistics for one or more fleets.
%% These statistics present a snapshot of the fleet's instances and provide
%% insight on current or imminent scaling activity. To get statistics on game
%% hosting activity in the fleet, see <a>DescribeFleetUtilization</a>.
%%
%% You can request capacity for all fleets or specify a list of one or more
%% fleet identifiers. When requesting multiple fleets, use the pagination
%% parameters to retrieve results as a set of sequential pages. If
%% successful, a <a>FleetCapacity</a> object is returned for each requested
%% fleet ID. When a list of fleet IDs is provided, attribute objects are
%% returned only for fleets that currently exist.
%%
%% <note> Some API actions may limit the number of fleet IDs allowed in one
%% request. If a request exceeds this limit, the request fails and the error
%% message includes the maximum allowed.
%%
%% </note> <b>Learn more</b>
%%
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html">Setting
%% up GameLift Fleets</a>
%%
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/monitoring-cloudwatch.html#gamelift-metrics-fleet">GameLift
%% Metrics for Fleets</a>
%%
%% <b>Related operations</b>
%%
%% <ul> <li> <a>CreateFleet</a>
%%
%% </li> <li> <a>ListFleets</a>
%%
%% </li> <li> <a>DeleteFleet</a>
%%
%% </li> <li> Describe fleets:
%%
%% <ul> <li> <a>DescribeFleetAttributes</a>
%%
%% </li> <li> <a>DescribeFleetCapacity</a>
%%
%% </li> <li> <a>DescribeFleetPortSettings</a>
%%
%% </li> <li> <a>DescribeFleetUtilization</a>
%%
%% </li> <li> <a>DescribeRuntimeConfiguration</a>
%%
%% </li> <li> <a>DescribeEC2InstanceLimits</a>
%%
%% </li> <li> <a>DescribeFleetEvents</a>
%%
%% </li> </ul> </li> <li> <a>UpdateFleetAttributes</a>
%%
%% </li> <li> <a>StartFleetActions</a> or <a>StopFleetActions</a>
%%
%% </li> </ul>
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
%%
%% <b>Learn more</b>
%%
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html">Setting
%% up GameLift Fleets</a>
%%
%% <b>Related operations</b>
%%
%% <ul> <li> <a>CreateFleet</a>
%%
%% </li> <li> <a>ListFleets</a>
%%
%% </li> <li> <a>DeleteFleet</a>
%%
%% </li> <li> Describe fleets:
%%
%% <ul> <li> <a>DescribeFleetAttributes</a>
%%
%% </li> <li> <a>DescribeFleetCapacity</a>
%%
%% </li> <li> <a>DescribeFleetPortSettings</a>
%%
%% </li> <li> <a>DescribeFleetUtilization</a>
%%
%% </li> <li> <a>DescribeRuntimeConfiguration</a>
%%
%% </li> <li> <a>DescribeEC2InstanceLimits</a>
%%
%% </li> <li> <a>DescribeFleetEvents</a>
%%
%% </li> </ul> </li> <li> <a>UpdateFleetAttributes</a>
%%
%% </li> <li> <a>StartFleetActions</a> or <a>StopFleetActions</a>
%%
%% </li> </ul>
describe_fleet_events(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_fleet_events(Client, Input, []).
describe_fleet_events(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFleetEvents">>, Input, Options).

%% @doc Retrieves a fleet's inbound connection permissions. Connection
%% permissions specify the range of IP addresses and port settings that
%% incoming traffic can use to access server processes in the fleet. Game
%% sessions that are running on instances in the fleet use connections that
%% fall in this range.
%%
%% To get a fleet's inbound connection permissions, specify the fleet's
%% unique identifier. If successful, a collection of <a>IpPermission</a>
%% objects is returned for the requested fleet ID. If the requested fleet has
%% been deleted, the result set is empty.
%%
%% <b>Learn more</b>
%%
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html">Setting
%% up GameLift Fleets</a>
%%
%% <b>Related operations</b>
%%
%% <ul> <li> <a>CreateFleet</a>
%%
%% </li> <li> <a>ListFleets</a>
%%
%% </li> <li> <a>DeleteFleet</a>
%%
%% </li> <li> Describe fleets:
%%
%% <ul> <li> <a>DescribeFleetAttributes</a>
%%
%% </li> <li> <a>DescribeFleetCapacity</a>
%%
%% </li> <li> <a>DescribeFleetPortSettings</a>
%%
%% </li> <li> <a>DescribeFleetUtilization</a>
%%
%% </li> <li> <a>DescribeRuntimeConfiguration</a>
%%
%% </li> <li> <a>DescribeEC2InstanceLimits</a>
%%
%% </li> <li> <a>DescribeFleetEvents</a>
%%
%% </li> </ul> </li> <li> <a>UpdateFleetAttributes</a>
%%
%% </li> <li> <a>StartFleetActions</a> or <a>StopFleetActions</a>
%%
%% </li> </ul>
describe_fleet_port_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_fleet_port_settings(Client, Input, []).
describe_fleet_port_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFleetPortSettings">>, Input, Options).

%% @doc Retrieves utilization statistics for one or more fleets. These
%% statistics provide insight into how available hosting resources are
%% currently being used. To get statistics on available hosting resources,
%% see <a>DescribeFleetCapacity</a>.
%%
%% You can request utilization data for all fleets, or specify a list of one
%% or more fleet IDs. When requesting multiple fleets, use the pagination
%% parameters to retrieve results as a set of sequential pages. If
%% successful, a <a>FleetUtilization</a> object is returned for each
%% requested fleet ID, unless the fleet identifier is not found.
%%
%% <note> Some API actions may limit the number of fleet IDs allowed in one
%% request. If a request exceeds this limit, the request fails and the error
%% message includes the maximum allowed.
%%
%% </note> <b>Learn more</b>
%%
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html">Setting
%% up GameLift Fleets</a>
%%
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/monitoring-cloudwatch.html#gamelift-metrics-fleet">GameLift
%% Metrics for Fleets</a>
%%
%% <b>Related operations</b>
%%
%% <ul> <li> <a>CreateFleet</a>
%%
%% </li> <li> <a>ListFleets</a>
%%
%% </li> <li> <a>DeleteFleet</a>
%%
%% </li> <li> Describe fleets:
%%
%% <ul> <li> <a>DescribeFleetAttributes</a>
%%
%% </li> <li> <a>DescribeFleetCapacity</a>
%%
%% </li> <li> <a>DescribeFleetPortSettings</a>
%%
%% </li> <li> <a>DescribeFleetUtilization</a>
%%
%% </li> <li> <a>DescribeRuntimeConfiguration</a>
%%
%% </li> <li> <a>DescribeEC2InstanceLimits</a>
%%
%% </li> <li> <a>DescribeFleetEvents</a>
%%
%% </li> </ul> </li> <li> <a>UpdateFleetAttributes</a>
%%
%% </li> <li> <a>StartFleetActions</a> or <a>StopFleetActions</a>
%%
%% </li> </ul>
describe_fleet_utilization(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_fleet_utilization(Client, Input, []).
describe_fleet_utilization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFleetUtilization">>, Input, Options).

%% @doc <b>This action is part of Amazon GameLift FleetIQ with game server
%% groups, which is in preview release and is subject to change.</b>
%%
%% Retrieves information for a game server resource. Information includes the
%% game server statuses, health check info, and the instance the game server
%% is running on.
%%
%% To retrieve game server information, specify the game server ID. If
%% successful, the requested game server object is returned.
%%
%% <b>Learn more</b>
%%
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gsg-intro.html">GameLift
%% FleetIQ Guide</a>
%%
%% <b>Related operations</b>
%%
%% <ul> <li> <a>RegisterGameServer</a>
%%
%% </li> <li> <a>ListGameServers</a>
%%
%% </li> <li> <a>ClaimGameServer</a>
%%
%% </li> <li> <a>DescribeGameServer</a>
%%
%% </li> <li> <a>UpdateGameServer</a>
%%
%% </li> <li> <a>DeregisterGameServer</a>
%%
%% </li> </ul>
describe_game_server(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_game_server(Client, Input, []).
describe_game_server(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeGameServer">>, Input, Options).

%% @doc <b>This action is part of Amazon GameLift FleetIQ with game server
%% groups, which is in preview release and is subject to change.</b>
%%
%% Retrieves information on a game server group.
%%
%% To get attributes for a game server group, provide a group name or ARN
%% value. If successful, a <a>GameServerGroup</a> object is returned.
%%
%% <b>Learn more</b>
%%
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gsg-intro.html">GameLift
%% FleetIQ Guide</a>
%%
%% <b>Related operations</b>
%%
%% <ul> <li> <a>CreateGameServerGroup</a>
%%
%% </li> <li> <a>ListGameServerGroups</a>
%%
%% </li> <li> <a>DescribeGameServerGroup</a>
%%
%% </li> <li> <a>UpdateGameServerGroup</a>
%%
%% </li> <li> <a>DeleteGameServerGroup</a>
%%
%% </li> <li> <a>ResumeGameServerGroup</a>
%%
%% </li> <li> <a>SuspendGameServerGroup</a>
%%
%% </li> </ul>
describe_game_server_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_game_server_group(Client, Input, []).
describe_game_server_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeGameServerGroup">>, Input, Options).

%% @doc Retrieves properties, including the protection policy in force, for
%% one or more game sessions. This action can be used in several ways: (1)
%% provide a <code>GameSessionId</code> or <code>GameSessionArn</code> to
%% request details for a specific game session; (2) provide either a
%% <code>FleetId</code> or an <code>AliasId</code> to request properties for
%% all game sessions running on a fleet.
%%
%% To get game session record(s), specify just one of the following: game
%% session ID, fleet ID, or alias ID. You can filter this request by game
%% session status. Use the pagination parameters to retrieve results as a set
%% of sequential pages. If successful, a <a>GameSessionDetail</a> object is
%% returned for each session matching the request.
%%
%% <ul> <li> <a>CreateGameSession</a>
%%
%% </li> <li> <a>DescribeGameSessions</a>
%%
%% </li> <li> <a>DescribeGameSessionDetails</a>
%%
%% </li> <li> <a>SearchGameSessions</a>
%%
%% </li> <li> <a>UpdateGameSession</a>
%%
%% </li> <li> <a>GetGameSessionLogUrl</a>
%%
%% </li> <li> Game session placements
%%
%% <ul> <li> <a>StartGameSessionPlacement</a>
%%
%% </li> <li> <a>DescribeGameSessionPlacement</a>
%%
%% </li> <li> <a>StopGameSessionPlacement</a>
%%
%% </li> </ul> </li> </ul>
describe_game_session_details(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_game_session_details(Client, Input, []).
describe_game_session_details(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeGameSessionDetails">>, Input, Options).

%% @doc Retrieves properties and current status of a game session placement
%% request. To get game session placement details, specify the placement ID.
%% If successful, a <a>GameSessionPlacement</a> object is returned.
%%
%% <ul> <li> <a>CreateGameSession</a>
%%
%% </li> <li> <a>DescribeGameSessions</a>
%%
%% </li> <li> <a>DescribeGameSessionDetails</a>
%%
%% </li> <li> <a>SearchGameSessions</a>
%%
%% </li> <li> <a>UpdateGameSession</a>
%%
%% </li> <li> <a>GetGameSessionLogUrl</a>
%%
%% </li> <li> Game session placements
%%
%% <ul> <li> <a>StartGameSessionPlacement</a>
%%
%% </li> <li> <a>DescribeGameSessionPlacement</a>
%%
%% </li> <li> <a>StopGameSessionPlacement</a>
%%
%% </li> </ul> </li> </ul>
describe_game_session_placement(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_game_session_placement(Client, Input, []).
describe_game_session_placement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeGameSessionPlacement">>, Input, Options).

%% @doc Retrieves the properties for one or more game session queues. When
%% requesting multiple queues, use the pagination parameters to retrieve
%% results as a set of sequential pages. If successful, a
%% <a>GameSessionQueue</a> object is returned for each requested queue. When
%% specifying a list of queues, objects are returned only for queues that
%% currently exist in the Region.
%%
%% <b>Learn more</b>
%%
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/queues-console.html">
%% View Your Queues</a>
%%
%% <b>Related operations</b>
%%
%% <ul> <li> <a>CreateGameSessionQueue</a>
%%
%% </li> <li> <a>DescribeGameSessionQueues</a>
%%
%% </li> <li> <a>UpdateGameSessionQueue</a>
%%
%% </li> <li> <a>DeleteGameSessionQueue</a>
%%
%% </li> </ul>
describe_game_session_queues(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_game_session_queues(Client, Input, []).
describe_game_session_queues(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeGameSessionQueues">>, Input, Options).

%% @doc Retrieves a set of one or more game sessions. Request a specific game
%% session or request all game sessions on a fleet. Alternatively, use
%% <a>SearchGameSessions</a> to request a set of active game sessions that
%% are filtered by certain criteria. To retrieve protection policy settings
%% for game sessions, use <a>DescribeGameSessionDetails</a>.
%%
%% To get game sessions, specify one of the following: game session ID, fleet
%% ID, or alias ID. You can filter this request by game session status. Use
%% the pagination parameters to retrieve results as a set of sequential
%% pages. If successful, a <a>GameSession</a> object is returned for each
%% game session matching the request.
%%
%% <i>Available in Amazon GameLift Local.</i>
%%
%% <ul> <li> <a>CreateGameSession</a>
%%
%% </li> <li> <a>DescribeGameSessions</a>
%%
%% </li> <li> <a>DescribeGameSessionDetails</a>
%%
%% </li> <li> <a>SearchGameSessions</a>
%%
%% </li> <li> <a>UpdateGameSession</a>
%%
%% </li> <li> <a>GetGameSessionLogUrl</a>
%%
%% </li> <li> Game session placements
%%
%% <ul> <li> <a>StartGameSessionPlacement</a>
%%
%% </li> <li> <a>DescribeGameSessionPlacement</a>
%%
%% </li> <li> <a>StopGameSessionPlacement</a>
%%
%% </li> </ul> </li> </ul>
describe_game_sessions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_game_sessions(Client, Input, []).
describe_game_sessions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeGameSessions">>, Input, Options).

%% @doc Retrieves information about a fleet's instances, including instance
%% IDs. Use this action to get details on all instances in the fleet or get
%% details on one specific instance.
%%
%% To get a specific instance, specify fleet ID and instance ID. To get all
%% instances in a fleet, specify a fleet ID only. Use the pagination
%% parameters to retrieve results as a set of sequential pages. If
%% successful, an <a>Instance</a> object is returned for each result.
%%
%% <b>Learn more</b>
%%
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-remote-access.html">Remotely
%% Access Fleet Instances</a>
%%
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-creating-debug.html">Debug
%% Fleet Issues</a>
%%
%% <b>Related operations</b>
%%
%% <ul> <li> <a>DescribeInstances</a>
%%
%% </li> <li> <a>GetInstanceAccess</a>
%%
%% </li> </ul>
describe_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_instances(Client, Input, []).
describe_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeInstances">>, Input, Options).

%% @doc Retrieves one or more matchmaking tickets. Use this operation to
%% retrieve ticket information, including status and--once a successful match
%% is made--acquire connection information for the resulting new game
%% session.
%%
%% You can use this operation to track the progress of matchmaking requests
%% (through polling) as an alternative to using event notifications. See more
%% details on tracking matchmaking requests through polling or notifications
%% in <a>StartMatchmaking</a>.
%%
%% To request matchmaking tickets, provide a list of up to 10 ticket IDs. If
%% the request is successful, a ticket object is returned for each requested
%% ID that currently exists.
%%
%% <b>Learn more</b>
%%
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/match-client.html">
%% Add FlexMatch to a Game Client</a>
%%
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/match-notification.html">
%% Set Up FlexMatch Event Notification</a>
%%
%% <b>Related operations</b>
%%
%% <ul> <li> <a>StartMatchmaking</a>
%%
%% </li> <li> <a>DescribeMatchmaking</a>
%%
%% </li> <li> <a>StopMatchmaking</a>
%%
%% </li> <li> <a>AcceptMatch</a>
%%
%% </li> <li> <a>StartMatchBackfill</a>
%%
%% </li> </ul>
describe_matchmaking(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_matchmaking(Client, Input, []).
describe_matchmaking(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeMatchmaking">>, Input, Options).

%% @doc Retrieves the details of FlexMatch matchmaking configurations. With
%% this operation, you have the following options: (1) retrieve all existing
%% configurations, (2) provide the names of one or more configurations to
%% retrieve, or (3) retrieve all configurations that use a specified rule set
%% name. When requesting multiple items, use the pagination parameters to
%% retrieve results as a set of sequential pages. If successful, a
%% configuration is returned for each requested name. When specifying a list
%% of names, only configurations that currently exist are returned.
%%
%% <b>Learn more</b>
%%
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/matchmaker-build.html">
%% Setting Up FlexMatch Matchmakers</a>
%%
%% <b>Related operations</b>
%%
%% <ul> <li> <a>CreateMatchmakingConfiguration</a>
%%
%% </li> <li> <a>DescribeMatchmakingConfigurations</a>
%%
%% </li> <li> <a>UpdateMatchmakingConfiguration</a>
%%
%% </li> <li> <a>DeleteMatchmakingConfiguration</a>
%%
%% </li> <li> <a>CreateMatchmakingRuleSet</a>
%%
%% </li> <li> <a>DescribeMatchmakingRuleSets</a>
%%
%% </li> <li> <a>ValidateMatchmakingRuleSet</a>
%%
%% </li> <li> <a>DeleteMatchmakingRuleSet</a>
%%
%% </li> </ul>
describe_matchmaking_configurations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_matchmaking_configurations(Client, Input, []).
describe_matchmaking_configurations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeMatchmakingConfigurations">>, Input, Options).

%% @doc Retrieves the details for FlexMatch matchmaking rule sets. You can
%% request all existing rule sets for the Region, or provide a list of one or
%% more rule set names. When requesting multiple items, use the pagination
%% parameters to retrieve results as a set of sequential pages. If
%% successful, a rule set is returned for each requested name.
%%
%% <b>Learn more</b>
%%
%% <ul> <li> <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/match-rulesets.html">Build
%% a Rule Set</a>
%%
%% </li> </ul> <b>Related operations</b>
%%
%% <ul> <li> <a>CreateMatchmakingConfiguration</a>
%%
%% </li> <li> <a>DescribeMatchmakingConfigurations</a>
%%
%% </li> <li> <a>UpdateMatchmakingConfiguration</a>
%%
%% </li> <li> <a>DeleteMatchmakingConfiguration</a>
%%
%% </li> <li> <a>CreateMatchmakingRuleSet</a>
%%
%% </li> <li> <a>DescribeMatchmakingRuleSets</a>
%%
%% </li> <li> <a>ValidateMatchmakingRuleSet</a>
%%
%% </li> <li> <a>DeleteMatchmakingRuleSet</a>
%%
%% </li> </ul>
describe_matchmaking_rule_sets(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_matchmaking_rule_sets(Client, Input, []).
describe_matchmaking_rule_sets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeMatchmakingRuleSets">>, Input, Options).

%% @doc Retrieves properties for one or more player sessions. This action can
%% be used in several ways: (1) provide a <code>PlayerSessionId</code> to
%% request properties for a specific player session; (2) provide a
%% <code>GameSessionId</code> to request properties for all player sessions
%% in the specified game session; (3) provide a <code>PlayerId</code> to
%% request properties for all player sessions of a specified player.
%%
%% To get game session record(s), specify only one of the following: a player
%% session ID, a game session ID, or a player ID. You can filter this request
%% by player session status. Use the pagination parameters to retrieve
%% results as a set of sequential pages. If successful, a
%% <a>PlayerSession</a> object is returned for each session matching the
%% request.
%%
%% <i>Available in Amazon GameLift Local.</i>
%%
%% <ul> <li> <a>CreatePlayerSession</a>
%%
%% </li> <li> <a>CreatePlayerSessions</a>
%%
%% </li> <li> <a>DescribePlayerSessions</a>
%%
%% </li> <li> Game session placements
%%
%% <ul> <li> <a>StartGameSessionPlacement</a>
%%
%% </li> <li> <a>DescribeGameSessionPlacement</a>
%%
%% </li> <li> <a>StopGameSessionPlacement</a>
%%
%% </li> </ul> </li> </ul>
describe_player_sessions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_player_sessions(Client, Input, []).
describe_player_sessions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePlayerSessions">>, Input, Options).

%% @doc Retrieves a fleet's runtime configuration settings. The runtime
%% configuration tells Amazon GameLift which server processes to run (and
%% how) on each instance in the fleet.
%%
%% To get a runtime configuration, specify the fleet's unique identifier. If
%% successful, a <a>RuntimeConfiguration</a> object is returned for the
%% requested fleet. If the requested fleet has been deleted, the result set
%% is empty.
%%
%% <b>Learn more</b>
%%
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html">Setting
%% up GameLift Fleets</a>
%%
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-multiprocess.html">Running
%% Multiple Processes on a Fleet</a>
%%
%% <b>Related operations</b>
%%
%% <ul> <li> <a>CreateFleet</a>
%%
%% </li> <li> <a>ListFleets</a>
%%
%% </li> <li> <a>DeleteFleet</a>
%%
%% </li> <li> Describe fleets:
%%
%% <ul> <li> <a>DescribeFleetAttributes</a>
%%
%% </li> <li> <a>DescribeFleetCapacity</a>
%%
%% </li> <li> <a>DescribeFleetPortSettings</a>
%%
%% </li> <li> <a>DescribeFleetUtilization</a>
%%
%% </li> <li> <a>DescribeRuntimeConfiguration</a>
%%
%% </li> <li> <a>DescribeEC2InstanceLimits</a>
%%
%% </li> <li> <a>DescribeFleetEvents</a>
%%
%% </li> </ul> </li> <li> <a>UpdateFleetAttributes</a>
%%
%% </li> <li> <a>StartFleetActions</a> or <a>StopFleetActions</a>
%%
%% </li> </ul>
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
%%
%% A fleet may have all of its scaling policies suspended
%% (<a>StopFleetActions</a>). This action does not affect the status of the
%% scaling policies, which remains ACTIVE. To see whether a fleet's scaling
%% policies are in force or suspended, call <a>DescribeFleetAttributes</a>
%% and check the stopped actions.
%%
%% <ul> <li> <a>DescribeFleetCapacity</a>
%%
%% </li> <li> <a>UpdateFleetCapacity</a>
%%
%% </li> <li> <a>DescribeEC2InstanceLimits</a>
%%
%% </li> <li> Manage scaling policies:
%%
%% <ul> <li> <a>PutScalingPolicy</a> (auto-scaling)
%%
%% </li> <li> <a>DescribeScalingPolicies</a> (auto-scaling)
%%
%% </li> <li> <a>DeleteScalingPolicy</a> (auto-scaling)
%%
%% </li> </ul> </li> <li> Manage fleet actions:
%%
%% <ul> <li> <a>StartFleetActions</a>
%%
%% </li> <li> <a>StopFleetActions</a>
%%
%% </li> </ul> </li> </ul>
describe_scaling_policies(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_scaling_policies(Client, Input, []).
describe_scaling_policies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeScalingPolicies">>, Input, Options).

%% @doc Retrieves properties for a Realtime script.
%%
%% To request a script record, specify the script ID. If successful, an
%% object containing the script properties is returned.
%%
%% <b>Learn more</b>
%%
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/realtime-intro.html">Amazon
%% GameLift Realtime Servers</a>
%%
%% <b>Related operations</b>
%%
%% <ul> <li> <a>CreateScript</a>
%%
%% </li> <li> <a>ListScripts</a>
%%
%% </li> <li> <a>DescribeScript</a>
%%
%% </li> <li> <a>UpdateScript</a>
%%
%% </li> <li> <a>DeleteScript</a>
%%
%% </li> </ul>
describe_script(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_script(Client, Input, []).
describe_script(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeScript">>, Input, Options).

%% @doc Retrieves valid VPC peering authorizations that are pending for the
%% AWS account. This operation returns all VPC peering authorizations and
%% requests for peering. This includes those initiated and received by this
%% account.
%%
%% <ul> <li> <a>CreateVpcPeeringAuthorization</a>
%%
%% </li> <li> <a>DescribeVpcPeeringAuthorizations</a>
%%
%% </li> <li> <a>DeleteVpcPeeringAuthorization</a>
%%
%% </li> <li> <a>CreateVpcPeeringConnection</a>
%%
%% </li> <li> <a>DescribeVpcPeeringConnections</a>
%%
%% </li> <li> <a>DeleteVpcPeeringConnection</a>
%%
%% </li> </ul>
describe_vpc_peering_authorizations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_vpc_peering_authorizations(Client, Input, []).
describe_vpc_peering_authorizations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeVpcPeeringAuthorizations">>, Input, Options).

%% @doc Retrieves information on VPC peering connections. Use this operation
%% to get peering information for all fleets or for one specific fleet ID.
%%
%% To retrieve connection information, call this operation from the AWS
%% account that is used to manage the Amazon GameLift fleets. Specify a fleet
%% ID or leave the parameter empty to retrieve all connection records. If
%% successful, the retrieved information includes both active and pending
%% connections. Active connections identify the IpV4 CIDR block that the VPC
%% uses to connect.
%%
%% <ul> <li> <a>CreateVpcPeeringAuthorization</a>
%%
%% </li> <li> <a>DescribeVpcPeeringAuthorizations</a>
%%
%% </li> <li> <a>DeleteVpcPeeringAuthorization</a>
%%
%% </li> <li> <a>CreateVpcPeeringConnection</a>
%%
%% </li> <li> <a>DescribeVpcPeeringConnections</a>
%%
%% </li> <li> <a>DeleteVpcPeeringConnection</a>
%%
%% </li> </ul>
describe_vpc_peering_connections(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_vpc_peering_connections(Client, Input, []).
describe_vpc_peering_connections(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeVpcPeeringConnections">>, Input, Options).

%% @doc Retrieves the location of stored game session logs for a specified
%% game session. When a game session is terminated, Amazon GameLift
%% automatically stores the logs in Amazon S3 and retains them for 14 days.
%% Use this URL to download the logs.
%%
%% <note> See the <a
%% href="https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_gamelift">AWS
%% Service Limits</a> page for maximum log file sizes. Log files that exceed
%% this limit are not saved.
%%
%% </note> <ul> <li> <a>CreateGameSession</a>
%%
%% </li> <li> <a>DescribeGameSessions</a>
%%
%% </li> <li> <a>DescribeGameSessionDetails</a>
%%
%% </li> <li> <a>SearchGameSessions</a>
%%
%% </li> <li> <a>UpdateGameSession</a>
%%
%% </li> <li> <a>GetGameSessionLogUrl</a>
%%
%% </li> <li> Game session placements
%%
%% <ul> <li> <a>StartGameSessionPlacement</a>
%%
%% </li> <li> <a>DescribeGameSessionPlacement</a>
%%
%% </li> <li> <a>StopGameSessionPlacement</a>
%%
%% </li> </ul> </li> </ul>
get_game_session_log_url(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_game_session_log_url(Client, Input, []).
get_game_session_log_url(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetGameSessionLogUrl">>, Input, Options).

%% @doc Requests remote access to a fleet instance. Remote access is useful
%% for debugging, gathering benchmarking data, or observing activity in real
%% time.
%%
%% To remotely access an instance, you need credentials that match the
%% operating system of the instance. For a Windows instance, Amazon GameLift
%% returns a user name and password as strings for use with a Windows Remote
%% Desktop client. For a Linux instance, Amazon GameLift returns a user name
%% and RSA private key, also as strings, for use with an SSH client. The
%% private key must be saved in the proper format to a <code>.pem</code> file
%% before using. If you're making this request using the AWS CLI, saving the
%% secret can be handled as part of the GetInstanceAccess request, as shown
%% in one of the examples for this action.
%%
%% To request access to a specific instance, specify the IDs of both the
%% instance and the fleet it belongs to. You can retrieve a fleet's instance
%% IDs by calling <a>DescribeInstances</a>. If successful, an
%% <a>InstanceAccess</a> object is returned that contains the instance's IP
%% address and a set of credentials.
%%
%% <b>Learn more</b>
%%
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-remote-access.html">Remotely
%% Access Fleet Instances</a>
%%
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-creating-debug.html">Debug
%% Fleet Issues</a>
%%
%% <b>Related operations</b>
%%
%% <ul> <li> <a>DescribeInstances</a>
%%
%% </li> <li> <a>GetInstanceAccess</a>
%%
%% </li> </ul>
get_instance_access(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_instance_access(Client, Input, []).
get_instance_access(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetInstanceAccess">>, Input, Options).

%% @doc Retrieves all aliases for this AWS account. You can filter the result
%% set by alias name and/or routing strategy type. Use the pagination
%% parameters to retrieve results in sequential pages.
%%
%% <note> Returned aliases are not listed in any particular order.
%%
%% </note> <ul> <li> <a>CreateAlias</a>
%%
%% </li> <li> <a>ListAliases</a>
%%
%% </li> <li> <a>DescribeAlias</a>
%%
%% </li> <li> <a>UpdateAlias</a>
%%
%% </li> <li> <a>DeleteAlias</a>
%%
%% </li> <li> <a>ResolveAlias</a>
%%
%% </li> </ul>
list_aliases(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_aliases(Client, Input, []).
list_aliases(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAliases">>, Input, Options).

%% @doc Retrieves build resources for all builds associated with the AWS
%% account in use. You can limit results to builds that are in a specific
%% status by using the <code>Status</code> parameter. Use the pagination
%% parameters to retrieve results in a set of sequential pages.
%%
%% <note> Build resources are not listed in any particular order.
%%
%% </note> <b>Learn more</b>
%%
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-intro.html">
%% Upload a Custom Server Build</a>
%%
%% <b>Related operations</b>
%%
%% <ul> <li> <a>CreateBuild</a>
%%
%% </li> <li> <a>ListBuilds</a>
%%
%% </li> <li> <a>DescribeBuild</a>
%%
%% </li> <li> <a>UpdateBuild</a>
%%
%% </li> <li> <a>DeleteBuild</a>
%%
%% </li> </ul>
list_builds(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_builds(Client, Input, []).
list_builds(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListBuilds">>, Input, Options).

%% @doc Retrieves a collection of fleet resources for this AWS account. You
%% can filter the result set to find only those fleets that are deployed with
%% a specific build or script. Use the pagination parameters to retrieve
%% results in sequential pages.
%%
%% <note> Fleet resources are not listed in a particular order.
%%
%% </note> <b>Learn more</b>
%%
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html">Setting
%% up GameLift Fleets</a>
%%
%% <b>Related operations</b>
%%
%% <ul> <li> <a>CreateFleet</a>
%%
%% </li> <li> <a>ListFleets</a>
%%
%% </li> <li> <a>DeleteFleet</a>
%%
%% </li> <li> <a>DescribeFleetAttributes</a>
%%
%% </li> <li> <a>UpdateFleetAttributes</a>
%%
%% </li> <li> <a>StartFleetActions</a> or <a>StopFleetActions</a>
%%
%% </li> </ul>
list_fleets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_fleets(Client, Input, []).
list_fleets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListFleets">>, Input, Options).

%% @doc <b>This action is part of Amazon GameLift FleetIQ with game server
%% groups, which is in preview release and is subject to change.</b>
%%
%% Retrieves information on all game servers groups that exist in the current
%% AWS account for the selected region. Use the pagination parameters to
%% retrieve results in a set of sequential pages.
%%
%% <b>Learn more</b>
%%
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gsg-intro.html">GameLift
%% FleetIQ Guide</a>
%%
%% <b>Related operations</b>
%%
%% <ul> <li> <a>CreateGameServerGroup</a>
%%
%% </li> <li> <a>ListGameServerGroups</a>
%%
%% </li> <li> <a>DescribeGameServerGroup</a>
%%
%% </li> <li> <a>UpdateGameServerGroup</a>
%%
%% </li> <li> <a>DeleteGameServerGroup</a>
%%
%% </li> <li> <a>ResumeGameServerGroup</a>
%%
%% </li> <li> <a>SuspendGameServerGroup</a>
%%
%% </li> </ul>
list_game_server_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_game_server_groups(Client, Input, []).
list_game_server_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListGameServerGroups">>, Input, Options).

%% @doc <b>This action is part of Amazon GameLift FleetIQ with game server
%% groups, which is in preview release and is subject to change.</b>
%%
%% Retrieves information on all game servers that are currently running in a
%% specified game server group. If there are custom key sort values for your
%% game servers, you can opt to have the returned list sorted based on these
%% values. Use the pagination parameters to retrieve results in a set of
%% sequential pages.
%%
%% <b>Learn more</b>
%%
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gsg-intro.html">GameLift
%% FleetIQ Guide</a>
%%
%% <b>Related operations</b>
%%
%% <ul> <li> <a>RegisterGameServer</a>
%%
%% </li> <li> <a>ListGameServers</a>
%%
%% </li> <li> <a>ClaimGameServer</a>
%%
%% </li> <li> <a>DescribeGameServer</a>
%%
%% </li> <li> <a>UpdateGameServer</a>
%%
%% </li> <li> <a>DeregisterGameServer</a>
%%
%% </li> </ul>
list_game_servers(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_game_servers(Client, Input, []).
list_game_servers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListGameServers">>, Input, Options).

%% @doc Retrieves script records for all Realtime scripts that are associated
%% with the AWS account in use.
%%
%% <b>Learn more</b>
%%
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/realtime-intro.html">Amazon
%% GameLift Realtime Servers</a>
%%
%% <b>Related operations</b>
%%
%% <ul> <li> <a>CreateScript</a>
%%
%% </li> <li> <a>ListScripts</a>
%%
%% </li> <li> <a>DescribeScript</a>
%%
%% </li> <li> <a>UpdateScript</a>
%%
%% </li> <li> <a>DeleteScript</a>
%%
%% </li> </ul>
list_scripts(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_scripts(Client, Input, []).
list_scripts(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListScripts">>, Input, Options).

%% @doc Retrieves all tags that are assigned to a GameLift resource. Resource
%% tags are used to organize AWS resources for a range of purposes. This
%% action handles the permissions necessary to manage tags for the following
%% GameLift resource types:
%%
%% <ul> <li> Build
%%
%% </li> <li> Script
%%
%% </li> <li> Fleet
%%
%% </li> <li> Alias
%%
%% </li> <li> GameSessionQueue
%%
%% </li> <li> MatchmakingConfiguration
%%
%% </li> <li> MatchmakingRuleSet
%%
%% </li> </ul> To list tags for a resource, specify the unique ARN value for
%% the resource.
%%
%% <b>Learn more</b>
%%
%% <a
%% href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging
%% AWS Resources</a> in the <i>AWS General Reference</i>
%%
%% <a
%% href="http://aws.amazon.com/answers/account-management/aws-tagging-strategies/">
%% AWS Tagging Strategies</a>
%%
%% <b>Related operations</b>
%%
%% <ul> <li> <a>TagResource</a>
%%
%% </li> <li> <a>UntagResource</a>
%%
%% </li> <li> <a>ListTagsForResource</a>
%%
%% </li> </ul>
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Creates or updates a scaling policy for a fleet. Scaling policies are
%% used to automatically scale a fleet's hosting capacity to meet player
%% demand. An active scaling policy instructs Amazon GameLift to track a
%% fleet metric and automatically change the fleet's capacity when a certain
%% threshold is reached. There are two types of scaling policies:
%% target-based and rule-based. Use a target-based policy to quickly and
%% efficiently manage fleet scaling; this option is the most commonly used.
%% Use rule-based policies when you need to exert fine-grained control over
%% auto-scaling.
%%
%% Fleets can have multiple scaling policies of each type in force at the
%% same time; you can have one target-based policy, one or multiple
%% rule-based scaling policies, or both. We recommend caution, however,
%% because multiple auto-scaling policies can have unintended consequences.
%%
%% You can temporarily suspend all scaling policies for a fleet by calling
%% <a>StopFleetActions</a> with the fleet action AUTO_SCALING. To resume
%% scaling policies, call <a>StartFleetActions</a> with the same fleet
%% action. To stop just one scaling policy--or to permanently remove it, you
%% must delete the policy with <a>DeleteScalingPolicy</a>.
%%
%% Learn more about how to work with auto-scaling in <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-autoscaling.html">Set
%% Up Fleet Automatic Scaling</a>.
%%
%% <b>Target-based policy</b>
%%
%% A target-based policy tracks a single metric:
%% PercentAvailableGameSessions. This metric tells us how much of a fleet's
%% hosting capacity is ready to host game sessions but is not currently in
%% use. This is the fleet's buffer; it measures the additional player demand
%% that the fleet could handle at current capacity. With a target-based
%% policy, you set your ideal buffer size and leave it to Amazon GameLift to
%% take whatever action is needed to maintain that target.
%%
%% For example, you might choose to maintain a 10% buffer for a fleet that
%% has the capacity to host 100 simultaneous game sessions. This policy tells
%% Amazon GameLift to take action whenever the fleet's available capacity
%% falls below or rises above 10 game sessions. Amazon GameLift will start
%% new instances or stop unused instances in order to return to the 10%
%% buffer.
%%
%% To create or update a target-based policy, specify a fleet ID and name,
%% and set the policy type to "TargetBased". Specify the metric to track
%% (PercentAvailableGameSessions) and reference a <a>TargetConfiguration</a>
%% object with your desired buffer value. Exclude all other parameters. On a
%% successful request, the policy name is returned. The scaling policy is
%% automatically in force as soon as it's successfully created. If the
%% fleet's auto-scaling actions are temporarily suspended, the new policy
%% will be in force once the fleet actions are restarted.
%%
%% <b>Rule-based policy</b>
%%
%% A rule-based policy tracks specified fleet metric, sets a threshold value,
%% and specifies the type of action to initiate when triggered. With a
%% rule-based policy, you can select from several available fleet metrics.
%% Each policy specifies whether to scale up or scale down (and by how much),
%% so you need one policy for each type of action.
%%
%% For example, a policy may make the following statement: "If the percentage
%% of idle instances is greater than 20% for more than 15 minutes, then
%% reduce the fleet capacity by 10%."
%%
%% A policy's rule statement has the following structure:
%%
%% If <code>[MetricName]</code> is <code>[ComparisonOperator]</code>
%% <code>[Threshold]</code> for <code>[EvaluationPeriods]</code> minutes,
%% then <code>[ScalingAdjustmentType]</code> to/by
%% <code>[ScalingAdjustment]</code>.
%%
%% To implement the example, the rule statement would look like this:
%%
%% If <code>[PercentIdleInstances]</code> is
%% <code>[GreaterThanThreshold]</code> <code>[20]</code> for
%% <code>[15]</code> minutes, then <code>[PercentChangeInCapacity]</code>
%% to/by <code>[10]</code>.
%%
%% To create or update a scaling policy, specify a unique combination of name
%% and fleet ID, and set the policy type to "RuleBased". Specify the
%% parameter values for a policy rule statement. On a successful request, the
%% policy name is returned. Scaling policies are automatically in force as
%% soon as they're successfully created. If the fleet's auto-scaling actions
%% are temporarily suspended, the new policy will be in force once the fleet
%% actions are restarted.
%%
%% <ul> <li> <a>DescribeFleetCapacity</a>
%%
%% </li> <li> <a>UpdateFleetCapacity</a>
%%
%% </li> <li> <a>DescribeEC2InstanceLimits</a>
%%
%% </li> <li> Manage scaling policies:
%%
%% <ul> <li> <a>PutScalingPolicy</a> (auto-scaling)
%%
%% </li> <li> <a>DescribeScalingPolicies</a> (auto-scaling)
%%
%% </li> <li> <a>DeleteScalingPolicy</a> (auto-scaling)
%%
%% </li> </ul> </li> <li> Manage fleet actions:
%%
%% <ul> <li> <a>StartFleetActions</a>
%%
%% </li> <li> <a>StopFleetActions</a>
%%
%% </li> </ul> </li> </ul>
put_scaling_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_scaling_policy(Client, Input, []).
put_scaling_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutScalingPolicy">>, Input, Options).

%% @doc <b>This action is part of Amazon GameLift FleetIQ with game server
%% groups, which is in preview release and is subject to change.</b>
%%
%% Creates a new game server resource and notifies GameLift FleetIQ that the
%% game server is ready to host gameplay and players. This action is called
%% by a game server process that is running on an instance in a game server
%% group. Registering game servers enables GameLift FleetIQ to track
%% available game servers and enables game clients and services to claim a
%% game server for a new game session.
%%
%% To register a game server, identify the game server group and instance
%% where the game server is running, and provide a unique identifier for the
%% game server. You can also include connection and game server data; when a
%% game client or service requests a game server by calling
%% <a>ClaimGameServer</a>, this information is returned in response.
%%
%% Once a game server is successfully registered, it is put in status
%% AVAILABLE. A request to register a game server may fail if the instance it
%% is in the process of shutting down as part of instance rebalancing or
%% scale-down activity.
%%
%% <b>Learn more</b>
%%
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gsg-intro.html">GameLift
%% FleetIQ Guide</a>
%%
%% <b>Related operations</b>
%%
%% <ul> <li> <a>RegisterGameServer</a>
%%
%% </li> <li> <a>ListGameServers</a>
%%
%% </li> <li> <a>ClaimGameServer</a>
%%
%% </li> <li> <a>DescribeGameServer</a>
%%
%% </li> <li> <a>UpdateGameServer</a>
%%
%% </li> <li> <a>DeregisterGameServer</a>
%%
%% </li> </ul>
register_game_server(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_game_server(Client, Input, []).
register_game_server(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterGameServer">>, Input, Options).

%% @doc Retrieves a fresh set of credentials for use when uploading a new set
%% of game build files to Amazon GameLift's Amazon S3. This is done as part
%% of the build creation process; see <a>CreateBuild</a>.
%%
%% To request new credentials, specify the build ID as returned with an
%% initial <code>CreateBuild</code> request. If successful, a new set of
%% credentials are returned, along with the S3 storage location associated
%% with the build ID.
%%
%% <b>Learn more</b>
%%
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-cli-uploading.html#gamelift-build-cli-uploading-create-build">
%% Create a Build with Files in S3</a>
%%
%% <b>Related operations</b>
%%
%% <ul> <li> <a>CreateBuild</a>
%%
%% </li> <li> <a>ListBuilds</a>
%%
%% </li> <li> <a>DescribeBuild</a>
%%
%% </li> <li> <a>UpdateBuild</a>
%%
%% </li> <li> <a>DeleteBuild</a>
%%
%% </li> </ul>
request_upload_credentials(Client, Input)
  when is_map(Client), is_map(Input) ->
    request_upload_credentials(Client, Input, []).
request_upload_credentials(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RequestUploadCredentials">>, Input, Options).

%% @doc Retrieves the fleet ID that an alias is currently pointing to.
%%
%% <ul> <li> <a>CreateAlias</a>
%%
%% </li> <li> <a>ListAliases</a>
%%
%% </li> <li> <a>DescribeAlias</a>
%%
%% </li> <li> <a>UpdateAlias</a>
%%
%% </li> <li> <a>DeleteAlias</a>
%%
%% </li> <li> <a>ResolveAlias</a>
%%
%% </li> </ul>
resolve_alias(Client, Input)
  when is_map(Client), is_map(Input) ->
    resolve_alias(Client, Input, []).
resolve_alias(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ResolveAlias">>, Input, Options).

%% @doc <b>This action is part of Amazon GameLift FleetIQ with game server
%% groups, which is in preview release and is subject to change.</b>
%%
%% Reinstates activity on a game server group after it has been suspended. A
%% game server group may be suspended by calling
%% <a>SuspendGameServerGroup</a>, or it may have been involuntarily suspended
%% due to a configuration problem. You can manually resume activity on the
%% group once the configuration problem has been resolved. Refer to the game
%% server group status and status reason for more information on why group
%% activity is suspended.
%%
%% To resume activity, specify a game server group ARN and the type of
%% activity to be resumed.
%%
%% <b>Learn more</b>
%%
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gsg-intro.html">GameLift
%% FleetIQ Guide</a>
%%
%% <b>Related operations</b>
%%
%% <ul> <li> <a>CreateGameServerGroup</a>
%%
%% </li> <li> <a>ListGameServerGroups</a>
%%
%% </li> <li> <a>DescribeGameServerGroup</a>
%%
%% </li> <li> <a>UpdateGameServerGroup</a>
%%
%% </li> <li> <a>DeleteGameServerGroup</a>
%%
%% </li> <li> <a>ResumeGameServerGroup</a>
%%
%% </li> <li> <a>SuspendGameServerGroup</a>
%%
%% </li> </ul>
resume_game_server_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    resume_game_server_group(Client, Input, []).
resume_game_server_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ResumeGameServerGroup">>, Input, Options).

%% @doc Retrieves all active game sessions that match a set of search
%% criteria and sorts them in a specified order. You can search or sort by
%% the following game session attributes:
%%
%% <ul> <li> <b>gameSessionId</b> -- A unique identifier for the game
%% session. You can use either a <code>GameSessionId</code> or
%% <code>GameSessionArn</code> value.
%%
%% </li> <li> <b>gameSessionName</b> -- Name assigned to a game session. This
%% value is set when requesting a new game session with
%% <a>CreateGameSession</a> or updating with <a>UpdateGameSession</a>. Game
%% session names do not need to be unique to a game session.
%%
%% </li> <li> <b>gameSessionProperties</b> -- Custom data defined in a game
%% session's <code>GameProperty</code> parameter. <code>GameProperty</code>
%% values are stored as key:value pairs; the filter expression must indicate
%% the key and a string to search the data values for. For example, to search
%% for game sessions with custom data containing the key:value pair
%% "gameMode:brawl", specify the following:
%% <code>gameSessionProperties.gameMode = "brawl"</code>. All custom data
%% values are searched as strings.
%%
%% </li> <li> <b>maximumSessions</b> -- Maximum number of player sessions
%% allowed for a game session. This value is set when requesting a new game
%% session with <a>CreateGameSession</a> or updating with
%% <a>UpdateGameSession</a>.
%%
%% </li> <li> <b>creationTimeMillis</b> -- Value indicating when a game
%% session was created. It is expressed in Unix time as milliseconds.
%%
%% </li> <li> <b>playerSessionCount</b> -- Number of players currently
%% connected to a game session. This value changes rapidly as players join
%% the session or drop out.
%%
%% </li> <li> <b>hasAvailablePlayerSessions</b> -- Boolean value indicating
%% whether a game session has reached its maximum number of players. It is
%% highly recommended that all search requests include this filter attribute
%% to optimize search performance and return only sessions that players can
%% join.
%%
%% </li> </ul> <note> Returned values for <code>playerSessionCount</code> and
%% <code>hasAvailablePlayerSessions</code> change quickly as players join
%% sessions and others drop out. Results should be considered a snapshot in
%% time. Be sure to refresh search results often, and handle sessions that
%% fill up before a player can join.
%%
%% </note> To search or sort, specify either a fleet ID or an alias ID, and
%% provide a search filter expression, a sort expression, or both. If
%% successful, a collection of <a>GameSession</a> objects matching the
%% request is returned. Use the pagination parameters to retrieve results as
%% a set of sequential pages.
%%
%% You can search for game sessions one fleet at a time only. To find game
%% sessions across multiple fleets, you must search each fleet separately and
%% combine the results. This search feature finds only game sessions that are
%% in <code>ACTIVE</code> status. To locate games in statuses other than
%% active, use <a>DescribeGameSessionDetails</a>.
%%
%% <ul> <li> <a>CreateGameSession</a>
%%
%% </li> <li> <a>DescribeGameSessions</a>
%%
%% </li> <li> <a>DescribeGameSessionDetails</a>
%%
%% </li> <li> <a>SearchGameSessions</a>
%%
%% </li> <li> <a>UpdateGameSession</a>
%%
%% </li> <li> <a>GetGameSessionLogUrl</a>
%%
%% </li> <li> Game session placements
%%
%% <ul> <li> <a>StartGameSessionPlacement</a>
%%
%% </li> <li> <a>DescribeGameSessionPlacement</a>
%%
%% </li> <li> <a>StopGameSessionPlacement</a>
%%
%% </li> </ul> </li> </ul>
search_game_sessions(Client, Input)
  when is_map(Client), is_map(Input) ->
    search_game_sessions(Client, Input, []).
search_game_sessions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SearchGameSessions">>, Input, Options).

%% @doc Resumes activity on a fleet that was suspended with
%% <a>StopFleetActions</a>. Currently, this operation is used to restart a
%% fleet's auto-scaling activity.
%%
%% To start fleet actions, specify the fleet ID and the type of actions to
%% restart. When auto-scaling fleet actions are restarted, Amazon GameLift
%% once again initiates scaling events as triggered by the fleet's scaling
%% policies. If actions on the fleet were never stopped, this operation will
%% have no effect. You can view a fleet's stopped actions using
%% <a>DescribeFleetAttributes</a>.
%%
%% <b>Learn more</b>
%%
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html">Setting
%% up GameLift Fleets</a>
%%
%% <b>Related operations</b>
%%
%% <ul> <li> <a>CreateFleet</a>
%%
%% </li> <li> <a>ListFleets</a>
%%
%% </li> <li> <a>DeleteFleet</a>
%%
%% </li> <li> <a>DescribeFleetAttributes</a>
%%
%% </li> <li> <a>UpdateFleetAttributes</a>
%%
%% </li> <li> <a>StartFleetActions</a> or <a>StopFleetActions</a>
%%
%% </li> </ul>
start_fleet_actions(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_fleet_actions(Client, Input, []).
start_fleet_actions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartFleetActions">>, Input, Options).

%% @doc Places a request for a new game session in a queue (see
%% <a>CreateGameSessionQueue</a>). When processing a placement request,
%% Amazon GameLift searches for available resources on the queue's
%% destinations, scanning each until it finds resources or the placement
%% request times out.
%%
%% A game session placement request can also request player sessions. When a
%% new game session is successfully created, Amazon GameLift creates a player
%% session for each player included in the request.
%%
%% When placing a game session, by default Amazon GameLift tries each fleet
%% in the order they are listed in the queue configuration. Ideally, a
%% queue's destinations are listed in preference order.
%%
%% Alternatively, when requesting a game session with players, you can also
%% provide latency data for each player in relevant Regions. Latency data
%% indicates the performance lag a player experiences when connected to a
%% fleet in the Region. Amazon GameLift uses latency data to reorder the list
%% of destinations to place the game session in a Region with minimal lag. If
%% latency data is provided for multiple players, Amazon GameLift calculates
%% each Region's average lag for all players and reorders to get the best
%% game play across all players.
%%
%% To place a new game session request, specify the following:
%%
%% <ul> <li> The queue name and a set of game session properties and settings
%%
%% </li> <li> A unique ID (such as a UUID) for the placement. You use this ID
%% to track the status of the placement request
%%
%% </li> <li> (Optional) A set of player data and a unique player ID for each
%% player that you are joining to the new game session (player data is
%% optional, but if you include it, you must also provide a unique ID for
%% each player)
%%
%% </li> <li> Latency data for all players (if you want to optimize game play
%% for the players)
%%
%% </li> </ul> If successful, a new game session placement is created.
%%
%% To track the status of a placement request, call
%% <a>DescribeGameSessionPlacement</a> and check the request's status. If the
%% status is <code>FULFILLED</code>, a new game session has been created and
%% a game session ARN and Region are referenced. If the placement request
%% times out, you can resubmit the request or retry it with a different
%% queue.
%%
%% <ul> <li> <a>CreateGameSession</a>
%%
%% </li> <li> <a>DescribeGameSessions</a>
%%
%% </li> <li> <a>DescribeGameSessionDetails</a>
%%
%% </li> <li> <a>SearchGameSessions</a>
%%
%% </li> <li> <a>UpdateGameSession</a>
%%
%% </li> <li> <a>GetGameSessionLogUrl</a>
%%
%% </li> <li> Game session placements
%%
%% <ul> <li> <a>StartGameSessionPlacement</a>
%%
%% </li> <li> <a>DescribeGameSessionPlacement</a>
%%
%% </li> <li> <a>StopGameSessionPlacement</a>
%%
%% </li> </ul> </li> </ul>
start_game_session_placement(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_game_session_placement(Client, Input, []).
start_game_session_placement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartGameSessionPlacement">>, Input, Options).

%% @doc Finds new players to fill open slots in an existing game session.
%% This operation can be used to add players to matched games that start with
%% fewer than the maximum number of players or to replace players when they
%% drop out. By backfilling with the same matchmaker used to create the
%% original match, you ensure that new players meet the match criteria and
%% maintain a consistent experience throughout the game session. You can
%% backfill a match anytime after a game session has been created.
%%
%% To request a match backfill, specify a unique ticket ID, the existing game
%% session's ARN, a matchmaking configuration, and a set of data that
%% describes all current players in the game session. If successful, a match
%% backfill ticket is created and returned with status set to QUEUED. The
%% ticket is placed in the matchmaker's ticket pool and processed. Track the
%% status of the ticket to respond as needed.
%%
%% The process of finding backfill matches is essentially identical to the
%% initial matchmaking process. The matchmaker searches the pool and groups
%% tickets together to form potential matches, allowing only one backfill
%% ticket per potential match. Once the a match is formed, the matchmaker
%% creates player sessions for the new players. All tickets in the match are
%% updated with the game session's connection information, and the
%% <a>GameSession</a> object is updated to include matchmaker data on the new
%% players. For more detail on how match backfill requests are processed, see
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-match.html">
%% How Amazon GameLift FlexMatch Works</a>.
%%
%% <b>Learn more</b>
%%
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/match-backfill.html">
%% Backfill Existing Games with FlexMatch</a>
%%
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-match.html">
%% How GameLift FlexMatch Works</a>
%%
%% <b>Related operations</b>
%%
%% <ul> <li> <a>StartMatchmaking</a>
%%
%% </li> <li> <a>DescribeMatchmaking</a>
%%
%% </li> <li> <a>StopMatchmaking</a>
%%
%% </li> <li> <a>AcceptMatch</a>
%%
%% </li> <li> <a>StartMatchBackfill</a>
%%
%% </li> </ul>
start_match_backfill(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_match_backfill(Client, Input, []).
start_match_backfill(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartMatchBackfill">>, Input, Options).

%% @doc Uses FlexMatch to create a game match for a group of players based on
%% custom matchmaking rules, and starts a new game for the matched players.
%% Each matchmaking request specifies the type of match to build (team
%% configuration, rules for an acceptable match, etc.). The request also
%% specifies the players to find a match for and where to host the new game
%% session for optimal performance. A matchmaking request might start with a
%% single player or a group of players who want to play together. FlexMatch
%% finds additional players as needed to fill the match. Match type, rules,
%% and the queue used to place a new game session are defined in a
%% <code>MatchmakingConfiguration</code>.
%%
%% To start matchmaking, provide a unique ticket ID, specify a matchmaking
%% configuration, and include the players to be matched. You must also
%% include a set of player attributes relevant for the matchmaking
%% configuration. If successful, a matchmaking ticket is returned with status
%% set to <code>QUEUED</code>. Track the status of the ticket to respond as
%% needed and acquire game session connection information for successfully
%% completed matches.
%%
%% <b>Tracking ticket status</b> -- A couple of options are available for
%% tracking the status of matchmaking requests:
%%
%% <ul> <li> Polling -- Call <code>DescribeMatchmaking</code>. This operation
%% returns the full ticket object, including current status and (for
%% completed tickets) game session connection info. We recommend polling no
%% more than once every 10 seconds.
%%
%% </li> <li> Notifications -- Get event notifications for changes in ticket
%% status using Amazon Simple Notification Service (SNS). Notifications are
%% easy to set up (see <a>CreateMatchmakingConfiguration</a>) and typically
%% deliver match status changes faster and more efficiently than polling. We
%% recommend that you use polling to back up to notifications (since delivery
%% is not guaranteed) and call <code>DescribeMatchmaking</code> only when
%% notifications are not received within 30 seconds.
%%
%% </li> </ul> <b>Processing a matchmaking request</b> -- FlexMatch handles a
%% matchmaking request as follows:
%%
%% <ol> <li> Your client code submits a <code>StartMatchmaking</code> request
%% for one or more players and tracks the status of the request ticket.
%%
%% </li> <li> FlexMatch uses this ticket and others in process to build an
%% acceptable match. When a potential match is identified, all tickets in the
%% proposed match are advanced to the next status.
%%
%% </li> <li> If the match requires player acceptance (set in the matchmaking
%% configuration), the tickets move into status
%% <code>REQUIRES_ACCEPTANCE</code>. This status triggers your client code to
%% solicit acceptance from all players in every ticket involved in the match,
%% and then call <a>AcceptMatch</a> for each player. If any player rejects or
%% fails to accept the match before a specified timeout, the proposed match
%% is dropped (see <code>AcceptMatch</code> for more details).
%%
%% </li> <li> Once a match is proposed and accepted, the matchmaking tickets
%% move into status <code>PLACING</code>. FlexMatch locates resources for a
%% new game session using the game session queue (set in the matchmaking
%% configuration) and creates the game session based on the match data.
%%
%% </li> <li> When the match is successfully placed, the matchmaking tickets
%% move into <code>COMPLETED</code> status. Connection information (including
%% game session endpoint and player session) is added to the matchmaking
%% tickets. Matched players can use the connection information to join the
%% game.
%%
%% </li> </ol> <b>Learn more</b>
%%
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/match-client.html">
%% Add FlexMatch to a Game Client</a>
%%
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/match-notification.html">
%% Set Up FlexMatch Event Notification</a>
%%
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/match-tasks.html">
%% FlexMatch Integration Roadmap</a>
%%
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-match.html">
%% How GameLift FlexMatch Works</a>
%%
%% <b>Related operations</b>
%%
%% <ul> <li> <a>StartMatchmaking</a>
%%
%% </li> <li> <a>DescribeMatchmaking</a>
%%
%% </li> <li> <a>StopMatchmaking</a>
%%
%% </li> <li> <a>AcceptMatch</a>
%%
%% </li> <li> <a>StartMatchBackfill</a>
%%
%% </li> </ul>
start_matchmaking(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_matchmaking(Client, Input, []).
start_matchmaking(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartMatchmaking">>, Input, Options).

%% @doc Suspends activity on a fleet. Currently, this operation is used to
%% stop a fleet's auto-scaling activity. It is used to temporarily stop
%% triggering scaling events. The policies can be retained and auto-scaling
%% activity can be restarted using <a>StartFleetActions</a>. You can view a
%% fleet's stopped actions using <a>DescribeFleetAttributes</a>.
%%
%% To stop fleet actions, specify the fleet ID and the type of actions to
%% suspend. When auto-scaling fleet actions are stopped, Amazon GameLift no
%% longer initiates scaling events except in response to manual changes using
%% <a>UpdateFleetCapacity</a>.
%%
%% <b>Learn more</b>
%%
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html">Setting
%% up GameLift Fleets</a>
%%
%% <b>Related operations</b>
%%
%% <ul> <li> <a>CreateFleet</a>
%%
%% </li> <li> <a>ListFleets</a>
%%
%% </li> <li> <a>DeleteFleet</a>
%%
%% </li> <li> <a>DescribeFleetAttributes</a>
%%
%% </li> <li> <a>UpdateFleetAttributes</a>
%%
%% </li> <li> <a>StartFleetActions</a> or <a>StopFleetActions</a>
%%
%% </li> </ul>
stop_fleet_actions(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_fleet_actions(Client, Input, []).
stop_fleet_actions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopFleetActions">>, Input, Options).

%% @doc Cancels a game session placement that is in <code>PENDING</code>
%% status. To stop a placement, provide the placement ID values. If
%% successful, the placement is moved to <code>CANCELLED</code> status.
%%
%% <ul> <li> <a>CreateGameSession</a>
%%
%% </li> <li> <a>DescribeGameSessions</a>
%%
%% </li> <li> <a>DescribeGameSessionDetails</a>
%%
%% </li> <li> <a>SearchGameSessions</a>
%%
%% </li> <li> <a>UpdateGameSession</a>
%%
%% </li> <li> <a>GetGameSessionLogUrl</a>
%%
%% </li> <li> Game session placements
%%
%% <ul> <li> <a>StartGameSessionPlacement</a>
%%
%% </li> <li> <a>DescribeGameSessionPlacement</a>
%%
%% </li> <li> <a>StopGameSessionPlacement</a>
%%
%% </li> </ul> </li> </ul>
stop_game_session_placement(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_game_session_placement(Client, Input, []).
stop_game_session_placement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopGameSessionPlacement">>, Input, Options).

%% @doc Cancels a matchmaking ticket or match backfill ticket that is
%% currently being processed. To stop the matchmaking operation, specify the
%% ticket ID. If successful, work on the ticket is stopped, and the ticket
%% status is changed to <code>CANCELLED</code>.
%%
%% This call is also used to turn off automatic backfill for an individual
%% game session. This is for game sessions that are created with a
%% matchmaking configuration that has automatic backfill enabled. The ticket
%% ID is included in the <code>MatchmakerData</code> of an updated game
%% session object, which is provided to the game server.
%%
%% <note> If the action is successful, the service sends back an empty JSON
%% struct with the HTTP 200 response (not an empty HTTP body).
%%
%% </note> <b>Learn more</b>
%%
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/match-client.html">
%% Add FlexMatch to a Game Client</a>
%%
%% <b>Related operations</b>
%%
%% <ul> <li> <a>StartMatchmaking</a>
%%
%% </li> <li> <a>DescribeMatchmaking</a>
%%
%% </li> <li> <a>StopMatchmaking</a>
%%
%% </li> <li> <a>AcceptMatch</a>
%%
%% </li> <li> <a>StartMatchBackfill</a>
%%
%% </li> </ul>
stop_matchmaking(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_matchmaking(Client, Input, []).
stop_matchmaking(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopMatchmaking">>, Input, Options).

%% @doc <b>This action is part of Amazon GameLift FleetIQ with game server
%% groups, which is in preview release and is subject to change.</b>
%%
%% Temporarily stops activity on a game server group without terminating
%% instances or the game server group. Activity can be restarted by calling
%% <a>ResumeGameServerGroup</a>. Activities that can suspended are:
%%
%% <ul> <li> Instance type replacement. This activity evaluates the current
%% Spot viability of all instance types that are defined for the game server
%% group. It updates the Auto Scaling group to remove nonviable Spot instance
%% types (which have a higher chance of game server interruptions) and
%% rebalances capacity across the remaining viable Spot instance types. When
%% this activity is suspended, the Auto Scaling group continues with its
%% current balance, regardless of viability. Instance protection, utilization
%% metrics, and capacity autoscaling activities continue to be active.
%%
%% </li> </ul> To suspend activity, specify a game server group ARN and the
%% type of activity to be suspended.
%%
%% <b>Learn more</b>
%%
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gsg-intro.html">GameLift
%% FleetIQ Guide</a>
%%
%% <b>Related operations</b>
%%
%% <ul> <li> <a>CreateGameServerGroup</a>
%%
%% </li> <li> <a>ListGameServerGroups</a>
%%
%% </li> <li> <a>DescribeGameServerGroup</a>
%%
%% </li> <li> <a>UpdateGameServerGroup</a>
%%
%% </li> <li> <a>DeleteGameServerGroup</a>
%%
%% </li> <li> <a>ResumeGameServerGroup</a>
%%
%% </li> <li> <a>SuspendGameServerGroup</a>
%%
%% </li> </ul>
suspend_game_server_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    suspend_game_server_group(Client, Input, []).
suspend_game_server_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SuspendGameServerGroup">>, Input, Options).

%% @doc Assigns a tag to a GameLift resource. AWS resource tags provide an
%% additional management tool set. You can use tags to organize resources,
%% create IAM permissions policies to manage access to groups of resources,
%% customize AWS cost breakdowns, etc. This action handles the permissions
%% necessary to manage tags for the following GameLift resource types:
%%
%% <ul> <li> Build
%%
%% </li> <li> Script
%%
%% </li> <li> Fleet
%%
%% </li> <li> Alias
%%
%% </li> <li> GameSessionQueue
%%
%% </li> <li> MatchmakingConfiguration
%%
%% </li> <li> MatchmakingRuleSet
%%
%% </li> </ul> To add a tag to a resource, specify the unique ARN value for
%% the resource and provide a tag list containing one or more tags. The
%% operation succeeds even if the list includes tags that are already
%% assigned to the specified resource.
%%
%% <b>Learn more</b>
%%
%% <a
%% href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging
%% AWS Resources</a> in the <i>AWS General Reference</i>
%%
%% <a
%% href="http://aws.amazon.com/answers/account-management/aws-tagging-strategies/">
%% AWS Tagging Strategies</a>
%%
%% <b>Related operations</b>
%%
%% <ul> <li> <a>TagResource</a>
%%
%% </li> <li> <a>UntagResource</a>
%%
%% </li> <li> <a>ListTagsForResource</a>
%%
%% </li> </ul>
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Removes a tag that is assigned to a GameLift resource. Resource tags
%% are used to organize AWS resources for a range of purposes. This action
%% handles the permissions necessary to manage tags for the following
%% GameLift resource types:
%%
%% <ul> <li> Build
%%
%% </li> <li> Script
%%
%% </li> <li> Fleet
%%
%% </li> <li> Alias
%%
%% </li> <li> GameSessionQueue
%%
%% </li> <li> MatchmakingConfiguration
%%
%% </li> <li> MatchmakingRuleSet
%%
%% </li> </ul> To remove a tag from a resource, specify the unique ARN value
%% for the resource and provide a string list containing one or more tags to
%% be removed. This action succeeds even if the list includes tags that are
%% not currently assigned to the specified resource.
%%
%% <b>Learn more</b>
%%
%% <a
%% href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging
%% AWS Resources</a> in the <i>AWS General Reference</i>
%%
%% <a
%% href="http://aws.amazon.com/answers/account-management/aws-tagging-strategies/">
%% AWS Tagging Strategies</a>
%%
%% <b>Related operations</b>
%%
%% <ul> <li> <a>TagResource</a>
%%
%% </li> <li> <a>UntagResource</a>
%%
%% </li> <li> <a>ListTagsForResource</a>
%%
%% </li> </ul>
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Updates properties for an alias. To update properties, specify the
%% alias ID to be updated and provide the information to be changed. To
%% reassign an alias to another fleet, provide an updated routing strategy.
%% If successful, the updated alias record is returned.
%%
%% <ul> <li> <a>CreateAlias</a>
%%
%% </li> <li> <a>ListAliases</a>
%%
%% </li> <li> <a>DescribeAlias</a>
%%
%% </li> <li> <a>UpdateAlias</a>
%%
%% </li> <li> <a>DeleteAlias</a>
%%
%% </li> <li> <a>ResolveAlias</a>
%%
%% </li> </ul>
update_alias(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_alias(Client, Input, []).
update_alias(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateAlias">>, Input, Options).

%% @doc Updates metadata in a build resource, including the build name and
%% version. To update the metadata, specify the build ID to update and
%% provide the new values. If successful, a build object containing the
%% updated metadata is returned.
%%
%% <b>Learn more</b>
%%
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-intro.html">
%% Upload a Custom Server Build</a>
%%
%% <b>Related operations</b>
%%
%% <ul> <li> <a>CreateBuild</a>
%%
%% </li> <li> <a>ListBuilds</a>
%%
%% </li> <li> <a>DescribeBuild</a>
%%
%% </li> <li> <a>UpdateBuild</a>
%%
%% </li> <li> <a>DeleteBuild</a>
%%
%% </li> </ul>
update_build(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_build(Client, Input, []).
update_build(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateBuild">>, Input, Options).

%% @doc Updates fleet properties, including name and description, for a
%% fleet. To update metadata, specify the fleet ID and the property values
%% that you want to change. If successful, the fleet ID for the updated fleet
%% is returned.
%%
%% <b>Learn more</b>
%%
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html">Setting
%% up GameLift Fleets</a>
%%
%% <b>Related operations</b>
%%
%% <ul> <li> <a>CreateFleet</a>
%%
%% </li> <li> <a>ListFleets</a>
%%
%% </li> <li> <a>DeleteFleet</a>
%%
%% </li> <li> <a>DescribeFleetAttributes</a>
%%
%% </li> <li> Update fleets:
%%
%% <ul> <li> <a>UpdateFleetAttributes</a>
%%
%% </li> <li> <a>UpdateFleetCapacity</a>
%%
%% </li> <li> <a>UpdateFleetPortSettings</a>
%%
%% </li> <li> <a>UpdateRuntimeConfiguration</a>
%%
%% </li> </ul> </li> <li> <a>StartFleetActions</a> or <a>StopFleetActions</a>
%%
%% </li> </ul>
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
%% Specify minimum and maximum number of instances. Amazon GameLift will not
%% change fleet capacity to values fall outside of this range. This is
%% particularly important when using auto-scaling (see
%% <a>PutScalingPolicy</a>) to allow capacity to adjust based on player
%% demand while imposing limits on automatic adjustments.
%%
%% To update fleet capacity, specify the fleet ID and the number of instances
%% you want the fleet to host. If successful, Amazon GameLift starts or
%% terminates instances so that the fleet's active instance count matches the
%% desired instance count. You can view a fleet's current capacity
%% information by calling <a>DescribeFleetCapacity</a>. If the desired
%% instance count is higher than the instance type's limit, the "Limit
%% Exceeded" exception occurs.
%%
%% <b>Learn more</b>
%%
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html">Setting
%% up GameLift Fleets</a>
%%
%% <b>Related operations</b>
%%
%% <ul> <li> <a>CreateFleet</a>
%%
%% </li> <li> <a>ListFleets</a>
%%
%% </li> <li> <a>DeleteFleet</a>
%%
%% </li> <li> <a>DescribeFleetAttributes</a>
%%
%% </li> <li> Update fleets:
%%
%% <ul> <li> <a>UpdateFleetAttributes</a>
%%
%% </li> <li> <a>UpdateFleetCapacity</a>
%%
%% </li> <li> <a>UpdateFleetPortSettings</a>
%%
%% </li> <li> <a>UpdateRuntimeConfiguration</a>
%%
%% </li> </ul> </li> <li> <a>StartFleetActions</a> or <a>StopFleetActions</a>
%%
%% </li> </ul>
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
%%
%% <b>Learn more</b>
%%
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html">Setting
%% up GameLift Fleets</a>
%%
%% <b>Related operations</b>
%%
%% <ul> <li> <a>CreateFleet</a>
%%
%% </li> <li> <a>ListFleets</a>
%%
%% </li> <li> <a>DeleteFleet</a>
%%
%% </li> <li> <a>DescribeFleetAttributes</a>
%%
%% </li> <li> Update fleets:
%%
%% <ul> <li> <a>UpdateFleetAttributes</a>
%%
%% </li> <li> <a>UpdateFleetCapacity</a>
%%
%% </li> <li> <a>UpdateFleetPortSettings</a>
%%
%% </li> <li> <a>UpdateRuntimeConfiguration</a>
%%
%% </li> </ul> </li> <li> <a>StartFleetActions</a> or <a>StopFleetActions</a>
%%
%% </li> </ul>
update_fleet_port_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_fleet_port_settings(Client, Input, []).
update_fleet_port_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateFleetPortSettings">>, Input, Options).

%% @doc <b>This action is part of Amazon GameLift FleetIQ with game server
%% groups, which is in preview release and is subject to change.</b>
%%
%% Updates information about a registered game server. This action is called
%% by a game server process that is running on an instance in a game server
%% group. There are three reasons to update game server information: (1) to
%% change the utilization status of the game server, (2) to report game
%% server health status, and (3) to change game server metadata. A registered
%% game server should regularly report health and should update utilization
%% status when it is supporting gameplay so that GameLift FleetIQ can
%% accurately track game server availability. You can make all three types of
%% updates in the same request.
%%
%% <ul> <li> To update the game server's utilization status, identify the
%% game server and game server group and specify the current utilization
%% status. Use this status to identify when game servers are currently
%% hosting games and when they are available to be claimed.
%%
%% </li> <li> To report health status, identify the game server and game
%% server group and set health check to HEALTHY. If a game server does not
%% report health status for a certain length of time, the game server is no
%% longer considered healthy and will be eventually de-registered from the
%% game server group to avoid affecting utilization metrics. The best
%% practice is to report health every 60 seconds.
%%
%% </li> <li> To change game server metadata, provide updated game server
%% data and custom sort key values.
%%
%% </li> </ul> Once a game server is successfully updated, the relevant
%% statuses and timestamps are updated.
%%
%% <b>Learn more</b>
%%
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gsg-intro.html">GameLift
%% FleetIQ Guide</a>
%%
%% <b>Related operations</b>
%%
%% <ul> <li> <a>RegisterGameServer</a>
%%
%% </li> <li> <a>ListGameServers</a>
%%
%% </li> <li> <a>ClaimGameServer</a>
%%
%% </li> <li> <a>DescribeGameServer</a>
%%
%% </li> <li> <a>UpdateGameServer</a>
%%
%% </li> <li> <a>DeregisterGameServer</a>
%%
%% </li> </ul>
update_game_server(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_game_server(Client, Input, []).
update_game_server(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateGameServer">>, Input, Options).

%% @doc <b>This action is part of Amazon GameLift FleetIQ with game server
%% groups, which is in preview release and is subject to change.</b>
%%
%% Updates GameLift FleetIQ-specific properties for a game server group.
%% These properties include instance rebalancing and game server protection.
%% Many Auto Scaling group properties are updated directly. These include
%% autoscaling policies, minimum/maximum/desired instance counts, and launch
%% template.
%%
%% To update the game server group, specify the game server group ID and
%% provide the updated values.
%%
%% Updated properties are validated to ensure that GameLift FleetIQ can
%% continue to perform its core instance rebalancing activity. When you
%% change Auto Scaling group properties directly and the changes cause errors
%% with GameLift FleetIQ activities, an alert is sent.
%%
%% <b>Learn more</b>
%%
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gsg-intro.html">GameLift
%% FleetIQ Guide</a>
%%
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gsg-asgroups.html">Updating
%% a GameLift FleetIQ-Linked Auto Scaling Group</a>
%%
%% <b>Related operations</b>
%%
%% <ul> <li> <a>CreateGameServerGroup</a>
%%
%% </li> <li> <a>ListGameServerGroups</a>
%%
%% </li> <li> <a>DescribeGameServerGroup</a>
%%
%% </li> <li> <a>UpdateGameServerGroup</a>
%%
%% </li> <li> <a>DeleteGameServerGroup</a>
%%
%% </li> <li> <a>ResumeGameServerGroup</a>
%%
%% </li> <li> <a>SuspendGameServerGroup</a>
%%
%% </li> </ul>
update_game_server_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_game_server_group(Client, Input, []).
update_game_server_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateGameServerGroup">>, Input, Options).

%% @doc Updates game session properties. This includes the session name,
%% maximum player count, protection policy, which controls whether or not an
%% active game session can be terminated during a scale-down event, and the
%% player session creation policy, which controls whether or not new players
%% can join the session. To update a game session, specify the game session
%% ID and the values you want to change. If successful, an updated
%% <a>GameSession</a> object is returned.
%%
%% <ul> <li> <a>CreateGameSession</a>
%%
%% </li> <li> <a>DescribeGameSessions</a>
%%
%% </li> <li> <a>DescribeGameSessionDetails</a>
%%
%% </li> <li> <a>SearchGameSessions</a>
%%
%% </li> <li> <a>UpdateGameSession</a>
%%
%% </li> <li> <a>GetGameSessionLogUrl</a>
%%
%% </li> <li> Game session placements
%%
%% <ul> <li> <a>StartGameSessionPlacement</a>
%%
%% </li> <li> <a>DescribeGameSessionPlacement</a>
%%
%% </li> <li> <a>StopGameSessionPlacement</a>
%%
%% </li> </ul> </li> </ul>
update_game_session(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_game_session(Client, Input, []).
update_game_session(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateGameSession">>, Input, Options).

%% @doc Updates settings for a game session queue, which determines how new
%% game session requests in the queue are processed. To update settings,
%% specify the queue name to be updated and provide the new settings. When
%% updating destinations, provide a complete list of destinations.
%%
%% <b>Learn more</b>
%%
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/queues-intro.html">
%% Using Multi-Region Queues</a>
%%
%% <b>Related operations</b>
%%
%% <ul> <li> <a>CreateGameSessionQueue</a>
%%
%% </li> <li> <a>DescribeGameSessionQueues</a>
%%
%% </li> <li> <a>UpdateGameSessionQueue</a>
%%
%% </li> <li> <a>DeleteGameSessionQueue</a>
%%
%% </li> </ul>
update_game_session_queue(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_game_session_queue(Client, Input, []).
update_game_session_queue(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateGameSessionQueue">>, Input, Options).

%% @doc Updates settings for a FlexMatch matchmaking configuration. These
%% changes affect all matches and game sessions that are created after the
%% update. To update settings, specify the configuration name to be updated
%% and provide the new settings.
%%
%% <b>Learn more</b>
%%
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/match-configuration.html">
%% Design a FlexMatch Matchmaker</a>
%%
%% <b>Related operations</b>
%%
%% <ul> <li> <a>CreateMatchmakingConfiguration</a>
%%
%% </li> <li> <a>DescribeMatchmakingConfigurations</a>
%%
%% </li> <li> <a>UpdateMatchmakingConfiguration</a>
%%
%% </li> <li> <a>DeleteMatchmakingConfiguration</a>
%%
%% </li> <li> <a>CreateMatchmakingRuleSet</a>
%%
%% </li> <li> <a>DescribeMatchmakingRuleSets</a>
%%
%% </li> <li> <a>ValidateMatchmakingRuleSet</a>
%%
%% </li> <li> <a>DeleteMatchmakingRuleSet</a>
%%
%% </li> </ul>
update_matchmaking_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_matchmaking_configuration(Client, Input, []).
update_matchmaking_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateMatchmakingConfiguration">>, Input, Options).

%% @doc Updates the current runtime configuration for the specified fleet,
%% which tells Amazon GameLift how to launch server processes on instances in
%% the fleet. You can update a fleet's runtime configuration at any time
%% after the fleet is created; it does not need to be in an
%% <code>ACTIVE</code> status.
%%
%% To update runtime configuration, specify the fleet ID and provide a
%% <code>RuntimeConfiguration</code> object with an updated set of server
%% process configurations.
%%
%% Each instance in a Amazon GameLift fleet checks regularly for an updated
%% runtime configuration and changes how it launches server processes to
%% comply with the latest version. Existing server processes are not affected
%% by the update; runtime configuration changes are applied gradually as
%% existing processes shut down and new processes are launched during Amazon
%% GameLift's normal process recycling activity.
%%
%% <b>Learn more</b>
%%
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html">Setting
%% up GameLift Fleets</a>
%%
%% <b>Related operations</b>
%%
%% <ul> <li> <a>CreateFleet</a>
%%
%% </li> <li> <a>ListFleets</a>
%%
%% </li> <li> <a>DeleteFleet</a>
%%
%% </li> <li> <a>DescribeFleetAttributes</a>
%%
%% </li> <li> Update fleets:
%%
%% <ul> <li> <a>UpdateFleetAttributes</a>
%%
%% </li> <li> <a>UpdateFleetCapacity</a>
%%
%% </li> <li> <a>UpdateFleetPortSettings</a>
%%
%% </li> <li> <a>UpdateRuntimeConfiguration</a>
%%
%% </li> </ul> </li> <li> <a>StartFleetActions</a> or <a>StopFleetActions</a>
%%
%% </li> </ul>
update_runtime_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_runtime_configuration(Client, Input, []).
update_runtime_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateRuntimeConfiguration">>, Input, Options).

%% @doc Updates Realtime script metadata and content.
%%
%% To update script metadata, specify the script ID and provide updated name
%% and/or version values.
%%
%% To update script content, provide an updated zip file by pointing to
%% either a local file or an Amazon S3 bucket location. You can use either
%% method regardless of how the original script was uploaded. Use the
%% <i>Version</i> parameter to track updates to the script.
%%
%% If the call is successful, the updated metadata is stored in the script
%% record and a revised script is uploaded to the Amazon GameLift service.
%% Once the script is updated and acquired by a fleet instance, the new
%% version is used for all new game sessions.
%%
%% <b>Learn more</b>
%%
%% <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/realtime-intro.html">Amazon
%% GameLift Realtime Servers</a>
%%
%% <b>Related operations</b>
%%
%% <ul> <li> <a>CreateScript</a>
%%
%% </li> <li> <a>ListScripts</a>
%%
%% </li> <li> <a>DescribeScript</a>
%%
%% </li> <li> <a>UpdateScript</a>
%%
%% </li> <li> <a>DeleteScript</a>
%%
%% </li> </ul>
update_script(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_script(Client, Input, []).
update_script(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateScript">>, Input, Options).

%% @doc Validates the syntax of a matchmaking rule or rule set. This
%% operation checks that the rule set is using syntactically correct JSON and
%% that it conforms to allowed property expressions. To validate syntax,
%% provide a rule set JSON string.
%%
%% <b>Learn more</b>
%%
%% <ul> <li> <a
%% href="https://docs.aws.amazon.com/gamelift/latest/developerguide/match-rulesets.html">Build
%% a Rule Set</a>
%%
%% </li> </ul> <b>Related operations</b>
%%
%% <ul> <li> <a>CreateMatchmakingConfiguration</a>
%%
%% </li> <li> <a>DescribeMatchmakingConfigurations</a>
%%
%% </li> <li> <a>UpdateMatchmakingConfiguration</a>
%%
%% </li> <li> <a>DeleteMatchmakingConfiguration</a>
%%
%% </li> <li> <a>CreateMatchmakingRuleSet</a>
%%
%% </li> <li> <a>DescribeMatchmakingRuleSets</a>
%%
%% </li> <li> <a>ValidateMatchmakingRuleSet</a>
%%
%% </li> <li> <a>DeleteMatchmakingRuleSet</a>
%%
%% </li> </ul>
validate_matchmaking_rule_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    validate_matchmaking_rule_set(Client, Input, []).
validate_matchmaking_rule_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ValidateMatchmakingRuleSet">>, Input, Options).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), binary(), map(), list()) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map() | undefined,
    Error :: map().
request(Client, Action, Input0, Options) ->
    Client1 = Client#{service => <<"gamelift">>},
    Host = build_host(<<"gamelift">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"GameLift.", Action/binary>>}
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

build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Client) ->
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
