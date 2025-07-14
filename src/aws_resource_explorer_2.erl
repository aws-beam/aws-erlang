%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Web Services Resource Explorer is a resource search and
%% discovery service.
%%
%% By using Resource Explorer, you can
%% explore your resources using an internet search engine-like experience.
%% Examples of
%% resources include Amazon Relational Database Service (Amazon RDS)
%% instances, Amazon Simple Storage Service (Amazon S3) buckets, or Amazon
%% DynamoDB
%% tables. You can search for your resources using resource metadata like
%% names, tags, and
%% IDs. Resource Explorer can search across all of the Amazon Web Services
%% Regions in your account in which you turn
%% the service on, to simplify your cross-Region workloads.
%%
%% Resource Explorer scans the resources in each of the Amazon Web Services
%% Regions in your Amazon Web Services account in which
%% you turn on Resource Explorer. Resource Explorer creates
%% and maintains an index:
%% https://docs.aws.amazon.com/resource-explorer/latest/userguide/getting-started-terms-and-concepts.html#term-index
%% in each Region, with the details of that Region's
%% resources.
%%
%% You can search across all of the
%% indexed Regions in your account:
%% https://docs.aws.amazon.com/resource-explorer/latest/userguide/manage-aggregator-region.html
%% by designating one of your Amazon Web Services Regions to
%% contain the aggregator index for the account. When you promote a local
%% index
%% in a Region to become the aggregator index for the account:
%% https://docs.aws.amazon.com/resource-explorer/latest/userguide/manage-aggregator-region-turn-on.html,
%% Resource Explorer automatically
%% replicates the index information from all local indexes in the other
%% Regions to the
%% aggregator index. Therefore, the Region with the aggregator index has a
%% copy of all resource
%% information for all Regions in the account where you turned on Resource
%% Explorer. As a result,
%% views in the aggregator index Region include resources from all of the
%% indexed Regions in your
%% account.
%%
%% For more information about Amazon Web Services Resource Explorer,
%% including how to enable and configure the
%% service, see the Amazon Web Services Resource Explorer User Guide:
%% https://docs.aws.amazon.com/resource-explorer/latest/userguide/.
-module(aws_resource_explorer_2).

-export([associate_default_view/2,
         associate_default_view/3,
         batch_get_view/2,
         batch_get_view/3,
         create_index/2,
         create_index/3,
         create_view/2,
         create_view/3,
         delete_index/2,
         delete_index/3,
         delete_view/2,
         delete_view/3,
         disassociate_default_view/2,
         disassociate_default_view/3,
         get_account_level_service_configuration/2,
         get_account_level_service_configuration/3,
         get_default_view/2,
         get_default_view/3,
         get_index/2,
         get_index/3,
         get_managed_view/2,
         get_managed_view/3,
         get_view/2,
         get_view/3,
         list_indexes/2,
         list_indexes/3,
         list_indexes_for_members/2,
         list_indexes_for_members/3,
         list_managed_views/2,
         list_managed_views/3,
         list_resources/2,
         list_resources/3,
         list_supported_resource_types/2,
         list_supported_resource_types/3,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_views/2,
         list_views/3,
         search/2,
         search/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_index_type/2,
         update_index_type/3,
         update_view/2,
         update_view/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% create_index_output() :: #{
%%   <<"Arn">> => [string()],
%%   <<"CreatedAt">> => [non_neg_integer()],
%%   <<"State">> => string()
%% }
-type create_index_output() :: #{binary() => any()}.


%% Example:
%% resource_property() :: #{
%%   <<"Data">> => [any()],
%%   <<"LastReportedAt">> => [non_neg_integer()],
%%   <<"Name">> => [string()]
%% }
-type resource_property() :: #{binary() => any()}.


%% Example:
%% batch_get_view_output() :: #{
%%   <<"Errors">> => list(batch_get_view_error()),
%%   <<"Views">> => list(view())
%% }
-type batch_get_view_output() :: #{binary() => any()}.


%% Example:
%% unauthorized_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type unauthorized_exception() :: #{binary() => any()}.


%% Example:
%% create_view_output() :: #{
%%   <<"View">> => view()
%% }
-type create_view_output() :: #{binary() => any()}.


%% Example:
%% list_indexes_for_members_input() :: #{
%%   <<"AccountIdList">> := list(string()),
%%   <<"MaxResults">> => [integer()],
%%   <<"NextToken">> => [string()]
%% }
-type list_indexes_for_members_input() :: #{binary() => any()}.


%% Example:
%% included_property() :: #{
%%   <<"Name">> => [string()]
%% }
-type included_property() :: #{binary() => any()}.


%% Example:
%% search_input() :: #{
%%   <<"MaxResults">> => [integer()],
%%   <<"NextToken">> => [string()],
%%   <<"QueryString">> := string(),
%%   <<"ViewArn">> => [string()]
%% }
-type search_input() :: #{binary() => any()}.


