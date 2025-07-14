%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Web Services Snow Device Management documentation.
-module(aws_snow_device_management).

-export([cancel_task/3,
         cancel_task/4,
         create_task/2,
         create_task/3,
         describe_device/3,
         describe_device/4,
         describe_device_ec2_instances/3,
         describe_device_ec2_instances/4,
         describe_execution/4,
         describe_execution/5,
         describe_task/3,
         describe_task/4,
         list_device_resources/2,
         list_device_resources/4,
         list_device_resources/5,
         list_devices/1,
         list_devices/3,
         list_devices/4,
         list_executions/2,
         list_executions/4,
         list_executions/5,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_tasks/1,
         list_tasks/3,
         list_tasks/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% physical_network_interface() :: #{
%%   <<"defaultGateway">> => [string()],
%%   <<"ipAddress">> => [string()],
%%   <<"ipAddressAssignment">> => string(),
%%   <<"macAddress">> => [string()],
%%   <<"netmask">> => [string()],
%%   <<"physicalConnectorType">> => string(),
%%   <<"physicalNetworkInterfaceId">> => [string()]
%% }
-type physical_network_interface() :: #{binary() => any()}.


%% Example:
%% list_devices_output() :: #{
%%   <<"devices">> => list(device_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_devices_output() :: #{binary() => any()}.


%% Example:
%% list_executions_output() :: #{
%%   <<"executions">> => list(execution_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_executions_output() :: #{binary() => any()}.


%% Example:
%% describe_device_ec2_output() :: #{
%%   <<"instances">> => list(instance_summary())
%% }
-type describe_device_ec2_output() :: #{binary() => any()}.


%% Example:
%% create_task_input() :: #{
%%   <<"clientToken">> => string(),
%%   <<"command">> := list(),
%%   <<"description">> => string(),
%%   <<"tags">> => map(),
%%   <<"targets">> := list([string()]())
%% }
-type create_task_input() :: #{binary() => any()}.

%% Example:
%% describe_execution_input() :: #{}
-type describe_execution_input() :: #{}.


%% Example:
%% describe_execution_output() :: #{
%%   <<"executionId">> => string(),
%%   <<"lastUpdatedAt">> => [non_neg_integer()],
%%   <<"managedDeviceId">> => string(),
%%   <<"startedAt">> => [non_neg_integer()],
%%   <<"state">> => string(),
%%   <<"taskId">> => string()
%% }
-type describe_execution_output() :: #{binary() => any()}.


%% Example:
%% instance_block_device_mapping() :: #{
%%   <<"deviceName">> => [string()],
%%   <<"ebs">> => ebs_instance_block_device()
%% }
-type instance_block_device_mapping() :: #{binary() => any()}.


%% Example:
%% cancel_task_output() :: #{
%%   <<"taskId">> => [string()]
%% }
-type cancel_task_output() :: #{binary() => any()}.


%% Example:
%% task_summary() :: #{
%%   <<"state">> => string(),
%%   <<"tags">> => map(),
%%   <<"taskArn">> => [string()],
%%   <<"taskId">> => string()
%% }
-type task_summary() :: #{binary() => any()}.

%% Example:
%% describe_device_input() :: #{}
-type describe_device_input() :: #{}.


%% Example:
%% create_task_output() :: #{
%%   <<"taskArn">> => [string()],
%%   <<"taskId">> => [string()]
%% }
-type create_task_output() :: #{binary() => any()}.


%% Example:
%% resource_summary() :: #{
%%   <<"arn">> => [string()],
%%   <<"id">> => [string()],
%%   <<"resourceType">> => [string()]
%% }
-type resource_summary() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_output() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_output() :: #{binary() => any()}.


%% Example:
%% capacity() :: #{
%%   <<"available">> => [float()],
%%   <<"name">> => [string()],
%%   <<"total">> => [float()],
%%   <<"unit">> => [string()],
%%   <<"used">> => [float()]
%% }
-type capacity() :: #{binary() => any()}.


%% Example:
%% execution_summary() :: #{
%%   <<"executionId">> => string(),
%%   <<"managedDeviceId">> => string(),
%%   <<"state">> => string(),
%%   <<"taskId">> => string()
%% }
-type execution_summary() :: #{binary() => any()}.


%% Example:
%% list_tasks_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"tasks">> => list(task_summary())
%% }
-type list_tasks_output() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% describe_device_output() :: #{
%%   <<"associatedWithJob">> => [string()],
%%   <<"deviceCapacities">> => list(capacity()),
%%   <<"deviceState">> => string(),
%%   <<"deviceType">> => [string()],
%%   <<"lastReachedOutAt">> => [non_neg_integer()],
%%   <<"lastUpdatedAt">> => [non_neg_integer()],
%%   <<"managedDeviceArn">> => [string()],
%%   <<"managedDeviceId">> => string(),
%%   <<"physicalNetworkInterfaces">> => list(physical_network_interface()),
%%   <<"software">> => software_information(),
%%   <<"tags">> => map()
%% }
-type describe_device_output() :: #{binary() => any()}.


