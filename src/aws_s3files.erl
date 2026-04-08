%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc S3 Files makes S3 buckets accessible as high-performance file systems
%% powered by EFS.
%%
%% This service enables file system interface access to S3 data with
%% sub-millisecond latencies through mount targets, supporting AI/ML
%% workloads, media processing, and hybrid storage workflows that require
%% both file system and object storage access to the same data.
-module(aws_s3files).

-export([create_access_point/2,
         create_access_point/3,
         create_file_system/2,
         create_file_system/3,
         create_mount_target/2,
         create_mount_target/3,
         delete_access_point/3,
         delete_access_point/4,
         delete_file_system/3,
         delete_file_system/4,
         delete_file_system_policy/3,
         delete_file_system_policy/4,
         delete_mount_target/3,
         delete_mount_target/4,
         get_access_point/2,
         get_access_point/4,
         get_access_point/5,
         get_file_system/2,
         get_file_system/4,
         get_file_system/5,
         get_file_system_policy/2,
         get_file_system_policy/4,
         get_file_system_policy/5,
         get_mount_target/2,
         get_mount_target/4,
         get_mount_target/5,
         get_synchronization_configuration/2,
         get_synchronization_configuration/4,
         get_synchronization_configuration/5,
         list_access_points/2,
         list_access_points/4,
         list_access_points/5,
         list_file_systems/1,
         list_file_systems/3,
         list_file_systems/4,
         list_mount_targets/1,
         list_mount_targets/3,
         list_mount_targets/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         put_file_system_policy/3,
         put_file_system_policy/4,
         put_synchronization_configuration/3,
         put_synchronization_configuration/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_mount_target/3,
         update_mount_target/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% creation_permissions() :: #{
%%   <<"ownerGid">> => float(),
%%   <<"ownerUid">> => float(),
%%   <<"permissions">> => string()
%% }
-type creation_permissions() :: #{binary() => any()}.


%% Example:
%% root_directory() :: #{
%%   <<"creationPermissions">> => creation_permissions(),
%%   <<"path">> => string()
%% }
-type root_directory() :: #{binary() => any()}.


%% Example:
%% create_file_system_response() :: #{
%%   <<"bucket">> => string(),
%%   <<"clientToken">> => string(),
%%   <<"creationTime">> => [non_neg_integer()],
%%   <<"fileSystemArn">> => string(),
%%   <<"fileSystemId">> => string(),
%%   <<"kmsKeyId">> => string(),
%%   <<"name">> => string(),
%%   <<"ownerId">> => string(),
%%   <<"prefix">> => [string()],
%%   <<"roleArn">> => string(),
%%   <<"status">> => list(any()),
%%   <<"statusMessage">> => string(),
%%   <<"tags">> => list(tag())
%% }
-type create_file_system_response() :: #{binary() => any()}.


%% Example:
%% create_access_point_response() :: #{
%%   <<"accessPointArn">> => string(),
%%   <<"accessPointId">> => string(),
%%   <<"clientToken">> => string(),
%%   <<"fileSystemId">> => string(),
%%   <<"name">> => string(),
%%   <<"ownerId">> => string(),
%%   <<"posixUser">> => posix_user(),
%%   <<"rootDirectory">> => root_directory(),
%%   <<"status">> => list(any()),
%%   <<"tags">> => list(tag())
%% }
-type create_access_point_response() :: #{binary() => any()}.

%% Example:
%% put_synchronization_configuration_response() :: #{}
-type put_synchronization_configuration_response() :: #{}.


%% Example:
%% list_mount_targets_request() :: #{
%%   <<"accessPointId">> => string(),
%%   <<"fileSystemId">> => string(),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()]
%% }
-type list_mount_targets_request() :: #{binary() => any()}.


