%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc SimSpace Weaver (SimSpace Weaver) is a service that you can use to
%% build and run
%% large-scale spatial simulations in the Amazon Web Services Cloud.
%%
%% For example, you can create
%% crowd simulations, large real-world environments, and immersive and
%% interactive experiences.
%% For more information about SimSpace Weaver, see the
%% SimSpace Weaver User Guide:
%% https://docs.aws.amazon.com/simspaceweaver/latest/userguide/
%% .
%%
%% This API reference describes the API operations and data types that you
%% can use to
%% communicate directly with SimSpace Weaver.
%%
%% SimSpace Weaver also provides the SimSpace Weaver app SDK, which you use
%% for app development. The
%% SimSpace Weaver app SDK API reference is included in the SimSpace Weaver
%% app SDK documentation. This
%% documentation is part of the SimSpace Weaver app SDK distributable
%% package.
-module(aws_simspaceweaver).

-export([create_snapshot/2,
         create_snapshot/3,
         delete_app/2,
         delete_app/3,
         delete_simulation/2,
         delete_simulation/3,
         describe_app/4,
         describe_app/6,
         describe_app/7,
         describe_simulation/2,
         describe_simulation/4,
         describe_simulation/5,
         list_apps/2,
         list_apps/4,
         list_apps/5,
         list_simulations/1,
         list_simulations/3,
         list_simulations/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         start_app/2,
         start_app/3,
         start_clock/2,
         start_clock/3,
         start_simulation/2,
         start_simulation/3,
         stop_app/2,
         stop_app/3,
         stop_clock/2,
         stop_clock/3,
         stop_simulation/2,
         stop_simulation/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% start_app_input() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"Description">> => string(),
%%   <<"Domain">> := string(),
%%   <<"LaunchOverrides">> => launch_overrides(),
%%   <<"Name">> := string(),
%%   <<"Simulation">> := string()
%% }
-type start_app_input() :: #{binary() => any()}.


%% Example:
%% start_simulation_output() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"ExecutionId">> => string()
%% }
-type start_simulation_output() :: #{binary() => any()}.


%% Example:
%% simulation_clock() :: #{
%%   <<"Status">> => string(),
%%   <<"TargetStatus">> => string()
%% }
-type simulation_clock() :: #{binary() => any()}.


%% Example:
%% list_simulations_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Simulations">> => list(simulation_metadata())
%% }
-type list_simulations_output() :: #{binary() => any()}.


%% Example:
%% stop_app_input() :: #{
%%   <<"App">> := string(),
%%   <<"Domain">> := string(),
%%   <<"Simulation">> := string()
%% }
-type stop_app_input() :: #{binary() => any()}.


%% Example:
%% simulation_app_endpoint_info() :: #{
%%   <<"Address">> => string(),
%%   <<"IngressPortMappings">> => list(simulation_app_port_mapping())
%% }
-type simulation_app_endpoint_info() :: #{binary() => any()}.


%% Example:
%% simulation_app_metadata() :: #{
%%   <<"Domain">> => string(),
%%   <<"Name">> => string(),
%%   <<"Simulation">> => string(),
%%   <<"Status">> => string(),
%%   <<"TargetStatus">> => string()
%% }
-type simulation_app_metadata() :: #{binary() => any()}.


%% Example:
%% list_simulations_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_simulations_input() :: #{binary() => any()}.

%% Example:
%% stop_clock_output() :: #{}
-type stop_clock_output() :: #{}.


%% Example:
%% domain() :: #{
%%   <<"Lifecycle">> => string(),
%%   <<"Name">> => string()
%% }
-type domain() :: #{binary() => any()}.


%% Example:
%% start_clock_input() :: #{
%%   <<"Simulation">> := string()
%% }
-type start_clock_input() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_output() :: #{
%%   <<"Tags">> => map()
%% }
-type list_tags_for_resource_output() :: #{binary() => any()}.


