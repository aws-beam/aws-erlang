%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Resource Groups lets you organize Amazon Web Services resources such
%% as Amazon Elastic Compute Cloud instances, Amazon Relational Database
%% Service
%% databases, and Amazon Simple Storage Service buckets into groups using
%% criteria that you define as tags.
%%
%% A
%% resource group is a collection of resources that match the resource types
%% specified in a
%% query, and share one or more tags or portions of tags. You can create a
%% group of
%% resources based on their roles in your cloud infrastructure, lifecycle
%% stages, regions,
%% application layers, or virtually any criteria. Resource Groups enable you
%% to automate management
%% tasks, such as those in Amazon Web Services Systems Manager Automation
%% documents, on tag-related resources in
%% Amazon Web Services Systems Manager. Groups of tagged resources also let
%% you quickly view a custom console in
%% Amazon Web Services Systems Manager that shows Config compliance and other
%% monitoring data about member
%% resources.
%%
%% To create a resource group, build a resource query, and specify tags that
%% identify the
%% criteria that members of the group have in common. Tags are key-value
%% pairs.
%%
%% For more information about Resource Groups, see the Resource Groups User
%% Guide: https://docs.aws.amazon.com/ARG/latest/userguide/welcome.html.
%%
%% Resource Groups uses a REST-compliant API that you can use to perform the
%% following types of
%% operations.
%%
%% Create, Read, Update, and Delete (CRUD) operations on resource groups and
%% resource query entities
%%
%% Applying, editing, and removing tags from resource groups
%%
%% Resolving resource group member ARNs so they can be returned as search
%% results
%%
%% Getting data about resources that are members of a group
%%
%% Searching Amazon Web Services resources based on a resource query
-module(aws_resource_groups).

-export([create_group/2,
         create_group/3,
         delete_group/2,
         delete_group/3,
         get_account_settings/2,
         get_account_settings/3,
         get_group/2,
         get_group/3,
         get_group_configuration/2,
         get_group_configuration/3,
         get_group_query/2,
         get_group_query/3,
         get_tags/2,
         get_tags/4,
         get_tags/5,
         group_resources/2,
         group_resources/3,
         list_group_resources/2,
         list_group_resources/3,
         list_groups/2,
         list_groups/3,
         put_group_configuration/2,
         put_group_configuration/3,
         search_resources/2,
         search_resources/3,
         tag/3,
         tag/4,
         ungroup_resources/2,
         ungroup_resources/3,
         untag/3,
         untag/4,
         update_account_settings/2,
         update_account_settings/3,
         update_group/2,
         update_group/3,
         update_group_query/2,
         update_group_query/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% resource_filter() :: #{
%%   <<"Name">> => list(any()),
%%   <<"Values">> => list(string()())
%% }
-type resource_filter() :: #{binary() => any()}.


%% Example:
%% unauthorized_exception() :: #{
%%   <<"Message">> => string()
%% }
-type unauthorized_exception() :: #{binary() => any()}.


%% Example:
%% create_group_input() :: #{
%%   <<"Configuration">> => list(group_configuration_item()()),
%%   <<"Description">> => string(),
%%   <<"Name">> := string(),
%%   <<"ResourceQuery">> => resource_query(),
%%   <<"Tags">> => map()
%% }
-type create_group_input() :: #{binary() => any()}.


%% Example:
%% update_group_query_output() :: #{
%%   <<"GroupQuery">> => group_query()
%% }
-type update_group_query_output() :: #{binary() => any()}.


%% Example:
%% list_group_resources_item() :: #{
%%   <<"Identifier">> => resource_identifier(),
%%   <<"Status">> => resource_status()
%% }
-type list_group_resources_item() :: #{binary() => any()}.


%% Example:
%% forbidden_exception() :: #{
%%   <<"Message">> => string()
%% }
-type forbidden_exception() :: #{binary() => any()}.


%% Example:
%% tag_output() :: #{
%%   <<"Arn">> => string(),
%%   <<"Tags">> => map()
%% }
-type tag_output() :: #{binary() => any()}.