%% Example:
%% view() :: #{
%%   <<"Filters">> => search_filter(),
%%   <<"IncludedProperties">> => list(included_property()),
%%   <<"LastUpdatedAt">> => [non_neg_integer()],
%%   <<"Owner">> => [string()],
%%   <<"Scope">> => [string()],
%%   <<"ViewArn">> => [string()]
%% }
-type view() :: #{binary() => any()}.


%% Example:
%% associate_default_view_input() :: #{
%%   <<"ViewArn">> := [string()]
%% }
-type associate_default_view_input() :: #{binary() => any()}.


%% Example:
%% delete_view_input() :: #{
%%   <<"ViewArn">> := [string()]
%% }
-type delete_view_input() :: #{binary() => any()}.


%% Example:
%% list_views_output() :: #{
%%   <<"NextToken">> => [string()],
%%   <<"Views">> => list([string()]())
%% }
-type list_views_output() :: #{binary() => any()}.


%% Example:
%% delete_view_output() :: #{
%%   <<"ViewArn">> => [string()]
%% }
-type delete_view_output() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_output() :: #{
%%   <<"Tags">> => map()
%% }
-type list_tags_for_resource_output() :: #{binary() => any()}.


%% Example:
%% resource_count() :: #{
%%   <<"Complete">> => [boolean()],
%%   <<"TotalResources">> => [float()]
%% }
-type resource_count() :: #{binary() => any()}.


%% Example:
%% batch_get_view_input() :: #{
%%   <<"ViewArns">> => list([string()]())
%% }
-type batch_get_view_input() :: #{binary() => any()}.


%% Example:
%% list_managed_views_output() :: #{
%%   <<"ManagedViews">> => list([string()]()),
%%   <<"NextToken">> => [string()]
%% }
-type list_managed_views_output() :: #{binary() => any()}.


%% Example:
%% list_supported_resource_types_input() :: #{
%%   <<"MaxResults">> => [integer()],
%%   <<"NextToken">> => [string()]
%% }
-type list_supported_resource_types_input() :: #{binary() => any()}.


%% Example:
%% get_index_output() :: #{
%%   <<"Arn">> => [string()],
%%   <<"CreatedAt">> => [non_neg_integer()],
%%   <<"LastUpdatedAt">> => [non_neg_integer()],
%%   <<"ReplicatingFrom">> => list([string()]()),
%%   <<"ReplicatingTo">> => list([string()]()),
%%   <<"State">> => string(),
%%   <<"Tags">> => map(),
%%   <<"Type">> => string()
%% }
-type get_index_output() :: #{binary() => any()}.


%% Example:
%% search_output() :: #{
%%   <<"Count">> => resource_count(),
%%   <<"NextToken">> => [string()],
%%   <<"Resources">> => list(resource()),
%%   <<"ViewArn">> => [string()]
%% }
-type search_output() :: #{binary() => any()}.


%% Example:
%% search_filter() :: #{
%%   <<"FilterString">> => [string()]
%% }
-type search_filter() :: #{binary() => any()}.


%% Example:
%% index() :: #{
%%   <<"Arn">> => [string()],
%%   <<"Region">> => [string()],
%%   <<"Type">> => string()
%% }
-type index() :: #{binary() => any()}.


%% Example:
%% list_resources_input() :: #{
%%   <<"Filters">> => search_filter(),
%%   <<"MaxResults">> => [integer()],
%%   <<"NextToken">> => [string()],
%%   <<"ViewArn">> => [string()]
%% }
-type list_resources_input() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% list_indexes_for_members_output() :: #{
%%   <<"Indexes">> => list(member_index()),
%%   <<"NextToken">> => [string()]
%% }
-type list_indexes_for_members_output() :: #{binary() => any()}.


%% Example:
%% list_managed_views_input() :: #{
%%   <<"MaxResults">> => [integer()],
%%   <<"NextToken">> => [string()],
%%   <<"ServicePrincipal">> => [string()]
%% }
-type list_managed_views_input() :: #{binary() => any()}.


%% Example:
%% batch_get_view_error() :: #{
%%   <<"ErrorMessage">> => [string()],
%%   <<"ViewArn">> => [string()]
%% }
-type batch_get_view_error() :: #{binary() => any()}.


%% Example:
%% update_view_input() :: #{
%%   <<"Filters">> => search_filter(),
%%   <<"IncludedProperties">> => list(included_property()),
%%   <<"ViewArn">> := [string()]
%% }
-type update_view_input() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"Message">> => [string()],
%%   <<"Name">> => [string()],
%%   <<"Value">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% list_indexes_input() :: #{
%%   <<"MaxResults">> => [integer()],
%%   <<"NextToken">> => [string()],
%%   <<"Regions">> => list([string()]()),
%%   <<"Type">> => string()
%% }
-type list_indexes_input() :: #{binary() => any()}.


%% Example:
%% list_views_input() :: #{
%%   <<"MaxResults">> => [integer()],
%%   <<"NextToken">> => [string()]
%% }
-type list_views_input() :: #{binary() => any()}.


%% Example:
%% validation_exception_field() :: #{
%%   <<"Name">> => [string()],
%%   <<"ValidationIssue">> => [string()]
%% }
-type validation_exception_field() :: #{binary() => any()}.


