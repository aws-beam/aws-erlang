%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS Support
%%
%% The AWS Support API Reference is intended for programmers who need
%% detailed information about the AWS Support operations and data types.
%%
%% You can use the API to manage your support cases programmatically. The AWS
%% Support API uses HTTP methods that return results in JSON format.
%%
%% You must have a Business or Enterprise Support plan to use the AWS Support
%% API.
%%
%% If you call the AWS Support API from an account that does not have a
%% Business or Enterprise Support plan, the `SubscriptionRequiredException'
%% error message appears. For information about changing your support plan,
%% see AWS Support.
%%
%% The AWS Support service also exposes a set of AWS Trusted Advisor
%% features. You can retrieve a list of checks and their descriptions, get
%% check results, specify checks to refresh, and get the refresh status of
%% checks.
%%
%% The following list describes the AWS Support case management operations:
%%
%% <ul> <li> Service names, issue categories, and available severity levels -
%% The `DescribeServices' and `DescribeSeverityLevels' operations return AWS
%% service names, service codes, service categories, and problem severity
%% levels. You use these values when you call the `CreateCase' operation.
%%
%% </li> <li> Case creation, case details, and case resolution - The
%% `CreateCase', `DescribeCases', `DescribeAttachment', and `ResolveCase'
%% operations create AWS Support cases, retrieve information about cases, and
%% resolve cases.
%%
%% </li> <li> Case communication - The `DescribeCommunications',
%% `AddCommunicationToCase', and `AddAttachmentsToSet' operations retrieve
%% and add communications and attachments to AWS Support cases.
%%
%% </li> </ul> The following list describes the operations available from the
%% AWS Support service for Trusted Advisor:
%%
%% <ul> <li> `DescribeTrustedAdvisorChecks' returns the list of checks that
%% run against your AWS resources.
%%
%% </li> <li> Using the `checkId' for a specific check returned by
%% `DescribeTrustedAdvisorChecks', you can call
%% `DescribeTrustedAdvisorCheckResult' to obtain the results for the check
%% that you specified.
%%
%% </li> <li> `DescribeTrustedAdvisorCheckSummaries' returns summarized
%% results for one or more Trusted Advisor checks.
%%
%% </li> <li> `RefreshTrustedAdvisorCheck' requests that Trusted Advisor
%% rerun a specified check.
%%
%% </li> <li> `DescribeTrustedAdvisorCheckRefreshStatuses' reports the
%% refresh status of one or more checks.
%%
%% </li> </ul> For authentication of requests, AWS Support uses Signature
%% Version 4 Signing Process.
%%
%% See About the AWS Support API in the AWS Support User Guide for
%% information about how to use this service to create and manage your
%% support cases, and how to call Trusted Advisor for results of checks on
%% your resources.
-module(aws_support).

-export([add_attachments_to_set/2,
         add_attachments_to_set/3,
         add_communication_to_case/2,
         add_communication_to_case/3,
         create_case/2,
         create_case/3,
         describe_attachment/2,
         describe_attachment/3,
         describe_cases/2,
         describe_cases/3,
         describe_communications/2,
         describe_communications/3,
         describe_services/2,
         describe_services/3,
         describe_severity_levels/2,
         describe_severity_levels/3,
         describe_trusted_advisor_check_refresh_statuses/2,
         describe_trusted_advisor_check_refresh_statuses/3,
         describe_trusted_advisor_check_result/2,
         describe_trusted_advisor_check_result/3,
         describe_trusted_advisor_check_summaries/2,
         describe_trusted_advisor_check_summaries/3,
         describe_trusted_advisor_checks/2,
         describe_trusted_advisor_checks/3,
         refresh_trusted_advisor_check/2,
         refresh_trusted_advisor_check/3,
         resolve_case/2,
         resolve_case/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Adds one or more attachments to an attachment set.
%%
%% An attachment set is a temporary container for attachments that you add to
%% a case or case communication. The set is available for 1 hour after it's
%% created. The `expiryTime' returned in the response is when the set
%% expires.
%%
%% You must have a Business or Enterprise Support plan to use the AWS Support
%% API.
%%
%% If you call the AWS Support API from an account that does not have a
%% Business or Enterprise Support plan, the `SubscriptionRequiredException'
%% error message appears. For information about changing your support plan,
%% see AWS Support.
add_attachments_to_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_attachments_to_set(Client, Input, []).
add_attachments_to_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddAttachmentsToSet">>, Input, Options).

%% @doc Adds additional customer communication to an AWS Support case.
%%
%% Use the `caseId' parameter to identify the case to which to add
%% communication. You can list a set of email addresses to copy on the
%% communication by using the `ccEmailAddresses' parameter. The
%% `communicationBody' value contains the text of the communication.
%%
%% You must have a Business or Enterprise Support plan to use the AWS Support
%% API.
%%
%% If you call the AWS Support API from an account that does not have a
%% Business or Enterprise Support plan, the `SubscriptionRequiredException'
%% error message appears. For information about changing your support plan,
%% see AWS Support.
add_communication_to_case(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_communication_to_case(Client, Input, []).
add_communication_to_case(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddCommunicationToCase">>, Input, Options).

%% @doc Creates a case in the AWS Support Center.
%%
%% This operation is similar to how you create a case in the AWS Support
%% Center Create Case page.
%%
%% The AWS Support API doesn't support requesting service limit increases.
%% You can submit a service limit increase in the following ways:
%%
%% <ul> <li> Submit a request from the AWS Support Center Create Case page.
%%
%% </li> <li> Use the Service Quotas RequestServiceQuotaIncrease operation.
%%
%% </li> </ul> A successful `CreateCase' request returns an AWS Support case
%% number. You can use the `DescribeCases' operation and specify the case
%% number to get existing AWS Support cases. After you create a case, use the
%% `AddCommunicationToCase' operation to add additional communication or
%% attachments to an existing case.
%%
%% The `caseId' is separate from the `displayId' that appears in the AWS
%% Support Center. Use the `DescribeCases' operation to get the `displayId'.
%%
%% You must have a Business or Enterprise Support plan to use the AWS Support
%% API.
%%
%% If you call the AWS Support API from an account that does not have a
%% Business or Enterprise Support plan, the `SubscriptionRequiredException'
%% error message appears. For information about changing your support plan,
%% see AWS Support.
create_case(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_case(Client, Input, []).
create_case(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCase">>, Input, Options).

%% @doc Returns the attachment that has the specified ID.
%%
%% Attachments can include screenshots, error logs, or other files that
%% describe your issue. Attachment IDs are generated by the case management
%% system when you add an attachment to a case or case communication.
%% Attachment IDs are returned in the `AttachmentDetails' objects that are
%% returned by the `DescribeCommunications' operation.
%%
%% You must have a Business or Enterprise Support plan to use the AWS Support
%% API.
%%
%% If you call the AWS Support API from an account that does not have a
%% Business or Enterprise Support plan, the `SubscriptionRequiredException'
%% error message appears. For information about changing your support plan,
%% see AWS Support.
describe_attachment(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_attachment(Client, Input, []).
describe_attachment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAttachment">>, Input, Options).

%% @doc Returns a list of cases that you specify by passing one or more case
%% IDs.
%%
%% You can use the `afterTime' and `beforeTime' parameters to filter the
%% cases by date. You can set values for the `includeResolvedCases' and
%% `includeCommunications' parameters to specify how much information to
%% return.
%%
%% The response returns the following in JSON format:
%%
%% <ul> <li> One or more CaseDetails data types.
%%
%% </li> <li> One or more `nextToken' values, which specify where to paginate
%% the returned records represented by the `CaseDetails' objects.
%%
%% </li> </ul> Case data is available for 12 months after creation. If a case
%% was created more than 12 months ago, a request might return an error.
%%
%% You must have a Business or Enterprise Support plan to use the AWS Support
%% API.
%%
%% If you call the AWS Support API from an account that does not have a
%% Business or Enterprise Support plan, the `SubscriptionRequiredException'
%% error message appears. For information about changing your support plan,
%% see AWS Support.
describe_cases(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_cases(Client, Input, []).
describe_cases(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCases">>, Input, Options).

%% @doc Returns communications and attachments for one or more support cases.
%%
%% Use the `afterTime' and `beforeTime' parameters to filter by date. You can
%% use the `caseId' parameter to restrict the results to a specific case.
%%
%% Case data is available for 12 months after creation. If a case was created
%% more than 12 months ago, a request for data might cause an error.
%%
%% You can use the `maxResults' and `nextToken' parameters to control the
%% pagination of the results. Set `maxResults' to the number of cases that
%% you want to display on each page, and use `nextToken' to specify the
%% resumption of pagination.
%%
%% You must have a Business or Enterprise Support plan to use the AWS Support
%% API.
%%
%% If you call the AWS Support API from an account that does not have a
%% Business or Enterprise Support plan, the `SubscriptionRequiredException'
%% error message appears. For information about changing your support plan,
%% see AWS Support.
describe_communications(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_communications(Client, Input, []).
describe_communications(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCommunications">>, Input, Options).

%% @doc Returns the current list of AWS services and a list of service
%% categories for each service.
%%
%% You then use service names and categories in your `CreateCase' requests.
%% Each AWS service has its own set of categories.
%%
%% The service codes and category codes correspond to the values that appear
%% in the Service and Category lists on the AWS Support Center Create Case
%% page. The values in those fields don't necessarily match the service codes
%% and categories returned by the `DescribeServices' operation. Always use
%% the service codes and categories that the `DescribeServices' operation
%% returns, so that you have the most recent set of service and category
%% codes.
%%
%% You must have a Business or Enterprise Support plan to use the AWS Support
%% API.
%%
%% If you call the AWS Support API from an account that does not have a
%% Business or Enterprise Support plan, the `SubscriptionRequiredException'
%% error message appears. For information about changing your support plan,
%% see AWS Support.
describe_services(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_services(Client, Input, []).
describe_services(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeServices">>, Input, Options).

%% @doc Returns the list of severity levels that you can assign to a support
%% case.
%%
%% The severity level for a case is also a field in the `CaseDetails' data
%% type that you include for a `CreateCase' request.
%%
%% You must have a Business or Enterprise Support plan to use the AWS Support
%% API.
%%
%% If you call the AWS Support API from an account that does not have a
%% Business or Enterprise Support plan, the `SubscriptionRequiredException'
%% error message appears. For information about changing your support plan,
%% see AWS Support.
describe_severity_levels(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_severity_levels(Client, Input, []).
describe_severity_levels(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSeverityLevels">>, Input, Options).

%% @doc Returns the refresh status of the AWS Trusted Advisor checks that
%% have the specified check IDs.
%%
%% You can get the check IDs by calling the `DescribeTrustedAdvisorChecks'
%% operation.
%%
%% Some checks are refreshed automatically, and you can't return their
%% refresh statuses by using the `DescribeTrustedAdvisorCheckRefreshStatuses'
%% operation. If you call this operation for these checks, you might see an
%% `InvalidParameterValue' error.
%%
%% You must have a Business or Enterprise Support plan to use the AWS Support
%% API.
%%
%% If you call the AWS Support API from an account that does not have a
%% Business or Enterprise Support plan, the `SubscriptionRequiredException'
%% error message appears. For information about changing your support plan,
%% see AWS Support.
describe_trusted_advisor_check_refresh_statuses(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_trusted_advisor_check_refresh_statuses(Client, Input, []).
describe_trusted_advisor_check_refresh_statuses(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTrustedAdvisorCheckRefreshStatuses">>, Input, Options).

%% @doc Returns the results of the AWS Trusted Advisor check that has the
%% specified check ID.
%%
%% You can get the check IDs by calling the `DescribeTrustedAdvisorChecks'
%% operation.
%%
%% The response contains a `TrustedAdvisorCheckResult' object, which contains
%% these three objects:
%%
%% <ul> <li> `TrustedAdvisorCategorySpecificSummary'
%%
%% </li> <li> `TrustedAdvisorResourceDetail'
%%
%% </li> <li> `TrustedAdvisorResourcesSummary'
%%
%% </li> </ul> In addition, the response contains these fields:
%%
%% <ul> <li> status - The alert status of the check can be `ok' (green),
%% `warning' (yellow), `error' (red), or `not_available'.
%%
%% </li> <li> timestamp - The time of the last refresh of the check.
%%
%% </li> <li> checkId - The unique identifier for the check.
%%
%% </li> </ul> You must have a Business or Enterprise Support plan to use the
%% AWS Support API.
%%
%% If you call the AWS Support API from an account that does not have a
%% Business or Enterprise Support plan, the `SubscriptionRequiredException'
%% error message appears. For information about changing your support plan,
%% see AWS Support.
describe_trusted_advisor_check_result(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_trusted_advisor_check_result(Client, Input, []).
describe_trusted_advisor_check_result(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTrustedAdvisorCheckResult">>, Input, Options).

%% @doc Returns the results for the AWS Trusted Advisor check summaries for
%% the check IDs that you specified.
%%
%% You can get the check IDs by calling the `DescribeTrustedAdvisorChecks'
%% operation.
%%
%% The response contains an array of `TrustedAdvisorCheckSummary' objects.
%%
%% You must have a Business or Enterprise Support plan to use the AWS Support
%% API.
%%
%% If you call the AWS Support API from an account that does not have a
%% Business or Enterprise Support plan, the `SubscriptionRequiredException'
%% error message appears. For information about changing your support plan,
%% see AWS Support.
describe_trusted_advisor_check_summaries(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_trusted_advisor_check_summaries(Client, Input, []).
describe_trusted_advisor_check_summaries(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTrustedAdvisorCheckSummaries">>, Input, Options).

%% @doc Returns information about all available AWS Trusted Advisor checks,
%% including the name, ID, category, description, and metadata.
%%
%% You must specify a language code. The AWS Support API currently supports
%% English ("en") and Japanese ("ja"). The response contains a
%% `TrustedAdvisorCheckDescription' object for each check. You must set the
%% AWS Region to us-east-1.
%%
%% You must have a Business or Enterprise Support plan to use the AWS Support
%% API.
%%
%% If you call the AWS Support API from an account that does not have a
%% Business or Enterprise Support plan, the `SubscriptionRequiredException'
%% error message appears. For information about changing your support plan,
%% see AWS Support.
%%
%% The names and descriptions for Trusted Advisor checks are subject to
%% change. We recommend that you specify the check ID in your code to
%% uniquely identify a check.
describe_trusted_advisor_checks(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_trusted_advisor_checks(Client, Input, []).
describe_trusted_advisor_checks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTrustedAdvisorChecks">>, Input, Options).

%% @doc Refreshes the AWS Trusted Advisor check that you specify using the
%% check ID.
%%
%% You can get the check IDs by calling the `DescribeTrustedAdvisorChecks'
%% operation.
%%
%% Some checks are refreshed automatically. If you call the
%% `RefreshTrustedAdvisorCheck' operation to refresh them, you might see the
%% `InvalidParameterValue' error.
%%
%% The response contains a `TrustedAdvisorCheckRefreshStatus' object.
%%
%% You must have a Business or Enterprise Support plan to use the AWS Support
%% API.
%%
%% If you call the AWS Support API from an account that does not have a
%% Business or Enterprise Support plan, the `SubscriptionRequiredException'
%% error message appears. For information about changing your support plan,
%% see AWS Support.
refresh_trusted_advisor_check(Client, Input)
  when is_map(Client), is_map(Input) ->
    refresh_trusted_advisor_check(Client, Input, []).
refresh_trusted_advisor_check(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RefreshTrustedAdvisorCheck">>, Input, Options).

%% @doc Resolves a support case.
%%
%% This operation takes a `caseId' and returns the initial and final state of
%% the case.
%%
%% You must have a Business or Enterprise Support plan to use the AWS Support
%% API.
%%
%% If you call the AWS Support API from an account that does not have a
%% Business or Enterprise Support plan, the `SubscriptionRequiredException'
%% error message appears. For information about changing your support plan,
%% see AWS Support.
resolve_case(Client, Input)
  when is_map(Client), is_map(Input) ->
    resolve_case(Client, Input, []).
resolve_case(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ResolveCase">>, Input, Options).

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
    Client1 = Client#{service => <<"support">>},
    Host = build_host(<<"support">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"AWSSupport_20130415.", Action/binary>>}
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
