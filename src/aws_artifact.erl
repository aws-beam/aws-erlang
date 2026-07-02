%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc This reference provides descriptions of the low-level AWS Artifact
%% Service API.
-module(aws_artifact).

-export([create_compliance_inquiry/2,
         create_compliance_inquiry/3,
         export_compliance_inquiry/2,
         export_compliance_inquiry/3,
         get_account_settings/1,
         get_account_settings/3,
         get_account_settings/4,
         get_compliance_inquiry_metadata/2,
         get_compliance_inquiry_metadata/4,
         get_compliance_inquiry_metadata/5,
         get_report/3,
         get_report/5,
         get_report/6,
         get_report_metadata/2,
         get_report_metadata/4,
         get_report_metadata/5,
         get_term_for_report/2,
         get_term_for_report/4,
         get_term_for_report/5,
         list_compliance_inquiries/1,
         list_compliance_inquiries/3,
         list_compliance_inquiries/4,
         list_compliance_inquiry_queries/2,
         list_compliance_inquiry_queries/4,
         list_compliance_inquiry_queries/5,
         list_customer_agreements/1,
         list_customer_agreements/3,
         list_customer_agreements/4,
         list_report_versions/2,
         list_report_versions/4,
         list_report_versions/5,
         list_reports/1,
         list_reports/3,
         list_reports/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         put_account_settings/2,
         put_account_settings/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% get_compliance_inquiry_metadata_response() :: #{
%%   <<"complianceInquiryDetail">> => inquiry_detail(),
%%   <<"tags">> => map()
%% }
-type get_compliance_inquiry_metadata_response() :: #{binary() => any()}.


%% Example:
%% export_compliance_inquiry_response() :: #{
%%   <<"documentPresignedUrl">> => string(),
%%   <<"tags">> => map()
%% }
-type export_compliance_inquiry_response() :: #{binary() => any()}.


%% Example:
%% list_report_versions_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"reportId">> := string()
%% }
-type list_report_versions_request() :: #{binary() => any()}.


%% Example:
%% get_report_metadata_request() :: #{
%%   <<"reportId">> := string(),
%%   <<"reportVersion">> => float()
%% }
-type get_report_metadata_request() :: #{binary() => any()}.


%% Example:
%% list_customer_agreements_response() :: #{
%%   <<"customerAgreements">> => list(customer_agreement_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_customer_agreements_response() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.

%% Example:
%% get_account_settings_request() :: #{}
-type get_account_settings_request() :: #{}.


%% Example:
%% get_account_settings_response() :: #{
%%   <<"accountSettings">> => account_settings()
%% }
-type get_account_settings_response() :: #{binary() => any()}.


%% Example:
%% create_compliance_inquiry_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"inquiryContent">> := list(),
%%   <<"name">> := [string()],
%%   <<"supportMode">> => list(any()),
%%   <<"tags">> => map()
%% }
-type create_compliance_inquiry_request() :: #{binary() => any()}.


%% Example:
%% citation() :: #{
%%   <<"sourceContent">> => string(),
%%   <<"sourceLabel">> => string(),
%%   <<"sourceLink">> => string()
%% }
-type citation() :: #{binary() => any()}.


%% Example:
%% list_compliance_inquiry_queries_request() :: #{
%%   <<"complianceInquiryId">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_compliance_inquiry_queries_request() :: #{binary() => any()}.


%% Example:
%% get_compliance_inquiry_metadata_request() :: #{
%%   <<"complianceInquiryId">> := string()
%% }
-type get_compliance_inquiry_metadata_request() :: #{binary() => any()}.


%% Example:
%% get_term_for_report_request() :: #{
%%   <<"reportId">> := string(),
%%   <<"reportVersion">> => float()
%% }
-type get_term_for_report_request() :: #{binary() => any()}.