%% Example:
%% org_configuration() :: #{
%%   <<"AWSServiceAccessStatus">> => string(),
%%   <<"ServiceLinkedRole">> => [string()]
%% }
-type org_configuration() :: #{binary() => any()}.


%% Example:
%% tag_resource_input() :: #{
%%   <<"Tags">> => map()
%% }
-type tag_resource_input() :: #{binary() => any()}.


%% Example:
%% get_managed_view_input() :: #{
%%   <<"ManagedViewArn">> := [string()]
%% }
-type get_managed_view_input() :: #{binary() => any()}.


%% Example:
%% associate_default_view_output() :: #{
%%   <<"ViewArn">> => [string()]
%% }
-type associate_default_view_output() :: #{binary() => any()}.

%% Example:
%% tag_resource_output() :: #{}
-type tag_resource_output() :: #{}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% delete_index_output() :: #{
%%   <<"Arn">> => [string()],
%%   <<"LastUpdatedAt">> => [non_neg_integer()],
%%   <<"State">> => string()
%% }
-type delete_index_output() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% update_index_type_input() :: #{
%%   <<"Arn">> := [string()],
%%   <<"Type">> := string()
%% }
-type update_index_type_input() :: #{binary() => any()}.


%% Example:
%% untag_resource_input() :: #{
%%   <<"tagKeys">> := list([string()]())
%% }
-type untag_resource_input() :: #{binary() => any()}.


%% Example:
%% create_view_input() :: #{
%%   <<"ClientToken">> => [string()],
%%   <<"Filters">> => search_filter(),
%%   <<"IncludedProperties">> => list(included_property()),
%%   <<"Scope">> => [string()],
%%   <<"Tags">> => map(),
%%   <<"ViewName">> := string()
%% }
-type create_view_input() :: #{binary() => any()}.


%% Example:
%% get_view_input() :: #{
%%   <<"ViewArn">> := [string()]
%% }
-type get_view_input() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"FieldList">> => list(validation_exception_field()),
%%   <<"Message">> => [string()]
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_input() :: #{}
-type list_tags_for_resource_input() :: #{}.


%% Example:
%% delete_index_input() :: #{
%%   <<"Arn">> := [string()]
%% }
-type delete_index_input() :: #{binary() => any()}.


%% Example:
%% supported_resource_type() :: #{
%%   <<"ResourceType">> => [string()],
%%   <<"Service">> => [string()]
%% }
-type supported_resource_type() :: #{binary() => any()}.

%% Example:
%% untag_resource_output() :: #{}
-type untag_resource_output() :: #{}.


%% Example:
%% update_view_output() :: #{
%%   <<"View">> => view()
%% }
-type update_view_output() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% get_account_level_service_configuration_output() :: #{
%%   <<"OrgConfiguration">> => org_configuration()
%% }
-type get_account_level_service_configuration_output() :: #{binary() => any()}.


%% Example:
%% list_indexes_output() :: #{
%%   <<"Indexes">> => list(index()),
%%   <<"NextToken">> => [string()]
%% }
-type list_indexes_output() :: #{binary() => any()}.


%% Example:
%% get_view_output() :: #{
%%   <<"Tags">> => map(),
%%   <<"View">> => view()
%% }
-type get_view_output() :: #{binary() => any()}.


%% Example:
%% list_supported_resource_types_output() :: #{
%%   <<"NextToken">> => [string()],
%%   <<"ResourceTypes">> => list(supported_resource_type())
%% }
-type list_supported_resource_types_output() :: #{binary() => any()}.


%% Example:
%% create_index_input() :: #{
%%   <<"ClientToken">> => [string()],
%%   <<"Tags">> => map()
%% }
-type create_index_input() :: #{binary() => any()}.


%% Example:
%% update_index_type_output() :: #{
%%   <<"Arn">> => [string()],
%%   <<"LastUpdatedAt">> => [non_neg_integer()],
%%   <<"State">> => string(),
%%   <<"Type">> => string()
%% }
-type update_index_type_output() :: #{binary() => any()}.


%% Example:
%% member_index() :: #{
%%   <<"AccountId">> => [string()],
%%   <<"Arn">> => [string()],
%%   <<"Region">> => [string()],
%%   <<"Type">> => string()
%% }
-type member_index() :: #{binary() => any()}.


%% Example:
%% get_default_view_output() :: #{
%%   <<"ViewArn">> => [string()]
%% }
-type get_default_view_output() :: #{binary() => any()}.


%% Example:
%% list_resources_output() :: #{
%%   <<"NextToken">> => [string()],
%%   <<"Resources">> => list(resource()),
%%   <<"ViewArn">> => [string()]
%% }
-type list_resources_output() :: #{binary() => any()}.


%% Example:
%% managed_view() :: #{
%%   <<"Filters">> => search_filter(),
%%   <<"IncludedProperties">> => list(included_property()),
%%   <<"LastUpdatedAt">> => [non_neg_integer()],
%%   <<"ManagedViewArn">> => [string()],
%%   <<"ManagedViewName">> => [string()],
%%   <<"Owner">> => [string()],
%%   <<"ResourcePolicy">> => [string()],
%%   <<"Scope">> => [string()],
%%   <<"TrustedService">> => [string()],
%%   <<"Version">> => [string()]
%% }
-type managed_view() :: #{binary() => any()}.