%% Example:
%% create_mount_target_request() :: #{
%%   <<"fileSystemId">> := string(),
%%   <<"ipAddressType">> => list(any()),
%%   <<"ipv4Address">> => string(),
%%   <<"ipv6Address">> => string(),
%%   <<"securityGroups">> => list(string()),
%%   <<"subnetId">> := string()
%% }
-type create_mount_target_request() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% list_file_systems_response() :: #{
%%   <<"fileSystems">> => list(list_file_systems_description()),
%%   <<"nextToken">> => [string()]
%% }
-type list_file_systems_response() :: #{binary() => any()}.


%% Example:
%% get_synchronization_configuration_response() :: #{
%%   <<"expirationDataRules">> => list(expiration_data_rule()),
%%   <<"importDataRules">> => list(import_data_rule()),
%%   <<"latestVersionNumber">> => [integer()]
%% }
-type get_synchronization_configuration_response() :: #{binary() => any()}.


%% Example:
%% put_synchronization_configuration_request() :: #{
%%   <<"expirationDataRules">> := list(expiration_data_rule()),
%%   <<"importDataRules">> := list(import_data_rule()),
%%   <<"latestVersionNumber">> => [integer()]
%% }
-type put_synchronization_configuration_request() :: #{binary() => any()}.


%% Example:
%% get_access_point_response() :: #{
%%   <<"accessPointArn">> => string(),
%%   <<"accessPointId">> => string(),
%%   <<"clientToken">> => string(),
%%   <<"fileSystemId">> => string(),
%%   <<"name">> => string(),
%%   <<"ownerId">> => string(),
%%   <<"posixUser">> => posix_user(),
%%   <<"rootDirectory">> => root_directory(),
%%   <<"status">> => list(any()),
%%   <<"tags">> => list(tag())
%% }
-type get_access_point_response() :: #{binary() => any()}.


%% Example:
%% create_access_point_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"fileSystemId">> := string(),
%%   <<"posixUser">> => posix_user(),
%%   <<"rootDirectory">> => root_directory(),
%%   <<"tags">> => list(tag())
%% }
-type create_access_point_request() :: #{binary() => any()}.

%% Example:
%% get_file_system_policy_request() :: #{}
-type get_file_system_policy_request() :: #{}.


%% Example:
%% list_mount_targets_response() :: #{
%%   <<"mountTargets">> => list(list_mount_targets_description()),
%%   <<"nextToken">> => [string()]
%% }
-type list_mount_targets_response() :: #{binary() => any()}.


%% Example:
%% get_mount_target_response() :: #{
%%   <<"availabilityZoneId">> => string(),
%%   <<"fileSystemId">> => string(),
%%   <<"ipv4Address">> => string(),
%%   <<"ipv6Address">> => string(),
%%   <<"mountTargetId">> => string(),
%%   <<"networkInterfaceId">> => string(),
%%   <<"ownerId">> => string(),
%%   <<"securityGroups">> => list(string()),
%%   <<"status">> => list(any()),
%%   <<"statusMessage">> => string(),
%%   <<"subnetId">> => string(),
%%   <<"vpcId">> => string()
%% }
-type get_mount_target_response() :: #{binary() => any()}.

%% Example:
%% get_access_point_request() :: #{}
-type get_access_point_request() :: #{}.


%% Example:
%% create_mount_target_response() :: #{
%%   <<"availabilityZoneId">> => string(),
%%   <<"fileSystemId">> => string(),
%%   <<"ipv4Address">> => string(),
%%   <<"ipv6Address">> => string(),
%%   <<"mountTargetId">> => string(),
%%   <<"networkInterfaceId">> => string(),
%%   <<"ownerId">> => string(),
%%   <<"securityGroups">> => list(string()),
%%   <<"status">> => list(any()),
%%   <<"statusMessage">> => string(),
%%   <<"subnetId">> => string(),
%%   <<"vpcId">> => string()
%% }
-type create_mount_target_response() :: #{binary() => any()}.

%% Example:
%% delete_mount_target_request() :: #{}
-type delete_mount_target_request() :: #{}.