%% Example:
%% list_compliance_inquiries_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_compliance_inquiries_request() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% customer_agreement_summary() :: #{
%%   <<"acceptanceTerms">> => list(string()),
%%   <<"agreementArn">> => string(),
%%   <<"arn">> => string(),
%%   <<"awsAccountId">> => string(),
%%   <<"description">> => string(),
%%   <<"effectiveEnd">> => non_neg_integer(),
%%   <<"effectiveStart">> => non_neg_integer(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"organizationArn">> => string(),
%%   <<"state">> => list(any()),
%%   <<"terminateTerms">> => list(string()),
%%   <<"type">> => list(any())
%% }
-type customer_agreement_summary() :: #{binary() => any()}.


%% Example:
%% list_customer_agreements_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_customer_agreements_request() :: #{binary() => any()}.


%% Example:
%% list_reports_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"reports">> => list(report_summary())
%% }
-type list_reports_response() :: #{binary() => any()}.


%% Example:
%% get_report_metadata_response() :: #{
%%   <<"reportDetails">> => report_detail()
%% }
-type get_report_metadata_response() :: #{binary() => any()}.


%% Example:
%% list_compliance_inquiries_response() :: #{
%%   <<"complianceInquiries">> => list(inquiry_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_compliance_inquiries_response() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% get_report_response() :: #{
%%   <<"documentPresignedUrl">> => [string()]
%% }
-type get_report_response() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"quotaCode">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()],
%%   <<"serviceCode">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% response_version() :: #{
%%   <<"responseText">> => string(),
%%   <<"timestamp">> => non_neg_integer()
%% }
-type response_version() :: #{binary() => any()}.


%% Example:
%% list_compliance_inquiry_queries_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"queries">> => list(query_summary())
%% }
-type list_compliance_inquiry_queries_response() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% validation_exception_field() :: #{
%%   <<"message">> => [string()],
%%   <<"name">> => [string()]
%% }
-type validation_exception_field() :: #{binary() => any()}.


%% Example:
%% list_report_versions_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"reports">> => list(report_summary())
%% }
-type list_report_versions_response() :: #{binary() => any()}.


%% Example:
%% inquiry_summary() :: #{
%%   <<"arn">> => [string()],
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"id">> => string(),
%%   <<"inputSource">> => list(any()),
%%   <<"name">> => [string()],
%%   <<"status">> => list(any()),
%%   <<"statusMessage">> => list(any())
%% }
-type inquiry_summary() :: #{binary() => any()}.


%% Example:
%% report_summary() :: #{
%%   <<"acceptanceType">> => list(any()),
%%   <<"arn">> => string(),
%%   <<"category">> => string(),
%%   <<"companyName">> => string(),
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"periodEnd">> => non_neg_integer(),
%%   <<"periodStart">> => non_neg_integer(),
%%   <<"productName">> => string(),
%%   <<"series">> => string(),
%%   <<"state">> => list(any()),
%%   <<"statusMessage">> => string(),
%%   <<"uploadState">> => list(any()),
%%   <<"version">> => float()
%% }
-type report_summary() :: #{binary() => any()}.


%% Example:
%% inquiry_file_content() :: #{
%%   <<"content">> => [binary()],
%%   <<"fileSections">> => list(string())
%% }
-type inquiry_file_content() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"retryAfterSeconds">> => [integer()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% query_summary() :: #{
%%   <<"citations">> => list(citation()),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"query">> => string(),
%%   <<"queryIdentifier">> => [integer()],
%%   <<"response">> => string(),
%%   <<"reviewType">> => list(any()),
%%   <<"status">> => list(any()),
%%   <<"statusMessage">> => list(any()),
%%   <<"updatedResponseVersions">> => list(response_version())
%% }
-type query_summary() :: #{binary() => any()}.


%% Example:
%% get_report_request() :: #{
%%   <<"reportId">> := string(),
%%   <<"reportVersion">> => float(),
%%   <<"termToken">> := string()
%% }
-type get_report_request() :: #{binary() => any()}.