%% Example:
%% resource() :: #{
%%   <<"Arn">> => [string()],
%%   <<"LastReportedAt">> => [non_neg_integer()],
%%   <<"OwningAccountId">> => [string()],
%%   <<"Properties">> => list(resource_property()),
%%   <<"Region">> => [string()],
%%   <<"ResourceType">> => [string()],
%%   <<"Service">> => [string()]
%% }
-type resource() :: #{binary() => any()}.


%% Example:
%% get_managed_view_output() :: #{
%%   <<"ManagedView">> => managed_view()
%% }
-type get_managed_view_output() :: #{binary() => any()}.

-type associate_default_view_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type batch_get_view_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    unauthorized_exception().

-type create_index_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type create_view_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception() | 
    unauthorized_exception().

-type delete_index_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_view_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception().

-type disassociate_default_view_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_account_level_service_configuration_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_default_view_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_index_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_managed_view_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception().

-type get_view_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception().

-type list_indexes_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_indexes_for_members_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_managed_views_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    unauthorized_exception().

-type list_resources_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception().

-type list_supported_resource_types_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception().

-type list_views_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type search_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception().

-type tag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    unauthorized_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception().

-type update_index_type_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_view_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    unauthorized_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Sets the specified view as the default for the Amazon Web Services
%% Region in which you call this
%% operation.
%%
%% When a user performs a `Search' that doesn't explicitly
%% specify which view to use, then Amazon Web Services Resource Explorer
%% automatically chooses this default view for
%% searches performed in this Amazon Web Services Region.
%%
%% If an Amazon Web Services Region doesn't have a default view
%% configured, then users must explicitly specify a view with every
%% `Search'
%% operation performed in that Region.
-spec associate_default_view(aws_client:aws_client(), associate_default_view_input()) ->
    {ok, associate_default_view_output(), tuple()} |
    {error, any()} |
    {error, associate_default_view_errors(), tuple()}.
associate_default_view(Client, Input) ->
    associate_default_view(Client, Input, []).

-spec associate_default_view(aws_client:aws_client(), associate_default_view_input(), proplists:proplist()) ->
    {ok, associate_default_view_output(), tuple()} |
    {error, any()} |
    {error, associate_default_view_errors(), tuple()}.
associate_default_view(Client, Input0, Options0) ->
    Method = post,
    Path = ["/AssociateDefaultView"],
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

%% @doc Retrieves details about a list of views.
-spec batch_get_view(aws_client:aws_client(), batch_get_view_input()) ->
    {ok, batch_get_view_output(), tuple()} |
    {error, any()} |
    {error, batch_get_view_errors(), tuple()}.
batch_get_view(Client, Input) ->
    batch_get_view(Client, Input, []).

-spec batch_get_view(aws_client:aws_client(), batch_get_view_input(), proplists:proplist()) ->
    {ok, batch_get_view_output(), tuple()} |
    {error, any()} |
    {error, batch_get_view_errors(), tuple()}.
batch_get_view(Client, Input0, Options0) ->
    Method = post,
    Path = ["/BatchGetView"],
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

