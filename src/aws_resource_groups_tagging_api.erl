%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Resource Groups Tagging API
-module(aws_resource_groups_tagging_api).

-export([describe_report_creation/2,
         describe_report_creation/3,
         get_compliance_summary/2,
         get_compliance_summary/3,
         get_resources/2,
         get_resources/3,
         get_tag_keys/2,
         get_tag_keys/3,
         get_tag_values/2,
         get_tag_values/3,
         start_report_creation/2,
         start_report_creation/3,
         tag_resources/2,
         tag_resources/3,
         untag_resources/2,
         untag_resources/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% compliance_details() :: #{
%%   <<"ComplianceStatus">> => boolean(),
%%   <<"KeysWithNoncompliantValues">> => list(string()),
%%   <<"NoncompliantKeys">> => list(string())
%% }
-type compliance_details() :: #{binary() => any()}.

%% Example:
%% concurrent_modification_exception() :: #{
%%   <<"Message">> => string()
%% }
-type concurrent_modification_exception() :: #{binary() => any()}.

%% Example:
%% constraint_violation_exception() :: #{
%%   <<"Message">> => string()
%% }
-type constraint_violation_exception() :: #{binary() => any()}.

%% Example:
%% describe_report_creation_input() :: #{

%% }
-type describe_report_creation_input() :: #{binary() => any()}.

%% Example:
%% describe_report_creation_output() :: #{
%%   <<"ErrorMessage">> => string(),
%%   <<"S3Location">> => string(),
%%   <<"StartDate">> => string(),
%%   <<"Status">> => string()
%% }
-type describe_report_creation_output() :: #{binary() => any()}.

%% Example:
%% failure_info() :: #{
%%   <<"ErrorCode">> => list(any()),
%%   <<"ErrorMessage">> => string(),
%%   <<"StatusCode">> => integer()
%% }
-type failure_info() :: #{binary() => any()}.

%% Example:
%% get_compliance_summary_input() :: #{
%%   <<"GroupBy">> => list(list(any())()),
%%   <<"MaxResults">> => integer(),
%%   <<"PaginationToken">> => string(),
%%   <<"RegionFilters">> => list(string()),
%%   <<"ResourceTypeFilters">> => list(string()),
%%   <<"TagKeyFilters">> => list(string()),
%%   <<"TargetIdFilters">> => list(string())
%% }
-type get_compliance_summary_input() :: #{binary() => any()}.

%% Example:
%% get_compliance_summary_output() :: #{
%%   <<"PaginationToken">> => string(),
%%   <<"SummaryList">> => list(summary())
%% }
-type get_compliance_summary_output() :: #{binary() => any()}.

%% Example:
%% get_resources_input() :: #{
%%   <<"ExcludeCompliantResources">> => boolean(),
%%   <<"IncludeComplianceDetails">> => boolean(),
%%   <<"PaginationToken">> => string(),
%%   <<"ResourceARNList">> => list(string()),
%%   <<"ResourceTypeFilters">> => list(string()),
%%   <<"ResourcesPerPage">> => integer(),
%%   <<"TagFilters">> => list(tag_filter()),
%%   <<"TagsPerPage">> => integer()
%% }
-type get_resources_input() :: #{binary() => any()}.

%% Example:
%% get_resources_output() :: #{
%%   <<"PaginationToken">> => string(),
%%   <<"ResourceTagMappingList">> => list(resource_tag_mapping())
%% }
-type get_resources_output() :: #{binary() => any()}.

%% Example:
%% get_tag_keys_input() :: #{
%%   <<"PaginationToken">> => string()
%% }
-type get_tag_keys_input() :: #{binary() => any()}.

%% Example:
%% get_tag_keys_output() :: #{
%%   <<"PaginationToken">> => string(),
%%   <<"TagKeys">> => list(string())
%% }
-type get_tag_keys_output() :: #{binary() => any()}.

%% Example:
%% get_tag_values_input() :: #{
%%   <<"Key">> := string(),
%%   <<"PaginationToken">> => string()
%% }
-type get_tag_values_input() :: #{binary() => any()}.

%% Example:
%% get_tag_values_output() :: #{
%%   <<"PaginationToken">> => string(),
%%   <<"TagValues">> => list(string())
%% }
-type get_tag_values_output() :: #{binary() => any()}.

%% Example:
%% internal_service_exception() :: #{
%%   <<"Message">> => string()
%% }
-type internal_service_exception() :: #{binary() => any()}.

%% Example:
%% invalid_parameter_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_parameter_exception() :: #{binary() => any()}.