%% Example:
%% cpu_options() :: #{
%%   <<"coreCount">> => [integer()],
%%   <<"threadsPerCore">> => [integer()]
%% }
-type cpu_options() :: #{binary() => any()}.


%% Example:
%% list_devices_input() :: #{
%%   <<"jobId">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_devices_input() :: #{binary() => any()}.


%% Example:
%% tag_resource_input() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_input() :: #{binary() => any()}.


%% Example:
%% instance_state() :: #{
%%   <<"code">> => [integer()],
%%   <<"name">> => string()
%% }
-type instance_state() :: #{binary() => any()}.

%% Example:
%% reboot() :: #{}
-type reboot() :: #{}.


%% Example:
%% list_device_resources_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"type">> => [string()]
%% }
-type list_device_resources_input() :: #{binary() => any()}.


%% Example:
%% device_summary() :: #{
%%   <<"associatedWithJob">> => [string()],
%%   <<"managedDeviceArn">> => [string()],
%%   <<"managedDeviceId">> => string(),
%%   <<"tags">> => map()
%% }
-type device_summary() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% describe_device_ec2_input() :: #{
%%   <<"instanceIds">> := list([string()]())
%% }
-type describe_device_ec2_input() :: #{binary() => any()}.


%% Example:
%% instance() :: #{
%%   <<"amiLaunchIndex">> => [integer()],
%%   <<"blockDeviceMappings">> => list(instance_block_device_mapping()),
%%   <<"cpuOptions">> => cpu_options(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"imageId">> => [string()],
%%   <<"instanceId">> => [string()],
%%   <<"instanceType">> => [string()],
%%   <<"privateIpAddress">> => [string()],
%%   <<"publicIpAddress">> => [string()],
%%   <<"rootDeviceName">> => [string()],
%%   <<"securityGroups">> => list(security_group_identifier()),
%%   <<"state">> => instance_state(),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type instance() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% unlock() :: #{}
-type unlock() :: #{}.


%% Example:
%% untag_resource_input() :: #{
%%   <<"tagKeys">> := list([string()]())
%% }
-type untag_resource_input() :: #{binary() => any()}.


%% Example:
%% list_device_resources_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"resources">> => list(resource_summary())
%% }
-type list_device_resources_output() :: #{binary() => any()}.


%% Example:
%% describe_task_output() :: #{
%%   <<"completedAt">> => [non_neg_integer()],
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"lastUpdatedAt">> => [non_neg_integer()],
%%   <<"state">> => string(),
%%   <<"tags">> => map(),
%%   <<"targets">> => list([string()]()),
%%   <<"taskArn">> => [string()],
%%   <<"taskId">> => [string()]
%% }
-type describe_task_output() :: #{binary() => any()}.


%% Example:
%% ebs_instance_block_device() :: #{
%%   <<"attachTime">> => [non_neg_integer()],
%%   <<"deleteOnTermination">> => [boolean()],
%%   <<"status">> => string(),
%%   <<"volumeId">> => [string()]
%% }
-type ebs_instance_block_device() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_input() :: #{}
-type list_tags_for_resource_input() :: #{}.

%% Example:
%% describe_task_input() :: #{}
-type describe_task_input() :: #{}.


%% Example:
%% instance_summary() :: #{
%%   <<"instance">> => instance(),
%%   <<"lastUpdatedAt">> => [non_neg_integer()]
%% }
-type instance_summary() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% security_group_identifier() :: #{
%%   <<"groupId">> => [string()],
%%   <<"groupName">> => [string()]
%% }
-type security_group_identifier() :: #{binary() => any()}.


%% Example:
%% software_information() :: #{
%%   <<"installState">> => [string()],
%%   <<"installedVersion">> => [string()],
%%   <<"installingVersion">> => [string()]
%% }
-type software_information() :: #{binary() => any()}.


%% Example:
%% list_tasks_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"state">> => string()
%% }
-type list_tasks_input() :: #{binary() => any()}.


%% Example:
%% list_executions_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"state">> => string(),
%%   <<"taskId">> := string()
%% }
-type list_executions_input() :: #{binary() => any()}.

%% Example:
%% cancel_task_input() :: #{}
-type cancel_task_input() :: #{}.

