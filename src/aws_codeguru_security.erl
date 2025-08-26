%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc On November 20, 2025, AWS will discontinue support for Amazon
%% CodeGuru Security.
%%
%% After November 20, 2025, you will no longer be able to access the
%% /codeguru/security console, service resources, or documentation. For more
%% information, see
%% [https://docs.aws.amazon.com/codeguru/latest/security-ug/end-of-support.html].
%%
%% This section provides documentation for the Amazon CodeGuru Security API
%% operations. CodeGuru Security is a service that uses program analysis and
%% machine learning to detect security policy violations and vulnerabilities,
%% and recommends ways to address these security risks.
%%
%% By proactively detecting and providing recommendations for addressing
%% security risks, CodeGuru Security improves the overall security of your
%% application code. For more information about CodeGuru Security, see the
%% Amazon CodeGuru Security User Guide:
%% https://docs.aws.amazon.com/codeguru/latest/security-ug/what-is-codeguru-security.html.
-module(aws_codeguru_security).

-export([batch_get_findings/2,
         batch_get_findings/3,
         create_scan/2,
         create_scan/3,
         create_upload_url/2,
         create_upload_url/3,
         get_account_configuration/1,
         get_account_configuration/3,
         get_account_configuration/4,
         get_findings/2,
         get_findings/4,
         get_findings/5,
         get_metrics_summary/2,
         get_metrics_summary/4,
         get_metrics_summary/5,
         get_scan/2,
         get_scan/4,
         get_scan/5,
         list_findings_metrics/3,
         list_findings_metrics/5,
         list_findings_metrics/6,
         list_scans/1,
         list_scans/3,
         list_scans/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_account_configuration/2,
         update_account_configuration/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% list_scans_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"summaries">> => list(scan_summary())
%% }
-type list_scans_response() :: #{binary() => any()}.


%% Example:
%% list_scans_request() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string()
%% }
-type list_scans_request() :: #{binary() => any()}.


%% Example:
%% finding_identifier() :: #{
%%   <<"findingId">> => [string()],
%%   <<"scanName">> => [string()]
%% }
-type finding_identifier() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% encryption_config() :: #{
%%   <<"kmsKeyArn">> => string()
%% }
-type encryption_config() :: #{binary() => any()}.


%% Example:
%% suggested_fix() :: #{
%%   <<"code">> => [string()],
%%   <<"description">> => [string()]
%% }
-type suggested_fix() :: #{binary() => any()}.


%% Example:
%% vulnerability() :: #{
%%   <<"filePath">> => file_path(),
%%   <<"id">> => [string()],
%%   <<"itemCount">> => [integer()],
%%   <<"referenceUrls">> => list([string()]()),
%%   <<"relatedVulnerabilities">> => list([string()]())
%% }
-type vulnerability() :: #{binary() => any()}.


%% Example:
%% finding_metrics_value_per_severity() :: #{
%%   <<"critical">> => [float()],
%%   <<"high">> => [float()],
%%   <<"info">> => [float()],
%%   <<"low">> => [float()],
%%   <<"medium">> => [float()]
%% }
-type finding_metrics_value_per_severity() :: #{binary() => any()}.


%% Example:
%% get_scan_response() :: #{
%%   <<"analysisType">> => list(any()),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"errorMessage">> => string(),
%%   <<"numberOfRevisions">> => [float()],
%%   <<"runId">> => string(),
%%   <<"scanName">> => string(),
%%   <<"scanNameArn">> => string(),
%%   <<"scanState">> => list(any()),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type get_scan_response() :: #{binary() => any()}.


%% Example:
%% remediation() :: #{
%%   <<"recommendation">> => recommendation(),
%%   <<"suggestedFixes">> => list(suggested_fix())
%% }
-type remediation() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% category_with_finding_num() :: #{
%%   <<"categoryName">> => [string()],
%%   <<"findingNumber">> => [integer()]
%% }
-type category_with_finding_num() :: #{binary() => any()}.