%% @doc Turns on Amazon Web Services Resource Explorer in the Amazon Web
%% Services Region in which you called this operation by creating
%% an index.
%%
%% Resource Explorer begins discovering the resources in this Region and
%% stores the details
%% about the resources in the index so that they can be queried by using the
%% `Search' operation. You can create only one index in a Region.
%%
%% This operation creates only a local index. To promote the
%% local index in one Amazon Web Services Region into the aggregator index
%% for the Amazon Web Services account, use the
%% `UpdateIndexType' operation. For more information, see Turning on
%% cross-Region search by creating an aggregator index:
%% https://docs.aws.amazon.com/resource-explorer/latest/userguide/manage-aggregator-region.html
%% in the
%% Amazon Web Services Resource Explorer User Guide.
%%
%% For more details about what happens when you turn on Resource Explorer in
%% an Amazon Web Services Region, see
%% Turn
%% on Resource Explorer to index your resources in an Amazon Web Services
%% Region:
%% https://docs.aws.amazon.com/resource-explorer/latest/userguide/manage-service-activate.html
%% in the
%% Amazon Web Services Resource Explorer User Guide.
%%
%% If this is the first Amazon Web Services Region in which you've
%% created an index for Resource Explorer, then
%% this operation also creates a
%% service-linked role:
%% https://docs.aws.amazon.com/resource-explorer/latest/userguide/security_iam_service-linked-roles.html
%% in your Amazon Web Services account that allows Resource Explorer to
%% enumerate
%% your resources to populate the index.
%%
%% Action:
%% `resource-explorer-2:CreateIndex'
%%
%% Resource: The ARN of the index (as it will
%% exist after the operation completes) in the Amazon Web Services Region and
%% account in which
%% you're trying to create the index. Use the wildcard character
%% (`*')
%% at the end of the string to match the eventual UUID. For example, the
%% following
%% `Resource' element restricts the role or user to creating an
%% index in only the `us-east-2' Region of the specified account.
%%
%% ```
%% &quot;Resource&quot;:
%% &quot;arn:aws:resource-explorer-2:us-west-2:&lt;account-id&gt;:index/*&quot;'''
%%
%% Alternatively, you can use `&quot;Resource&quot;: &quot;*&quot;' to
%% allow the role or
%% user to create an index in any Region.
%%
%% Action:
%% `iam:CreateServiceLinkedRole'
%%
%% Resource: No specific resource (*).
%%
%% This permission is required only the first time you create an index to
%% turn on
%% Resource Explorer in the account. Resource Explorer uses this to create
%% the service-linked
%% role needed to index the resources in your account:
%% https://docs.aws.amazon.com/resource-explorer/latest/userguide/security_iam_service-linked-roles.html.
%% Resource Explorer uses the
%% same service-linked role for all additional indexes you create
%% afterwards.
-spec create_index(aws_client:aws_client(), create_index_input()) ->
    {ok, create_index_output(), tuple()} |
    {error, any()} |
    {error, create_index_errors(), tuple()}.
create_index(Client, Input) ->
    create_index(Client, Input, []).

-spec create_index(aws_client:aws_client(), create_index_input(), proplists:proplist()) ->
    {ok, create_index_output(), tuple()} |
    {error, any()} |
    {error, create_index_errors(), tuple()}.
create_index(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CreateIndex"],
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

%% @doc Creates a view that users can query by using the `Search'
%% operation.
%%
%% Results from queries that you make using this view include only resources
%% that match the
%% view's `Filters'. For more information about Amazon Web Services
%% Resource Explorer views, see Managing views:
%% https://docs.aws.amazon.com/resource-explorer/latest/userguide/manage-views.html
%% in the Amazon Web Services Resource Explorer User Guide.
%%
%% Only the principals with an IAM identity-based policy that grants
%% `Allow'
%% to the `Search' action on a `Resource' with the Amazon resource
%% name (ARN):
%% https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
%% of
%% this view can `Search' using views you create with this
%% operation.
-spec create_view(aws_client:aws_client(), create_view_input()) ->
    {ok, create_view_output(), tuple()} |
    {error, any()} |
    {error, create_view_errors(), tuple()}.
create_view(Client, Input) ->
    create_view(Client, Input, []).

-spec create_view(aws_client:aws_client(), create_view_input(), proplists:proplist()) ->
    {ok, create_view_output(), tuple()} |
    {error, any()} |
    {error, create_view_errors(), tuple()}.
create_view(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CreateView"],
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

%% @doc Deletes the specified index and turns off Amazon Web Services
%% Resource Explorer in the specified Amazon Web Services Region.
%%
%% When you delete an index, Resource Explorer stops discovering and indexing
%% resources in that
%% Region. Resource Explorer also deletes all views in that Region. These
%% actions occur as
%% asynchronous background tasks. You can check to see when the actions are
%% complete by
%% using the `GetIndex' operation and checking the `Status'
%% response value.
%%
%% If the index you delete is the aggregator index for the Amazon Web
%% Services account, you must
%% wait 24 hours before you can promote another local index to be the
%% aggregator index for the account. Users can't perform account-wide
%% searches using
%% Resource Explorer until another aggregator index is configured.
-spec delete_index(aws_client:aws_client(), delete_index_input()) ->
    {ok, delete_index_output(), tuple()} |
    {error, any()} |
    {error, delete_index_errors(), tuple()}.
delete_index(Client, Input) ->
    delete_index(Client, Input, []).

-spec delete_index(aws_client:aws_client(), delete_index_input(), proplists:proplist()) ->
    {ok, delete_index_output(), tuple()} |
    {error, any()} |
    {error, delete_index_errors(), tuple()}.
