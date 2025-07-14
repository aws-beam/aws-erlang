%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon DocumentDB elastic clusters
%%
%% Amazon DocumentDB elastic-clusters support workloads with millions of
%% reads/writes per second and petabytes of storage capacity.
%%
%% Amazon DocumentDB elastic clusters also simplify how developers interact
%% with Amazon DocumentDB elastic-clusters by eliminating the need to choose,
%% manage or upgrade instances.
%%
%% Amazon DocumentDB elastic-clusters were created to:
%%
%% provide a solution for customers looking for a database that provides
%% virtually limitless scale with rich query capabilities and MongoDB API
%% compatibility.
%%
%% give customers higher connection limits, and to reduce downtime from
%% patching.
%%
%% continue investing in a cloud-native, elastic, and class leading
%% architecture for JSON workloads.
-module(aws_docdb_elastic).

-export([apply_pending_maintenance_action/2,
         apply_pending_maintenance_action/3,
         copy_cluster_snapshot/3,
         copy_cluster_snapshot/4,
         create_cluster/2,
         create_cluster/3,
         create_cluster_snapshot/2,
         create_cluster_snapshot/3,
         delete_cluster/3,
         delete_cluster/4,
         delete_cluster_snapshot/3,
         delete_cluster_snapshot/4,
         get_cluster/2,
         get_cluster/4,
         get_cluster/5,
         get_cluster_snapshot/2,
         get_cluster_snapshot/4,
         get_cluster_snapshot/5,
         get_pending_maintenance_action/2,
         get_pending_maintenance_action/4,
         get_pending_maintenance_action/5,
         list_cluster_snapshots/1,
         list_cluster_snapshots/3,
         list_cluster_snapshots/4,
         list_clusters/1,
         list_clusters/3,
         list_clusters/4,
         list_pending_maintenance_actions/1,
         list_pending_maintenance_actions/3,
         list_pending_maintenance_actions/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         restore_cluster_from_snapshot/3,
         restore_cluster_from_snapshot/4,
         start_cluster/3,
         start_cluster/4,
         stop_cluster/3,
         stop_cluster/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_cluster/3,
         update_cluster/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% apply_pending_maintenance_action_input() :: #{
%%   <<"applyAction">> := string(),
%%   <<"applyOn">> => string(),
%%   <<"optInType">> := string(),
%%   <<"resourceArn">> := string()
%% }
-type apply_pending_maintenance_action_input() :: #{binary() => any()}.


%% Example:
%% cluster_snapshot_in_list() :: #{
%%   <<"clusterArn">> => [string()],
%%   <<"snapshotArn">> => [string()],
%%   <<"snapshotCreationTime">> => [string()],
%%   <<"snapshotName">> => [string()],
%%   <<"status">> => string()
%% }
-type cluster_snapshot_in_list() :: #{binary() => any()}.


%% Example:
%% update_cluster_input() :: #{
%%   <<"adminUserPassword">> => string(),
%%   <<"authType">> => string(),
%%   <<"backupRetentionPeriod">> => [integer()],
%%   <<"clientToken">> => [string()],
%%   <<"preferredBackupWindow">> => [string()],
%%   <<"preferredMaintenanceWindow">> => [string()],
%%   <<"shardCapacity">> => [integer()],
%%   <<"shardCount">> => [integer()],
%%   <<"shardInstanceCount">> => [integer()],
%%   <<"subnetIds">> => list([string()]()),
%%   <<"vpcSecurityGroupIds">> => list([string()]())
%% }
-type update_cluster_input() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% create_cluster_snapshot_output() :: #{
%%   <<"snapshot">> := cluster_snapshot()
%% }
-type create_cluster_snapshot_output() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% restore_cluster_from_snapshot_output() :: #{
%%   <<"cluster">> := cluster()
%% }
-type restore_cluster_from_snapshot_output() :: #{binary() => any()}.


%% Example:
%% start_cluster_output() :: #{
%%   <<"cluster">> => cluster()
%% }
-type start_cluster_output() :: #{binary() => any()}.