-type cancel_task_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type create_task_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type describe_device_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_device_ec2_instances_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_execution_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_task_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_device_resources_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_devices_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_executions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_tags_for_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_tasks_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type tag_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Sends a cancel request for a specified task.
%%
%% You can cancel a task only if it's still in a
%% `QUEUED' state. Tasks that are already running can't be cancelled.
%%
%% A task might still run if it's processed from the queue before the
%% `CancelTask' operation changes the task's state.
-spec cancel_task(aws_client:aws_client(), binary() | list(), cancel_task_input()) ->
    {ok, cancel_task_output(), tuple()} |
    {error, any()} |
    {error, cancel_task_errors(), tuple()}.
cancel_task(Client, TaskId, Input) ->
    cancel_task(Client, TaskId, Input, []).

-spec cancel_task(aws_client:aws_client(), binary() | list(), cancel_task_input(), proplists:proplist()) ->
    {ok, cancel_task_output(), tuple()} |
    {error, any()} |
    {error, cancel_task_errors(), tuple()}.
cancel_task(Client, TaskId, Input0, Options0) ->
    Method = post,
    Path = ["/task/", aws_util:encode_uri(TaskId), "/cancel"],
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

%% @doc Instructs one or more devices to start a task, such as unlocking or
%% rebooting.
-spec create_task(aws_client:aws_client(), create_task_input()) ->
    {ok, create_task_output(), tuple()} |
    {error, any()} |
    {error, create_task_errors(), tuple()}.
create_task(Client, Input) ->
    create_task(Client, Input, []).

-spec create_task(aws_client:aws_client(), create_task_input(), proplists:proplist()) ->
    {ok, create_task_output(), tuple()} |
    {error, any()} |
    {error, create_task_errors(), tuple()}.
create_task(Client, Input0, Options0) ->
    Method = post,
    Path = ["/task"],
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

%% @doc Checks device-specific information, such as the device type, software
%% version, IP
%% addresses, and lock status.
-spec describe_device(aws_client:aws_client(), binary() | list(), describe_device_input()) ->
    {ok, describe_device_output(), tuple()} |
    {error, any()} |
    {error, describe_device_errors(), tuple()}.
describe_device(Client, ManagedDeviceId, Input) ->
    describe_device(Client, ManagedDeviceId, Input, []).

-spec describe_device(aws_client:aws_client(), binary() | list(), describe_device_input(), proplists:proplist()) ->
    {ok, describe_device_output(), tuple()} |
    {error, any()} |
    {error, describe_device_errors(), tuple()}.
describe_device(Client, ManagedDeviceId, Input0, Options0) ->
    Method = post,
    Path = ["/managed-device/", aws_util:encode_uri(ManagedDeviceId), "/describe"],
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