%% Example:
%% conflict_exception() :: #{
%%   <<"errorCode">> => string(),
%%   <<"message">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"errorCode">> => string(),
%%   <<"message">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% posix_user() :: #{
%%   <<"gid">> => float(),
%%   <<"secondaryGids">> => list(float()),
%%   <<"uid">> => float()
%% }
-type posix_user() :: #{binary() => any()}.


%% Example:
%% tag() :: #{
%%   <<"key">> => string(),
%%   <<"value">> => string()
%% }
-type tag() :: #{binary() => any()}.


%% Example:
%% list_file_systems_description() :: #{
%%   <<"bucket">> => string(),
%%   <<"creationTime">> => [non_neg_integer()],
%%   <<"fileSystemArn">> => string(),
%%   <<"fileSystemId">> => string(),
%%   <<"name">> => string(),
%%   <<"ownerId">> => string(),
%%   <<"roleArn">> => string(),
%%   <<"status">> => list(any()),
%%   <<"statusMessage">> => string()
%% }
-type list_file_systems_description() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"errorCode">> => string(),
%%   <<"message">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% create_file_system_request() :: #{
%%   <<"acceptBucketWarning">> => [boolean()],
%%   <<"bucket">> := string(),
%%   <<"clientToken">> => string(),
%%   <<"kmsKeyId">> => string(),
%%   <<"prefix">> => [string()],
%%   <<"roleArn">> := string(),
%%   <<"tags">> => list(tag())
%% }
-type create_file_system_request() :: #{binary() => any()}.


%% Example:
%% list_access_points_response() :: #{
%%   <<"accessPoints">> => list(list_access_points_description()),
%%   <<"nextToken">> => [string()]
%% }
-type list_access_points_response() :: #{binary() => any()}.


%% Example:
%% update_mount_target_response() :: #{
%%   <<"availabilityZoneId">> => string(),
%%   <<"fileSystemId">> => string(),
%%   <<"ipv4Address">> => string(),
%%   <<"ipv6Address">> => string(),
%%   <<"mountTargetId">> => string(),
%%   <<"networkInterfaceId">> => string(),
%%   <<"ownerId">> => string(),
%%   <<"securityGroups">> => list(string()),
%%   <<"status">> => list(any()),
%%   <<"statusMessage">> => string(),
%%   <<"subnetId">> => string(),
%%   <<"vpcId">> => string()
%% }
-type update_mount_target_response() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"nextToken">> => [string()],
%%   <<"tags">> => list(tag())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% get_synchronization_configuration_request() :: #{}
-type get_synchronization_configuration_request() :: #{}.


%% Example:
%% put_file_system_policy_request() :: #{
%%   <<"policy">> := [string()]
%% }
-type put_file_system_policy_request() :: #{binary() => any()}.

%% Example:
%% delete_file_system_policy_request() :: #{}
-type delete_file_system_policy_request() :: #{}.

%% Example:
%% delete_access_point_request() :: #{}
-type delete_access_point_request() :: #{}.

%% Example:
%% get_file_system_request() :: #{}
-type get_file_system_request() :: #{}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"errorCode">> => string(),
%%   <<"message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% list_file_systems_request() :: #{
%%   <<"bucket">> => string(),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()]
%% }
-type list_file_systems_request() :: #{binary() => any()}.


%% Example:
%% list_access_points_description() :: #{
%%   <<"accessPointArn">> => string(),
%%   <<"accessPointId">> => string(),
%%   <<"fileSystemId">> => string(),
%%   <<"name">> => string(),
%%   <<"ownerId">> => string(),
%%   <<"posixUser">> => posix_user(),
%%   <<"rootDirectory">> => root_directory(),
%%   <<"status">> => list(any())
%% }
-type list_access_points_description() :: #{binary() => any()}.