%% Example:
%% create_cluster_input() :: #{
%%   <<"adminUserName">> := [string()],
%%   <<"adminUserPassword">> := string(),
%%   <<"authType">> := string(),
%%   <<"backupRetentionPeriod">> => [integer()],
%%   <<"clientToken">> => [string()],
%%   <<"clusterName">> := [string()],
%%   <<"kmsKeyId">> => [string()],
%%   <<"preferredBackupWindow">> => [string()],
%%   <<"preferredMaintenanceWindow">> => [string()],
%%   <<"shardCapacity">> := [integer()],
%%   <<"shardCount">> := [integer()],
%%   <<"shardInstanceCount">> => [integer()],
%%   <<"subnetIds">> => list([string()]()),
%%   <<"tags">> => map(),
%%   <<"vpcSecurityGroupIds">> => list([string()]())
%% }
-type create_cluster_input() :: #{binary() => any()}.


%% Example:
%% copy_cluster_snapshot_input() :: #{
%%   <<"copyTags">> => [boolean()],
%%   <<"kmsKeyId">> => [string()],
%%   <<"tags">> => map(),
%%   <<"targetSnapshotName">> := [string()]
%% }
-type copy_cluster_snapshot_input() :: #{binary() => any()}.

%% Example:
%% get_cluster_input() :: #{}
-type get_cluster_input() :: #{}.


%% Example:
%% list_cluster_snapshots_input() :: #{
%%   <<"clusterArn">> => [string()],
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string(),
%%   <<"snapshotType">> => [string()]
%% }
-type list_cluster_snapshots_input() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% stop_cluster_input() :: #{}
-type stop_cluster_input() :: #{}.


%% Example:
%% list_clusters_output() :: #{
%%   <<"clusters">> => list(cluster_in_list()),
%%   <<"nextToken">> => string()
%% }
-type list_clusters_output() :: #{binary() => any()}.


%% Example:
%% list_pending_maintenance_actions_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"resourcePendingMaintenanceActions">> => list(resource_pending_maintenance_action())
%% }
-type list_pending_maintenance_actions_output() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% stop_cluster_output() :: #{
%%   <<"cluster">> => cluster()
%% }
-type stop_cluster_output() :: #{binary() => any()}.


%% Example:
%% delete_cluster_output() :: #{
%%   <<"cluster">> := cluster()
%% }
-type delete_cluster_output() :: #{binary() => any()}.


%% Example:
%% cluster() :: #{
%%   <<"adminUserName">> => [string()],
%%   <<"authType">> => string(),
%%   <<"backupRetentionPeriod">> => [integer()],
%%   <<"clusterArn">> => [string()],
%%   <<"clusterEndpoint">> => [string()],
%%   <<"clusterName">> => [string()],
%%   <<"createTime">> => [string()],
%%   <<"kmsKeyId">> => [string()],
%%   <<"preferredBackupWindow">> => [string()],
%%   <<"preferredMaintenanceWindow">> => [string()],
%%   <<"shardCapacity">> => [integer()],
%%   <<"shardCount">> => [integer()],
%%   <<"shardInstanceCount">> => [integer()],
%%   <<"shards">> => list(shard()),
%%   <<"status">> => string(),
%%   <<"subnetIds">> => list([string()]()),
%%   <<"vpcSecurityGroupIds">> => list([string()]())
%% }
-type cluster() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% get_cluster_output() :: #{
%%   <<"cluster">> := cluster()
%% }
-type get_cluster_output() :: #{binary() => any()}.


%% Example:
%% list_clusters_input() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string()
%% }
-type list_clusters_input() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% validation_exception_field() :: #{
%%   <<"message">> => [string()],
%%   <<"name">> => [string()]
%% }
-type validation_exception_field() :: #{binary() => any()}.


%% Example:
%% update_cluster_output() :: #{
%%   <<"cluster">> := cluster()
%% }
-type update_cluster_output() :: #{binary() => any()}.