%% Example:
%% method_not_allowed_exception() :: #{
%%   <<"Message">> => string()
%% }
-type method_not_allowed_exception() :: #{binary() => any()}.


%% Example:
%% update_group_query_input() :: #{
%%   <<"Group">> => string(),
%%   <<"GroupName">> => string(),
%%   <<"ResourceQuery">> := resource_query()
%% }
-type update_group_query_input() :: #{binary() => any()}.


%% Example:
%% get_group_configuration_input() :: #{
%%   <<"Group">> => string()
%% }
-type get_group_configuration_input() :: #{binary() => any()}.


%% Example:
%% resource_status() :: #{
%%   <<"Name">> => list(any())
%% }
-type resource_status() :: #{binary() => any()}.


%% Example:
%% resource_query() :: #{
%%   <<"Query">> => string(),
%%   <<"Type">> => list(any())
%% }
-type resource_query() :: #{binary() => any()}.


%% Example:
%% too_many_requests_exception() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_requests_exception() :: #{binary() => any()}.


%% Example:
%% group_identifier() :: #{
%%   <<"GroupArn">> => string(),
%%   <<"GroupName">> => string()
%% }
-type group_identifier() :: #{binary() => any()}.


%% Example:
%% get_tags_output() :: #{
%%   <<"Arn">> => string(),
%%   <<"Tags">> => map()
%% }
-type get_tags_output() :: #{binary() => any()}.


%% Example:
%% untag_input() :: #{
%%   <<"Keys">> := list(string()())
%% }
-type untag_input() :: #{binary() => any()}.


%% Example:
%% update_group_output() :: #{
%%   <<"Group">> => group()
%% }
-type update_group_output() :: #{binary() => any()}.


%% Example:
%% put_group_configuration_input() :: #{
%%   <<"Configuration">> => list(group_configuration_item()()),
%%   <<"Group">> => string()
%% }
-type put_group_configuration_input() :: #{binary() => any()}.


%% Example:
%% list_groups_output() :: #{
%%   <<"GroupIdentifiers">> => list(group_identifier()()),
%%   <<"Groups">> => list(group()()),
%%   <<"NextToken">> => string()
%% }
-type list_groups_output() :: #{binary() => any()}.


%% Example:
%% get_group_query_input() :: #{
%%   <<"Group">> => string(),
%%   <<"GroupName">> => string()
%% }
-type get_group_query_input() :: #{binary() => any()}.


%% Example:
%% get_group_configuration_output() :: #{
%%   <<"GroupConfiguration">> => group_configuration()
%% }
-type get_group_configuration_output() :: #{binary() => any()}.


%% Example:
%% pending_resource() :: #{
%%   <<"ResourceArn">> => string()
%% }
-type pending_resource() :: #{binary() => any()}.


%% Example:
%% get_group_query_output() :: #{
%%   <<"GroupQuery">> => group_query()
%% }
-type get_group_query_output() :: #{binary() => any()}.


%% Example:
%% group_resources_output() :: #{
%%   <<"Failed">> => list(failed_resource()()),
%%   <<"Pending">> => list(pending_resource()()),
%%   <<"Succeeded">> => list(string()())
%% }
-type group_resources_output() :: #{binary() => any()}.


%% Example:
%% resource_identifier() :: #{
%%   <<"ResourceArn">> => string(),
%%   <<"ResourceType">> => string()
%% }
-type resource_identifier() :: #{binary() => any()}.


%% Example:
%% group_configuration_parameter() :: #{
%%   <<"Name">> => string(),
%%   <<"Values">> => list(string()())
%% }
-type group_configuration_parameter() :: #{binary() => any()}.


%% Example:
%% create_group_output() :: #{
%%   <<"Group">> => group(),
%%   <<"GroupConfiguration">> => group_configuration(),
%%   <<"ResourceQuery">> => resource_query(),
%%   <<"Tags">> => map()
%% }
-type create_group_output() :: #{binary() => any()}.


