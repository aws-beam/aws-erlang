%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon WorkSpaces Thin Client is an affordable device built to work
%% with Amazon Web Services End User Computing (EUC) virtual desktops to
%% provide users with a complete cloud desktop solution.
%%
%% WorkSpaces Thin Client is a compact device designed to connect up to two
%% monitors and USB devices like a keyboard, mouse, headset, and webcam. To
%% maximize endpoint security, WorkSpaces Thin Client devices do not allow
%% local data storage or installation of unapproved applications. The
%% WorkSpaces Thin Client device ships preloaded with device management
%% software.
%%
%% You can use these APIs to complete WorkSpaces Thin Client tasks, such as
%% creating environments or viewing devices. For more information about
%% WorkSpaces Thin Client, including the required permissions to use the
%% service, see the Amazon WorkSpaces Thin Client Administrator Guide:
%% https://docs.aws.amazon.com/workspaces-thin-client/latest/ag/. For more
%% information about using the Command Line Interface (CLI) to manage your
%% WorkSpaces Thin Client resources, see the WorkSpaces Thin Client section
%% of the CLI Reference:
%% https://docs.aws.amazon.com/cli/latest/reference/workspaces-thin-client/index.html.
-module(aws_workspaces_thin_client).

-export([create_environment/2,
         create_environment/3,
         delete_device/3,
         delete_device/4,
         delete_environment/3,
         delete_environment/4,
         deregister_device/3,
         deregister_device/4,
         get_device/2,
         get_device/4,
         get_device/5,
         get_environment/2,
         get_environment/4,
         get_environment/5,
         get_software_set/2,
         get_software_set/4,
         get_software_set/5,
         list_devices/1,
         list_devices/3,
         list_devices/4,
         list_environments/1,
         list_environments/3,
         list_environments/4,
         list_software_sets/1,
         list_software_sets/3,
         list_software_sets/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_device/3,
         update_device/4,
         update_environment/3,
         update_environment/4,
         update_software_set/3,
         update_software_set/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% update_environment_response() :: #{
%%   <<"environment">> => environment_summary()
%% }
-type update_environment_response() :: #{binary() => any()}.


%% Example:
%% list_devices_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_devices_request() :: #{binary() => any()}.


%% Example:
%% update_software_set_request() :: #{
%%   <<"validationStatus">> := list(any())
%% }
-type update_software_set_request() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% update_device_response() :: #{
%%   <<"device">> => device_summary()
%% }
-type update_device_response() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% update_device_request() :: #{
%%   <<"desiredSoftwareSetId">> => string(),
%%   <<"name">> => string(),
%%   <<"softwareSetUpdateSchedule">> => list(any())
%% }
-type update_device_request() :: #{binary() => any()}.


%% Example:
%% environment_summary() :: #{
%%   <<"activationCode">> => string(),
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"desiredSoftwareSetId">> => string(),
%%   <<"desktopArn">> => string(),
%%   <<"desktopEndpoint">> => string(),
%%   <<"desktopType">> => list(any()),
%%   <<"id">> => string(),
%%   <<"maintenanceWindow">> => maintenance_window(),
%%   <<"name">> => string(),
%%   <<"pendingSoftwareSetId">> => string(),
%%   <<"softwareSetUpdateMode">> => list(any()),
%%   <<"softwareSetUpdateSchedule">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type environment_summary() :: #{binary() => any()}.

%% Example:
%% get_environment_request() :: #{}
-type get_environment_request() :: #{}.

%% Example:
%% get_software_set_request() :: #{}
-type get_software_set_request() :: #{}.


%% Example:
%% delete_device_request() :: #{
%%   <<"clientToken">> => string()
%% }
-type delete_device_request() :: #{binary() => any()}.


%% Example:
%% software_set_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"id">> => string(),
%%   <<"releasedAt">> => non_neg_integer(),
%%   <<"supportedUntil">> => non_neg_integer(),
%%   <<"validationStatus">> => list(any()),
%%   <<"version">> => [string()]
%% }
-type software_set_summary() :: #{binary() => any()}.