%% Example:
%% cluster_snapshot() :: #{
%%   <<"adminUserName">> => [string()],
%%   <<"clusterArn">> => [string()],
%%   <<"clusterCreationTime">> => [string()],
%%   <<"kmsKeyId">> => [string()],
%%   <<"snapshotArn">> => [string()],
%%   <<"snapshotCreationTime">> => [string()],
%%   <<"snapshotName">> => [string()],
%%   <<"snapshotType">> => string(),
%%   <<"status">> => string(),
%%   <<"subnetIds">> => list([string()]()),
%%   <<"vpcSecurityGroupIds">> => list([string()]())
%% }
-type cluster_snapshot() :: #{binary() => any()}.

%% Example:
%% delete_cluster_input() :: #{}
-type delete_cluster_input() :: #{}.


%% Example:
%% list_cluster_snapshots_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"snapshots">> => list(cluster_snapshot_in_list())
%% }
-type list_cluster_snapshots_output() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% create_cluster_output() :: #{
%%   <<"cluster">> := cluster()
%% }
-type create_cluster_output() :: #{binary() => any()}.


%% Example:
%% shard() :: #{
%%   <<"createTime">> => [string()],
%%   <<"shardId">> => [string()],
%%   <<"status">> => string()
%% }
-type shard() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% delete_cluster_snapshot_output() :: #{
%%   <<"snapshot">> := cluster_snapshot()
%% }
-type delete_cluster_snapshot_output() :: #{binary() => any()}.

%% Example:
%% delete_cluster_snapshot_input() :: #{}
-type delete_cluster_snapshot_input() :: #{}.


%% Example:
%% validation_exception() :: #{
%%   <<"fieldList">> => list(validation_exception_field()),
%%   <<"message">> => [string()],
%%   <<"reason">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"retryAfterSeconds">> => [integer()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% resource_pending_maintenance_action() :: #{
%%   <<"pendingMaintenanceActionDetails">> => list(pending_maintenance_action_details()),
%%   <<"resourceArn">> => [string()]
%% }
-type resource_pending_maintenance_action() :: #{binary() => any()}.


%% Example:
%% apply_pending_maintenance_action_output() :: #{
%%   <<"resourcePendingMaintenanceAction">> => resource_pending_maintenance_action()
%% }
-type apply_pending_maintenance_action_output() :: #{binary() => any()}.


%% Example:
%% create_cluster_snapshot_input() :: #{
%%   <<"clusterArn">> := [string()],
%%   <<"snapshotName">> := [string()],
%%   <<"tags">> => map()
%% }
-type create_cluster_snapshot_input() :: #{binary() => any()}.


%% Example:
%% restore_cluster_from_snapshot_input() :: #{
%%   <<"clusterName">> := [string()],
%%   <<"kmsKeyId">> => [string()],
%%   <<"shardCapacity">> => [integer()],
%%   <<"shardInstanceCount">> => [integer()],
%%   <<"subnetIds">> => list([string()]()),
%%   <<"tags">> => map(),
%%   <<"vpcSecurityGroupIds">> => list([string()]())
%% }
-type restore_cluster_from_snapshot_input() :: #{binary() => any()}.

%% Example:
%% start_cluster_input() :: #{}
-type start_cluster_input() :: #{}.


%% Example:
%% get_pending_maintenance_action_output() :: #{
%%   <<"resourcePendingMaintenanceAction">> => resource_pending_maintenance_action()
%% }
-type get_pending_maintenance_action_output() :: #{binary() => any()}.


%% Example:
%% cluster_in_list() :: #{
%%   <<"clusterArn">> => [string()],
%%   <<"clusterName">> => [string()],
%%   <<"status">> => string()
%% }
-type cluster_in_list() :: #{binary() => any()}.

%% Example:
%% get_cluster_snapshot_input() :: #{}
-type get_cluster_snapshot_input() :: #{}.

%% Example:
%% get_pending_maintenance_action_input() :: #{}
-type get_pending_maintenance_action_input() :: #{}.


%% Example:
%% get_cluster_snapshot_output() :: #{
%%   <<"snapshot">> := cluster_snapshot()
%% }
-type get_cluster_snapshot_output() :: #{binary() => any()}.


%% Example:
%% copy_cluster_snapshot_output() :: #{
%%   <<"snapshot">> => cluster_snapshot()
%% }
-type copy_cluster_snapshot_output() :: #{binary() => any()}.