%% Example:
%% logging_configuration() :: #{
%%   <<"Destinations">> => list(log_destination())
%% }
-type logging_configuration() :: #{binary() => any()}.

%% Example:
%% create_snapshot_output() :: #{}
-type create_snapshot_output() :: #{}.


%% Example:
%% stop_clock_input() :: #{
%%   <<"Simulation">> := string()
%% }
-type stop_clock_input() :: #{binary() => any()}.


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
%% service_quota_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% delete_simulation_output() :: #{}
-type delete_simulation_output() :: #{}.


%% Example:
%% stop_simulation_input() :: #{
%%   <<"Simulation">> := string()
%% }
-type stop_simulation_input() :: #{binary() => any()}.


%% Example:
%% create_snapshot_input() :: #{
%%   <<"Destination">> := s3_destination(),
%%   <<"Simulation">> := string()
%% }
-type create_snapshot_input() :: #{binary() => any()}.


%% Example:
%% log_destination() :: #{
%%   <<"CloudWatchLogsLogGroup">> => cloud_watch_logs_log_group()
%% }
-type log_destination() :: #{binary() => any()}.


%% Example:
%% describe_app_output() :: #{
%%   <<"Description">> => string(),
%%   <<"Domain">> => string(),
%%   <<"EndpointInfo">> => simulation_app_endpoint_info(),
%%   <<"LaunchOverrides">> => launch_overrides(),
%%   <<"Name">> => string(),
%%   <<"Simulation">> => string(),
%%   <<"Status">> => string(),
%%   <<"TargetStatus">> => string()
%% }
-type describe_app_output() :: #{binary() => any()}.


%% Example:
%% cloud_watch_logs_log_group() :: #{
%%   <<"LogGroupArn">> => string()
%% }
-type cloud_watch_logs_log_group() :: #{binary() => any()}.


%% Example:
%% describe_simulation_input() :: #{
%%   <<"Simulation">> := string()
%% }
-type describe_simulation_input() :: #{binary() => any()}.


%% Example:
%% s3_location() :: #{
%%   <<"BucketName">> => string(),
%%   <<"ObjectKey">> => string()
%% }
-type s3_location() :: #{binary() => any()}.


%% Example:
%% tag_resource_input() :: #{
%%   <<"Tags">> => map()
%% }
-type tag_resource_input() :: #{binary() => any()}.


%% Example:
%% s3_destination() :: #{
%%   <<"BucketName">> => string(),
%%   <<"ObjectKeyPrefix">> => string()
%% }
-type s3_destination() :: #{binary() => any()}.


%% Example:
%% list_apps_output() :: #{
%%   <<"Apps">> => list(simulation_app_metadata()),
%%   <<"NextToken">> => string()
%% }
-type list_apps_output() :: #{binary() => any()}.

%% Example:
%% tag_resource_output() :: #{}
-type tag_resource_output() :: #{}.


%% Example:
%% launch_overrides() :: #{
%%   <<"LaunchCommands">> => list(string())
%% }
-type launch_overrides() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% start_simulation_input() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"Description">> => string(),
%%   <<"MaximumDuration">> => string(),
%%   <<"Name">> := string(),
%%   <<"RoleArn">> := string(),
%%   <<"SchemaS3Location">> => s3_location(),
%%   <<"SnapshotS3Location">> => s3_location(),
%%   <<"Tags">> => map()
%% }
-type start_simulation_input() :: #{binary() => any()}.


%% Example:
%% untag_resource_input() :: #{
%%   <<"TagKeys">> => list(string())
%% }
-type untag_resource_input() :: #{binary() => any()}.


%% Example:
%% simulation_app_port_mapping() :: #{
%%   <<"Actual">> => integer(),
%%   <<"Declared">> => integer()
%% }
-type simulation_app_port_mapping() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"Message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_input() :: #{}
-type list_tags_for_resource_input() :: #{}.

%% Example:
%% stop_app_output() :: #{}
-type stop_app_output() :: #{}.

