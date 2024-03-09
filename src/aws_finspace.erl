%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc The FinSpace management service provides the APIs for managing
%% FinSpace environments.
-module(aws_finspace).

-export([create_environment/2,
         create_environment/3,
         create_kx_changeset/4,
         create_kx_changeset/5,
         create_kx_cluster/3,
         create_kx_cluster/4,
         create_kx_database/3,
         create_kx_database/4,
         create_kx_dataview/4,
         create_kx_dataview/5,
         create_kx_environment/2,
         create_kx_environment/3,
         create_kx_scaling_group/3,
         create_kx_scaling_group/4,
         create_kx_user/3,
         create_kx_user/4,
         create_kx_volume/3,
         create_kx_volume/4,
         delete_environment/3,
         delete_environment/4,
         delete_kx_cluster/4,
         delete_kx_cluster/5,
         delete_kx_database/4,
         delete_kx_database/5,
         delete_kx_dataview/5,
         delete_kx_dataview/6,
         delete_kx_environment/3,
         delete_kx_environment/4,
         delete_kx_scaling_group/4,
         delete_kx_scaling_group/5,
         delete_kx_user/4,
         delete_kx_user/5,
         delete_kx_volume/4,
         delete_kx_volume/5,
         get_environment/2,
         get_environment/4,
         get_environment/5,
         get_kx_changeset/4,
         get_kx_changeset/6,
         get_kx_changeset/7,
         get_kx_cluster/3,
         get_kx_cluster/5,
         get_kx_cluster/6,
         get_kx_connection_string/4,
         get_kx_connection_string/6,
         get_kx_connection_string/7,
         get_kx_database/3,
         get_kx_database/5,
         get_kx_database/6,
         get_kx_dataview/4,
         get_kx_dataview/6,
         get_kx_dataview/7,
         get_kx_environment/2,
         get_kx_environment/4,
         get_kx_environment/5,
         get_kx_scaling_group/3,
         get_kx_scaling_group/5,
         get_kx_scaling_group/6,
         get_kx_user/3,
         get_kx_user/5,
         get_kx_user/6,
         get_kx_volume/3,
         get_kx_volume/5,
         get_kx_volume/6,
         list_environments/1,
         list_environments/3,
         list_environments/4,
         list_kx_changesets/3,
         list_kx_changesets/5,
         list_kx_changesets/6,
         list_kx_cluster_nodes/3,
         list_kx_cluster_nodes/5,
         list_kx_cluster_nodes/6,
         list_kx_clusters/2,
         list_kx_clusters/4,
         list_kx_clusters/5,
         list_kx_databases/2,
         list_kx_databases/4,
         list_kx_databases/5,
         list_kx_dataviews/3,
         list_kx_dataviews/5,
         list_kx_dataviews/6,
         list_kx_environments/1,
         list_kx_environments/3,
         list_kx_environments/4,
         list_kx_scaling_groups/2,
         list_kx_scaling_groups/4,
         list_kx_scaling_groups/5,
         list_kx_users/2,
         list_kx_users/4,
         list_kx_users/5,
         list_kx_volumes/2,
         list_kx_volumes/4,
         list_kx_volumes/5,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_environment/3,
         update_environment/4,
         update_kx_cluster_code_configuration/4,
         update_kx_cluster_code_configuration/5,
         update_kx_cluster_databases/4,
         update_kx_cluster_databases/5,
         update_kx_database/4,
         update_kx_database/5,
         update_kx_dataview/5,
         update_kx_dataview/6,
         update_kx_environment/3,
         update_kx_environment/4,
         update_kx_environment_network/3,
         update_kx_environment_network/4,
         update_kx_user/4,
         update_kx_user/5,
         update_kx_volume/4,
         update_kx_volume/5]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Create a new FinSpace environment.
create_environment(Client, Input) ->
    create_environment(Client, Input, []).
create_environment(Client, Input0, Options0) ->
    Method = post,
    Path = ["/environment"],
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

%% @doc
%% Creates a changeset for a kdb database.
%%
%% A changeset allows you to add and delete existing files by using an
%% ordered list of change requests.
create_kx_changeset(Client, DatabaseName, EnvironmentId, Input) ->
    create_kx_changeset(Client, DatabaseName, EnvironmentId, Input, []).
create_kx_changeset(Client, DatabaseName, EnvironmentId, Input0, Options0) ->
    Method = post,
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/databases/", aws_util:encode_uri(DatabaseName), "/changesets"],
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

%% @doc Creates a new kdb cluster.
create_kx_cluster(Client, EnvironmentId, Input) ->
    create_kx_cluster(Client, EnvironmentId, Input, []).
create_kx_cluster(Client, EnvironmentId, Input0, Options0) ->
    Method = post,
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/clusters"],
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

%% @doc Creates a new kdb database in the environment.
create_kx_database(Client, EnvironmentId, Input) ->
    create_kx_database(Client, EnvironmentId, Input, []).
create_kx_database(Client, EnvironmentId, Input0, Options0) ->
    Method = post,
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/databases"],
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

%% @doc
%% Creates a snapshot of kdb database with tiered storage capabilities and a
%% pre-warmed cache, ready for mounting on kdb clusters.
%%
%% Dataviews are only available for clusters running on a scaling group. They
%% are not supported on dedicated clusters.
create_kx_dataview(Client, DatabaseName, EnvironmentId, Input) ->
    create_kx_dataview(Client, DatabaseName, EnvironmentId, Input, []).
create_kx_dataview(Client, DatabaseName, EnvironmentId, Input0, Options0) ->
    Method = post,
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/databases/", aws_util:encode_uri(DatabaseName), "/dataviews"],
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

%% @doc Creates a managed kdb environment for the account.
create_kx_environment(Client, Input) ->
    create_kx_environment(Client, Input, []).
create_kx_environment(Client, Input0, Options0) ->
    Method = post,
    Path = ["/kx/environments"],
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

%% @doc Creates a new scaling group.
create_kx_scaling_group(Client, EnvironmentId, Input) ->
    create_kx_scaling_group(Client, EnvironmentId, Input, []).
create_kx_scaling_group(Client, EnvironmentId, Input0, Options0) ->
    Method = post,
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/scalingGroups"],
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

%% @doc Creates a user in FinSpace kdb environment with an associated IAM
%% role.
create_kx_user(Client, EnvironmentId, Input) ->
    create_kx_user(Client, EnvironmentId, Input, []).
create_kx_user(Client, EnvironmentId, Input0, Options0) ->
    Method = post,
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/users"],
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

%% @doc
%% Creates a new volume with a specific amount of throughput and storage
%% capacity.
create_kx_volume(Client, EnvironmentId, Input) ->
    create_kx_volume(Client, EnvironmentId, Input, []).
create_kx_volume(Client, EnvironmentId, Input0, Options0) ->
    Method = post,
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/kxvolumes"],
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

%% @doc Delete an FinSpace environment.
delete_environment(Client, EnvironmentId, Input) ->
    delete_environment(Client, EnvironmentId, Input, []).
delete_environment(Client, EnvironmentId, Input0, Options0) ->
    Method = delete,
    Path = ["/environment/", aws_util:encode_uri(EnvironmentId), ""],
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

%% @doc Deletes a kdb cluster.
delete_kx_cluster(Client, ClusterName, EnvironmentId, Input) ->
    delete_kx_cluster(Client, ClusterName, EnvironmentId, Input, []).
delete_kx_cluster(Client, ClusterName, EnvironmentId, Input0, Options0) ->
    Method = delete,
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/clusters/", aws_util:encode_uri(ClusterName), ""],
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
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified database and all of its associated data.
%%
%% This action is irreversible. You must copy any data out of the database
%% before deleting it if the data is to be retained.
delete_kx_database(Client, DatabaseName, EnvironmentId, Input) ->
    delete_kx_database(Client, DatabaseName, EnvironmentId, Input, []).
delete_kx_database(Client, DatabaseName, EnvironmentId, Input0, Options0) ->
    Method = delete,
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/databases/", aws_util:encode_uri(DatabaseName), ""],
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
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% Deletes the specified dataview.
%%
%% Before deleting a dataview, make sure that it is not in use by any
%% cluster.
delete_kx_dataview(Client, DatabaseName, DataviewName, EnvironmentId, Input) ->
    delete_kx_dataview(Client, DatabaseName, DataviewName, EnvironmentId, Input, []).
delete_kx_dataview(Client, DatabaseName, DataviewName, EnvironmentId, Input0, Options0) ->
    Method = delete,
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/databases/", aws_util:encode_uri(DatabaseName), "/dataviews/", aws_util:encode_uri(DataviewName), ""],
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
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the kdb environment.
%%
%% This action is irreversible. Deleting a kdb environment will remove all
%% the associated data and any services running in it.
delete_kx_environment(Client, EnvironmentId, Input) ->
    delete_kx_environment(Client, EnvironmentId, Input, []).
delete_kx_environment(Client, EnvironmentId, Input0, Options0) ->
    Method = delete,
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), ""],
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
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% Deletes the specified scaling group.
%%
%% This action is irreversible. You cannot delete a scaling group until all
%% the clusters running on it have been deleted.
delete_kx_scaling_group(Client, EnvironmentId, ScalingGroupName, Input) ->
    delete_kx_scaling_group(Client, EnvironmentId, ScalingGroupName, Input, []).
