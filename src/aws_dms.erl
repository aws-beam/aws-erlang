%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/jkakar/aws-codegen for more details.

%% @doc <fullname>AWS Database Migration Service</fullname>
%%
%% AWS Database Migration Service (AWS DMS) can migrate your data to and from
%% the most widely used commercial and open-source databases such as Oracle,
%% PostgreSQL, Microsoft SQL Server, Amazon Redshift, MariaDB, Amazon Aurora,
%% and MySQL. The service supports homogeneous migrations such as Oracle to
%% Oracle, as well as heterogeneous migrations between different database
%% platforms, such as Oracle to MySQL or SQL Server to PostgreSQL.
-module(aws_dms).

-export([add_tags_to_resource/2,
         add_tags_to_resource/3,
         create_endpoint/2,
         create_endpoint/3,
         create_replication_instance/2,
         create_replication_instance/3,
         create_replication_subnet_group/2,
         create_replication_subnet_group/3,
         create_replication_task/2,
         create_replication_task/3,
         delete_certificate/2,
         delete_certificate/3,
         delete_endpoint/2,
         delete_endpoint/3,
         delete_replication_instance/2,
         delete_replication_instance/3,
         delete_replication_subnet_group/2,
         delete_replication_subnet_group/3,
         delete_replication_task/2,
         delete_replication_task/3,
         describe_account_attributes/2,
         describe_account_attributes/3,
         describe_certificates/2,
         describe_certificates/3,
         describe_connections/2,
         describe_connections/3,
         describe_endpoint_types/2,
         describe_endpoint_types/3,
         describe_endpoints/2,
         describe_endpoints/3,
         describe_orderable_replication_instances/2,
         describe_orderable_replication_instances/3,
         describe_refresh_schemas_status/2,
         describe_refresh_schemas_status/3,
         describe_replication_instances/2,
         describe_replication_instances/3,
         describe_replication_subnet_groups/2,
         describe_replication_subnet_groups/3,
         describe_replication_tasks/2,
         describe_replication_tasks/3,
         describe_schemas/2,
         describe_schemas/3,
         describe_table_statistics/2,
         describe_table_statistics/3,
         import_certificate/2,
         import_certificate/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         modify_endpoint/2,
         modify_endpoint/3,
         modify_replication_instance/2,
         modify_replication_instance/3,
         modify_replication_subnet_group/2,
         modify_replication_subnet_group/3,
         refresh_schemas/2,
         refresh_schemas/3,
         remove_tags_from_resource/2,
         remove_tags_from_resource/3,
         start_replication_task/2,
         start_replication_task/3,
         stop_replication_task/2,
         stop_replication_task/3,
         test_connection/2,
         test_connection/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Adds metadata tags to a DMS resource, including replication instance,
%% endpoint, security group, and migration task. These tags can also be used
%% with cost allocation reporting to track cost associated with DMS
%% resources, or used in a Condition statement in an IAM policy for DMS.
add_tags_to_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_tags_to_resource(Client, Input, []).
add_tags_to_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddTagsToResource">>, Input, Options).

%% @doc Creates an endpoint using the provided settings.
create_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_endpoint(Client, Input, []).
create_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateEndpoint">>, Input, Options).

%% @doc Creates the replication instance using the specified parameters.
create_replication_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_replication_instance(Client, Input, []).
create_replication_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateReplicationInstance">>, Input, Options).

%% @doc Creates a replication subnet group given a list of the subnet IDs in
%% a VPC.
create_replication_subnet_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_replication_subnet_group(Client, Input, []).
create_replication_subnet_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateReplicationSubnetGroup">>, Input, Options).

%% @doc Creates a replication task using the specified parameters.
create_replication_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_replication_task(Client, Input, []).
create_replication_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateReplicationTask">>, Input, Options).

%% @doc Deletes the specified certificate.
delete_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_certificate(Client, Input, []).
delete_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCertificate">>, Input, Options).

%% @doc Deletes the specified endpoint.
%%
%% <note> All tasks associated with the endpoint must be deleted before you
%% can delete the endpoint.
%%
%% </note> <p/>
delete_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_endpoint(Client, Input, []).
delete_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEndpoint">>, Input, Options).

%% @doc Deletes the specified replication instance.
%%
%% <note> You must delete any migration tasks that are associated with the
%% replication instance before you can delete it.
%%
%% </note> <p/>
delete_replication_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_replication_instance(Client, Input, []).
delete_replication_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteReplicationInstance">>, Input, Options).

%% @doc Deletes a subnet group.
delete_replication_subnet_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_replication_subnet_group(Client, Input, []).
delete_replication_subnet_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteReplicationSubnetGroup">>, Input, Options).

%% @doc Deletes the specified replication task.
delete_replication_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_replication_task(Client, Input, []).
delete_replication_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteReplicationTask">>, Input, Options).

%% @doc Lists all of the AWS DMS attributes for a customer account. The
%% attributes include AWS DMS quotas for the account, such as the number of
%% replication instances allowed. The description for a quota includes the
%% quota name, current usage toward that quota, and the quota's maximum
%% value.
%%
%% This command does not take any parameters.
describe_account_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_account_attributes(Client, Input, []).
describe_account_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAccountAttributes">>, Input, Options).

%% @doc Provides a description of the certificate.
describe_certificates(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_certificates(Client, Input, []).
describe_certificates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCertificates">>, Input, Options).

%% @doc Describes the status of the connections that have been made between
%% the replication instance and an endpoint. Connections are created when you
%% test an endpoint.
describe_connections(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_connections(Client, Input, []).
describe_connections(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeConnections">>, Input, Options).

%% @doc Returns information about the type of endpoints available.
describe_endpoint_types(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_endpoint_types(Client, Input, []).
describe_endpoint_types(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEndpointTypes">>, Input, Options).

%% @doc Returns information about the endpoints for your account in the
%% current region.
describe_endpoints(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_endpoints(Client, Input, []).
describe_endpoints(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEndpoints">>, Input, Options).

%% @doc Returns information about the replication instance types that can be
%% created in the specified region.
describe_orderable_replication_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_orderable_replication_instances(Client, Input, []).
describe_orderable_replication_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeOrderableReplicationInstances">>, Input, Options).

%% @doc Returns the status of the RefreshSchemas operation.
describe_refresh_schemas_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_refresh_schemas_status(Client, Input, []).
describe_refresh_schemas_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRefreshSchemasStatus">>, Input, Options).

%% @doc Returns information about replication instances for your account in
%% the current region.
describe_replication_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_replication_instances(Client, Input, []).
describe_replication_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeReplicationInstances">>, Input, Options).

%% @doc Returns information about the replication subnet groups.
describe_replication_subnet_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_replication_subnet_groups(Client, Input, []).
describe_replication_subnet_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeReplicationSubnetGroups">>, Input, Options).

%% @doc Returns information about replication tasks for your account in the
%% current region.
describe_replication_tasks(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_replication_tasks(Client, Input, []).
describe_replication_tasks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeReplicationTasks">>, Input, Options).

%% @doc Returns information about the schema for the specified endpoint.
%%
%% <p/>
describe_schemas(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_schemas(Client, Input, []).
describe_schemas(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSchemas">>, Input, Options).

%% @doc Returns table statistics on the database migration task, including
%% table name, rows inserted, rows updated, and rows deleted.
describe_table_statistics(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_table_statistics(Client, Input, []).
describe_table_statistics(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTableStatistics">>, Input, Options).

%% @doc Uploads the specified certificate.
import_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    import_certificate(Client, Input, []).
import_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ImportCertificate">>, Input, Options).

%% @doc Lists all tags for an AWS DMS resource.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Modifies the specified endpoint.
modify_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_endpoint(Client, Input, []).
modify_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyEndpoint">>, Input, Options).

%% @doc Modifies the replication instance to apply new settings. You can
%% change one or more parameters by specifying these parameters and the new
%% values in the request.
%%
%% Some settings are applied during the maintenance window.
%%
%% <p/>
modify_replication_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_replication_instance(Client, Input, []).
modify_replication_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyReplicationInstance">>, Input, Options).

%% @doc Modifies the settings for the specified replication subnet group.
modify_replication_subnet_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_replication_subnet_group(Client, Input, []).
modify_replication_subnet_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyReplicationSubnetGroup">>, Input, Options).

%% @doc Populates the schema for the specified endpoint. This is an
%% asynchronous operation and can take several minutes. You can check the
%% status of this operation by calling the DescribeRefreshSchemasStatus
%% operation.
refresh_schemas(Client, Input)
  when is_map(Client), is_map(Input) ->
    refresh_schemas(Client, Input, []).
refresh_schemas(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RefreshSchemas">>, Input, Options).

%% @doc Removes metadata tags from a DMS resource.
remove_tags_from_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_tags_from_resource(Client, Input, []).
remove_tags_from_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveTagsFromResource">>, Input, Options).

%% @doc Starts the replication task.
start_replication_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_replication_task(Client, Input, []).
start_replication_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartReplicationTask">>, Input, Options).

%% @doc Stops the replication task.
%%
%% <p/>
stop_replication_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_replication_task(Client, Input, []).
stop_replication_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopReplicationTask">>, Input, Options).

%% @doc Tests the connection between the replication instance and the
%% endpoint.
test_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    test_connection(Client, Input, []).
test_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TestConnection">>, Input, Options).

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
    Client1 = Client#{service => <<"dms">>},
    Host = get_host(<<"dms">>, Client1),
    URL = get_url(Host, Client1),
    Headers = [{<<"Host">>, Host},
               {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
               {<<"X-Amz-Target">>, << <<"AmazonDMSv20160101.">>/binary, Action/binary>>}],
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
