%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Elastic File System
%%
%% Amazon Elastic File System (Amazon EFS) provides simple, scalable file
%% storage for use with Amazon EC2 Linux and Mac instances in the Amazon Web
%% Services Cloud.
%%
%% With Amazon EFS, storage capacity is elastic, growing and shrinking
%% automatically as you add and remove files, so that your applications have
%% the storage they need, when they need it. For more information, see the
%% Amazon Elastic File System API Reference and the Amazon Elastic File
%% System User Guide.
-module(aws_efs).

-export([create_access_point/2,
         create_access_point/3,
         create_file_system/2,
         create_file_system/3,
         create_mount_target/2,
         create_mount_target/3,
         create_replication_configuration/3,
         create_replication_configuration/4,
         create_tags/3,
         create_tags/4,
         delete_access_point/3,
         delete_access_point/4,
         delete_file_system/3,
         delete_file_system/4,
         delete_file_system_policy/3,
         delete_file_system_policy/4,
         delete_mount_target/3,
         delete_mount_target/4,
         delete_replication_configuration/3,
         delete_replication_configuration/4,
         delete_tags/3,
         delete_tags/4,
         describe_access_points/1,
         describe_access_points/3,
         describe_access_points/4,
         describe_account_preferences/1,
         describe_account_preferences/3,
         describe_account_preferences/4,
         describe_backup_policy/2,
         describe_backup_policy/4,
         describe_backup_policy/5,
         describe_file_system_policy/2,
         describe_file_system_policy/4,
         describe_file_system_policy/5,
         describe_file_systems/1,
         describe_file_systems/3,
         describe_file_systems/4,
         describe_lifecycle_configuration/2,
         describe_lifecycle_configuration/4,
         describe_lifecycle_configuration/5,
         describe_mount_target_security_groups/2,
         describe_mount_target_security_groups/4,
         describe_mount_target_security_groups/5,
         describe_mount_targets/1,
         describe_mount_targets/3,
         describe_mount_targets/4,
         describe_replication_configurations/1,
         describe_replication_configurations/3,
         describe_replication_configurations/4,
         describe_tags/2,
         describe_tags/4,
         describe_tags/5,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         modify_mount_target_security_groups/3,
         modify_mount_target_security_groups/4,
         put_account_preferences/2,
         put_account_preferences/3,
         put_backup_policy/3,
         put_backup_policy/4,
         put_file_system_policy/3,
         put_file_system_policy/4,
         put_lifecycle_configuration/3,
         put_lifecycle_configuration/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_file_system/3,
         update_file_system/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates an EFS access point.
%%
%% An access point is an application-specific view into an EFS file system
%% that applies an operating system user and group, and a file system path,
%% to any file system request made through the access point. The operating
%% system user and group override any identity information provided by the
%% NFS client. The file system path is exposed as the access point's root
%% directory. Applications using the access point can only access data in the
%% application's own directory and any subdirectories. To learn more, see
%% Mounting a file system using EFS access points.
%%
%% If multiple requests to create access points on the same file system are
%% sent in quick succession, and the file system is near the limit of 1,000
%% access points, you may experience a throttling response for these
%% requests. This is to ensure that the file system does not exceed the
%% stated access point limit.
%%
%% This operation requires permissions for the
%% `elasticfilesystem:CreateAccessPoint' action.
%%
%% Access points can be tagged on creation. If tags are specified in the
%% creation action, IAM performs additional authorization on the
%% `elasticfilesystem:TagResource' action to verify if users have
%% permissions to create tags. Therefore, you must grant explicit permissions
%% to use the `elasticfilesystem:TagResource' action. For more
%% information, see Granting permissions to tag resources during creation.
create_access_point(Client, Input) ->
    create_access_point(Client, Input, []).
create_access_point(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2015-02-01/access-points"],
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

%% @doc Creates a new, empty file system.
%%
%% The operation requires a creation token in the request that Amazon EFS
%% uses to ensure idempotent creation (calling the operation with same
%% creation token has no effect). If a file system does not currently exist
%% that is owned by the caller's Amazon Web Services account with the
%% specified creation token, this operation does the following:
%%
%% <ul> <li> Creates a new, empty file system. The file system will have an
%% Amazon EFS assigned ID, and an initial lifecycle state `creating'.
%%
%% </li> <li> Returns with the description of the created file system.
%%
%% </li> </ul> Otherwise, this operation returns a
%% `FileSystemAlreadyExists' error with the ID of the existing file
%% system.
%%
%% For basic use cases, you can use a randomly generated UUID for the
%% creation token.
%%
%% The idempotent operation allows you to retry a `CreateFileSystem' call
%% without risk of creating an extra file system. This can happen when an
%% initial call fails in a way that leaves it uncertain whether or not a file
%% system was actually created. An example might be that a transport level
%% timeout occurred or your connection was reset. As long as you use the same
%% creation token, if the initial call had succeeded in creating a file
%% system, the client can learn of its existence from the
%% `FileSystemAlreadyExists' error.
%%
%% For more information, see Creating a file system in the Amazon EFS User
%% Guide.
%%
%% The `CreateFileSystem' call returns while the file system's
%% lifecycle state is still `creating'. You can check the file system
%% creation status by calling the `DescribeFileSystems' operation, which
%% among other things returns the file system state.
%%
%% This operation accepts an optional `PerformanceMode' parameter that
%% you choose for your file system. We recommend `generalPurpose'
%% performance mode for most file systems. File systems using the `maxIO'
%% performance mode can scale to higher levels of aggregate throughput and
%% operations per second with a tradeoff of slightly higher latencies for
%% most file operations. The performance mode can't be changed after the
%% file system has been created. For more information, see Amazon EFS
%% performance modes.
%%
%% You can set the throughput mode for the file system using the
%% `ThroughputMode' parameter.
%%
%% After the file system is fully created, Amazon EFS sets its lifecycle
%% state to `available', at which point you can create one or more mount
%% targets for the file system in your VPC. For more information, see
%% `CreateMountTarget'. You mount your Amazon EFS file system on an EC2
%% instances in your VPC by using the mount target. For more information, see
%% Amazon EFS: How it Works.
%%
%% This operation requires permissions for the
%% `elasticfilesystem:CreateFileSystem' action.
%%
%% File systems can be tagged on creation. If tags are specified in the
%% creation action, IAM performs additional authorization on the
%% `elasticfilesystem:TagResource' action to verify if users have
%% permissions to create tags. Therefore, you must grant explicit permissions
%% to use the `elasticfilesystem:TagResource' action. For more
%% information, see Granting permissions to tag resources during creation.
create_file_system(Client, Input) ->
    create_file_system(Client, Input, []).
create_file_system(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2015-02-01/file-systems"],
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

%% @doc Creates a mount target for a file system.
%%
%% You can then mount the file system on EC2 instances by using the mount
%% target.
%%
%% You can create one mount target in each Availability Zone in your VPC. All
%% EC2 instances in a VPC within a given Availability Zone share a single
%% mount target for a given file system. If you have multiple subnets in an
%% Availability Zone, you create a mount target in one of the subnets. EC2
%% instances do not need to be in the same subnet as the mount target in
%% order to access their file system.
%%
%% You can create only one mount target for an EFS file system using One Zone
%% storage classes. You must create that mount target in the same
%% Availability Zone in which the file system is located. Use the
%% `AvailabilityZoneName' and `AvailabiltyZoneId' properties in the
%% `DescribeFileSystems' response object to get this information. Use the
%% `subnetId' associated with the file system's Availability Zone
%% when creating the mount target.
%%
%% For more information, see Amazon EFS: How it Works.
%%
%% To create a mount target for a file system, the file system's
%% lifecycle state must be `available'. For more information, see
%% `DescribeFileSystems'.
%%
%% In the request, provide the following:
%%
%% <ul> <li> The file system ID for which you are creating the mount target.
%%
%% </li> <li> A subnet ID, which determines the following:
%%
%% <ul> <li> The VPC in which Amazon EFS creates the mount target
%%
%% </li> <li> The Availability Zone in which Amazon EFS creates the mount
%% target
%%
%% </li> <li> The IP address range from which Amazon EFS selects the IP
%% address of the mount target (if you don't specify an IP address in the
%% request)
%%
%% </li> </ul> </li> </ul> After creating the mount target, Amazon EFS
%% returns a response that includes, a `MountTargetId' and an
%% `IpAddress'. You use this IP address when mounting the file system in
%% an EC2 instance. You can also use the mount target's DNS name when
%% mounting the file system. The EC2 instance on which you mount the file
%% system by using the mount target can resolve the mount target's DNS
%% name to its IP address. For more information, see How it Works:
%% Implementation Overview.
%%
%% Note that you can create mount targets for a file system in only one VPC,
%% and there can be only one mount target per Availability Zone. That is, if
%% the file system already has one or more mount targets created for it, the
%% subnet specified in the request to add another mount target must meet the
%% following requirements:
%%
%% <ul> <li> Must belong to the same VPC as the subnets of the existing mount
%% targets
%%
%% </li> <li> Must not be in the same Availability Zone as any of the subnets
%% of the existing mount targets
%%
%% </li> </ul> If the request satisfies the requirements, Amazon EFS does the
%% following:
%%
%% <ul> <li> Creates a new mount target in the specified subnet.
%%
%% </li> <li> Also creates a new network interface in the subnet as follows:
%%
%% <ul> <li> If the request provides an `IpAddress', Amazon EFS assigns
%% that IP address to the network interface. Otherwise, Amazon EFS assigns a
%% free address in the subnet (in the same way that the Amazon EC2
%% `CreateNetworkInterface' call does when a request does not specify a
%% primary private IP address).
%%
%% </li> <li> If the request provides `SecurityGroups', this network
%% interface is associated with those security groups. Otherwise, it belongs
%% to the default security group for the subnet's VPC.
%%
%% </li> <li> Assigns the description `Mount target fsmt-id for file system
%% fs-id ' where ` fsmt-id ' is the mount target ID, and ` fs-id
%% ' is the `FileSystemId'.
%%
%% </li> <li> Sets the `requesterManaged' property of the network
%% interface to `true', and the `requesterId' value to `EFS'.
%%
%% </li> </ul> Each Amazon EFS mount target has one corresponding
%% requester-managed EC2 network interface. After the network interface is
%% created, Amazon EFS sets the `NetworkInterfaceId' field in the mount
%% target's description to the network interface ID, and the
%% `IpAddress' field to its address. If network interface creation fails,
%% the entire `CreateMountTarget' operation fails.
%%
%% </li> </ul> The `CreateMountTarget' call returns only after creating
%% the network interface, but while the mount target state is still
%% `creating', you can check the mount target creation status by calling
%% the `DescribeMountTargets' operation, which among other things returns
%% the mount target state.
%%
%% We recommend that you create a mount target in each of the Availability
%% Zones. There are cost considerations for using a file system in an
%% Availability Zone through a mount target created in another Availability
%% Zone. For more information, see Amazon EFS. In addition, by always using a
%% mount target local to the instance's Availability Zone, you eliminate
%% a partial failure scenario. If the Availability Zone in which your mount
%% target is created goes down, then you can't access your file system
%% through that mount target.
%%
%% This operation requires permissions for the following action on the file
%% system:
%%
%% <ul> <li> `elasticfilesystem:CreateMountTarget'
%%
%% </li> </ul> This operation also requires permissions for the following
%% Amazon EC2 actions:
%%
%% <ul> <li> `ec2:DescribeSubnets'
%%
%% </li> <li> `ec2:DescribeNetworkInterfaces'
%%
%% </li> <li> `ec2:CreateNetworkInterface'
%%
%% </li> </ul>
create_mount_target(Client, Input) ->
    create_mount_target(Client, Input, []).
create_mount_target(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2015-02-01/mount-targets"],
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

%% @doc Creates a replication configuration that replicates an existing EFS
%% file system to a new, read-only file system.
%%
%% For more information, see Amazon EFS replication in the Amazon EFS User
%% Guide. The replication configuration specifies the following:
%%
%% <ul> <li> Source file system - An existing EFS file system that you want
%% replicated. The source file system cannot be a destination file system in
%% an existing replication configuration.
%%
%% </li> <li> Destination file system configuration - The configuration of
%% the destination file system to which the source file system will be
%% replicated. There can only be one destination file system in a replication
%% configuration. The destination file system configuration consists of the
%% following properties:
%%
%% <ul> <li> Amazon Web Services Region - The Amazon Web Services Region in
%% which the destination file system is created. Amazon EFS replication is
%% available in all Amazon Web Services Regions in which EFS is available. To
%% use EFS replication in a Region that is disabled by default, you must
%% first opt in to the Region. For more information, see Managing Amazon Web
%% Services Regions in the Amazon Web Services General Reference Reference
%% Guide
%%
%% </li> <li> Availability Zone - If you want the destination file system to
%% use EFS One Zone availability and durability, you must specify the
%% Availability Zone to create the file system in. For more information about
%% EFS storage classes, see Amazon EFS storage classes in the Amazon EFS User
%% Guide.
%%
%% </li> <li> Encryption - All destination file systems are created with
%% encryption at rest enabled. You can specify the Key Management Service
%% (KMS) key that is used to encrypt the destination file system. If you
%% don't specify a KMS key, your service-managed KMS key for Amazon EFS
%% is used.
%%
%% After the file system is created, you cannot change the KMS key.
%%
%% </li> </ul> </li> </ul> The following properties are set by default:
%%
%% <ul> <li> Performance mode - The destination file system's performance
%% mode matches that of the source file system, unless the destination file
%% system uses EFS One Zone storage. In that case, the General Purpose
%% performance mode is used. The performance mode cannot be changed.
%%
%% </li> <li> Throughput mode - The destination file system's throughput
%% mode matches that of the source file system. After the file system is
%% created, you can modify the throughput mode.
%%
%% </li> </ul> The following properties are turned off by default:
%%
%% <ul> <li> Lifecycle management - EFS lifecycle management and EFS
%% Intelligent-Tiering are not enabled on the destination file system. After
%% the destination file system is created, you can enable EFS lifecycle
%% management and EFS Intelligent-Tiering.
%%
%% </li> <li> Automatic backups - Automatic daily backups are enabled on the
%% destination file system. After the file system is created, you can change
%% this setting.
%%
%% </li> </ul> For more information, see Amazon EFS replication in the Amazon
%% EFS User Guide.
create_replication_configuration(Client, SourceFileSystemId, Input) ->
    create_replication_configuration(Client, SourceFileSystemId, Input, []).
create_replication_configuration(Client, SourceFileSystemId, Input0, Options0) ->
    Method = post,
    Path = ["/2015-02-01/file-systems/", aws_util:encode_uri(SourceFileSystemId), "/replication-configuration"],
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

%% @doc DEPRECATED - `CreateTags' is deprecated and not maintained.
%%
%% To create tags for EFS resources, use the API action.
%%
%% Creates or overwrites tags associated with a file system. Each tag is a
%% key-value pair. If a tag key specified in the request already exists on
%% the file system, this operation overwrites its value with the value
%% provided in the request. If you add the `Name' tag to your file
%% system, Amazon EFS returns it in the response to the
%% `DescribeFileSystems' operation.
%%
%% This operation requires permission for the
%% `elasticfilesystem:CreateTags' action.
create_tags(Client, FileSystemId, Input) ->
    create_tags(Client, FileSystemId, Input, []).
create_tags(Client, FileSystemId, Input0, Options0) ->
    Method = post,
    Path = ["/2015-02-01/create-tags/", aws_util:encode_uri(FileSystemId), ""],
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

%% @doc Deletes the specified access point.
%%
%% After deletion is complete, new clients can no longer connect to the
%% access points. Clients connected to the access point at the time of
%% deletion will continue to function until they terminate their connection.
%%
%% This operation requires permissions for the
%% `elasticfilesystem:DeleteAccessPoint' action.
delete_access_point(Client, AccessPointId, Input) ->
    delete_access_point(Client, AccessPointId, Input, []).
delete_access_point(Client, AccessPointId, Input0, Options0) ->
    Method = delete,
    Path = ["/2015-02-01/access-points/", aws_util:encode_uri(AccessPointId), ""],
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

%% @doc Deletes a file system, permanently severing access to its contents.
%%
%% Upon return, the file system no longer exists and you can't access any
%% contents of the deleted file system.
%%
%% You need to manually delete mount targets attached to a file system before
%% you can delete an EFS file system. This step is performed for you when you
%% use the Amazon Web Services console to delete a file system.
%%
%% You cannot delete a file system that is part of an EFS Replication
%% configuration. You need to delete the replication configuration first.
%%
%% You can't delete a file system that is in use. That is, if the file
%% system has any mount targets, you must first delete them. For more
%% information, see `DescribeMountTargets' and `DeleteMountTarget'.
%%
%% The `DeleteFileSystem' call returns while the file system state is
%% still `deleting'. You can check the file system deletion status by
%% calling the `DescribeFileSystems' operation, which returns a list of
%% file systems in your account. If you pass file system ID or creation token
%% for the deleted file system, the `DescribeFileSystems' returns a `404
%% FileSystemNotFound' error.
%%
%% This operation requires permissions for the
%% `elasticfilesystem:DeleteFileSystem' action.
delete_file_system(Client, FileSystemId, Input) ->
    delete_file_system(Client, FileSystemId, Input, []).
delete_file_system(Client, FileSystemId, Input0, Options0) ->
    Method = delete,
    Path = ["/2015-02-01/file-systems/", aws_util:encode_uri(FileSystemId), ""],
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

%% @doc Deletes the `FileSystemPolicy' for the specified file system.
%%
%% The default `FileSystemPolicy' goes into effect once the existing
%% policy is deleted. For more information about the default file system
%% policy, see Using Resource-based Policies with EFS.
%%
%% This operation requires permissions for the
%% `elasticfilesystem:DeleteFileSystemPolicy' action.
delete_file_system_policy(Client, FileSystemId, Input) ->
    delete_file_system_policy(Client, FileSystemId, Input, []).
delete_file_system_policy(Client, FileSystemId, Input0, Options0) ->
    Method = delete,
    Path = ["/2015-02-01/file-systems/", aws_util:encode_uri(FileSystemId), "/policy"],
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

%% @doc Deletes the specified mount target.
%%
%% This operation forcibly breaks any mounts of the file system by using the
%% mount target that is being deleted, which might disrupt instances or
%% applications using those mounts. To avoid applications getting cut off
%% abruptly, you might consider unmounting any mounts of the mount target, if
%% feasible. The operation also deletes the associated network interface.
%% Uncommitted writes might be lost, but breaking a mount target using this
%% operation does not corrupt the file system itself. The file system you
%% created remains. You can mount an EC2 instance in your VPC by using
%% another mount target.
%%
%% This operation requires permissions for the following action on the file
%% system:
%%
%% <ul> <li> `elasticfilesystem:DeleteMountTarget'
%%
%% </li> </ul> The `DeleteMountTarget' call returns while the mount
%% target state is still `deleting'. You can check the mount target
%% deletion by calling the `DescribeMountTargets' operation, which
%% returns a list of mount target descriptions for the given file system.
%%
%% The operation also requires permissions for the following Amazon EC2
%% action on the mount target's network interface:
%%
%% <ul> <li> `ec2:DeleteNetworkInterface'
%%
%% </li> </ul>
delete_mount_target(Client, MountTargetId, Input) ->
    delete_mount_target(Client, MountTargetId, Input, []).
delete_mount_target(Client, MountTargetId, Input0, Options0) ->
    Method = delete,
    Path = ["/2015-02-01/mount-targets/", aws_util:encode_uri(MountTargetId), ""],
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

%% @doc Deletes an existing replication configuration.
%%
%% Deleting a replication configuration ends the replication process. After a
%% replication configuration is deleted, the destination file system is no
%% longer read-only. You can write to the destination file system after its
%% status becomes `Writeable'.
delete_replication_configuration(Client, SourceFileSystemId, Input) ->
    delete_replication_configuration(Client, SourceFileSystemId, Input, []).
delete_replication_configuration(Client, SourceFileSystemId, Input0, Options0) ->
    Method = delete,
    Path = ["/2015-02-01/file-systems/", aws_util:encode_uri(SourceFileSystemId), "/replication-configuration"],
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

%% @doc DEPRECATED - `DeleteTags' is deprecated and not maintained.
%%
%% To remove tags from EFS resources, use the API action.
%%
%% Deletes the specified tags from a file system. If the `DeleteTags'
%% request includes a tag key that doesn't exist, Amazon EFS ignores it
%% and doesn't cause an error. For more information about tags and
%% related restrictions, see Tag restrictions in the Billing and Cost
%% Management User Guide.
%%
%% This operation requires permissions for the
%% `elasticfilesystem:DeleteTags' action.
delete_tags(Client, FileSystemId, Input) ->
    delete_tags(Client, FileSystemId, Input, []).
delete_tags(Client, FileSystemId, Input0, Options0) ->
    Method = post,
    Path = ["/2015-02-01/delete-tags/", aws_util:encode_uri(FileSystemId), ""],
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

%% @doc Returns the description of a specific Amazon EFS access point if the
%% `AccessPointId' is provided.
%%
%% If you provide an EFS `FileSystemId', it returns descriptions of all
%% access points for that file system. You can provide either an
%% `AccessPointId' or a `FileSystemId' in the request, but not both.
%%
%% This operation requires permissions for the
%% `elasticfilesystem:DescribeAccessPoints' action.
describe_access_points(Client)
  when is_map(Client) ->
    describe_access_points(Client, #{}, #{}).

describe_access_points(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_access_points(Client, QueryMap, HeadersMap, []).

describe_access_points(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2015-02-01/access-points"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"AccessPointId">>, maps:get(<<"AccessPointId">>, QueryMap, undefined)},
        {<<"FileSystemId">>, maps:get(<<"FileSystemId">>, QueryMap, undefined)},
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the account preferences settings for the Amazon Web Services
%% account associated with the user making the request, in the current Amazon
%% Web Services Region.
describe_account_preferences(Client)
  when is_map(Client) ->
    describe_account_preferences(Client, #{}, #{}).

describe_account_preferences(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_account_preferences(Client, QueryMap, HeadersMap, []).

describe_account_preferences(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2015-02-01/account-preferences"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the backup policy for the specified EFS file system.
describe_backup_policy(Client, FileSystemId)
  when is_map(Client) ->
    describe_backup_policy(Client, FileSystemId, #{}, #{}).

describe_backup_policy(Client, FileSystemId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_backup_policy(Client, FileSystemId, QueryMap, HeadersMap, []).

describe_backup_policy(Client, FileSystemId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2015-02-01/file-systems/", aws_util:encode_uri(FileSystemId), "/backup-policy"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the `FileSystemPolicy' for the specified EFS file system.
%%
%% This operation requires permissions for the
%% `elasticfilesystem:DescribeFileSystemPolicy' action.
describe_file_system_policy(Client, FileSystemId)
  when is_map(Client) ->
    describe_file_system_policy(Client, FileSystemId, #{}, #{}).

describe_file_system_policy(Client, FileSystemId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_file_system_policy(Client, FileSystemId, QueryMap, HeadersMap, []).

describe_file_system_policy(Client, FileSystemId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2015-02-01/file-systems/", aws_util:encode_uri(FileSystemId), "/policy"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the description of a specific Amazon EFS file system if
%% either the file system `CreationToken' or the `FileSystemId' is
%% provided.
%%
%% Otherwise, it returns descriptions of all file systems owned by the
%% caller's Amazon Web Services account in the Amazon Web Services Region
%% of the endpoint that you're calling.
%%
%% When retrieving all file system descriptions, you can optionally specify
%% the `MaxItems' parameter to limit the number of descriptions in a
%% response. This number is automatically set to 100. If more file system
%% descriptions remain, Amazon EFS returns a `NextMarker', an opaque
%% token, in the response. In this case, you should send a subsequent request
%% with the `Marker' request parameter set to the value of
%% `NextMarker'.
%%
%% To retrieve a list of your file system descriptions, this operation is
%% used in an iterative process, where `DescribeFileSystems' is called
%% first without the `Marker' and then the operation continues to call it
%% with the `Marker' parameter set to the value of the `NextMarker'
%% from the previous response until the response has no `NextMarker'.
%%
%% The order of file systems returned in the response of one
%% `DescribeFileSystems' call and the order of file systems returned
%% across the responses of a multi-call iteration is unspecified.
%%
%% This operation requires permissions for the
%% `elasticfilesystem:DescribeFileSystems' action.
describe_file_systems(Client)
  when is_map(Client) ->
    describe_file_systems(Client, #{}, #{}).

describe_file_systems(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_file_systems(Client, QueryMap, HeadersMap, []).

describe_file_systems(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2015-02-01/file-systems"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"CreationToken">>, maps:get(<<"CreationToken">>, QueryMap, undefined)},
        {<<"FileSystemId">>, maps:get(<<"FileSystemId">>, QueryMap, undefined)},
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the current `LifecycleConfiguration' object for the
%% specified Amazon EFS file system.
%%
%% EFS lifecycle management uses the `LifecycleConfiguration' object to
%% identify which files to move to the EFS Infrequent Access (IA) storage
%% class. For a file system without a `LifecycleConfiguration' object,
%% the call returns an empty array in the response.
%%
%% When EFS Intelligent-Tiering is enabled,
%% `TransitionToPrimaryStorageClass' has a value of `AFTER_1_ACCESS'.
%%
%% This operation requires permissions for the
%% `elasticfilesystem:DescribeLifecycleConfiguration' operation.
describe_lifecycle_configuration(Client, FileSystemId)
  when is_map(Client) ->
    describe_lifecycle_configuration(Client, FileSystemId, #{}, #{}).

describe_lifecycle_configuration(Client, FileSystemId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_lifecycle_configuration(Client, FileSystemId, QueryMap, HeadersMap, []).

describe_lifecycle_configuration(Client, FileSystemId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2015-02-01/file-systems/", aws_util:encode_uri(FileSystemId), "/lifecycle-configuration"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the security groups currently in effect for a mount target.
%%
%% This operation requires that the network interface of the mount target has
%% been created and the lifecycle state of the mount target is not
%% `deleted'.
%%
%% This operation requires permissions for the following actions:
%%
%% <ul> <li> `elasticfilesystem:DescribeMountTargetSecurityGroups' action
%% on the mount target's file system.
%%
%% </li> <li> `ec2:DescribeNetworkInterfaceAttribute' action on the mount
%% target's network interface.
%%
%% </li> </ul>
describe_mount_target_security_groups(Client, MountTargetId)
  when is_map(Client) ->
    describe_mount_target_security_groups(Client, MountTargetId, #{}, #{}).

describe_mount_target_security_groups(Client, MountTargetId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_mount_target_security_groups(Client, MountTargetId, QueryMap, HeadersMap, []).

describe_mount_target_security_groups(Client, MountTargetId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2015-02-01/mount-targets/", aws_util:encode_uri(MountTargetId), "/security-groups"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the descriptions of all the current mount targets, or a
%% specific mount target, for a file system.
%%
%% When requesting all of the current mount targets, the order of mount
%% targets returned in the response is unspecified.
%%
%% This operation requires permissions for the
%% `elasticfilesystem:DescribeMountTargets' action, on either the file
%% system ID that you specify in `FileSystemId', or on the file system of
%% the mount target that you specify in `MountTargetId'.
describe_mount_targets(Client)
  when is_map(Client) ->
    describe_mount_targets(Client, #{}, #{}).

describe_mount_targets(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_mount_targets(Client, QueryMap, HeadersMap, []).

describe_mount_targets(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2015-02-01/mount-targets"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"AccessPointId">>, maps:get(<<"AccessPointId">>, QueryMap, undefined)},
        {<<"FileSystemId">>, maps:get(<<"FileSystemId">>, QueryMap, undefined)},
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)},
        {<<"MountTargetId">>, maps:get(<<"MountTargetId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the replication configuration for a specific file system.
%%
%% If a file system is not specified, all of the replication configurations
%% for the Amazon Web Services account in an Amazon Web Services Region are
%% retrieved.
describe_replication_configurations(Client)
  when is_map(Client) ->
    describe_replication_configurations(Client, #{}, #{}).

describe_replication_configurations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_replication_configurations(Client, QueryMap, HeadersMap, []).

describe_replication_configurations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2015-02-01/file-systems/replication-configurations"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"FileSystemId">>, maps:get(<<"FileSystemId">>, QueryMap, undefined)},
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc DEPRECATED - The `DescribeTags' action is deprecated and not
%% maintained.
%%
%% To view tags associated with EFS resources, use the
%% `ListTagsForResource' API action.
%%
%% Returns the tags associated with a file system. The order of tags returned
%% in the response of one `DescribeTags' call and the order of tags
%% returned across the responses of a multiple-call iteration (when using
%% pagination) is unspecified.
%%
%% This operation requires permissions for the
%% `elasticfilesystem:DescribeTags' action.
describe_tags(Client, FileSystemId)
  when is_map(Client) ->
    describe_tags(Client, FileSystemId, #{}, #{}).

describe_tags(Client, FileSystemId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_tags(Client, FileSystemId, QueryMap, HeadersMap, []).

describe_tags(Client, FileSystemId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2015-02-01/tags/", aws_util:encode_uri(FileSystemId), "/"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, maps:get(<<"Marker">>, QueryMap, undefined)},
        {<<"MaxItems">>, maps:get(<<"MaxItems">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all tags for a top-level EFS resource.
%%
%% You must provide the ID of the resource that you want to retrieve the tags
%% for.
%%
%% This operation requires permissions for the
%% `elasticfilesystem:DescribeAccessPoints' action.
list_tags_for_resource(Client, ResourceId)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceId, #{}, #{}).

list_tags_for_resource(Client, ResourceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceId, QueryMap, HeadersMap, []).

list_tags_for_resource(Client, ResourceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2015-02-01/resource-tags/", aws_util:encode_uri(ResourceId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Modifies the set of security groups in effect for a mount target.
%%
%% When you create a mount target, Amazon EFS also creates a new network
%% interface. For more information, see `CreateMountTarget'. This
%% operation replaces the security groups in effect for the network interface
%% associated with a mount target, with the `SecurityGroups' provided in
%% the request. This operation requires that the network interface of the
%% mount target has been created and the lifecycle state of the mount target
%% is not `deleted'.
%%
%% The operation requires permissions for the following actions:
%%
%% <ul> <li> `elasticfilesystem:ModifyMountTargetSecurityGroups' action
%% on the mount target's file system.
%%
%% </li> <li> `ec2:ModifyNetworkInterfaceAttribute' action on the mount
%% target's network interface.
%%
%% </li> </ul>
modify_mount_target_security_groups(Client, MountTargetId, Input) ->
    modify_mount_target_security_groups(Client, MountTargetId, Input, []).
modify_mount_target_security_groups(Client, MountTargetId, Input0, Options0) ->
    Method = put,
    Path = ["/2015-02-01/mount-targets/", aws_util:encode_uri(MountTargetId), "/security-groups"],
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

%% @doc Use this operation to set the account preference in the current
%% Amazon Web Services Region to use long 17 character (63 bit) or short 8
%% character (32 bit) resource IDs for new EFS file system and mount target
%% resources.
%%
%% All existing resource IDs are not affected by any changes you make. You
%% can set the ID preference during the opt-in period as EFS transitions to
%% long resource IDs. For more information, see Managing Amazon EFS resource
%% IDs.
%%
%% Starting in October, 2021, you will receive an error if you try to set the
%% account preference to use the short 8 character format resource ID.
%% Contact Amazon Web Services support if you receive an error and must use
%% short IDs for file system and mount target resources.
put_account_preferences(Client, Input) ->
    put_account_preferences(Client, Input, []).
put_account_preferences(Client, Input0, Options0) ->
    Method = put,
    Path = ["/2015-02-01/account-preferences"],
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

%% @doc Updates the file system's backup policy.
%%
%% Use this action to start or stop automatic backups of the file system.
put_backup_policy(Client, FileSystemId, Input) ->
    put_backup_policy(Client, FileSystemId, Input, []).
put_backup_policy(Client, FileSystemId, Input0, Options0) ->
    Method = put,
    Path = ["/2015-02-01/file-systems/", aws_util:encode_uri(FileSystemId), "/backup-policy"],
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

%% @doc Applies an Amazon EFS `FileSystemPolicy' to an Amazon EFS file
%% system.
%%
%% A file system policy is an IAM resource-based policy and can contain
%% multiple policy statements. A file system always has exactly one file
%% system policy, which can be the default policy or an explicit policy set
%% or updated using this API operation. EFS file system policies have a
%% 20,000 character limit. When an explicit policy is set, it overrides the
%% default policy. For more information about the default file system policy,
%% see Default EFS File System Policy.
%%
%% EFS file system policies have a 20,000 character limit.
%%
%% This operation requires permissions for the
%% `elasticfilesystem:PutFileSystemPolicy' action.
put_file_system_policy(Client, FileSystemId, Input) ->
    put_file_system_policy(Client, FileSystemId, Input, []).
put_file_system_policy(Client, FileSystemId, Input0, Options0) ->
    Method = put,
    Path = ["/2015-02-01/file-systems/", aws_util:encode_uri(FileSystemId), "/policy"],
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

%% @doc Use this action to manage EFS lifecycle management and EFS
%% Intelligent-Tiering.
%%
%% A `LifecycleConfiguration' consists of one or more
%% `LifecyclePolicy' objects that define the following:
%%
%% <ul> <li> EFS Lifecycle management - When Amazon EFS automatically
%% transitions files in a file system into the lower-cost EFS Infrequent
%% Access (IA) storage class.
%%
%% To enable EFS Lifecycle management, set the value of `TransitionToIA'
%% to one of the available options.
%%
%% </li> <li> EFS Intelligent-Tiering - When Amazon EFS automatically
%% transitions files from IA back into the file system's primary storage
%% class (EFS Standard or EFS One Zone Standard).
%%
%% To enable EFS Intelligent-Tiering, set the value of
%% `TransitionToPrimaryStorageClass' to `AFTER_1_ACCESS'.
%%
%% </li> </ul> For more information, see EFS Lifecycle Management.
%%
%% Each Amazon EFS file system supports one lifecycle configuration, which
%% applies to all files in the file system. If a `LifecycleConfiguration'
%% object already exists for the specified file system, a
%% `PutLifecycleConfiguration' call modifies the existing configuration.
%% A `PutLifecycleConfiguration' call with an empty
%% `LifecyclePolicies' array in the request body deletes any existing
%% `LifecycleConfiguration' and turns off lifecycle management and EFS
%% Intelligent-Tiering for the file system.
%%
%% In the request, specify the following:
%%
%% <ul> <li> The ID for the file system for which you are enabling,
%% disabling, or modifying lifecycle management and EFS Intelligent-Tiering.
%%
%% </li> <li> A `LifecyclePolicies' array of `LifecyclePolicy'
%% objects that define when files are moved into IA storage, and when they
%% are moved back to Standard storage.
%%
%% Amazon EFS requires that each `LifecyclePolicy' object have only have
%% a single transition, so the `LifecyclePolicies' array needs to be
%% structured with separate `LifecyclePolicy' objects. See the example
%% requests in the following section for more information.
%%
%% </li> </ul> This operation requires permissions for the
%% `elasticfilesystem:PutLifecycleConfiguration' operation.
%%
%% To apply a `LifecycleConfiguration' object to an encrypted file
%% system, you need the same Key Management Service permissions as when you
%% created the encrypted file system.
put_lifecycle_configuration(Client, FileSystemId, Input) ->
    put_lifecycle_configuration(Client, FileSystemId, Input, []).
put_lifecycle_configuration(Client, FileSystemId, Input0, Options0) ->
    Method = put,
    Path = ["/2015-02-01/file-systems/", aws_util:encode_uri(FileSystemId), "/lifecycle-configuration"],
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

%% @doc Creates a tag for an EFS resource.
%%
%% You can create tags for EFS file systems and access points using this API
%% operation.
%%
%% This operation requires permissions for the
%% `elasticfilesystem:TagResource' action.
tag_resource(Client, ResourceId, Input) ->
    tag_resource(Client, ResourceId, Input, []).
tag_resource(Client, ResourceId, Input0, Options0) ->
    Method = post,
    Path = ["/2015-02-01/resource-tags/", aws_util:encode_uri(ResourceId), ""],
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

%% @doc Removes tags from an EFS resource.
%%
%% You can remove tags from EFS file systems and access points using this API
%% operation.
%%
%% This operation requires permissions for the
%% `elasticfilesystem:UntagResource' action.
untag_resource(Client, ResourceId, Input) ->
    untag_resource(Client, ResourceId, Input, []).
untag_resource(Client, ResourceId, Input0, Options0) ->
    Method = delete,
    Path = ["/2015-02-01/resource-tags/", aws_util:encode_uri(ResourceId), ""],
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
                     {<<"tagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the throughput mode or the amount of provisioned throughput
%% of an existing file system.
update_file_system(Client, FileSystemId, Input) ->
    update_file_system(Client, FileSystemId, Input, []).
update_file_system(Client, FileSystemId, Input0, Options0) ->
    Method = put,
    Path = ["/2015-02-01/file-systems/", aws_util:encode_uri(FileSystemId), ""],
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
    Client1 = Client#{service => <<"elasticfilesystem">>},
    Host = build_host(<<"elasticfilesystem">>, Client1),
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
    AdditionalHeaders = case proplists:get_value(append_sha256_content_hash, Options, false) of
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
handle_response({ok, StatusCode, _ResponseHeaders, _Client}, _, _DecodeBody)
  when StatusCode =:= 503 ->
  %% Retriable error if retries are enabled
  {error, service_unavailable};
handle_response({ok, StatusCode, ResponseHeaders, Client}, _, _DecodeBody) ->
    {ok, Body} = hackney:body(Client),
    try
      DecodedError = jsx:decode(Body),
      {error, DecodedError, {StatusCode, ResponseHeaders, Client}}
    catch
      Error:Reason:Stack ->
        erlang:raise(error, {body_decode_failed, Error, Reason, StatusCode, Body}, Stack)
    end;
handle_response({error, Reason}, _, _DecodeBody) ->
  {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Path0, Client) ->
    Proto = aws_client:proto(Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = aws_client:port(Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  jsx:encode(Input).