%% Example:
%% ungroup_resources_output() :: #{
%%   <<"Failed">> => list(failed_resource()()),
%%   <<"Pending">> => list(pending_resource()()),
%%   <<"Succeeded">> => list(string()())
%% }
-type ungroup_resources_output() :: #{binary() => any()}.


%% Example:
%% search_resources_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ResourceQuery">> := resource_query()
%% }
-type search_resources_input() :: #{binary() => any()}.


%% Example:
%% not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type not_found_exception() :: #{binary() => any()}.


%% Example:
%% group_filter() :: #{
%%   <<"Name">> => list(any()),
%%   <<"Values">> => list(string()())
%% }
-type group_filter() :: #{binary() => any()}.


%% Example:
%% group_resources_input() :: #{
%%   <<"Group">> := string(),
%%   <<"ResourceArns">> := list(string()())
%% }
-type group_resources_input() :: #{binary() => any()}.


%% Example:
%% search_resources_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"QueryErrors">> => list(query_error()()),
%%   <<"ResourceIdentifiers">> => list(resource_identifier()())
%% }
-type search_resources_output() :: #{binary() => any()}.


%% Example:
%% list_group_resources_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"QueryErrors">> => list(query_error()()),
%%   <<"ResourceIdentifiers">> => list(resource_identifier()()),
%%   <<"Resources">> => list(list_group_resources_item()())
%% }
-type list_group_resources_output() :: #{binary() => any()}.


%% Example:
%% delete_group_input() :: #{
%%   <<"Group">> => string(),
%%   <<"GroupName">> => string()
%% }
-type delete_group_input() :: #{binary() => any()}.


%% Example:
%% group_query() :: #{
%%   <<"GroupName">> => string(),
%%   <<"ResourceQuery">> => resource_query()
%% }
-type group_query() :: #{binary() => any()}.


%% Example:
%% update_account_settings_input() :: #{
%%   <<"GroupLifecycleEventsDesiredStatus">> => list(any())
%% }
-type update_account_settings_input() :: #{binary() => any()}.


%% Example:
%% get_group_output() :: #{
%%   <<"Group">> => group()
%% }
-type get_group_output() :: #{binary() => any()}.


%% Example:
%% update_account_settings_output() :: #{
%%   <<"AccountSettings">> => account_settings()
%% }
-type update_account_settings_output() :: #{binary() => any()}.


%% Example:
%% get_group_input() :: #{
%%   <<"Group">> => string(),
%%   <<"GroupName">> => string()
%% }
-type get_group_input() :: #{binary() => any()}.


%% Example:
%% list_group_resources_input() :: #{
%%   <<"Filters">> => list(resource_filter()()),
%%   <<"Group">> => string(),
%%   <<"GroupName">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_group_resources_input() :: #{binary() => any()}.


%% Example:
%% account_settings() :: #{
%%   <<"GroupLifecycleEventsDesiredStatus">> => list(any()),
%%   <<"GroupLifecycleEventsStatus">> => list(any()),
%%   <<"GroupLifecycleEventsStatusMessage">> => string()
%% }
-type account_settings() :: #{binary() => any()}.


%% Example:
%% update_group_input() :: #{
%%   <<"Description">> => string(),
%%   <<"Group">> => string(),
%%   <<"GroupName">> => string()
%% }
-type update_group_input() :: #{binary() => any()}.


%% Example:
%% internal_server_error_exception() :: #{
%%   <<"Message">> => string()
%% }
-type internal_server_error_exception() :: #{binary() => any()}.

%% Example:
%% get_tags_input() :: #{}
-type get_tags_input() :: #{}.


%% Example:
%% group() :: #{
%%   <<"Description">> => string(),
%%   <<"GroupArn">> => string(),
%%   <<"Name">> => string()
%% }
-type group() :: #{binary() => any()}.


%% Example:
%% get_account_settings_output() :: #{
%%   <<"AccountSettings">> => account_settings()
%% }
-type get_account_settings_output() :: #{binary() => any()}.