%% Example:
%% get_term_for_report_response() :: #{
%%   <<"documentPresignedUrl">> => [string()],
%%   <<"termToken">> => [string()]
%% }
-type get_term_for_report_response() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% inquiry_detail() :: #{
%%   <<"arn">> => [string()],
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"id">> => string(),
%%   <<"inputSource">> => list(any()),
%%   <<"name">> => [string()],
%%   <<"status">> => list(any()),
%%   <<"statusMessage">> => list(any()),
%%   <<"supportMode">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type inquiry_detail() :: #{binary() => any()}.


%% Example:
%% account_settings() :: #{
%%   <<"notificationSubscriptionStatus">> => list(any())
%% }
-type account_settings() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"fieldList">> => list(validation_exception_field()),
%%   <<"message">> => [string()],
%%   <<"reason">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% report_detail() :: #{
%%   <<"acceptanceType">> => list(any()),
%%   <<"arn">> => string(),
%%   <<"category">> => string(),
%%   <<"companyName">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"deletedAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"lastModifiedAt">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"periodEnd">> => non_neg_integer(),
%%   <<"periodStart">> => non_neg_integer(),
%%   <<"productName">> => string(),
%%   <<"sequenceNumber">> => float(),
%%   <<"series">> => string(),
%%   <<"state">> => list(any()),
%%   <<"statusMessage">> => string(),
%%   <<"termArn">> => string(),
%%   <<"uploadState">> => list(any()),
%%   <<"version">> => float()
%% }
-type report_detail() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"quotaCode">> => [string()],
%%   <<"retryAfterSeconds">> => [integer()],
%%   <<"serviceCode">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% list_reports_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_reports_request() :: #{binary() => any()}.


%% Example:
%% put_account_settings_response() :: #{
%%   <<"accountSettings">> => account_settings()
%% }
-type put_account_settings_response() :: #{binary() => any()}.


%% Example:
%% create_compliance_inquiry_response() :: #{
%%   <<"complianceInquirySummary">> => inquiry_summary(),
%%   <<"tags">> => map()
%% }
-type create_compliance_inquiry_response() :: #{binary() => any()}.


%% Example:
%% export_compliance_inquiry_request() :: #{
%%   <<"complianceInquiryId">> := string(),
%%   <<"includeCitations">> => [boolean()],
%%   <<"queryIdentifiers">> => list([integer()]())
%% }
-type export_compliance_inquiry_request() :: #{binary() => any()}.


%% Example:
%% put_account_settings_request() :: #{
%%   <<"notificationSubscriptionStatus">> => list(any())
%% }
-type put_account_settings_request() :: #{binary() => any()}.

-type create_compliance_inquiry_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type export_compliance_inquiry_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_account_settings_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_compliance_inquiry_metadata_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_report_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_report_metadata_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type get_term_for_report_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_compliance_inquiries_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_compliance_inquiry_queries_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_customer_agreements_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_report_versions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type list_reports_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type put_account_settings_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type tag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Create a new compliance inquiry.
-spec create_compliance_inquiry(aws_client:aws_client(), create_compliance_inquiry_request()) ->
    {ok, create_compliance_inquiry_response(), tuple()} |
    {error, any()} |
    {error, create_compliance_inquiry_errors(), tuple()}.
create_compliance_inquiry(Client, Input) ->
    create_compliance_inquiry(Client, Input, []).

-spec create_compliance_inquiry(aws_client:aws_client(), create_compliance_inquiry_request(), proplists:proplist()) ->
    {ok, create_compliance_inquiry_response(), tuple()} |
    {error, any()} |
    {error, create_compliance_inquiry_errors(), tuple()}.