%% Example:
%% get_environment_response() :: #{
%%   <<"environment">> => environment()
%% }
-type get_environment_response() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list([string()]())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% software_set() :: #{
%%   <<"arn">> => string(),
%%   <<"id">> => string(),
%%   <<"releasedAt">> => non_neg_integer(),
%%   <<"software">> => list(software()),
%%   <<"supportedUntil">> => non_neg_integer(),
%%   <<"validationStatus">> => list(any()),
%%   <<"version">> => [string()]
%% }
-type software_set() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => string(),
%%   <<"resourceId">> => string(),
%%   <<"resourceType">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string(),
%%   <<"resourceId">> => string(),
%%   <<"resourceType">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% get_software_set_response() :: #{
%%   <<"softwareSet">> => software_set()
%% }
-type get_software_set_response() :: #{binary() => any()}.


%% Example:
%% environment() :: #{
%%   <<"activationCode">> => string(),
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"desiredSoftwareSetId">> => string(),
%%   <<"desktopArn">> => string(),
%%   <<"desktopEndpoint">> => string(),
%%   <<"desktopType">> => list(any()),
%%   <<"deviceCreationTags">> => map(),
%%   <<"id">> => string(),
%%   <<"kmsKeyArn">> => string(),
%%   <<"maintenanceWindow">> => maintenance_window(),
%%   <<"name">> => string(),
%%   <<"pendingSoftwareSetId">> => string(),
%%   <<"pendingSoftwareSetVersion">> => [string()],
%%   <<"registeredDevicesCount">> => [integer()],
%%   <<"softwareSetComplianceStatus">> => list(any()),
%%   <<"softwareSetUpdateMode">> => list(any()),
%%   <<"softwareSetUpdateSchedule">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type environment() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => string(),
%%   <<"quotaCode">> => string(),
%%   <<"resourceId">> => string(),
%%   <<"resourceType">> => string(),
%%   <<"serviceCode">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% list_devices_response() :: #{
%%   <<"devices">> => list(device_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_devices_response() :: #{binary() => any()}.


%% Example:
%% list_environments_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_environments_request() :: #{binary() => any()}.

%% Example:
%% deregister_device_response() :: #{}
-type deregister_device_response() :: #{}.


%% Example:
%% validation_exception_field() :: #{
%%   <<"message">> => string(),
%%   <<"name">> => string()
%% }
-type validation_exception_field() :: #{binary() => any()}.


%% Example:
%% list_software_sets_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_software_sets_request() :: #{binary() => any()}.


%% Example:
%% deregister_device_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"targetDeviceStatus">> => list(any())
%% }
-type deregister_device_request() :: #{binary() => any()}.

%% Example:
%% get_device_request() :: #{}
-type get_device_request() :: #{}.


%% Example:
%% create_environment_response() :: #{
%%   <<"environment">> => environment_summary()
%% }
-type create_environment_response() :: #{binary() => any()}.

%% Example:
%% delete_device_response() :: #{}
-type delete_device_response() :: #{}.


%% Example:
%% device_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"currentSoftwareSetId">> => string(),
%%   <<"desiredSoftwareSetId">> => string(),
%%   <<"environmentId">> => string(),
%%   <<"id">> => string(),
%%   <<"lastConnectedAt">> => non_neg_integer(),
%%   <<"lastPostureAt">> => non_neg_integer(),
%%   <<"lastUserId">> => string(),
%%   <<"model">> => [string()],
%%   <<"name">> => string(),
%%   <<"pendingSoftwareSetId">> => string(),
%%   <<"serialNumber">> => [string()],
%%   <<"softwareSetUpdateSchedule">> => list(any()),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type device_summary() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => string(),
%%   <<"retryAfterSeconds">> => integer()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% delete_environment_request() :: #{
%%   <<"clientToken">> => string()
%% }
-type delete_environment_request() :: #{binary() => any()}.