%% Example:
%% ungroup_resources_input() :: #{
%%   <<"Group">> := string(),
%%   <<"ResourceArns">> := list(string()())
%% }
-type ungroup_resources_input() :: #{binary() => any()}.


%% Example:
%% list_groups_input() :: #{
%%   <<"Filters">> => list(group_filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_groups_input() :: #{binary() => any()}.


%% Example:
%% untag_output() :: #{
%%   <<"Arn">> => string(),
%%   <<"Keys">> => list(string()())
%% }
-type untag_output() :: #{binary() => any()}.


%% Example:
%% failed_resource() :: #{
%%   <<"ErrorCode">> => string(),
%%   <<"ErrorMessage">> => string(),
%%   <<"ResourceArn">> => string()
%% }
-type failed_resource() :: #{binary() => any()}.


%% Example:
%% bad_request_exception() :: #{
%%   <<"Message">> => string()
%% }
-type bad_request_exception() :: #{binary() => any()}.


%% Example:
%% delete_group_output() :: #{
%%   <<"Group">> => group()
%% }
-type delete_group_output() :: #{binary() => any()}.


%% Example:
%% group_configuration() :: #{
%%   <<"Configuration">> => list(group_configuration_item()()),
%%   <<"FailureReason">> => string(),
%%   <<"ProposedConfiguration">> => list(group_configuration_item()()),
%%   <<"Status">> => list(any())
%% }
-type group_configuration() :: #{binary() => any()}.


%% Example:
%% query_error() :: #{
%%   <<"ErrorCode">> => list(any()),
%%   <<"Message">> => string()
%% }
-type query_error() :: #{binary() => any()}.

%% Example:
%% put_group_configuration_output() :: #{}
-type put_group_configuration_output() :: #{}.


%% Example:
%% group_configuration_item() :: #{
%%   <<"Parameters">> => list(group_configuration_parameter()()),
%%   <<"Type">> => string()
%% }
-type group_configuration_item() :: #{binary() => any()}.


%% Example:
%% tag_input() :: #{
%%   <<"Tags">> := map()
%% }
-type tag_input() :: #{binary() => any()}.

-type create_group_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type delete_group_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type get_account_settings_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type get_group_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type get_group_configuration_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type get_group_query_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type get_tags_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type group_resources_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type list_group_resources_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type list_groups_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type put_group_configuration_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type search_resources_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type tag_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type ungroup_resources_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type untag_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type update_account_settings_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type update_group_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type update_group_query_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a resource group with the specified name and description.
%%
%% You can optionally
%% include either a resource query or a service configuration. For more
%% information about
%% constructing a resource query, see Build queries and groups in
%% Resource Groups:
%% https://docs.aws.amazon.com/ARG/latest/userguide/getting_started-query.html
%% in the Resource Groups User Guide. For more information
%% about service-linked groups and service configurations, see Service
%% configurations for Resource Groups:
%% https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html.
%%
%% Minimum permissions
%%
%% To run this command, you must have the following permissions:
%%
%% `resource-groups:CreateGroup'
-spec create_group(aws_client:aws_client(), create_group_input()) ->
    {ok, create_group_output(), tuple()} |
    {error, any()} |
    {error, create_group_errors(), tuple()}.
create_group(Client, Input) ->
    create_group(Client, Input, []).

-spec create_group(aws_client:aws_client(), create_group_input(), proplists:proplist()) ->
    {ok, create_group_output(), tuple()} |
    {error, any()} |
    {error, create_group_errors(), tuple()}.
create_group(Client, Input0, Options0) ->
    Method = post,
    Path = ["/groups"],
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

%% @doc Deletes the specified resource group.
%%
%% Deleting a resource group does not delete any
%% resources that are members of the group; it only deletes the group
%% structure.
%%
%% Minimum permissions
%%
%% To run this command, you must have the following permissions:
%%
%% `resource-groups:DeleteGroup'
-spec delete_group(aws_client:aws_client(), delete_group_input()) ->
    {ok, delete_group_output(), tuple()} |
    {error, any()} |
    {error, delete_group_errors(), tuple()}.