%% Example:
%% create_scan_response() :: #{
%%   <<"resourceId">> => list(),
%%   <<"runId">> => string(),
%%   <<"scanName">> => string(),
%%   <<"scanNameArn">> => string(),
%%   <<"scanState">> => list(any())
%% }
-type create_scan_response() :: #{binary() => any()}.


%% Example:
%% create_upload_url_response() :: #{
%%   <<"codeArtifactId">> => string(),
%%   <<"requestHeaders">> => map(),
%%   <<"s3Url">> => string()
%% }
-type create_upload_url_response() :: #{binary() => any()}.


%% Example:
%% get_scan_request() :: #{
%%   <<"runId">> => string()
%% }
-type get_scan_request() :: #{binary() => any()}.


%% Example:
%% get_findings_request() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string(),
%%   <<"status">> => list(any())
%% }
-type get_findings_request() :: #{binary() => any()}.


%% Example:
%% metrics_summary() :: #{
%%   <<"categoriesWithMostFindings">> => list(category_with_finding_num()),
%%   <<"date">> => [non_neg_integer()],
%%   <<"openFindings">> => finding_metrics_value_per_severity(),
%%   <<"scansWithMostOpenCriticalFindings">> => list(scan_name_with_finding_num()),
%%   <<"scansWithMostOpenFindings">> => list(scan_name_with_finding_num())
%% }
-type metrics_summary() :: #{binary() => any()}.


%% Example:
%% get_metrics_summary_response() :: #{
%%   <<"metricsSummary">> => metrics_summary()
%% }
-type get_metrics_summary_response() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% scan_name_with_finding_num() :: #{
%%   <<"findingNumber">> => [integer()],
%%   <<"scanName">> => [string()]
%% }
-type scan_name_with_finding_num() :: #{binary() => any()}.


%% Example:
%% list_findings_metrics_response() :: #{
%%   <<"findingsMetrics">> => list(account_findings_metric()),
%%   <<"nextToken">> => string()
%% }
-type list_findings_metrics_response() :: #{binary() => any()}.


%% Example:
%% batch_get_findings_response() :: #{
%%   <<"failedFindings">> => list(batch_get_findings_error()),
%%   <<"findings">> => list(finding())
%% }
-type batch_get_findings_response() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"errorCode">> => [string()],
%%   <<"message">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"errorCode">> => [string()],
%%   <<"message">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% batch_get_findings_error() :: #{
%%   <<"errorCode">> => list(any()),
%%   <<"findingId">> => [string()],
%%   <<"message">> => [string()],
%%   <<"scanName">> => string()
%% }
-type batch_get_findings_error() :: #{binary() => any()}.


%% Example:
%% get_findings_response() :: #{
%%   <<"findings">> => list(finding()),
%%   <<"nextToken">> => string()
%% }
-type get_findings_response() :: #{binary() => any()}.


%% Example:
%% list_findings_metrics_request() :: #{
%%   <<"endDate">> := [non_neg_integer()],
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string(),
%%   <<"startDate">> := [non_neg_integer()]
%% }
-type list_findings_metrics_request() :: #{binary() => any()}.


%% Example:
%% code_line() :: #{
%%   <<"content">> => [string()],
%%   <<"number">> => [integer()]
%% }
-type code_line() :: #{binary() => any()}.


%% Example:
%% recommendation() :: #{
%%   <<"text">> => [string()],
%%   <<"url">> => [string()]
%% }
-type recommendation() :: #{binary() => any()}.


%% Example:
%% get_metrics_summary_request() :: #{
%%   <<"date">> := [non_neg_integer()]
%% }
-type get_metrics_summary_request() :: #{binary() => any()}.


%% Example:
%% get_account_configuration_response() :: #{
%%   <<"encryptionConfig">> => encryption_config()
%% }
-type get_account_configuration_response() :: #{binary() => any()}.


