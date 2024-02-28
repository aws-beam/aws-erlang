%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Product update
%%
%% We recommend Amazon Web Services Application Migration Service:
%% http://aws.amazon.com/application-migration-service (Amazon Web Services
%% MGN) as the primary migration service for lift-and-shift migrations.
%%
%% If Amazon Web Services MGN is unavailable in a specific Amazon Web
%% Services Region, you can use the Server Migration Service APIs through
%% March 2023.
%%
%% Server Migration Service (Server Migration Service) makes it easier and
%% faster for you to migrate your on-premises workloads to Amazon Web
%% Services. To learn more about Server Migration Service, see the following
%% resources:
%%
%% <ul> <li> Server Migration Service product page:
%% http://aws.amazon.com/server-migration-service/
%%
%% </li> <li> Server Migration Service User Guide:
%% https://docs.aws.amazon.com/server-migration-service/latest/userguide/
%%
%% </li> </ul>
-module(aws_sms).

-export([create_app/2,
         create_app/3,
         create_replication_job/2,
         create_replication_job/3,
         delete_app/2,
         delete_app/3,
         delete_app_launch_configuration/2,
         delete_app_launch_configuration/3,
         delete_app_replication_configuration/2,
         delete_app_replication_configuration/3,
         delete_app_validation_configuration/2,
         delete_app_validation_configuration/3,
         delete_replication_job/2,
         delete_replication_job/3,
         delete_server_catalog/2,
         delete_server_catalog/3,
         disassociate_connector/2,
         disassociate_connector/3,
         generate_change_set/2,
         generate_change_set/3,
         generate_template/2,
         generate_template/3,
         get_app/2,
         get_app/3,
         get_app_launch_configuration/2,
         get_app_launch_configuration/3,
         get_app_replication_configuration/2,
         get_app_replication_configuration/3,
         get_app_validation_configuration/2,
         get_app_validation_configuration/3,
         get_app_validation_output/2,
         get_app_validation_output/3,
         get_connectors/2,
         get_connectors/3,
         get_replication_jobs/2,
         get_replication_jobs/3,
         get_replication_runs/2,
         get_replication_runs/3,
         get_servers/2,
         get_servers/3,
         import_app_catalog/2,
         import_app_catalog/3,
         import_server_catalog/2,
         import_server_catalog/3,
         launch_app/2,
         launch_app/3,
         list_apps/2,
         list_apps/3,
         notify_app_validation_output/2,
         notify_app_validation_output/3,
         put_app_launch_configuration/2,
         put_app_launch_configuration/3,
         put_app_replication_configuration/2,
         put_app_replication_configuration/3,
         put_app_validation_configuration/2,
         put_app_validation_configuration/3,
         start_app_replication/2,
         start_app_replication/3,
         start_on_demand_app_replication/2,
         start_on_demand_app_replication/3,
         start_on_demand_replication_run/2,
         start_on_demand_replication_run/3,
         stop_app_replication/2,
         stop_app_replication/3,
         terminate_app/2,
         terminate_app/3,
         update_app/2,
         update_app/3,
         update_replication_job/2,
         update_replication_job/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates an application.
%%
%% An application consists of one or more server groups. Each server group
%% contain one or more servers.
create_app(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_app(Client, Input, []).
create_app(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateApp">>, Input, Options).

%% @doc Creates a replication job.
%%
%% The replication job schedules periodic replication runs to replicate your
%% server to Amazon Web Services. Each replication run creates an Amazon
%% Machine Image (AMI).
create_replication_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_replication_job(Client, Input, []).
create_replication_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateReplicationJob">>, Input, Options).

%% @doc Deletes the specified application.
%%
%% Optionally deletes the launched stack associated with the application and
%% all Server Migration Service replication jobs for servers in the
%% application.
delete_app(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_app(Client, Input, []).
delete_app(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteApp">>, Input, Options).

%% @doc Deletes the launch configuration for the specified application.
delete_app_launch_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_app_launch_configuration(Client, Input, []).
delete_app_launch_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAppLaunchConfiguration">>, Input, Options).

%% @doc Deletes the replication configuration for the specified application.
delete_app_replication_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_app_replication_configuration(Client, Input, []).
delete_app_replication_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAppReplicationConfiguration">>, Input, Options).

%% @doc Deletes the validation configuration for the specified application.
delete_app_validation_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_app_validation_configuration(Client, Input, []).
delete_app_validation_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAppValidationConfiguration">>, Input, Options).

%% @doc Deletes the specified replication job.
%%
%% After you delete a replication job, there are no further replication runs.
%% Amazon Web Services deletes the contents of the Amazon S3 bucket used to
%% store Server Migration Service artifacts. The AMIs created by the
%% replication runs are not deleted.
delete_replication_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_replication_job(Client, Input, []).
delete_replication_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteReplicationJob">>, Input, Options).

%% @doc Deletes all servers from your server catalog.
delete_server_catalog(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_server_catalog(Client, Input, []).
delete_server_catalog(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteServerCatalog">>, Input, Options).

%% @doc Disassociates the specified connector from Server Migration Service.
%%
%% After you disassociate a connector, it is no longer available to support
%% replication jobs.
disassociate_connector(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_connector(Client, Input, []).
disassociate_connector(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateConnector">>, Input, Options).

%% @doc Generates a target change set for a currently launched stack and
%% writes it to an Amazon S3 object in the customer’s Amazon S3 bucket.
generate_change_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    generate_change_set(Client, Input, []).
generate_change_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GenerateChangeSet">>, Input, Options).

%% @doc Generates an CloudFormation template based on the current launch
%% configuration and writes it to an Amazon S3 object in the customer’s
%% Amazon S3 bucket.
generate_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    generate_template(Client, Input, []).
generate_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GenerateTemplate">>, Input, Options).

%% @doc Retrieve information about the specified application.
get_app(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_app(Client, Input, []).
get_app(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetApp">>, Input, Options).

%% @doc Retrieves the application launch configuration associated with the
%% specified application.
get_app_launch_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_app_launch_configuration(Client, Input, []).
get_app_launch_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAppLaunchConfiguration">>, Input, Options).

%% @doc Retrieves the application replication configuration associated with
%% the specified application.
get_app_replication_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_app_replication_configuration(Client, Input, []).
get_app_replication_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAppReplicationConfiguration">>, Input, Options).

%% @doc Retrieves information about a configuration for validating an
%% application.
get_app_validation_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_app_validation_configuration(Client, Input, []).
get_app_validation_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAppValidationConfiguration">>, Input, Options).

%% @doc Retrieves output from validating an application.
get_app_validation_output(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_app_validation_output(Client, Input, []).
get_app_validation_output(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAppValidationOutput">>, Input, Options).

%% @doc Describes the connectors registered with the Server Migration
%% Service.
get_connectors(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_connectors(Client, Input, []).
get_connectors(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetConnectors">>, Input, Options).

%% @doc Describes the specified replication job or all of your replication
%% jobs.
get_replication_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_replication_jobs(Client, Input, []).
get_replication_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetReplicationJobs">>, Input, Options).

%% @doc Describes the replication runs for the specified replication job.
get_replication_runs(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_replication_runs(Client, Input, []).
get_replication_runs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetReplicationRuns">>, Input, Options).

%% @doc Describes the servers in your server catalog.
%%
%% Before you can describe your servers, you must import them using
%% `ImportServerCatalog'.
get_servers(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_servers(Client, Input, []).
get_servers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetServers">>, Input, Options).

%% @doc Allows application import from Migration Hub.
import_app_catalog(Client, Input)
  when is_map(Client), is_map(Input) ->
    import_app_catalog(Client, Input, []).
import_app_catalog(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ImportAppCatalog">>, Input, Options).

%% @doc Gathers a complete list of on-premises servers.
%%
%% Connectors must be installed and monitoring all servers to import.
%%
%% This call returns immediately, but might take additional time to retrieve
%% all the servers.
import_server_catalog(Client, Input)
  when is_map(Client), is_map(Input) ->
    import_server_catalog(Client, Input, []).
import_server_catalog(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ImportServerCatalog">>, Input, Options).

%% @doc Launches the specified application as a stack in CloudFormation.
launch_app(Client, Input)
  when is_map(Client), is_map(Input) ->
    launch_app(Client, Input, []).
launch_app(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"LaunchApp">>, Input, Options).

%% @doc Retrieves summaries for all applications.
list_apps(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_apps(Client, Input, []).
list_apps(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListApps">>, Input, Options).

%% @doc Provides information to Server Migration Service about whether
%% application validation is successful.
notify_app_validation_output(Client, Input)
  when is_map(Client), is_map(Input) ->
    notify_app_validation_output(Client, Input, []).
notify_app_validation_output(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"NotifyAppValidationOutput">>, Input, Options).

%% @doc Creates or updates the launch configuration for the specified
%% application.
put_app_launch_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_app_launch_configuration(Client, Input, []).
put_app_launch_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutAppLaunchConfiguration">>, Input, Options).

%% @doc Creates or updates the replication configuration for the specified
%% application.
put_app_replication_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_app_replication_configuration(Client, Input, []).
put_app_replication_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutAppReplicationConfiguration">>, Input, Options).

%% @doc Creates or updates a validation configuration for the specified
%% application.
put_app_validation_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_app_validation_configuration(Client, Input, []).
put_app_validation_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutAppValidationConfiguration">>, Input, Options).

%% @doc Starts replicating the specified application by creating replication
%% jobs for each server in the application.
start_app_replication(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_app_replication(Client, Input, []).
start_app_replication(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartAppReplication">>, Input, Options).

%% @doc Starts an on-demand replication run for the specified application.
start_on_demand_app_replication(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_on_demand_app_replication(Client, Input, []).
start_on_demand_app_replication(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartOnDemandAppReplication">>, Input, Options).

%% @doc Starts an on-demand replication run for the specified replication
%% job.
%%
%% This replication run starts immediately. This replication run is in
%% addition to the ones already scheduled.
%%
%% There is a limit on the number of on-demand replications runs that you can
%% request in a 24-hour period.
start_on_demand_replication_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_on_demand_replication_run(Client, Input, []).
start_on_demand_replication_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartOnDemandReplicationRun">>, Input, Options).

%% @doc Stops replicating the specified application by deleting the
%% replication job for each server in the application.
stop_app_replication(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_app_replication(Client, Input, []).
stop_app_replication(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopAppReplication">>, Input, Options).

%% @doc Terminates the stack for the specified application.
terminate_app(Client, Input)
  when is_map(Client), is_map(Input) ->
    terminate_app(Client, Input, []).
terminate_app(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TerminateApp">>, Input, Options).

%% @doc Updates the specified application.
update_app(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_app(Client, Input, []).
update_app(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateApp">>, Input, Options).

%% @doc Updates the specified settings for the specified replication job.
update_replication_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_replication_job(Client, Input, []).
update_replication_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateReplicationJob">>, Input, Options).

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
    Client1 = Client#{service => <<"sms">>},
    Host = build_host(<<"sms">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"AWSServerMigrationService_V2016_10_24.", Action/binary>>}
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
    Proto = aws_client:proto(Client),
    Port = aws_client:port(Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