%% Example:
%% pagination_token_expired_exception() :: #{
%%   <<"Message">> => string()
%% }
-type pagination_token_expired_exception() :: #{binary() => any()}.

%% Example:
%% resource_tag_mapping() :: #{
%%   <<"ComplianceDetails">> => compliance_details(),
%%   <<"ResourceARN">> => string(),
%%   <<"Tags">> => list(tag())
%% }
-type resource_tag_mapping() :: #{binary() => any()}.

%% Example:
%% start_report_creation_input() :: #{
%%   <<"S3Bucket">> := string()
%% }
-type start_report_creation_input() :: #{binary() => any()}.

%% Example:
%% start_report_creation_output() :: #{

%% }
-type start_report_creation_output() :: #{binary() => any()}.

%% Example:
%% summary() :: #{
%%   <<"LastUpdated">> => string(),
%%   <<"NonCompliantResources">> => float(),
%%   <<"Region">> => string(),
%%   <<"ResourceType">> => string(),
%%   <<"TargetId">> => string(),
%%   <<"TargetIdType">> => list(any())
%% }
-type summary() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% tag_filter() :: #{
%%   <<"Key">> => string(),
%%   <<"Values">> => list(string())
%% }
-type tag_filter() :: #{binary() => any()}.

%% Example:
%% tag_resources_input() :: #{
%%   <<"ResourceARNList">> := list(string()),
%%   <<"Tags">> := map()
%% }
-type tag_resources_input() :: #{binary() => any()}.

%% Example:
%% tag_resources_output() :: #{
%%   <<"FailedResourcesMap">> => map()
%% }
-type tag_resources_output() :: #{binary() => any()}.

%% Example:
%% throttled_exception() :: #{
%%   <<"Message">> => string()
%% }
-type throttled_exception() :: #{binary() => any()}.

%% Example:
%% untag_resources_input() :: #{
%%   <<"ResourceARNList">> := list(string()),
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resources_input() :: #{binary() => any()}.

%% Example:
%% untag_resources_output() :: #{
%%   <<"FailedResourcesMap">> => map()
%% }
-type untag_resources_output() :: #{binary() => any()}.

-type describe_report_creation_errors() ::
    throttled_exception() | 
    invalid_parameter_exception() | 
    internal_service_exception() | 
    constraint_violation_exception().

-type get_compliance_summary_errors() ::
    throttled_exception() | 
    invalid_parameter_exception() | 
    internal_service_exception() | 
    constraint_violation_exception().

-type get_resources_errors() ::
    throttled_exception() | 
    pagination_token_expired_exception() | 
    invalid_parameter_exception() | 
    internal_service_exception().

-type get_tag_keys_errors() ::
    throttled_exception() | 
    pagination_token_expired_exception() | 
    invalid_parameter_exception() | 
    internal_service_exception().

-type get_tag_values_errors() ::
    throttled_exception() | 
    pagination_token_expired_exception() | 
    invalid_parameter_exception() | 
    internal_service_exception().

-type start_report_creation_errors() ::
    throttled_exception() | 
    invalid_parameter_exception() | 
    internal_service_exception() | 
    constraint_violation_exception() | 
    concurrent_modification_exception().

-type tag_resources_errors() ::
    throttled_exception() | 
    invalid_parameter_exception() | 
    internal_service_exception().

-type untag_resources_errors() ::
    throttled_exception() | 
    invalid_parameter_exception() | 
    internal_service_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Describes the status of the `StartReportCreation' operation.
%%
%% You can call this operation only from the organization's
%% management account and from the us-east-1 Region.
-spec describe_report_creation(aws_client:aws_client(), describe_report_creation_input()) ->
    {ok, describe_report_creation_output(), tuple()} |
    {error, any()} |
    {error, describe_report_creation_errors(), tuple()}.
describe_report_creation(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_report_creation(Client, Input, []).

-spec describe_report_creation(aws_client:aws_client(), describe_report_creation_input(), proplists:proplist()) ->
    {ok, describe_report_creation_output(), tuple()} |
    {error, any()} |
    {error, describe_report_creation_errors(), tuple()}.
describe_report_creation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeReportCreation">>, Input, Options).

%% @doc Returns a table that shows counts of resources that are noncompliant
%% with their tag
%% policies.
%%
%% For more information on tag policies, see Tag Policies:
%% https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html
%% in
%% the Organizations User Guide.
%%
%% You can call this operation only from the organization's
%% management account and from the us-east-1 Region.
%%
%% This operation supports pagination, where the response can be sent in
%% multiple pages. You should check the `PaginationToken' response
%% parameter to determine
%% if there are additional results available to return. Repeat the query,
%% passing the
%% `PaginationToken' response parameter value as an input to the next
%% request until you
%% recieve a `null' value. A null value for `PaginationToken'
%% indicates that
%% there are no more results waiting to be returned.
-spec get_compliance_summary(aws_client:aws_client(), get_compliance_summary_input()) ->
    {ok, get_compliance_summary_output(), tuple()} |
    {error, any()} |
    {error, get_compliance_summary_errors(), tuple()}.