%% Example:
%% finding() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"description">> => [string()],
%%   <<"detectorId">> => [string()],
%%   <<"detectorName">> => [string()],
%%   <<"detectorTags">> => list([string()]()),
%%   <<"generatorId">> => [string()],
%%   <<"id">> => [string()],
%%   <<"remediation">> => remediation(),
%%   <<"resource">> => resource(),
%%   <<"ruleId">> => [string()],
%%   <<"severity">> => list(any()),
%%   <<"status">> => list(any()),
%%   <<"title">> => [string()],
%%   <<"type">> => [string()],
%%   <<"updatedAt">> => [non_neg_integer()],
%%   <<"vulnerability">> => vulnerability()
%% }
-type finding() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% create_upload_url_request() :: #{
%%   <<"scanName">> := string()
%% }
-type create_upload_url_request() :: #{binary() => any()}.


%% Example:
%% batch_get_findings_request() :: #{
%%   <<"findingIdentifiers">> := list(finding_identifier())
%% }
-type batch_get_findings_request() :: #{binary() => any()}.


%% Example:
%% validation_exception_field() :: #{
%%   <<"message">> => [string()],
%%   <<"name">> => [string()]
%% }
-type validation_exception_field() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"error">> => [string()],
%%   <<"message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% create_scan_request() :: #{
%%   <<"analysisType">> => list(any()),
%%   <<"clientToken">> => string(),
%%   <<"resourceId">> := list(),
%%   <<"scanName">> := string(),
%%   <<"scanType">> => list(any()),
%%   <<"tags">> => map()
%% }
-type create_scan_request() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"errorCode">> => [string()],
%%   <<"message">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% validation_exception() :: #{
%%   <<"errorCode">> => [string()],
%%   <<"fieldList">> => list(validation_exception_field()),
%%   <<"message">> => [string()],
%%   <<"reason">> => list(any())
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% file_path() :: #{
%%   <<"codeSnippet">> => list(code_line()),
%%   <<"endLine">> => [integer()],
%%   <<"name">> => [string()],
%%   <<"path">> => [string()],
%%   <<"startLine">> => [integer()]
%% }
-type file_path() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"errorCode">> => [string()],
%%   <<"message">> => [string()],
%%   <<"quotaCode">> => [string()],
%%   <<"serviceCode">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% scan_summary() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"runId">> => string(),
%%   <<"scanName">> => string(),
%%   <<"scanNameArn">> => string(),
%%   <<"scanState">> => list(any()),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type scan_summary() :: #{binary() => any()}.


%% Example:
%% update_account_configuration_response() :: #{
%%   <<"encryptionConfig">> => encryption_config()
%% }
-type update_account_configuration_response() :: #{binary() => any()}.


%% Example:
%% account_findings_metric() :: #{
%%   <<"closedFindings">> => finding_metrics_value_per_severity(),
%%   <<"date">> => [non_neg_integer()],
%%   <<"meanTimeToClose">> => finding_metrics_value_per_severity(),
%%   <<"newFindings">> => finding_metrics_value_per_severity(),
%%   <<"openFindings">> => finding_metrics_value_per_severity()
%% }
-type account_findings_metric() :: #{binary() => any()}.


%% Example:
%% update_account_configuration_request() :: #{
%%   <<"encryptionConfig">> := encryption_config()
%% }
-type update_account_configuration_request() :: #{binary() => any()}.

%% Example:
%% get_account_configuration_request() :: #{}
-type get_account_configuration_request() :: #{}.


%% Example:
%% resource() :: #{
%%   <<"id">> => [string()],
%%   <<"subResourceId">> => [string()]
%% }
-type resource() :: #{binary() => any()}.

-type batch_get_findings_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type create_scan_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_upload_url_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type get_account_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type get_findings_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_metrics_summary_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type get_scan_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_findings_metrics_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_scans_errors() ::
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
    conflict_exception().

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

-type update_account_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Returns a list of requested findings from standard scans.
-spec batch_get_findings(aws_client:aws_client(), batch_get_findings_request()) ->
    {ok, batch_get_findings_response(), tuple()} |
    {error, any()} |
    {error, batch_get_findings_errors(), tuple()}.
batch_get_findings(Client, Input) ->
    batch_get_findings(Client, Input, []).

