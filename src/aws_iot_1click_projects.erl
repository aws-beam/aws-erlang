%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc The AWS IoT 1-Click Projects API Reference
-module(aws_iot_1click_projects).

-export([associate_device_with_placement/5,
         associate_device_with_placement/6,
         create_placement/3,
         create_placement/4,
         create_project/2,
         create_project/3,
         delete_placement/4,
         delete_placement/5,
         delete_project/3,
         delete_project/4,
         describe_placement/3,
         describe_placement/5,
         describe_placement/6,
         describe_project/2,
         describe_project/4,
         describe_project/5,
         disassociate_device_from_placement/5,
         disassociate_device_from_placement/6,
         get_devices_in_placement/3,
         get_devices_in_placement/5,
         get_devices_in_placement/6,
         list_placements/2,
         list_placements/4,
         list_placements/5,
         list_projects/1,
         list_projects/3,
         list_projects/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_placement/4,
         update_placement/5,
         update_project/3,
         update_project/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% describe_project_response() :: #{
%%   <<"project">> => project_description()
%% }
-type describe_project_response() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% project_description() :: #{
%%   <<"arn">> => string(),
%%   <<"createdDate">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"placementTemplate">> => placement_template(),
%%   <<"projectName">> => string(),
%%   <<"tags">> => map(),
%%   <<"updatedDate">> => non_neg_integer()
%% }
-type project_description() :: #{binary() => any()}.


%% Example:
%% internal_failure_exception() :: #{
%%   <<"code">> => string(),
%%   <<"message">> => string()
%% }
-type internal_failure_exception() :: #{binary() => any()}.


%% Example:
%% create_placement_request() :: #{
%%   <<"attributes">> => map(),
%%   <<"placementName">> := string()
%% }
-type create_placement_request() :: #{binary() => any()}.

%% Example:
%% update_placement_response() :: #{}
-type update_placement_response() :: #{}.


%% Example:
%% project_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"createdDate">> => non_neg_integer(),
%%   <<"projectName">> => string(),
%%   <<"tags">> => map(),
%%   <<"updatedDate">> => non_neg_integer()
%% }
-type project_summary() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% list_placements_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_placements_request() :: #{binary() => any()}.

%% Example:
%% describe_project_request() :: #{}
-type describe_project_request() :: #{}.


%% Example:
%% placement_description() :: #{
%%   <<"attributes">> => map(),
%%   <<"createdDate">> => non_neg_integer(),
%%   <<"placementName">> => string(),
%%   <<"projectName">> => string(),
%%   <<"updatedDate">> => non_neg_integer()
%% }
-type placement_description() :: #{binary() => any()}.


%% Example:
%% placement_template() :: #{
%%   <<"defaultAttributes">> => map(),
%%   <<"deviceTemplates">> => map()
%% }
-type placement_template() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string()())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% too_many_requests_exception() :: #{
%%   <<"code">> => string(),
%%   <<"message">> => string()
%% }
-type too_many_requests_exception() :: #{binary() => any()}.

%% Example:
%% update_project_response() :: #{}
-type update_project_response() :: #{}.


%% Example:
%% list_placements_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"placements">> => list(placement_summary()())
%% }
-type list_placements_response() :: #{binary() => any()}.

%% Example:
%% create_project_response() :: #{}
-type create_project_response() :: #{}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"code">> => string(),
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% invalid_request_exception() :: #{
%%   <<"code">> => string(),
%%   <<"message">> => string()
%% }
-type invalid_request_exception() :: #{binary() => any()}.


%% Example:
%% associate_device_with_placement_request() :: #{
%%   <<"deviceId">> := string()
%% }
-type associate_device_with_placement_request() :: #{binary() => any()}.


%% Example:
%% describe_placement_response() :: #{
%%   <<"placement">> => placement_description()
%% }
-type describe_placement_response() :: #{binary() => any()}.

%% Example:
%% delete_placement_response() :: #{}
-type delete_placement_response() :: #{}.