delete_kx_scaling_group(Client, EnvironmentId, ScalingGroupName, Input0, Options0) ->
    Method = delete,
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/scalingGroups/", aws_util:encode_uri(ScalingGroupName), ""],
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
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a user in the specified kdb environment.
delete_kx_user(Client, EnvironmentId, UserName, Input) ->
    delete_kx_user(Client, EnvironmentId, UserName, Input, []).
delete_kx_user(Client, EnvironmentId, UserName, Input0, Options0) ->
    Method = delete,
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/users/", aws_util:encode_uri(UserName), ""],
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
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% Deletes a volume.
%%
%% You can only delete a volume if it's not attached to a cluster or a
%% dataview. When a volume is deleted, any data on the volume is lost. This
%% action is irreversible.
delete_kx_volume(Client, EnvironmentId, VolumeName, Input) ->
    delete_kx_volume(Client, EnvironmentId, VolumeName, Input, []).
delete_kx_volume(Client, EnvironmentId, VolumeName, Input0, Options0) ->
    Method = delete,
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/kxvolumes/", aws_util:encode_uri(VolumeName), ""],
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
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns the FinSpace environment object.
get_environment(Client, EnvironmentId)
  when is_map(Client) ->
    get_environment(Client, EnvironmentId, #{}, #{}).

get_environment(Client, EnvironmentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_environment(Client, EnvironmentId, QueryMap, HeadersMap, []).

get_environment(Client, EnvironmentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/environment/", aws_util:encode_uri(EnvironmentId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a kdb changeset.
get_kx_changeset(Client, ChangesetId, DatabaseName, EnvironmentId)
  when is_map(Client) ->
    get_kx_changeset(Client, ChangesetId, DatabaseName, EnvironmentId, #{}, #{}).

get_kx_changeset(Client, ChangesetId, DatabaseName, EnvironmentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_kx_changeset(Client, ChangesetId, DatabaseName, EnvironmentId, QueryMap, HeadersMap, []).

get_kx_changeset(Client, ChangesetId, DatabaseName, EnvironmentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/databases/", aws_util:encode_uri(DatabaseName), "/changesets/", aws_util:encode_uri(ChangesetId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a kdb cluster.
get_kx_cluster(Client, ClusterName, EnvironmentId)
  when is_map(Client) ->
    get_kx_cluster(Client, ClusterName, EnvironmentId, #{}, #{}).

get_kx_cluster(Client, ClusterName, EnvironmentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_kx_cluster(Client, ClusterName, EnvironmentId, QueryMap, HeadersMap, []).

get_kx_cluster(Client, ClusterName, EnvironmentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/clusters/", aws_util:encode_uri(ClusterName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a connection string for a user to connect to a kdb cluster.
%%
%% You must call this API using the same role that you have defined while
%% creating a user.
get_kx_connection_string(Client, EnvironmentId, ClusterName, UserArn)
  when is_map(Client) ->
    get_kx_connection_string(Client, EnvironmentId, ClusterName, UserArn, #{}, #{}).

get_kx_connection_string(Client, EnvironmentId, ClusterName, UserArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_kx_connection_string(Client, EnvironmentId, ClusterName, UserArn, QueryMap, HeadersMap, []).

get_kx_connection_string(Client, EnvironmentId, ClusterName, UserArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/connectionString"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"clusterName">>, ClusterName},
        {<<"userArn">>, UserArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns database information for the specified environment ID.
get_kx_database(Client, DatabaseName, EnvironmentId)
  when is_map(Client) ->
    get_kx_database(Client, DatabaseName, EnvironmentId, #{}, #{}).

get_kx_database(Client, DatabaseName, EnvironmentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_kx_database(Client, DatabaseName, EnvironmentId, QueryMap, HeadersMap, []).

get_kx_database(Client, DatabaseName, EnvironmentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/databases/", aws_util:encode_uri(DatabaseName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% Retrieves details of the dataview.
get_kx_dataview(Client, DatabaseName, DataviewName, EnvironmentId)
  when is_map(Client) ->
    get_kx_dataview(Client, DatabaseName, DataviewName, EnvironmentId, #{}, #{}).

get_kx_dataview(Client, DatabaseName, DataviewName, EnvironmentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_kx_dataview(Client, DatabaseName, DataviewName, EnvironmentId, QueryMap, HeadersMap, []).

get_kx_dataview(Client, DatabaseName, DataviewName, EnvironmentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/databases/", aws_util:encode_uri(DatabaseName), "/dataviews/", aws_util:encode_uri(DataviewName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves all the information for the specified kdb environment.
get_kx_environment(Client, EnvironmentId)
  when is_map(Client) ->
    get_kx_environment(Client, EnvironmentId, #{}, #{}).

get_kx_environment(Client, EnvironmentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_kx_environment(Client, EnvironmentId, QueryMap, HeadersMap, []).

get_kx_environment(Client, EnvironmentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% Retrieves details of a scaling group.
get_kx_scaling_group(Client, EnvironmentId, ScalingGroupName)
  when is_map(Client) ->
    get_kx_scaling_group(Client, EnvironmentId, ScalingGroupName, #{}, #{}).

get_kx_scaling_group(Client, EnvironmentId, ScalingGroupName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_kx_scaling_group(Client, EnvironmentId, ScalingGroupName, QueryMap, HeadersMap, []).

get_kx_scaling_group(Client, EnvironmentId, ScalingGroupName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/scalingGroups/", aws_util:encode_uri(ScalingGroupName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the specified kdb user.
get_kx_user(Client, EnvironmentId, UserName)
  when is_map(Client) ->
    get_kx_user(Client, EnvironmentId, UserName, #{}, #{}).

get_kx_user(Client, EnvironmentId, UserName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_kx_user(Client, EnvironmentId, UserName, QueryMap, HeadersMap, []).

get_kx_user(Client, EnvironmentId, UserName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/users/", aws_util:encode_uri(UserName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% Retrieves the information about the volume.
get_kx_volume(Client, EnvironmentId, VolumeName)
  when is_map(Client) ->
    get_kx_volume(Client, EnvironmentId, VolumeName, #{}, #{}).

get_kx_volume(Client, EnvironmentId, VolumeName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_kx_volume(Client, EnvironmentId, VolumeName, QueryMap, HeadersMap, []).

get_kx_volume(Client, EnvironmentId, VolumeName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/kxvolumes/", aws_util:encode_uri(VolumeName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc A list of all of your FinSpace environments.
list_environments(Client)
  when is_map(Client) ->
    list_environments(Client, #{}, #{}).

list_environments(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_environments(Client, QueryMap, HeadersMap, []).

list_environments(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/environment"],
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

%% @doc Returns a list of all the changesets for a database.
list_kx_changesets(Client, DatabaseName, EnvironmentId)
  when is_map(Client) ->
    list_kx_changesets(Client, DatabaseName, EnvironmentId, #{}, #{}).

list_kx_changesets(Client, DatabaseName, EnvironmentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_kx_changesets(Client, DatabaseName, EnvironmentId, QueryMap, HeadersMap, []).

list_kx_changesets(Client, DatabaseName, EnvironmentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/databases/", aws_util:encode_uri(DatabaseName), "/changesets"],
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

%% @doc Lists all the nodes in a kdb cluster.
list_kx_cluster_nodes(Client, ClusterName, EnvironmentId)
  when is_map(Client) ->
    list_kx_cluster_nodes(Client, ClusterName, EnvironmentId, #{}, #{}).

list_kx_cluster_nodes(Client, ClusterName, EnvironmentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_kx_cluster_nodes(Client, ClusterName, EnvironmentId, QueryMap, HeadersMap, []).

list_kx_cluster_nodes(Client, ClusterName, EnvironmentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/clusters/", aws_util:encode_uri(ClusterName), "/nodes"],
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

%% @doc Returns a list of clusters.
list_kx_clusters(Client, EnvironmentId)
  when is_map(Client) ->
    list_kx_clusters(Client, EnvironmentId, #{}, #{}).

list_kx_clusters(Client, EnvironmentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_kx_clusters(Client, EnvironmentId, QueryMap, HeadersMap, []).

list_kx_clusters(Client, EnvironmentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/clusters"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"clusterType">>, maps:get(<<"clusterType">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of all the databases in the kdb environment.
list_kx_databases(Client, EnvironmentId)
  when is_map(Client) ->
    list_kx_databases(Client, EnvironmentId, #{}, #{}).

list_kx_databases(Client, EnvironmentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_kx_databases(Client, EnvironmentId, QueryMap, HeadersMap, []).

list_kx_databases(Client, EnvironmentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/databases"],
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

%% @doc
%% Returns a list of all the dataviews in the database.
list_kx_dataviews(Client, DatabaseName, EnvironmentId)
  when is_map(Client) ->
    list_kx_dataviews(Client, DatabaseName, EnvironmentId, #{}, #{}).

list_kx_dataviews(Client, DatabaseName, EnvironmentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_kx_dataviews(Client, DatabaseName, EnvironmentId, QueryMap, HeadersMap, []).

list_kx_dataviews(Client, DatabaseName, EnvironmentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/databases/", aws_util:encode_uri(DatabaseName), "/dataviews"],
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

%% @doc Returns a list of kdb environments created in an account.
list_kx_environments(Client)
  when is_map(Client) ->
    list_kx_environments(Client, #{}, #{}).

list_kx_environments(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_kx_environments(Client, QueryMap, HeadersMap, []).

list_kx_environments(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/kx/environments"],
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

%% @doc
%% Returns a list of scaling groups in a kdb environment.
list_kx_scaling_groups(Client, EnvironmentId)
  when is_map(Client) ->
    list_kx_scaling_groups(Client, EnvironmentId, #{}, #{}).

list_kx_scaling_groups(Client, EnvironmentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_kx_scaling_groups(Client, EnvironmentId, QueryMap, HeadersMap, []).

list_kx_scaling_groups(Client, EnvironmentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/scalingGroups"],
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

%% @doc Lists all the users in a kdb environment.
list_kx_users(Client, EnvironmentId)
  when is_map(Client) ->
    list_kx_users(Client, EnvironmentId, #{}, #{}).

list_kx_users(Client, EnvironmentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_kx_users(Client, EnvironmentId, QueryMap, HeadersMap, []).

list_kx_users(Client, EnvironmentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/users"],
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

%% @doc
%% Lists all the volumes in a kdb environment.
list_kx_volumes(Client, EnvironmentId)
  when is_map(Client) ->
    list_kx_volumes(Client, EnvironmentId, #{}, #{}).

list_kx_volumes(Client, EnvironmentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_kx_volumes(Client, EnvironmentId, QueryMap, HeadersMap, []).

list_kx_volumes(Client, EnvironmentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/kxvolumes"],
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
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"volumeType">>, maps:get(<<"volumeType">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc A list of all tags for a resource.
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
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Adds metadata tags to a FinSpace resource.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
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

%% @doc Removes metadata tags from a FinSpace resource.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
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

%% @doc Update your FinSpace environment.
update_environment(Client, EnvironmentId, Input) ->
    update_environment(Client, EnvironmentId, Input, []).
update_environment(Client, EnvironmentId, Input0, Options0) ->
    Method = put,
    Path = ["/environment/", aws_util:encode_uri(EnvironmentId), ""],
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

%% @doc
%% Allows you to update code configuration on a running cluster.
%%
%% By using this API you can update the code, the initialization script path,
%% and the command line arguments for a specific cluster.
%% The configuration that you want to update will override any existing
%% configurations on the cluster.
update_kx_cluster_code_configuration(Client, ClusterName, EnvironmentId, Input) ->
    update_kx_cluster_code_configuration(Client, ClusterName, EnvironmentId, Input, []).
update_kx_cluster_code_configuration(Client, ClusterName, EnvironmentId, Input0, Options0) ->
    Method = put,
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/clusters/", aws_util:encode_uri(ClusterName), "/configuration/code"],
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

%% @doc Updates the databases mounted on a kdb cluster, which includes the
%% `changesetId' and all the dbPaths to be cached.
%%
%% This API does not allow you to change a database name or add a database if
%% you created a cluster without one.
%%
%% Using this API you can point a cluster to a different changeset and modify
%% a list of partitions being cached.
update_kx_cluster_databases(Client, ClusterName, EnvironmentId, Input) ->
    update_kx_cluster_databases(Client, ClusterName, EnvironmentId, Input, []).
update_kx_cluster_databases(Client, ClusterName, EnvironmentId, Input0, Options0) ->
    Method = put,
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/clusters/", aws_util:encode_uri(ClusterName), "/configuration/databases"],
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

%% @doc Updates information for the given kdb database.
update_kx_database(Client, DatabaseName, EnvironmentId, Input) ->
    update_kx_database(Client, DatabaseName, EnvironmentId, Input, []).
update_kx_database(Client, DatabaseName, EnvironmentId, Input0, Options0) ->
    Method = put,
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/databases/", aws_util:encode_uri(DatabaseName), ""],
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

%% @doc
%% Updates the specified dataview.
%%
%% The dataviews get automatically updated when any new changesets are
%% ingested. Each update of the dataview creates a new version, including
%% changeset details and cache configurations
update_kx_dataview(Client, DatabaseName, DataviewName, EnvironmentId, Input) ->
    update_kx_dataview(Client, DatabaseName, DataviewName, EnvironmentId, Input, []).
update_kx_dataview(Client, DatabaseName, DataviewName, EnvironmentId, Input0, Options0) ->
    Method = put,
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/databases/", aws_util:encode_uri(DatabaseName), "/dataviews/", aws_util:encode_uri(DataviewName), ""],
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

%% @doc Updates information for the given kdb environment.
update_kx_environment(Client, EnvironmentId, Input) ->
    update_kx_environment(Client, EnvironmentId, Input, []).
update_kx_environment(Client, EnvironmentId, Input0, Options0) ->
    Method = put,
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), ""],
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

%% @doc Updates environment network to connect to your internal network by
%% using a transit gateway.
%%
%% This API supports request to create a transit gateway attachment from
%% FinSpace VPC to your transit gateway ID and create a custom Route-53
%% outbound resolvers.
%%
%% Once you send a request to update a network, you cannot change it again.
%% Network update might require termination of any clusters that are running
%% in the existing network.
update_kx_environment_network(Client, EnvironmentId, Input) ->
    update_kx_environment_network(Client, EnvironmentId, Input, []).
update_kx_environment_network(Client, EnvironmentId, Input0, Options0) ->
    Method = put,
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/network"],
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

%% @doc Updates the user details.
%%
%% You can only update the IAM role associated with a user.
update_kx_user(Client, EnvironmentId, UserName, Input) ->
    update_kx_user(Client, EnvironmentId, UserName, Input, []).
update_kx_user(Client, EnvironmentId, UserName, Input0, Options0) ->
    Method = put,
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/users/", aws_util:encode_uri(UserName), ""],
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

%% @doc
%% Updates the throughput or capacity of a volume.
%%
%% During the update process, the filesystem
%% might be unavailable for a few minutes. You can retry any operations after
%% the update is complete.
update_kx_volume(Client, EnvironmentId, VolumeName, Input) ->
    update_kx_volume(Client, EnvironmentId, VolumeName, Input, []).
update_kx_volume(Client, EnvironmentId, VolumeName, Input0, Options0) ->
    Method = patch,
    Path = ["/kx/environments/", aws_util:encode_uri(EnvironmentId), "/kxvolumes/", aws_util:encode_uri(VolumeName), ""],
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

-spec proplists_take(any(), proplists:proplists(), any()) -> {any(), proplists:proplists()}.
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
    Client1 = Client#{service => <<"finspace">>},
    Host = build_host(<<"finspace">>, Client1),
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