%% Example:
%% list_pending_maintenance_actions_input() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string()
%% }
-type list_pending_maintenance_actions_input() :: #{binary() => any()}.


%% Example:
%% pending_maintenance_action_details() :: #{
%%   <<"action">> => [string()],
%%   <<"autoAppliedAfterDate">> => [string()],
%%   <<"currentApplyDate">> => [string()],
%%   <<"description">> => [string()],
%%   <<"forcedApplyDate">> => [string()],
%%   <<"optInStatus">> => [string()]
%% }
-type pending_maintenance_action_details() :: #{binary() => any()}.

-type apply_pending_maintenance_action_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type copy_cluster_snapshot_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_cluster_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_cluster_snapshot_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_cluster_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_cluster_snapshot_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_cluster_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_cluster_snapshot_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_pending_maintenance_action_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_cluster_snapshots_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_clusters_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_pending_maintenance_actions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type restore_cluster_from_snapshot_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type start_cluster_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type stop_cluster_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type tag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_cluster_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc The type of pending maintenance action to be applied to the resource.
-spec apply_pending_maintenance_action(aws_client:aws_client(), apply_pending_maintenance_action_input()) ->
    {ok, apply_pending_maintenance_action_output(), tuple()} |
    {error, any()} |
    {error, apply_pending_maintenance_action_errors(), tuple()}.
apply_pending_maintenance_action(Client, Input) ->
    apply_pending_maintenance_action(Client, Input, []).

-spec apply_pending_maintenance_action(aws_client:aws_client(), apply_pending_maintenance_action_input(), proplists:proplist()) ->
    {ok, apply_pending_maintenance_action_output(), tuple()} |
    {error, any()} |
    {error, apply_pending_maintenance_action_errors(), tuple()}.
apply_pending_maintenance_action(Client, Input0, Options0) ->
    Method = post,
    Path = ["/pending-action"],
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

%% @doc Copies a snapshot of an elastic cluster.
-spec copy_cluster_snapshot(aws_client:aws_client(), binary() | list(), copy_cluster_snapshot_input()) ->
    {ok, copy_cluster_snapshot_output(), tuple()} |
    {error, any()} |
    {error, copy_cluster_snapshot_errors(), tuple()}.
copy_cluster_snapshot(Client, SnapshotArn, Input) ->
    copy_cluster_snapshot(Client, SnapshotArn, Input, []).

-spec copy_cluster_snapshot(aws_client:aws_client(), binary() | list(), copy_cluster_snapshot_input(), proplists:proplist()) ->
    {ok, copy_cluster_snapshot_output(), tuple()} |
    {error, any()} |
    {error, copy_cluster_snapshot_errors(), tuple()}.
copy_cluster_snapshot(Client, SnapshotArn, Input0, Options0) ->
    Method = post,
    Path = ["/cluster-snapshot/", aws_util:encode_uri(SnapshotArn), "/copy"],
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

%% @doc Creates a new Amazon DocumentDB elastic cluster and returns its
%% cluster structure.
-spec create_cluster(aws_client:aws_client(), create_cluster_input()) ->
    {ok, create_cluster_output(), tuple()} |
    {error, any()} |
    {error, create_cluster_errors(), tuple()}.
create_cluster(Client, Input) ->
    create_cluster(Client, Input, []).

-spec create_cluster(aws_client:aws_client(), create_cluster_input(), proplists:proplist()) ->
    {ok, create_cluster_output(), tuple()} |
    {error, any()} |
    {error, create_cluster_errors(), tuple()}.
create_cluster(Client, Input0, Options0) ->
    Method = post,
    Path = ["/cluster"],
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

%% @doc Creates a snapshot of an elastic cluster.
-spec create_cluster_snapshot(aws_client:aws_client(), create_cluster_snapshot_input()) ->
    {ok, create_cluster_snapshot_output(), tuple()} |
    {error, any()} |
    {error, create_cluster_snapshot_errors(), tuple()}.
create_cluster_snapshot(Client, Input) ->
    create_cluster_snapshot(Client, Input, []).

