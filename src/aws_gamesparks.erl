%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.


-module(aws_gamesparks).

-export([create_game/2,
         create_game/3,
         create_snapshot/3,
         create_snapshot/4,
         create_stage/3,
         create_stage/4,
         delete_game/3,
         delete_game/4,
         delete_stage/4,
         delete_stage/5,
         disconnect_player/5,
         disconnect_player/6,
         export_snapshot/3,
         export_snapshot/5,
         export_snapshot/6,
         get_extension/3,
         get_extension/5,
         get_extension/6,
         get_extension_version/4,
         get_extension_version/6,
         get_extension_version/7,
         get_game/2,
         get_game/4,
         get_game/5,
         get_game_configuration/2,
         get_game_configuration/4,
         get_game_configuration/5,
         get_generated_code_job/4,
         get_generated_code_job/6,
         get_generated_code_job/7,
         get_player_connection_status/4,
         get_player_connection_status/6,
         get_player_connection_status/7,
         get_snapshot/3,
         get_snapshot/5,
         get_snapshot/6,
         get_stage/3,
         get_stage/5,
         get_stage/6,
         get_stage_deployment/3,
         get_stage_deployment/5,
         get_stage_deployment/6,
         import_game_configuration/3,
         import_game_configuration/4,
         list_extension_versions/3,
         list_extension_versions/5,
         list_extension_versions/6,
         list_extensions/1,
         list_extensions/3,
         list_extensions/4,
         list_games/1,
         list_games/3,
         list_games/4,
         list_generated_code_jobs/3,
         list_generated_code_jobs/5,
         list_generated_code_jobs/6,
         list_snapshots/2,
         list_snapshots/4,
         list_snapshots/5,
         list_stage_deployments/3,
         list_stage_deployments/5,
         list_stage_deployments/6,
         list_stages/2,
         list_stages/4,
         list_stages/5,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         start_generated_code_job/4,
         start_generated_code_job/5,
         start_stage_deployment/4,
         start_stage_deployment/5,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_game/3,
         update_game/4,
         update_game_configuration/3,
         update_game_configuration/4,
         update_snapshot/4,
         update_snapshot/5,
         update_stage/4,
         update_stage/5]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a new game with an empty configuration.
%%
%% After creating your game, you can update the configuration using
%% `UpdateGameConfiguration' or `ImportGameConfiguration'.
create_game(Client, Input) ->
    create_game(Client, Input, []).
create_game(Client, Input0, Options0) ->
    Method = post,
    Path = ["/game"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a snapshot of the game configuration.
create_snapshot(Client, GameName, Input) ->
    create_snapshot(Client, GameName, Input, []).
create_snapshot(Client, GameName, Input0, Options0) ->
    Method = post,
    Path = ["/game/", aws_util:encode_uri(GameName), "/snapshot"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new stage for stage-by-stage game development and
%% deployment.
create_stage(Client, GameName, Input) ->
    create_stage(Client, GameName, Input, []).
create_stage(Client, GameName, Input0, Options0) ->
    Method = post,
    Path = ["/game/", aws_util:encode_uri(GameName), "/stage"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a game.
delete_game(Client, GameName, Input) ->
    delete_game(Client, GameName, Input, []).
delete_game(Client, GameName, Input0, Options0) ->
    Method = delete,
    Path = ["/game/", aws_util:encode_uri(GameName), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a stage from a game, along with the associated game runtime.
delete_stage(Client, GameName, StageName, Input) ->
    delete_stage(Client, GameName, StageName, Input, []).
delete_stage(Client, GameName, StageName, Input0, Options0) ->
    Method = delete,
    Path = ["/game/", aws_util:encode_uri(GameName), "/stage/", aws_util:encode_uri(StageName), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Disconnects a player from the game runtime.
%%
%% If a player has multiple connections, this operation attempts to close all
%% of them.
disconnect_player(Client, GameName, PlayerId, StageName, Input) ->
    disconnect_player(Client, GameName, PlayerId, StageName, Input, []).
disconnect_player(Client, GameName, PlayerId, StageName, Input0, Options0) ->
    Method = post,
    Path = ["/runtime/game/", aws_util:encode_uri(GameName), "/stage/", aws_util:encode_uri(StageName), "/player/", aws_util:encode_uri(PlayerId), "/disconnect"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Exports a game configuration snapshot.
export_snapshot(Client, GameName, SnapshotId)
  when is_map(Client) ->
    export_snapshot(Client, GameName, SnapshotId, #{}, #{}).

export_snapshot(Client, GameName, SnapshotId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    export_snapshot(Client, GameName, SnapshotId, QueryMap, HeadersMap, []).

export_snapshot(Client, GameName, SnapshotId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/game/", aws_util:encode_uri(GameName), "/snapshot/", aws_util:encode_uri(SnapshotId), "/export"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets details about a specified extension.
get_extension(Client, Name, Namespace)
  when is_map(Client) ->
    get_extension(Client, Name, Namespace, #{}, #{}).

get_extension(Client, Name, Namespace, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_extension(Client, Name, Namespace, QueryMap, HeadersMap, []).

get_extension(Client, Name, Namespace, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/extension/", aws_util:encode_uri(Namespace), "/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets details about a specified extension version.
get_extension_version(Client, ExtensionVersion, Name, Namespace)
  when is_map(Client) ->
    get_extension_version(Client, ExtensionVersion, Name, Namespace, #{}, #{}).

get_extension_version(Client, ExtensionVersion, Name, Namespace, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_extension_version(Client, ExtensionVersion, Name, Namespace, QueryMap, HeadersMap, []).

get_extension_version(Client, ExtensionVersion, Name, Namespace, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/extension/", aws_util:encode_uri(Namespace), "/", aws_util:encode_uri(Name), "/version/", aws_util:encode_uri(ExtensionVersion), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets details about a game.
get_game(Client, GameName)
  when is_map(Client) ->
    get_game(Client, GameName, #{}, #{}).

get_game(Client, GameName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_game(Client, GameName, QueryMap, HeadersMap, []).

get_game(Client, GameName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/game/", aws_util:encode_uri(GameName), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the configuration of the game.
get_game_configuration(Client, GameName)
  when is_map(Client) ->
    get_game_configuration(Client, GameName, #{}, #{}).

get_game_configuration(Client, GameName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_game_configuration(Client, GameName, QueryMap, HeadersMap, []).

get_game_configuration(Client, GameName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/game/", aws_util:encode_uri(GameName), "/configuration"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"Sections">>, maps:get(<<"Sections">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets details about a job that is generating code for a snapshot.
get_generated_code_job(Client, GameName, JobId, SnapshotId)
  when is_map(Client) ->
    get_generated_code_job(Client, GameName, JobId, SnapshotId, #{}, #{}).

get_generated_code_job(Client, GameName, JobId, SnapshotId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_generated_code_job(Client, GameName, JobId, SnapshotId, QueryMap, HeadersMap, []).

get_generated_code_job(Client, GameName, JobId, SnapshotId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/game/", aws_util:encode_uri(GameName), "/snapshot/", aws_util:encode_uri(SnapshotId), "/generated-sdk-code-job/", aws_util:encode_uri(JobId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the status of a player's connection to the game runtime.
%%
%% It's possible for a single player to have multiple connections to the
%% game runtime. If a player is not connected, this operation returns an
%% empty list.
get_player_connection_status(Client, GameName, PlayerId, StageName)
  when is_map(Client) ->
    get_player_connection_status(Client, GameName, PlayerId, StageName, #{}, #{}).

get_player_connection_status(Client, GameName, PlayerId, StageName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_player_connection_status(Client, GameName, PlayerId, StageName, QueryMap, HeadersMap, []).

get_player_connection_status(Client, GameName, PlayerId, StageName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/runtime/game/", aws_util:encode_uri(GameName), "/stage/", aws_util:encode_uri(StageName), "/player/", aws_util:encode_uri(PlayerId), "/connection"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a copy of the game configuration in a snapshot.
get_snapshot(Client, GameName, SnapshotId)
  when is_map(Client) ->
    get_snapshot(Client, GameName, SnapshotId, #{}, #{}).

get_snapshot(Client, GameName, SnapshotId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_snapshot(Client, GameName, SnapshotId, QueryMap, HeadersMap, []).

get_snapshot(Client, GameName, SnapshotId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/game/", aws_util:encode_uri(GameName), "/snapshot/", aws_util:encode_uri(SnapshotId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"Sections">>, maps:get(<<"Sections">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a stage.
get_stage(Client, GameName, StageName)
  when is_map(Client) ->
    get_stage(Client, GameName, StageName, #{}, #{}).

get_stage(Client, GameName, StageName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_stage(Client, GameName, StageName, QueryMap, HeadersMap, []).

get_stage(Client, GameName, StageName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/game/", aws_util:encode_uri(GameName), "/stage/", aws_util:encode_uri(StageName), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a stage deployment.
get_stage_deployment(Client, GameName, StageName)
  when is_map(Client) ->
    get_stage_deployment(Client, GameName, StageName, #{}, #{}).

get_stage_deployment(Client, GameName, StageName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_stage_deployment(Client, GameName, StageName, QueryMap, HeadersMap, []).

get_stage_deployment(Client, GameName, StageName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/game/", aws_util:encode_uri(GameName), "/stage/", aws_util:encode_uri(StageName), "/deployment"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"DeploymentId">>, maps:get(<<"DeploymentId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Imports a game configuration.
%%
%% This operation replaces the current configuration of the game with the
%% provided input. This is not a reversible operation. If you want to
%% preserve the previous configuration, use `CreateSnapshot' to make a
%% new snapshot before importing.
import_game_configuration(Client, GameName, Input) ->
    import_game_configuration(Client, GameName, Input, []).
import_game_configuration(Client, GameName, Input0, Options0) ->
    Method = put,
    Path = ["/game/", aws_util:encode_uri(GameName), "/configuration"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets a paginated list of available versions for the extension.
%%
%% Each time an API change is made to an extension, the version is
%% incremented. The list retrieved by this operation shows the versions that
%% are currently available.
list_extension_versions(Client, Name, Namespace)
  when is_map(Client) ->
    list_extension_versions(Client, Name, Namespace, #{}, #{}).

list_extension_versions(Client, Name, Namespace, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_extension_versions(Client, Name, Namespace, QueryMap, HeadersMap, []).

list_extension_versions(Client, Name, Namespace, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/extension/", aws_util:encode_uri(Namespace), "/", aws_util:encode_uri(Name), "/version"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a paginated list of available extensions.
%%
%% Extensions provide features that games can use from scripts.
list_extensions(Client)
  when is_map(Client) ->
    list_extensions(Client, #{}, #{}).

list_extensions(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_extensions(Client, QueryMap, HeadersMap, []).

list_extensions(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/extension"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a paginated list of games.
list_games(Client)
  when is_map(Client) ->
    list_games(Client, #{}, #{}).

list_games(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_games(Client, QueryMap, HeadersMap, []).

list_games(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/game"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a paginated list of code generation jobs for a snapshot.
list_generated_code_jobs(Client, GameName, SnapshotId)
  when is_map(Client) ->
    list_generated_code_jobs(Client, GameName, SnapshotId, #{}, #{}).

list_generated_code_jobs(Client, GameName, SnapshotId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_generated_code_jobs(Client, GameName, SnapshotId, QueryMap, HeadersMap, []).

list_generated_code_jobs(Client, GameName, SnapshotId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/game/", aws_util:encode_uri(GameName), "/snapshot/", aws_util:encode_uri(SnapshotId), "/generated-sdk-code-jobs"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a paginated list of snapshot summaries from the game.
list_snapshots(Client, GameName)
  when is_map(Client) ->
    list_snapshots(Client, GameName, #{}, #{}).

list_snapshots(Client, GameName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_snapshots(Client, GameName, QueryMap, HeadersMap, []).

list_snapshots(Client, GameName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/game/", aws_util:encode_uri(GameName), "/snapshot"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a paginated list of stage deployment summaries from the game.
list_stage_deployments(Client, GameName, StageName)
  when is_map(Client) ->
    list_stage_deployments(Client, GameName, StageName, #{}, #{}).

list_stage_deployments(Client, GameName, StageName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_stage_deployments(Client, GameName, StageName, QueryMap, HeadersMap, []).

list_stage_deployments(Client, GameName, StageName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/game/", aws_util:encode_uri(GameName), "/stage/", aws_util:encode_uri(StageName), "/deployments"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a paginated list of stage summaries from the game.
list_stages(Client, GameName)
  when is_map(Client) ->
    list_stages(Client, GameName, #{}, #{}).

list_stages(Client, GameName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_stages(Client, GameName, QueryMap, HeadersMap, []).

list_stages(Client, GameName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/game/", aws_util:encode_uri(GameName), "/stage"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the tags associated with a GameSparks resource.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Starts an asynchronous process that generates client code for
%% system-defined and custom messages.
%%
%% The resulting code is collected as a .zip file and uploaded to a
%% pre-signed Amazon S3 URL.
start_generated_code_job(Client, GameName, SnapshotId, Input) ->
    start_generated_code_job(Client, GameName, SnapshotId, Input, []).
start_generated_code_job(Client, GameName, SnapshotId, Input0, Options0) ->
    Method = post,
    Path = ["/game/", aws_util:encode_uri(GameName), "/snapshot/", aws_util:encode_uri(SnapshotId), "/generated-sdk-code-job"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deploys a snapshot to the stage and creates a new game runtime.
%%
%% After you call this operation, you can check the deployment status by
%% using `GetStageDeployment'.
%%
%% If there are any players connected to the previous game runtime, then both
%% runtimes persist. Existing connections to the previous runtime are
%% maintained. When players disconnect and reconnect, they connect to the new
%% runtime. After there are no connections to the previous game runtime, it
%% is deleted.
start_stage_deployment(Client, GameName, StageName, Input) ->
    start_stage_deployment(Client, GameName, StageName, Input, []).
start_stage_deployment(Client, GameName, StageName, Input0, Options0) ->
    Method = post,
    Path = ["/game/", aws_util:encode_uri(GameName), "/stage/", aws_util:encode_uri(StageName), "/deployment"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Adds tags to a GameSparks resource.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes tags from a GameSparks resource.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates details of the game.
update_game(Client, GameName, Input) ->
    update_game(Client, GameName, Input, []).
update_game(Client, GameName, Input0, Options0) ->
    Method = patch,
    Path = ["/game/", aws_util:encode_uri(GameName), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates one or more sections of the game configuration.
update_game_configuration(Client, GameName, Input) ->
    update_game_configuration(Client, GameName, Input, []).
update_game_configuration(Client, GameName, Input0, Options0) ->
    Method = patch,
    Path = ["/game/", aws_util:encode_uri(GameName), "/configuration"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the metadata of a GameSparks snapshot.
update_snapshot(Client, GameName, SnapshotId, Input) ->
    update_snapshot(Client, GameName, SnapshotId, Input, []).
update_snapshot(Client, GameName, SnapshotId, Input0, Options0) ->
    Method = patch,
    Path = ["/game/", aws_util:encode_uri(GameName), "/snapshot/", aws_util:encode_uri(SnapshotId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the metadata of a stage.
update_stage(Client, GameName, StageName, Input) ->
    update_stage(Client, GameName, StageName, Input, []).
update_stage(Client, GameName, StageName, Input0, Options0) ->
    Method = patch,
    Path = ["/game/", aws_util:encode_uri(GameName), "/stage/", aws_util:encode_uri(StageName), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
    Client1 = Client#{service => <<"gamesparks">>},
    Host = build_host(<<"gamesparks">>, Client1),
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