get_compliance_summary(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_compliance_summary(Client, Input, []).

-spec get_compliance_summary(aws_client:aws_client(), get_compliance_summary_input(), proplists:proplist()) ->
    {ok, get_compliance_summary_output(), tuple()} |
    {error, any()} |
    {error, get_compliance_summary_errors(), tuple()}.
get_compliance_summary(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetComplianceSummary">>, Input, Options).

%% @doc Returns all the tagged or previously tagged resources that are
%% located in the
%% specified Amazon Web Services Region for the account.
%%
%% Depending on what information you want returned, you can also specify the
%% following:
%%
%% Filters that specify what tags and resource types you
%% want returned. The response includes all tags that are associated with the
%% requested resources.
%%
%% Information about compliance with the account's effective tag policy.
%% For more
%% information on tag policies, see Tag
%% Policies:
%% https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html
%% in the Organizations User Guide.
%%
%% This operation supports pagination, where the response can be sent in
%% multiple pages. You should check the `PaginationToken' response
%% parameter to determine
%% if there are additional results available to return. Repeat the query,
%% passing the
%% `PaginationToken' response parameter value as an input to the next
%% request until you
%% recieve a `null' value. A null value for `PaginationToken'
%% indicates that
%% there are no more results waiting to be returned.
-spec get_resources(aws_client:aws_client(), get_resources_input()) ->
    {ok, get_resources_output(), tuple()} |
    {error, any()} |
    {error, get_resources_errors(), tuple()}.
get_resources(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_resources(Client, Input, []).

-spec get_resources(aws_client:aws_client(), get_resources_input(), proplists:proplist()) ->
    {ok, get_resources_output(), tuple()} |
    {error, any()} |
    {error, get_resources_errors(), tuple()}.
get_resources(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetResources">>, Input, Options).

%% @doc Returns all tag keys currently in use in the specified Amazon Web
%% Services Region for the calling
%% account.
%%
%% This operation supports pagination, where the response can be sent in
%% multiple pages. You should check the `PaginationToken' response
%% parameter to determine
%% if there are additional results available to return. Repeat the query,
%% passing the
%% `PaginationToken' response parameter value as an input to the next
%% request until you
%% recieve a `null' value. A null value for `PaginationToken'
%% indicates that
%% there are no more results waiting to be returned.
-spec get_tag_keys(aws_client:aws_client(), get_tag_keys_input()) ->
    {ok, get_tag_keys_output(), tuple()} |
    {error, any()} |
    {error, get_tag_keys_errors(), tuple()}.
get_tag_keys(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_tag_keys(Client, Input, []).

-spec get_tag_keys(aws_client:aws_client(), get_tag_keys_input(), proplists:proplist()) ->
    {ok, get_tag_keys_output(), tuple()} |
    {error, any()} |
    {error, get_tag_keys_errors(), tuple()}.
get_tag_keys(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTagKeys">>, Input, Options).

%% @doc Returns all tag values for the specified key that are used in the
%% specified Amazon Web Services
%% Region for the calling account.
%%
%% This operation supports pagination, where the response can be sent in
%% multiple pages. You should check the `PaginationToken' response
%% parameter to determine
%% if there are additional results available to return. Repeat the query,
%% passing the
%% `PaginationToken' response parameter value as an input to the next
%% request until you
%% recieve a `null' value. A null value for `PaginationToken'
%% indicates that
%% there are no more results waiting to be returned.
-spec get_tag_values(aws_client:aws_client(), get_tag_values_input()) ->
    {ok, get_tag_values_output(), tuple()} |
    {error, any()} |
    {error, get_tag_values_errors(), tuple()}.
get_tag_values(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_tag_values(Client, Input, []).

-spec get_tag_values(aws_client:aws_client(), get_tag_values_input(), proplists:proplist()) ->
    {ok, get_tag_values_output(), tuple()} |
    {error, any()} |
    {error, get_tag_values_errors(), tuple()}.
get_tag_values(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTagValues">>, Input, Options).

%% @doc Generates a report that lists all tagged resources in the accounts
%% across your
%% organization and tells whether each resource is compliant with the
%% effective tag policy.
%%
%% Compliance data is refreshed daily. The report is generated
%% asynchronously.
%%
%% The generated report is saved to the following location:
%%
%% `s3://example-bucket/AwsTagPolicies/o-exampleorgid/YYYY-MM-ddTHH:mm:ssZ/report.csv'
%%
%% You can call this operation only from the organization's
%% management account and from the us-east-1 Region.
-spec start_report_creation(aws_client:aws_client(), start_report_creation_input()) ->
    {ok, start_report_creation_output(), tuple()} |
    {error, any()} |
    {error, start_report_creation_errors(), tuple()}.
start_report_creation(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_report_creation(Client, Input, []).

-spec start_report_creation(aws_client:aws_client(), start_report_creation_input(), proplists:proplist()) ->
    {ok, start_report_creation_output(), tuple()} |
    {error, any()} |
    {error, start_report_creation_errors(), tuple()}.
start_report_creation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartReportCreation">>, Input, Options).

%% @doc Applies one or more tags to the specified resources.
%%
%% Note the following:
%%
%% Not all resources can have tags. For a list of services with resources
%% that
%% support tagging using this operation, see Services that support the
%% Resource Groups Tagging API:
%% https://docs.aws.amazon.com/resourcegroupstagging/latest/APIReference/supported-services.html.
%% If the resource doesn't yet support
%% this operation, the resource's service might support tagging using its
%% own API
%% operations. For more information, refer to the documentation for that
%% service.
%%
%% Each resource can have up to 50 tags. For other limits, see Tag Naming and
%% Usage Conventions:
%% https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html#tag-conventions
%% in the Amazon Web Services General
%% Reference.
%%
%% You can only tag resources that are located in the specified Amazon Web
%% Services Region for
%% the Amazon Web Services account.
%%
%% To add tags to a resource, you need the necessary permissions for the
%% service
%% that the resource belongs to as well as permissions for adding tags. For
%% more
%% information, see the documentation for each service.
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
%% In addition to the `tag:TagResources' permission required by this
%% operation, you must also have the tagging permission defined by the
%% service that created
%% the resource. For example, to tag an Amazon EC2 instance using the
%% `TagResources'
%% operation, you must have both of the following permissions:
%%
%% `tag:TagResource'
%%
%% `ec2:CreateTags'
-spec tag_resources(aws_client:aws_client(), tag_resources_input()) ->
    {ok, tag_resources_output(), tuple()} |
    {error, any()} |
    {error, tag_resources_errors(), tuple()}.
tag_resources(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resources(Client, Input, []).

-spec tag_resources(aws_client:aws_client(), tag_resources_input(), proplists:proplist()) ->
    {ok, tag_resources_output(), tuple()} |
    {error, any()} |
    {error, tag_resources_errors(), tuple()}.
tag_resources(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResources">>, Input, Options).

%% @doc Removes the specified tags from the specified resources.
%%
%% When you specify a tag key,
%% the action removes both that key and its associated value. The operation
%% succeeds even
%% if you attempt to remove tags from a resource that were already removed.
%% Note the
%% following:
%%
%% To remove tags from a resource, you need the necessary permissions for the
%% service that the resource belongs to as well as permissions for removing
%% tags.
%% For more information, see the documentation for the service whose resource
%% you
%% want to untag.
%%
%% You can only tag resources that are located in the specified Amazon Web
%% Services Region for
%% the calling Amazon Web Services account.
%%
%% Minimum permissions
%%
%% In addition to the `tag:UntagResources' permission required by this
%% operation, you must also have the remove tags permission defined by the
%% service that
%% created the resource. For example, to remove the tags from an Amazon EC2
%% instance using the
%% `UntagResources' operation, you must have both of the following
%% permissions:
%%
%% `tag:UntagResource'
%%
%% `ec2:DeleteTags'
-spec untag_resources(aws_client:aws_client(), untag_resources_input()) ->
    {ok, untag_resources_output(), tuple()} |
    {error, any()} |
    {error, untag_resources_errors(), tuple()}.
untag_resources(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resources(Client, Input, []).

-spec untag_resources(aws_client:aws_client(), untag_resources_input(), proplists:proplist()) ->
    {ok, untag_resources_output(), tuple()} |
    {error, any()} |
    {error, untag_resources_errors(), tuple()}.
untag_resources(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResources">>, Input, Options).

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
    Client1 = Client#{service => <<"tagging">>},
    Host = build_host(<<"tagging">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"ResourceGroupsTaggingAPI_20170126.", Action/binary>>}
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