-spec create_cluster_snapshot(aws_client:aws_client(), create_cluster_snapshot_input(), proplists:proplist()) ->
    {ok, create_cluster_snapshot_output(), tuple()} |
    {error, any()} |
    {error, create_cluster_snapshot_errors(), tuple()}.
create_cluster_snapshot(Client, Input0, Options0) ->
    Method = post,
    Path = ["/cluster-snapshot"],
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

%% @doc Delete an elastic cluster.
-spec delete_cluster(aws_client:aws_client(), binary() | list(), delete_cluster_input()) ->
    {ok, delete_cluster_output(), tuple()} |
    {error, any()} |
    {error, delete_cluster_errors(), tuple()}.
delete_cluster(Client, ClusterArn, Input) ->
    delete_cluster(Client, ClusterArn, Input, []).

-spec delete_cluster(aws_client:aws_client(), binary() | list(), delete_cluster_input(), proplists:proplist()) ->
    {ok, delete_cluster_output(), tuple()} |
    {error, any()} |
    {error, delete_cluster_errors(), tuple()}.
delete_cluster(Client, ClusterArn, Input0, Options0) ->
    Method = delete,
    Path = ["/cluster/", aws_util:encode_uri(ClusterArn), ""],
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

%% @doc Delete an elastic cluster snapshot.
-spec delete_cluster_snapshot(aws_client:aws_client(), binary() | list(), delete_cluster_snapshot_input()) ->
    {ok, delete_cluster_snapshot_output(), tuple()} |
    {error, any()} |
    {error, delete_cluster_snapshot_errors(), tuple()}.
delete_cluster_snapshot(Client, SnapshotArn, Input) ->
    delete_cluster_snapshot(Client, SnapshotArn, Input, []).

-spec delete_cluster_snapshot(aws_client:aws_client(), binary() | list(), delete_cluster_snapshot_input(), proplists:proplist()) ->
    {ok, delete_cluster_snapshot_output(), tuple()} |
    {error, any()} |
    {error, delete_cluster_snapshot_errors(), tuple()}.
delete_cluster_snapshot(Client, SnapshotArn, Input0, Options0) ->
    Method = delete,
    Path = ["/cluster-snapshot/", aws_util:encode_uri(SnapshotArn), ""],
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

%% @doc Returns information about a specific elastic cluster.
-spec get_cluster(aws_client:aws_client(), binary() | list()) ->
    {ok, get_cluster_output(), tuple()} |
    {error, any()} |
    {error, get_cluster_errors(), tuple()}.