%% Example:
%% list_software_sets_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"softwareSets">> => list(software_set_summary())
%% }
-type list_software_sets_response() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% software() :: #{
%%   <<"name">> => [string()],
%%   <<"version">> => [string()]
%% }
-type software() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"fieldList">> => list(validation_exception_field()),
%%   <<"message">> => string(),
%%   <<"reason">> => list(any())
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => string(),
%%   <<"quotaCode">> => string(),
%%   <<"retryAfterSeconds">> => integer(),
%%   <<"serviceCode">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% list_environments_response() :: #{
%%   <<"environments">> => list(environment_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_environments_response() :: #{binary() => any()}.


%% Example:
%% device() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"currentSoftwareSetId">> => string(),
%%   <<"currentSoftwareSetVersion">> => [string()],
%%   <<"desiredSoftwareSetId">> => string(),
%%   <<"environmentId">> => string(),
%%   <<"id">> => string(),
%%   <<"kmsKeyArn">> => string(),
%%   <<"lastConnectedAt">> => non_neg_integer(),
%%   <<"lastPostureAt">> => non_neg_integer(),
%%   <<"lastUserId">> => string(),
%%   <<"model">> => [string()],
%%   <<"name">> => string(),
%%   <<"pendingSoftwareSetId">> => string(),
%%   <<"pendingSoftwareSetVersion">> => [string()],
%%   <<"serialNumber">> => [string()],
%%   <<"softwareSetComplianceStatus">> => list(any()),
%%   <<"softwareSetUpdateSchedule">> => list(any()),
%%   <<"softwareSetUpdateStatus">> => list(any()),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type device() :: #{binary() => any()}.


%% Example:
%% create_environment_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"desiredSoftwareSetId">> => string(),
%%   <<"desktopArn">> := string(),
%%   <<"desktopEndpoint">> => string(),
%%   <<"deviceCreationTags">> => map(),
%%   <<"kmsKeyArn">> => string(),
%%   <<"maintenanceWindow">> => maintenance_window(),
%%   <<"name">> => string(),
%%   <<"softwareSetUpdateMode">> => list(any()),
%%   <<"softwareSetUpdateSchedule">> => list(any()),
%%   <<"tags">> => map()
%% }
-type create_environment_request() :: #{binary() => any()}.


%% Example:
%% update_environment_request() :: #{
%%   <<"desiredSoftwareSetId">> => string(),
%%   <<"desktopArn">> => string(),
%%   <<"desktopEndpoint">> => string(),
%%   <<"deviceCreationTags">> => map(),
%%   <<"maintenanceWindow">> => maintenance_window(),
%%   <<"name">> => string(),
%%   <<"softwareSetUpdateMode">> => list(any()),
%%   <<"softwareSetUpdateSchedule">> => list(any())
%% }
-type update_environment_request() :: #{binary() => any()}.


%% Example:
%% maintenance_window() :: #{
%%   <<"applyTimeOf">> => list(any()),
%%   <<"daysOfTheWeek">> => list(list(any())()),
%%   <<"endTimeHour">> => integer(),
%%   <<"endTimeMinute">> => integer(),
%%   <<"startTimeHour">> => integer(),
%%   <<"startTimeMinute">> => integer(),
%%   <<"type">> => list(any())
%% }
-type maintenance_window() :: #{binary() => any()}.

%% Example:
%% delete_environment_response() :: #{}
-type delete_environment_response() :: #{}.

%% Example:
%% update_software_set_response() :: #{}
-type update_software_set_response() :: #{}.


%% Example:
%% get_device_response() :: #{
%%   <<"device">> => device()
%% }
-type get_device_response() :: #{binary() => any()}.

-type create_environment_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_device_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_environment_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type deregister_device_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_device_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_environment_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_software_set_errors() ::
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

-type list_environments_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_software_sets_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type tag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_device_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_environment_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_software_set_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates an environment for your thin client devices.
-spec create_environment(aws_client:aws_client(), create_environment_request()) ->
    {ok, create_environment_response(), tuple()} |
    {error, any()} |
    {error, create_environment_errors(), tuple()}.
create_environment(Client, Input) ->
    create_environment(Client, Input, []).

-spec create_environment(aws_client:aws_client(), create_environment_request(), proplists:proplist()) ->
    {ok, create_environment_response(), tuple()} |
    {error, any()} |
    {error, create_environment_errors(), tuple()}.
create_environment(Client, Input0, Options0) ->
    Method = post,
    Path = ["/environments"],
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

%% @doc Deletes a thin client device.
-spec delete_device(aws_client:aws_client(), binary() | list(), delete_device_request()) ->
    {ok, delete_device_response(), tuple()} |
    {error, any()} |
    {error, delete_device_errors(), tuple()}.
delete_device(Client, Id, Input) ->
    delete_device(Client, Id, Input, []).

