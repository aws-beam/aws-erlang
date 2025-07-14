%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Web Services Support
%%
%% The Amazon Web Services Support API Reference is intended for programmers
%% who need detailed
%% information about the Amazon Web Services Support operations and data
%% types.
%%
%% You can use the API to manage
%% your support cases programmatically. The Amazon Web Services Support API
%% uses HTTP methods that return
%% results in JSON format.
%%
%% You must have a Business, Enterprise On-Ramp, or Enterprise Support plan
%% to use the Amazon Web Services Support
%% API.
%%
%% If you call the Amazon Web Services Support API from an account that
%% doesn't have a
%% Business, Enterprise On-Ramp, or Enterprise Support plan, the
%% `SubscriptionRequiredException' error message appears. For
%% information about changing your support plan, see Amazon Web Services
%% Support: http://aws.amazon.com/premiumsupport/.
%%
%% You can also use the Amazon Web Services Support API to access features
%% for Trusted Advisor: http://aws.amazon.com/premiumsupport/trustedadvisor/.
%% You can return a list of
%% checks and their descriptions, get check results, specify checks to
%% refresh, and get the
%% refresh status of checks.
%%
%% You can manage your support cases with the following Amazon Web Services
%% Support API operations:
%%
%% The `CreateCase', `DescribeCases', `DescribeAttachment', and
%% `ResolveCase' operations
%% create Amazon Web Services Support cases, retrieve information about
%% cases, and resolve cases.
%%
%% The `DescribeCommunications', `AddCommunicationToCase', and
%% `AddAttachmentsToSet' operations retrieve and add communications and
%% attachments to Amazon Web Services Support
%% cases.
%%
%% The `DescribeServices' and `DescribeSeverityLevels' operations
%% return Amazon Web Service names, service codes, service categories, and
%% problem
%% severity levels. You use these values when you call the `CreateCase'
%% operation.
%%
%% You can also use the Amazon Web Services Support API to call the Trusted
%% Advisor operations. For more
%% information, see Trusted Advisor:
%% https://docs.aws.amazon.com/awssupport/latest/user/trusted-advisor.html in
%% the
%% Amazon Web Services Support User Guide.
%%
%% For authentication of requests, Amazon Web Services Support uses Signature
%% Version 4 Signing
%% Process:
%% https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html.
%%
%% For more information about this service and the endpoints to use, see
%% About the
%% Amazon Web Services Support API:
%% https://docs.aws.amazon.com/awssupport/latest/user/about-support-api.html
%% in the Amazon Web Services Support User Guide.
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
         describe_create_case_options/2,
         describe_create_case_options/3,
         describe_services/2,
         describe_services/3,
         describe_severity_levels/2,
         describe_severity_levels/3,
         describe_supported_languages/2,
         describe_supported_languages/3,
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


%% Example:
%% describe_communications_request() :: #{
%%   <<"afterTime">> => string(),
%%   <<"beforeTime">> => string(),
%%   <<"caseId">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type describe_communications_request() :: #{binary() => any()}.

%% Example:
%% trusted_advisor_category_specific_summary() :: #{
%%   <<"costOptimizing">> => trusted_advisor_cost_optimizing_summary()
%% }
-type trusted_advisor_category_specific_summary() :: #{binary() => any()}.

%% Example:
%% describe_severity_levels_request() :: #{
%%   <<"language">> => string()
%% }
-type describe_severity_levels_request() :: #{binary() => any()}.

%% Example:
%% supported_language() :: #{
%%   <<"code">> => string(),
%%   <<"display">> => string(),
%%   <<"language">> => string()
%% }
-type supported_language() :: #{binary() => any()}.

%% Example:
%% attachment_limit_exceeded() :: #{
%%   <<"message">> => string()
%% }
-type attachment_limit_exceeded() :: #{binary() => any()}.

%% Example:
%% communication() :: #{
%%   <<"attachmentSet">> => list(attachment_details()),
%%   <<"body">> => string(),
%%   <<"caseId">> => string(),
%%   <<"submittedBy">> => string(),
%%   <<"timeCreated">> => string()
%% }
-type communication() :: #{binary() => any()}.

%% Example:
%% refresh_trusted_advisor_check_request() :: #{
%%   <<"checkId">> := string()
%% }
-type refresh_trusted_advisor_check_request() :: #{binary() => any()}.

%% Example:
%% trusted_advisor_check_refresh_status() :: #{
%%   <<"checkId">> => string(),
%%   <<"millisUntilNextRefreshable">> => float(),
%%   <<"status">> => string()
%% }
-type trusted_advisor_check_refresh_status() :: #{binary() => any()}.

%% Example:
%% add_attachments_to_set_request() :: #{
%%   <<"attachmentSetId">> => string(),
%%   <<"attachments">> := list(attachment())
%% }
-type add_attachments_to_set_request() :: #{binary() => any()}.

%% Example:
%% describe_services_request() :: #{
%%   <<"language">> => string(),
%%   <<"serviceCodeList">> => list(string())
%% }
-type describe_services_request() :: #{binary() => any()}.

%% Example:
%% create_case_request() :: #{
%%   <<"attachmentSetId">> => string(),
%%   <<"categoryCode">> => string(),
%%   <<"ccEmailAddresses">> => list(string()),
%%   <<"communicationBody">> := string(),
%%   <<"issueType">> => string(),
%%   <<"language">> => string(),
%%   <<"serviceCode">> => string(),
%%   <<"severityCode">> => string(),
%%   <<"subject">> := string()
%% }
-type create_case_request() :: #{binary() => any()}.

%% Example:
%% describe_trusted_advisor_check_result_request() :: #{
%%   <<"checkId">> := string(),
%%   <<"language">> => string()
%% }
-type describe_trusted_advisor_check_result_request() :: #{binary() => any()}.

%% Example:
%% case_id_not_found() :: #{
%%   <<"message">> => string()
%% }
-type case_id_not_found() :: #{binary() => any()}.

%% Example:
%% date_interval() :: #{
%%   <<"endDateTime">> => string(),
%%   <<"startDateTime">> => string()
%% }
-type date_interval() :: #{binary() => any()}.

%% Example:
%% describe_trusted_advisor_check_summaries_request() :: #{
%%   <<"checkIds">> := list(string())
%% }
-type describe_trusted_advisor_check_summaries_request() :: #{binary() => any()}.

%% Example:
%% recent_case_communications() :: #{
%%   <<"communications">> => list(communication()),
%%   <<"nextToken">> => string()
%% }
-type recent_case_communications() :: #{binary() => any()}.

%% Example:
%% attachment() :: #{
%%   <<"data">> => binary(),
%%   <<"fileName">> => string()
%% }
-type attachment() :: #{binary() => any()}.

%% Example:
%% create_case_response() :: #{
%%   <<"caseId">> => string()
%% }
-type create_case_response() :: #{binary() => any()}.

%% Example:
%% service() :: #{
%%   <<"categories">> => list(category()),
%%   <<"code">> => string(),
%%   <<"name">> => string()
%% }
-type service() :: #{binary() => any()}.

%% Example:
%% describe_trusted_advisor_check_refresh_statuses_response() :: #{
%%   <<"statuses">> => list(trusted_advisor_check_refresh_status())
%% }
-type describe_trusted_advisor_check_refresh_statuses_response() :: #{binary() => any()}.

%% Example:
%% describe_trusted_advisor_checks_request() :: #{
%%   <<"language">> := string()
%% }
-type describe_trusted_advisor_checks_request() :: #{binary() => any()}.

%% Example:
%% describe_supported_languages_request() :: #{
%%   <<"categoryCode">> := string(),
%%   <<"issueType">> := string(),
%%   <<"serviceCode">> := string()
%% }
-type describe_supported_languages_request() :: #{binary() => any()}.

%% Example:
%% add_attachments_to_set_response() :: #{
%%   <<"attachmentSetId">> => string(),
%%   <<"expiryTime">> => string()
%% }
-type add_attachments_to_set_response() :: #{binary() => any()}.

%% Example:
%% trusted_advisor_check_description() :: #{
%%   <<"category">> => string(),
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"metadata">> => list(string()),
%%   <<"name">> => string()
%% }
-type trusted_advisor_check_description() :: #{binary() => any()}.

%% Example:
%% describe_services_response() :: #{
%%   <<"services">> => list(service())
%% }
-type describe_services_response() :: #{binary() => any()}.

%% Example:
%% describe_attachment_request() :: #{
%%   <<"attachmentId">> := string()
%% }
-type describe_attachment_request() :: #{binary() => any()}.

%% Example:
%% describe_trusted_advisor_checks_response() :: #{
%%   <<"checks">> => list(trusted_advisor_check_description())
%% }
-type describe_trusted_advisor_checks_response() :: #{binary() => any()}.

%% Example:
%% add_communication_to_case_request() :: #{
%%   <<"attachmentSetId">> => string(),
%%   <<"caseId">> => string(),
%%   <<"ccEmailAddresses">> => list(string()),
%%   <<"communicationBody">> := string()
%% }
-type add_communication_to_case_request() :: #{binary() => any()}.

%% Example:
%% trusted_advisor_resource_detail() :: #{
%%   <<"isSuppressed">> => boolean(),
%%   <<"metadata">> => list(string()),
%%   <<"region">> => string(),
%%   <<"resourceId">> => string(),
%%   <<"status">> => string()
%% }
-type trusted_advisor_resource_detail() :: #{binary() => any()}.

%% Example:
%% case_creation_limit_exceeded() :: #{
%%   <<"message">> => string()
%% }
-type case_creation_limit_exceeded() :: #{binary() => any()}.

%% Example:
%% attachment_details() :: #{
%%   <<"attachmentId">> => string(),
%%   <<"fileName">> => string()
%% }
-type attachment_details() :: #{binary() => any()}.

%% Example:
%% attachment_set_expired() :: #{
%%   <<"message">> => string()
%% }
-type attachment_set_expired() :: #{binary() => any()}.

%% Example:
%% describe_trusted_advisor_check_refresh_statuses_request() :: #{
%%   <<"checkIds">> := list(string())
%% }
-type describe_trusted_advisor_check_refresh_statuses_request() :: #{binary() => any()}.

%% Example:
%% refresh_trusted_advisor_check_response() :: #{
%%   <<"status">> => trusted_advisor_check_refresh_status()
%% }
-type refresh_trusted_advisor_check_response() :: #{binary() => any()}.

%% Example:
%% describe_severity_levels_response() :: #{
%%   <<"severityLevels">> => list(severity_level())
%% }
-type describe_severity_levels_response() :: #{binary() => any()}.

%% Example:
%% resolve_case_request() :: #{
%%   <<"caseId">> => string()
%% }
-type resolve_case_request() :: #{binary() => any()}.

%% Example:
%% trusted_advisor_cost_optimizing_summary() :: #{
%%   <<"estimatedMonthlySavings">> => float(),
%%   <<"estimatedPercentMonthlySavings">> => float()
%% }
-type trusted_advisor_cost_optimizing_summary() :: #{binary() => any()}.

%% Example:
%% describe_cases_response() :: #{
%%   <<"cases">> => list(case_details()),
%%   <<"nextToken">> => string()
%% }
-type describe_cases_response() :: #{binary() => any()}.

%% Example:
%% describe_create_case_options_response() :: #{
%%   <<"communicationTypes">> => list(communication_type_options()),
%%   <<"languageAvailability">> => string()
%% }
-type describe_create_case_options_response() :: #{binary() => any()}.

%% Example:
%% describe_supported_languages_response() :: #{
%%   <<"supportedLanguages">> => list(supported_language())
%% }
-type describe_supported_languages_response() :: #{binary() => any()}.

%% Example:
%% case_details() :: #{
%%   <<"caseId">> => string(),
%%   <<"categoryCode">> => string(),
%%   <<"ccEmailAddresses">> => list(string()),
%%   <<"displayId">> => string(),
%%   <<"language">> => string(),
%%   <<"recentCommunications">> => recent_case_communications(),
%%   <<"serviceCode">> => string(),
%%   <<"severityCode">> => string(),
%%   <<"status">> => string(),
%%   <<"subject">> => string(),
%%   <<"submittedBy">> => string(),
%%   <<"timeCreated">> => string()
%% }
-type case_details() :: #{binary() => any()}.

%% Example:
%% trusted_advisor_check_result() :: #{
%%   <<"categorySpecificSummary">> => trusted_advisor_category_specific_summary(),
%%   <<"checkId">> => string(),
%%   <<"flaggedResources">> => list(trusted_advisor_resource_detail()),
%%   <<"resourcesSummary">> => trusted_advisor_resources_summary(),
%%   <<"status">> => string(),
%%   <<"timestamp">> => string()
%% }
-type trusted_advisor_check_result() :: #{binary() => any()}.

%% Example:
%% describe_trusted_advisor_check_result_response() :: #{
%%   <<"result">> => trusted_advisor_check_result()
%% }
-type describe_trusted_advisor_check_result_response() :: #{binary() => any()}.

%% Example:
%% describe_create_case_options_request() :: #{
%%   <<"categoryCode">> := string(),
%%   <<"issueType">> := string(),
%%   <<"language">> := string(),
%%   <<"serviceCode">> := string()
%% }
-type describe_create_case_options_request() :: #{binary() => any()}.

%% Example:
%% describe_communications_response() :: #{
%%   <<"communications">> => list(communication()),
%%   <<"nextToken">> => string()
%% }
-type describe_communications_response() :: #{binary() => any()}.

%% Example:
%% attachment_set_id_not_found() :: #{
%%   <<"message">> => string()
%% }
-type attachment_set_id_not_found() :: #{binary() => any()}.

%% Example:
%% describe_attachment_response() :: #{
%%   <<"attachment">> => attachment()
%% }
-type describe_attachment_response() :: #{binary() => any()}.

%% Example:
%% add_communication_to_case_response() :: #{
%%   <<"result">> => boolean()
%% }
-type add_communication_to_case_response() :: #{binary() => any()}.

%% Example:
%% internal_server_error() :: #{
%%   <<"message">> => string()
%% }
-type internal_server_error() :: #{binary() => any()}.

%% Example:
%% describe_cases_request() :: #{
%%   <<"afterTime">> => string(),
%%   <<"beforeTime">> => string(),
%%   <<"caseIdList">> => list(string()),
%%   <<"displayId">> => string(),
%%   <<"includeCommunications">> => boolean(),
%%   <<"includeResolvedCases">> => boolean(),
%%   <<"language">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type describe_cases_request() :: #{binary() => any()}.

%% Example:
%% communication_type_options() :: #{
%%   <<"datesWithoutSupport">> => list(date_interval()),
%%   <<"supportedHours">> => list(supported_hour()),
%%   <<"type">> => string()
%% }
-type communication_type_options() :: #{binary() => any()}.

%% Example:
%% describe_trusted_advisor_check_summaries_response() :: #{
%%   <<"summaries">> => list(trusted_advisor_check_summary())
%% }
-type describe_trusted_advisor_check_summaries_response() :: #{binary() => any()}.

%% Example:
%% supported_hour() :: #{
%%   <<"endTime">> => string(),
%%   <<"startTime">> => string()
%% }
-type supported_hour() :: #{binary() => any()}.

%% Example:
%% trusted_advisor_resources_summary() :: #{
%%   <<"resourcesFlagged">> => float(),
%%   <<"resourcesIgnored">> => float(),
%%   <<"resourcesProcessed">> => float(),
%%   <<"resourcesSuppressed">> => float()
%% }
-type trusted_advisor_resources_summary() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% severity_level() :: #{
%%   <<"code">> => string(),
%%   <<"name">> => string()
%% }
-type severity_level() :: #{binary() => any()}.

%% Example:
%% category() :: #{
%%   <<"code">> => string(),
%%   <<"name">> => string()
%% }
-type category() :: #{binary() => any()}.

%% Example:
%% attachment_set_size_limit_exceeded() :: #{
%%   <<"message">> => string()
%% }
-type attachment_set_size_limit_exceeded() :: #{binary() => any()}.

%% Example:
%% trusted_advisor_check_summary() :: #{
%%   <<"categorySpecificSummary">> => trusted_advisor_category_specific_summary(),
%%   <<"checkId">> => string(),
%%   <<"hasFlaggedResources">> => boolean(),
%%   <<"resourcesSummary">> => trusted_advisor_resources_summary(),
%%   <<"status">> => string(),
%%   <<"timestamp">> => string()
%% }
-type trusted_advisor_check_summary() :: #{binary() => any()}.

%% Example:
%% resolve_case_response() :: #{
%%   <<"finalCaseStatus">> => string(),
%%   <<"initialCaseStatus">> => string()
%% }
-type resolve_case_response() :: #{binary() => any()}.

%% Example:
%% attachment_id_not_found() :: #{
%%   <<"message">> => string()
%% }
-type attachment_id_not_found() :: #{binary() => any()}.

%% Example:
%% describe_attachment_limit_exceeded() :: #{
%%   <<"message">> => string()
%% }
-type describe_attachment_limit_exceeded() :: #{binary() => any()}.

-type add_attachments_to_set_errors() ::
    attachment_set_size_limit_exceeded() | 
    internal_server_error() | 
    attachment_set_id_not_found() | 
    attachment_set_expired() | 
    attachment_limit_exceeded().

-type add_communication_to_case_errors() ::
    internal_server_error() | 
    attachment_set_id_not_found() | 
    attachment_set_expired() | 
    case_id_not_found().

-type create_case_errors() ::
    internal_server_error() | 
    attachment_set_id_not_found() | 
    attachment_set_expired() | 
    case_creation_limit_exceeded().

-type describe_attachment_errors() ::
    describe_attachment_limit_exceeded() | 
    attachment_id_not_found() | 
    internal_server_error().

-type describe_cases_errors() ::
    internal_server_error() | 
    case_id_not_found().

-type describe_communications_errors() ::
    internal_server_error() | 
    case_id_not_found().

-type describe_create_case_options_errors() ::
    throttling_exception() | 
    internal_server_error().

-type describe_services_errors() ::
    internal_server_error().

-type describe_severity_levels_errors() ::
    internal_server_error().

-type describe_supported_languages_errors() ::
    throttling_exception() | 
    internal_server_error().

-type describe_trusted_advisor_check_refresh_statuses_errors() ::
    throttling_exception() | 
    internal_server_error().

-type describe_trusted_advisor_check_result_errors() ::
    throttling_exception() | 
    internal_server_error().

-type describe_trusted_advisor_check_summaries_errors() ::
    throttling_exception() | 
    internal_server_error().

-type describe_trusted_advisor_checks_errors() ::
    throttling_exception() | 
    internal_server_error().

-type refresh_trusted_advisor_check_errors() ::
    internal_server_error().

-type resolve_case_errors() ::
    internal_server_error() | 
    case_id_not_found().

%%====================================================================
%% API
%%====================================================================

%% @doc Adds one or more attachments to an attachment set.
%%
%% An attachment set is a temporary container for attachments that you add to
%% a case or
%% case communication. The set is available for 1 hour after it's
%% created. The
%% `expiryTime' returned in the response is when the set expires.
%%
%% You must have a Business, Enterprise On-Ramp, or Enterprise Support plan
%% to use the Amazon Web Services Support
%% API.
%%
%% If you call the Amazon Web Services Support API from an account that
%% doesn't have a
%% Business, Enterprise On-Ramp, or Enterprise Support plan, the
%% `SubscriptionRequiredException' error message appears. For
%% information about changing your support plan, see Amazon Web Services
%% Support: http://aws.amazon.com/premiumsupport/.
-spec add_attachments_to_set(aws_client:aws_client(), add_attachments_to_set_request()) ->
    {ok, add_attachments_to_set_response(), tuple()} |
    {error, any()} |
    {error, add_attachments_to_set_errors(), tuple()}.
add_attachments_to_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_attachments_to_set(Client, Input, []).

-spec add_attachments_to_set(aws_client:aws_client(), add_attachments_to_set_request(), proplists:proplist()) ->
    {ok, add_attachments_to_set_response(), tuple()} |
    {error, any()} |
    {error, add_attachments_to_set_errors(), tuple()}.
add_attachments_to_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddAttachmentsToSet">>, Input, Options).

%% @doc Adds additional customer communication to an Amazon Web Services
%% Support case.
%%
%% Use the `caseId'
%% parameter to identify the case to which to add communication. You can list
%% a set of
%% email addresses to copy on the communication by using the
%% `ccEmailAddresses'
%% parameter. The `communicationBody' value contains the text of the
%% communication.
%%
%% You must have a Business, Enterprise On-Ramp, or Enterprise Support plan
%% to use the Amazon Web Services Support
%% API.
%%
%% If you call the Amazon Web Services Support API from an account that
%% doesn't have a
%% Business, Enterprise On-Ramp, or Enterprise Support plan, the
%% `SubscriptionRequiredException' error message appears. For
%% information about changing your support plan, see Amazon Web Services
%% Support: http://aws.amazon.com/premiumsupport/.
-spec add_communication_to_case(aws_client:aws_client(), add_communication_to_case_request()) ->
    {ok, add_communication_to_case_response(), tuple()} |
    {error, any()} |
    {error, add_communication_to_case_errors(), tuple()}.
add_communication_to_case(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_communication_to_case(Client, Input, []).

-spec add_communication_to_case(aws_client:aws_client(), add_communication_to_case_request(), proplists:proplist()) ->
    {ok, add_communication_to_case_response(), tuple()} |
    {error, any()} |
    {error, add_communication_to_case_errors(), tuple()}.
add_communication_to_case(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddCommunicationToCase">>, Input, Options).

%% @doc Creates a case in the Amazon Web Services Support Center.
%%
%% This operation is similar to how you create a case
%% in the Amazon Web Services Support Center Create
%% Case: https://console.aws.amazon.com/support/home#/case/create page.
%%
%% The Amazon Web Services Support API doesn't support requesting service
%% limit increases. You can submit a
%% service limit increase in the following ways:
%%
%% Submit a request from the Amazon Web Services Support Center Create Case:
%% https://console.aws.amazon.com/support/home#/case/create page.
%%
%% Use the Service Quotas RequestServiceQuotaIncrease:
%% https://docs.aws.amazon.com/servicequotas/2019-06-24/apireference/API_RequestServiceQuotaIncrease.html
%% operation.
%%
%% A successful `CreateCase' request returns an Amazon Web Services
%% Support case number. You can use
%% the `DescribeCases' operation and specify the case number to get
%% existing Amazon Web Services Support cases. After you create a case, use
%% the `AddCommunicationToCase' operation to add additional communication
%% or
%% attachments to an existing case.
%%
%% The `caseId' is separate from the `displayId' that appears in
%% the Amazon Web Services Support Center:
%% https://console.aws.amazon.com/support. Use the `DescribeCases'
%% operation to get the `displayId'.
%%
%% You must have a Business, Enterprise On-Ramp, or Enterprise Support plan
%% to use the Amazon Web Services Support
%% API.
%%
%% If you call the Amazon Web Services Support API from an account that
%% doesn't have a
%% Business, Enterprise On-Ramp, or Enterprise Support plan, the
%% `SubscriptionRequiredException' error message appears. For
%% information about changing your support plan, see Amazon Web Services
%% Support: http://aws.amazon.com/premiumsupport/.
-spec create_case(aws_client:aws_client(), create_case_request()) ->
    {ok, create_case_response(), tuple()} |
    {error, any()} |
    {error, create_case_errors(), tuple()}.