%% Example:
%% list_projects_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"projects">> => list(project_summary()())
%% }
-type list_projects_response() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% placement_summary() :: #{
%%   <<"createdDate">> => non_neg_integer(),
%%   <<"placementName">> => string(),
%%   <<"projectName">> => string(),
%%   <<"updatedDate">> => non_neg_integer()
%% }
-type placement_summary() :: #{binary() => any()}.

%% Example:
%% create_placement_response() :: #{}
-type create_placement_response() :: #{}.

%% Example:
%% delete_project_response() :: #{}
-type delete_project_response() :: #{}.


%% Example:
%% update_project_request() :: #{
%%   <<"description">> => string(),
%%   <<"placementTemplate">> => placement_template()
%% }
-type update_project_request() :: #{binary() => any()}.


%% Example:
%% update_placement_request() :: #{
%%   <<"attributes">> => map()
%% }
-type update_placement_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.

%% Example:
%% associate_device_with_placement_response() :: #{}
-type associate_device_with_placement_response() :: #{}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% create_project_request() :: #{
%%   <<"description">> => string(),
%%   <<"placementTemplate">> => placement_template(),
%%   <<"projectName">> := string(),
%%   <<"tags">> => map()
%% }
-type create_project_request() :: #{binary() => any()}.


%% Example:
%% list_projects_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_projects_request() :: #{binary() => any()}.

%% Example:
%% describe_placement_request() :: #{}
-type describe_placement_request() :: #{}.

%% Example:
%% disassociate_device_from_placement_response() :: #{}
-type disassociate_device_from_placement_response() :: #{}.

%% Example:
%% delete_placement_request() :: #{}
-type delete_placement_request() :: #{}.


%% Example:
%% device_template() :: #{
%%   <<"callbackOverrides">> => map(),
%%   <<"deviceType">> => string()
%% }
-type device_template() :: #{binary() => any()}.

%% Example:
%% delete_project_request() :: #{}
-type delete_project_request() :: #{}.

%% Example:
%% get_devices_in_placement_request() :: #{}
-type get_devices_in_placement_request() :: #{}.


%% Example:
%% resource_conflict_exception() :: #{
%%   <<"code">> => string(),
%%   <<"message">> => string()
%% }
-type resource_conflict_exception() :: #{binary() => any()}.


%% Example:
%% get_devices_in_placement_response() :: #{
%%   <<"devices">> => map()
%% }
-type get_devices_in_placement_response() :: #{binary() => any()}.

%% Example:
%% disassociate_device_from_placement_request() :: #{}
-type disassociate_device_from_placement_request() :: #{}.

-type associate_device_with_placement_errors() ::
    resource_conflict_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type create_placement_errors() ::
    resource_conflict_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type create_project_errors() ::
    resource_conflict_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type delete_placement_errors() ::
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    internal_failure_exception().

-type delete_project_errors() ::
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    internal_failure_exception().

-type describe_placement_errors() ::
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type describe_project_errors() ::
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type disassociate_device_from_placement_errors() ::
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    internal_failure_exception().

-type get_devices_in_placement_errors() ::
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type list_placements_errors() ::
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type list_projects_errors() ::
    invalid_request_exception() | 
    internal_failure_exception().

-type list_tags_for_resource_errors() ::
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type tag_resource_errors() ::
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type untag_resource_errors() ::
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type update_placement_errors() ::
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    internal_failure_exception().

-type update_project_errors() ::
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    internal_failure_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Associates a physical device with a placement.
-spec associate_device_with_placement(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), associate_device_with_placement_request()) ->
    {ok, associate_device_with_placement_response(), tuple()} |
    {error, any()} |
    {error, associate_device_with_placement_errors(), tuple()}.
associate_device_with_placement(Client, DeviceTemplateName, PlacementName, ProjectName, Input) ->
    associate_device_with_placement(Client, DeviceTemplateName, PlacementName, ProjectName, Input, []).

