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

%%====================================================================
%% API
%%====================================================================

%% @doc Describes the status of the `StartReportCreation' operation.
%%
%% You can call this operation only from the organization's management
%% account and from the us-east-1 Region.
describe_report_creation(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_report_creation(Client, Input, []).
describe_report_creation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeReportCreation">>, Input, Options).

%% @doc Returns a table that shows counts of resources that are noncompliant
%% with their tag policies.
%%
%% For more information on tag policies, see Tag Policies in the
%% Organizations User Guide.
%%
%% You can call this operation only from the organization's management
%% account and from the us-east-1 Region.
%%
%% This operation supports pagination, where the response can be sent in
%% multiple pages. You should check the `PaginationToken' response
%% parameter to determine if there are additional results available to
%% return. Repeat the query, passing the `PaginationToken' response
%% parameter value as an input to the next request until you recieve a
%% `null' value. A null value for `PaginationToken' indicates that
%% there are no more results waiting to be returned.
get_compliance_summary(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_compliance_summary(Client, Input, []).
get_compliance_summary(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetComplianceSummary">>, Input, Options).

%% @doc Returns all the tagged or previously tagged resources that are
%% located in the specified Amazon Web Services Region for the account.
%%
%% Depending on what information you want returned, you can also specify the
%% following:
%%
%% <ul> <li> Filters that specify what tags and resource types you want
%% returned. The response includes all tags that are associated with the
%% requested resources.
%%
%% </li> <li> Information about compliance with the account's effective
%% tag policy. For more information on tag policies, see Tag Policies in the
%% Organizations User Guide.
%%
%% </li> </ul> This operation supports pagination, where the response can be
%% sent in multiple pages. You should check the `PaginationToken'
%% response parameter to determine if there are additional results available
%% to return. Repeat the query, passing the `PaginationToken' response
%% parameter value as an input to the next request until you recieve a
%% `null' value. A null value for `PaginationToken' indicates that
%% there are no more results waiting to be returned.
get_resources(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_resources(Client, Input, []).
get_resources(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetResources">>, Input, Options).

%% @doc Returns all tag keys currently in use in the specified Amazon Web
%% Services Region for the calling account.
%%
%% This operation supports pagination, where the response can be sent in
%% multiple pages. You should check the `PaginationToken' response
%% parameter to determine if there are additional results available to
%% return. Repeat the query, passing the `PaginationToken' response
%% parameter value as an input to the next request until you recieve a
%% `null' value. A null value for `PaginationToken' indicates that
%% there are no more results waiting to be returned.
get_tag_keys(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_tag_keys(Client, Input, []).
get_tag_keys(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTagKeys">>, Input, Options).

%% @doc Returns all tag values for the specified key that are used in the
%% specified Amazon Web Services Region for the calling account.
%%
%% This operation supports pagination, where the response can be sent in
%% multiple pages. You should check the `PaginationToken' response
%% parameter to determine if there are additional results available to
%% return. Repeat the query, passing the `PaginationToken' response
%% parameter value as an input to the next request until you recieve a
%% `null' value. A null value for `PaginationToken' indicates that
%% there are no more results waiting to be returned.
get_tag_values(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_tag_values(Client, Input, []).
get_tag_values(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTagValues">>, Input, Options).

%% @doc Generates a report that lists all tagged resources in the accounts
%% across your organization and tells whether each resource is compliant with
%% the effective tag policy.
%%
%% Compliance data is refreshed daily. The report is generated
%% asynchronously.
%%
%% The generated report is saved to the following location:
%%
%% `s3://example-bucket/AwsTagPolicies/o-exampleorgid/YYYY-MM-ddTHH:mm:ssZ/report.csv'
%%
%% You can call this operation only from the organization's management
%% account and from the us-east-1 Region.
start_report_creation(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_report_creation(Client, Input, []).
start_report_creation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartReportCreation">>, Input, Options).

%% @doc Applies one or more tags to the specified resources.
%%
%% Note the following:
%%
%% <ul> <li> Not all resources can have tags. For a list of services with
%% resources that support tagging using this operation, see Services that
%% support the Resource Groups Tagging API. If the resource doesn't yet
%% support this operation, the resource's service might support tagging
%% using its own API operations. For more information, refer to the
%% documentation for that service.
%%
%% </li> <li> Each resource can have up to 50 tags. For other limits, see Tag
%% Naming and Usage Conventions in the Amazon Web Services General Reference.
%%
%% </li> <li> You can only tag resources that are located in the specified
%% Amazon Web Services Region for the Amazon Web Services account.
%%
%% </li> <li> To add tags to a resource, you need the necessary permissions
%% for the service that the resource belongs to as well as permissions for
%% adding tags. For more information, see the documentation for each service.
%%
%% </li> </ul> Do not store personally identifiable information (PII) or
%% other confidential or sensitive information in tags. We use tags to
%% provide you with billing and administration services. Tags are not
%% intended to be used for private or sensitive data.
%%
%% Minimum permissions
%%
%% In addition to the `tag:TagResources' permission required by this
%% operation, you must also have the tagging permission defined by the
%% service that created the resource. For example, to tag an Amazon EC2
%% instance using the `TagResources' operation, you must have both of the
%% following permissions:
%%
%% <ul> <li> `tag:TagResource'
%%
%% </li> <li> `ec2:CreateTags'
%%
%% </li> </ul>
tag_resources(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resources(Client, Input, []).
tag_resources(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResources">>, Input, Options).

%% @doc Removes the specified tags from the specified resources.
%%
%% When you specify a tag key, the action removes both that key and its
%% associated value. The operation succeeds even if you attempt to remove
%% tags from a resource that were already removed. Note the following:
%%
%% <ul> <li> To remove tags from a resource, you need the necessary
%% permissions for the service that the resource belongs to as well as
%% permissions for removing tags. For more information, see the documentation
%% for the service whose resource you want to untag.
%%
%% </li> <li> You can only tag resources that are located in the specified
%% Amazon Web Services Region for the calling Amazon Web Services account.
%%
%% </li> </ul> Minimum permissions
%%
%% In addition to the `tag:UntagResources' permission required by this
%% operation, you must also have the remove tags permission defined by the
%% service that created the resource. For example, to remove the tags from an
%% Amazon EC2 instance using the `UntagResources' operation, you must
%% have both of the following permissions:
%%
%% <ul> <li> `tag:UntagResource'
%%
%% </li> <li> `ec2:DeleteTags'
%%
%% </li> </ul>
untag_resources(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resources(Client, Input, []).
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
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