create_case(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_case(Client, Input, []).

-spec create_case(aws_client:aws_client(), create_case_request(), proplists:proplist()) ->
    {ok, create_case_response(), tuple()} |
    {error, any()} |
    {error, create_case_errors(), tuple()}.
create_case(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCase">>, Input, Options).

%% @doc Returns the attachment that has the specified ID.
%%
%% Attachments can include screenshots,
%% error logs, or other files that describe your issue. Attachment IDs are
%% generated by the
%% case management system when you add an attachment to a case or case
%% communication.
%% Attachment IDs are returned in the `AttachmentDetails' objects that
%% are
%% returned by the `DescribeCommunications' operation.
%%
%% You must have a Business, Enterprise On-Ramp, or Enterprise Support plan
%% to use the Amazon Web Services Support
%% API.
%%
%% If you call the Amazon Web Services Support API from an account that
%% doesn't have a
%% Business, Enterprise On-Ramp, or Enterprise Support plan, the
%% `SubscriptionRequiredException' error message appears. For
%% information about changing your support plan, see Amazon Web Services
%% Support: http://aws.amazon.com/premiumsupport/.
-spec describe_attachment(aws_client:aws_client(), describe_attachment_request()) ->
    {ok, describe_attachment_response(), tuple()} |
    {error, any()} |
    {error, describe_attachment_errors(), tuple()}.
describe_attachment(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_attachment(Client, Input, []).

-spec describe_attachment(aws_client:aws_client(), describe_attachment_request(), proplists:proplist()) ->
    {ok, describe_attachment_response(), tuple()} |
    {error, any()} |
    {error, describe_attachment_errors(), tuple()}.
describe_attachment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAttachment">>, Input, Options).

%% @doc Returns a list of cases that you specify by passing one or more case
%% IDs.
%%
%% You can use
%% the `afterTime' and `beforeTime' parameters to filter the cases by
%% date. You can set values for the `includeResolvedCases' and
%% `includeCommunications' parameters to specify how much information to
%% return.
%%
%% The response returns the following in JSON format:
%%
%% One or more CaseDetails:
%% https://docs.aws.amazon.com/awssupport/latest/APIReference/API_CaseDetails.html
%% data types.
%%
%% One or more `nextToken' values, which specify where to paginate the
%% returned records represented by the `CaseDetails' objects.
%%
%% Case data is available for 12 months after creation. If a case was created
%% more than
%% 12 months ago, a request might return an error.
%%
%% You must have a Business, Enterprise On-Ramp, or Enterprise Support plan
%% to use the Amazon Web Services Support
%% API.
%%
%% If you call the Amazon Web Services Support API from an account that
%% doesn't have a
%% Business, Enterprise On-Ramp, or Enterprise Support plan, the
%% `SubscriptionRequiredException' error message appears. For
%% information about changing your support plan, see Amazon Web Services
%% Support: http://aws.amazon.com/premiumsupport/.
-spec describe_cases(aws_client:aws_client(), describe_cases_request()) ->
    {ok, describe_cases_response(), tuple()} |
    {error, any()} |
    {error, describe_cases_errors(), tuple()}.
describe_cases(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_cases(Client, Input, []).

-spec describe_cases(aws_client:aws_client(), describe_cases_request(), proplists:proplist()) ->
    {ok, describe_cases_response(), tuple()} |
    {error, any()} |
    {error, describe_cases_errors(), tuple()}.
describe_cases(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCases">>, Input, Options).

%% @doc Returns communications and attachments for one or more support cases.
%%
%% Use the
%% `afterTime' and `beforeTime' parameters to filter by date. You
%% can use the `caseId' parameter to restrict the results to a specific
%% case.
%%
%% Case data is available for 12 months after creation. If a case was created
%% more than
%% 12 months ago, a request for data might cause an error.
%%
%% You can use the `maxResults' and `nextToken' parameters to
%% control the pagination of the results. Set `maxResults' to the number
%% of
%% cases that you want to display on each page, and use `nextToken' to
%% specify
%% the resumption of pagination.
%%
%% You must have a Business, Enterprise On-Ramp, or Enterprise Support plan
%% to use the Amazon Web Services Support
%% API.
%%
%% If you call the Amazon Web Services Support API from an account that
%% doesn't have a
%% Business, Enterprise On-Ramp, or Enterprise Support plan, the
%% `SubscriptionRequiredException' error message appears. For
%% information about changing your support plan, see Amazon Web Services
%% Support: http://aws.amazon.com/premiumsupport/.
-spec describe_communications(aws_client:aws_client(), describe_communications_request()) ->
    {ok, describe_communications_response(), tuple()} |
    {error, any()} |
    {error, describe_communications_errors(), tuple()}.
describe_communications(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_communications(Client, Input, []).

-spec describe_communications(aws_client:aws_client(), describe_communications_request(), proplists:proplist()) ->
    {ok, describe_communications_response(), tuple()} |
    {error, any()} |
    {error, describe_communications_errors(), tuple()}.
describe_communications(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCommunications">>, Input, Options).

%% @doc Returns a list of CreateCaseOption types along with the
%% corresponding supported hours and language availability.
%%
%% You can specify the `language'
%% `categoryCode',
%% `issueType' and `serviceCode' used to retrieve the
%% CreateCaseOptions.
%%
%% You must have a Business, Enterprise On-Ramp, or Enterprise Support plan
%% to use the Amazon Web Services Support
%% API.
%%
%% If you call the Amazon Web Services Support API from an account that
%% doesn't have a
%% Business, Enterprise On-Ramp, or Enterprise Support plan, the
%% `SubscriptionRequiredException' error message appears. For
%% information about changing your support plan, see Amazon Web Services
%% Support: http://aws.amazon.com/premiumsupport/.
-spec describe_create_case_options(aws_client:aws_client(), describe_create_case_options_request()) ->
    {ok, describe_create_case_options_response(), tuple()} |
    {error, any()} |
    {error, describe_create_case_options_errors(), tuple()}.
describe_create_case_options(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_create_case_options(Client, Input, []).

-spec describe_create_case_options(aws_client:aws_client(), describe_create_case_options_request(), proplists:proplist()) ->
    {ok, describe_create_case_options_response(), tuple()} |
    {error, any()} |
    {error, describe_create_case_options_errors(), tuple()}.
describe_create_case_options(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCreateCaseOptions">>, Input, Options).

%% @doc Returns the current list of Amazon Web Services services and a list
%% of service categories for each
%% service.
%%
%% You then use service names and categories in your `CreateCase'
%% requests. Each Amazon Web Services service has its own set of categories.
%%
%% The service codes and category codes correspond to the values that appear
%% in the
%% Service and Category lists on the Amazon Web Services Support Center
%% Create Case: https://console.aws.amazon.com/support/home#/case/create
%% page. The values in those fields
%% don't necessarily match the service codes and categories returned by
%% the
%% `DescribeServices' operation. Always use the service codes and
%% categories
%% that the `DescribeServices' operation returns, so that you have the
%% most
%% recent set of service and category codes.
%%
%% You must have a Business, Enterprise On-Ramp, or Enterprise Support plan
%% to use the Amazon Web Services Support
%% API.
%%
%% If you call the Amazon Web Services Support API from an account that
%% doesn't have a
%% Business, Enterprise On-Ramp, or Enterprise Support plan, the
%% `SubscriptionRequiredException' error message appears. For
%% information about changing your support plan, see Amazon Web Services
%% Support: http://aws.amazon.com/premiumsupport/.
-spec describe_services(aws_client:aws_client(), describe_services_request()) ->
    {ok, describe_services_response(), tuple()} |
    {error, any()} |
    {error, describe_services_errors(), tuple()}.
describe_services(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_services(Client, Input, []).

-spec describe_services(aws_client:aws_client(), describe_services_request(), proplists:proplist()) ->
    {ok, describe_services_response(), tuple()} |
    {error, any()} |
    {error, describe_services_errors(), tuple()}.
describe_services(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeServices">>, Input, Options).

%% @doc Returns the list of severity levels that you can assign to a support
%% case.
%%
%% The
%% severity level for a case is also a field in the `CaseDetails' data
%% type
%% that you include for a `CreateCase' request.
%%
%% You must have a Business, Enterprise On-Ramp, or Enterprise Support plan
%% to use the Amazon Web Services Support
%% API.
%%
%% If you call the Amazon Web Services Support API from an account that
%% doesn't have a
%% Business, Enterprise On-Ramp, or Enterprise Support plan, the
%% `SubscriptionRequiredException' error message appears. For
%% information about changing your support plan, see Amazon Web Services
%% Support: http://aws.amazon.com/premiumsupport/.
-spec describe_severity_levels(aws_client:aws_client(), describe_severity_levels_request()) ->
    {ok, describe_severity_levels_response(), tuple()} |
    {error, any()} |
    {error, describe_severity_levels_errors(), tuple()}.
describe_severity_levels(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_severity_levels(Client, Input, []).

-spec describe_severity_levels(aws_client:aws_client(), describe_severity_levels_request(), proplists:proplist()) ->
    {ok, describe_severity_levels_response(), tuple()} |
    {error, any()} |
    {error, describe_severity_levels_errors(), tuple()}.
describe_severity_levels(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSeverityLevels">>, Input, Options).

%% @doc Returns a list of supported languages for a specified
%% `categoryCode',
%% `issueType' and `serviceCode'.
%%
%% The returned supported languages will
%% include a ISO 639-1 code for the `language', and the language display
%% name.
%%
%% You must have a Business, Enterprise On-Ramp, or Enterprise Support plan
%% to use the Amazon Web Services Support
%% API.
%%
%% If you call the Amazon Web Services Support API from an account that
%% doesn't have a
%% Business, Enterprise On-Ramp, or Enterprise Support plan, the
%% `SubscriptionRequiredException' error message appears. For
%% information about changing your support plan, see Amazon Web Services
%% Support: http://aws.amazon.com/premiumsupport/.
-spec describe_supported_languages(aws_client:aws_client(), describe_supported_languages_request()) ->
    {ok, describe_supported_languages_response(), tuple()} |
    {error, any()} |
    {error, describe_supported_languages_errors(), tuple()}.
describe_supported_languages(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_supported_languages(Client, Input, []).

-spec describe_supported_languages(aws_client:aws_client(), describe_supported_languages_request(), proplists:proplist()) ->
    {ok, describe_supported_languages_response(), tuple()} |
    {error, any()} |
    {error, describe_supported_languages_errors(), tuple()}.
describe_supported_languages(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSupportedLanguages">>, Input, Options).

%% @doc Returns the refresh status of the Trusted Advisor checks that have
%% the specified check
%% IDs.
%%
%% You can get the check IDs by calling the
%% `DescribeTrustedAdvisorChecks' operation.
%%
%% Some checks are refreshed automatically, and you can't return their
%% refresh statuses
%% by using the `DescribeTrustedAdvisorCheckRefreshStatuses' operation.
%% If you
%% call this operation for these checks, you might see an
%% `InvalidParameterValue' error.
%%
%% You must have a Business, Enterprise On-Ramp, or Enterprise Support plan
%% to use the Amazon Web Services Support
%% API.
%%
%% If you call the Amazon Web Services Support API from an account that
%% doesn't have a
%% Business, Enterprise On-Ramp, or Enterprise Support plan, the
%% `SubscriptionRequiredException' error message appears. For
%% information about changing your support plan, see Amazon Web Services
%% Support: http://aws.amazon.com/premiumsupport/.
%%
%% To call the Trusted Advisor operations in
%% the Amazon Web Services Support API, you must use the US East (N.
%% Virginia) endpoint. Currently, the US West (Oregon) and Europe (Ireland)
%% endpoints don't support the Trusted Advisor operations. For more
%% information, see About the Amazon Web Services Support
%% API:
%% https://docs.aws.amazon.com/awssupport/latest/user/about-support-api.html#endpoint
%% in the Amazon Web Services Support User Guide.
-spec describe_trusted_advisor_check_refresh_statuses(aws_client:aws_client(), describe_trusted_advisor_check_refresh_statuses_request()) ->
    {ok, describe_trusted_advisor_check_refresh_statuses_response(), tuple()} |
    {error, any()} |
    {error, describe_trusted_advisor_check_refresh_statuses_errors(), tuple()}.
describe_trusted_advisor_check_refresh_statuses(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_trusted_advisor_check_refresh_statuses(Client, Input, []).

-spec describe_trusted_advisor_check_refresh_statuses(aws_client:aws_client(), describe_trusted_advisor_check_refresh_statuses_request(), proplists:proplist()) ->
    {ok, describe_trusted_advisor_check_refresh_statuses_response(), tuple()} |
    {error, any()} |
    {error, describe_trusted_advisor_check_refresh_statuses_errors(), tuple()}.
describe_trusted_advisor_check_refresh_statuses(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTrustedAdvisorCheckRefreshStatuses">>, Input, Options).

%% @doc Returns the results of the Trusted Advisor check that has the
%% specified check ID.
%%
%% You
%% can get the check IDs by calling the `DescribeTrustedAdvisorChecks'
%% operation.
%%
%% The response contains a `TrustedAdvisorCheckResult' object, which
%% contains these three objects:
%%
%% `TrustedAdvisorCategorySpecificSummary'
%%
%% `TrustedAdvisorResourceDetail'
%%
%% `TrustedAdvisorResourcesSummary'
%%
%% In addition, the response contains these fields:
%%
%% status - The alert status of the check
%% can be `ok' (green), `warning' (yellow),
%% `error' (red), or `not_available'.
%%
%% timestamp - The time of the last refresh
%% of the check.
%%
%% checkId - The unique identifier for the
%% check.
%%
%% You must have a Business, Enterprise On-Ramp, or Enterprise Support plan
%% to use the Amazon Web Services Support
%% API.
%%
%% If you call the Amazon Web Services Support API from an account that
%% doesn't have a
%% Business, Enterprise On-Ramp, or Enterprise Support plan, the
%% `SubscriptionRequiredException' error message appears. For
%% information about changing your support plan, see Amazon Web Services
%% Support: http://aws.amazon.com/premiumsupport/.
%%
%% To call the Trusted Advisor operations in
%% the Amazon Web Services Support API, you must use the US East (N.
%% Virginia) endpoint. Currently, the US West (Oregon) and Europe (Ireland)
%% endpoints don't support the Trusted Advisor operations. For more
%% information, see About the Amazon Web Services Support
%% API:
%% https://docs.aws.amazon.com/awssupport/latest/user/about-support-api.html#endpoint
%% in the Amazon Web Services Support User Guide.
-spec describe_trusted_advisor_check_result(aws_client:aws_client(), describe_trusted_advisor_check_result_request()) ->
    {ok, describe_trusted_advisor_check_result_response(), tuple()} |
    {error, any()} |
    {error, describe_trusted_advisor_check_result_errors(), tuple()}.
describe_trusted_advisor_check_result(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_trusted_advisor_check_result(Client, Input, []).

-spec describe_trusted_advisor_check_result(aws_client:aws_client(), describe_trusted_advisor_check_result_request(), proplists:proplist()) ->
    {ok, describe_trusted_advisor_check_result_response(), tuple()} |
    {error, any()} |
    {error, describe_trusted_advisor_check_result_errors(), tuple()}.
describe_trusted_advisor_check_result(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTrustedAdvisorCheckResult">>, Input, Options).

%% @doc Returns the results for the Trusted Advisor check summaries for the
%% check IDs that you
%% specified.
%%
%% You can get the check IDs by calling the
%% `DescribeTrustedAdvisorChecks' operation.
%%
%% The response contains an array of `TrustedAdvisorCheckSummary'
%% objects.
%%
%% You must have a Business, Enterprise On-Ramp, or Enterprise Support plan
%% to use the Amazon Web Services Support
%% API.
%%
%% If you call the Amazon Web Services Support API from an account that
%% doesn't have a
%% Business, Enterprise On-Ramp, or Enterprise Support plan, the
%% `SubscriptionRequiredException' error message appears. For
%% information about changing your support plan, see Amazon Web Services
%% Support: http://aws.amazon.com/premiumsupport/.
%%
%% To call the Trusted Advisor operations in
%% the Amazon Web Services Support API, you must use the US East (N.
%% Virginia) endpoint. Currently, the US West (Oregon) and Europe (Ireland)
%% endpoints don't support the Trusted Advisor operations. For more
%% information, see About the Amazon Web Services Support
%% API:
%% https://docs.aws.amazon.com/awssupport/latest/user/about-support-api.html#endpoint
%% in the Amazon Web Services Support User Guide.
-spec describe_trusted_advisor_check_summaries(aws_client:aws_client(), describe_trusted_advisor_check_summaries_request()) ->
    {ok, describe_trusted_advisor_check_summaries_response(), tuple()} |
    {error, any()} |
    {error, describe_trusted_advisor_check_summaries_errors(), tuple()}.
describe_trusted_advisor_check_summaries(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_trusted_advisor_check_summaries(Client, Input, []).

-spec describe_trusted_advisor_check_summaries(aws_client:aws_client(), describe_trusted_advisor_check_summaries_request(), proplists:proplist()) ->
    {ok, describe_trusted_advisor_check_summaries_response(), tuple()} |
    {error, any()} |
    {error, describe_trusted_advisor_check_summaries_errors(), tuple()}.
describe_trusted_advisor_check_summaries(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTrustedAdvisorCheckSummaries">>, Input, Options).

%% @doc Returns information about all available Trusted Advisor checks,
%% including the name, ID,
%% category, description, and metadata.
%%
%% You must specify a language code.
%%
%% The response contains a `TrustedAdvisorCheckDescription' object for
%% each check. You must set the Amazon Web Services Region to us-east-1.
%%
%% You must have a Business, Enterprise On-Ramp, or Enterprise Support plan
%% to use the Amazon Web Services Support API.
%%
%% If you call the Amazon Web Services Support API from an account that
%% doesn't have a
%% Business, Enterprise On-Ramp, or Enterprise Support plan, the
%% `SubscriptionRequiredException' error
%% message appears. For information about changing your support plan, see
%% Amazon Web Services Support: http://aws.amazon.com/premiumsupport/.
%%
%% The names and descriptions for Trusted Advisor checks are subject to
%% change. We
%% recommend that you specify the check ID in your code to uniquely identify
%% a
%% check.
%%
%% To call the Trusted Advisor operations in
%% the Amazon Web Services Support API, you must use the US East (N.
%% Virginia) endpoint. Currently, the US West (Oregon) and Europe (Ireland)
%% endpoints don't support the Trusted Advisor operations. For more
%% information, see About the Amazon Web Services Support
%% API:
%% https://docs.aws.amazon.com/awssupport/latest/user/about-support-api.html#endpoint
%% in the Amazon Web Services Support User Guide.
-spec describe_trusted_advisor_checks(aws_client:aws_client(), describe_trusted_advisor_checks_request()) ->
    {ok, describe_trusted_advisor_checks_response(), tuple()} |
    {error, any()} |
    {error, describe_trusted_advisor_checks_errors(), tuple()}.
describe_trusted_advisor_checks(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_trusted_advisor_checks(Client, Input, []).

-spec describe_trusted_advisor_checks(aws_client:aws_client(), describe_trusted_advisor_checks_request(), proplists:proplist()) ->
    {ok, describe_trusted_advisor_checks_response(), tuple()} |
    {error, any()} |
    {error, describe_trusted_advisor_checks_errors(), tuple()}.
describe_trusted_advisor_checks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTrustedAdvisorChecks">>, Input, Options).

%% @doc Refreshes the Trusted Advisor check that you specify using the check
%% ID.
%%
%% You can get the
%% check IDs by calling the `DescribeTrustedAdvisorChecks'
%% operation.
%%
%% Some checks are refreshed automatically. If you call the
%% `RefreshTrustedAdvisorCheck' operation to refresh them, you might see
%% the `InvalidParameterValue' error.
%%
%% The response contains a `TrustedAdvisorCheckRefreshStatus'
%% object.
%%
%% You must have a Business, Enterprise On-Ramp, or Enterprise Support plan
%% to use the Amazon Web Services Support
%% API.
%%
%% If you call the Amazon Web Services Support API from an account that
%% doesn't have a
%% Business, Enterprise On-Ramp, or Enterprise Support plan, the
%% `SubscriptionRequiredException' error message appears. For
%% information about changing your support plan, see Amazon Web Services
%% Support: http://aws.amazon.com/premiumsupport/.
%%
%% To call the Trusted Advisor operations in
%% the Amazon Web Services Support API, you must use the US East (N.
%% Virginia) endpoint. Currently, the US West (Oregon) and Europe (Ireland)
%% endpoints don't support the Trusted Advisor operations. For more
%% information, see About the Amazon Web Services Support
%% API:
%% https://docs.aws.amazon.com/awssupport/latest/user/about-support-api.html#endpoint
%% in the Amazon Web Services Support User Guide.
-spec refresh_trusted_advisor_check(aws_client:aws_client(), refresh_trusted_advisor_check_request()) ->
    {ok, refresh_trusted_advisor_check_response(), tuple()} |
    {error, any()} |
    {error, refresh_trusted_advisor_check_errors(), tuple()}.
refresh_trusted_advisor_check(Client, Input)
  when is_map(Client), is_map(Input) ->
    refresh_trusted_advisor_check(Client, Input, []).

-spec refresh_trusted_advisor_check(aws_client:aws_client(), refresh_trusted_advisor_check_request(), proplists:proplist()) ->
    {ok, refresh_trusted_advisor_check_response(), tuple()} |
    {error, any()} |
    {error, refresh_trusted_advisor_check_errors(), tuple()}.
refresh_trusted_advisor_check(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RefreshTrustedAdvisorCheck">>, Input, Options).

%% @doc Resolves a support case.
%%
%% This operation takes a `caseId' and returns the
%% initial and final state of the case.
%%
%% You must have a Business, Enterprise On-Ramp, or Enterprise Support plan
%% to use the Amazon Web Services Support
%% API.
%%
%% If you call the Amazon Web Services Support API from an account that
%% doesn't have a
%% Business, Enterprise On-Ramp, or Enterprise Support plan, the
%% `SubscriptionRequiredException' error message appears. For
%% information about changing your support plan, see Amazon Web Services
%% Support: http://aws.amazon.com/premiumsupport/.
-spec resolve_case(aws_client:aws_client(), resolve_case_request()) ->
    {ok, resolve_case_response(), tuple()} |
    {error, any()} |
    {error, resolve_case_errors(), tuple()}.
resolve_case(Client, Input)
  when is_map(Client), is_map(Input) ->
    resolve_case(Client, Input, []).

-spec resolve_case(aws_client:aws_client(), resolve_case_request(), proplists:proplist()) ->
    {ok, resolve_case_response(), tuple()} |
    {error, any()} |
    {error, resolve_case_errors(), tuple()}.
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
    Proto = aws_client:proto(Client),
    Port = aws_client:port(Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