create_compliance_inquiry(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/compliance-inquiry/create"],
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

%% @doc Export a compliance inquiry report.
-spec export_compliance_inquiry(aws_client:aws_client(), export_compliance_inquiry_request()) ->
    {ok, export_compliance_inquiry_response(), tuple()} |
    {error, any()} |
    {error, export_compliance_inquiry_errors(), tuple()}.
export_compliance_inquiry(Client, Input) ->
    export_compliance_inquiry(Client, Input, []).

-spec export_compliance_inquiry(aws_client:aws_client(), export_compliance_inquiry_request(), proplists:proplist()) ->
    {ok, export_compliance_inquiry_response(), tuple()} |
    {error, any()} |
    {error, export_compliance_inquiry_errors(), tuple()}.
export_compliance_inquiry(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/compliance-inquiry/export"],
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

%% @doc Get the account settings for Artifact.
-spec get_account_settings(aws_client:aws_client()) ->
    {ok, get_account_settings_response(), tuple()} |
    {error, any()} |
    {error, get_account_settings_errors(), tuple()}.
get_account_settings(Client)
  when is_map(Client) ->
    get_account_settings(Client, #{}, #{}).

-spec get_account_settings(aws_client:aws_client(), map(), map()) ->
    {ok, get_account_settings_response(), tuple()} |
    {error, any()} |
    {error, get_account_settings_errors(), tuple()}.
get_account_settings(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_account_settings(Client, QueryMap, HeadersMap, []).

-spec get_account_settings(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_account_settings_response(), tuple()} |
    {error, any()} |
    {error, get_account_settings_errors(), tuple()}.
get_account_settings(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/account-settings/get"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get the metadata for a single compliance inquiry.
-spec get_compliance_inquiry_metadata(aws_client:aws_client(), binary() | list()) ->
    {ok, get_compliance_inquiry_metadata_response(), tuple()} |
    {error, any()} |
    {error, get_compliance_inquiry_metadata_errors(), tuple()}.
get_compliance_inquiry_metadata(Client, ComplianceInquiryId)
  when is_map(Client) ->
    get_compliance_inquiry_metadata(Client, ComplianceInquiryId, #{}, #{}).

-spec get_compliance_inquiry_metadata(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_compliance_inquiry_metadata_response(), tuple()} |
    {error, any()} |
    {error, get_compliance_inquiry_metadata_errors(), tuple()}.
get_compliance_inquiry_metadata(Client, ComplianceInquiryId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_compliance_inquiry_metadata(Client, ComplianceInquiryId, QueryMap, HeadersMap, []).

-spec get_compliance_inquiry_metadata(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_compliance_inquiry_metadata_response(), tuple()} |
    {error, any()} |
    {error, get_compliance_inquiry_metadata_errors(), tuple()}.
get_compliance_inquiry_metadata(Client, ComplianceInquiryId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/compliance-inquiry/getMetadata"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"complianceInquiryId">>, ComplianceInquiryId}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get the content for a single report.
-spec get_report(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_report_response(), tuple()} |
    {error, any()} |
    {error, get_report_errors(), tuple()}.
get_report(Client, ReportId, TermToken)
  when is_map(Client) ->
    get_report(Client, ReportId, TermToken, #{}, #{}).

-spec get_report(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_report_response(), tuple()} |
    {error, any()} |
    {error, get_report_errors(), tuple()}.
get_report(Client, ReportId, TermToken, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_report(Client, ReportId, TermToken, QueryMap, HeadersMap, []).

-spec get_report(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_report_response(), tuple()} |
    {error, any()} |
    {error, get_report_errors(), tuple()}.
get_report(Client, ReportId, TermToken, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/report/get"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"reportId">>, ReportId},
        {<<"reportVersion">>, maps:get(<<"reportVersion">>, QueryMap, undefined)},
        {<<"termToken">>, TermToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get the metadata for a single report.
-spec get_report_metadata(aws_client:aws_client(), binary() | list()) ->
    {ok, get_report_metadata_response(), tuple()} |
    {error, any()} |
    {error, get_report_metadata_errors(), tuple()}.
get_report_metadata(Client, ReportId)
  when is_map(Client) ->
    get_report_metadata(Client, ReportId, #{}, #{}).

-spec get_report_metadata(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_report_metadata_response(), tuple()} |
    {error, any()} |
    {error, get_report_metadata_errors(), tuple()}.
get_report_metadata(Client, ReportId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_report_metadata(Client, ReportId, QueryMap, HeadersMap, []).

-spec get_report_metadata(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_report_metadata_response(), tuple()} |
    {error, any()} |
    {error, get_report_metadata_errors(), tuple()}.
get_report_metadata(Client, ReportId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/report/getMetadata"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"reportId">>, ReportId},
        {<<"reportVersion">>, maps:get(<<"reportVersion">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get the Term content associated with a single report.
-spec get_term_for_report(aws_client:aws_client(), binary() | list()) ->
    {ok, get_term_for_report_response(), tuple()} |
    {error, any()} |
    {error, get_term_for_report_errors(), tuple()}.
get_term_for_report(Client, ReportId)
  when is_map(Client) ->
    get_term_for_report(Client, ReportId, #{}, #{}).

-spec get_term_for_report(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_term_for_report_response(), tuple()} |
    {error, any()} |
    {error, get_term_for_report_errors(), tuple()}.
get_term_for_report(Client, ReportId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_term_for_report(Client, ReportId, QueryMap, HeadersMap, []).

-spec get_term_for_report(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_term_for_report_response(), tuple()} |
    {error, any()} |
    {error, get_term_for_report_errors(), tuple()}.
get_term_for_report(Client, ReportId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/report/getTermForReport"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"reportId">>, ReportId},
        {<<"reportVersion">>, maps:get(<<"reportVersion">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List available compliance inquiries.
-spec list_compliance_inquiries(aws_client:aws_client()) ->
    {ok, list_compliance_inquiries_response(), tuple()} |
    {error, any()} |
    {error, list_compliance_inquiries_errors(), tuple()}.
list_compliance_inquiries(Client)
  when is_map(Client) ->
    list_compliance_inquiries(Client, #{}, #{}).

-spec list_compliance_inquiries(aws_client:aws_client(), map(), map()) ->
    {ok, list_compliance_inquiries_response(), tuple()} |
    {error, any()} |
    {error, list_compliance_inquiries_errors(), tuple()}.
list_compliance_inquiries(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_compliance_inquiries(Client, QueryMap, HeadersMap, []).

-spec list_compliance_inquiries(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_compliance_inquiries_response(), tuple()} |
    {error, any()} |
    {error, list_compliance_inquiries_errors(), tuple()}.
list_compliance_inquiries(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/compliance-inquiry/list"],
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

%% @doc List queries within a compliance inquiry.
-spec list_compliance_inquiry_queries(aws_client:aws_client(), binary() | list()) ->
    {ok, list_compliance_inquiry_queries_response(), tuple()} |
    {error, any()} |
    {error, list_compliance_inquiry_queries_errors(), tuple()}.
list_compliance_inquiry_queries(Client, ComplianceInquiryId)
  when is_map(Client) ->
    list_compliance_inquiry_queries(Client, ComplianceInquiryId, #{}, #{}).

-spec list_compliance_inquiry_queries(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_compliance_inquiry_queries_response(), tuple()} |
    {error, any()} |
    {error, list_compliance_inquiry_queries_errors(), tuple()}.
list_compliance_inquiry_queries(Client, ComplianceInquiryId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_compliance_inquiry_queries(Client, ComplianceInquiryId, QueryMap, HeadersMap, []).

-spec list_compliance_inquiry_queries(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_compliance_inquiry_queries_response(), tuple()} |
    {error, any()} |
    {error, list_compliance_inquiry_queries_errors(), tuple()}.
list_compliance_inquiry_queries(Client, ComplianceInquiryId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/compliance-inquiry/listQueries"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"complianceInquiryId">>, ComplianceInquiryId},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List active customer-agreements applicable to calling identity.
-spec list_customer_agreements(aws_client:aws_client()) ->
    {ok, list_customer_agreements_response(), tuple()} |
    {error, any()} |
    {error, list_customer_agreements_errors(), tuple()}.
list_customer_agreements(Client)
  when is_map(Client) ->
    list_customer_agreements(Client, #{}, #{}).

-spec list_customer_agreements(aws_client:aws_client(), map(), map()) ->
    {ok, list_customer_agreements_response(), tuple()} |
    {error, any()} |
    {error, list_customer_agreements_errors(), tuple()}.
list_customer_agreements(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_customer_agreements(Client, QueryMap, HeadersMap, []).

-spec list_customer_agreements(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_customer_agreements_response(), tuple()} |
    {error, any()} |
    {error, list_customer_agreements_errors(), tuple()}.
list_customer_agreements(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/customer-agreement/list"],
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

%% @doc List available report versions for a given report.
-spec list_report_versions(aws_client:aws_client(), binary() | list()) ->
    {ok, list_report_versions_response(), tuple()} |
    {error, any()} |
    {error, list_report_versions_errors(), tuple()}.
list_report_versions(Client, ReportId)
  when is_map(Client) ->
    list_report_versions(Client, ReportId, #{}, #{}).

-spec list_report_versions(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_report_versions_response(), tuple()} |
    {error, any()} |
    {error, list_report_versions_errors(), tuple()}.
list_report_versions(Client, ReportId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_report_versions(Client, ReportId, QueryMap, HeadersMap, []).

-spec list_report_versions(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_report_versions_response(), tuple()} |
    {error, any()} |
    {error, list_report_versions_errors(), tuple()}.
list_report_versions(Client, ReportId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/report/listVersions"],
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
        {<<"reportId">>, ReportId}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List available reports.
-spec list_reports(aws_client:aws_client()) ->
    {ok, list_reports_response(), tuple()} |
    {error, any()} |
    {error, list_reports_errors(), tuple()}.
list_reports(Client)
  when is_map(Client) ->
    list_reports(Client, #{}, #{}).

-spec list_reports(aws_client:aws_client(), map(), map()) ->
    {ok, list_reports_response(), tuple()} |
    {error, any()} |
    {error, list_reports_errors(), tuple()}.
list_reports(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_reports(Client, QueryMap, HeadersMap, []).

-spec list_reports(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_reports_response(), tuple()} |
    {error, any()} |
    {error, list_reports_errors(), tuple()}.
list_reports(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/report/list"],
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

%% @doc List tags for a resource.
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

%% @doc Put the account settings for Artifact.
-spec put_account_settings(aws_client:aws_client(), put_account_settings_request()) ->
    {ok, put_account_settings_response(), tuple()} |
    {error, any()} |
    {error, put_account_settings_errors(), tuple()}.
put_account_settings(Client, Input) ->
    put_account_settings(Client, Input, []).

-spec put_account_settings(aws_client:aws_client(), put_account_settings_request(), proplists:proplist()) ->
    {ok, put_account_settings_response(), tuple()} |
    {error, any()} |
    {error, put_account_settings_errors(), tuple()}.
put_account_settings(Client, Input0, Options0) ->
    Method = put,
    Path = ["/v1/account-settings/put"],
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

%% @doc Add tags to a resource.
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

%% @doc Remove tags from a resource.
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
    Client1 = Client#{service => <<"artifact">>},
    DefaultHost = build_host(<<"artifact">>, Client1),
    URL0 = build_url(DefaultHost, Path, Client1),
    PathBin = erlang:iolist_to_binary(Path),
    {URL1, Host} = aws_util:apply_endpoint_url_override(URL0, DefaultHost, PathBin, <<"AWS_ENDPOINT_URL_ARTIFACT">>),
    URL = aws_request:add_query(URL1, Query),
    AdditionalHeaders1 = [ {<<"Host">>, Host}
                         , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                         ],
    Payload =
      case proplists:get_value(send_body_as_binary, Options) of
         true when is_list(Input) ->
           proplists:get_value(<<"Body">>, Input, <<"">>);
         true when Input =:= undefined ->
           <<"">>;
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