-spec delete_device(aws_client:aws_client(), binary() | list(), delete_device_request(), proplists:proplist()) ->
    {ok, delete_device_response(), tuple()} |
    {error, any()} |
    {error, delete_device_errors(), tuple()}.
delete_device(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/devices/", aws_util:encode_uri(Id), ""],
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
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an environment.
-spec delete_environment(aws_client:aws_client(), binary() | list(), delete_environment_request()) ->
    {ok, delete_environment_response(), tuple()} |
    {error, any()} |
    {error, delete_environment_errors(), tuple()}.
delete_environment(Client, Id, Input) ->
    delete_environment(Client, Id, Input, []).

-spec delete_environment(aws_client:aws_client(), binary() | list(), delete_environment_request(), proplists:proplist()) ->
    {ok, delete_environment_response(), tuple()} |
    {error, any()} |
    {error, delete_environment_errors(), tuple()}.
delete_environment(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/environments/", aws_util:encode_uri(Id), ""],
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
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deregisters a thin client device.
-spec deregister_device(aws_client:aws_client(), binary() | list(), deregister_device_request()) ->
    {ok, deregister_device_response(), tuple()} |
    {error, any()} |
    {error, deregister_device_errors(), tuple()}.
deregister_device(Client, Id, Input) ->
    deregister_device(Client, Id, Input, []).

-spec deregister_device(aws_client:aws_client(), binary() | list(), deregister_device_request(), proplists:proplist()) ->
    {ok, deregister_device_response(), tuple()} |
    {error, any()} |
    {error, deregister_device_errors(), tuple()}.
deregister_device(Client, Id, Input0, Options0) ->
    Method = post,
    Path = ["/deregister-device/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 202,
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

%% @doc Returns information for a thin client device.
-spec get_device(aws_client:aws_client(), binary() | list()) ->
    {ok, get_device_response(), tuple()} |
    {error, any()} |
    {error, get_device_errors(), tuple()}.
get_device(Client, Id)
  when is_map(Client) ->
    get_device(Client, Id, #{}, #{}).

-spec get_device(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_device_response(), tuple()} |
    {error, any()} |
    {error, get_device_errors(), tuple()}.
get_device(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_device(Client, Id, QueryMap, HeadersMap, []).

-spec get_device(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_device_response(), tuple()} |
    {error, any()} |
    {error, get_device_errors(), tuple()}.
get_device(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/devices/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information for an environment.
-spec get_environment(aws_client:aws_client(), binary() | list()) ->
    {ok, get_environment_response(), tuple()} |
    {error, any()} |
    {error, get_environment_errors(), tuple()}.
get_environment(Client, Id)
  when is_map(Client) ->
    get_environment(Client, Id, #{}, #{}).

-spec get_environment(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_environment_response(), tuple()} |
    {error, any()} |
    {error, get_environment_errors(), tuple()}.
get_environment(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_environment(Client, Id, QueryMap, HeadersMap, []).

-spec get_environment(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_environment_response(), tuple()} |
    {error, any()} |
    {error, get_environment_errors(), tuple()}.
get_environment(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/environments/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information for a software set.
-spec get_software_set(aws_client:aws_client(), binary() | list()) ->
    {ok, get_software_set_response(), tuple()} |
    {error, any()} |
    {error, get_software_set_errors(), tuple()}.
get_software_set(Client, Id)
  when is_map(Client) ->
    get_software_set(Client, Id, #{}, #{}).

-spec get_software_set(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_software_set_response(), tuple()} |
    {error, any()} |
    {error, get_software_set_errors(), tuple()}.
get_software_set(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_software_set(Client, Id, QueryMap, HeadersMap, []).

-spec get_software_set(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_software_set_response(), tuple()} |
    {error, any()} |
    {error, get_software_set_errors(), tuple()}.
get_software_set(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/softwaresets/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of thin client devices.
-spec list_devices(aws_client:aws_client()) ->
    {ok, list_devices_response(), tuple()} |
    {error, any()} |
    {error, list_devices_errors(), tuple()}.
list_devices(Client)
  when is_map(Client) ->
    list_devices(Client, #{}, #{}).

-spec list_devices(aws_client:aws_client(), map(), map()) ->
    {ok, list_devices_response(), tuple()} |
    {error, any()} |
    {error, list_devices_errors(), tuple()}.
list_devices(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_devices(Client, QueryMap, HeadersMap, []).

-spec list_devices(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_devices_response(), tuple()} |
    {error, any()} |
    {error, list_devices_errors(), tuple()}.
list_devices(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/devices"],
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
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of environments.
-spec list_environments(aws_client:aws_client()) ->
    {ok, list_environments_response(), tuple()} |
    {error, any()} |
    {error, list_environments_errors(), tuple()}.
list_environments(Client)
  when is_map(Client) ->
    list_environments(Client, #{}, #{}).

-spec list_environments(aws_client:aws_client(), map(), map()) ->
    {ok, list_environments_response(), tuple()} |
    {error, any()} |
    {error, list_environments_errors(), tuple()}.
list_environments(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_environments(Client, QueryMap, HeadersMap, []).

-spec list_environments(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_environments_response(), tuple()} |
    {error, any()} |
    {error, list_environments_errors(), tuple()}.
list_environments(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/environments"],
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
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of software sets.
-spec list_software_sets(aws_client:aws_client()) ->
    {ok, list_software_sets_response(), tuple()} |
    {error, any()} |
    {error, list_software_sets_errors(), tuple()}.
list_software_sets(Client)
  when is_map(Client) ->
    list_software_sets(Client, #{}, #{}).

-spec list_software_sets(aws_client:aws_client(), map(), map()) ->
    {ok, list_software_sets_response(), tuple()} |
    {error, any()} |
    {error, list_software_sets_errors(), tuple()}.
list_software_sets(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_software_sets(Client, QueryMap, HeadersMap, []).

-spec list_software_sets(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_software_sets_response(), tuple()} |
    {error, any()} |
    {error, list_software_sets_errors(), tuple()}.
list_software_sets(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/softwaresets"],
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
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of tags for a resource.
-spec list_tags_for_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
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

%% @doc Assigns one or more tags (key-value pairs) to the specified resource.
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_response(), tuple()} |
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

%% @doc Removes a tag or tags from a resource.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_response(), tuple()} |
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

%% @doc Updates a thin client device.
-spec update_device(aws_client:aws_client(), binary() | list(), update_device_request()) ->
    {ok, update_device_response(), tuple()} |
    {error, any()} |
    {error, update_device_errors(), tuple()}.
update_device(Client, Id, Input) ->
    update_device(Client, Id, Input, []).

-spec update_device(aws_client:aws_client(), binary() | list(), update_device_request(), proplists:proplist()) ->
    {ok, update_device_response(), tuple()} |
    {error, any()} |
    {error, update_device_errors(), tuple()}.
update_device(Client, Id, Input0, Options0) ->
    Method = patch,
    Path = ["/devices/", aws_util:encode_uri(Id), ""],
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

%% @doc Updates an environment.
-spec update_environment(aws_client:aws_client(), binary() | list(), update_environment_request()) ->
    {ok, update_environment_response(), tuple()} |
    {error, any()} |
    {error, update_environment_errors(), tuple()}.
update_environment(Client, Id, Input) ->
    update_environment(Client, Id, Input, []).

-spec update_environment(aws_client:aws_client(), binary() | list(), update_environment_request(), proplists:proplist()) ->
    {ok, update_environment_response(), tuple()} |
    {error, any()} |
    {error, update_environment_errors(), tuple()}.
update_environment(Client, Id, Input0, Options0) ->
    Method = patch,
    Path = ["/environments/", aws_util:encode_uri(Id), ""],
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

%% @doc Updates a software set.
-spec update_software_set(aws_client:aws_client(), binary() | list(), update_software_set_request()) ->
    {ok, update_software_set_response(), tuple()} |
    {error, any()} |
    {error, update_software_set_errors(), tuple()}.
update_software_set(Client, Id, Input) ->
    update_software_set(Client, Id, Input, []).

-spec update_software_set(aws_client:aws_client(), binary() | list(), update_software_set_request(), proplists:proplist()) ->
    {ok, update_software_set_response(), tuple()} |
    {error, any()} |
    {error, update_software_set_errors(), tuple()}.
update_software_set(Client, Id, Input0, Options0) ->
    Method = patch,
    Path = ["/softwaresets/", aws_util:encode_uri(Id), ""],
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
    Client1 = Client#{service => <<"thinclient">>},
    Host = build_host(<<"thinclient">>, Client1),
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
