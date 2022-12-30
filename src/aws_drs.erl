%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS Elastic Disaster Recovery Service.
-module(aws_drs).

-export([create_extended_source_server/2,
         create_extended_source_server/3,
         create_replication_configuration_template/2,
         create_replication_configuration_template/3,
         delete_job/2,
         delete_job/3,
         delete_recovery_instance/2,
         delete_recovery_instance/3,
         delete_replication_configuration_template/2,
         delete_replication_configuration_template/3,
         delete_source_server/2,
         delete_source_server/3,
         describe_job_log_items/2,
         describe_job_log_items/3,
         describe_jobs/2,
         describe_jobs/3,
         describe_recovery_instances/2,
         describe_recovery_instances/3,
         describe_recovery_snapshots/2,
         describe_recovery_snapshots/3,
         describe_replication_configuration_templates/2,
         describe_replication_configuration_templates/3,
         describe_source_servers/2,
         describe_source_servers/3,
         disconnect_recovery_instance/2,
         disconnect_recovery_instance/3,
         disconnect_source_server/2,
         disconnect_source_server/3,
         get_failback_replication_configuration/2,
         get_failback_replication_configuration/3,
         get_launch_configuration/2,
         get_launch_configuration/3,
         get_replication_configuration/2,
         get_replication_configuration/3,
         initialize_service/2,
         initialize_service/3,
         list_extensible_source_servers/2,
         list_extensible_source_servers/3,
         list_staging_accounts/1,
         list_staging_accounts/3,
         list_staging_accounts/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         retry_data_replication/2,
         retry_data_replication/3,
         reverse_replication/2,
         reverse_replication/3,
         start_failback_launch/2,
         start_failback_launch/3,
         start_recovery/2,
         start_recovery/3,
         start_replication/2,
         start_replication/3,
         stop_failback/2,
         stop_failback/3,
         stop_replication/2,
         stop_replication/3,
         tag_resource/3,
         tag_resource/4,
         terminate_recovery_instances/2,
         terminate_recovery_instances/3,
         untag_resource/3,
         untag_resource/4,
         update_failback_replication_configuration/2,
         update_failback_replication_configuration/3,
         update_launch_configuration/2,
         update_launch_configuration/3,
         update_replication_configuration/2,
         update_replication_configuration/3,
         update_replication_configuration_template/2,
         update_replication_configuration_template/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Create an extended source server in the target Account based on the
%% source server in staging account.
create_extended_source_server(Client, Input) ->
    create_extended_source_server(Client, Input, []).
create_extended_source_server(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CreateExtendedSourceServer"],
    SuccessStatusCode = 201,
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

%% @doc Creates a new ReplicationConfigurationTemplate.
create_replication_configuration_template(Client, Input) ->
    create_replication_configuration_template(Client, Input, []).
create_replication_configuration_template(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CreateReplicationConfigurationTemplate"],
    SuccessStatusCode = 201,
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

%% @doc Deletes a single Job by ID.
delete_job(Client, Input) ->
    delete_job(Client, Input, []).
delete_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteJob"],
    SuccessStatusCode = 204,
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

%% @doc Deletes a single Recovery Instance by ID.
%%
%% This deletes the Recovery Instance resource from Elastic Disaster
%% Recovery. The Recovery Instance must be disconnected first in order to
%% delete it.
delete_recovery_instance(Client, Input) ->
    delete_recovery_instance(Client, Input, []).
delete_recovery_instance(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteRecoveryInstance"],
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

%% @doc Deletes a single Replication Configuration Template by ID
delete_replication_configuration_template(Client, Input) ->
    delete_replication_configuration_template(Client, Input, []).
delete_replication_configuration_template(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteReplicationConfigurationTemplate"],
    SuccessStatusCode = 204,
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

%% @doc Deletes a single Source Server by ID.
%%
%% The Source Server must be disconnected first.
delete_source_server(Client, Input) ->
    delete_source_server(Client, Input, []).
delete_source_server(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteSourceServer"],
    SuccessStatusCode = 204,
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

%% @doc Retrieves a detailed Job log with pagination.
describe_job_log_items(Client, Input) ->
    describe_job_log_items(Client, Input, []).
describe_job_log_items(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DescribeJobLogItems"],
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

%% @doc Returns a list of Jobs.
%%
%% Use the JobsID and fromDate and toDate filters to limit which jobs are
%% returned. The response is sorted by creationDataTime - latest date first.
%% Jobs are created by the StartRecovery, TerminateRecoveryInstances and
%% StartFailbackLaunch APIs. Jobs are also created by DiagnosticLaunch and
%% TerminateDiagnosticInstances, which are APIs available only to *Support*
%% and only used in response to relevant support tickets.
describe_jobs(Client, Input) ->
    describe_jobs(Client, Input, []).
describe_jobs(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DescribeJobs"],
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

%% @doc Lists all Recovery Instances or multiple Recovery Instances by ID.
describe_recovery_instances(Client, Input) ->
    describe_recovery_instances(Client, Input, []).
describe_recovery_instances(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DescribeRecoveryInstances"],
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

%% @doc Lists all Recovery Snapshots for a single Source Server.
describe_recovery_snapshots(Client, Input) ->
    describe_recovery_snapshots(Client, Input, []).
describe_recovery_snapshots(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DescribeRecoverySnapshots"],
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

%% @doc Lists all ReplicationConfigurationTemplates, filtered by Source
%% Server IDs.
describe_replication_configuration_templates(Client, Input) ->
    describe_replication_configuration_templates(Client, Input, []).
describe_replication_configuration_templates(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DescribeReplicationConfigurationTemplates"],
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

%% @doc Lists all Source Servers or multiple Source Servers filtered by ID.
describe_source_servers(Client, Input) ->
    describe_source_servers(Client, Input, []).
describe_source_servers(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DescribeSourceServers"],
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

%% @doc Disconnect a Recovery Instance from Elastic Disaster Recovery.
%%
%% Data replication is stopped immediately. All AWS resources created by
%% Elastic Disaster Recovery for enabling the replication of the Recovery
%% Instance will be terminated / deleted within 90 minutes. If the agent on
%% the Recovery Instance has not been prevented from communicating with the
%% Elastic Disaster Recovery service, then it will receive a command to
%% uninstall itself (within approximately 10 minutes). The following
%% properties of the Recovery Instance will be changed immediately:
%% dataReplicationInfo.dataReplicationState will be set to DISCONNECTED; The
%% totalStorageBytes property for each of dataReplicationInfo.replicatedDisks
%% will be set to zero; dataReplicationInfo.lagDuration and
%% dataReplicationInfo.lagDuration will be nullified.
disconnect_recovery_instance(Client, Input) ->
    disconnect_recovery_instance(Client, Input, []).
disconnect_recovery_instance(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DisconnectRecoveryInstance"],
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

%% @doc Disconnects a specific Source Server from Elastic Disaster Recovery.
%%
%% Data replication is stopped immediately. All AWS resources created by
%% Elastic Disaster Recovery for enabling the replication of the Source
%% Server will be terminated / deleted within 90 minutes. You cannot
%% disconnect a Source Server if it has a Recovery Instance. If the agent on
%% the Source Server has not been prevented from communicating with the
%% Elastic Disaster Recovery service, then it will receive a command to
%% uninstall itself (within approximately 10 minutes). The following
%% properties of the SourceServer will be changed immediately:
%% dataReplicationInfo.dataReplicationState will be set to DISCONNECTED; The
%% totalStorageBytes property for each of dataReplicationInfo.replicatedDisks
%% will be set to zero; dataReplicationInfo.lagDuration and
%% dataReplicationInfo.lagDuration will be nullified.
disconnect_source_server(Client, Input) ->
    disconnect_source_server(Client, Input, []).
disconnect_source_server(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DisconnectSourceServer"],
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

%% @doc Lists all Failback ReplicationConfigurations, filtered by Recovery
%% Instance ID.
get_failback_replication_configuration(Client, Input) ->
    get_failback_replication_configuration(Client, Input, []).
get_failback_replication_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetFailbackReplicationConfiguration"],
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

%% @doc Gets a LaunchConfiguration, filtered by Source Server IDs.
get_launch_configuration(Client, Input) ->
    get_launch_configuration(Client, Input, []).
get_launch_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetLaunchConfiguration"],
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

%% @doc Gets a ReplicationConfiguration, filtered by Source Server ID.
get_replication_configuration(Client, Input) ->
    get_replication_configuration(Client, Input, []).
get_replication_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetReplicationConfiguration"],
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

%% @doc Initialize Elastic Disaster Recovery.
initialize_service(Client, Input) ->
    initialize_service(Client, Input, []).
initialize_service(Client, Input0, Options0) ->
    Method = post,
    Path = ["/InitializeService"],
    SuccessStatusCode = 204,
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

%% @doc Returns a list of source servers on a staging account that are
%% extensible, which means that: a.
%%
%% The source server is not already extended into this Account. b. The source
%% server on the Account we’re reading from is not an extension of another
%% source server.
list_extensible_source_servers(Client, Input) ->
    list_extensible_source_servers(Client, Input, []).
list_extensible_source_servers(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListExtensibleSourceServers"],
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

%% @doc Returns an array of staging accounts for existing extended source
%% servers.
list_staging_accounts(Client)
  when is_map(Client) ->
    list_staging_accounts(Client, #{}, #{}).

list_staging_accounts(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_staging_accounts(Client, QueryMap, HeadersMap, []).

list_staging_accounts(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/ListStagingAccounts"],
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

%% @doc List all tags for your Elastic Disaster Recovery resources.
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

%% @doc Causes the data replication initiation sequence to begin immediately
%% upon next Handshake for the specified Source Server ID, regardless of when
%% the previous initiation started.
%%
%% This command will work only if the Source Server is stalled or is in a
%% DISCONNECTED or STOPPED state.
retry_data_replication(Client, Input) ->
    retry_data_replication(Client, Input, []).
retry_data_replication(Client, Input0, Options0) ->
    Method = post,
    Path = ["/RetryDataReplication"],
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

%% @doc Start replication to origin / target region - applies only to
%% protected instances that originated in EC2.
%%
%% For recovery instances on target region - starts replication back to
%% origin region. For failback instances on origin region - starts
%% replication to target region to re-protect them.
reverse_replication(Client, Input) ->
    reverse_replication(Client, Input, []).
reverse_replication(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ReverseReplication"],
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

%% @doc Initiates a Job for launching the machine that is being failed back
%% to from the specified Recovery Instance.
%%
%% This will run conversion on the failback client and will reboot your
%% machine, thus completing the failback process.
start_failback_launch(Client, Input) ->
    start_failback_launch(Client, Input, []).
start_failback_launch(Client, Input0, Options0) ->
    Method = post,
    Path = ["/StartFailbackLaunch"],
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

%% @doc Launches Recovery Instances for the specified Source Servers.
%%
%% For each Source Server you may choose a point in time snapshot to launch
%% from, or use an on demand snapshot.
start_recovery(Client, Input) ->
    start_recovery(Client, Input, []).
start_recovery(Client, Input0, Options0) ->
    Method = post,
    Path = ["/StartRecovery"],
    SuccessStatusCode = 202,
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

%% @doc Starts replication for a stopped Source Server.
%%
%% This action would make the Source Server protected again and restart
%% billing for it.
start_replication(Client, Input) ->
    start_replication(Client, Input, []).
start_replication(Client, Input0, Options0) ->
    Method = post,
    Path = ["/StartReplication"],
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

%% @doc Stops the failback process for a specified Recovery Instance.
%%
%% This changes the Failback State of the Recovery Instance back to
%% FAILBACK_NOT_STARTED.
stop_failback(Client, Input) ->
    stop_failback(Client, Input, []).
stop_failback(Client, Input0, Options0) ->
    Method = post,
    Path = ["/StopFailback"],
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

%% @doc Stops replication for a Source Server.
%%
%% This action would make the Source Server unprotected, delete its existing
%% snapshots and stop billing for it.
stop_replication(Client, Input) ->
    stop_replication(Client, Input, []).
stop_replication(Client, Input0, Options0) ->
    Method = post,
    Path = ["/StopReplication"],
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

%% @doc Adds or overwrites only the specified tags for the specified Elastic
%% Disaster Recovery resource or resources.
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

%% @doc Initiates a Job for terminating the EC2 resources associated with the
%% specified Recovery Instances, and then will delete the Recovery Instances
%% from the Elastic Disaster Recovery service.
terminate_recovery_instances(Client, Input) ->
    terminate_recovery_instances(Client, Input, []).
terminate_recovery_instances(Client, Input0, Options0) ->
    Method = post,
    Path = ["/TerminateRecoveryInstances"],
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

%% @doc Deletes the specified set of tags from the specified set of Elastic
%% Disaster Recovery resources.
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

%% @doc Allows you to update the failback replication configuration of a
%% Recovery Instance by ID.
update_failback_replication_configuration(Client, Input) ->
    update_failback_replication_configuration(Client, Input, []).
update_failback_replication_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UpdateFailbackReplicationConfiguration"],
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

%% @doc Updates a LaunchConfiguration by Source Server ID.
update_launch_configuration(Client, Input) ->
    update_launch_configuration(Client, Input, []).
update_launch_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UpdateLaunchConfiguration"],
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

%% @doc Allows you to update a ReplicationConfiguration by Source Server ID.
update_replication_configuration(Client, Input) ->
    update_replication_configuration(Client, Input, []).
update_replication_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UpdateReplicationConfiguration"],
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

%% @doc Updates a ReplicationConfigurationTemplate by ID.
update_replication_configuration_template(Client, Input) ->
    update_replication_configuration_template(Client, Input, []).
update_replication_configuration_template(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UpdateReplicationConfigurationTemplate"],
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
    Client1 = Client#{service => <<"drs">>},
    Host = build_host(<<"drs">>, Client1),
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
    AdditionalHeaders = case proplists:get_value(append_sha256_content_hash, Options) of
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
