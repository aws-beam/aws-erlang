%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc DataSync
%%
%% DataSync is an online data movement and discovery service that simplifies
%% data migration and helps you quickly, easily, and securely transfer your
%% file or object data to, from, and between Amazon Web Services storage
%% services.
%%
%% This API interface reference includes documentation for using DataSync
%% programmatically. For complete information, see the DataSync User Guide .
-module(aws_datasync).

-export([add_storage_system/2,
         add_storage_system/3,
         cancel_task_execution/2,
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
         describe_discovery_job/2,
         describe_discovery_job/3,
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
         describe_storage_system/2,
         describe_storage_system/3,
         describe_storage_system_resource_metrics/2,
         describe_storage_system_resource_metrics/3,
         describe_storage_system_resources/2,
         describe_storage_system_resources/3,
         describe_task/2,
         describe_task/3,
         describe_task_execution/2,
         describe_task_execution/3,
         generate_recommendations/2,
         generate_recommendations/3,
         list_agents/2,
         list_agents/3,
         list_discovery_jobs/2,
         list_discovery_jobs/3,
         list_locations/2,
         list_locations/3,
         list_storage_systems/2,
         list_storage_systems/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_task_executions/2,
         list_task_executions/3,
         list_tasks/2,
         list_tasks/3,
         remove_storage_system/2,
         remove_storage_system/3,
         start_discovery_job/2,
         start_discovery_job/3,
         start_task_execution/2,
         start_task_execution/3,
         stop_discovery_job/2,
         stop_discovery_job/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_agent/2,
         update_agent/3,
         update_discovery_job/2,
         update_discovery_job/3,
         update_location_hdfs/2,
         update_location_hdfs/3,
         update_location_nfs/2,
         update_location_nfs/3,
         update_location_object_storage/2,
         update_location_object_storage/3,
         update_location_smb/2,
         update_location_smb/3,
         update_storage_system/2,
         update_storage_system/3,
         update_task/2,
         update_task/3,
         update_task_execution/2,
         update_task_execution/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates an Amazon Web Services resource for an on-premises storage
%% system that you want DataSync Discovery to collect information about.
add_storage_system(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_storage_system(Client, Input, []).
add_storage_system(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddStorageSystem">>, Input, Options).

%% @doc Stops an DataSync task execution that's in progress.
%%
%% The transfer of some files are abruptly interrupted. File contents
%% that're transferred to the destination might be incomplete or
%% inconsistent with the source files.
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

%% @doc Activates an DataSync agent that you've deployed in your storage
%% environment.
%%
%% The activation process associates the agent with your Amazon Web Services
%% account.
%%
%% If you haven't deployed an agent yet, see the following topics to
%% learn more:
%%
%% <ul> <li> Agent requirements
%%
%% </li> <li> Create an agent
%%
%% </li> </ul> If you're transferring between Amazon Web Services storage
%% services, you don't need a DataSync agent.
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

%% @doc A location is an endpoint for an Amazon S3 bucket.
%%
%% DataSync can use the location as a source or destination for copying data.
%%
%% Before you create your location, make sure that you read the following
%% sections:
%%
%% Storage class considerations with Amazon S3 locations
%%
%% Evaluating S3 request costs when using DataSync
%%
%% For more information, see Creating an Amazon S3 location.
create_location_s3(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_location_s3(Client, Input, []).
create_location_s3(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLocationS3">>, Input, Options).

%% @doc Creates an endpoint for a Server Message Block (SMB) file server that
%% DataSync can access for a transfer.
%%
%% For more information, see Creating an SMB location.
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
%% If you're planning to transfer data to or from an Amazon S3 location,
%% review how DataSync can affect your S3 request charges and the DataSync
%% pricing page before you begin.
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
%% Amazon Web Services account. However, it doesn't delete the agent
%% virtual machine (VM) from your on-premises environment.
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

%% @doc Deletes an DataSync task.
delete_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_task(Client, Input, []).
delete_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTask">>, Input, Options).

%% @doc Returns metadata about an DataSync agent, such as its name, endpoint
%% type, and status.
describe_agent(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_agent(Client, Input, []).
describe_agent(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAgent">>, Input, Options).

%% @doc Returns information about a DataSync discovery job.
describe_discovery_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_discovery_job(Client, Input, []).
describe_discovery_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDiscoveryJob">>, Input, Options).

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

%% @doc Returns information about an on-premises storage system that
%% you're using with DataSync Discovery.
describe_storage_system(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_storage_system(Client, Input, []).
describe_storage_system(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeStorageSystem">>, Input, Options).

%% @doc Returns information, including performance data and capacity usage,
%% which DataSync Discovery collects about a specific resource in
%% your-premises storage system.
describe_storage_system_resource_metrics(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_storage_system_resource_metrics(Client, Input, []).
describe_storage_system_resource_metrics(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeStorageSystemResourceMetrics">>, Input, Options).

%% @doc Returns information that DataSync Discovery collects about resources
%% in your on-premises storage system.
describe_storage_system_resources(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_storage_system_resources(Client, Input, []).
describe_storage_system_resources(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeStorageSystemResources">>, Input, Options).

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

%% @doc Creates recommendations about where to migrate your data to in Amazon
%% Web Services.
%%
%% Recommendations are generated based on information that DataSync Discovery
%% collects about your on-premises storage system's resources. For more
%% information, see Recommendations provided by DataSync Discovery.
%%
%% Once generated, you can view your recommendations by using the
%% DescribeStorageSystemResources operation.
%%
%% If your discovery job completes successfully, you don't need to use
%% this operation. DataSync Discovery generates the recommendations for you
%% automatically.
generate_recommendations(Client, Input)
  when is_map(Client), is_map(Input) ->
    generate_recommendations(Client, Input, []).
generate_recommendations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GenerateRecommendations">>, Input, Options).

%% @doc Returns a list of DataSync agents that belong to an Amazon Web
%% Services account in the Amazon Web Services Region specified in the
%% request.
%%
%% With pagination, you can reduce the number of agents returned in a
%% response. If you get a truncated list of agents in a response, the
%% response contains a marker that you can specify in your next request to
%% fetch the next page of agents.
%%
%% `ListAgents' is eventually consistent. This means the result of
%% running the operation might not reflect that you just created or deleted
%% an agent. For example, if you create an agent with CreateAgent and then
%% immediately run `ListAgents', that agent might not show up in the list
%% right away. In situations like this, you can always confirm whether an
%% agent has been created (or deleted) by using DescribeAgent.
list_agents(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_agents(Client, Input, []).
list_agents(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAgents">>, Input, Options).

%% @doc Provides a list of the existing discovery jobs in the Amazon Web
%% Services Region and Amazon Web Services account where you're using
%% DataSync Discovery.
list_discovery_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_discovery_jobs(Client, Input, []).
list_discovery_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDiscoveryJobs">>, Input, Options).

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

%% @doc Lists the on-premises storage systems that you're using with
%% DataSync Discovery.
list_storage_systems(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_storage_systems(Client, Input, []).
list_storage_systems(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListStorageSystems">>, Input, Options).

%% @doc Returns all the tags associated with an Amazon Web Services resource.
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

%% @doc Permanently removes a storage system resource from DataSync
%% Discovery, including the associated discovery jobs, collected data, and
%% recommendations.
remove_storage_system(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_storage_system(Client, Input, []).
remove_storage_system(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveStorageSystem">>, Input, Options).

%% @doc Runs a DataSync discovery job on your on-premises storage system.
%%
%% If you haven't added the storage system to DataSync Discovery yet, do
%% this first by using the AddStorageSystem operation.
start_discovery_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_discovery_job(Client, Input, []).
start_discovery_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartDiscoveryJob">>, Input, Options).

%% @doc Starts an DataSync task.
%%
%% For each task, you can only run one task execution at a time.
%%
%% There are several phases to a task execution. For more information, see
%% Task execution statuses.
%%
%% If you're planning to transfer data to or from an Amazon S3 location,
%% review how DataSync can affect your S3 request charges and the DataSync
%% pricing page before you begin.
start_task_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_task_execution(Client, Input, []).
start_task_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartTaskExecution">>, Input, Options).

%% @doc Stops a running DataSync discovery job.
%%
%% You can stop a discovery job anytime. A job that's stopped before
%% it's scheduled to end likely will provide you some information about
%% your on-premises storage system resources. To get recommendations for a
%% stopped job, you must use the GenerateRecommendations operation.
stop_discovery_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_discovery_job(Client, Input, []).
stop_discovery_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopDiscoveryJob">>, Input, Options).

%% @doc Applies a tag to an Amazon Web Services resource.
%%
%% Tags are key-value pairs that can help you manage, filter, and search for
%% your resources.
%%
%% These include DataSync resources, such as locations, tasks, and task
%% executions.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Removes tags from an Amazon Web Services resource.
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

%% @doc Edits a DataSync discovery job configuration.
update_discovery_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_discovery_job(Client, Input, []).
update_discovery_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDiscoveryJob">>, Input, Options).

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

%% @doc Modifies some configurations of an on-premises storage system
%% resource that you're using with DataSync Discovery.
update_storage_system(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_storage_system(Client, Input, []).
update_storage_system(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateStorageSystem">>, Input, Options).

%% @doc Updates the metadata associated with a task.
update_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_task(Client, Input, []).
update_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateTask">>, Input, Options).

%% @doc Modifies a running DataSync task.
%%
%% Currently, the only `Option' that you can modify with
%% `UpdateTaskExecution' is ` BytesPerSecond ', which throttles
%% bandwidth for a running or queued task.
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
    Proto = aws_client:proto(Client),
    Port = aws_client:port(Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
