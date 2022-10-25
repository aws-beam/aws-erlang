%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc DataSync
%%
%% DataSync is a managed data transfer service that makes it simpler for you
%% to automate moving data between on-premises storage and Amazon Web
%% Services storage services.
%%
%% You also can use DataSync to transfer data between other cloud providers
%% and Amazon Web Services storage services.
%%
%% This API interface reference includes documentation for using DataSync
%% programmatically. For complete information, see the DataSync User Guide .
-module(aws_datasync).

-export([cancel_task_execution/2,
         cancel_task_execution/3,
         create_agent/2,
         create_agent/3,
         create_location_efs/2,
         create_location_efs/3,
         create_location_fsx_lustre/2,
         create_location_fsx_lustre/3,
         create_location_fsx_ontap/2,
         create_location_fsx_ontap/3,
         create_location_fsx_open_zfs/2,
         create_location_fsx_open_zfs/3,
         create_location_fsx_windows/2,
         create_location_fsx_windows/3,
         create_location_hdfs/2,
         create_location_hdfs/3,
         create_location_nfs/2,
         create_location_nfs/3,
         create_location_object_storage/2,
         create_location_object_storage/3,
         create_location_s3/2,
         create_location_s3/3,
         create_location_smb/2,
         create_location_smb/3,
         create_task/2,
         create_task/3,
         delete_agent/2,
         delete_agent/3,
         delete_location/2,
         delete_location/3,
         delete_task/2,
         delete_task/3,
         describe_agent/2,
         describe_agent/3,
         describe_location_efs/2,
         describe_location_efs/3,
         describe_location_fsx_lustre/2,
         describe_location_fsx_lustre/3,
         describe_location_fsx_ontap/2,
         describe_location_fsx_ontap/3,
         describe_location_fsx_open_zfs/2,
         describe_location_fsx_open_zfs/3,
         describe_location_fsx_windows/2,
         describe_location_fsx_windows/3,
         describe_location_hdfs/2,
         describe_location_hdfs/3,
         describe_location_nfs/2,
         describe_location_nfs/3,
         describe_location_object_storage/2,
         describe_location_object_storage/3,
         describe_location_s3/2,
         describe_location_s3/3,
         describe_location_smb/2,
         describe_location_smb/3,
         describe_task/2,
         describe_task/3,
         describe_task_execution/2,
         describe_task_execution/3,
         list_agents/2,
         list_agents/3,
         list_locations/2,
         list_locations/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_task_executions/2,
         list_task_executions/3,
         list_tasks/2,
         list_tasks/3,
         start_task_execution/2,
         start_task_execution/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_agent/2,
         update_agent/3,
         update_location_hdfs/2,
         update_location_hdfs/3,
         update_location_nfs/2,
         update_location_nfs/3,
         update_location_object_storage/2,
         update_location_object_storage/3,
         update_location_smb/2,
         update_location_smb/3,
         update_task/2,
         update_task/3,
         update_task_execution/2,
         update_task_execution/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Stops an DataSync task execution that's in progress.
%%
%% The transfer of some files are abruptly interrupted. File contents that're
%% transferred to the destination might be incomplete or inconsistent with
%% the source files.
%%
%% However, if you start a new task execution using the same task and allow
%% it to finish, file content on the destination will be complete and
%% consistent. This applies to other unexpected failures that interrupt a
%% task execution. In all of these cases, DataSync successfully completes the
%% transfer when you start the next task execution.
cancel_task_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_task_execution(Client, Input, []).
cancel_task_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelTaskExecution">>, Input, Options).

%% @doc Activates an DataSync agent that you have deployed in your storage
%% environment.
%%
%% The activation process associates your agent with your account. In the
%% activation process, you specify information such as the Amazon Web
%% Services Region that you want to activate the agent in. You activate the
%% agent in the Amazon Web Services Region where your target locations (in
%% Amazon S3 or Amazon EFS) reside. Your tasks are created in this Amazon Web
%% Services Region.
%%
%% You can activate the agent in a VPC (virtual private cloud) or provide the
%% agent access to a VPC endpoint so you can run tasks without going over the
%% public internet.
%%
%% You can use an agent for more than one location. If a task uses multiple
%% agents, all of them need to have status AVAILABLE for the task to run. If
%% you use multiple agents for a source location, the status of all the
%% agents must be AVAILABLE for the task to run.
%%
%% Agents are automatically updated by Amazon Web Services on a regular
%% basis, using a mechanism that ensures minimal interruption to your tasks.
create_agent(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_agent(Client, Input, []).
create_agent(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAgent">>, Input, Options).

%% @doc Creates an endpoint for an Amazon EFS file system that DataSync can
%% access for a transfer.
%%
%% For more information, see Creating a location for Amazon EFS.
create_location_efs(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_location_efs(Client, Input, []).
create_location_efs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLocationEfs">>, Input, Options).

%% @doc Creates an endpoint for an Amazon FSx for Lustre file system.
create_location_fsx_lustre(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_location_fsx_lustre(Client, Input, []).
create_location_fsx_lustre(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLocationFsxLustre">>, Input, Options).

%% @doc Creates an endpoint for an Amazon FSx for NetApp ONTAP file system
%% that DataSync can access for a transfer.
%%
%% For more information, see Creating a location for FSx for ONTAP.
create_location_fsx_ontap(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_location_fsx_ontap(Client, Input, []).
create_location_fsx_ontap(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLocationFsxOntap">>, Input, Options).

%% @doc Creates an endpoint for an Amazon FSx for OpenZFS file system that
%% DataSync can access for a transfer.
%%
%% For more information, see Creating a location for FSx for OpenZFS.
%%
%% Request parameters related to `SMB' aren't supported with the
%% `CreateLocationFsxOpenZfs' operation.
create_location_fsx_open_zfs(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_location_fsx_open_zfs(Client, Input, []).
create_location_fsx_open_zfs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLocationFsxOpenZfs">>, Input, Options).

%% @doc Creates an endpoint for an Amazon FSx for Windows File Server file
%% system.
create_location_fsx_windows(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_location_fsx_windows(Client, Input, []).
create_location_fsx_windows(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLocationFsxWindows">>, Input, Options).

%% @doc Creates an endpoint for a Hadoop Distributed File System (HDFS).
create_location_hdfs(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_location_hdfs(Client, Input, []).
create_location_hdfs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLocationHdfs">>, Input, Options).

%% @doc Defines a file system on a Network File System (NFS) server that can
%% be read from or written to.
create_location_nfs(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_location_nfs(Client, Input, []).
create_location_nfs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLocationNfs">>, Input, Options).

%% @doc Creates an endpoint for an object storage system that DataSync can
%% access for a transfer.
%%
%% For more information, see Creating a location for object storage.
create_location_object_storage(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_location_object_storage(Client, Input, []).
create_location_object_storage(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLocationObjectStorage">>, Input, Options).

%% @doc Creates an endpoint for an Amazon S3 bucket that DataSync can access
%% for a transfer.
%%
%% For more information, see Create an Amazon S3 location in the DataSync
%% User Guide.
create_location_s3(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_location_s3(Client, Input, []).
create_location_s3(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLocationS3">>, Input, Options).

%% @doc Defines a file system on a Server Message Block (SMB) server that can
%% be read from or written to.
create_location_smb(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_location_smb(Client, Input, []).
create_location_smb(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLocationSmb">>, Input, Options).

%% @doc Configures a task, which defines where and how DataSync transfers
%% your data.
%%
%% A task includes a source location, a destination location, and the
%% preferences for how and when you want to transfer your data (such as
%% bandwidth limits, scheduling, among other options).
%%
%% When you create a task that transfers data between Amazon Web Services
%% services in different Amazon Web Services Regions, one of your locations
%% must reside in the Region where you're using DataSync.
%%
%% For more information, see the following topics:
%%
%% <ul> <li> Working with DataSync locations
%%
%% </li> <li> Configure DataSync task settings
%%
%% </li> </ul>
create_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_task(Client, Input, []).
create_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTask">>, Input, Options).

%% @doc Deletes an agent.
%%
%% To specify which agent to delete, use the Amazon Resource Name (ARN) of
%% the agent in your request. The operation disassociates the agent from your
%% Amazon Web Services account. However, it doesn't delete the agent virtual
%% machine (VM) from your on-premises environment.
delete_agent(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_agent(Client, Input, []).
delete_agent(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAgent">>, Input, Options).

%% @doc Deletes the configuration of a location used by DataSync.
delete_location(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_location(Client, Input, []).
delete_location(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLocation">>, Input, Options).

%% @doc Deletes a task.
delete_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_task(Client, Input, []).
delete_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTask">>, Input, Options).

%% @doc Returns metadata such as the name, the network interfaces, and the
%% status (that is, whether the agent is running or not) for an agent.
%%
%% To specify which agent to describe, use the Amazon Resource Name (ARN) of
%% the agent in your request.
describe_agent(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_agent(Client, Input, []).
describe_agent(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAgent">>, Input, Options).

%% @doc Returns metadata about your DataSync location for an Amazon EFS file
%% system.
describe_location_efs(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_location_efs(Client, Input, []).
describe_location_efs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLocationEfs">>, Input, Options).

%% @doc Provides details about how an DataSync location for an Amazon FSx for
%% Lustre file system is configured.
describe_location_fsx_lustre(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_location_fsx_lustre(Client, Input, []).
describe_location_fsx_lustre(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLocationFsxLustre">>, Input, Options).

%% @doc Provides details about how an DataSync location for an Amazon FSx for
%% NetApp ONTAP file system is configured.
%%
%% If your location uses SMB, the `DescribeLocationFsxOntap' operation
%% doesn't actually return a `Password'.
describe_location_fsx_ontap(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_location_fsx_ontap(Client, Input, []).
describe_location_fsx_ontap(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLocationFsxOntap">>, Input, Options).

%% @doc Provides details about how an DataSync location for an Amazon FSx for
%% OpenZFS file system is configured.
%%
%% Response elements related to `SMB' aren't supported with the
%% `DescribeLocationFsxOpenZfs' operation.
describe_location_fsx_open_zfs(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_location_fsx_open_zfs(Client, Input, []).
describe_location_fsx_open_zfs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLocationFsxOpenZfs">>, Input, Options).

%% @doc Returns metadata about an Amazon FSx for Windows File Server
%% location, such as information about its path.
describe_location_fsx_windows(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_location_fsx_windows(Client, Input, []).
describe_location_fsx_windows(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLocationFsxWindows">>, Input, Options).

%% @doc Returns metadata, such as the authentication information about the
%% Hadoop Distributed File System (HDFS) location.
describe_location_hdfs(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_location_hdfs(Client, Input, []).
describe_location_hdfs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLocationHdfs">>, Input, Options).

%% @doc Returns metadata, such as the path information, about an NFS
%% location.
describe_location_nfs(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_location_nfs(Client, Input, []).
describe_location_nfs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLocationNfs">>, Input, Options).

%% @doc Returns metadata about your DataSync location for an object storage
%% system.
describe_location_object_storage(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_location_object_storage(Client, Input, []).
describe_location_object_storage(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLocationObjectStorage">>, Input, Options).

%% @doc Returns metadata, such as bucket name, about an Amazon S3 bucket
%% location.
describe_location_s3(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_location_s3(Client, Input, []).
describe_location_s3(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLocationS3">>, Input, Options).

%% @doc Returns metadata, such as the path and user information about an SMB
%% location.
describe_location_smb(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_location_smb(Client, Input, []).
describe_location_smb(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLocationSmb">>, Input, Options).

%% @doc Returns metadata about a task.
describe_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_task(Client, Input, []).
describe_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTask">>, Input, Options).

%% @doc Returns detailed metadata about a task that is being executed.
describe_task_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_task_execution(Client, Input, []).
describe_task_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTaskExecution">>, Input, Options).

%% @doc Returns a list of agents owned by an Amazon Web Services account in
%% the Amazon Web Services Region specified in the request.
%%
%% The returned list is ordered by agent Amazon Resource Name (ARN).
%%
%% By default, this operation returns a maximum of 100 agents. This operation
%% supports pagination that enables you to optionally reduce the number of
%% agents returned in a response.
%%
%% If you have more agents than are returned in a response (that is, the
%% response returns only a truncated list of your agents), the response
%% contains a marker that you can specify in your next request to fetch the
%% next page of agents.
list_agents(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_agents(Client, Input, []).
list_agents(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAgents">>, Input, Options).

%% @doc Returns a list of source and destination locations.
%%
%% If you have more locations than are returned in a response (that is, the
%% response returns only a truncated list of your agents), the response
%% contains a token that you can specify in your next request to fetch the
%% next page of locations.
list_locations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_locations(Client, Input, []).
list_locations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListLocations">>, Input, Options).

%% @doc Returns all the tags associated with a specified resource.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Returns a list of executed tasks.
list_task_executions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_task_executions(Client, Input, []).
list_task_executions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTaskExecutions">>, Input, Options).

%% @doc Returns a list of the DataSync tasks you created.
list_tasks(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tasks(Client, Input, []).
list_tasks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTasks">>, Input, Options).

%% @doc Starts a specific invocation of a task.
%%
%% A `TaskExecution' value represents an individual run of a task. Each task
%% can have at most one `TaskExecution' at a time.
%%
%% `TaskExecution' has the following transition phases: INITIALIZING |
%% PREPARING | TRANSFERRING | VERIFYING | SUCCESS/FAILURE.
%%
%% For detailed information, see the Task Execution section in the Components
%% and Terminology topic in the DataSync User Guide.
start_task_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_task_execution(Client, Input, []).
start_task_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartTaskExecution">>, Input, Options).

%% @doc Applies a key-value pair to an Amazon Web Services resource.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Removes a tag from an Amazon Web Services resource.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Updates the name of an agent.
update_agent(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_agent(Client, Input, []).
update_agent(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateAgent">>, Input, Options).

%% @doc Updates some parameters of a previously created location for a Hadoop
%% Distributed File System cluster.
update_location_hdfs(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_location_hdfs(Client, Input, []).
update_location_hdfs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateLocationHdfs">>, Input, Options).

%% @doc Updates some of the parameters of a previously created location for
%% Network File System (NFS) access.
%%
%% For information about creating an NFS location, see Creating a location
%% for NFS.
update_location_nfs(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_location_nfs(Client, Input, []).
update_location_nfs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateLocationNfs">>, Input, Options).

%% @doc Updates some parameters of an existing object storage location that
%% DataSync accesses for a transfer.
%%
%% For information about creating a self-managed object storage location, see
%% Creating a location for object storage.
update_location_object_storage(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_location_object_storage(Client, Input, []).
update_location_object_storage(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateLocationObjectStorage">>, Input, Options).

%% @doc Updates some of the parameters of a previously created location for
%% Server Message Block (SMB) file system access.
%%
%% For information about creating an SMB location, see Creating a location
%% for SMB.
update_location_smb(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_location_smb(Client, Input, []).
update_location_smb(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateLocationSmb">>, Input, Options).

%% @doc Updates the metadata associated with a task.
update_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_task(Client, Input, []).
update_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateTask">>, Input, Options).

%% @doc Updates execution of a task.
%%
%% You can modify bandwidth throttling for a task execution that is running
%% or queued. For more information, see Adjusting Bandwidth Throttling for a
%% Task Execution.
%%
%% The only `Option' that can be modified by `UpdateTaskExecution' is `
%% BytesPerSecond '.
update_task_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_task_execution(Client, Input, []).
update_task_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateTaskExecution">>, Input, Options).

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
    Client1 = Client#{service => <<"datasync">>},
    Host = build_host(<<"datasync">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"FmrsService.", Action/binary>>}
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
