%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc <fullname>AWS DataSync</fullname>
%%
%% AWS DataSync is a managed data transfer service that makes it simpler for
%% you to automate moving data between on-premises storage and Amazon Simple
%% Storage Service (Amazon S3) or Amazon Elastic File System (Amazon EFS).
%%
%% This API interface reference for AWS DataSync contains documentation for a
%% programming interface that you can use to manage AWS DataSync.
-module(aws_datasync).

-export([cancel_task_execution/2,
         cancel_task_execution/3,
         create_agent/2,
         create_agent/3,
         create_location_efs/2,
         create_location_efs/3,
         create_location_fsx_windows/2,
         create_location_fsx_windows/3,
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
         describe_location_fsx_windows/2,
         describe_location_fsx_windows/3,
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
         update_task/2,
         update_task/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Cancels execution of a task.
%%
%% When you cancel a task execution, the transfer of some files is abruptly
%% interrupted. The contents of files that are transferred to the destination
%% might be incomplete or inconsistent with the source files. However, if you
%% start a new task execution on the same task and you allow the task
%% execution to complete, file content on the destination is complete and
%% consistent. This applies to other unexpected failures that interrupt a
%% task execution. In all of these cases, AWS DataSync successfully complete
%% the transfer when you start the next task execution.
cancel_task_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_task_execution(Client, Input, []).
cancel_task_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelTaskExecution">>, Input, Options).

%% @doc Activates an AWS DataSync agent that you have deployed on your host.
%% The activation process associates your agent with your account. In the
%% activation process, you specify information such as the AWS Region that
%% you want to activate the agent in. You activate the agent in the AWS
%% Region where your target locations (in Amazon S3 or Amazon EFS) reside.
%% Your tasks are created in this AWS Region.
%%
%% You can activate the agent in a VPC (virtual private cloud) or provide the
%% agent access to a VPC endpoint so you can run tasks without going over the
%% public Internet.
%%
%% You can use an agent for more than one location. If a task uses multiple
%% agents, all of them need to have status AVAILABLE for the task to run. If
%% you use multiple agents for a source location, the status of all the
%% agents must be AVAILABLE for the task to run.
%%
%% Agents are automatically updated by AWS on a regular basis, using a
%% mechanism that ensures minimal interruption to your tasks.
%%
%% <p/>
create_agent(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_agent(Client, Input, []).
create_agent(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAgent">>, Input, Options).

%% @doc Creates an endpoint for an Amazon EFS file system.
create_location_efs(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_location_efs(Client, Input, []).
create_location_efs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLocationEfs">>, Input, Options).

%% @doc Creates an endpoint for an Amazon FSx for Windows file system.
create_location_fsx_windows(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_location_fsx_windows(Client, Input, []).
create_location_fsx_windows(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLocationFsxWindows">>, Input, Options).

%% @doc Defines a file system on a Network File System (NFS) server that can
%% be read from or written to.
create_location_nfs(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_location_nfs(Client, Input, []).
create_location_nfs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLocationNfs">>, Input, Options).

%% @doc Creates an endpoint for a self-managed object storage bucket.
create_location_object_storage(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_location_object_storage(Client, Input, []).
create_location_object_storage(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLocationObjectStorage">>, Input, Options).

%% @doc Creates an endpoint for an Amazon S3 bucket.
%%
%% For AWS DataSync to access a destination S3 bucket, it needs an AWS
%% Identity and Access Management (IAM) role that has the required
%% permissions. You can set up the required permissions by creating an IAM
%% policy that grants the required permissions and attaching the policy to
%% the role. An example of such a policy is shown in the examples section.
%%
%% For more information, see
%% https://docs.aws.amazon.com/datasync/latest/userguide/working-with-locations.html#create-s3-location
%% in the <i>AWS DataSync User Guide.</i>
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

%% @doc Creates a task. A task is a set of two locations (source and
%% destination) and a set of Options that you use to control the behavior of
%% a task. If you don't specify Options when you create a task, AWS DataSync
%% populates them with service defaults.
%%
%% When you create a task, it first enters the CREATING state. During
%% CREATING AWS DataSync attempts to mount the on-premises Network File
%% System (NFS) location. The task transitions to the AVAILABLE state without
%% waiting for the AWS location to become mounted. If required, AWS DataSync
%% mounts the AWS location before each task execution.
%%
%% If an agent that is associated with a source (NFS) location goes offline,
%% the task transitions to the UNAVAILABLE status. If the status of the task
%% remains in the CREATING status for more than a few minutes, it means that
%% your agent might be having trouble mounting the source NFS file system.
%% Check the task's ErrorCode and ErrorDetail. Mount issues are often caused
%% by either a misconfigured firewall or a mistyped NFS server host name.
create_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_task(Client, Input, []).
create_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTask">>, Input, Options).

%% @doc Deletes an agent. To specify which agent to delete, use the Amazon
%% Resource Name (ARN) of the agent in your request. The operation
%% disassociates the agent from your AWS account. However, it doesn't delete
%% the agent virtual machine (VM) from your on-premises environment.
delete_agent(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_agent(Client, Input, []).
delete_agent(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAgent">>, Input, Options).

%% @doc Deletes the configuration of a location used by AWS DataSync.
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
%% status (that is, whether the agent is running or not) for an agent. To
%% specify which agent to describe, use the Amazon Resource Name (ARN) of the
%% agent in your request.
describe_agent(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_agent(Client, Input, []).
describe_agent(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAgent">>, Input, Options).

%% @doc Returns metadata, such as the path information about an Amazon EFS
%% location.
describe_location_efs(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_location_efs(Client, Input, []).
describe_location_efs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLocationEfs">>, Input, Options).

%% @doc Returns metadata, such as the path information about an Amazon FSx
%% for Windows location.
describe_location_fsx_windows(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_location_fsx_windows(Client, Input, []).
describe_location_fsx_windows(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLocationFsxWindows">>, Input, Options).

%% @doc Returns metadata, such as the path information, about an NFS
%% location.
describe_location_nfs(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_location_nfs(Client, Input, []).
describe_location_nfs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLocationNfs">>, Input, Options).

%% @doc Returns metadata about a self-managed object storage server location.
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

%% @doc Returns a list of agents owned by an AWS account in the AWS Region
%% specified in the request. The returned list is ordered by agent Amazon
%% Resource Name (ARN).
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

%% @doc Returns a list of all the tasks.
list_tasks(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tasks(Client, Input, []).
list_tasks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTasks">>, Input, Options).

%% @doc Starts a specific invocation of a task. A <code>TaskExecution</code>
%% value represents an individual run of a task. Each task can have at most
%% one <code>TaskExecution</code> at a time.
%%
%% <code>TaskExecution</code> has the following transition phases:
%% INITIALIZING | PREPARING | TRANSFERRING | VERIFYING | SUCCESS/FAILURE.
%%
%% For detailed information, see the Task Execution section in the Components
%% and Terminology topic in the <i>AWS DataSync User Guide</i>.
start_task_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_task_execution(Client, Input, []).
start_task_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartTaskExecution">>, Input, Options).

%% @doc Applies a key-value pair to an AWS resource.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Removes a tag from an AWS resource.
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

%% @doc Updates the metadata associated with a task.
update_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_task(Client, Input, []).
update_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateTask">>, Input, Options).

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

build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Client) ->
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