%% Example:
%% list_mount_targets_description() :: #{
%%   <<"availabilityZoneId">> => string(),
%%   <<"fileSystemId">> => string(),
%%   <<"ipv4Address">> => string(),
%%   <<"ipv6Address">> => string(),
%%   <<"mountTargetId">> => string(),
%%   <<"networkInterfaceId">> => string(),
%%   <<"ownerId">> => string(),
%%   <<"status">> => list(any()),
%%   <<"statusMessage">> => string(),
%%   <<"subnetId">> => string(),
%%   <<"vpcId">> => string()
%% }
-type list_mount_targets_description() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"errorCode">> => string(),
%%   <<"message">> => [string()]
%% }
-type validation_exception() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()]
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% get_mount_target_request() :: #{}
-type get_mount_target_request() :: #{}.


%% Example:
%% throttling_exception() :: #{
%%   <<"errorCode">> => string(),
%%   <<"message">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% expiration_data_rule() :: #{
%%   <<"daysAfterLastAccess">> => [integer()]
%% }
-type expiration_data_rule() :: #{binary() => any()}.


%% Example:
%% update_mount_target_request() :: #{
%%   <<"securityGroups">> := list(string())
%% }
-type update_mount_target_request() :: #{binary() => any()}.


%% Example:
%% import_data_rule() :: #{
%%   <<"prefix">> => [string()],
%%   <<"sizeLessThan">> => [float()],
%%   <<"trigger">> => list(any())
%% }
-type import_data_rule() :: #{binary() => any()}.


%% Example:
%% list_access_points_request() :: #{
%%   <<"fileSystemId">> := string(),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()]
%% }
-type list_access_points_request() :: #{binary() => any()}.

%% Example:
%% put_file_system_policy_response() :: #{}
-type put_file_system_policy_response() :: #{}.


%% Example:
%% get_file_system_response() :: #{
%%   <<"bucket">> => string(),
%%   <<"clientToken">> => string(),
%%   <<"creationTime">> => [non_neg_integer()],
%%   <<"fileSystemArn">> => string(),
%%   <<"fileSystemId">> => string(),
%%   <<"kmsKeyId">> => string(),
%%   <<"name">> => string(),
%%   <<"ownerId">> => string(),
%%   <<"prefix">> => [string()],
%%   <<"roleArn">> => string(),
%%   <<"status">> => list(any()),
%%   <<"statusMessage">> => string(),
%%   <<"tags">> => list(tag())
%% }
-type get_file_system_response() :: #{binary() => any()}.


%% Example:
%% get_file_system_policy_response() :: #{
%%   <<"fileSystemId">> => string(),
%%   <<"policy">> => [string()]
%% }
-type get_file_system_policy_response() :: #{binary() => any()}.


%% Example:
%% delete_file_system_request() :: #{
%%   <<"forceDelete">> => [boolean()]
%% }
-type delete_file_system_request() :: #{binary() => any()}.

-type create_access_point_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_file_system_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_mount_target_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_access_point_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_file_system_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_file_system_policy_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_mount_target_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_access_point_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_file_system_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_file_system_policy_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_mount_target_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_synchronization_configuration_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_access_points_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_file_systems_errors() ::
    validation_exception() | 
    internal_server_exception().

-type list_mount_targets_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_tags_for_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type put_file_system_policy_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type put_synchronization_configuration_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type tag_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_mount_target_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates an S3 File System Access Point for application-specific
%% access with POSIX user identity and root directory enforcement.
%%
%% Access points provide a way to manage access to shared datasets in
%% multi-tenant scenarios.
-spec create_access_point(aws_client:aws_client(), create_access_point_request()) ->
    {ok, create_access_point_response(), tuple()} |
    {error, any()} |
    {error, create_access_point_errors(), tuple()}.
create_access_point(Client, Input) ->
    create_access_point(Client, Input, []).

-spec create_access_point(aws_client:aws_client(), create_access_point_request(), proplists:proplist()) ->
    {ok, create_access_point_response(), tuple()} |
    {error, any()} |
    {error, create_access_point_errors(), tuple()}.
