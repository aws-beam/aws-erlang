%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS Panorama
%%
%% Overview
%%
%% This is the AWS Panorama API Reference.
%%
%% For an introduction to the service, see What is AWS Panorama? in the AWS
%% Panorama Developer Guide.
-module(aws_panorama).

-export([create_application_instance/2,
         create_application_instance/3,
         create_job_for_devices/2,
         create_job_for_devices/3,
         create_node_from_template_job/2,
         create_node_from_template_job/3,
         create_package/2,
         create_package/3,
         create_package_import_job/2,
         create_package_import_job/3,
         delete_device/3,
         delete_device/4,
         delete_package/3,
         delete_package/4,
         deregister_package_version/5,
         deregister_package_version/6,
         describe_application_instance/2,
         describe_application_instance/4,
         describe_application_instance/5,
         describe_application_instance_details/2,
         describe_application_instance_details/4,
         describe_application_instance_details/5,
         describe_device/2,
         describe_device/4,
         describe_device/5,
         describe_device_job/2,
         describe_device_job/4,
         describe_device_job/5,
         describe_node/2,
         describe_node/4,
         describe_node/5,
         describe_node_from_template_job/2,
         describe_node_from_template_job/4,
         describe_node_from_template_job/5,
         describe_package/2,
         describe_package/4,
         describe_package/5,
         describe_package_import_job/2,
         describe_package_import_job/4,
         describe_package_import_job/5,
         describe_package_version/3,
         describe_package_version/5,
         describe_package_version/6,
         list_application_instance_dependencies/2,
         list_application_instance_dependencies/4,
         list_application_instance_dependencies/5,
         list_application_instance_node_instances/2,
         list_application_instance_node_instances/4,
         list_application_instance_node_instances/5,
         list_application_instances/1,
         list_application_instances/3,
         list_application_instances/4,
         list_devices/1,
         list_devices/3,
         list_devices/4,
         list_devices_jobs/1,
         list_devices_jobs/3,
         list_devices_jobs/4,
         list_node_from_template_jobs/1,
         list_node_from_template_jobs/3,
         list_node_from_template_jobs/4,
         list_nodes/1,
         list_nodes/3,
         list_nodes/4,
         list_package_import_jobs/1,
         list_package_import_jobs/3,
         list_package_import_jobs/4,
         list_packages/1,
         list_packages/3,
         list_packages/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         provision_device/2,
         provision_device/3,
         register_package_version/5,
         register_package_version/6,
         remove_application_instance/3,
         remove_application_instance/4,
         signal_application_instance_node_instances/3,
         signal_application_instance_node_instances/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_device_metadata/3,
         update_device_metadata/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates an application instance and deploys it to a device.
create_application_instance(Client, Input) ->
    create_application_instance(Client, Input, []).
create_application_instance(Client, Input0, Options0) ->
    Method = post,
    Path = ["/application-instances"],
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

%% @doc Creates a job to run on a device.
%%
%% A job can update a device's software or reboot it.
create_job_for_devices(Client, Input) ->
    create_job_for_devices(Client, Input, []).
create_job_for_devices(Client, Input0, Options0) ->
    Method = post,
    Path = ["/jobs"],
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

%% @doc Creates a camera stream node.
create_node_from_template_job(Client, Input) ->
    create_node_from_template_job(Client, Input, []).
create_node_from_template_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/packages/template-job"],
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

%% @doc Creates a package and storage location in an Amazon S3 access point.
create_package(Client, Input) ->
    create_package(Client, Input, []).
create_package(Client, Input0, Options0) ->
    Method = post,
    Path = ["/packages"],
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

%% @doc Imports a node package.
create_package_import_job(Client, Input) ->
    create_package_import_job(Client, Input, []).
create_package_import_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/packages/import-jobs"],
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

%% @doc Deletes a device.
delete_device(Client, DeviceId, Input) ->
    delete_device(Client, DeviceId, Input, []).
delete_device(Client, DeviceId, Input0, Options0) ->
    Method = delete,
    Path = ["/devices/", aws_util:encode_uri(DeviceId), ""],
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

%% @doc Deletes a package.
%%
%% To delete a package, you need permission to call `s3:DeleteObject' in
%% addition to permissions for the AWS Panorama API.
delete_package(Client, PackageId, Input) ->
    delete_package(Client, PackageId, Input, []).
delete_package(Client, PackageId, Input0, Options0) ->
    Method = delete,
    Path = ["/packages/", aws_util:encode_uri(PackageId), ""],
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
                     {<<"ForceDelete">>, <<"ForceDelete">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deregisters a package version.
deregister_package_version(Client, PackageId, PackageVersion, PatchVersion, Input) ->
    deregister_package_version(Client, PackageId, PackageVersion, PatchVersion, Input, []).
deregister_package_version(Client, PackageId, PackageVersion, PatchVersion, Input0, Options0) ->
    Method = delete,
    Path = ["/packages/", aws_util:encode_uri(PackageId), "/versions/", aws_util:encode_uri(PackageVersion), "/patch/", aws_util:encode_uri(PatchVersion), ""],
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
                     {<<"OwnerAccount">>, <<"OwnerAccount">>},
                     {<<"UpdatedLatestPatchVersion">>, <<"UpdatedLatestPatchVersion">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns information about an application instance on a device.
describe_application_instance(Client, ApplicationInstanceId)
  when is_map(Client) ->
    describe_application_instance(Client, ApplicationInstanceId, #{}, #{}).

describe_application_instance(Client, ApplicationInstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_application_instance(Client, ApplicationInstanceId, QueryMap, HeadersMap, []).

describe_application_instance(Client, ApplicationInstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/application-instances/", aws_util:encode_uri(ApplicationInstanceId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about an application instance's configuration
%% manifest.
describe_application_instance_details(Client, ApplicationInstanceId)
  when is_map(Client) ->
    describe_application_instance_details(Client, ApplicationInstanceId, #{}, #{}).

describe_application_instance_details(Client, ApplicationInstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_application_instance_details(Client, ApplicationInstanceId, QueryMap, HeadersMap, []).

describe_application_instance_details(Client, ApplicationInstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/application-instances/", aws_util:encode_uri(ApplicationInstanceId), "/details"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a device.
describe_device(Client, DeviceId)
  when is_map(Client) ->
    describe_device(Client, DeviceId, #{}, #{}).

describe_device(Client, DeviceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_device(Client, DeviceId, QueryMap, HeadersMap, []).

describe_device(Client, DeviceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/devices/", aws_util:encode_uri(DeviceId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a device job.
describe_device_job(Client, JobId)
  when is_map(Client) ->
    describe_device_job(Client, JobId, #{}, #{}).

describe_device_job(Client, JobId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_device_job(Client, JobId, QueryMap, HeadersMap, []).

describe_device_job(Client, JobId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/jobs/", aws_util:encode_uri(JobId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a node.
describe_node(Client, NodeId)
  when is_map(Client) ->
    describe_node(Client, NodeId, #{}, #{}).

describe_node(Client, NodeId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_node(Client, NodeId, QueryMap, HeadersMap, []).

describe_node(Client, NodeId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/nodes/", aws_util:encode_uri(NodeId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"OwnerAccount">>, maps:get(<<"OwnerAccount">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a job to create a camera stream node.
describe_node_from_template_job(Client, JobId)
  when is_map(Client) ->
    describe_node_from_template_job(Client, JobId, #{}, #{}).

describe_node_from_template_job(Client, JobId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_node_from_template_job(Client, JobId, QueryMap, HeadersMap, []).

describe_node_from_template_job(Client, JobId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/packages/template-job/", aws_util:encode_uri(JobId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a package.
describe_package(Client, PackageId)
  when is_map(Client) ->
    describe_package(Client, PackageId, #{}, #{}).

describe_package(Client, PackageId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_package(Client, PackageId, QueryMap, HeadersMap, []).

describe_package(Client, PackageId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/packages/metadata/", aws_util:encode_uri(PackageId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a package import job.
describe_package_import_job(Client, JobId)
  when is_map(Client) ->
    describe_package_import_job(Client, JobId, #{}, #{}).

describe_package_import_job(Client, JobId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_package_import_job(Client, JobId, QueryMap, HeadersMap, []).

describe_package_import_job(Client, JobId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/packages/import-jobs/", aws_util:encode_uri(JobId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a package version.
describe_package_version(Client, PackageId, PackageVersion)
  when is_map(Client) ->
    describe_package_version(Client, PackageId, PackageVersion, #{}, #{}).

describe_package_version(Client, PackageId, PackageVersion, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_package_version(Client, PackageId, PackageVersion, QueryMap, HeadersMap, []).

describe_package_version(Client, PackageId, PackageVersion, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/packages/metadata/", aws_util:encode_uri(PackageId), "/versions/", aws_util:encode_uri(PackageVersion), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"OwnerAccount">>, maps:get(<<"OwnerAccount">>, QueryMap, undefined)},
        {<<"PatchVersion">>, maps:get(<<"PatchVersion">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of application instance dependencies.
list_application_instance_dependencies(Client, ApplicationInstanceId)
  when is_map(Client) ->
    list_application_instance_dependencies(Client, ApplicationInstanceId, #{}, #{}).

list_application_instance_dependencies(Client, ApplicationInstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_application_instance_dependencies(Client, ApplicationInstanceId, QueryMap, HeadersMap, []).

list_application_instance_dependencies(Client, ApplicationInstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/application-instances/", aws_util:encode_uri(ApplicationInstanceId), "/package-dependencies"],
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

%% @doc Returns a list of application node instances.
list_application_instance_node_instances(Client, ApplicationInstanceId)
  when is_map(Client) ->
    list_application_instance_node_instances(Client, ApplicationInstanceId, #{}, #{}).

list_application_instance_node_instances(Client, ApplicationInstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_application_instance_node_instances(Client, ApplicationInstanceId, QueryMap, HeadersMap, []).

list_application_instance_node_instances(Client, ApplicationInstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/application-instances/", aws_util:encode_uri(ApplicationInstanceId), "/node-instances"],
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

%% @doc Returns a list of application instances.
list_application_instances(Client)
  when is_map(Client) ->
    list_application_instances(Client, #{}, #{}).

list_application_instances(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_application_instances(Client, QueryMap, HeadersMap, []).

list_application_instances(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/application-instances"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"deviceId">>, maps:get(<<"deviceId">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"statusFilter">>, maps:get(<<"statusFilter">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of devices.
list_devices(Client)
  when is_map(Client) ->
    list_devices(Client, #{}, #{}).

list_devices(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_devices(Client, QueryMap, HeadersMap, []).

list_devices(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/devices"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"DeviceAggregatedStatusFilter">>, maps:get(<<"DeviceAggregatedStatusFilter">>, QueryMap, undefined)},
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NameFilter">>, maps:get(<<"NameFilter">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)},
        {<<"SortBy">>, maps:get(<<"SortBy">>, QueryMap, undefined)},
        {<<"SortOrder">>, maps:get(<<"SortOrder">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of jobs.
list_devices_jobs(Client)
  when is_map(Client) ->
    list_devices_jobs(Client, #{}, #{}).

list_devices_jobs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_devices_jobs(Client, QueryMap, HeadersMap, []).

list_devices_jobs(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/jobs"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"DeviceId">>, maps:get(<<"DeviceId">>, QueryMap, undefined)},
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of camera stream node jobs.
list_node_from_template_jobs(Client)
  when is_map(Client) ->
    list_node_from_template_jobs(Client, #{}, #{}).

list_node_from_template_jobs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_node_from_template_jobs(Client, QueryMap, HeadersMap, []).

list_node_from_template_jobs(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/packages/template-job"],
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

%% @doc Returns a list of nodes.
list_nodes(Client)
  when is_map(Client) ->
    list_nodes(Client, #{}, #{}).

list_nodes(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_nodes(Client, QueryMap, HeadersMap, []).

list_nodes(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/nodes"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"category">>, maps:get(<<"category">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"ownerAccount">>, maps:get(<<"ownerAccount">>, QueryMap, undefined)},
        {<<"packageName">>, maps:get(<<"packageName">>, QueryMap, undefined)},
        {<<"packageVersion">>, maps:get(<<"packageVersion">>, QueryMap, undefined)},
        {<<"patchVersion">>, maps:get(<<"patchVersion">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of package import jobs.
list_package_import_jobs(Client)
  when is_map(Client) ->
    list_package_import_jobs(Client, #{}, #{}).

list_package_import_jobs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_package_import_jobs(Client, QueryMap, HeadersMap, []).

list_package_import_jobs(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/packages/import-jobs"],
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

%% @doc Returns a list of packages.
list_packages(Client)
  when is_map(Client) ->
    list_packages(Client, #{}, #{}).

list_packages(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_packages(Client, QueryMap, HeadersMap, []).

list_packages(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/packages"],
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

%% @doc Returns a list of tags for a resource.
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

%% @doc Creates a device and returns a configuration archive.
%%
%% The configuration archive is a ZIP file that contains a provisioning
%% certificate that is valid for 5 minutes. Name the configuration archive
%% `certificates-omni_device-name.zip' and transfer it to the device
%% within 5 minutes. Use the included USB storage device and connect it to
%% the USB 3.0 port next to the HDMI output.
provision_device(Client, Input) ->
    provision_device(Client, Input, []).
provision_device(Client, Input0, Options0) ->
    Method = post,
    Path = ["/devices"],
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

%% @doc Registers a package version.
register_package_version(Client, PackageId, PackageVersion, PatchVersion, Input) ->
    register_package_version(Client, PackageId, PackageVersion, PatchVersion, Input, []).
register_package_version(Client, PackageId, PackageVersion, PatchVersion, Input0, Options0) ->
    Method = put,
    Path = ["/packages/", aws_util:encode_uri(PackageId), "/versions/", aws_util:encode_uri(PackageVersion), "/patch/", aws_util:encode_uri(PatchVersion), ""],
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

%% @doc Removes an application instance.
remove_application_instance(Client, ApplicationInstanceId, Input) ->
    remove_application_instance(Client, ApplicationInstanceId, Input, []).
remove_application_instance(Client, ApplicationInstanceId, Input0, Options0) ->
    Method = delete,
    Path = ["/application-instances/", aws_util:encode_uri(ApplicationInstanceId), ""],
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

%% @doc Signal camera nodes to stop or resume.
signal_application_instance_node_instances(Client, ApplicationInstanceId, Input) ->
    signal_application_instance_node_instances(Client, ApplicationInstanceId, Input, []).
signal_application_instance_node_instances(Client, ApplicationInstanceId, Input0, Options0) ->
    Method = put,
    Path = ["/application-instances/", aws_util:encode_uri(ApplicationInstanceId), "/node-signals"],
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

%% @doc Tags a resource.
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

%% @doc Removes tags from a resource.
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
                     {<<"tagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a device's metadata.
update_device_metadata(Client, DeviceId, Input) ->
    update_device_metadata(Client, DeviceId, Input, []).
update_device_metadata(Client, DeviceId, Input0, Options0) ->
    Method = put,
    Path = ["/devices/", aws_util:encode_uri(DeviceId), ""],
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
    Client1 = Client#{service => <<"panorama">>},
    Host = build_host(<<"panorama">>, Client1),
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
    Proto = maps:get(proto, Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  jsx:encode(Input).
