%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc <fullname>Amazon Elastic File System</fullname>
%%
%% Amazon Elastic File System (Amazon EFS) provides simple, scalable file
%% storage for use with Amazon EC2 instances in the AWS Cloud. With Amazon
%% EFS, storage capacity is elastic, growing and shrinking automatically as
%% you add and remove files, so your applications have the storage they need,
%% when they need it. For more information, see the <a
%% href="https://docs.aws.amazon.com/efs/latest/ug/api-reference.html">User
%% Guide</a>.
-module(aws_efs).

-export([create_access_point/2,
         create_access_point/3,
         create_file_system/2,
         create_file_system/3,
         create_mount_target/2,
         create_mount_target/3,
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
         delete_tags/3,
         delete_tags/4,
         describe_access_points/5,
         describe_access_points/6,
         describe_backup_policy/2,
         describe_backup_policy/3,
         describe_file_system_policy/2,
         describe_file_system_policy/3,
         describe_file_systems/5,
         describe_file_systems/6,
         describe_lifecycle_configuration/2,
         describe_lifecycle_configuration/3,
         describe_mount_target_security_groups/2,
         describe_mount_target_security_groups/3,
         describe_mount_targets/6,
         describe_mount_targets/7,
         describe_tags/4,
         describe_tags/5,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         modify_mount_target_security_groups/3,
         modify_mount_target_security_groups/4,
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

%% @doc Creates an EFS access point. An access point is an
%% application-specific view into an EFS file system that applies an
%% operating system user and group, and a file system path, to any file
%% system request made through the access point. The operating system user
%% and group override any identity information provided by the NFS client.
%% The file system path is exposed as the access point's root directory.
%% Applications using the access point can only access data in its own
%% directory and below. To learn more, see <a
%% href="https://docs.aws.amazon.com/efs/latest/ug/efs-access-points.html">Mounting
%% a File System Using EFS Access Points</a>.
%%
%% This operation requires permissions for the
%% <code>elasticfilesystem:CreateAccessPoint</code> action.
create_access_point(Client, Input) ->
    create_access_point(Client, Input, []).
create_access_point(Client, Input0, Options) ->
    Method = post,
    Path = ["/2015-02-01/access-points"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new, empty file system. The operation requires a creation
%% token in the request that Amazon EFS uses to ensure idempotent creation
%% (calling the operation with same creation token has no effect). If a file
%% system does not currently exist that is owned by the caller's AWS account
%% with the specified creation token, this operation does the following:
%%
%% <ul> <li> Creates a new, empty file system. The file system will have an
%% Amazon EFS assigned ID, and an initial lifecycle state
%% <code>creating</code>.
%%
%% </li> <li> Returns with the description of the created file system.
%%
%% </li> </ul> Otherwise, this operation returns a
%% <code>FileSystemAlreadyExists</code> error with the ID of the existing
%% file system.
%%
%% <note> For basic use cases, you can use a randomly generated UUID for the
%% creation token.
%%
%% </note> The idempotent operation allows you to retry a
%% <code>CreateFileSystem</code> call without risk of creating an extra file
%% system. This can happen when an initial call fails in a way that leaves it
%% uncertain whether or not a file system was actually created. An example
%% might be that a transport level timeout occurred or your connection was
%% reset. As long as you use the same creation token, if the initial call had
%% succeeded in creating a file system, the client can learn of its existence
%% from the <code>FileSystemAlreadyExists</code> error.
%%
%% <note> The <code>CreateFileSystem</code> call returns while the file
%% system's lifecycle state is still <code>creating</code>. You can check the
%% file system creation status by calling the <a>DescribeFileSystems</a>
%% operation, which among other things returns the file system state.
%%
%% </note> This operation also takes an optional <code>PerformanceMode</code>
%% parameter that you choose for your file system. We recommend
%% <code>generalPurpose</code> performance mode for most file systems. File
%% systems using the <code>maxIO</code> performance mode can scale to higher
%% levels of aggregate throughput and operations per second with a tradeoff
%% of slightly higher latencies for most file operations. The performance
%% mode can't be changed after the file system has been created. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/efs/latest/ug/performance.html#performancemodes.html">Amazon
%% EFS: Performance Modes</a>.
%%
%% After the file system is fully created, Amazon EFS sets its lifecycle
%% state to <code>available</code>, at which point you can create one or more
%% mount targets for the file system in your VPC. For more information, see
%% <a>CreateMountTarget</a>. You mount your Amazon EFS file system on an EC2
%% instances in your VPC by using the mount target. For more information, see
%% <a
%% href="https://docs.aws.amazon.com/efs/latest/ug/how-it-works.html">Amazon
%% EFS: How it Works</a>.
%%
%% This operation requires permissions for the
%% <code>elasticfilesystem:CreateFileSystem</code> action.
create_file_system(Client, Input) ->
    create_file_system(Client, Input, []).
create_file_system(Client, Input0, Options) ->
    Method = post,
    Path = ["/2015-02-01/file-systems"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a mount target for a file system. You can then mount the file
%% system on EC2 instances by using the mount target.
%%
%% You can create one mount target in each Availability Zone in your VPC. All
%% EC2 instances in a VPC within a given Availability Zone share a single
%% mount target for a given file system. If you have multiple subnets in an
%% Availability Zone, you create a mount target in one of the subnets. EC2
%% instances do not need to be in the same subnet as the mount target in
%% order to access their file system. For more information, see <a
%% href="https://docs.aws.amazon.com/efs/latest/ug/how-it-works.html">Amazon
%% EFS: How it Works</a>.
%%
%% In the request, you also specify a file system ID for which you are
%% creating the mount target and the file system's lifecycle state must be
%% <code>available</code>. For more information, see
%% <a>DescribeFileSystems</a>.
%%
%% In the request, you also provide a subnet ID, which determines the
%% following:
%%
%% <ul> <li> VPC in which Amazon EFS creates the mount target
%%
%% </li> <li> Availability Zone in which Amazon EFS creates the mount target
%%
%% </li> <li> IP address range from which Amazon EFS selects the IP address
%% of the mount target (if you don't specify an IP address in the request)
%%
%% </li> </ul> After creating the mount target, Amazon EFS returns a response
%% that includes, a <code>MountTargetId</code> and an <code>IpAddress</code>.
%% You use this IP address when mounting the file system in an EC2 instance.
%% You can also use the mount target's DNS name when mounting the file
%% system. The EC2 instance on which you mount the file system by using the
%% mount target can resolve the mount target's DNS name to its IP address.
%% For more information, see <a
%% href="https://docs.aws.amazon.com/efs/latest/ug/how-it-works.html#how-it-works-implementation">How
%% it Works: Implementation Overview</a>.
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
%% <ul> <li> If the request provides an <code>IpAddress</code>, Amazon EFS
%% assigns that IP address to the network interface. Otherwise, Amazon EFS
%% assigns a free address in the subnet (in the same way that the Amazon EC2
%% <code>CreateNetworkInterface</code> call does when a request does not
%% specify a primary private IP address).
%%
%% </li> <li> If the request provides <code>SecurityGroups</code>, this
%% network interface is associated with those security groups. Otherwise, it
%% belongs to the default security group for the subnet's VPC.
%%
%% </li> <li> Assigns the description <code>Mount target <i>fsmt-id</i> for
%% file system <i>fs-id</i> </code> where <code> <i>fsmt-id</i> </code> is
%% the mount target ID, and <code> <i>fs-id</i> </code> is the
%% <code>FileSystemId</code>.
%%
%% </li> <li> Sets the <code>requesterManaged</code> property of the network
%% interface to <code>true</code>, and the <code>requesterId</code> value to
%% <code>EFS</code>.
%%
%% </li> </ul> Each Amazon EFS mount target has one corresponding
%% requester-managed EC2 network interface. After the network interface is
%% created, Amazon EFS sets the <code>NetworkInterfaceId</code> field in the
%% mount target's description to the network interface ID, and the
%% <code>IpAddress</code> field to its address. If network interface creation
%% fails, the entire <code>CreateMountTarget</code> operation fails.
%%
%% </li> </ul> <note> The <code>CreateMountTarget</code> call returns only
%% after creating the network interface, but while the mount target state is
%% still <code>creating</code>, you can check the mount target creation
%% status by calling the <a>DescribeMountTargets</a> operation, which among
%% other things returns the mount target state.
%%
%% </note> We recommend that you create a mount target in each of the
%% Availability Zones. There are cost considerations for using a file system
%% in an Availability Zone through a mount target created in another
%% Availability Zone. For more information, see <a
%% href="http://aws.amazon.com/efs/">Amazon EFS</a>. In addition, by always
%% using a mount target local to the instance's Availability Zone, you
%% eliminate a partial failure scenario. If the Availability Zone in which
%% your mount target is created goes down, then you can't access your file
%% system through that mount target.
%%
%% This operation requires permissions for the following action on the file
%% system:
%%
%% <ul> <li> <code>elasticfilesystem:CreateMountTarget</code>
%%
%% </li> </ul> This operation also requires permissions for the following
%% Amazon EC2 actions:
%%
%% <ul> <li> <code>ec2:DescribeSubnets</code>
%%
%% </li> <li> <code>ec2:DescribeNetworkInterfaces</code>
%%
%% </li> <li> <code>ec2:CreateNetworkInterface</code>
%%
%% </li> </ul>
create_mount_target(Client, Input) ->
    create_mount_target(Client, Input, []).
create_mount_target(Client, Input0, Options) ->
    Method = post,
    Path = ["/2015-02-01/mount-targets"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates or overwrites tags associated with a file system. Each tag is
%% a key-value pair. If a tag key specified in the request already exists on
%% the file system, this operation overwrites its value with the value
%% provided in the request. If you add the <code>Name</code> tag to your file
%% system, Amazon EFS returns it in the response to the
%% <a>DescribeFileSystems</a> operation.
%%
%% This operation requires permission for the
%% <code>elasticfilesystem:CreateTags</code> action.
create_tags(Client, FileSystemId, Input) ->
    create_tags(Client, FileSystemId, Input, []).
create_tags(Client, FileSystemId, Input0, Options) ->
    Method = post,
    Path = ["/2015-02-01/create-tags/", http_uri:encode(FileSystemId), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified access point. After deletion is complete, new
%% clients can no longer connect to the access points. Clients connected to
%% the access point at the time of deletion will continue to function until
%% they terminate their connection.
%%
%% This operation requires permissions for the
%% <code>elasticfilesystem:DeleteAccessPoint</code> action.
delete_access_point(Client, AccessPointId, Input) ->
    delete_access_point(Client, AccessPointId, Input, []).
delete_access_point(Client, AccessPointId, Input0, Options) ->
    Method = delete,
    Path = ["/2015-02-01/access-points/", http_uri:encode(AccessPointId), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a file system, permanently severing access to its contents.
%% Upon return, the file system no longer exists and you can't access any
%% contents of the deleted file system.
%%
%% You can't delete a file system that is in use. That is, if the file system
%% has any mount targets, you must first delete them. For more information,
%% see <a>DescribeMountTargets</a> and <a>DeleteMountTarget</a>.
%%
%% <note> The <code>DeleteFileSystem</code> call returns while the file
%% system state is still <code>deleting</code>. You can check the file system
%% deletion status by calling the <a>DescribeFileSystems</a> operation, which
%% returns a list of file systems in your account. If you pass file system ID
%% or creation token for the deleted file system, the
%% <a>DescribeFileSystems</a> returns a <code>404 FileSystemNotFound</code>
%% error.
%%
%% </note> This operation requires permissions for the
%% <code>elasticfilesystem:DeleteFileSystem</code> action.
delete_file_system(Client, FileSystemId, Input) ->
    delete_file_system(Client, FileSystemId, Input, []).
delete_file_system(Client, FileSystemId, Input0, Options) ->
    Method = delete,
    Path = ["/2015-02-01/file-systems/", http_uri:encode(FileSystemId), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the <code>FileSystemPolicy</code> for the specified file
%% system. The default <code>FileSystemPolicy</code> goes into effect once
%% the existing policy is deleted. For more information about the default
%% file system policy, see <a
%% href="https://docs.aws.amazon.com/efs/latest/ug/res-based-policies-efs.html">Using
%% Resource-based Policies with EFS</a>.
%%
%% This operation requires permissions for the
%% <code>elasticfilesystem:DeleteFileSystemPolicy</code> action.
delete_file_system_policy(Client, FileSystemId, Input) ->
    delete_file_system_policy(Client, FileSystemId, Input, []).
delete_file_system_policy(Client, FileSystemId, Input0, Options) ->
    Method = delete,
    Path = ["/2015-02-01/file-systems/", http_uri:encode(FileSystemId), "/policy"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

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
%% <ul> <li> <code>elasticfilesystem:DeleteMountTarget</code>
%%
%% </li> </ul> <note> The <code>DeleteMountTarget</code> call returns while
%% the mount target state is still <code>deleting</code>. You can check the
%% mount target deletion by calling the <a>DescribeMountTargets</a>
%% operation, which returns a list of mount target descriptions for the given
%% file system.
%%
%% </note> The operation also requires permissions for the following Amazon
%% EC2 action on the mount target's network interface:
%%
%% <ul> <li> <code>ec2:DeleteNetworkInterface</code>
%%
%% </li> </ul>
delete_mount_target(Client, MountTargetId, Input) ->
    delete_mount_target(Client, MountTargetId, Input, []).
delete_mount_target(Client, MountTargetId, Input0, Options) ->
    Method = delete,
    Path = ["/2015-02-01/mount-targets/", http_uri:encode(MountTargetId), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified tags from a file system. If the
%% <code>DeleteTags</code> request includes a tag key that doesn't exist,
%% Amazon EFS ignores it and doesn't cause an error. For more information
%% about tags and related restrictions, see <a
%% href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html">Tag
%% Restrictions</a> in the <i>AWS Billing and Cost Management User Guide</i>.
%%
%% This operation requires permissions for the
%% <code>elasticfilesystem:DeleteTags</code> action.
delete_tags(Client, FileSystemId, Input) ->
    delete_tags(Client, FileSystemId, Input, []).
delete_tags(Client, FileSystemId, Input0, Options) ->
    Method = post,
    Path = ["/2015-02-01/delete-tags/", http_uri:encode(FileSystemId), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Returns the description of a specific Amazon EFS access point if the
%% <code>AccessPointId</code> is provided. If you provide an EFS
%% <code>FileSystemId</code>, it returns descriptions of all access points
%% for that file system. You can provide either an <code>AccessPointId</code>
%% or a <code>FileSystemId</code> in the request, but not both.
%%
%% This operation requires permissions for the
%% <code>elasticfilesystem:DescribeAccessPoints</code> action.
describe_access_points(Client, AccessPointId, FileSystemId, MaxResults, NextToken)
  when is_map(Client) ->
    describe_access_points(Client, AccessPointId, FileSystemId, MaxResults, NextToken, []).
describe_access_points(Client, AccessPointId, FileSystemId, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2015-02-01/access-points"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"AccessPointId">>, AccessPointId},
        {<<"FileSystemId">>, FileSystemId},
        {<<"MaxResults">>, MaxResults},
        {<<"NextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the backup policy for the specified EFS file system.
describe_backup_policy(Client, FileSystemId)
  when is_map(Client) ->
    describe_backup_policy(Client, FileSystemId, []).
describe_backup_policy(Client, FileSystemId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2015-02-01/file-systems/", http_uri:encode(FileSystemId), "/backup-policy"],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the <code>FileSystemPolicy</code> for the specified EFS file
%% system.
%%
%% This operation requires permissions for the
%% <code>elasticfilesystem:DescribeFileSystemPolicy</code> action.
describe_file_system_policy(Client, FileSystemId)
  when is_map(Client) ->
    describe_file_system_policy(Client, FileSystemId, []).
describe_file_system_policy(Client, FileSystemId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2015-02-01/file-systems/", http_uri:encode(FileSystemId), "/policy"],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the description of a specific Amazon EFS file system if
%% either the file system <code>CreationToken</code> or the
%% <code>FileSystemId</code> is provided. Otherwise, it returns descriptions
%% of all file systems owned by the caller's AWS account in the AWS Region of
%% the endpoint that you're calling.
%%
%% When retrieving all file system descriptions, you can optionally specify
%% the <code>MaxItems</code> parameter to limit the number of descriptions in
%% a response. Currently, this number is automatically set to 10. If more
%% file system descriptions remain, Amazon EFS returns a
%% <code>NextMarker</code>, an opaque token, in the response. In this case,
%% you should send a subsequent request with the <code>Marker</code> request
%% parameter set to the value of <code>NextMarker</code>.
%%
%% To retrieve a list of your file system descriptions, this operation is
%% used in an iterative process, where <code>DescribeFileSystems</code> is
%% called first without the <code>Marker</code> and then the operation
%% continues to call it with the <code>Marker</code> parameter set to the
%% value of the <code>NextMarker</code> from the previous response until the
%% response has no <code>NextMarker</code>.
%%
%% The order of file systems returned in the response of one
%% <code>DescribeFileSystems</code> call and the order of file systems
%% returned across the responses of a multi-call iteration is unspecified.
%%
%% This operation requires permissions for the
%% <code>elasticfilesystem:DescribeFileSystems</code> action.
describe_file_systems(Client, CreationToken, FileSystemId, Marker, MaxItems)
  when is_map(Client) ->
    describe_file_systems(Client, CreationToken, FileSystemId, Marker, MaxItems, []).
describe_file_systems(Client, CreationToken, FileSystemId, Marker, MaxItems, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2015-02-01/file-systems"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"CreationToken">>, CreationToken},
        {<<"FileSystemId">>, FileSystemId},
        {<<"Marker">>, Marker},
        {<<"MaxItems">>, MaxItems}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the current <code>LifecycleConfiguration</code> object for
%% the specified Amazon EFS file system. EFS lifecycle management uses the
%% <code>LifecycleConfiguration</code> object to identify which files to move
%% to the EFS Infrequent Access (IA) storage class. For a file system without
%% a <code>LifecycleConfiguration</code> object, the call returns an empty
%% array in the response.
%%
%% This operation requires permissions for the
%% <code>elasticfilesystem:DescribeLifecycleConfiguration</code> operation.
describe_lifecycle_configuration(Client, FileSystemId)
  when is_map(Client) ->
    describe_lifecycle_configuration(Client, FileSystemId, []).
describe_lifecycle_configuration(Client, FileSystemId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2015-02-01/file-systems/", http_uri:encode(FileSystemId), "/lifecycle-configuration"],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the security groups currently in effect for a mount target.
%% This operation requires that the network interface of the mount target has
%% been created and the lifecycle state of the mount target is not
%% <code>deleted</code>.
%%
%% This operation requires permissions for the following actions:
%%
%% <ul> <li> <code>elasticfilesystem:DescribeMountTargetSecurityGroups</code>
%% action on the mount target's file system.
%%
%% </li> <li> <code>ec2:DescribeNetworkInterfaceAttribute</code> action on
%% the mount target's network interface.
%%
%% </li> </ul>
describe_mount_target_security_groups(Client, MountTargetId)
  when is_map(Client) ->
    describe_mount_target_security_groups(Client, MountTargetId, []).
describe_mount_target_security_groups(Client, MountTargetId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2015-02-01/mount-targets/", http_uri:encode(MountTargetId), "/security-groups"],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the descriptions of all the current mount targets, or a
%% specific mount target, for a file system. When requesting all of the
%% current mount targets, the order of mount targets returned in the response
%% is unspecified.
%%
%% This operation requires permissions for the
%% <code>elasticfilesystem:DescribeMountTargets</code> action, on either the
%% file system ID that you specify in <code>FileSystemId</code>, or on the
%% file system of the mount target that you specify in
%% <code>MountTargetId</code>.
describe_mount_targets(Client, AccessPointId, FileSystemId, Marker, MaxItems, MountTargetId)
  when is_map(Client) ->
    describe_mount_targets(Client, AccessPointId, FileSystemId, Marker, MaxItems, MountTargetId, []).
describe_mount_targets(Client, AccessPointId, FileSystemId, Marker, MaxItems, MountTargetId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2015-02-01/mount-targets"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"AccessPointId">>, AccessPointId},
        {<<"FileSystemId">>, FileSystemId},
        {<<"Marker">>, Marker},
        {<<"MaxItems">>, MaxItems},
        {<<"MountTargetId">>, MountTargetId}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the tags associated with a file system. The order of tags
%% returned in the response of one <code>DescribeTags</code> call and the
%% order of tags returned across the responses of a multiple-call iteration
%% (when using pagination) is unspecified.
%%
%% This operation requires permissions for the
%% <code>elasticfilesystem:DescribeTags</code> action.
describe_tags(Client, FileSystemId, Marker, MaxItems)
  when is_map(Client) ->
    describe_tags(Client, FileSystemId, Marker, MaxItems, []).
describe_tags(Client, FileSystemId, Marker, MaxItems, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2015-02-01/tags/", http_uri:encode(FileSystemId), "/"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"Marker">>, Marker},
        {<<"MaxItems">>, MaxItems}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all tags for a top-level EFS resource. You must provide the ID
%% of the resource that you want to retrieve the tags for.
%%
%% This operation requires permissions for the
%% <code>elasticfilesystem:DescribeAccessPoints</code> action.
list_tags_for_resource(Client, ResourceId, MaxResults, NextToken)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceId, MaxResults, NextToken, []).
list_tags_for_resource(Client, ResourceId, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2015-02-01/resource-tags/", http_uri:encode(ResourceId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, MaxResults},
        {<<"NextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Modifies the set of security groups in effect for a mount target.
%%
%% When you create a mount target, Amazon EFS also creates a new network
%% interface. For more information, see <a>CreateMountTarget</a>. This
%% operation replaces the security groups in effect for the network interface
%% associated with a mount target, with the <code>SecurityGroups</code>
%% provided in the request. This operation requires that the network
%% interface of the mount target has been created and the lifecycle state of
%% the mount target is not <code>deleted</code>.
%%
%% The operation requires permissions for the following actions:
%%
%% <ul> <li> <code>elasticfilesystem:ModifyMountTargetSecurityGroups</code>
%% action on the mount target's file system.
%%
%% </li> <li> <code>ec2:ModifyNetworkInterfaceAttribute</code> action on the
%% mount target's network interface.
%%
%% </li> </ul>
modify_mount_target_security_groups(Client, MountTargetId, Input) ->
    modify_mount_target_security_groups(Client, MountTargetId, Input, []).
modify_mount_target_security_groups(Client, MountTargetId, Input0, Options) ->
    Method = put,
    Path = ["/2015-02-01/mount-targets/", http_uri:encode(MountTargetId), "/security-groups"],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the file system's backup policy. Use this action to start or
%% stop automatic backups of the file system.
put_backup_policy(Client, FileSystemId, Input) ->
    put_backup_policy(Client, FileSystemId, Input, []).
put_backup_policy(Client, FileSystemId, Input0, Options) ->
    Method = put,
    Path = ["/2015-02-01/file-systems/", http_uri:encode(FileSystemId), "/backup-policy"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Applies an Amazon EFS <code>FileSystemPolicy</code> to an Amazon EFS
%% file system. A file system policy is an IAM resource-based policy and can
%% contain multiple policy statements. A file system always has exactly one
%% file system policy, which can be the default policy or an explicit policy
%% set or updated using this API operation. When an explicit policy is set,
%% it overrides the default policy. For more information about the default
%% file system policy, see <a
%% href="https://docs.aws.amazon.com/efs/latest/ug/iam-access-control-nfs-efs.html#default-filesystempolicy">Default
%% EFS File System Policy</a>.
%%
%% This operation requires permissions for the
%% <code>elasticfilesystem:PutFileSystemPolicy</code> action.
put_file_system_policy(Client, FileSystemId, Input) ->
    put_file_system_policy(Client, FileSystemId, Input, []).
put_file_system_policy(Client, FileSystemId, Input0, Options) ->
    Method = put,
    Path = ["/2015-02-01/file-systems/", http_uri:encode(FileSystemId), "/policy"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Enables lifecycle management by creating a new
%% <code>LifecycleConfiguration</code> object. A
%% <code>LifecycleConfiguration</code> object defines when files in an Amazon
%% EFS file system are automatically transitioned to the lower-cost EFS
%% Infrequent Access (IA) storage class. A
%% <code>LifecycleConfiguration</code> applies to all files in a file system.
%%
%% Each Amazon EFS file system supports one lifecycle configuration, which
%% applies to all files in the file system. If a
%% <code>LifecycleConfiguration</code> object already exists for the
%% specified file system, a <code>PutLifecycleConfiguration</code> call
%% modifies the existing configuration. A
%% <code>PutLifecycleConfiguration</code> call with an empty
%% <code>LifecyclePolicies</code> array in the request body deletes any
%% existing <code>LifecycleConfiguration</code> and disables lifecycle
%% management.
%%
%% In the request, specify the following:
%%
%% <ul> <li> The ID for the file system for which you are enabling,
%% disabling, or modifying lifecycle management.
%%
%% </li> <li> A <code>LifecyclePolicies</code> array of
%% <code>LifecyclePolicy</code> objects that define when files are moved to
%% the IA storage class. The array can contain only one
%% <code>LifecyclePolicy</code> item.
%%
%% </li> </ul> This operation requires permissions for the
%% <code>elasticfilesystem:PutLifecycleConfiguration</code> operation.
%%
%% To apply a <code>LifecycleConfiguration</code> object to an encrypted file
%% system, you need the same AWS Key Management Service (AWS KMS) permissions
%% as when you created the encrypted file system.
put_lifecycle_configuration(Client, FileSystemId, Input) ->
    put_lifecycle_configuration(Client, FileSystemId, Input, []).
put_lifecycle_configuration(Client, FileSystemId, Input0, Options) ->
    Method = put,
    Path = ["/2015-02-01/file-systems/", http_uri:encode(FileSystemId), "/lifecycle-configuration"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a tag for an EFS resource. You can create tags for EFS file
%% systems and access points using this API operation.
%%
%% This operation requires permissions for the
%% <code>elasticfilesystem:TagResource</code> action.
tag_resource(Client, ResourceId, Input) ->
    tag_resource(Client, ResourceId, Input, []).
tag_resource(Client, ResourceId, Input0, Options) ->
    Method = post,
    Path = ["/2015-02-01/resource-tags/", http_uri:encode(ResourceId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Removes tags from an EFS resource. You can remove tags from EFS file
%% systems and access points using this API operation.
%%
%% This operation requires permissions for the
%% <code>elasticfilesystem:UntagResource</code> action.
untag_resource(Client, ResourceId, Input) ->
    untag_resource(Client, ResourceId, Input, []).
untag_resource(Client, ResourceId, Input0, Options) ->
    Method = delete,
    Path = ["/2015-02-01/resource-tags/", http_uri:encode(ResourceId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"tagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the throughput mode or the amount of provisioned throughput
%% of an existing file system.
update_file_system(Client, FileSystemId, Input) ->
    update_file_system(Client, FileSystemId, Input, []).
update_file_system(Client, FileSystemId, Input0, Options) ->
    Method = put,
    Path = ["/2015-02-01/file-systems/", http_uri:encode(FileSystemId), ""],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), atom(), iolist(), list(),
              list(), map() | undefined, list(), pos_integer() | undefined) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map(),
    Error :: map().
request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
    Client1 = Client#{service => <<"elasticfilesystem">>},
    Host = build_host(<<"elasticfilesystem">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders = [ {<<"Host">>, Host}
                        , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                        ],
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),
    Payload = encode_payload(Input),
    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    handle_response(Response, SuccessStatusCode).

handle_response({ok, StatusCode, ResponseHeaders, Client}, SuccessStatusCode)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= SuccessStatusCode ->
    case hackney:body(Client) of
        {ok, <<>>} when StatusCode =:= 200;
                        StatusCode =:= SuccessStatusCode ->
            {ok, #{}, {StatusCode, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body),
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}, _) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}, _) ->
  {error, Reason}.

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