-spec associate_device_with_placement(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), associate_device_with_placement_request(), proplists:proplist()) ->
    {ok, associate_device_with_placement_response(), tuple()} |
    {error, any()} |
    {error, associate_device_with_placement_errors(), tuple()}.
associate_device_with_placement(Client, DeviceTemplateName, PlacementName, ProjectName, Input0, Options0) ->
    Method = put,
    Path = ["/projects/", aws_util:encode_uri(ProjectName), "/placements/", aws_util:encode_uri(PlacementName), "/devices/", aws_util:encode_uri(DeviceTemplateName), ""],
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

%% @doc Creates an empty placement.
-spec create_placement(aws_client:aws_client(), binary() | list(), create_placement_request()) ->
    {ok, create_placement_response(), tuple()} |
    {error, any()} |
    {error, create_placement_errors(), tuple()}.
create_placement(Client, ProjectName, Input) ->
    create_placement(Client, ProjectName, Input, []).

-spec create_placement(aws_client:aws_client(), binary() | list(), create_placement_request(), proplists:proplist()) ->
    {ok, create_placement_response(), tuple()} |
    {error, any()} |
    {error, create_placement_errors(), tuple()}.
create_placement(Client, ProjectName, Input0, Options0) ->
    Method = post,
    Path = ["/projects/", aws_util:encode_uri(ProjectName), "/placements"],
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

%% @doc Creates an empty project with a placement template.
%%
%% A project contains zero or more
%% placements that adhere to the placement template defined in the project.
-spec create_project(aws_client:aws_client(), create_project_request()) ->
    {ok, create_project_response(), tuple()} |
    {error, any()} |
    {error, create_project_errors(), tuple()}.
create_project(Client, Input) ->
    create_project(Client, Input, []).

-spec create_project(aws_client:aws_client(), create_project_request(), proplists:proplist()) ->
    {ok, create_project_response(), tuple()} |
    {error, any()} |
    {error, create_project_errors(), tuple()}.
create_project(Client, Input0, Options0) ->
    Method = post,
    Path = ["/projects"],
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

%% @doc Deletes a placement.
%%
%% To delete a placement, it must not have any devices associated with
%% it.
%%
%% When you delete a placement, all associated data becomes irretrievable.
-spec delete_placement(aws_client:aws_client(), binary() | list(), binary() | list(), delete_placement_request()) ->
    {ok, delete_placement_response(), tuple()} |
    {error, any()} |
    {error, delete_placement_errors(), tuple()}.
delete_placement(Client, PlacementName, ProjectName, Input) ->
    delete_placement(Client, PlacementName, ProjectName, Input, []).

-spec delete_placement(aws_client:aws_client(), binary() | list(), binary() | list(), delete_placement_request(), proplists:proplist()) ->
    {ok, delete_placement_response(), tuple()} |
    {error, any()} |
    {error, delete_placement_errors(), tuple()}.
delete_placement(Client, PlacementName, ProjectName, Input0, Options0) ->
    Method = delete,
    Path = ["/projects/", aws_util:encode_uri(ProjectName), "/placements/", aws_util:encode_uri(PlacementName), ""],
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

%% @doc Deletes a project.
%%
%% To delete a project, it must not have any placements associated with
%% it.
%%
%% When you delete a project, all associated data becomes irretrievable.
-spec delete_project(aws_client:aws_client(), binary() | list(), delete_project_request()) ->
    {ok, delete_project_response(), tuple()} |
    {error, any()} |
    {error, delete_project_errors(), tuple()}.
delete_project(Client, ProjectName, Input) ->
    delete_project(Client, ProjectName, Input, []).

-spec delete_project(aws_client:aws_client(), binary() | list(), delete_project_request(), proplists:proplist()) ->
    {ok, delete_project_response(), tuple()} |
    {error, any()} |
    {error, delete_project_errors(), tuple()}.
delete_project(Client, ProjectName, Input0, Options0) ->
    Method = delete,
    Path = ["/projects/", aws_util:encode_uri(ProjectName), ""],
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