%% Example:
%% untag_resource_output() :: #{}
-type untag_resource_output() :: #{}.

%% Example:
%% delete_app_output() :: #{}
-type delete_app_output() :: #{}.

%% Example:
%% stop_simulation_output() :: #{}
-type stop_simulation_output() :: #{}.


%% Example:
%% delete_simulation_input() :: #{
%%   <<"Simulation">> := string()
%% }
-type delete_simulation_input() :: #{binary() => any()}.


%% Example:
%% describe_app_input() :: #{
%%   <<"App">> := string(),
%%   <<"Domain">> := string(),
%%   <<"Simulation">> := string()
%% }
-type describe_app_input() :: #{binary() => any()}.


%% Example:
%% list_apps_input() :: #{
%%   <<"Domain">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Simulation">> := string()
%% }
-type list_apps_input() :: #{binary() => any()}.


%% Example:
%% live_simulation_state() :: #{
%%   <<"Clocks">> => list(simulation_clock()),
%%   <<"Domains">> => list(domain())
%% }
-type live_simulation_state() :: #{binary() => any()}.


%% Example:
%% start_app_output() :: #{
%%   <<"Domain">> => string(),
%%   <<"Name">> => string(),
%%   <<"Simulation">> => string()
%% }
-type start_app_output() :: #{binary() => any()}.

%% Example:
%% start_clock_output() :: #{}
-type start_clock_output() :: #{}.


%% Example:
%% too_many_tags_exception() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_tags_exception() :: #{binary() => any()}.


%% Example:
%% describe_simulation_output() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"ExecutionId">> => string(),
%%   <<"LiveSimulationState">> => live_simulation_state(),
%%   <<"LoggingConfiguration">> => logging_configuration(),
%%   <<"MaximumDuration">> => string(),
%%   <<"Name">> => string(),
%%   <<"RoleArn">> => string(),
%%   <<"SchemaError">> => string(),
%%   <<"SchemaS3Location">> => s3_location(),
%%   <<"SnapshotS3Location">> => s3_location(),
%%   <<"StartError">> => string(),
%%   <<"Status">> => string(),
%%   <<"TargetStatus">> => string()
%% }
-type describe_simulation_output() :: #{binary() => any()}.


%% Example:
%% delete_app_input() :: #{
%%   <<"App">> := string(),
%%   <<"Domain">> := string(),
%%   <<"Simulation">> := string()
%% }
-type delete_app_input() :: #{binary() => any()}.


%% Example:
%% simulation_metadata() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Status">> => string(),
%%   <<"TargetStatus">> => string()
%% }
-type simulation_metadata() :: #{binary() => any()}.

-type create_snapshot_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_app_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_simulation_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type describe_app_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_simulation_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_apps_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_simulations_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_tags_for_resource_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type start_app_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type start_clock_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type start_simulation_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type stop_app_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type stop_clock_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type stop_simulation_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type tag_resource_errors() ::
    too_many_tags_exception() | 
    validation_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    validation_exception() | 
    resource_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a snapshot of the specified simulation.
