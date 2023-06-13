%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon FSx is a fully managed service that makes it easy for storage
%% and application administrators to launch and use shared file storage.
-module(aws_fsx).

-export([associate_file_system_aliases/2,
         associate_file_system_aliases/3,
         cancel_data_repository_task/2,
         cancel_data_repository_task/3,
         copy_backup/2,
         copy_backup/3,
         create_backup/2,
         create_backup/3,
         create_data_repository_association/2,
         create_data_repository_association/3,
         create_data_repository_task/2,
         create_data_repository_task/3,
         create_file_cache/2,
         create_file_cache/3,
         create_file_system/2,
         create_file_system/3,
         create_file_system_from_backup/2,
         create_file_system_from_backup/3,
         create_snapshot/2,
         create_snapshot/3,
         create_storage_virtual_machine/2,
         create_storage_virtual_machine/3,
         create_volume/2,
         create_volume/3,
         create_volume_from_backup/2,
         create_volume_from_backup/3,
         delete_backup/2,
         delete_backup/3,
         delete_data_repository_association/2,
         delete_data_repository_association/3,
         delete_file_cache/2,
         delete_file_cache/3,
         delete_file_system/2,
         delete_file_system/3,
         delete_snapshot/2,
         delete_snapshot/3,
         delete_storage_virtual_machine/2,
         delete_storage_virtual_machine/3,
         delete_volume/2,
         delete_volume/3,
         describe_backups/2,
         describe_backups/3,
         describe_data_repository_associations/2,
         describe_data_repository_associations/3,
         describe_data_repository_tasks/2,
         describe_data_repository_tasks/3,
         describe_file_caches/2,
         describe_file_caches/3,
         describe_file_system_aliases/2,
         describe_file_system_aliases/3,
         describe_file_systems/2,
         describe_file_systems/3,
         describe_snapshots/2,
         describe_snapshots/3,
         describe_storage_virtual_machines/2,
         describe_storage_virtual_machines/3,
         describe_volumes/2,
         describe_volumes/3,
         disassociate_file_system_aliases/2,
         disassociate_file_system_aliases/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         release_file_system_nfs_v3_locks/2,
         release_file_system_nfs_v3_locks/3,
         restore_volume_from_snapshot/2,
         restore_volume_from_snapshot/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_data_repository_association/2,
         update_data_repository_association/3,
         update_file_cache/2,
         update_file_cache/3,
         update_file_system/2,
         update_file_system/3,
         update_snapshot/2,
         update_snapshot/3,
         update_storage_virtual_machine/2,
         update_storage_virtual_machine/3,
         update_volume/2,
         update_volume/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Use this action to associate one or more Domain Name Server (DNS)
%% aliases with an existing Amazon FSx for Windows File Server file system.
%%
%% A file system can have a maximum of 50 DNS aliases associated with it at
%% any one time. If you try to associate a DNS alias that is already
%% associated with the file system, FSx takes no action on that alias in the
%% request. For more information, see Working with DNS Aliases and
%% Walkthrough 5: Using DNS aliases to access your file system, including
%% additional steps you must take to be able to access your file system using
%% a DNS alias.
%%
%% The system response shows the DNS aliases that Amazon FSx is attempting to
%% associate with the file system. Use the API operation to monitor the
%% status of the aliases Amazon FSx is associating with the file system.
associate_file_system_aliases(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_file_system_aliases(Client, Input, []).
associate_file_system_aliases(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateFileSystemAliases">>, Input, Options).

%% @doc Cancels an existing Amazon FSx for Lustre data repository task if
%% that task is in either the `PENDING' or `EXECUTING' state.
%%
%% When you cancel a task, Amazon FSx does the following.
%%
%% <ul> <li> Any files that FSx has already exported are not reverted.
%%
%% </li> <li> FSx continues to export any files that are
%% &quot;in-flight&quot; when the cancel operation is received.
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

%% @doc Copies an existing backup within the same Amazon Web Services account
%% to another Amazon Web Services Region (cross-Region copy) or within the
%% same Amazon Web Services Region (in-Region copy).
%%
%% You can have up to five backup copy requests in progress to a single
%% destination Region per account.
%%
%% You can use cross-Region backup copies for cross-Region disaster recovery.
%% You can periodically take backups and copy them to another Region so that
%% in the event of a disaster in the primary Region, you can restore from
%% backup and recover availability quickly in the other Region. You can make
%% cross-Region copies only within your Amazon Web Services partition. A
%% partition is a grouping of Regions. Amazon Web Services currently has
%% three partitions: `aws' (Standard Regions), `aws-cn' (China
%% Regions), and `aws-us-gov' (Amazon Web Services GovCloud [US]
%% Regions).
%%
%% You can also use backup copies to clone your file dataset to another
%% Region or within the same Region.
%%
%% You can use the `SourceRegion' parameter to specify the Amazon Web
%% Services Region from which the backup will be copied. For example, if you
%% make the call from the `us-west-1' Region and want to copy a backup
%% from the `us-east-2' Region, you specify `us-east-2' in the
%% `SourceRegion' parameter to make a cross-Region copy. If you don't
%% specify a Region, the backup copy is created in the same Region where the
%% request is sent from (in-Region copy).
%%
%% For more information about creating backup copies, see Copying backups in
%% the Amazon FSx for Windows User Guide, Copying backups in the Amazon FSx
%% for Lustre User Guide, and Copying backups in the Amazon FSx for OpenZFS
%% User Guide.
copy_backup(Client, Input)
  when is_map(Client), is_map(Input) ->
    copy_backup(Client, Input, []).
copy_backup(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CopyBackup">>, Input, Options).

%% @doc Creates a backup of an existing Amazon FSx for Windows File Server
%% file system, Amazon FSx for Lustre file system, Amazon FSx for NetApp
%% ONTAP volume, or Amazon FSx for OpenZFS file system.
%%
%% We recommend creating regular backups so that you can restore a file
%% system or volume from a backup if an issue arises with the original file
%% system or volume.
%%
%% For Amazon FSx for Lustre file systems, you can create a backup only for
%% file systems that have the following configuration:
%%
%% <ul> <li> A Persistent deployment type
%%
%% </li> <li> Are not linked to a data repository
%%
%% </li> </ul> For more information about backups, see the following:
%%
%% <ul> <li> For Amazon FSx for Lustre, see Working with FSx for Lustre
%% backups.
%%
%% </li> <li> For Amazon FSx for Windows, see Working with FSx for Windows
%% backups.
%%
%% </li> <li> For Amazon FSx for NetApp ONTAP, see Working with FSx for
%% NetApp ONTAP backups.
%%
%% </li> <li> For Amazon FSx for OpenZFS, see Working with FSx for OpenZFS
%% backups.
%%
%% </li> </ul> If a backup with the specified client request token exists and
%% the parameters match, this operation returns the description of the
%% existing backup. If a backup with the specified client request token
%% exists and the parameters don't match, this operation returns
%% `IncompatibleParameterError'. If a backup with the specified client
%% request token doesn't exist, `CreateBackup' does the following:
%%
%% <ul> <li> Creates a new Amazon FSx backup with an assigned ID, and an
%% initial lifecycle state of `CREATING'.
%%
%% </li> <li> Returns the description of the backup.
%%
%% </li> </ul> By using the idempotent operation, you can retry a
%% `CreateBackup' operation without the risk of creating an extra backup.
%% This approach can be useful when an initial call fails in a way that makes
%% it unclear whether a backup was created. If you use the same client
%% request token and the initial call created a backup, the operation returns
%% a successful result because all the parameters are the same.
%%
%% The `CreateBackup' operation returns while the backup's lifecycle
%% state is still `CREATING'. You can check the backup creation status by
%% calling the DescribeBackups operation, which returns the backup state
%% along with other information.
create_backup(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_backup(Client, Input, []).
create_backup(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateBackup">>, Input, Options).

%% @doc Creates an Amazon FSx for Lustre data repository association (DRA).
%%
%% A data repository association is a link between a directory on the file
%% system and an Amazon S3 bucket or prefix. You can have a maximum of 8 data
%% repository associations on a file system. Data repository associations are
%% supported on all FSx for Lustre 2.12 and newer file systems, excluding
%% `scratch_1' deployment type.
%%
%% Each data repository association must have a unique Amazon FSx file system
%% directory and a unique S3 bucket or prefix associated with it. You can
%% configure a data repository association for automatic import only, for
%% automatic export only, or for both. To learn more about linking a data
%% repository to your file system, see Linking your file system to an S3
%% bucket.
%%
%% `CreateDataRepositoryAssociation' isn't supported on Amazon File
%% Cache resources. To create a DRA on Amazon File Cache, use the
%% `CreateFileCache' operation.
create_data_repository_association(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_data_repository_association(Client, Input, []).
create_data_repository_association(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDataRepositoryAssociation">>, Input, Options).

%% @doc Creates an Amazon FSx for Lustre data repository task.
%%
%% You use data repository tasks to perform bulk operations between your
%% Amazon FSx file system and its linked data repositories. An example of a
%% data repository task is exporting any data and metadata changes, including
%% POSIX metadata, to files, directories, and symbolic links (symlinks) from
%% your FSx file system to a linked data repository. A
%% `CreateDataRepositoryTask' operation will fail if a data repository is
%% not linked to the FSx file system. To learn more about data repository
%% tasks, see Data Repository Tasks. To learn more about linking a data
%% repository to your file system, see Linking your file system to an S3
%% bucket.
create_data_repository_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_data_repository_task(Client, Input, []).
create_data_repository_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDataRepositoryTask">>, Input, Options).

%% @doc Creates a new Amazon File Cache resource.
%%
%% You can use this operation with a client request token in the request that
%% Amazon File Cache uses to ensure idempotent creation. If a cache with the
%% specified client request token exists and the parameters match,
%% `CreateFileCache' returns the description of the existing cache. If a
%% cache with the specified client request token exists and the parameters
%% don't match, this call returns `IncompatibleParameterError'. If a
%% file cache with the specified client request token doesn't exist,
%% `CreateFileCache' does the following:
%%
%% <ul> <li> Creates a new, empty Amazon File Cache resourcewith an assigned
%% ID, and an initial lifecycle state of `CREATING'.
%%
%% </li> <li> Returns the description of the cache in JSON format.
%%
%% </li> </ul> The `CreateFileCache' call returns while the cache's
%% lifecycle state is still `CREATING'. You can check the cache creation
%% status by calling the DescribeFileCaches operation, which returns the
%% cache state along with other information.
create_file_cache(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_file_cache(Client, Input, []).
create_file_cache(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateFileCache">>, Input, Options).

%% @doc Creates a new, empty Amazon FSx file system.
%%
%% You can create the following supported Amazon FSx file systems using the
%% `CreateFileSystem' API operation:
%%
%% <ul> <li> Amazon FSx for Lustre
%%
%% </li> <li> Amazon FSx for NetApp ONTAP
%%
%% </li> <li> Amazon FSx for OpenZFS
%%
%% </li> <li> Amazon FSx for Windows File Server
%%
%% </li> </ul> This operation requires a client request token in the request
%% that Amazon FSx uses to ensure idempotent creation. This means that
%% calling the operation multiple times with the same client request token
%% has no effect. By using the idempotent operation, you can retry a
%% `CreateFileSystem' operation without the risk of creating an extra
%% file system. This approach can be useful when an initial call fails in a
%% way that makes it unclear whether a file system was created. Examples are
%% if a transport level timeout occurred, or your connection was reset. If
%% you use the same client request token and the initial call created a file
%% system, the client receives success as long as the parameters are the
%% same.
%%
%% If a file system with the specified client request token exists and the
%% parameters match, `CreateFileSystem' returns the description of the
%% existing file system. If a file system with the specified client request
%% token exists and the parameters don't match, this call returns
%% `IncompatibleParameterError'. If a file system with the specified
%% client request token doesn't exist, `CreateFileSystem' does the
%% following:
%%
%% <ul> <li> Creates a new, empty Amazon FSx file system with an assigned ID,
%% and an initial lifecycle state of `CREATING'.
%%
%% </li> <li> Returns the description of the file system in JSON format.
%%
%% </li> </ul> The `CreateFileSystem' call returns while the file
%% system's lifecycle state is still `CREATING'. You can check the
%% file-system creation status by calling the DescribeFileSystems operation,
%% which returns the file system state along with other information.
create_file_system(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_file_system(Client, Input, []).
create_file_system(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateFileSystem">>, Input, Options).

%% @doc Creates a new Amazon FSx for Lustre, Amazon FSx for Windows File
%% Server, or Amazon FSx for OpenZFS file system from an existing Amazon FSx
%% backup.
%%
%% If a file system with the specified client request token exists and the
%% parameters match, this operation returns the description of the file
%% system. If a file system with the specified client request token exists
%% but the parameters don't match, this call returns
%% `IncompatibleParameterError'. If a file system with the specified
%% client request token doesn't exist, this operation does the following:
%%
%% <ul> <li> Creates a new Amazon FSx file system from backup with an
%% assigned ID, and an initial lifecycle state of `CREATING'.
%%
%% </li> <li> Returns the description of the file system.
%%
%% </li> </ul> Parameters like the Active Directory, default share name,
%% automatic backup, and backup settings default to the parameters of the
%% file system that was backed up, unless overridden. You can explicitly
%% supply other settings.
%%
%% By using the idempotent operation, you can retry a
%% `CreateFileSystemFromBackup' call without the risk of creating an
%% extra file system. This approach can be useful when an initial call fails
%% in a way that makes it unclear whether a file system was created. Examples
%% are if a transport level timeout occurred, or your connection was reset.
%% If you use the same client request token and the initial call created a
%% file system, the client receives a success message as long as the
%% parameters are the same.
%%
%% The `CreateFileSystemFromBackup' call returns while the file
%% system's lifecycle state is still `CREATING'. You can check the
%% file-system creation status by calling the DescribeFileSystems operation,
%% which returns the file system state along with other information.
create_file_system_from_backup(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_file_system_from_backup(Client, Input, []).
create_file_system_from_backup(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateFileSystemFromBackup">>, Input, Options).

%% @doc Creates a snapshot of an existing Amazon FSx for OpenZFS volume.
%%
%% With snapshots, you can easily undo file changes and compare file versions
%% by restoring the volume to a previous version.
%%
%% If a snapshot with the specified client request token exists, and the
%% parameters match, this operation returns the description of the existing
%% snapshot. If a snapshot with the specified client request token exists,
%% and the parameters don't match, this operation returns
%% `IncompatibleParameterError'. If a snapshot with the specified client
%% request token doesn't exist, `CreateSnapshot' does the following:
%%
%% <ul> <li> Creates a new OpenZFS snapshot with an assigned ID, and an
%% initial lifecycle state of `CREATING'.
%%
%% </li> <li> Returns the description of the snapshot.
%%
%% </li> </ul> By using the idempotent operation, you can retry a
%% `CreateSnapshot' operation without the risk of creating an extra
%% snapshot. This approach can be useful when an initial call fails in a way
%% that makes it unclear whether a snapshot was created. If you use the same
%% client request token and the initial call created a snapshot, the
%% operation returns a successful result because all the parameters are the
%% same.
%%
%% The `CreateSnapshot' operation returns while the snapshot's
%% lifecycle state is still `CREATING'. You can check the snapshot
%% creation status by calling the DescribeSnapshots operation, which returns
%% the snapshot state along with other information.
create_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_snapshot(Client, Input, []).
create_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSnapshot">>, Input, Options).

%% @doc Creates a storage virtual machine (SVM) for an Amazon FSx for ONTAP
%% file system.
create_storage_virtual_machine(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_storage_virtual_machine(Client, Input, []).
create_storage_virtual_machine(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateStorageVirtualMachine">>, Input, Options).

%% @doc Creates an FSx for ONTAP or Amazon FSx for OpenZFS storage volume.
create_volume(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_volume(Client, Input, []).
create_volume(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateVolume">>, Input, Options).

%% @doc Creates a new Amazon FSx for NetApp ONTAP volume from an existing
%% Amazon FSx volume backup.
create_volume_from_backup(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_volume_from_backup(Client, Input, []).
create_volume_from_backup(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateVolumeFromBackup">>, Input, Options).

%% @doc Deletes an Amazon FSx backup.
%%
%% After deletion, the backup no longer exists, and its data is gone.
%%
%% The `DeleteBackup' call returns instantly. The backup won't show
%% up in later `DescribeBackups' calls.
%%
%% The data in a deleted backup is also deleted and can't be recovered by
%% any means.
delete_backup(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_backup(Client, Input, []).
delete_backup(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteBackup">>, Input, Options).

%% @doc Deletes a data repository association on an Amazon FSx for Lustre
%% file system.
%%
%% Deleting the data repository association unlinks the file system from the
%% Amazon S3 bucket. When deleting a data repository association, you have
%% the option of deleting the data in the file system that corresponds to the
%% data repository association. Data repository associations are supported on
%% all FSx for Lustre 2.12 and newer file systems, excluding `scratch_1'
%% deployment type.
delete_data_repository_association(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_data_repository_association(Client, Input, []).
delete_data_repository_association(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDataRepositoryAssociation">>, Input, Options).

%% @doc Deletes an Amazon File Cache resource.
%%
%% After deletion, the cache no longer exists, and its data is gone.
%%
%% The `DeleteFileCache' operation returns while the cache has the
%% `DELETING' status. You can check the cache deletion status by calling
%% the DescribeFileCaches operation, which returns a list of caches in your
%% account. If you pass the cache ID for a deleted cache, the
%% `DescribeFileCaches' operation returns a `FileCacheNotFound'
%% error.
%%
%% The data in a deleted cache is also deleted and can't be recovered by
%% any means.
delete_file_cache(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_file_cache(Client, Input, []).
delete_file_cache(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteFileCache">>, Input, Options).

%% @doc Deletes a file system.
%%
%% After deletion, the file system no longer exists, and its data is gone.
%% Any existing automatic backups and snapshots are also deleted.
%%
%% To delete an Amazon FSx for NetApp ONTAP file system, first delete all the
%% volumes and storage virtual machines (SVMs) on the file system. Then
%% provide a `FileSystemId' value to the `DeleFileSystem' operation.
%%
%% By default, when you delete an Amazon FSx for Windows File Server file
%% system, a final backup is created upon deletion. This final backup
%% isn't subject to the file system's retention policy, and must be
%% manually deleted.
%%
%% The `DeleteFileSystem' operation returns while the file system has the
%% `DELETING' status. You can check the file system deletion status by
%% calling the DescribeFileSystems operation, which returns a list of file
%% systems in your account. If you pass the file system ID for a deleted file
%% system, the `DescribeFileSystems' operation returns a
%% `FileSystemNotFound' error.
%%
%% If a data repository task is in a `PENDING' or `EXECUTING' state,
%% deleting an Amazon FSx for Lustre file system will fail with an HTTP
%% status code 400 (Bad Request).
%%
%% The data in a deleted file system is also deleted and can't be
%% recovered by any means.
delete_file_system(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_file_system(Client, Input, []).
delete_file_system(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteFileSystem">>, Input, Options).

%% @doc Deletes an Amazon FSx for OpenZFS snapshot.
%%
%% After deletion, the snapshot no longer exists, and its data is gone.
%% Deleting a snapshot doesn't affect snapshots stored in a file system
%% backup.
%%
%% The `DeleteSnapshot' operation returns instantly. The snapshot appears
%% with the lifecycle status of `DELETING' until the deletion is
%% complete.
delete_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_snapshot(Client, Input, []).
delete_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSnapshot">>, Input, Options).

%% @doc Deletes an existing Amazon FSx for ONTAP storage virtual machine
%% (SVM).
%%
%% Prior to deleting an SVM, you must delete all non-root volumes in the SVM,
%% otherwise the operation will fail.
delete_storage_virtual_machine(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_storage_virtual_machine(Client, Input, []).
delete_storage_virtual_machine(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteStorageVirtualMachine">>, Input, Options).

%% @doc Deletes an Amazon FSx for NetApp ONTAP or Amazon FSx for OpenZFS
%% volume.
delete_volume(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_volume(Client, Input, []).
delete_volume(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteVolume">>, Input, Options).

%% @doc Returns the description of a specific Amazon FSx backup, if a
%% `BackupIds' value is provided for that backup.
%%
%% Otherwise, it returns all backups owned by your Amazon Web Services
%% account in the Amazon Web Services Region of the endpoint that you're
%% calling.
%%
%% When retrieving all backups, you can optionally specify the
%% `MaxResults' parameter to limit the number of backups in a response.
%% If more backups remain, Amazon FSx returns a `NextToken' value in the
%% response. In this case, send a later request with the `NextToken'
%% request parameter set to the value of the `NextToken' value from the
%% last response.
%%
%% This operation is used in an iterative process to retrieve a list of your
%% backups. `DescribeBackups' is called first without a `NextToken'
%% value. Then the operation continues to be called with the `NextToken'
%% parameter set to the value of the last `NextToken' value until a
%% response has no `NextToken' value.
%%
%% When using this operation, keep the following in mind:
%%
%% <ul> <li> The operation might return fewer than the `MaxResults' value
%% of backup descriptions while still including a `NextToken' value.
%%
%% </li> <li> The order of the backups returned in the response of one
%% `DescribeBackups' call and the order of the backups returned across
%% the responses of a multi-call iteration is unspecified.
%%
%% </li> </ul>
describe_backups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_backups(Client, Input, []).
describe_backups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeBackups">>, Input, Options).

%% @doc Returns the description of specific Amazon FSx for Lustre or Amazon
%% File Cache data repository associations, if one or more
%% `AssociationIds' values are provided in the request, or if filters are
%% used in the request.
%%
%% Data repository associations are supported on Amazon File Cache resources
%% and all FSx for Lustre 2.12 and newer file systems, excluding
%% `scratch_1' deployment type.
%%
%% You can use filters to narrow the response to include just data repository
%% associations for specific file systems (use the `file-system-id'
%% filter with the ID of the file system) or caches (use the
%% `file-cache-id' filter with the ID of the cache), or data repository
%% associations for a specific repository type (use the
%% `data-repository-type' filter with a value of `S3' or `NFS').
%% If you don't use filters, the response returns all data repository
%% associations owned by your Amazon Web Services account in the Amazon Web
%% Services Region of the endpoint that you're calling.
%%
%% When retrieving all data repository associations, you can paginate the
%% response by using the optional `MaxResults' parameter to limit the
%% number of data repository associations returned in a response. If more
%% data repository associations remain, a `NextToken' value is returned
%% in the response. In this case, send a later request with the
%% `NextToken' request parameter set to the value of `NextToken' from
%% the last response.
describe_data_repository_associations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_data_repository_associations(Client, Input, []).
describe_data_repository_associations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDataRepositoryAssociations">>, Input, Options).

%% @doc Returns the description of specific Amazon FSx for Lustre or Amazon
%% File Cache data repository tasks, if one or more `TaskIds' values are
%% provided in the request, or if filters are used in the request.
%%
%% You can use filters to narrow the response to include just tasks for
%% specific file systems or caches, or tasks in a specific lifecycle state.
%% Otherwise, it returns all data repository tasks owned by your Amazon Web
%% Services account in the Amazon Web Services Region of the endpoint that
%% you're calling.
%%
%% When retrieving all tasks, you can paginate the response by using the
%% optional `MaxResults' parameter to limit the number of tasks returned
%% in a response. If more tasks remain, a `NextToken' value is returned
%% in the response. In this case, send a later request with the
%% `NextToken' request parameter set to the value of `NextToken' from
%% the last response.
describe_data_repository_tasks(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_data_repository_tasks(Client, Input, []).
describe_data_repository_tasks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDataRepositoryTasks">>, Input, Options).

%% @doc Returns the description of a specific Amazon File Cache resource, if
%% a `FileCacheIds' value is provided for that cache.
%%
%% Otherwise, it returns descriptions of all caches owned by your Amazon Web
%% Services account in the Amazon Web Services Region of the endpoint that
%% you're calling.
%%
%% When retrieving all cache descriptions, you can optionally specify the
%% `MaxResults' parameter to limit the number of descriptions in a
%% response. If more cache descriptions remain, the operation returns a
%% `NextToken' value in the response. In this case, send a later request
%% with the `NextToken' request parameter set to the value of
%% `NextToken' from the last response.
%%
%% This operation is used in an iterative process to retrieve a list of your
%% cache descriptions. `DescribeFileCaches' is called first without a
%% `NextToken'value. Then the operation continues to be called with the
%% `NextToken' parameter set to the value of the last `NextToken'
%% value until a response has no `NextToken'.
%%
%% When using this operation, keep the following in mind:
%%
%% <ul> <li> The implementation might return fewer than `MaxResults'
%% cache descriptions while still including a `NextToken' value.
%%
%% </li> <li> The order of caches returned in the response of one
%% `DescribeFileCaches' call and the order of caches returned across the
%% responses of a multicall iteration is unspecified.
%%
%% </li> </ul>
describe_file_caches(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_file_caches(Client, Input, []).
describe_file_caches(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFileCaches">>, Input, Options).

%% @doc Returns the DNS aliases that are associated with the specified Amazon
%% FSx for Windows File Server file system.
%%
%% A history of all DNS aliases that have been associated with and
%% disassociated from the file system is available in the list of
%% `AdministrativeAction' provided in the `DescribeFileSystems'
%% operation response.
describe_file_system_aliases(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_file_system_aliases(Client, Input, []).
describe_file_system_aliases(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFileSystemAliases">>, Input, Options).

%% @doc Returns the description of specific Amazon FSx file systems, if a
%% `FileSystemIds' value is provided for that file system.
%%
%% Otherwise, it returns descriptions of all file systems owned by your
%% Amazon Web Services account in the Amazon Web Services Region of the
%% endpoint that you're calling.
%%
%% When retrieving all file system descriptions, you can optionally specify
%% the `MaxResults' parameter to limit the number of descriptions in a
%% response. If more file system descriptions remain, Amazon FSx returns a
%% `NextToken' value in the response. In this case, send a later request
%% with the `NextToken' request parameter set to the value of
%% `NextToken' from the last response.
%%
%% This operation is used in an iterative process to retrieve a list of your
%% file system descriptions. `DescribeFileSystems' is called first
%% without a `NextToken'value. Then the operation continues to be called
%% with the `NextToken' parameter set to the value of the last
%% `NextToken' value until a response has no `NextToken'.
%%
%% When using this operation, keep the following in mind:
%%
%% <ul> <li> The implementation might return fewer than `MaxResults' file
%% system descriptions while still including a `NextToken' value.
%%
%% </li> <li> The order of file systems returned in the response of one
%% `DescribeFileSystems' call and the order of file systems returned
%% across the responses of a multicall iteration is unspecified.
%%
%% </li> </ul>
describe_file_systems(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_file_systems(Client, Input, []).
describe_file_systems(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFileSystems">>, Input, Options).

%% @doc Returns the description of specific Amazon FSx for OpenZFS snapshots,
%% if a `SnapshotIds' value is provided.
%%
%% Otherwise, this operation returns all snapshots owned by your Amazon Web
%% Services account in the Amazon Web Services Region of the endpoint that
%% you're calling.
%%
%% When retrieving all snapshots, you can optionally specify the
%% `MaxResults' parameter to limit the number of snapshots in a response.
%% If more backups remain, Amazon FSx returns a `NextToken' value in the
%% response. In this case, send a later request with the `NextToken'
%% request parameter set to the value of `NextToken' from the last
%% response.
%%
%% Use this operation in an iterative process to retrieve a list of your
%% snapshots. `DescribeSnapshots' is called first without a
%% `NextToken' value. Then the operation continues to be called with the
%% `NextToken' parameter set to the value of the last `NextToken'
%% value until a response has no `NextToken' value.
%%
%% When using this operation, keep the following in mind:
%%
%% <ul> <li> The operation might return fewer than the `MaxResults' value
%% of snapshot descriptions while still including a `NextToken' value.
%%
%% </li> <li> The order of snapshots returned in the response of one
%% `DescribeSnapshots' call and the order of backups returned across the
%% responses of a multi-call iteration is unspecified.
%%
%% </li> </ul>
describe_snapshots(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_snapshots(Client, Input, []).
describe_snapshots(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSnapshots">>, Input, Options).

%% @doc Describes one or more Amazon FSx for NetApp ONTAP storage virtual
%% machines (SVMs).
describe_storage_virtual_machines(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_storage_virtual_machines(Client, Input, []).
describe_storage_virtual_machines(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeStorageVirtualMachines">>, Input, Options).

%% @doc Describes one or more Amazon FSx for NetApp ONTAP or Amazon FSx for
%% OpenZFS volumes.
describe_volumes(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_volumes(Client, Input, []).
describe_volumes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeVolumes">>, Input, Options).

%% @doc Use this action to disassociate, or remove, one or more Domain Name
%% Service (DNS) aliases from an Amazon FSx for Windows File Server file
%% system.
%%
%% If you attempt to disassociate a DNS alias that is not associated with the
%% file system, Amazon FSx responds with a 400 Bad Request. For more
%% information, see Working with DNS Aliases.
%%
%% The system generated response showing the DNS aliases that Amazon FSx is
%% attempting to disassociate from the file system. Use the API operation to
%% monitor the status of the aliases Amazon FSx is disassociating with the
%% file system.
disassociate_file_system_aliases(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_file_system_aliases(Client, Input, []).
disassociate_file_system_aliases(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateFileSystemAliases">>, Input, Options).

%% @doc Lists tags for Amazon FSx resources.
%%
%% When retrieving all tags, you can optionally specify the `MaxResults'
%% parameter to limit the number of tags in a response. If more tags remain,
%% Amazon FSx returns a `NextToken' value in the response. In this case,
%% send a later request with the `NextToken' request parameter set to the
%% value of `NextToken' from the last response.
%%
%% This action is used in an iterative process to retrieve a list of your
%% tags. `ListTagsForResource' is called first without a
%% `NextToken'value. Then the action continues to be called with the
%% `NextToken' parameter set to the value of the last `NextToken'
%% value until a response has no `NextToken'.
%%
%% When using this action, keep the following in mind:
%%
%% <ul> <li> The implementation might return fewer than `MaxResults' file
%% system descriptions while still including a `NextToken' value.
%%
%% </li> <li> The order of tags returned in the response of one
%% `ListTagsForResource' call and the order of tags returned across the
%% responses of a multi-call iteration is unspecified.
%%
%% </li> </ul>
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Releases the file system lock from an Amazon FSx for OpenZFS file
%% system.
release_file_system_nfs_v3_locks(Client, Input)
  when is_map(Client), is_map(Input) ->
    release_file_system_nfs_v3_locks(Client, Input, []).
release_file_system_nfs_v3_locks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ReleaseFileSystemNfsV3Locks">>, Input, Options).

%% @doc Returns an Amazon FSx for OpenZFS volume to the state saved by the
%% specified snapshot.
restore_volume_from_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    restore_volume_from_snapshot(Client, Input, []).
restore_volume_from_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RestoreVolumeFromSnapshot">>, Input, Options).

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

%% @doc Updates the configuration of an existing data repository association
%% on an Amazon FSx for Lustre file system.
%%
%% Data repository associations are supported on all FSx for Lustre 2.12 and
%% newer file systems, excluding `scratch_1' deployment type.
update_data_repository_association(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_data_repository_association(Client, Input, []).
update_data_repository_association(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDataRepositoryAssociation">>, Input, Options).

%% @doc Updates the configuration of an existing Amazon File Cache resource.
%%
%% You can update multiple properties in a single request.
update_file_cache(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_file_cache(Client, Input, []).
update_file_cache(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateFileCache">>, Input, Options).

%% @doc Use this operation to update the configuration of an existing Amazon
%% FSx file system.
%%
%% You can update multiple properties in a single request.
%%
%% For FSx for Windows File Server file systems, you can update the following
%% properties:
%%
%% <ul> <li> `AuditLogConfiguration'
%%
%% </li> <li> `AutomaticBackupRetentionDays'
%%
%% </li> <li> `DailyAutomaticBackupStartTime'
%%
%% </li> <li> `SelfManagedActiveDirectoryConfiguration'
%%
%% </li> <li> `StorageCapacity'
%%
%% </li> <li> `ThroughputCapacity'
%%
%% </li> <li> `WeeklyMaintenanceStartTime'
%%
%% </li> </ul> For FSx for Lustre file systems, you can update the following
%% properties:
%%
%% <ul> <li> `AutoImportPolicy'
%%
%% </li> <li> `AutomaticBackupRetentionDays'
%%
%% </li> <li> `DailyAutomaticBackupStartTime'
%%
%% </li> <li> `DataCompressionType'
%%
%% </li> <li> `LustreRootSquashConfiguration'
%%
%% </li> <li> `StorageCapacity'
%%
%% </li> <li> `WeeklyMaintenanceStartTime'
%%
%% </li> </ul> For FSx for ONTAP file systems, you can update the following
%% properties:
%%
%% <ul> <li> `AddRouteTableIds'
%%
%% </li> <li> `AutomaticBackupRetentionDays'
%%
%% </li> <li> `DailyAutomaticBackupStartTime'
%%
%% </li> <li> `DiskIopsConfiguration'
%%
%% </li> <li> `FsxAdminPassword'
%%
%% </li> <li> `RemoveRouteTableIds'
%%
%% </li> <li> `StorageCapacity'
%%
%% </li> <li> `ThroughputCapacity'
%%
%% </li> <li> `WeeklyMaintenanceStartTime'
%%
%% </li> </ul> For FSx for OpenZFS file systems, you can update the following
%% properties:
%%
%% <ul> <li> `AutomaticBackupRetentionDays'
%%
%% </li> <li> `CopyTagsToBackups'
%%
%% </li> <li> `CopyTagsToVolumes'
%%
%% </li> <li> `DailyAutomaticBackupStartTime'
%%
%% </li> <li> `DiskIopsConfiguration'
%%
%% </li> <li> `StorageCapacity'
%%
%% </li> <li> `ThroughputCapacity'
%%
%% </li> <li> `WeeklyMaintenanceStartTime'
%%
%% </li> </ul>
update_file_system(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_file_system(Client, Input, []).
update_file_system(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateFileSystem">>, Input, Options).

%% @doc Updates the name of an Amazon FSx for OpenZFS snapshot.
update_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_snapshot(Client, Input, []).
update_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateSnapshot">>, Input, Options).

%% @doc Updates an FSx for ONTAP storage virtual machine (SVM).
update_storage_virtual_machine(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_storage_virtual_machine(Client, Input, []).
update_storage_virtual_machine(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateStorageVirtualMachine">>, Input, Options).

%% @doc Updates the configuration of an Amazon FSx for NetApp ONTAP or Amazon
%% FSx for OpenZFS volume.
update_volume(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_volume(Client, Input, []).
update_volume(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateVolume">>, Input, Options).

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
