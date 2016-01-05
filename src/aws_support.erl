%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/jkakar/aws-codegen for more details.

%% @doc <fullname>AWS Support</fullname>
%%
%% The AWS Support API reference is intended for programmers who need
%% detailed information about the AWS Support operations and data types. This
%% service enables you to manage your AWS Support cases programmatically. It
%% uses HTTP methods that return results in JSON format.
%%
%% The AWS Support service also exposes a set of <a
%% href="https://aws.amazon.com/premiumsupport/trustedadvisor/">Trusted
%% Advisor</a> features. You can retrieve a list of checks and their
%% descriptions, get check results, specify checks to refresh, and get the
%% refresh status of checks.
%%
%% The following list describes the AWS Support case management operations:
%%
%% <ul> <li> <b>Service names, issue categories, and available severity
%% levels. </b>The <a>DescribeServices</a> and <a>DescribeSeverityLevels</a>
%% operations return AWS service names, service codes, service categories,
%% and problem severity levels. You use these values when you call the
%% <a>CreateCase</a> operation. </li> <li> <b>Case creation, case details,
%% and case resolution.</b> The <a>CreateCase</a>, <a>DescribeCases</a>,
%% <a>DescribeAttachment</a>, and <a>ResolveCase</a> operations create AWS
%% Support cases, retrieve information about cases, and resolve cases.</li>
%% <li> <b>Case communication.</b> The <a>DescribeCommunications</a>,
%% <a>AddCommunicationToCase</a>, and <a>AddAttachmentsToSet</a> operations
%% retrieve and add communications and attachments to AWS Support cases.
%% </li> </ul> The following list describes the operations available from the
%% AWS Support service for Trusted Advisor:
%%
%% <ul> <li> <a>DescribeTrustedAdvisorChecks</a> returns the list of checks
%% that run against your AWS resources.</li> <li>Using the
%% <code>CheckId</code> for a specific check returned by
%% <a>DescribeTrustedAdvisorChecks</a>, you can call
%% <a>DescribeTrustedAdvisorCheckResult</a> to obtain the results for the
%% check you specified.</li> <li> <a>DescribeTrustedAdvisorCheckSummaries</a>
%% returns summarized results for one or more Trusted Advisor checks.</li>
%% <li> <a>RefreshTrustedAdvisorCheck</a> requests that Trusted Advisor rerun
%% a specified check. </li> <li>
%% <a>DescribeTrustedAdvisorCheckRefreshStatuses</a> reports the refresh
%% status of one or more checks. </li> </ul> For authentication of requests,
%% AWS Support uses <a
%% href="http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature
%% Version 4 Signing Process</a>.
%%
%% See <a
%% href="http://docs.aws.amazon.com/awssupport/latest/user/Welcome.html">About
%% the AWS Support API</a> in the <i>AWS Support User Guide</i> for
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

%% @doc Adds one or more attachments to an attachment set. If an
%% <code>AttachmentSetId</code> is not specified, a new attachment set is
%% created, and the ID of the set is returned in the response. If an
%% <code>AttachmentSetId</code> is specified, the attachments are added to
%% the specified set, if it exists.
%%
%% An attachment set is a temporary container for attachments that are to be
%% added to a case or case communication. The set is available for one hour
%% after it is created; the <code>ExpiryTime</code> returned in the response
%% indicates when the set expires. The maximum number of attachments in a set
%% is 3, and the maximum size of any attachment in the set is 5 MB.
add_attachments_to_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_attachments_to_set(Client, Input, []).
add_attachments_to_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddAttachmentsToSet">>, Input, Options).