%%
%% A snapshot is a file that contains simulation state data at a specific
%% time.
%% The state data saved in a snapshot includes entity data from the State
%% Fabric,
%% the simulation configuration specified in the schema, and the clock tick
%% number.
%% You can use the snapshot to initialize a new simulation.
%% For more information about snapshots, see Snapshots:
%% https://docs.aws.amazon.com/simspaceweaver/latest/userguide/working-with_snapshots.html
%% in the SimSpace Weaver User Guide.
%%
%% You specify a `Destination' when you create a snapshot.
%% The `Destination' is the name of an Amazon S3 bucket and an optional
%% `ObjectKeyPrefix'. The `ObjectKeyPrefix' is
%% usually the name of a folder in the bucket. SimSpace Weaver creates a
%% `snapshot' folder inside the `Destination' and
%% places the snapshot file there.
%%
%% The snapshot file is an Amazon S3 object. It has an object key with the
%% form:
%% ```
%% object-key-prefix/snapshot/simulation-name-YYMMdd-HHmm-ss.zip''',
%% where:
%%
%% ```
%% YY ''' is the 2-digit year
%%
%% ```
%% MM ''' is the 2-digit month
%%
%% ```
%% dd ''' is the 2-digit day of the month
%%
%% ```
%% HH ''' is the 2-digit hour (24-hour clock)
%%
%% ```
%% mm ''' is the 2-digit minutes
%%
%% ```
%% ss ''' is the 2-digit seconds
-spec create_snapshot(aws_client:aws_client(), create_snapshot_input()) ->
    {ok, create_snapshot_output(), tuple()} |
    {error, any()} |
    {error, create_snapshot_errors(), tuple()}.
create_snapshot(Client, Input) ->
    create_snapshot(Client, Input, []).

-spec create_snapshot(aws_client:aws_client(), create_snapshot_input(), proplists:proplist()) ->
    {ok, create_snapshot_output(), tuple()} |
    {error, any()} |
    {error, create_snapshot_errors(), tuple()}.
create_snapshot(Client, Input0, Options0) ->
    Method = post,
    Path = ["/createsnapshot"],
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

%% @doc Deletes the instance of the given custom app.
-spec delete_app(aws_client:aws_client(), delete_app_input()) ->
    {ok, delete_app_output(), tuple()} |
    {error, any()} |
    {error, delete_app_errors(), tuple()}.
delete_app(Client, Input) ->
    delete_app(Client, Input, []).

-spec delete_app(aws_client:aws_client(), delete_app_input(), proplists:proplist()) ->
    {ok, delete_app_output(), tuple()} |
    {error, any()} |
    {error, delete_app_errors(), tuple()}.
delete_app(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/deleteapp"],
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
                     {<<"app">>, <<"App">>},
                     {<<"domain">>, <<"Domain">>},
                     {<<"simulation">>, <<"Simulation">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes all SimSpace Weaver resources assigned to the given
%% simulation.
%%
%% Your simulation uses resources in other Amazon Web Services. This API
%% operation doesn't delete
%% resources in other Amazon Web Services.
-spec delete_simulation(aws_client:aws_client(), delete_simulation_input()) ->
    {ok, delete_simulation_output(), tuple()} |
    {error, any()} |
    {error, delete_simulation_errors(), tuple()}.
delete_simulation(Client, Input) ->
    delete_simulation(Client, Input, []).

-spec delete_simulation(aws_client:aws_client(), delete_simulation_input(), proplists:proplist()) ->
    {ok, delete_simulation_output(), tuple()} |
    {error, any()} |
    {error, delete_simulation_errors(), tuple()}.
delete_simulation(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/deletesimulation"],
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
                     {<<"simulation">>, <<"Simulation">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns the state of the given custom app.
-spec describe_app(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, describe_app_output(), tuple()} |
    {error, any()} |
    {error, describe_app_errors(), tuple()}.
describe_app(Client, App, Domain, Simulation)
  when is_map(Client) ->
    describe_app(Client, App, Domain, Simulation, #{}, #{}).

-spec describe_app(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_app_output(), tuple()} |
    {error, any()} |
    {error, describe_app_errors(), tuple()}.
describe_app(Client, App, Domain, Simulation, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_app(Client, App, Domain, Simulation, QueryMap, HeadersMap, []).

-spec describe_app(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_app_output(), tuple()} |
    {error, any()} |
    {error, describe_app_errors(), tuple()}.
describe_app(Client, App, Domain, Simulation, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/describeapp"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"app">>, App},
        {<<"domain">>, Domain},
        {<<"simulation">>, Simulation}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the current state of the given simulation.
-spec describe_simulation(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_simulation_output(), tuple()} |
    {error, any()} |
    {error, describe_simulation_errors(), tuple()}.
describe_simulation(Client, Simulation)
  when is_map(Client) ->
    describe_simulation(Client, Simulation, #{}, #{}).

-spec describe_simulation(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_simulation_output(), tuple()} |
    {error, any()} |
    {error, describe_simulation_errors(), tuple()}.
describe_simulation(Client, Simulation, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_simulation(Client, Simulation, QueryMap, HeadersMap, []).

-spec describe_simulation(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_simulation_output(), tuple()} |
    {error, any()} |
    {error, describe_simulation_errors(), tuple()}.
describe_simulation(Client, Simulation, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/describesimulation"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"simulation">>, Simulation}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all custom apps or service apps for the given simulation and
%% domain.
-spec list_apps(aws_client:aws_client(), binary() | list()) ->
    {ok, list_apps_output(), tuple()} |
    {error, any()} |
    {error, list_apps_errors(), tuple()}.
list_apps(Client, Simulation)
  when is_map(Client) ->
    list_apps(Client, Simulation, #{}, #{}).

-spec list_apps(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_apps_output(), tuple()} |
    {error, any()} |
    {error, list_apps_errors(), tuple()}.
list_apps(Client, Simulation, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_apps(Client, Simulation, QueryMap, HeadersMap, []).

-spec list_apps(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_apps_output(), tuple()} |
    {error, any()} |
    {error, list_apps_errors(), tuple()}.
list_apps(Client, Simulation, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/listapps"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"domain">>, maps:get(<<"domain">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"simulation">>, Simulation}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the SimSpace Weaver simulations in the Amazon Web Services
%% account used to make the API call.
-spec list_simulations(aws_client:aws_client()) ->
    {ok, list_simulations_output(), tuple()} |
    {error, any()} |
    {error, list_simulations_errors(), tuple()}.
list_simulations(Client)
  when is_map(Client) ->
    list_simulations(Client, #{}, #{}).

-spec list_simulations(aws_client:aws_client(), map(), map()) ->
    {ok, list_simulations_output(), tuple()} |
    {error, any()} |
    {error, list_simulations_errors(), tuple()}.
list_simulations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_simulations(Client, QueryMap, HeadersMap, []).

-spec list_simulations(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_simulations_output(), tuple()} |
    {error, any()} |
    {error, list_simulations_errors(), tuple()}.
list_simulations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/listsimulations"],
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

%% @doc Lists all tags on a SimSpace Weaver resource.
-spec list_tags_for_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
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

%% @doc Starts a custom app with the configuration specified in the
%% simulation schema.
-spec start_app(aws_client:aws_client(), start_app_input()) ->
    {ok, start_app_output(), tuple()} |
    {error, any()} |
    {error, start_app_errors(), tuple()}.
start_app(Client, Input) ->
    start_app(Client, Input, []).

-spec start_app(aws_client:aws_client(), start_app_input(), proplists:proplist()) ->
    {ok, start_app_output(), tuple()} |
    {error, any()} |
    {error, start_app_errors(), tuple()}.
start_app(Client, Input0, Options0) ->
    Method = post,
    Path = ["/startapp"],
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

%% @doc Starts the simulation clock.
-spec start_clock(aws_client:aws_client(), start_clock_input()) ->
    {ok, start_clock_output(), tuple()} |
    {error, any()} |
    {error, start_clock_errors(), tuple()}.
start_clock(Client, Input) ->
    start_clock(Client, Input, []).

-spec start_clock(aws_client:aws_client(), start_clock_input(), proplists:proplist()) ->
    {ok, start_clock_output(), tuple()} |
    {error, any()} |
    {error, start_clock_errors(), tuple()}.
start_clock(Client, Input0, Options0) ->
    Method = post,
    Path = ["/startclock"],
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

%% @doc Starts a simulation with the given name.
%%
%% You must choose to start your
%% simulation from a schema or from a snapshot.
%% For more information about the schema, see the schema reference:
%% https://docs.aws.amazon.com/simspaceweaver/latest/userguide/schema-reference.html
%% in the SimSpace Weaver User Guide.
%% For more information about snapshots, see Snapshots:
%% https://docs.aws.amazon.com/simspaceweaver/latest/userguide/working-with_snapshots.html
%% in the SimSpace Weaver User Guide.
-spec start_simulation(aws_client:aws_client(), start_simulation_input()) ->
    {ok, start_simulation_output(), tuple()} |
    {error, any()} |
    {error, start_simulation_errors(), tuple()}.
start_simulation(Client, Input) ->
    start_simulation(Client, Input, []).

-spec start_simulation(aws_client:aws_client(), start_simulation_input(), proplists:proplist()) ->
    {ok, start_simulation_output(), tuple()} |
    {error, any()} |
    {error, start_simulation_errors(), tuple()}.
start_simulation(Client, Input0, Options0) ->
    Method = post,
    Path = ["/startsimulation"],
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

%% @doc Stops the given custom app and shuts down all of its allocated
%% compute resources.
-spec stop_app(aws_client:aws_client(), stop_app_input()) ->
    {ok, stop_app_output(), tuple()} |
    {error, any()} |
    {error, stop_app_errors(), tuple()}.
stop_app(Client, Input) ->
    stop_app(Client, Input, []).

-spec stop_app(aws_client:aws_client(), stop_app_input(), proplists:proplist()) ->
    {ok, stop_app_output(), tuple()} |
    {error, any()} |
    {error, stop_app_errors(), tuple()}.
stop_app(Client, Input0, Options0) ->
    Method = post,
    Path = ["/stopapp"],
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

%% @doc Stops the simulation clock.
-spec stop_clock(aws_client:aws_client(), stop_clock_input()) ->
    {ok, stop_clock_output(), tuple()} |
    {error, any()} |
    {error, stop_clock_errors(), tuple()}.
stop_clock(Client, Input) ->
    stop_clock(Client, Input, []).

-spec stop_clock(aws_client:aws_client(), stop_clock_input(), proplists:proplist()) ->
    {ok, stop_clock_output(), tuple()} |
    {error, any()} |
    {error, stop_clock_errors(), tuple()}.
stop_clock(Client, Input0, Options0) ->
    Method = post,
    Path = ["/stopclock"],
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

%% @doc Stops the given simulation.
%%
%% You can't restart a simulation after you stop it. If you want to
%% restart a simulation, then
%% you must stop it, delete it, and start a new instance of it.
-spec stop_simulation(aws_client:aws_client(), stop_simulation_input()) ->
    {ok, stop_simulation_output(), tuple()} |
    {error, any()} |
    {error, stop_simulation_errors(), tuple()}.
stop_simulation(Client, Input) ->
    stop_simulation(Client, Input, []).

-spec stop_simulation(aws_client:aws_client(), stop_simulation_input(), proplists:proplist()) ->
    {ok, stop_simulation_output(), tuple()} |
    {error, any()} |
    {error, stop_simulation_errors(), tuple()}.
stop_simulation(Client, Input0, Options0) ->
    Method = post,
    Path = ["/stopsimulation"],
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

%% @doc Adds tags to a SimSpace Weaver resource.
%%
%% For more information about tags, see Tagging Amazon Web Services
%% resources: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
%% in the
%% Amazon Web Services General Reference.
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_input()) ->
    {ok, tag_resource_output(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_input(), proplists:proplist()) ->
    {ok, tag_resource_output(), tuple()} |
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

%% @doc Removes tags from a SimSpace Weaver resource.
%%
%% For more information about tags, see Tagging Amazon Web Services
%% resources: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
%% in the
%% Amazon Web Services General Reference.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_input()) ->
    {ok, untag_resource_output(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_input(), proplists:proplist()) ->
    {ok, untag_resource_output(), tuple()} |
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
    Client1 = Client#{service => <<"simspaceweaver">>},
    Host = build_host(<<"simspaceweaver">>, Client1),
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