delete_group(Client, Input) ->
    delete_group(Client, Input, []).

-spec delete_group(aws_client:aws_client(), delete_group_input(), proplists:proplist()) ->
    {ok, delete_group_output(), tuple()} |
    {error, any()} |
    {error, delete_group_errors(), tuple()}.
delete_group(Client, Input0, Options0) ->
    Method = post,
    Path = ["/delete-group"],
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

%% @doc Retrieves the current status of optional features in Resource Groups.
-spec get_account_settings(aws_client:aws_client(), #{}) ->
    {ok, get_account_settings_output(), tuple()} |
    {error, any()} |
    {error, get_account_settings_errors(), tuple()}.
get_account_settings(Client, Input) ->
    get_account_settings(Client, Input, []).

-spec get_account_settings(aws_client:aws_client(), #{}, proplists:proplist()) ->
    {ok, get_account_settings_output(), tuple()} |
    {error, any()} |
    {error, get_account_settings_errors(), tuple()}.
get_account_settings(Client, Input0, Options0) ->
    Method = post,
    Path = ["/get-account-settings"],
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

%% @doc Returns information about a specified resource group.
%%
%% Minimum permissions
%%
%% To run this command, you must have the following permissions:
%%
%% `resource-groups:GetGroup'
-spec get_group(aws_client:aws_client(), get_group_input()) ->
    {ok, get_group_output(), tuple()} |
    {error, any()} |
    {error, get_group_errors(), tuple()}.
get_group(Client, Input) ->
    get_group(Client, Input, []).

-spec get_group(aws_client:aws_client(), get_group_input(), proplists:proplist()) ->
    {ok, get_group_output(), tuple()} |
    {error, any()} |
    {error, get_group_errors(), tuple()}.
get_group(Client, Input0, Options0) ->
    Method = post,
    Path = ["/get-group"],
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

%% @doc Retrieves the service configuration associated with the specified
%% resource group.
%%
%% For
%% details about the service configuration syntax, see Service configurations
%% for Resource Groups:
%% https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html.
%%
%% Minimum permissions
%%
%% To run this command, you must have the following permissions:
%%
%% `resource-groups:GetGroupConfiguration'
-spec get_group_configuration(aws_client:aws_client(), get_group_configuration_input()) ->
    {ok, get_group_configuration_output(), tuple()} |
    {error, any()} |
    {error, get_group_configuration_errors(), tuple()}.
get_group_configuration(Client, Input) ->
    get_group_configuration(Client, Input, []).

-spec get_group_configuration(aws_client:aws_client(), get_group_configuration_input(), proplists:proplist()) ->
    {ok, get_group_configuration_output(), tuple()} |
    {error, any()} |
    {error, get_group_configuration_errors(), tuple()}.
get_group_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/get-group-configuration"],
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

%% @doc Retrieves the resource query associated with the specified resource
%% group.
%%
%% For more
%% information about resource queries, see Create
%% a tag-based group in Resource Groups:
%% https://docs.aws.amazon.com/ARG/latest/userguide/gettingstarted-query.html#gettingstarted-query-cli-tag.
%%
%% Minimum permissions
%%
%% To run this command, you must have the following permissions:
%%
%% `resource-groups:GetGroupQuery'
-spec get_group_query(aws_client:aws_client(), get_group_query_input()) ->
    {ok, get_group_query_output(), tuple()} |
    {error, any()} |
    {error, get_group_query_errors(), tuple()}.
get_group_query(Client, Input) ->
    get_group_query(Client, Input, []).

-spec get_group_query(aws_client:aws_client(), get_group_query_input(), proplists:proplist()) ->
    {ok, get_group_query_output(), tuple()} |
    {error, any()} |
    {error, get_group_query_errors(), tuple()}.
get_group_query(Client, Input0, Options0) ->
    Method = post,
    Path = ["/get-group-query"],
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

%% @doc Returns a list of tags that are associated with a resource group,
%% specified by an
%% ARN.
%%
%% Minimum permissions
%%
%% To run this command, you must have the following permissions:
%%
%% `resource-groups:GetTags'
-spec get_tags(aws_client:aws_client(), binary() | list()) ->
    {ok, get_tags_output(), tuple()} |
    {error, any()} |
    {error, get_tags_errors(), tuple()}.
get_tags(Client, Arn)
  when is_map(Client) ->
    get_tags(Client, Arn, #{}, #{}).

-spec get_tags(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_tags_output(), tuple()} |
    {error, any()} |
    {error, get_tags_errors(), tuple()}.
get_tags(Client, Arn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_tags(Client, Arn, QueryMap, HeadersMap, []).

-spec get_tags(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_tags_output(), tuple()} |
    {error, any()} |
    {error, get_tags_errors(), tuple()}.
get_tags(Client, Arn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/resources/", aws_util:encode_uri(Arn), "/tags"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Adds the specified resources to the specified group.
%%
%% You can use this operation with only resource groups that are configured
%% with the
%% following types:
%%
%% `AWS::EC2::HostManagement'
%%
%% `AWS::EC2::CapacityReservationPool'
%%
%% Other resource group type and resource types aren't currently
%% supported by this
%% operation.
%%
%% Minimum permissions
%%
%% To run this command, you must have the following permissions:
%%
%% `resource-groups:GroupResources'
-spec group_resources(aws_client:aws_client(), group_resources_input()) ->
    {ok, group_resources_output(), tuple()} |
    {error, any()} |
    {error, group_resources_errors(), tuple()}.
group_resources(Client, Input) ->
    group_resources(Client, Input, []).

-spec group_resources(aws_client:aws_client(), group_resources_input(), proplists:proplist()) ->
    {ok, group_resources_output(), tuple()} |
    {error, any()} |
    {error, group_resources_errors(), tuple()}.
group_resources(Client, Input0, Options0) ->
    Method = post,
    Path = ["/group-resources"],
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

%% @doc Returns a list of ARNs of the resources that are members of a
%% specified resource
%% group.
%%
%% Minimum permissions
%%
%% To run this command, you must have the following permissions:
%%
%% `resource-groups:ListGroupResources'
%%
%% `cloudformation:DescribeStacks'
%%
%% `cloudformation:ListStackResources'
%%
%% `tag:GetResources'
-spec list_group_resources(aws_client:aws_client(), list_group_resources_input()) ->
    {ok, list_group_resources_output(), tuple()} |
    {error, any()} |
    {error, list_group_resources_errors(), tuple()}.
list_group_resources(Client, Input) ->
    list_group_resources(Client, Input, []).

-spec list_group_resources(aws_client:aws_client(), list_group_resources_input(), proplists:proplist()) ->
    {ok, list_group_resources_output(), tuple()} |
    {error, any()} |
    {error, list_group_resources_errors(), tuple()}.
list_group_resources(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-group-resources"],
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

%% @doc Returns a list of existing Resource Groups in your account.
%%
%% Minimum permissions
%%
%% To run this command, you must have the following permissions:
%%
%% `resource-groups:ListGroups'
-spec list_groups(aws_client:aws_client(), list_groups_input()) ->
    {ok, list_groups_output(), tuple()} |
    {error, any()} |
    {error, list_groups_errors(), tuple()}.
list_groups(Client, Input) ->
    list_groups(Client, Input, []).

-spec list_groups(aws_client:aws_client(), list_groups_input(), proplists:proplist()) ->
    {ok, list_groups_output(), tuple()} |
    {error, any()} |
    {error, list_groups_errors(), tuple()}.
list_groups(Client, Input0, Options0) ->
    Method = post,
    Path = ["/groups-list"],
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
                     {<<"maxResults">>, <<"MaxResults">>},
                     {<<"nextToken">>, <<"NextToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Attaches a service configuration to the specified group.
%%
%% This occurs asynchronously,
%% and can take time to complete. You can use `GetGroupConfiguration' to
%% check the status of the update.
%%
%% Minimum permissions
%%
%% To run this command, you must have the following permissions:
%%
%% `resource-groups:PutGroupConfiguration'
-spec put_group_configuration(aws_client:aws_client(), put_group_configuration_input()) ->
    {ok, put_group_configuration_output(), tuple()} |
    {error, any()} |
    {error, put_group_configuration_errors(), tuple()}.
put_group_configuration(Client, Input) ->
    put_group_configuration(Client, Input, []).

-spec put_group_configuration(aws_client:aws_client(), put_group_configuration_input(), proplists:proplist()) ->
    {ok, put_group_configuration_output(), tuple()} |
    {error, any()} |
    {error, put_group_configuration_errors(), tuple()}.
put_group_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/put-group-configuration"],
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

%% @doc Returns a list of Amazon Web Services resource identifiers that
%% matches the specified query.
%%
%% The
%% query uses the same format as a resource query in a `CreateGroup' or
%% `UpdateGroupQuery' operation.
%%
%% Minimum permissions
%%
%% To run this command, you must have the following permissions:
%%
%% `resource-groups:SearchResources'
%%
%% `cloudformation:DescribeStacks'
%%
%% `cloudformation:ListStackResources'
%%
%% `tag:GetResources'
-spec search_resources(aws_client:aws_client(), search_resources_input()) ->
    {ok, search_resources_output(), tuple()} |
    {error, any()} |
    {error, search_resources_errors(), tuple()}.
search_resources(Client, Input) ->
    search_resources(Client, Input, []).

-spec search_resources(aws_client:aws_client(), search_resources_input(), proplists:proplist()) ->
    {ok, search_resources_output(), tuple()} |
    {error, any()} |
    {error, search_resources_errors(), tuple()}.
search_resources(Client, Input0, Options0) ->
    Method = post,
    Path = ["/resources/search"],
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

%% @doc Adds tags to a resource group with the specified ARN.
%%
%% Existing tags on a resource
%% group are not changed if they are not specified in the request parameters.
%%
%% Do not store personally identifiable information (PII) or other
%% confidential or
%% sensitive information in tags. We use tags to provide you with billing and
%% administration services. Tags are not intended to be used for private or
%% sensitive
%% data.
%%
%% Minimum permissions
%%
%% To run this command, you must have the following permissions:
%%
%% `resource-groups:Tag'
-spec tag(aws_client:aws_client(), binary() | list(), tag_input()) ->
    {ok, tag_output(), tuple()} |
    {error, any()} |
    {error, tag_errors(), tuple()}.
tag(Client, Arn, Input) ->
    tag(Client, Arn, Input, []).

-spec tag(aws_client:aws_client(), binary() | list(), tag_input(), proplists:proplist()) ->
    {ok, tag_output(), tuple()} |
    {error, any()} |
    {error, tag_errors(), tuple()}.
tag(Client, Arn, Input0, Options0) ->
    Method = put,
    Path = ["/resources/", aws_util:encode_uri(Arn), "/tags"],
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

%% @doc Removes the specified resources from the specified group.
%%
%% This operation works only
%% with static groups that you populated using the `GroupResources'
%% operation. It doesn't work with any resource groups that are
%% automatically populated by
%% tag-based or CloudFormation stack-based queries.
%%
%% Minimum permissions
%%
%% To run this command, you must have the following permissions:
%%
%% `resource-groups:UngroupResources'
-spec ungroup_resources(aws_client:aws_client(), ungroup_resources_input()) ->
    {ok, ungroup_resources_output(), tuple()} |
    {error, any()} |
    {error, ungroup_resources_errors(), tuple()}.
ungroup_resources(Client, Input) ->
    ungroup_resources(Client, Input, []).

-spec ungroup_resources(aws_client:aws_client(), ungroup_resources_input(), proplists:proplist()) ->
    {ok, ungroup_resources_output(), tuple()} |
    {error, any()} |
    {error, ungroup_resources_errors(), tuple()}.
ungroup_resources(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ungroup-resources"],
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

%% @doc Deletes tags from a specified resource group.
%%
%% Minimum permissions
%%
%% To run this command, you must have the following permissions:
%%
%% `resource-groups:Untag'
-spec untag(aws_client:aws_client(), binary() | list(), untag_input()) ->
    {ok, untag_output(), tuple()} |
    {error, any()} |
    {error, untag_errors(), tuple()}.
untag(Client, Arn, Input) ->
    untag(Client, Arn, Input, []).

-spec untag(aws_client:aws_client(), binary() | list(), untag_input(), proplists:proplist()) ->
    {ok, untag_output(), tuple()} |
    {error, any()} |
    {error, untag_errors(), tuple()}.
untag(Client, Arn, Input0, Options0) ->
    Method = patch,
    Path = ["/resources/", aws_util:encode_uri(Arn), "/tags"],
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

%% @doc Turns on or turns off optional features in Resource Groups.
%%
%% The preceding example shows that the request to turn on group lifecycle
%% events is
%% `IN_PROGRESS'. You can call the `GetAccountSettings'
%% operation to check for completion by looking for
%% `GroupLifecycleEventsStatus'
%% to change to `ACTIVE'.
-spec update_account_settings(aws_client:aws_client(), update_account_settings_input()) ->
    {ok, update_account_settings_output(), tuple()} |
    {error, any()} |
    {error, update_account_settings_errors(), tuple()}.
update_account_settings(Client, Input) ->
    update_account_settings(Client, Input, []).

-spec update_account_settings(aws_client:aws_client(), update_account_settings_input(), proplists:proplist()) ->
    {ok, update_account_settings_output(), tuple()} |
    {error, any()} |
    {error, update_account_settings_errors(), tuple()}.
update_account_settings(Client, Input0, Options0) ->
    Method = post,
    Path = ["/update-account-settings"],
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

%% @doc Updates the description for an existing group.
%%
%% You cannot update the name of a
%% resource group.
%%
%% Minimum permissions
%%
%% To run this command, you must have the following permissions:
%%
%% `resource-groups:UpdateGroup'
-spec update_group(aws_client:aws_client(), update_group_input()) ->
    {ok, update_group_output(), tuple()} |
    {error, any()} |
    {error, update_group_errors(), tuple()}.
update_group(Client, Input) ->
    update_group(Client, Input, []).

-spec update_group(aws_client:aws_client(), update_group_input(), proplists:proplist()) ->
    {ok, update_group_output(), tuple()} |
    {error, any()} |
    {error, update_group_errors(), tuple()}.
update_group(Client, Input0, Options0) ->
    Method = post,
    Path = ["/update-group"],
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

%% @doc Updates the resource query of a group.
%%
%% For more information about resource queries,
%% see Create a tag-based group in Resource Groups:
%% https://docs.aws.amazon.com/ARG/latest/userguide/gettingstarted-query.html#gettingstarted-query-cli-tag.
%%
%% Minimum permissions
%%
%% To run this command, you must have the following permissions:
%%
%% `resource-groups:UpdateGroupQuery'
-spec update_group_query(aws_client:aws_client(), update_group_query_input()) ->
    {ok, update_group_query_output(), tuple()} |
    {error, any()} |
    {error, update_group_query_errors(), tuple()}.
update_group_query(Client, Input) ->
    update_group_query(Client, Input, []).

-spec update_group_query(aws_client:aws_client(), update_group_query_input(), proplists:proplist()) ->
    {ok, update_group_query_output(), tuple()} |
    {error, any()} |
    {error, update_group_query_errors(), tuple()}.
update_group_query(Client, Input0, Options0) ->
    Method = post,
    Path = ["/update-group-query"],
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
    Client1 = Client#{service => <<"resource-groups">>},
    Host = build_host(<<"resource-groups">>, Client1),
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