get_cluster(Client, ClusterArn)
  when is_map(Client) ->
    get_cluster(Client, ClusterArn, #{}, #{}).

-spec get_cluster(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_cluster_output(), tuple()} |
    {error, any()} |
    {error, get_cluster_errors(), tuple()}.
get_cluster(Client, ClusterArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_cluster(Client, ClusterArn, QueryMap, HeadersMap, []).

-spec get_cluster(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_cluster_output(), tuple()} |
    {error, any()} |
    {error, get_cluster_errors(), tuple()}.
get_cluster(Client, ClusterArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/cluster/", aws_util:encode_uri(ClusterArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a specific elastic cluster snapshot
-spec get_cluster_snapshot(aws_client:aws_client(), binary() | list()) ->
    {ok, get_cluster_snapshot_output(), tuple()} |
    {error, any()} |
    {error, get_cluster_snapshot_errors(), tuple()}.
get_cluster_snapshot(Client, SnapshotArn)
  when is_map(Client) ->
    get_cluster_snapshot(Client, SnapshotArn, #{}, #{}).

-spec get_cluster_snapshot(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_cluster_snapshot_output(), tuple()} |
    {error, any()} |
    {error, get_cluster_snapshot_errors(), tuple()}.
get_cluster_snapshot(Client, SnapshotArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_cluster_snapshot(Client, SnapshotArn, QueryMap, HeadersMap, []).

-spec get_cluster_snapshot(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_cluster_snapshot_output(), tuple()} |
    {error, any()} |
    {error, get_cluster_snapshot_errors(), tuple()}.
get_cluster_snapshot(Client, SnapshotArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/cluster-snapshot/", aws_util:encode_uri(SnapshotArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves all maintenance actions that are pending.
-spec get_pending_maintenance_action(aws_client:aws_client(), binary() | list()) ->
    {ok, get_pending_maintenance_action_output(), tuple()} |
    {error, any()} |
    {error, get_pending_maintenance_action_errors(), tuple()}.
get_pending_maintenance_action(Client, ResourceArn)
  when is_map(Client) ->
    get_pending_maintenance_action(Client, ResourceArn, #{}, #{}).

-spec get_pending_maintenance_action(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_pending_maintenance_action_output(), tuple()} |
    {error, any()} |
    {error, get_pending_maintenance_action_errors(), tuple()}.
get_pending_maintenance_action(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_pending_maintenance_action(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec get_pending_maintenance_action(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_pending_maintenance_action_output(), tuple()} |
    {error, any()} |
    {error, get_pending_maintenance_action_errors(), tuple()}.
get_pending_maintenance_action(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/pending-action/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about snapshots for a specified elastic cluster.
-spec list_cluster_snapshots(aws_client:aws_client()) ->
    {ok, list_cluster_snapshots_output(), tuple()} |
    {error, any()} |
    {error, list_cluster_snapshots_errors(), tuple()}.
list_cluster_snapshots(Client)
  when is_map(Client) ->
    list_cluster_snapshots(Client, #{}, #{}).

-spec list_cluster_snapshots(aws_client:aws_client(), map(), map()) ->
    {ok, list_cluster_snapshots_output(), tuple()} |
    {error, any()} |
    {error, list_cluster_snapshots_errors(), tuple()}.
list_cluster_snapshots(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_cluster_snapshots(Client, QueryMap, HeadersMap, []).

-spec list_cluster_snapshots(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_cluster_snapshots_output(), tuple()} |
    {error, any()} |
    {error, list_cluster_snapshots_errors(), tuple()}.
list_cluster_snapshots(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/cluster-snapshots"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"clusterArn">>, maps:get(<<"clusterArn">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"snapshotType">>, maps:get(<<"snapshotType">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about provisioned Amazon DocumentDB elastic
%% clusters.
-spec list_clusters(aws_client:aws_client()) ->
    {ok, list_clusters_output(), tuple()} |
    {error, any()} |
    {error, list_clusters_errors(), tuple()}.
list_clusters(Client)
  when is_map(Client) ->
    list_clusters(Client, #{}, #{}).

-spec list_clusters(aws_client:aws_client(), map(), map()) ->
    {ok, list_clusters_output(), tuple()} |
    {error, any()} |
    {error, list_clusters_errors(), tuple()}.
list_clusters(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_clusters(Client, QueryMap, HeadersMap, []).

-spec list_clusters(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_clusters_output(), tuple()} |
    {error, any()} |
    {error, list_clusters_errors(), tuple()}.
list_clusters(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/clusters"],
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

%% @doc Retrieves a list of all maintenance actions that are pending.
-spec list_pending_maintenance_actions(aws_client:aws_client()) ->
    {ok, list_pending_maintenance_actions_output(), tuple()} |
    {error, any()} |
    {error, list_pending_maintenance_actions_errors(), tuple()}.
list_pending_maintenance_actions(Client)
  when is_map(Client) ->
    list_pending_maintenance_actions(Client, #{}, #{}).

-spec list_pending_maintenance_actions(aws_client:aws_client(), map(), map()) ->
    {ok, list_pending_maintenance_actions_output(), tuple()} |
    {error, any()} |
    {error, list_pending_maintenance_actions_errors(), tuple()}.
list_pending_maintenance_actions(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_pending_maintenance_actions(Client, QueryMap, HeadersMap, []).

-spec list_pending_maintenance_actions(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_pending_maintenance_actions_output(), tuple()} |
    {error, any()} |
    {error, list_pending_maintenance_actions_errors(), tuple()}.
list_pending_maintenance_actions(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/pending-actions"],
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

%% @doc Lists all tags on a elastic cluster resource
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

%% @doc Restores an elastic cluster from a snapshot.
-spec restore_cluster_from_snapshot(aws_client:aws_client(), binary() | list(), restore_cluster_from_snapshot_input()) ->
    {ok, restore_cluster_from_snapshot_output(), tuple()} |
    {error, any()} |
    {error, restore_cluster_from_snapshot_errors(), tuple()}.
restore_cluster_from_snapshot(Client, SnapshotArn, Input) ->
    restore_cluster_from_snapshot(Client, SnapshotArn, Input, []).

-spec restore_cluster_from_snapshot(aws_client:aws_client(), binary() | list(), restore_cluster_from_snapshot_input(), proplists:proplist()) ->
    {ok, restore_cluster_from_snapshot_output(), tuple()} |
    {error, any()} |
    {error, restore_cluster_from_snapshot_errors(), tuple()}.
restore_cluster_from_snapshot(Client, SnapshotArn, Input0, Options0) ->
    Method = post,
    Path = ["/cluster-snapshot/", aws_util:encode_uri(SnapshotArn), "/restore"],
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

%% @doc Restarts the stopped elastic cluster that is specified by
%% `clusterARN'.
-spec start_cluster(aws_client:aws_client(), binary() | list(), start_cluster_input()) ->
    {ok, start_cluster_output(), tuple()} |
    {error, any()} |
    {error, start_cluster_errors(), tuple()}.
start_cluster(Client, ClusterArn, Input) ->
    start_cluster(Client, ClusterArn, Input, []).

-spec start_cluster(aws_client:aws_client(), binary() | list(), start_cluster_input(), proplists:proplist()) ->
    {ok, start_cluster_output(), tuple()} |
    {error, any()} |
    {error, start_cluster_errors(), tuple()}.
start_cluster(Client, ClusterArn, Input0, Options0) ->
    Method = post,
    Path = ["/cluster/", aws_util:encode_uri(ClusterArn), "/start"],
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

%% @doc Stops the running elastic cluster that is specified by
%% `clusterArn'.
%%
%% The elastic cluster must be in the available state.
-spec stop_cluster(aws_client:aws_client(), binary() | list(), stop_cluster_input()) ->
    {ok, stop_cluster_output(), tuple()} |
    {error, any()} |
    {error, stop_cluster_errors(), tuple()}.
stop_cluster(Client, ClusterArn, Input) ->
    stop_cluster(Client, ClusterArn, Input, []).

-spec stop_cluster(aws_client:aws_client(), binary() | list(), stop_cluster_input(), proplists:proplist()) ->
    {ok, stop_cluster_output(), tuple()} |
    {error, any()} |
    {error, stop_cluster_errors(), tuple()}.
stop_cluster(Client, ClusterArn, Input0, Options0) ->
    Method = post,
    Path = ["/cluster/", aws_util:encode_uri(ClusterArn), "/stop"],
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

%% @doc Adds metadata tags to an elastic cluster resource
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

%% @doc Removes metadata tags from an elastic cluster resource
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
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Modifies an elastic cluster.
%%
%% This includes updating admin-username/password,
%% upgrading the API version, and setting up a backup window and maintenance
%% window
-spec update_cluster(aws_client:aws_client(), binary() | list(), update_cluster_input()) ->
    {ok, update_cluster_output(), tuple()} |
    {error, any()} |
    {error, update_cluster_errors(), tuple()}.
update_cluster(Client, ClusterArn, Input) ->
    update_cluster(Client, ClusterArn, Input, []).

-spec update_cluster(aws_client:aws_client(), binary() | list(), update_cluster_input(), proplists:proplist()) ->
    {ok, update_cluster_output(), tuple()} |
    {error, any()} |
    {error, update_cluster_errors(), tuple()}.
update_cluster(Client, ClusterArn, Input0, Options0) ->
    Method = put,
    Path = ["/cluster/", aws_util:encode_uri(ClusterArn), ""],
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
    Client1 = Client#{service => <<"docdb-elastic">>},
    Host = build_host(<<"docdb-elastic">>, Client1),
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