%% @doc Describes a placement in a project.
-spec describe_placement(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_placement_response(), tuple()} |
    {error, any()} |
    {error, describe_placement_errors(), tuple()}.
describe_placement(Client, PlacementName, ProjectName)
  when is_map(Client) ->
    describe_placement(Client, PlacementName, ProjectName, #{}, #{}).

-spec describe_placement(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_placement_response(), tuple()} |
    {error, any()} |
    {error, describe_placement_errors(), tuple()}.
describe_placement(Client, PlacementName, ProjectName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_placement(Client, PlacementName, ProjectName, QueryMap, HeadersMap, []).

-spec describe_placement(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_placement_response(), tuple()} |
    {error, any()} |
    {error, describe_placement_errors(), tuple()}.
describe_placement(Client, PlacementName, ProjectName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/projects/", aws_util:encode_uri(ProjectName), "/placements/", aws_util:encode_uri(PlacementName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns an object describing a project.
-spec describe_project(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_project_response(), tuple()} |
    {error, any()} |
    {error, describe_project_errors(), tuple()}.
describe_project(Client, ProjectName)
  when is_map(Client) ->
    describe_project(Client, ProjectName, #{}, #{}).

-spec describe_project(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_project_response(), tuple()} |
    {error, any()} |
    {error, describe_project_errors(), tuple()}.
describe_project(Client, ProjectName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_project(Client, ProjectName, QueryMap, HeadersMap, []).

-spec describe_project(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_project_response(), tuple()} |
    {error, any()} |
    {error, describe_project_errors(), tuple()}.
describe_project(Client, ProjectName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/projects/", aws_util:encode_uri(ProjectName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Removes a physical device from a placement.
-spec disassociate_device_from_placement(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), disassociate_device_from_placement_request()) ->
    {ok, disassociate_device_from_placement_response(), tuple()} |
    {error, any()} |
    {error, disassociate_device_from_placement_errors(), tuple()}.
disassociate_device_from_placement(Client, DeviceTemplateName, PlacementName, ProjectName, Input) ->
    disassociate_device_from_placement(Client, DeviceTemplateName, PlacementName, ProjectName, Input, []).

-spec disassociate_device_from_placement(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), disassociate_device_from_placement_request(), proplists:proplist()) ->
    {ok, disassociate_device_from_placement_response(), tuple()} |
    {error, any()} |
    {error, disassociate_device_from_placement_errors(), tuple()}.
disassociate_device_from_placement(Client, DeviceTemplateName, PlacementName, ProjectName, Input0, Options0) ->
    Method = delete,
    Path = ["/projects/", aws_util:encode_uri(ProjectName), "/placements/", aws_util:encode_uri(PlacementName), "/devices/", aws_util:encode_uri(DeviceTemplateName), ""],
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

%% @doc Returns an object enumerating the devices in a placement.
-spec get_devices_in_placement(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_devices_in_placement_response(), tuple()} |
    {error, any()} |
    {error, get_devices_in_placement_errors(), tuple()}.
get_devices_in_placement(Client, PlacementName, ProjectName)
  when is_map(Client) ->
    get_devices_in_placement(Client, PlacementName, ProjectName, #{}, #{}).

-spec get_devices_in_placement(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_devices_in_placement_response(), tuple()} |
    {error, any()} |
    {error, get_devices_in_placement_errors(), tuple()}.
get_devices_in_placement(Client, PlacementName, ProjectName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_devices_in_placement(Client, PlacementName, ProjectName, QueryMap, HeadersMap, []).

-spec get_devices_in_placement(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_devices_in_placement_response(), tuple()} |
    {error, any()} |
    {error, get_devices_in_placement_errors(), tuple()}.
get_devices_in_placement(Client, PlacementName, ProjectName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/projects/", aws_util:encode_uri(ProjectName), "/placements/", aws_util:encode_uri(PlacementName), "/devices"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the placement(s) of a project.
-spec list_placements(aws_client:aws_client(), binary() | list()) ->
    {ok, list_placements_response(), tuple()} |
    {error, any()} |
    {error, list_placements_errors(), tuple()}.
list_placements(Client, ProjectName)
  when is_map(Client) ->
    list_placements(Client, ProjectName, #{}, #{}).

-spec list_placements(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_placements_response(), tuple()} |
    {error, any()} |
    {error, list_placements_errors(), tuple()}.
list_placements(Client, ProjectName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_placements(Client, ProjectName, QueryMap, HeadersMap, []).

-spec list_placements(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_placements_response(), tuple()} |
    {error, any()} |
    {error, list_placements_errors(), tuple()}.
list_placements(Client, ProjectName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/projects/", aws_util:encode_uri(ProjectName), "/placements"],
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

%% @doc Lists the AWS IoT 1-Click project(s) associated with your AWS account
%% and region.
-spec list_projects(aws_client:aws_client()) ->
    {ok, list_projects_response(), tuple()} |
    {error, any()} |
    {error, list_projects_errors(), tuple()}.
list_projects(Client)
  when is_map(Client) ->
    list_projects(Client, #{}, #{}).

-spec list_projects(aws_client:aws_client(), map(), map()) ->
    {ok, list_projects_response(), tuple()} |
    {error, any()} |
    {error, list_projects_errors(), tuple()}.
list_projects(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_projects(Client, QueryMap, HeadersMap, []).

-spec list_projects(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_projects_response(), tuple()} |
    {error, any()} |
    {error, list_projects_errors(), tuple()}.
list_projects(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/projects"],
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

%% @doc Lists the tags (metadata key/value pairs) which you have assigned to
%% the resource.
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

%% @doc Creates or modifies tags for a resource.
%%
%% Tags are key/value pairs (metadata) that can be
%% used to manage a resource. For more information, see AWS Tagging
%% Strategies:
%% https://aws.amazon.com/answers/account-management/aws-tagging-strategies/.
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

%% @doc Removes one or more tags (metadata key/value pairs) from a resource.
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

%% @doc Updates a placement with the given attributes.
%%
%% To clear an attribute, pass an empty value
%% (i.e., &quot;&quot;).
-spec update_placement(aws_client:aws_client(), binary() | list(), binary() | list(), update_placement_request()) ->
    {ok, update_placement_response(), tuple()} |
    {error, any()} |
    {error, update_placement_errors(), tuple()}.
update_placement(Client, PlacementName, ProjectName, Input) ->
    update_placement(Client, PlacementName, ProjectName, Input, []).

-spec update_placement(aws_client:aws_client(), binary() | list(), binary() | list(), update_placement_request(), proplists:proplist()) ->
    {ok, update_placement_response(), tuple()} |
    {error, any()} |
    {error, update_placement_errors(), tuple()}.
update_placement(Client, PlacementName, ProjectName, Input0, Options0) ->
    Method = put,
    Path = ["/projects/", aws_util:encode_uri(ProjectName), "/placements/", aws_util:encode_uri(PlacementName), ""],
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

%% @doc Updates a project associated with your AWS account and region.
%%
%% With the exception of
%% device template names, you can pass just the values that need to be
%% updated because the update
%% request will change only the values that are provided. To clear a value,
%% pass the empty string
%% (i.e., `&quot;&quot;').
-spec update_project(aws_client:aws_client(), binary() | list(), update_project_request()) ->
    {ok, update_project_response(), tuple()} |
    {error, any()} |
    {error, update_project_errors(), tuple()}.
update_project(Client, ProjectName, Input) ->
    update_project(Client, ProjectName, Input, []).

-spec update_project(aws_client:aws_client(), binary() | list(), update_project_request(), proplists:proplist()) ->
    {ok, update_project_response(), tuple()} |
    {error, any()} |
    {error, update_project_errors(), tuple()}.
update_project(Client, ProjectName, Input0, Options0) ->
    Method = put,
    Path = ["/projects/", aws_util:encode_uri(ProjectName), ""],
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
    Client1 = Client#{service => <<"iot1click">>},
    Host = build_host(<<"projects.iot1click">>, Client1),
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
