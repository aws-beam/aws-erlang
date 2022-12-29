%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc The Application Migration Service service.
-module(aws_mgn).

-export([archive_application/2,
         archive_application/3,
         archive_wave/2,
         archive_wave/3,
         associate_applications/2,
         associate_applications/3,
         associate_source_servers/2,
         associate_source_servers/3,
         change_server_life_cycle_state/2,
         change_server_life_cycle_state/3,
         create_application/2,
         create_application/3,
         create_launch_configuration_template/2,
         create_launch_configuration_template/3,
         create_replication_configuration_template/2,
         create_replication_configuration_template/3,
         create_wave/2,
         create_wave/3,
         delete_application/2,
         delete_application/3,
         delete_job/2,
         delete_job/3,
         delete_launch_configuration_template/2,
         delete_launch_configuration_template/3,
         delete_replication_configuration_template/2,
         delete_replication_configuration_template/3,
         delete_source_server/2,
         delete_source_server/3,
         delete_vcenter_client/2,
         delete_vcenter_client/3,
         delete_wave/2,
         delete_wave/3,
         describe_job_log_items/2,
         describe_job_log_items/3,
         describe_jobs/2,
         describe_jobs/3,
         describe_launch_configuration_templates/2,
         describe_launch_configuration_templates/3,
         describe_replication_configuration_templates/2,
         describe_replication_configuration_templates/3,
         describe_source_servers/2,
         describe_source_servers/3,
         describe_vcenter_clients/1,
         describe_vcenter_clients/3,
         describe_vcenter_clients/4,
         disassociate_applications/2,
         disassociate_applications/3,
         disassociate_source_servers/2,
         disassociate_source_servers/3,
         disconnect_from_service/2,
         disconnect_from_service/3,
         finalize_cutover/2,
         finalize_cutover/3,
         get_launch_configuration/2,
         get_launch_configuration/3,
         get_replication_configuration/2,
         get_replication_configuration/3,
         initialize_service/2,
         initialize_service/3,
         list_applications/2,
         list_applications/3,
         list_source_server_actions/2,
         list_source_server_actions/3,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_template_actions/2,
         list_template_actions/3,
         list_waves/2,
         list_waves/3,
         mark_as_archived/2,
         mark_as_archived/3,
         put_source_server_action/2,
         put_source_server_action/3,
         put_template_action/2,
         put_template_action/3,
         remove_source_server_action/2,
         remove_source_server_action/3,
         remove_template_action/2,
         remove_template_action/3,
         retry_data_replication/2,
         retry_data_replication/3,
         start_cutover/2,
         start_cutover/3,
         start_replication/2,
         start_replication/3,
         start_test/2,
         start_test/3,
         tag_resource/3,
         tag_resource/4,
         terminate_target_instances/2,
         terminate_target_instances/3,
         unarchive_application/2,
         unarchive_application/3,
         unarchive_wave/2,
         unarchive_wave/3,
         untag_resource/3,
         untag_resource/4,
         update_application/2,
         update_application/3,
         update_launch_configuration/2,
         update_launch_configuration/3,
         update_launch_configuration_template/2,
         update_launch_configuration_template/3,
         update_replication_configuration/2,
         update_replication_configuration/3,
         update_replication_configuration_template/2,
         update_replication_configuration_template/3,
         update_source_server_replication_type/2,
         update_source_server_replication_type/3,
         update_wave/2,
         update_wave/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Archive application.
archive_application(Client, Input) ->
    archive_application(Client, Input, []).
archive_application(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ArchiveApplication"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Archive wave.
archive_wave(Client, Input) ->
    archive_wave(Client, Input, []).
archive_wave(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ArchiveWave"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Associate applications to wave.
associate_applications(Client, Input) ->
    associate_applications(Client, Input, []).
associate_applications(Client, Input0, Options0) ->
    Method = post,
    Path = ["/AssociateApplications"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Associate source servers to application.
associate_source_servers(Client, Input) ->
    associate_source_servers(Client, Input, []).
associate_source_servers(Client, Input0, Options0) ->
    Method = post,
    Path = ["/AssociateSourceServers"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Allows the user to set the SourceServer.LifeCycle.state property for
%% specific Source Server IDs to one of the following: READY_FOR_TEST or
%% READY_FOR_CUTOVER.
%%
%% This command only works if the Source Server is already launchable
%% (dataReplicationInfo.lagDuration is not null.)
change_server_life_cycle_state(Client, Input) ->
    change_server_life_cycle_state(Client, Input, []).
change_server_life_cycle_state(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ChangeServerLifeCycleState"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Create application.
create_application(Client, Input) ->
    create_application(Client, Input, []).
create_application(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CreateApplication"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new Launch Configuration Template.
create_launch_configuration_template(Client, Input) ->
    create_launch_configuration_template(Client, Input, []).
create_launch_configuration_template(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CreateLaunchConfigurationTemplate"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new ReplicationConfigurationTemplate.
create_replication_configuration_template(Client, Input) ->
    create_replication_configuration_template(Client, Input, []).
create_replication_configuration_template(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CreateReplicationConfigurationTemplate"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Create wave.
create_wave(Client, Input) ->
    create_wave(Client, Input, []).
create_wave(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CreateWave"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Delete application.
delete_application(Client, Input) ->
    delete_application(Client, Input, []).
delete_application(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteApplication"],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a single Job by ID.
delete_job(Client, Input) ->
    delete_job(Client, Input, []).
delete_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteJob"],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a single Launch Configuration Template by ID.
delete_launch_configuration_template(Client, Input) ->
    delete_launch_configuration_template(Client, Input, []).
delete_launch_configuration_template(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteLaunchConfigurationTemplate"],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a single Replication Configuration Template by ID
delete_replication_configuration_template(Client, Input) ->
    delete_replication_configuration_template(Client, Input, []).
delete_replication_configuration_template(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteReplicationConfigurationTemplate"],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a single source server by ID.
delete_source_server(Client, Input) ->
    delete_source_server(Client, Input, []).
delete_source_server(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteSourceServer"],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a given vCenter client by ID.
delete_vcenter_client(Client, Input) ->
    delete_vcenter_client(Client, Input, []).
delete_vcenter_client(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteVcenterClient"],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Delete wave.
delete_wave(Client, Input) ->
    delete_wave(Client, Input, []).
delete_wave(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteWave"],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves detailed job log items with paging.
describe_job_log_items(Client, Input) ->
    describe_job_log_items(Client, Input, []).
describe_job_log_items(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DescribeJobLogItems"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns a list of Jobs.
%%
%% Use the JobsID and fromDate and toData filters to limit which jobs are
%% returned. The response is sorted by creationDataTime - latest date first.
%% Jobs are normally created by the StartTest, StartCutover, and
%% TerminateTargetInstances APIs. Jobs are also created by DiagnosticLaunch
%% and TerminateDiagnosticInstances, which are APIs available only to
%% *Support* and only used in response to relevant support tickets.
describe_jobs(Client, Input) ->
    describe_jobs(Client, Input, []).
describe_jobs(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DescribeJobs"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists all Launch Configuration Templates, filtered by Launch
%% Configuration Template IDs
describe_launch_configuration_templates(Client, Input) ->
    describe_launch_configuration_templates(Client, Input, []).
describe_launch_configuration_templates(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DescribeLaunchConfigurationTemplates"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists all ReplicationConfigurationTemplates, filtered by Source
%% Server IDs.
describe_replication_configuration_templates(Client, Input) ->
    describe_replication_configuration_templates(Client, Input, []).
describe_replication_configuration_templates(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DescribeReplicationConfigurationTemplates"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves all SourceServers or multiple SourceServers by ID.
describe_source_servers(Client, Input) ->
    describe_source_servers(Client, Input, []).
describe_source_servers(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DescribeSourceServers"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns a list of the installed vCenter clients.
describe_vcenter_clients(Client)
  when is_map(Client) ->
    describe_vcenter_clients(Client, #{}, #{}).

describe_vcenter_clients(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_vcenter_clients(Client, QueryMap, HeadersMap, []).

describe_vcenter_clients(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/DescribeVcenterClients"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Disassociate applications from wave.
disassociate_applications(Client, Input) ->
    disassociate_applications(Client, Input, []).
disassociate_applications(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DisassociateApplications"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Disassociate source servers from application.
disassociate_source_servers(Client, Input) ->
    disassociate_source_servers(Client, Input, []).
disassociate_source_servers(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DisassociateSourceServers"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Disconnects specific Source Servers from Application Migration
%% Service.
%%
%% Data replication is stopped immediately. All AWS resources created by
%% Application Migration Service for enabling the replication of these source
%% servers will be terminated / deleted within 90 minutes. Launched Test or
%% Cutover instances will NOT be terminated. If the agent on the source
%% server has not been prevented from communicating with the Application
%% Migration Service service, then it will receive a command to uninstall
%% itself (within approximately 10 minutes). The following properties of the
%% SourceServer will be changed immediately:
%% dataReplicationInfo.dataReplicationState will be set to DISCONNECTED; The
%% totalStorageBytes property for each of dataReplicationInfo.replicatedDisks
%% will be set to zero; dataReplicationInfo.lagDuration and
%% dataReplicationInfo.lagDuration will be nullified.
disconnect_from_service(Client, Input) ->
    disconnect_from_service(Client, Input, []).
disconnect_from_service(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DisconnectFromService"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Finalizes the cutover immediately for specific Source Servers.
%%
%% All AWS resources created by Application Migration Service for enabling
%% the replication of these source servers will be terminated / deleted
%% within 90 minutes. Launched Test or Cutover instances will NOT be
%% terminated. The AWS Replication Agent will receive a command to uninstall
%% itself (within 10 minutes). The following properties of the SourceServer
%% will be changed immediately: dataReplicationInfo.dataReplicationState will
%% be changed to DISCONNECTED; The SourceServer.lifeCycle.state will be
%% changed to CUTOVER; The totalStorageBytes property fo each of
%% dataReplicationInfo.replicatedDisks will be set to zero;
%% dataReplicationInfo.lagDuration and dataReplicationInfo.lagDuration will
%% be nullified.
finalize_cutover(Client, Input) ->
    finalize_cutover(Client, Input, []).
finalize_cutover(Client, Input0, Options0) ->
    Method = post,
    Path = ["/FinalizeCutover"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists all LaunchConfigurations available, filtered by Source Server
%% IDs.
get_launch_configuration(Client, Input) ->
    get_launch_configuration(Client, Input, []).
get_launch_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetLaunchConfiguration"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists all ReplicationConfigurations, filtered by Source Server ID.
get_replication_configuration(Client, Input) ->
    get_replication_configuration(Client, Input, []).
get_replication_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetReplicationConfiguration"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Initialize Application Migration Service.
initialize_service(Client, Input) ->
    initialize_service(Client, Input, []).
initialize_service(Client, Input0, Options0) ->
    Method = post,
    Path = ["/InitializeService"],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves all applications or multiple applications by ID.
list_applications(Client, Input) ->
    list_applications(Client, Input, []).
list_applications(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListApplications"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc List source server post migration custom actions.
list_source_server_actions(Client, Input) ->
    list_source_server_actions(Client, Input, []).
list_source_server_actions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListSourceServerActions"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc List all tags for your Application Migration Service resources.
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

%% @doc List template post migration custom actions.
list_template_actions(Client, Input) ->
    list_template_actions(Client, Input, []).
list_template_actions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListTemplateActions"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves all waves or multiple waves by ID.
list_waves(Client, Input) ->
    list_waves(Client, Input, []).
list_waves(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListWaves"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Archives specific Source Servers by setting the
%% SourceServer.isArchived property to true for specified SourceServers by
%% ID.
%%
%% This command only works for SourceServers with a lifecycle. state which
%% equals DISCONNECTED or CUTOVER.
mark_as_archived(Client, Input) ->
    mark_as_archived(Client, Input, []).
mark_as_archived(Client, Input0, Options0) ->
    Method = post,
    Path = ["/MarkAsArchived"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Put source server post migration custom action.
put_source_server_action(Client, Input) ->
    put_source_server_action(Client, Input, []).
put_source_server_action(Client, Input0, Options0) ->
    Method = post,
    Path = ["/PutSourceServerAction"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Put template post migration custom action.
put_template_action(Client, Input) ->
    put_template_action(Client, Input, []).
put_template_action(Client, Input0, Options0) ->
    Method = post,
    Path = ["/PutTemplateAction"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Remove source server post migration custom action.
remove_source_server_action(Client, Input) ->
    remove_source_server_action(Client, Input, []).
remove_source_server_action(Client, Input0, Options0) ->
    Method = post,
    Path = ["/RemoveSourceServerAction"],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Remove template post migration custom action.
remove_template_action(Client, Input) ->
    remove_template_action(Client, Input, []).
remove_template_action(Client, Input0, Options0) ->
    Method = post,
    Path = ["/RemoveTemplateAction"],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Causes the data replication initiation sequence to begin immediately
%% upon next Handshake for specified SourceServer IDs, regardless of when the
%% previous initiation started.
%%
%% This command will not work if the SourceServer is not stalled or is in a
%% DISCONNECTED or STOPPED state.
retry_data_replication(Client, Input) ->
    retry_data_replication(Client, Input, []).
retry_data_replication(Client, Input0, Options0) ->
    Method = post,
    Path = ["/RetryDataReplication"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Launches a Cutover Instance for specific Source Servers.
%%
%% This command starts a LAUNCH job whose initiatedBy property is
%% StartCutover and changes the SourceServer.lifeCycle.state property to
%% CUTTING_OVER.
start_cutover(Client, Input) ->
    start_cutover(Client, Input, []).
start_cutover(Client, Input0, Options0) ->
    Method = post,
    Path = ["/StartCutover"],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Starts replication for SNAPSHOT_SHIPPING agents.
start_replication(Client, Input) ->
    start_replication(Client, Input, []).
start_replication(Client, Input0, Options0) ->
    Method = post,
    Path = ["/StartReplication"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Launches a Test Instance for specific Source Servers.
%%
%% This command starts a LAUNCH job whose initiatedBy property is StartTest
%% and changes the SourceServer.lifeCycle.state property to TESTING.
start_test(Client, Input) ->
    start_test(Client, Input, []).
start_test(Client, Input0, Options0) ->
    Method = post,
    Path = ["/StartTest"],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Adds or overwrites only the specified tags for the specified
%% Application Migration Service resource or resources.
%%
%% When you specify an existing tag key, the value is overwritten with the
%% new value. Each resource can have a maximum of 50 tags. Each tag consists
%% of a key and optional value.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Starts a job that terminates specific launched EC2 Test and Cutover
%% instances.
%%
%% This command will not work for any Source Server with a lifecycle.state of
%% TESTING, CUTTING_OVER, or CUTOVER.
terminate_target_instances(Client, Input) ->
    terminate_target_instances(Client, Input, []).
terminate_target_instances(Client, Input0, Options0) ->
    Method = post,
    Path = ["/TerminateTargetInstances"],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Unarchive application.
unarchive_application(Client, Input) ->
    unarchive_application(Client, Input, []).
unarchive_application(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UnarchiveApplication"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Unarchive wave.
unarchive_wave(Client, Input) ->
    unarchive_wave(Client, Input, []).
unarchive_wave(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UnarchiveWave"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified set of tags from the specified set of
%% Application Migration Service resources.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
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

%% @doc Update application.
update_application(Client, Input) ->
    update_application(Client, Input, []).
update_application(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UpdateApplication"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates multiple LaunchConfigurations by Source Server ID.
update_launch_configuration(Client, Input) ->
    update_launch_configuration(Client, Input, []).
update_launch_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UpdateLaunchConfiguration"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an existing Launch Configuration Template by ID.
update_launch_configuration_template(Client, Input) ->
    update_launch_configuration_template(Client, Input, []).
update_launch_configuration_template(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UpdateLaunchConfigurationTemplate"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Allows you to update multiple ReplicationConfigurations by Source
%% Server ID.
update_replication_configuration(Client, Input) ->
    update_replication_configuration(Client, Input, []).
update_replication_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UpdateReplicationConfiguration"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates multiple ReplicationConfigurationTemplates by ID.
update_replication_configuration_template(Client, Input) ->
    update_replication_configuration_template(Client, Input, []).
update_replication_configuration_template(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UpdateReplicationConfigurationTemplate"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Allows you to change between the AGENT_BASED replication type and the
%% SNAPSHOT_SHIPPING replication type.
update_source_server_replication_type(Client, Input) ->
    update_source_server_replication_type(Client, Input, []).
update_source_server_replication_type(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UpdateSourceServerReplicationType"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Update wave.
update_wave(Client, Input) ->
    update_wave(Client, Input, []).
update_wave(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UpdateWave"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
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
    Client1 = Client#{service => <<"mgn">>},
    Host = build_host(<<"mgn">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders = [ {<<"Host">>, Host}
                        , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                        ],
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),

    Payload =
      case proplists:get_value(send_body_as_binary, Options) of
        true ->
          maps:get(<<"Body">>, Input, <<"">>);
        false ->
          encode_payload(Input)
      end,

    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    DecodeBody = not proplists:get_value(receive_body_as_binary, Options),
    handle_response(Response, SuccessStatusCode, DecodeBody).

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
handle_response({ok, StatusCode, ResponseHeaders, Client}, _, _DecodeBody) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}, _, _DecodeBody) ->
  {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Path0, Client) ->
    Proto = maps:get(proto, Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  jsx:encode(Input).