-spec batch_get_findings(aws_client:aws_client(), batch_get_findings_request(), proplists:proplist()) ->
    {ok, batch_get_findings_response(), tuple()} |
    {error, any()} |
    {error, batch_get_findings_errors(), tuple()}.
batch_get_findings(Client, Input0, Options0) ->
    Method = post,
    Path = ["/batchGetFindings"],
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

%% @doc Use to create a scan using code uploaded to an Amazon S3 bucket.
-spec create_scan(aws_client:aws_client(), create_scan_request()) ->
    {ok, create_scan_response(), tuple()} |
    {error, any()} |
    {error, create_scan_errors(), tuple()}.
create_scan(Client, Input) ->
    create_scan(Client, Input, []).

-spec create_scan(aws_client:aws_client(), create_scan_request(), proplists:proplist()) ->
    {ok, create_scan_response(), tuple()} |
    {error, any()} |
    {error, create_scan_errors(), tuple()}.
create_scan(Client, Input0, Options0) ->
    Method = post,
    Path = ["/scans"],
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

%% @doc Generates a pre-signed URL, request headers used to upload a code
%% resource, and code artifact identifier for the uploaded resource.
%%
%% You can upload your code resource to the URL with the request headers
%% using any HTTP client.
-spec create_upload_url(aws_client:aws_client(), create_upload_url_request()) ->
    {ok, create_upload_url_response(), tuple()} |
    {error, any()} |
    {error, create_upload_url_errors(), tuple()}.
create_upload_url(Client, Input) ->
    create_upload_url(Client, Input, []).

-spec create_upload_url(aws_client:aws_client(), create_upload_url_request(), proplists:proplist()) ->
    {ok, create_upload_url_response(), tuple()} |
    {error, any()} |
    {error, create_upload_url_errors(), tuple()}.
create_upload_url(Client, Input0, Options0) ->
    Method = post,
    Path = ["/uploadUrl"],
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

%% @doc Use to get the encryption configuration for an account.
-spec get_account_configuration(aws_client:aws_client()) ->
    {ok, get_account_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_account_configuration_errors(), tuple()}.