create_access_point(Client, Input0, Options0) ->
    Method = put,
    Path = ["/access-points"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an S3 File System resource scoped to a bucket or prefix
%% within a bucket, enabling file system access to S3 data.
%%
%% To create a file system, you need an S3 bucket and an IAM role that grants
%% the service permission to access the bucket.
-spec create_file_system(aws_client:aws_client(), create_file_system_request()) ->
    {ok, create_file_system_response(), tuple()} |
    {error, any()} |
    {error, create_file_system_errors(), tuple()}.
create_file_system(Client, Input) ->
    create_file_system(Client, Input, []).

-spec create_file_system(aws_client:aws_client(), create_file_system_request(), proplists:proplist()) ->
    {ok, create_file_system_response(), tuple()} |
    {error, any()} |
    {error, create_file_system_errors(), tuple()}.
create_file_system(Client, Input0, Options0) ->
    Method = put,
    Path = ["/file-systems"],
    SuccessStatusCode = 201,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a mount target resource as an endpoint for mounting the S3
%% File System from compute resources in a specific Availability Zone and
%% VPC.
%%
%% Mount targets provide network access to the file system.
-spec create_mount_target(aws_client:aws_client(), create_mount_target_request()) ->
    {ok, create_mount_target_response(), tuple()} |
    {error, any()} |
    {error, create_mount_target_errors(), tuple()}.
create_mount_target(Client, Input) ->
    create_mount_target(Client, Input, []).

-spec create_mount_target(aws_client:aws_client(), create_mount_target_request(), proplists:proplist()) ->
    {ok, create_mount_target_response(), tuple()} |
    {error, any()} |
    {error, create_mount_target_errors(), tuple()}.
create_mount_target(Client, Input0, Options0) ->
    Method = put,
    Path = ["/mount-targets"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an S3 File System Access Point.
%%
%% This operation is irreversible.
-spec delete_access_point(aws_client:aws_client(), binary() | list(), delete_access_point_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_access_point_errors(), tuple()}.
delete_access_point(Client, AccessPointId, Input) ->
    delete_access_point(Client, AccessPointId, Input, []).

-spec delete_access_point(aws_client:aws_client(), binary() | list(), delete_access_point_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_access_point_errors(), tuple()}.
delete_access_point(Client, AccessPointId, Input0, Options0) ->
    Method = delete,
    Path = ["/access-points/", aws_util:encode_uri(AccessPointId), ""],
    SuccessStatusCode = 204,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an S3 File System.
%%
%% You can optionally force deletion of a file system that has pending export
%% data.
-spec delete_file_system(aws_client:aws_client(), binary() | list(), delete_file_system_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_file_system_errors(), tuple()}.
delete_file_system(Client, FileSystemId, Input) ->
    delete_file_system(Client, FileSystemId, Input, []).

-spec delete_file_system(aws_client:aws_client(), binary() | list(), delete_file_system_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_file_system_errors(), tuple()}.
delete_file_system(Client, FileSystemId, Input0, Options0) ->
    Method = delete,
    Path = ["/file-systems/", aws_util:encode_uri(FileSystemId), ""],
    SuccessStatusCode = 204,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"forceDelete">>, <<"forceDelete">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the IAM resource policy of an S3 File System.
-spec delete_file_system_policy(aws_client:aws_client(), binary() | list(), delete_file_system_policy_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_file_system_policy_errors(), tuple()}.
delete_file_system_policy(Client, FileSystemId, Input) ->
    delete_file_system_policy(Client, FileSystemId, Input, []).

-spec delete_file_system_policy(aws_client:aws_client(), binary() | list(), delete_file_system_policy_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_file_system_policy_errors(), tuple()}.
delete_file_system_policy(Client, FileSystemId, Input0, Options0) ->
    Method = delete,
    Path = ["/file-systems/", aws_util:encode_uri(FileSystemId), "/policy"],
    SuccessStatusCode = 204,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified mount target.
%%
%% This operation is irreversible.
-spec delete_mount_target(aws_client:aws_client(), binary() | list(), delete_mount_target_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_mount_target_errors(), tuple()}.
delete_mount_target(Client, MountTargetId, Input) ->
    delete_mount_target(Client, MountTargetId, Input, []).

-spec delete_mount_target(aws_client:aws_client(), binary() | list(), delete_mount_target_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_mount_target_errors(), tuple()}.
delete_mount_target(Client, MountTargetId, Input0, Options0) ->
    Method = delete,
    Path = ["/mount-targets/", aws_util:encode_uri(MountTargetId), ""],
    SuccessStatusCode = 204,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns resource information for an S3 File System Access Point.
-spec get_access_point(aws_client:aws_client(), binary() | list()) ->
    {ok, get_access_point_response(), tuple()} |
    {error, any()} |
    {error, get_access_point_errors(), tuple()}.
get_access_point(Client, AccessPointId)
  when is_map(Client) ->
    get_access_point(Client, AccessPointId, #{}, #{}).

-spec get_access_point(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_access_point_response(), tuple()} |
    {error, any()} |
    {error, get_access_point_errors(), tuple()}.
get_access_point(Client, AccessPointId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_access_point(Client, AccessPointId, QueryMap, HeadersMap, []).

-spec get_access_point(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_access_point_response(), tuple()} |
    {error, any()} |
    {error, get_access_point_errors(), tuple()}.
get_access_point(Client, AccessPointId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/access-points/", aws_util:encode_uri(AccessPointId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns resource information for the specified S3 File System
%% including status, configuration, and metadata.
-spec get_file_system(aws_client:aws_client(), binary() | list()) ->
    {ok, get_file_system_response(), tuple()} |
    {error, any()} |
    {error, get_file_system_errors(), tuple()}.
get_file_system(Client, FileSystemId)
  when is_map(Client) ->
    get_file_system(Client, FileSystemId, #{}, #{}).

-spec get_file_system(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_file_system_response(), tuple()} |
    {error, any()} |
    {error, get_file_system_errors(), tuple()}.
get_file_system(Client, FileSystemId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_file_system(Client, FileSystemId, QueryMap, HeadersMap, []).

-spec get_file_system(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_file_system_response(), tuple()} |
    {error, any()} |
    {error, get_file_system_errors(), tuple()}.
get_file_system(Client, FileSystemId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/file-systems/", aws_util:encode_uri(FileSystemId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the IAM resource policy of an S3 File System.
-spec get_file_system_policy(aws_client:aws_client(), binary() | list()) ->
    {ok, get_file_system_policy_response(), tuple()} |
    {error, any()} |
    {error, get_file_system_policy_errors(), tuple()}.
get_file_system_policy(Client, FileSystemId)
  when is_map(Client) ->
    get_file_system_policy(Client, FileSystemId, #{}, #{}).

-spec get_file_system_policy(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_file_system_policy_response(), tuple()} |
    {error, any()} |
    {error, get_file_system_policy_errors(), tuple()}.
get_file_system_policy(Client, FileSystemId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_file_system_policy(Client, FileSystemId, QueryMap, HeadersMap, []).

-spec get_file_system_policy(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_file_system_policy_response(), tuple()} |
    {error, any()} |
    {error, get_file_system_policy_errors(), tuple()}.
get_file_system_policy(Client, FileSystemId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/file-systems/", aws_util:encode_uri(FileSystemId), "/policy"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns detailed resource information for the specified mount target
%% including network configuration.
-spec get_mount_target(aws_client:aws_client(), binary() | list()) ->
    {ok, get_mount_target_response(), tuple()} |
    {error, any()} |
    {error, get_mount_target_errors(), tuple()}.
get_mount_target(Client, MountTargetId)
  when is_map(Client) ->
    get_mount_target(Client, MountTargetId, #{}, #{}).

-spec get_mount_target(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_mount_target_response(), tuple()} |
    {error, any()} |
    {error, get_mount_target_errors(), tuple()}.
get_mount_target(Client, MountTargetId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_mount_target(Client, MountTargetId, QueryMap, HeadersMap, []).

-spec get_mount_target(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_mount_target_response(), tuple()} |
    {error, any()} |
    {error, get_mount_target_errors(), tuple()}.
get_mount_target(Client, MountTargetId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/mount-targets/", aws_util:encode_uri(MountTargetId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the synchronization configuration for the specified S3 File
%% System, including import data rules and expiration data rules.
-spec get_synchronization_configuration(aws_client:aws_client(), binary() | list()) ->
    {ok, get_synchronization_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_synchronization_configuration_errors(), tuple()}.
get_synchronization_configuration(Client, FileSystemId)
  when is_map(Client) ->
    get_synchronization_configuration(Client, FileSystemId, #{}, #{}).

-spec get_synchronization_configuration(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_synchronization_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_synchronization_configuration_errors(), tuple()}.
get_synchronization_configuration(Client, FileSystemId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_synchronization_configuration(Client, FileSystemId, QueryMap, HeadersMap, []).

-spec get_synchronization_configuration(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_synchronization_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_synchronization_configuration_errors(), tuple()}.
get_synchronization_configuration(Client, FileSystemId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/file-systems/", aws_util:encode_uri(FileSystemId), "/synchronization-configuration"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns resource information for all S3 File System Access Points
%% associated with the specified S3 File System.
-spec list_access_points(aws_client:aws_client(), binary() | list()) ->
    {ok, list_access_points_response(), tuple()} |
    {error, any()} |
    {error, list_access_points_errors(), tuple()}.
list_access_points(Client, FileSystemId)
  when is_map(Client) ->
    list_access_points(Client, FileSystemId, #{}, #{}).

-spec list_access_points(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_access_points_response(), tuple()} |
    {error, any()} |
    {error, list_access_points_errors(), tuple()}.
list_access_points(Client, FileSystemId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_access_points(Client, FileSystemId, QueryMap, HeadersMap, []).

-spec list_access_points(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_access_points_response(), tuple()} |
    {error, any()} |
    {error, list_access_points_errors(), tuple()}.
list_access_points(Client, FileSystemId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/access-points"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"fileSystemId">>, FileSystemId},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of all S3 File Systems owned by the account with
%% optional filtering by bucket.
-spec list_file_systems(aws_client:aws_client()) ->
    {ok, list_file_systems_response(), tuple()} |
    {error, any()} |
    {error, list_file_systems_errors(), tuple()}.
list_file_systems(Client)
  when is_map(Client) ->
    list_file_systems(Client, #{}, #{}).

-spec list_file_systems(aws_client:aws_client(), map(), map()) ->
    {ok, list_file_systems_response(), tuple()} |
    {error, any()} |
    {error, list_file_systems_errors(), tuple()}.
list_file_systems(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_file_systems(Client, QueryMap, HeadersMap, []).

-spec list_file_systems(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_file_systems_response(), tuple()} |
    {error, any()} |
    {error, list_file_systems_errors(), tuple()}.
list_file_systems(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/file-systems"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"bucket">>, maps:get(<<"bucket">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns resource information for all mount targets with optional
%% filtering by file system, access point, and VPC.
-spec list_mount_targets(aws_client:aws_client()) ->
    {ok, list_mount_targets_response(), tuple()} |
    {error, any()} |
    {error, list_mount_targets_errors(), tuple()}.
list_mount_targets(Client)
  when is_map(Client) ->
    list_mount_targets(Client, #{}, #{}).

-spec list_mount_targets(aws_client:aws_client(), map(), map()) ->
    {ok, list_mount_targets_response(), tuple()} |
    {error, any()} |
    {error, list_mount_targets_errors(), tuple()}.
list_mount_targets(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_mount_targets(Client, QueryMap, HeadersMap, []).

-spec list_mount_targets(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_mount_targets_response(), tuple()} |
    {error, any()} |
    {error, list_mount_targets_errors(), tuple()}.
list_mount_targets(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/mount-targets"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"accessPointId">>, maps:get(<<"accessPointId">>, QueryMap, undefined)},
        {<<"fileSystemId">>, maps:get(<<"fileSystemId">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all tags for S3 Files resources.
-spec list_tags_for_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceId)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceId, #{}, #{}).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceId, QueryMap, HeadersMap, []).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/resource-tags/", aws_util:encode_uri(ResourceId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Creates or replaces the IAM resource policy for an S3 File System to
%% control access permissions.
-spec put_file_system_policy(aws_client:aws_client(), binary() | list(), put_file_system_policy_request()) ->
    {ok, put_file_system_policy_response(), tuple()} |
    {error, any()} |
    {error, put_file_system_policy_errors(), tuple()}.
put_file_system_policy(Client, FileSystemId, Input) ->
    put_file_system_policy(Client, FileSystemId, Input, []).

-spec put_file_system_policy(aws_client:aws_client(), binary() | list(), put_file_system_policy_request(), proplists:proplist()) ->
    {ok, put_file_system_policy_response(), tuple()} |
    {error, any()} |
    {error, put_file_system_policy_errors(), tuple()}.
put_file_system_policy(Client, FileSystemId, Input0, Options0) ->
    Method = put,
    Path = ["/file-systems/", aws_util:encode_uri(FileSystemId), "/policy"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates or updates the synchronization configuration for the
%% specified S3 File System, including import data rules and expiration data
%% rules.
-spec put_synchronization_configuration(aws_client:aws_client(), binary() | list(), put_synchronization_configuration_request()) ->
    {ok, put_synchronization_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_synchronization_configuration_errors(), tuple()}.
put_synchronization_configuration(Client, FileSystemId, Input) ->
    put_synchronization_configuration(Client, FileSystemId, Input, []).

-spec put_synchronization_configuration(aws_client:aws_client(), binary() | list(), put_synchronization_configuration_request(), proplists:proplist()) ->
    {ok, put_synchronization_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_synchronization_configuration_errors(), tuple()}.
put_synchronization_configuration(Client, FileSystemId, Input0, Options0) ->
    Method = put,
    Path = ["/file-systems/", aws_util:encode_uri(FileSystemId), "/synchronization-configuration"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates tags for S3 Files resources using standard Amazon Web
%% Services tagging APIs.
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceId, Input) ->
    tag_resource(Client, ResourceId, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceId, Input0, Options0) ->
    Method = post,
    Path = ["/resource-tags/", aws_util:encode_uri(ResourceId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes tags from S3 Files resources.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceId, Input) ->
    untag_resource(Client, ResourceId, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceId, Input0, Options0) ->
    Method = delete,
    Path = ["/resource-tags/", aws_util:encode_uri(ResourceId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the mount target resource, specifically security group
%% configurations.
-spec update_mount_target(aws_client:aws_client(), binary() | list(), update_mount_target_request()) ->
    {ok, update_mount_target_response(), tuple()} |
    {error, any()} |
    {error, update_mount_target_errors(), tuple()}.
update_mount_target(Client, MountTargetId, Input) ->
    update_mount_target(Client, MountTargetId, Input, []).

-spec update_mount_target(aws_client:aws_client(), binary() | list(), update_mount_target_request(), proplists:proplist()) ->
    {ok, update_mount_target_response(), tuple()} |
    {error, any()} |
    {error, update_mount_target_errors(), tuple()}.
update_mount_target(Client, MountTargetId, Input0, Options0) ->
    Method = put,
    Path = ["/mount-targets/", aws_util:encode_uri(MountTargetId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

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

-spec proplists_take(any(), proplists:proplist(), any()) -> {any(), proplists:proplist()}.
proplists_take(Key, Proplist, Default) ->
  Value = proplists:get_value(Key, Proplist, Default),
  {Value, proplists:delete(Key, Proplist)}.

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
    Client1 = Client#{service => <<"s3files">>},
    Host = build_host(<<"s3files">>, Client1),
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
