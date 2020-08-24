%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon FSx is a fully managed service that makes it easy for storage
%% and application administrators to launch and use shared file storage.
-module(aws_fsx).

-export([cancel_data_repository_task/2,
         cancel_data_repository_task/3,
         create_backup/2,
         create_backup/3,
         create_data_repository_task/2,
         create_data_repository_task/3,
         create_file_system/2,
         create_file_system/3,
         create_file_system_from_backup/2,
         create_file_system_from_backup/3,
         delete_backup/2,
         delete_backup/3,
         delete_file_system/2,
         delete_file_system/3,
         describe_backups/2,
         describe_backups/3,
         describe_data_repository_tasks/2,
         describe_data_repository_tasks/3,
         describe_file_systems/2,
         describe_file_systems/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_file_system/2,
         update_file_system/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Cancels an existing Amazon FSx for Lustre data repository task if
%% that task is in either the <code>PENDING</code> or <code>EXECUTING</code>
%% state. When you cancel a task, Amazon FSx does the following.
%%
%% <ul> <li> Any files that FSx has already exported are not reverted.
%%
%% </li> <li> FSx continues to export any files that are "in-flight" when the
%% cancel operation is received.
%%
%% </li> <li> FSx does not export any files that have not yet been exported.
%%
%% </li> </ul>
cancel_data_repository_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_data_repository_task(Client, Input, []).
cancel_data_repository_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelDataRepositoryTask">>, Input, Options).

%% @doc Creates a backup of an existing Amazon FSx file system. Creating
%% regular backups for your file system is a best practice, enabling you to
%% restore a file system from a backup if an issue arises with the original
%% file system.
%%
%% For Amazon FSx for Lustre file systems, you can create a backup only for
%% file systems with the following configuration:
%%
%% <ul> <li> a Persistent deployment type
%%
%% </li> <li> is <i>not</i> linked to an Amazon S3 data respository.
%%
%% </li> </ul> For more information about backing up Amazon FSx for Lustre
%% file systems, see <a
%% href="https://docs.aws.amazon.com/fsx/latest/LustreGuide/using-backups-fsx.html">Working
%% with FSx for Lustre backups</a>.
%%
%% For more information about backing up Amazon FSx for Lustre file systems,
%% see <a
%% href="https://docs.aws.amazon.com/fsx/latest/WindowsGuide/using-backups.html">Working
%% with FSx for Windows backups</a>.
%%
%% If a backup with the specified client request token exists, and the
%% parameters match, this operation returns the description of the existing
%% backup. If a backup specified client request token exists, and the
%% parameters don't match, this operation returns
%% <code>IncompatibleParameterError</code>. If a backup with the specified
%% client request token doesn't exist, <code>CreateBackup</code> does the
%% following:
%%
%% <ul> <li> Creates a new Amazon FSx backup with an assigned ID, and an
%% initial lifecycle state of <code>CREATING</code>.
%%
%% </li> <li> Returns the description of the backup.
%%
%% </li> </ul> By using the idempotent operation, you can retry a
%% <code>CreateBackup</code> operation without the risk of creating an extra
%% backup. This approach can be useful when an initial call fails in a way
%% that makes it unclear whether a backup was created. If you use the same
%% client request token and the initial call created a backup, the operation
%% returns a successful result because all the parameters are the same.
%%
%% The <code>CreateBackup</code> operation returns while the backup's
%% lifecycle state is still <code>CREATING</code>. You can check the backup
%% creation status by calling the <a>DescribeBackups</a> operation, which
%% returns the backup state along with other information.
create_backup(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_backup(Client, Input, []).
create_backup(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateBackup">>, Input, Options).

%% @doc Creates an Amazon FSx for Lustre data repository task. You use data
%% repository tasks to perform bulk operations between your Amazon FSx file
%% system and its linked data repository. An example of a data repository
%% task is exporting any data and metadata changes, including POSIX metadata,
%% to files, directories, and symbolic links (symlinks) from your FSx file
%% system to its linked data repository. A
%% <code>CreateDataRepositoryTask</code> operation will fail if a data
%% repository is not linked to the FSx file system. To learn more about data
%% repository tasks, see <a
%% href="https://docs.aws.amazon.com/fsx/latest/LustreGuide/data-repository-tasks.html">Using
%% Data Repository Tasks</a>. To learn more about linking a data repository
%% to your file system, see <a
%% href="https://docs.aws.amazon.com/fsx/latest/LustreGuide/export-data-repository.html#export-prefix">Setting
%% the Export Prefix</a>.
create_data_repository_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_data_repository_task(Client, Input, []).
create_data_repository_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDataRepositoryTask">>, Input, Options).

%% @doc Creates a new, empty Amazon FSx file system.
%%
%% If a file system with the specified client request token exists and the
%% parameters match, <code>CreateFileSystem</code> returns the description of
%% the existing file system. If a file system specified client request token
%% exists and the parameters don't match, this call returns
%% <code>IncompatibleParameterError</code>. If a file system with the
%% specified client request token doesn't exist,
%% <code>CreateFileSystem</code> does the following:
%%
%% <ul> <li> Creates a new, empty Amazon FSx file system with an assigned ID,
%% and an initial lifecycle state of <code>CREATING</code>.
%%
%% </li> <li> Returns the description of the file system.
%%
%% </li> </ul> This operation requires a client request token in the request
%% that Amazon FSx uses to ensure idempotent creation. This means that
%% calling the operation multiple times with the same client request token
%% has no effect. By using the idempotent operation, you can retry a
%% <code>CreateFileSystem</code> operation without the risk of creating an
%% extra file system. This approach can be useful when an initial call fails
%% in a way that makes it unclear whether a file system was created. Examples
%% are if a transport level timeout occurred, or your connection was reset.
%% If you use the same client request token and the initial call created a
%% file system, the client receives success as long as the parameters are the
%% same.
%%
%% <note> The <code>CreateFileSystem</code> call returns while the file
%% system's lifecycle state is still <code>CREATING</code>. You can check the
%% file-system creation status by calling the <a>DescribeFileSystems</a>
%% operation, which returns the file system state along with other
%% information.
%%
%% </note>
create_file_system(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_file_system(Client, Input, []).
create_file_system(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateFileSystem">>, Input, Options).

%% @doc Creates a new Amazon FSx file system from an existing Amazon FSx
%% backup.
%%
%% If a file system with the specified client request token exists and the
%% parameters match, this operation returns the description of the file
%% system. If a client request token specified by the file system exists and
%% the parameters don't match, this call returns
%% <code>IncompatibleParameterError</code>. If a file system with the
%% specified client request token doesn't exist, this operation does the
%% following:
%%
%% <ul> <li> Creates a new Amazon FSx file system from backup with an
%% assigned ID, and an initial lifecycle state of <code>CREATING</code>.
%%
%% </li> <li> Returns the description of the file system.
%%
%% </li> </ul> Parameters like Active Directory, default share name,
%% automatic backup, and backup settings default to the parameters of the
%% file system that was backed up, unless overridden. You can explicitly
%% supply other settings.
%%
%% By using the idempotent operation, you can retry a
%% <code>CreateFileSystemFromBackup</code> call without the risk of creating
%% an extra file system. This approach can be useful when an initial call
%% fails in a way that makes it unclear whether a file system was created.
%% Examples are if a transport level timeout occurred, or your connection was
%% reset. If you use the same client request token and the initial call
%% created a file system, the client receives success as long as the
%% parameters are the same.
%%
%% <note> The <code>CreateFileSystemFromBackup</code> call returns while the
%% file system's lifecycle state is still <code>CREATING</code>. You can
%% check the file-system creation status by calling the
%% <a>DescribeFileSystems</a> operation, which returns the file system state
%% along with other information.
%%
%% </note>
create_file_system_from_backup(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_file_system_from_backup(Client, Input, []).
create_file_system_from_backup(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateFileSystemFromBackup">>, Input, Options).

%% @doc Deletes an Amazon FSx backup, deleting its contents. After deletion,
%% the backup no longer exists, and its data is gone.
%%
%% The <code>DeleteBackup</code> call returns instantly. The backup will not
%% show up in later <code>DescribeBackups</code> calls.
%%
%% <important> The data in a deleted backup is also deleted and can't be
%% recovered by any means.
%%
%% </important>
delete_backup(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_backup(Client, Input, []).
delete_backup(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteBackup">>, Input, Options).

%% @doc Deletes a file system, deleting its contents. After deletion, the
%% file system no longer exists, and its data is gone. Any existing automatic
%% backups will also be deleted.
%%
%% By default, when you delete an Amazon FSx for Windows File Server file
%% system, a final backup is created upon deletion. This final backup is not
%% subject to the file system's retention policy, and must be manually
%% deleted.
%%
%% The <code>DeleteFileSystem</code> action returns while the file system has
%% the <code>DELETING</code> status. You can check the file system deletion
%% status by calling the <a>DescribeFileSystems</a> action, which returns a
%% list of file systems in your account. If you pass the file system ID for a
%% deleted file system, the <a>DescribeFileSystems</a> returns a
%% <code>FileSystemNotFound</code> error.
%%
%% <note> Deleting an Amazon FSx for Lustre file system will fail with a 400
%% BadRequest if a data repository task is in a <code>PENDING</code> or
%% <code>EXECUTING</code> state.
%%
%% </note> <important> The data in a deleted file system is also deleted and
%% can't be recovered by any means.
%%
%% </important>
delete_file_system(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_file_system(Client, Input, []).
delete_file_system(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteFileSystem">>, Input, Options).

%% @doc Returns the description of specific Amazon FSx backups, if a
%% <code>BackupIds</code> value is provided for that backup. Otherwise, it
%% returns all backups owned by your AWS account in the AWS Region of the
%% endpoint that you're calling.
%%
%% When retrieving all backups, you can optionally specify the
%% <code>MaxResults</code> parameter to limit the number of backups in a
%% response. If more backups remain, Amazon FSx returns a
%% <code>NextToken</code> value in the response. In this case, send a later
%% request with the <code>NextToken</code> request parameter set to the value
%% of <code>NextToken</code> from the last response.
%%
%% This action is used in an iterative process to retrieve a list of your
%% backups. <code>DescribeBackups</code> is called first without a
%% <code>NextToken</code>value. Then the action continues to be called with
%% the <code>NextToken</code> parameter set to the value of the last
%% <code>NextToken</code> value until a response has no
%% <code>NextToken</code>.
%%
%% When using this action, keep the following in mind:
%%
%% <ul> <li> The implementation might return fewer than
%% <code>MaxResults</code> file system descriptions while still including a
%% <code>NextToken</code> value.
%%
%% </li> <li> The order of backups returned in the response of one
%% <code>DescribeBackups</code> call and the order of backups returned across
%% the responses of a multi-call iteration is unspecified.
%%
%% </li> </ul>
describe_backups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_backups(Client, Input, []).
describe_backups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeBackups">>, Input, Options).

%% @doc Returns the description of specific Amazon FSx for Lustre data
%% repository tasks, if one or more <code>TaskIds</code> values are provided
%% in the request, or if filters are used in the request. You can use filters
%% to narrow the response to include just tasks for specific file systems, or
%% tasks in a specific lifecycle state. Otherwise, it returns all data
%% repository tasks owned by your AWS account in the AWS Region of the
%% endpoint that you're calling.
%%
%% When retrieving all tasks, you can paginate the response by using the
%% optional <code>MaxResults</code> parameter to limit the number of tasks
%% returned in a response. If more tasks remain, Amazon FSx returns a
%% <code>NextToken</code> value in the response. In this case, send a later
%% request with the <code>NextToken</code> request parameter set to the value
%% of <code>NextToken</code> from the last response.
describe_data_repository_tasks(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_data_repository_tasks(Client, Input, []).
describe_data_repository_tasks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDataRepositoryTasks">>, Input, Options).

%% @doc Returns the description of specific Amazon FSx file systems, if a
%% <code>FileSystemIds</code> value is provided for that file system.
%% Otherwise, it returns descriptions of all file systems owned by your AWS
%% account in the AWS Region of the endpoint that you're calling.
%%
%% When retrieving all file system descriptions, you can optionally specify
%% the <code>MaxResults</code> parameter to limit the number of descriptions
%% in a response. If more file system descriptions remain, Amazon FSx returns
%% a <code>NextToken</code> value in the response. In this case, send a later
%% request with the <code>NextToken</code> request parameter set to the value
%% of <code>NextToken</code> from the last response.
%%
%% This action is used in an iterative process to retrieve a list of your
%% file system descriptions. <code>DescribeFileSystems</code> is called first
%% without a <code>NextToken</code>value. Then the action continues to be
%% called with the <code>NextToken</code> parameter set to the value of the
%% last <code>NextToken</code> value until a response has no
%% <code>NextToken</code>.
%%
%% When using this action, keep the following in mind:
%%
%% <ul> <li> The implementation might return fewer than
%% <code>MaxResults</code> file system descriptions while still including a
%% <code>NextToken</code> value.
%%
%% </li> <li> The order of file systems returned in the response of one
%% <code>DescribeFileSystems</code> call and the order of file systems
%% returned across the responses of a multicall iteration is unspecified.
%%
%% </li> </ul>
describe_file_systems(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_file_systems(Client, Input, []).
describe_file_systems(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFileSystems">>, Input, Options).

%% @doc Lists tags for an Amazon FSx file systems and backups in the case of
%% Amazon FSx for Windows File Server.
%%
%% When retrieving all tags, you can optionally specify the
%% <code>MaxResults</code> parameter to limit the number of tags in a
%% response. If more tags remain, Amazon FSx returns a <code>NextToken</code>
%% value in the response. In this case, send a later request with the
%% <code>NextToken</code> request parameter set to the value of
%% <code>NextToken</code> from the last response.
%%
%% This action is used in an iterative process to retrieve a list of your
%% tags. <code>ListTagsForResource</code> is called first without a
%% <code>NextToken</code>value. Then the action continues to be called with
%% the <code>NextToken</code> parameter set to the value of the last
%% <code>NextToken</code> value until a response has no
%% <code>NextToken</code>.
%%
%% When using this action, keep the following in mind:
%%
%% <ul> <li> The implementation might return fewer than
%% <code>MaxResults</code> file system descriptions while still including a
%% <code>NextToken</code> value.
%%
%% </li> <li> The order of tags returned in the response of one
%% <code>ListTagsForResource</code> call and the order of tags returned
%% across the responses of a multi-call iteration is unspecified.
%%
%% </li> </ul>
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Tags an Amazon FSx resource.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc This action removes a tag from an Amazon FSx resource.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Use this operation to update the configuration of an existing Amazon
%% FSx file system. You can update multiple properties in a single request.
%%
%% For Amazon FSx for Windows File Server file systems, you can update the
%% following properties:
%%
%% <ul> <li> AutomaticBackupRetentionDays
%%
%% </li> <li> DailyAutomaticBackupStartTime
%%
%% </li> <li> SelfManagedActiveDirectoryConfiguration
%%
%% </li> <li> StorageCapacity
%%
%% </li> <li> ThroughputCapacity
%%
%% </li> <li> WeeklyMaintenanceStartTime
%%
%% </li> </ul> For Amazon FSx for Lustre file systems, you can update the
%% following properties:
%%
%% <ul> <li> AutoImportPolicy
%%
%% </li> <li> AutomaticBackupRetentionDays
%%
%% </li> <li> DailyAutomaticBackupStartTime
%%
%% </li> <li> WeeklyMaintenanceStartTime
%%
%% </li> </ul>
update_file_system(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_file_system(Client, Input, []).
update_file_system(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateFileSystem">>, Input, Options).

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
    Client1 = Client#{service => <<"fsx">>},
    Host = build_host(<<"fsx">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"AWSSimbaAPIService_v20180301.", Action/binary>>}
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