delete_index(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteIndex"],
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

%% @doc Deletes the specified view.
%%
%% If the specified view is the default view for its Amazon Web Services
%% Region, then all `Search' operations in that Region must explicitly
%% specify the view to use
%% until you configure a new default by calling the
%% `AssociateDefaultView'
%% operation.
-spec delete_view(aws_client:aws_client(), delete_view_input()) ->
    {ok, delete_view_output(), tuple()} |
    {error, any()} |
    {error, delete_view_errors(), tuple()}.
delete_view(Client, Input) ->
    delete_view(Client, Input, []).

-spec delete_view(aws_client:aws_client(), delete_view_input(), proplists:proplist()) ->
    {ok, delete_view_output(), tuple()} |
    {error, any()} |
    {error, delete_view_errors(), tuple()}.
delete_view(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteView"],
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

%% @doc After you call this operation, the affected Amazon Web Services
%% Region no longer has a default view.
%%
%% All `Search' operations in that Region must explicitly specify a view
%% or
%% the operation fails. You can configure a new default by calling the
%% `AssociateDefaultView' operation.
%%
%% If an Amazon Web Services Region doesn't have a default view
%% configured, then users must explicitly specify a view with every
%% `Search'
%% operation performed in that Region.
-spec disassociate_default_view(aws_client:aws_client(), #{}) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disassociate_default_view_errors(), tuple()}.
disassociate_default_view(Client, Input) ->
    disassociate_default_view(Client, Input, []).

-spec disassociate_default_view(aws_client:aws_client(), #{}, proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disassociate_default_view_errors(), tuple()}.
disassociate_default_view(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DisassociateDefaultView"],
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

%% @doc Retrieves the status of your account's Amazon Web Services
%% service access, and validates the service
%% linked role required to access the multi-account search feature.
%%
%% Only the management
%% account can invoke this API call.
-spec get_account_level_service_configuration(aws_client:aws_client(), #{}) ->
    {ok, get_account_level_service_configuration_output(), tuple()} |
    {error, any()} |
    {error, get_account_level_service_configuration_errors(), tuple()}.
get_account_level_service_configuration(Client, Input) ->
    get_account_level_service_configuration(Client, Input, []).

-spec get_account_level_service_configuration(aws_client:aws_client(), #{}, proplists:proplist()) ->
    {ok, get_account_level_service_configuration_output(), tuple()} |
    {error, any()} |
    {error, get_account_level_service_configuration_errors(), tuple()}.
get_account_level_service_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetAccountLevelServiceConfiguration"],
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

%% @doc Retrieves the Amazon Resource Name (ARN) of the view that is the
%% default for the
%% Amazon Web Services Region in which you call this operation.
%%
%% You can then call `GetView' to retrieve the details of that view.
-spec get_default_view(aws_client:aws_client(), #{}) ->
    {ok, get_default_view_output(), tuple()} |
    {error, any()} |
    {error, get_default_view_errors(), tuple()}.
get_default_view(Client, Input) ->
    get_default_view(Client, Input, []).

-spec get_default_view(aws_client:aws_client(), #{}, proplists:proplist()) ->
    {ok, get_default_view_output(), tuple()} |
    {error, any()} |
    {error, get_default_view_errors(), tuple()}.
get_default_view(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetDefaultView"],
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

%% @doc Retrieves details about the Amazon Web Services Resource Explorer
%% index in the Amazon Web Services Region in which you invoked
%% the operation.
-spec get_index(aws_client:aws_client(), #{}) ->
    {ok, get_index_output(), tuple()} |
    {error, any()} |
    {error, get_index_errors(), tuple()}.
get_index(Client, Input) ->
    get_index(Client, Input, []).

-spec get_index(aws_client:aws_client(), #{}, proplists:proplist()) ->
    {ok, get_index_output(), tuple()} |
    {error, any()} |
    {error, get_index_errors(), tuple()}.
get_index(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetIndex"],
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

%% @doc Retrieves details of the specified Amazon Web Services-managed view:
%% https://docs.aws.amazon.com/resource-explorer/latest/userguide/aws-managed-views.html.
-spec get_managed_view(aws_client:aws_client(), get_managed_view_input()) ->
    {ok, get_managed_view_output(), tuple()} |
    {error, any()} |
    {error, get_managed_view_errors(), tuple()}.
get_managed_view(Client, Input) ->
    get_managed_view(Client, Input, []).

-spec get_managed_view(aws_client:aws_client(), get_managed_view_input(), proplists:proplist()) ->
    {ok, get_managed_view_output(), tuple()} |
    {error, any()} |
    {error, get_managed_view_errors(), tuple()}.
get_managed_view(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetManagedView"],
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

%% @doc Retrieves details of the specified view.
-spec get_view(aws_client:aws_client(), get_view_input()) ->
    {ok, get_view_output(), tuple()} |
    {error, any()} |
    {error, get_view_errors(), tuple()}.
get_view(Client, Input) ->
    get_view(Client, Input, []).

-spec get_view(aws_client:aws_client(), get_view_input(), proplists:proplist()) ->
    {ok, get_view_output(), tuple()} |
    {error, any()} |
    {error, get_view_errors(), tuple()}.
get_view(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetView"],
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

%% @doc Retrieves a list of all of the indexes in Amazon Web Services Regions
%% that are currently collecting
%% resource information for Amazon Web Services Resource Explorer.
-spec list_indexes(aws_client:aws_client(), list_indexes_input()) ->
    {ok, list_indexes_output(), tuple()} |
    {error, any()} |
    {error, list_indexes_errors(), tuple()}.
list_indexes(Client, Input) ->
    list_indexes(Client, Input, []).

-spec list_indexes(aws_client:aws_client(), list_indexes_input(), proplists:proplist()) ->
    {ok, list_indexes_output(), tuple()} |
    {error, any()} |
    {error, list_indexes_errors(), tuple()}.
list_indexes(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListIndexes"],
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

%% @doc Retrieves a list of a member's indexes in all Amazon Web Services
%% Regions that are currently
%% collecting resource information for Amazon Web Services Resource Explorer.
%%
%% Only the management account or a
%% delegated administrator with service access enabled can invoke this API
%% call.
-spec list_indexes_for_members(aws_client:aws_client(), list_indexes_for_members_input()) ->
    {ok, list_indexes_for_members_output(), tuple()} |
    {error, any()} |
    {error, list_indexes_for_members_errors(), tuple()}.
list_indexes_for_members(Client, Input) ->
    list_indexes_for_members(Client, Input, []).

-spec list_indexes_for_members(aws_client:aws_client(), list_indexes_for_members_input(), proplists:proplist()) ->
    {ok, list_indexes_for_members_output(), tuple()} |
    {error, any()} |
    {error, list_indexes_for_members_errors(), tuple()}.
list_indexes_for_members(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListIndexesForMembers"],
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

%% @doc Lists the Amazon resource names (ARNs) of the
%% Amazon Web Services-managed views:
%% https://docs.aws.amazon.com/resource-explorer/latest/userguide/aws-managed-views.html
%% available
%% in the Amazon Web Services Region in which you call this operation.
-spec list_managed_views(aws_client:aws_client(), list_managed_views_input()) ->
    {ok, list_managed_views_output(), tuple()} |
    {error, any()} |
    {error, list_managed_views_errors(), tuple()}.
list_managed_views(Client, Input) ->
    list_managed_views(Client, Input, []).

-spec list_managed_views(aws_client:aws_client(), list_managed_views_input(), proplists:proplist()) ->
    {ok, list_managed_views_output(), tuple()} |
    {error, any()} |
    {error, list_managed_views_errors(), tuple()}.
list_managed_views(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListManagedViews"],
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

%% @doc Returns a list of resources and their details that match the
%% specified criteria.
%%
%% This query must
%% use a view. If you don’t explicitly specify a view, then Resource Explorer
%% uses the default view for the Amazon Web Services Region
%% in which you call this operation.
-spec list_resources(aws_client:aws_client(), list_resources_input()) ->
    {ok, list_resources_output(), tuple()} |
    {error, any()} |
    {error, list_resources_errors(), tuple()}.
list_resources(Client, Input) ->
    list_resources(Client, Input, []).

-spec list_resources(aws_client:aws_client(), list_resources_input(), proplists:proplist()) ->
    {ok, list_resources_output(), tuple()} |
    {error, any()} |
    {error, list_resources_errors(), tuple()}.
list_resources(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListResources"],
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

%% @doc Retrieves a list of all resource types currently supported by Amazon
%% Web Services Resource Explorer.
-spec list_supported_resource_types(aws_client:aws_client(), list_supported_resource_types_input()) ->
    {ok, list_supported_resource_types_output(), tuple()} |
    {error, any()} |
    {error, list_supported_resource_types_errors(), tuple()}.
list_supported_resource_types(Client, Input) ->
    list_supported_resource_types(Client, Input, []).

-spec list_supported_resource_types(aws_client:aws_client(), list_supported_resource_types_input(), proplists:proplist()) ->
    {ok, list_supported_resource_types_output(), tuple()} |
    {error, any()} |
    {error, list_supported_resource_types_errors(), tuple()}.
list_supported_resource_types(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListSupportedResourceTypes"],
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

%% @doc Lists the tags that are attached to the specified resource.
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

%% @doc Lists the Amazon resource names (ARNs):
%% https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
%% of the views available in the Amazon Web Services Region in which you
%% call this operation.
%%
%% Always check the `NextToken' response parameter
%% for a `null' value when calling a paginated operation. These
%% operations can
%% occasionally return an empty set of results even when there are more
%% results available. The
%% `NextToken' response parameter value is `null'
%% only
%% when there are no more results to display.
-spec list_views(aws_client:aws_client(), list_views_input()) ->
    {ok, list_views_output(), tuple()} |
    {error, any()} |
    {error, list_views_errors(), tuple()}.
list_views(Client, Input) ->
    list_views(Client, Input, []).

-spec list_views(aws_client:aws_client(), list_views_input(), proplists:proplist()) ->
    {ok, list_views_output(), tuple()} |
    {error, any()} |
    {error, list_views_errors(), tuple()}.
list_views(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListViews"],
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

%% @doc Searches for resources and displays details about all resources that
%% match the
%% specified criteria.
%%
%% You must specify a query string.
%%
%% All search queries must use a view. If you don't explicitly specify a
%% view, then
%% Amazon Web Services Resource Explorer uses the default view for the Amazon
%% Web Services Region in which you call this operation.
%% The results are the logical intersection of the results that match both
%% the
%% `QueryString' parameter supplied to this operation and the
%% `SearchFilter' parameter attached to the view.
%%
%% For the complete syntax supported by the `QueryString' parameter, see
%% Search
%% query syntax reference for Resource Explorer:
%% https://docs.aws.amazon.com/resource-explorer/latest/APIReference/about-query-syntax.html.
%%
%% If your search results are empty, or are missing results that you think
%% should be
%% there, see Troubleshooting Resource Explorer
%% search:
%% https://docs.aws.amazon.com/resource-explorer/latest/userguide/troubleshooting_search.html.
-spec search(aws_client:aws_client(), search_input()) ->
    {ok, search_output(), tuple()} |
    {error, any()} |
    {error, search_errors(), tuple()}.
search(Client, Input) ->
    search(Client, Input, []).

-spec search(aws_client:aws_client(), search_input(), proplists:proplist()) ->
    {ok, search_output(), tuple()} |
    {error, any()} |
    {error, search_errors(), tuple()}.
search(Client, Input0, Options0) ->
    Method = post,
    Path = ["/Search"],
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

%% @doc Adds one or more tag key and value pairs to an Amazon Web Services
%% Resource Explorer view or index.
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_input()) ->
    {ok, tag_resource_output(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_input(), proplists:proplist()) ->
    {ok, tag_resource_output(), tuple()} |
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

%% @doc Removes one or more tag key and value pairs from an Amazon Web
%% Services Resource Explorer view or index.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_input()) ->
    {ok, untag_resource_output(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_input(), proplists:proplist()) ->
    {ok, untag_resource_output(), tuple()} |
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

%% @doc Changes the type of the index from one of the following types to the
%% other.
%%
%% For more
%% information about indexes and the role they perform in Amazon Web Services
%% Resource Explorer, see Turning on
%% cross-Region search by creating an aggregator index:
%% https://docs.aws.amazon.com/resource-explorer/latest/userguide/manage-aggregator-region.html
%% in the
%% Amazon Web Services Resource Explorer User Guide.
%%
%% `AGGREGATOR' index type
%%
%% The index contains information about resources from all Amazon Web
%% Services Regions in the
%% Amazon Web Services account in which you've created a Resource
%% Explorer index. Resource information from
%% all other Regions is replicated to this Region's index.
%%
%% When you change the index type to `AGGREGATOR', Resource Explorer
%% turns on
%% replication of all discovered resource information from the other Amazon
%% Web Services Regions
%% in your account to this index. You can then, from this Region only,
%% perform
%% resource search queries that span all Amazon Web Services Regions in the
%% Amazon Web Services account.
%% Turning on replication from all other Regions is performed by asynchronous
%% background tasks. You can check the status of the asynchronous tasks by
%% using
%% the `GetIndex' operation. When the asynchronous tasks complete,
%% the `Status' response of that operation changes from
%% `UPDATING' to `ACTIVE'. After that, you can start to
%% see results from other Amazon Web Services Regions in query results.
%% However, it can take
%% several hours for replication from all other Regions to complete.
%%
%% You can have only one aggregator index per Amazon Web Services account.
%% Before you can
%% promote a different index to be the aggregator index for the account, you
%% must
%% first demote the existing aggregator index to type `LOCAL'.
%%
%% `LOCAL' index type
%%
%% The index contains information about resources in only the Amazon Web
%% Services Region in
%% which the index exists. If an aggregator index in another Region exists,
%% then
%% information in this local index is replicated to the aggregator index.
%%
%% When you change the index type to `LOCAL', Resource Explorer turns off
%% the
%% replication of resource information from all other Amazon Web Services
%% Regions in the
%% Amazon Web Services account to this Region. The aggregator index remains
%% in the
%% `UPDATING' state until all replication with other Regions
%% successfully stops. You can check the status of the asynchronous task by
%% using
%% the `GetIndex' operation. When Resource Explorer successfully stops
%% all
%% replication with other Regions, the `Status' response of that
%% operation changes from `UPDATING' to `ACTIVE'. Separately,
%% the resource information from other Regions that was previously stored in
%% the
%% index is deleted within 30 days by another background task. Until that
%% asynchronous task completes, some results from other Regions can continue
%% to
%% appear in search results.
%%
%% After you demote an aggregator index to a local index, you must wait
%% 24 hours before you can promote another index to be the new
%% aggregator index for the account.
-spec update_index_type(aws_client:aws_client(), update_index_type_input()) ->
    {ok, update_index_type_output(), tuple()} |
    {error, any()} |
    {error, update_index_type_errors(), tuple()}.
update_index_type(Client, Input) ->
    update_index_type(Client, Input, []).

-spec update_index_type(aws_client:aws_client(), update_index_type_input(), proplists:proplist()) ->
    {ok, update_index_type_output(), tuple()} |
    {error, any()} |
    {error, update_index_type_errors(), tuple()}.
update_index_type(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UpdateIndexType"],
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

%% @doc Modifies some of the details of a view.
%%
%% You can change the filter string and the list
%% of included properties. You can't change the name of the view.
-spec update_view(aws_client:aws_client(), update_view_input()) ->
    {ok, update_view_output(), tuple()} |
    {error, any()} |
    {error, update_view_errors(), tuple()}.
update_view(Client, Input) ->
    update_view(Client, Input, []).

-spec update_view(aws_client:aws_client(), update_view_input(), proplists:proplist()) ->
    {ok, update_view_output(), tuple()} |
    {error, any()} |
    {error, update_view_errors(), tuple()}.
update_view(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UpdateView"],
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
    Client1 = Client#{service => <<"resource-explorer-2">>},
    Host = build_host(<<"resource-explorer-2">>, Client1),
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