%% @doc Adds additional customer communication to an AWS Support case. You
%% use the <code>CaseId</code> value to identify the case to add
%% communication to. You can list a set of email addresses to copy on the
%% communication using the <code>CcEmailAddresses</code> value. The
%% <code>CommunicationBody</code> value contains the text of the
%% communication.
%%
%% The response indicates the success or failure of the request.
%%
%% This operation implements a subset of the features of the AWS Support
%% Center.
add_communication_to_case(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_communication_to_case(Client, Input, []).
add_communication_to_case(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddCommunicationToCase">>, Input, Options).

%% @doc Creates a new case in the AWS Support Center. This operation is
%% modeled on the behavior of the AWS Support Center <a
%% href="https://console.aws.amazon.com/support/home#/case/create">Create
%% Case</a> page. Its parameters require you to specify the following
%% information:
%%
%% <ol> <li> <b>IssueType.</b> The type of issue for the case. You can
%% specify either "customer-service" or "technical." If you do not indicate a
%% value, the default is "technical." </li> <li> <b>ServiceCode.</b> The code
%% for an AWS service. You obtain the <code>ServiceCode</code> by calling
%% <a>DescribeServices</a>. </li> <li> <b>CategoryCode.</b> The category for
%% the service defined for the <code>ServiceCode</code> value. You also
%% obtain the category code for a service by calling <a>DescribeServices</a>.
%% Each AWS service defines its own set of category codes. </li> <li>
%% <b>SeverityCode.</b> A value that indicates the urgency of the case, which
%% in turn determines the response time according to your service level
%% agreement with AWS Support. You obtain the SeverityCode by calling
%% <a>DescribeSeverityLevels</a>.</li> <li> <b>Subject.</b> The
%% <b>Subject</b> field on the AWS Support Center <a
%% href="https://console.aws.amazon.com/support/home#/case/create">Create
%% Case</a> page.</li> <li> <b>CommunicationBody.</b> The <b>Description</b>
%% field on the AWS Support Center <a
%% href="https://console.aws.amazon.com/support/home#/case/create">Create
%% Case</a> page.</li> <li> <b>AttachmentSetId.</b> The ID of a set of
%% attachments that has been created by using
%% <a>AddAttachmentsToSet</a>.</li> <li> <b>Language.</b> The human language
%% in which AWS Support handles the case. English and Japanese are currently
%% supported.</li> <li> <b>CcEmailAddresses.</b> The AWS Support Center
%% <b>CC</b> field on the <a
%% href="https://console.aws.amazon.com/support/home#/case/create">Create
%% Case</a> page. You can list email addresses to be copied on any
%% correspondence about the case. The account that opens the case is already
%% identified by passing the AWS Credentials in the HTTP POST method or in a
%% method or function call from one of the programming languages supported by
%% an <a href="http://aws.amazon.com/tools/">AWS SDK</a>. </li> </ol>
%% <note>To add additional communication or attachments to an existing case,
%% use <a>AddCommunicationToCase</a>.
%%
%% </note> A successful <a>CreateCase</a> request returns an AWS Support case
%% number. Case numbers are used by the <a>DescribeCases</a> operation to
%% retrieve existing AWS Support cases.
create_case(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_case(Client, Input, []).
create_case(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCase">>, Input, Options).

%% @doc Returns the attachment that has the specified ID. Attachment IDs are
%% generated by the case management system when you add an attachment to a
%% case or case communication. Attachment IDs are returned in the
%% <a>AttachmentDetails</a> objects that are returned by the
%% <a>DescribeCommunications</a> operation.
describe_attachment(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_attachment(Client, Input, []).
describe_attachment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAttachment">>, Input, Options).

%% @doc Returns a list of cases that you specify by passing one or more case
%% IDs. In addition, you can filter the cases by date by setting values for
%% the <code>AfterTime</code> and <code>BeforeTime</code> request parameters.
%% You can set values for the <code>IncludeResolvedCases</code> and
%% <code>IncludeCommunications</code> request parameters to control how much
%% information is returned.
%%
%% Case data is available for 12 months after creation. If a case was created
%% more than 12 months ago, a request for data might cause an error.
%%
%% The response returns the following in JSON format:
%%
%% <ol> <li>One or more <a>CaseDetails</a> data types. </li> <li>One or more
%% <code>NextToken</code> values, which specify where to paginate the
%% returned records represented by the <code>CaseDetails</code> objects.</li>
%% </ol>
describe_cases(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_cases(Client, Input, []).
describe_cases(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCases">>, Input, Options).

%% @doc Returns communications (and attachments) for one or more support
%% cases. You can use the <code>AfterTime</code> and <code>BeforeTime</code>
%% parameters to filter by date. You can use the <code>CaseId</code>
%% parameter to restrict the results to a particular case.
%%
%% Case data is available for 12 months after creation. If a case was created
%% more than 12 months ago, a request for data might cause an error.
%%
%% You can use the <code>MaxResults</code> and <code>NextToken</code>
%% parameters to control the pagination of the result set. Set
%% <code>MaxResults</code> to the number of cases you want displayed on each
%% page, and use <code>NextToken</code> to specify the resumption of
%% pagination.
describe_communications(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_communications(Client, Input, []).
describe_communications(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCommunications">>, Input, Options).

%% @doc Returns the current list of AWS services and a list of service
%% categories that applies to each one. You then use service names and
%% categories in your <a>CreateCase</a> requests. Each AWS service has its
%% own set of categories.
%%
%% The service codes and category codes correspond to the values that are
%% displayed in the <b>Service</b> and <b>Category</b> drop-down lists on the
%% AWS Support Center <a
%% href="https://console.aws.amazon.com/support/home#/case/create">Create
%% Case</a> page. The values in those fields, however, do not necessarily
%% match the service codes and categories returned by the
%% <code>DescribeServices</code> request. Always use the service codes and
%% categories obtained programmatically. This practice ensures that you
%% always have the most recent set of service and category codes.
describe_services(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_services(Client, Input, []).
describe_services(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeServices">>, Input, Options).

%% @doc Returns the list of severity levels that you can assign to an AWS
%% Support case. The severity level for a case is also a field in the
%% <a>CaseDetails</a> data type included in any <a>CreateCase</a> request.
describe_severity_levels(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_severity_levels(Client, Input, []).
describe_severity_levels(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSeverityLevels">>, Input, Options).

%% @doc Returns the refresh status of the Trusted Advisor checks that have
%% the specified check IDs. Check IDs can be obtained by calling
%% <a>DescribeTrustedAdvisorChecks</a>.
describe_trusted_advisor_check_refresh_statuses(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_trusted_advisor_check_refresh_statuses(Client, Input, []).
describe_trusted_advisor_check_refresh_statuses(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTrustedAdvisorCheckRefreshStatuses">>, Input, Options).

%% @doc Returns the results of the Trusted Advisor check that has the
%% specified check ID. Check IDs can be obtained by calling
%% <a>DescribeTrustedAdvisorChecks</a>.
%%
%% The response contains a <a>TrustedAdvisorCheckResult</a> object, which
%% contains these three objects:
%%
%% <ul> <li><a>TrustedAdvisorCategorySpecificSummary</a></li>
%% <li><a>TrustedAdvisorResourceDetail</a></li>
%% <li><a>TrustedAdvisorResourcesSummary</a></li> </ul> In addition, the
%% response contains these fields:
%%
%% <ul> <li> <b>Status.</b> The alert status of the check: "ok" (green),
%% "warning" (yellow), "error" (red), or "not_available".</li> <li>
%% <b>Timestamp.</b> The time of the last refresh of the check.</li> <li>
%% <b>CheckId.</b> The unique identifier for the check.</li> </ul>
describe_trusted_advisor_check_result(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_trusted_advisor_check_result(Client, Input, []).
describe_trusted_advisor_check_result(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTrustedAdvisorCheckResult">>, Input, Options).

%% @doc Returns the summaries of the results of the Trusted Advisor checks
%% that have the specified check IDs. Check IDs can be obtained by calling
%% <a>DescribeTrustedAdvisorChecks</a>.
%%
%% The response contains an array of <a>TrustedAdvisorCheckSummary</a>
%% objects.
describe_trusted_advisor_check_summaries(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_trusted_advisor_check_summaries(Client, Input, []).
describe_trusted_advisor_check_summaries(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTrustedAdvisorCheckSummaries">>, Input, Options).

%% @doc Returns information about all available Trusted Advisor checks,
%% including name, ID, category, description, and metadata. You must specify
%% a language code; English ("en") and Japanese ("ja") are currently
%% supported. The response contains a <a>TrustedAdvisorCheckDescription</a>
%% for each check.
describe_trusted_advisor_checks(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_trusted_advisor_checks(Client, Input, []).
describe_trusted_advisor_checks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTrustedAdvisorChecks">>, Input, Options).

%% @doc Requests a refresh of the Trusted Advisor check that has the
%% specified check ID. Check IDs can be obtained by calling
%% <a>DescribeTrustedAdvisorChecks</a>.
%%
%% The response contains a <a>TrustedAdvisorCheckRefreshStatus</a> object,
%% which contains these fields:
%%
%% <ul> <li> <b>Status.</b> The refresh status of the check: "none",
%% "enqueued", "processing", "success", or "abandoned".</li> <li>
%% <b>MillisUntilNextRefreshable.</b> The amount of time, in milliseconds,
%% until the check is eligible for refresh.</li> <li> <b>CheckId.</b> The
%% unique identifier for the check.</li> </ul>
refresh_trusted_advisor_check(Client, Input)
  when is_map(Client), is_map(Input) ->
    refresh_trusted_advisor_check(Client, Input, []).
refresh_trusted_advisor_check(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RefreshTrustedAdvisorCheck">>, Input, Options).

%% @doc Takes a <code>CaseId</code> and returns the initial state of the case
%% along with the state of the case after the call to <a>ResolveCase</a>
%% completed.
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
    Error :: {binary(), binary()}.
request(Client, Action, Input, Options) ->
    Client1 = Client#{service => <<"support">>},
    Host = aws_util:binary_join([<<"support.">>,
                                 maps:get(region, Client1),
                                 <<".">>,
                                 maps:get(endpoint, Client1)],
                                <<"">>),
    URL = aws_util:binary_join([<<"https://">>, Host, <<"/">>], <<"">>),
    Headers = [{<<"Host">>, Host},
               {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
               {<<"X-Amz-Target">>, << <<"AWSSupport_20130415.">>/binary, Action/binary>>}],
    Payload = jsx:encode(Input),
    Headers1 = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, Headers1, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    case hackney:body(Client) of
        {ok, <<>>} ->
            {ok, undefined, {200, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body, [return_maps]),
            {ok, Result, {200, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    #{<<"__type">> := Exception,
      <<"message">> := Reason} = jsx:decode(Body, [return_maps]),
    {error, {Exception, Reason}, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.