get_account_configuration(Client)
  when is_map(Client) ->
    get_account_configuration(Client, #{}, #{}).

-spec get_account_configuration(aws_client:aws_client(), map(), map()) ->
    {ok, get_account_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_account_configuration_errors(), tuple()}.
get_account_configuration(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_account_configuration(Client, QueryMap, HeadersMap, []).

-spec get_account_configuration(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_account_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_account_configuration_errors(), tuple()}.
get_account_configuration(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accountConfiguration/get"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of all findings generated by a particular scan.
-spec get_findings(aws_client:aws_client(), binary() | list()) ->
    {ok, get_findings_response(), tuple()} |
    {error, any()} |
    {error, get_findings_errors(), tuple()}.
get_findings(Client, ScanName)
  when is_map(Client) ->
    get_findings(Client, ScanName, #{}, #{}).

-spec get_findings(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_findings_response(), tuple()} |
    {error, any()} |
    {error, get_findings_errors(), tuple()}.
get_findings(Client, ScanName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_findings(Client, ScanName, QueryMap, HeadersMap, []).

-spec get_findings(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_findings_response(), tuple()} |
    {error, any()} |
    {error, get_findings_errors(), tuple()}.
get_findings(Client, ScanName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/findings/", aws_util:encode_uri(ScanName), ""],
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
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a summary of metrics for an account from a specified date,
%% including number of open findings, the categories with most findings, the
%% scans with most open findings, and scans with most open critical findings.
-spec get_metrics_summary(aws_client:aws_client(), binary() | list()) ->
    {ok, get_metrics_summary_response(), tuple()} |
    {error, any()} |
    {error, get_metrics_summary_errors(), tuple()}.
get_metrics_summary(Client, Date)
  when is_map(Client) ->
    get_metrics_summary(Client, Date, #{}, #{}).

-spec get_metrics_summary(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_metrics_summary_response(), tuple()} |
    {error, any()} |
    {error, get_metrics_summary_errors(), tuple()}.
get_metrics_summary(Client, Date, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_metrics_summary(Client, Date, QueryMap, HeadersMap, []).

-spec get_metrics_summary(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_metrics_summary_response(), tuple()} |
    {error, any()} |
    {error, get_metrics_summary_errors(), tuple()}.
get_metrics_summary(Client, Date, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/metrics/summary"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"date">>, Date}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns details about a scan, including whether or not a scan has
%% completed.
-spec get_scan(aws_client:aws_client(), binary() | list()) ->
    {ok, get_scan_response(), tuple()} |
    {error, any()} |
    {error, get_scan_errors(), tuple()}.
get_scan(Client, ScanName)
  when is_map(Client) ->
    get_scan(Client, ScanName, #{}, #{}).

-spec get_scan(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_scan_response(), tuple()} |
    {error, any()} |
    {error, get_scan_errors(), tuple()}.
get_scan(Client, ScanName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_scan(Client, ScanName, QueryMap, HeadersMap, []).

-spec get_scan(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_scan_response(), tuple()} |
    {error, any()} |
    {error, get_scan_errors(), tuple()}.
get_scan(Client, ScanName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/scans/", aws_util:encode_uri(ScanName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"runId">>, maps:get(<<"runId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns metrics about all findings in an account within a specified
%% time range.
-spec list_findings_metrics(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_findings_metrics_response(), tuple()} |
    {error, any()} |
    {error, list_findings_metrics_errors(), tuple()}.
list_findings_metrics(Client, EndDate, StartDate)
  when is_map(Client) ->
    list_findings_metrics(Client, EndDate, StartDate, #{}, #{}).

-spec list_findings_metrics(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_findings_metrics_response(), tuple()} |
    {error, any()} |
    {error, list_findings_metrics_errors(), tuple()}.
list_findings_metrics(Client, EndDate, StartDate, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_findings_metrics(Client, EndDate, StartDate, QueryMap, HeadersMap, []).

-spec list_findings_metrics(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_findings_metrics_response(), tuple()} |
    {error, any()} |
    {error, list_findings_metrics_errors(), tuple()}.
list_findings_metrics(Client, EndDate, StartDate, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/metrics/findings"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"endDate">>, EndDate},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"startDate">>, StartDate}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of all scans in an account.
%%
%% Does not return `EXPRESS' scans.
-spec list_scans(aws_client:aws_client()) ->
    {ok, list_scans_response(), tuple()} |
    {error, any()} |
    {error, list_scans_errors(), tuple()}.
list_scans(Client)
  when is_map(Client) ->
    list_scans(Client, #{}, #{}).

-spec list_scans(aws_client:aws_client(), map(), map()) ->
    {ok, list_scans_response(), tuple()} |
    {error, any()} |
    {error, list_scans_errors(), tuple()}.
list_scans(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_scans(Client, QueryMap, HeadersMap, []).

-spec list_scans(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_scans_response(), tuple()} |
    {error, any()} |
    {error, list_scans_errors(), tuple()}.
list_scans(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/scans"],
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

%% @doc Returns a list of all tags associated with a scan.
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

%% @doc Use to add one or more tags to an existing scan.
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

%% @doc Use to remove one or more tags from an existing scan.
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

%% @doc Use to update the encryption configuration for an account.
-spec update_account_configuration(aws_client:aws_client(), update_account_configuration_request()) ->
    {ok, update_account_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_account_configuration_errors(), tuple()}.
update_account_configuration(Client, Input) ->
    update_account_configuration(Client, Input, []).

-spec update_account_configuration(aws_client:aws_client(), update_account_configuration_request(), proplists:proplist()) ->
    {ok, update_account_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_account_configuration_errors(), tuple()}.
update_account_configuration(Client, Input0, Options0) ->
    Method = put,
    Path = ["/updateAccountConfiguration"],
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
    Client1 = Client#{service => <<"codeguru-security">>},
    Host = build_host(<<"codeguru-security">>, Client1),
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
