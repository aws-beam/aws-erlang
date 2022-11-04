%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc MemoryDB for Redis is a fully managed, Redis-compatible, in-memory
%% database that delivers ultra-fast performance and Multi-AZ durability for
%% modern applications built using microservices architectures.
%%
%% MemoryDB stores the entire database in-memory, enabling low latency and
%% high throughput data access. It is compatible with Redis, a popular open
%% source data store, enabling you to leverage Redis’ flexible and friendly
%% data structures, APIs, and commands.
-module(aws_memorydb).

-export([batch_update_cluster/2,
         batch_update_cluster/3,
         copy_snapshot/2,
         copy_snapshot/3,
         create_acl/2,
         create_acl/3,
         create_cluster/2,
         create_cluster/3,
         create_parameter_group/2,
         create_parameter_group/3,
         create_snapshot/2,
         create_snapshot/3,
         create_subnet_group/2,
         create_subnet_group/3,
         create_user/2,
         create_user/3,
         delete_acl/2,
         delete_acl/3,
         delete_cluster/2,
         delete_cluster/3,
         delete_parameter_group/2,
         delete_parameter_group/3,
         delete_snapshot/2,
         delete_snapshot/3,
         delete_subnet_group/2,
         delete_subnet_group/3,
         delete_user/2,
         delete_user/3,
         describe_acls/2,
         describe_acls/3,
         describe_clusters/2,
         describe_clusters/3,
         describe_engine_versions/2,
         describe_engine_versions/3,
         describe_events/2,
         describe_events/3,
         describe_parameter_groups/2,
         describe_parameter_groups/3,
         describe_parameters/2,
         describe_parameters/3,
         describe_service_updates/2,
         describe_service_updates/3,
         describe_snapshots/2,
         describe_snapshots/3,
         describe_subnet_groups/2,
         describe_subnet_groups/3,
         describe_users/2,
         describe_users/3,
         failover_shard/2,
         failover_shard/3,
         list_allowed_node_type_updates/2,
         list_allowed_node_type_updates/3,
         list_tags/2,
         list_tags/3,
         reset_parameter_group/2,
         reset_parameter_group/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_acl/2,
         update_acl/3,
         update_cluster/2,
         update_cluster/3,
         update_parameter_group/2,
         update_parameter_group/3,
         update_subnet_group/2,
         update_subnet_group/3,
         update_user/2,
         update_user/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Apply the service update to a list of clusters supplied.
%%
%% For more information on service updates and applying them, see Applying
%% the service updates.
batch_update_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_update_cluster(Client, Input, []).
batch_update_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchUpdateCluster">>, Input, Options).

%% @doc Makes a copy of an existing snapshot.
copy_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    copy_snapshot(Client, Input, []).
copy_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CopySnapshot">>, Input, Options).

%% @doc Creates an Access Control List.
%%
%% For more information, see Authenticating users with Access Contol Lists
%% (ACLs).
create_acl(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_acl(Client, Input, []).
create_acl(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateACL">>, Input, Options).

%% @doc Creates a cluster.
%%
%% All nodes in the cluster run the same protocol-compliant engine software.
create_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_cluster(Client, Input, []).
create_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCluster">>, Input, Options).

%% @doc Creates a new MemoryDB parameter group.
%%
%% A parameter group is a collection of parameters and their values that are
%% applied to all of the nodes in any cluster. For more information, see
%% Configuring engine parameters using parameter groups.
create_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_parameter_group(Client, Input, []).
create_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateParameterGroup">>, Input, Options).

%% @doc Creates a copy of an entire cluster at a specific moment in time.
create_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_snapshot(Client, Input, []).
create_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSnapshot">>, Input, Options).

%% @doc Creates a subnet group.
%%
%% A subnet group is a collection of subnets (typically private) that you can
%% designate for your clusters running in an Amazon Virtual Private Cloud
%% (VPC) environment. When you create a cluster in an Amazon VPC, you must
%% specify a subnet group. MemoryDB uses that subnet group to choose a subnet
%% and IP addresses within that subnet to associate with your nodes. For more
%% information, see Subnets and subnet groups.
create_subnet_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_subnet_group(Client, Input, []).
create_subnet_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSubnetGroup">>, Input, Options).

%% @doc Creates a MemoryDB user.
%%
%% For more information, see Authenticating users with Access Contol Lists
%% (ACLs).
create_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_user(Client, Input, []).
create_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateUser">>, Input, Options).

%% @doc Deletes an Access Control List.
%%
%% The ACL must first be disassociated from the cluster before it can be
%% deleted. For more information, see Authenticating users with Access Contol
%% Lists (ACLs).
delete_acl(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_acl(Client, Input, []).
delete_acl(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteACL">>, Input, Options).

%% @doc Deletes a cluster.
%%
%% It also deletes all associated nodes and node endpoints
delete_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_cluster(Client, Input, []).
delete_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCluster">>, Input, Options).

%% @doc Deletes the specified parameter group.
%%
%% You cannot delete a parameter group if it is associated with any clusters.
%% You cannot delete the default parameter groups in your account.
delete_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_parameter_group(Client, Input, []).
delete_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteParameterGroup">>, Input, Options).

%% @doc Deletes an existing snapshot.
%%
%% When you receive a successful response from this operation, MemoryDB
%% immediately begins deleting the snapshot; you cannot cancel or revert this
%% operation.
delete_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_snapshot(Client, Input, []).
delete_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSnapshot">>, Input, Options).

%% @doc Deletes a subnet group.
%%
%% You cannot delete a default subnet group or one that is associated with
%% any clusters.
delete_subnet_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_subnet_group(Client, Input, []).
delete_subnet_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSubnetGroup">>, Input, Options).

%% @doc Deletes a user.
%%
%% The user will be removed from all ACLs and in turn removed from all
%% clusters.
delete_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_user(Client, Input, []).
delete_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteUser">>, Input, Options).

%% @doc Returns a list of ACLs
describe_acls(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_acls(Client, Input, []).
describe_acls(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeACLs">>, Input, Options).

%% @doc Returns information about all provisioned clusters if no cluster
%% identifier is specified, or about a specific cluster if a cluster name is
%% supplied.
describe_clusters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_clusters(Client, Input, []).
describe_clusters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeClusters">>, Input, Options).

%% @doc Returns a list of the available Redis engine versions.
describe_engine_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_engine_versions(Client, Input, []).
describe_engine_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEngineVersions">>, Input, Options).

%% @doc Returns events related to clusters, security groups, and parameter
%% groups.
%%
%% You can obtain events specific to a particular cluster, security group, or
%% parameter group by providing the name as a parameter. By default, only the
%% events occurring within the last hour are returned; however, you can
%% retrieve up to 14 days' worth of events if necessary.
describe_events(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_events(Client, Input, []).
describe_events(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEvents">>, Input, Options).

%% @doc Returns a list of parameter group descriptions.
%%
%% If a parameter group name is specified, the list contains only the
%% descriptions for that group.
describe_parameter_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_parameter_groups(Client, Input, []).
describe_parameter_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeParameterGroups">>, Input, Options).

%% @doc Returns the detailed parameter list for a particular parameter group.
describe_parameters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_parameters(Client, Input, []).
describe_parameters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeParameters">>, Input, Options).

%% @doc Returns details of the service updates
describe_service_updates(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_service_updates(Client, Input, []).
describe_service_updates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeServiceUpdates">>, Input, Options).

%% @doc Returns information about cluster snapshots.
%%
%% By default, DescribeSnapshots lists all of your snapshots; it can
%% optionally describe a single snapshot, or just the snapshots associated
%% with a particular cluster.
describe_snapshots(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_snapshots(Client, Input, []).
describe_snapshots(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSnapshots">>, Input, Options).

%% @doc Returns a list of subnet group descriptions.
%%
%% If a subnet group name is specified, the list contains only the
%% description of that group.
describe_subnet_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_subnet_groups(Client, Input, []).
describe_subnet_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSubnetGroups">>, Input, Options).

%% @doc Returns a list of users.
describe_users(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_users(Client, Input, []).
describe_users(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeUsers">>, Input, Options).

%% @doc Used to failover a shard.
%%
%% This API is designed for testing the behavior of your application in case
%% of MemoryDB failover. It is not designed to be used as a production-level
%% tool for initiating a failover to overcome a problem you may have with the
%% cluster. Moreover, in certain conditions such as large scale operational
%% events, Amazon may block this API.
failover_shard(Client, Input)
  when is_map(Client), is_map(Input) ->
    failover_shard(Client, Input, []).
failover_shard(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"FailoverShard">>, Input, Options).

%% @doc Lists all available node types that you can scale to from your
%% cluster's current node type.
%%
%% When you use the UpdateCluster operation to scale your cluster, the value
%% of the NodeType parameter must be one of the node types returned by this
%% operation.
list_allowed_node_type_updates(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_allowed_node_type_updates(Client, Input, []).
list_allowed_node_type_updates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAllowedNodeTypeUpdates">>, Input, Options).

%% @doc Lists all tags currently on a named resource.
%%
%% A tag is a key-value pair where the key and value are case-sensitive. You
%% can use tags to categorize and track your MemoryDB resources. For more
%% information, see Tagging your MemoryDB resources
list_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags(Client, Input, []).
list_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTags">>, Input, Options).

%% @doc Modifies the parameters of a parameter group to the engine or system
%% default value.
%%
%% You can reset specific parameters by submitting a list of parameter names.
%% To reset the entire parameter group, specify the AllParameters and
%% ParameterGroupName parameters.
reset_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    reset_parameter_group(Client, Input, []).
reset_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ResetParameterGroup">>, Input, Options).

%% @doc A tag is a key-value pair where the key and value are case-sensitive.
%%
%% You can use tags to categorize and track all your MemoryDB resources. When
%% you add or remove tags on clusters, those actions will be replicated to
%% all nodes in the cluster. For more information, see Resource-level
%% permissions.
%%
%% For example, you can use cost-allocation tags to your MemoryDB resources,
%% Amazon generates a cost allocation report as a comma-separated value (CSV)
%% file with your usage and costs aggregated by your tags. You can apply tags
%% that represent business categories (such as cost centers, application
%% names, or owners) to organize your costs across multiple services. For
%% more information, see Using Cost Allocation Tags.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Use this operation to remove tags on a resource
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Changes the list of users that belong to the Access Control List.
update_acl(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_acl(Client, Input, []).
update_acl(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateACL">>, Input, Options).

%% @doc Modifies the settings for a cluster.
%%
%% You can use this operation to change one or more cluster configuration
%% settings by specifying the settings and the new values.
update_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_cluster(Client, Input, []).
update_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateCluster">>, Input, Options).

%% @doc Updates the parameters of a parameter group.
%%
%% You can modify up to 20 parameters in a single request by submitting a
%% list parameter name and value pairs.
update_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_parameter_group(Client, Input, []).
update_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateParameterGroup">>, Input, Options).

%% @doc Updates a subnet group.
%%
%% For more information, see Updating a subnet group
update_subnet_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_subnet_group(Client, Input, []).
update_subnet_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateSubnetGroup">>, Input, Options).

%% @doc Changes user password(s) and/or access string.
update_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_user(Client, Input, []).
update_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateUser">>, Input, Options).

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
    Client1 = Client#{service => <<"memorydb">>},
    Host = build_host(<<"memory-db">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"AmazonMemoryDB.", Action/binary>>}
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
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