%% @doc Checks the current state of the Amazon EC2 instances.
%%
%% The output is similar to
%% `describeDevice', but the results are sourced from the device cache in
%% the
%% Amazon Web Services Cloud and include a subset of the available fields.
-spec describe_device_ec2_instances(aws_client:aws_client(), binary() | list(), describe_device_ec2_input()) ->
    {ok, describe_device_ec2_output(), tuple()} |
    {error, any()} |
    {error, describe_device_ec2_instances_errors(), tuple()}.
describe_device_ec2_instances(Client, ManagedDeviceId, Input) ->
    describe_device_ec2_instances(Client, ManagedDeviceId, Input, []).

-spec describe_device_ec2_instances(aws_client:aws_client(), binary() | list(), describe_device_ec2_input(), proplists:proplist()) ->
    {ok, describe_device_ec2_output(), tuple()} |
    {error, any()} |
    {error, describe_device_ec2_instances_errors(), tuple()}.
describe_device_ec2_instances(Client, ManagedDeviceId, Input0, Options0) ->
    Method = post,
    Path = ["/managed-device/", aws_util:encode_uri(ManagedDeviceId), "/resources/ec2/describe"],
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

%% @doc Checks the status of a remote task running on one or more target
%% devices.
-spec describe_execution(aws_client:aws_client(), binary() | list(), binary() | list(), describe_execution_input()) ->
    {ok, describe_execution_output(), tuple()} |
    {error, any()} |
    {error, describe_execution_errors(), tuple()}.
describe_execution(Client, ManagedDeviceId, TaskId, Input) ->
    describe_execution(Client, ManagedDeviceId, TaskId, Input, []).

-spec describe_execution(aws_client:aws_client(), binary() | list(), binary() | list(), describe_execution_input(), proplists:proplist()) ->
    {ok, describe_execution_output(), tuple()} |
    {error, any()} |
    {error, describe_execution_errors(), tuple()}.
describe_execution(Client, ManagedDeviceId, TaskId, Input0, Options0) ->
    Method = post,
    Path = ["/task/", aws_util:encode_uri(TaskId), "/execution/", aws_util:encode_uri(ManagedDeviceId), ""],
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

%% @doc Checks the metadata for a given task on a device.
-spec describe_task(aws_client:aws_client(), binary() | list(), describe_task_input()) ->
    {ok, describe_task_output(), tuple()} |
    {error, any()} |
    {error, describe_task_errors(), tuple()}.
describe_task(Client, TaskId, Input) ->
    describe_task(Client, TaskId, Input, []).

-spec describe_task(aws_client:aws_client(), binary() | list(), describe_task_input(), proplists:proplist()) ->
    {ok, describe_task_output(), tuple()} |
    {error, any()} |
    {error, describe_task_errors(), tuple()}.
describe_task(Client, TaskId, Input0, Options0) ->
    Method = post,
    Path = ["/task/", aws_util:encode_uri(TaskId), ""],
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

%% @doc Returns a list of the Amazon Web Services resources available for a
%% device.
%%
%% Currently, Amazon EC2 instances are the only supported resource type.
-spec list_device_resources(aws_client:aws_client(), binary() | list()) ->
    {ok, list_device_resources_output(), tuple()} |
    {error, any()} |
    {error, list_device_resources_errors(), tuple()}.
list_device_resources(Client, ManagedDeviceId)
  when is_map(Client) ->
    list_device_resources(Client, ManagedDeviceId, #{}, #{}).

-spec list_device_resources(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_device_resources_output(), tuple()} |
    {error, any()} |
    {error, list_device_resources_errors(), tuple()}.
list_device_resources(Client, ManagedDeviceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_device_resources(Client, ManagedDeviceId, QueryMap, HeadersMap, []).

-spec list_device_resources(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_device_resources_output(), tuple()} |
    {error, any()} |
    {error, list_device_resources_errors(), tuple()}.
list_device_resources(Client, ManagedDeviceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/managed-device/", aws_util:encode_uri(ManagedDeviceId), "/resources"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"type">>, maps:get(<<"type">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of all devices on your Amazon Web Services account
%% that have Amazon Web Services Snow Device Management
%% enabled in the Amazon Web Services Region where the command is run.
-spec list_devices(aws_client:aws_client()) ->
    {ok, list_devices_output(), tuple()} |
    {error, any()} |
    {error, list_devices_errors(), tuple()}.
list_devices(Client)
  when is_map(Client) ->
    list_devices(Client, #{}, #{}).

-spec list_devices(aws_client:aws_client(), map(), map()) ->
    {ok, list_devices_output(), tuple()} |
    {error, any()} |
    {error, list_devices_errors(), tuple()}.
list_devices(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_devices(Client, QueryMap, HeadersMap, []).

-spec list_devices(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_devices_output(), tuple()} |
    {error, any()} |
    {error, list_devices_errors(), tuple()}.
list_devices(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/managed-devices"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"jobId">>, maps:get(<<"jobId">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the status of tasks for one or more target devices.
-spec list_executions(aws_client:aws_client(), binary() | list()) ->
    {ok, list_executions_output(), tuple()} |
    {error, any()} |
    {error, list_executions_errors(), tuple()}.
list_executions(Client, TaskId)
  when is_map(Client) ->
    list_executions(Client, TaskId, #{}, #{}).

-spec list_executions(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_executions_output(), tuple()} |
    {error, any()} |
    {error, list_executions_errors(), tuple()}.
list_executions(Client, TaskId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_executions(Client, TaskId, QueryMap, HeadersMap, []).

-spec list_executions(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_executions_output(), tuple()} |
    {error, any()} |
    {error, list_executions_errors(), tuple()}.
list_executions(Client, TaskId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/executions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"state">>, maps:get(<<"state">>, QueryMap, undefined)},
        {<<"taskId">>, TaskId}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of tags for a managed device or task.
-spec list_tags_for_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of tasks that can be filtered by state.
-spec list_tasks(aws_client:aws_client()) ->
    {ok, list_tasks_output(), tuple()} |
    {error, any()} |
    {error, list_tasks_errors(), tuple()}.
list_tasks(Client)
  when is_map(Client) ->
    list_tasks(Client, #{}, #{}).

-spec list_tasks(aws_client:aws_client(), map(), map()) ->
    {ok, list_tasks_output(), tuple()} |
    {error, any()} |
    {error, list_tasks_errors(), tuple()}.
list_tasks(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tasks(Client, QueryMap, HeadersMap, []).

-spec list_tasks(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_tasks_output(), tuple()} |
    {error, any()} |
    {error, list_tasks_errors(), tuple()}.
list_tasks(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tasks"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"state">>, maps:get(<<"state">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Adds or replaces tags on a device or task.
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
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

%% @doc Removes a tag from a device or task.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
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
    Client1 = Client#{service => <<"snow-device-management">>},
    Host = build_host(<<"snow-device-management">>, Client1),
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
