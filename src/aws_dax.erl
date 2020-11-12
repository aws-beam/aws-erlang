%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc DAX is a managed caching service engineered for Amazon DynamoDB.
%%
%% DAX dramatically speeds up database reads by caching frequently-accessed
%% data from DynamoDB, so applications can access that data with
%% sub-millisecond latency. You can create a DAX cluster easily, using the
%% AWS Management Console. With a few simple modifications to your code, your
%% application can begin taking advantage of the DAX cluster and realize
%% significant improvements in read performance.
-module(aws_dax).

-export([create_cluster/2,
         create_cluster/3,
         create_parameter_group/2,
         create_parameter_group/3,
         create_subnet_group/2,
         create_subnet_group/3,
         decrease_replication_factor/2,
         decrease_replication_factor/3,
         delete_cluster/2,
         delete_cluster/3,
         delete_parameter_group/2,
         delete_parameter_group/3,
         delete_subnet_group/2,
         delete_subnet_group/3,
         describe_clusters/2,
         describe_clusters/3,
         describe_default_parameters/2,
         describe_default_parameters/3,
         describe_events/2,
         describe_events/3,
         describe_parameter_groups/2,
         describe_parameter_groups/3,
         describe_parameters/2,
         describe_parameters/3,
         describe_subnet_groups/2,
         describe_subnet_groups/3,
         increase_replication_factor/2,
         increase_replication_factor/3,
         list_tags/2,
         list_tags/3,
         reboot_node/2,
         reboot_node/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_cluster/2,
         update_cluster/3,
         update_parameter_group/2,
         update_parameter_group/3,
         update_subnet_group/2,
         update_subnet_group/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a DAX cluster.
%%
%% All nodes in the cluster run the same DAX caching software.
create_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_cluster(Client, Input, []).
create_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCluster">>, Input, Options).

%% @doc Creates a new parameter group.
%%
%% A parameter group is a collection of parameters that you apply to all of
%% the nodes in a DAX cluster.
create_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_parameter_group(Client, Input, []).
create_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateParameterGroup">>, Input, Options).

%% @doc Creates a new subnet group.
create_subnet_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_subnet_group(Client, Input, []).
create_subnet_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSubnetGroup">>, Input, Options).

%% @doc Removes one or more nodes from a DAX cluster.
%%
%% You cannot use `DecreaseReplicationFactor` to remove the last node in a
%% DAX cluster. If you need to do this, use `DeleteCluster` instead.
decrease_replication_factor(Client, Input)
  when is_map(Client), is_map(Input) ->
    decrease_replication_factor(Client, Input, []).
decrease_replication_factor(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DecreaseReplicationFactor">>, Input, Options).

%% @doc Deletes a previously provisioned DAX cluster.
%%
%% DeleteCluster deletes all associated nodes, node endpoints and the DAX
%% cluster itself. When you receive a successful response from this action,
%% DAX immediately begins deleting the cluster; you cannot cancel or revert
%% this action.
delete_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_cluster(Client, Input, []).
delete_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCluster">>, Input, Options).

%% @doc Deletes the specified parameter group.
%%
%% You cannot delete a parameter group if it is associated with any DAX
%% clusters.
delete_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_parameter_group(Client, Input, []).
delete_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteParameterGroup">>, Input, Options).

%% @doc Deletes a subnet group.
%%
%% You cannot delete a subnet group if it is associated with any DAX
%% clusters.
delete_subnet_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_subnet_group(Client, Input, []).
delete_subnet_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSubnetGroup">>, Input, Options).

%% @doc Returns information about all provisioned DAX clusters if no cluster
%% identifier is specified, or about a specific DAX cluster if a cluster
%% identifier is supplied.
%%
%% If the cluster is in the CREATING state, only cluster level information
%% will be displayed until all of the nodes are successfully provisioned.
%%
%% If the cluster is in the DELETING state, only cluster level information
%% will be displayed.
%%
%% If nodes are currently being added to the DAX cluster, node endpoint
%% information and creation time for the additional nodes will not be
%% displayed until they are completely provisioned. When the DAX cluster
%% state is available, the cluster is ready for use.
%%
%% If nodes are currently being removed from the DAX cluster, no endpoint
%% information for the removed nodes is displayed.
describe_clusters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_clusters(Client, Input, []).
describe_clusters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeClusters">>, Input, Options).

%% @doc Returns the default system parameter information for the DAX caching
%% software.
describe_default_parameters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_default_parameters(Client, Input, []).
describe_default_parameters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDefaultParameters">>, Input, Options).

%% @doc Returns events related to DAX clusters and parameter groups.
%%
%% You can obtain events specific to a particular DAX cluster or parameter
%% group by providing the name as a parameter.
%%
%% By default, only the events occurring within the last 24 hours are
%% returned; however, you can retrieve up to 14 days' worth of events if
%% necessary.
describe_events(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_events(Client, Input, []).
describe_events(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEvents">>, Input, Options).

%% @doc Returns a list of parameter group descriptions.
%%
%% If a parameter group name is specified, the list will contain only the
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

%% @doc Returns a list of subnet group descriptions.
%%
%% If a subnet group name is specified, the list will contain only the
%% description of that group.
describe_subnet_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_subnet_groups(Client, Input, []).
describe_subnet_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSubnetGroups">>, Input, Options).

%% @doc Adds one or more nodes to a DAX cluster.
increase_replication_factor(Client, Input)
  when is_map(Client), is_map(Input) ->
    increase_replication_factor(Client, Input, []).
increase_replication_factor(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"IncreaseReplicationFactor">>, Input, Options).

%% @doc List all of the tags for a DAX cluster.
%%
%% You can call `ListTags` up to 10 times per second, per account.
list_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags(Client, Input, []).
list_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTags">>, Input, Options).

%% @doc Reboots a single node of a DAX cluster.
%%
%% The reboot action takes place as soon as possible. During the reboot, the
%% node status is set to REBOOTING.
%%
%% `RebootNode` restarts the DAX engine process and does not remove the
%% contents of the cache.
reboot_node(Client, Input)
  when is_map(Client), is_map(Input) ->
    reboot_node(Client, Input, []).
reboot_node(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RebootNode">>, Input, Options).

%% @doc Associates a set of tags with a DAX resource.
%%
%% You can call `TagResource` up to 5 times per second, per account.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Removes the association of tags from a DAX resource.
%%
%% You can call `UntagResource` up to 5 times per second, per account.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Modifies the settings for a DAX cluster.
%%
%% You can use this action to change one or more cluster configuration
%% parameters by specifying the parameters and the new values.
update_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_cluster(Client, Input, []).
update_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateCluster">>, Input, Options).

%% @doc Modifies the parameters of a parameter group.
%%
%% You can modify up to 20 parameters in a single request by submitting a
%% list parameter name and value pairs.
update_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_parameter_group(Client, Input, []).
update_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateParameterGroup">>, Input, Options).

%% @doc Modifies an existing subnet group.
update_subnet_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_subnet_group(Client, Input, []).
update_subnet_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateSubnetGroup">>, Input, Options).

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
    Client1 = Client#{service => <<"dax">>},
    Host = build_host(<<"dax">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"AmazonDAXV3.", Action/binary>>}
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
