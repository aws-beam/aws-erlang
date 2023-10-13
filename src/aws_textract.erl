%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Textract detects and analyzes text in documents and converts
%% it into machine-readable text.
%%
%% This is the API reference documentation for Amazon Textract.
-module(aws_textract).

-export([analyze_document/2,
         analyze_document/3,
         analyze_expense/2,
         analyze_expense/3,
         analyze_id/2,
         analyze_id/3,
         create_adapter/2,
         create_adapter/3,
         create_adapter_version/2,
         create_adapter_version/3,
         delete_adapter/2,
         delete_adapter/3,
         delete_adapter_version/2,
         delete_adapter_version/3,
         detect_document_text/2,
         detect_document_text/3,
         get_adapter/2,
         get_adapter/3,
         get_adapter_version/2,
         get_adapter_version/3,
         get_document_analysis/2,
         get_document_analysis/3,
         get_document_text_detection/2,
         get_document_text_detection/3,
         get_expense_analysis/2,
         get_expense_analysis/3,
         get_lending_analysis/2,
         get_lending_analysis/3,
         get_lending_analysis_summary/2,
         get_lending_analysis_summary/3,
         list_adapter_versions/2,
         list_adapter_versions/3,
         list_adapters/2,
         list_adapters/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         start_document_analysis/2,
         start_document_analysis/3,
         start_document_text_detection/2,
         start_document_text_detection/3,
         start_expense_analysis/2,
         start_expense_analysis/3,
         start_lending_analysis/2,
         start_lending_analysis/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_adapter/2,
         update_adapter/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Analyzes an input document for relationships between detected items.
%%
%% The types of information returned are as follows:
%%
%% <ul> <li> Form data (key-value pairs). The related information is returned
%% in two `Block' objects, each of type `KEY_VALUE_SET': a KEY
%% `Block' object and a VALUE `Block' object. For example, Name: Ana
%% Silva Carolina contains a key and value. Name: is the key. Ana Silva
%% Carolina is the value.
%%
%% </li> <li> Table and table cell data. A TABLE `Block' object contains
%% information about a detected table. A CELL `Block' object is returned
%% for each cell in a table.
%%
%% </li> <li> Lines and words of text. A LINE `Block' object contains one
%% or more WORD `Block' objects. All lines and words that are detected in
%% the document are returned (including text that doesn't have a
%% relationship with the value of `FeatureTypes').
%%
%% </li> <li> Signatures. A SIGNATURE `Block' object contains the
%% location information of a signature in a document. If used in conjunction
%% with forms or tables, a signature can be given a Key-Value pairing or be
%% detected in the cell of a table.
%%
%% </li> <li> Query. A QUERY Block object contains the query text, alias and
%% link to the associated Query results block object.
%%
%% </li> <li> Query Result. A QUERY_RESULT Block object contains the answer
%% to the query and an ID that connects it to the query asked. This Block
%% also contains a confidence score.
%%
%% </li> </ul> Selection elements such as check boxes and option buttons
%% (radio buttons) can be detected in form data and in tables. A
%% SELECTION_ELEMENT `Block' object contains information about a
%% selection element, including the selection status.
%%
%% You can choose which type of analysis to perform by specifying the
%% `FeatureTypes' list.
%%
%% The output is returned in a list of `Block' objects.
%%
%% `AnalyzeDocument' is a synchronous operation. To analyze documents
%% asynchronously, use `StartDocumentAnalysis'.
%%
%% For more information, see Document Text Analysis.
analyze_document(Client, Input)
  when is_map(Client), is_map(Input) ->
    analyze_document(Client, Input, []).
analyze_document(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AnalyzeDocument">>, Input, Options).

%% @doc `AnalyzeExpense' synchronously analyzes an input document for
%% financially related relationships between text.
%%
%% Information is returned as `ExpenseDocuments' and seperated as
%% follows:
%%
%% <ul> <li> `LineItemGroups'- A data set containing `LineItems'
%% which store information about the lines of text, such as an item purchased
%% and its price on a receipt.
%%
%% </li> <li> `SummaryFields'- Contains all other information a receipt,
%% such as header information or the vendors name.
%%
%% </li> </ul>
analyze_expense(Client, Input)
  when is_map(Client), is_map(Input) ->
    analyze_expense(Client, Input, []).
analyze_expense(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AnalyzeExpense">>, Input, Options).

%% @doc Analyzes identity documents for relevant information.
%%
%% This information is extracted and returned as
%% `IdentityDocumentFields', which records both the normalized field and
%% value of the extracted text. Unlike other Amazon Textract operations,
%% `AnalyzeID' doesn't return any Geometry data.
analyze_id(Client, Input)
  when is_map(Client), is_map(Input) ->
    analyze_id(Client, Input, []).
analyze_id(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AnalyzeID">>, Input, Options).

%% @doc Creates an adapter, which can be fine-tuned for enhanced performance
%% on user provided documents.
%%
%% Takes an AdapterName and FeatureType. Currently the only supported feature
%% type is `QUERIES'. You can also provide a Description, Tags, and a
%% ClientRequestToken. You can choose whether or not the adapter should be
%% AutoUpdated with the AutoUpdate argument. By default, AutoUpdate is set to
%% DISABLED.
create_adapter(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_adapter(Client, Input, []).
create_adapter(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAdapter">>, Input, Options).

%% @doc Creates a new version of an adapter.
%%
%% Operates on a provided AdapterId and a specified dataset provided via the
%% DatasetConfig argument. Requires that you specify an Amazon S3 bucket with
%% the OutputConfig argument. You can provide an optional KMSKeyId, an
%% optional ClientRequestToken, and optional tags.
create_adapter_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_adapter_version(Client, Input, []).
create_adapter_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAdapterVersion">>, Input, Options).

%% @doc Deletes an Amazon Textract adapter.
%%
%% Takes an AdapterId and deletes the adapter specified by the ID.
delete_adapter(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_adapter(Client, Input, []).
delete_adapter(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAdapter">>, Input, Options).

%% @doc Deletes an Amazon Textract adapter version.
%%
%% Requires that you specify both an AdapterId and a AdapterVersion. Deletes
%% the adapter version specified by the AdapterId and the AdapterVersion.
delete_adapter_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_adapter_version(Client, Input, []).
delete_adapter_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAdapterVersion">>, Input, Options).

%% @doc Detects text in the input document.
%%
%% Amazon Textract can detect lines of text and the words that make up a line
%% of text. The input document must be in one of the following image formats:
%% JPEG, PNG, PDF, or TIFF. `DetectDocumentText' returns the detected
%% text in an array of `Block' objects.
%%
%% Each document page has as an associated `Block' of type PAGE. Each
%% PAGE `Block' object is the parent of LINE `Block' objects that
%% represent the lines of detected text on a page. A LINE `Block' object
%% is a parent for each word that makes up the line. Words are represented by
%% `Block' objects of type WORD.
%%
%% `DetectDocumentText' is a synchronous operation. To analyze documents
%% asynchronously, use `StartDocumentTextDetection'.
%%
%% For more information, see Document Text Detection.
detect_document_text(Client, Input)
  when is_map(Client), is_map(Input) ->
    detect_document_text(Client, Input, []).
detect_document_text(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetectDocumentText">>, Input, Options).

%% @doc Gets configuration information for an adapter specified by an
%% AdapterId, returning information on AdapterName, Description,
%% CreationTime, AutoUpdate status, and FeatureTypes.
get_adapter(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_adapter(Client, Input, []).
get_adapter(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAdapter">>, Input, Options).

%% @doc Gets configuration information for the specified adapter version,
%% including: AdapterId, AdapterVersion, FeatureTypes, Status, StatusMessage,
%% DatasetConfig, KMSKeyId, OutputConfig, Tags and EvaluationMetrics.
get_adapter_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_adapter_version(Client, Input, []).
get_adapter_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAdapterVersion">>, Input, Options).

%% @doc Gets the results for an Amazon Textract asynchronous operation that
%% analyzes text in a document.
%%
%% You start asynchronous text analysis by calling
%% `StartDocumentAnalysis', which returns a job identifier (`JobId').
%% When the text analysis operation finishes, Amazon Textract publishes a
%% completion status to the Amazon Simple Notification Service (Amazon SNS)
%% topic that's registered in the initial call to
%% `StartDocumentAnalysis'. To get the results of the text-detection
%% operation, first check that the status value published to the Amazon SNS
%% topic is `SUCCEEDED'. If so, call `GetDocumentAnalysis', and pass
%% the job identifier (`JobId') from the initial call to
%% `StartDocumentAnalysis'.
%%
%% `GetDocumentAnalysis' returns an array of `Block' objects. The
%% following types of information are returned:
%%
%% <ul> <li> Form data (key-value pairs). The related information is returned
%% in two `Block' objects, each of type `KEY_VALUE_SET': a KEY
%% `Block' object and a VALUE `Block' object. For example, Name: Ana
%% Silva Carolina contains a key and value. Name: is the key. Ana Silva
%% Carolina is the value.
%%
%% </li> <li> Table and table cell data. A TABLE `Block' object contains
%% information about a detected table. A CELL `Block' object is returned
%% for each cell in a table.
%%
%% </li> <li> Lines and words of text. A LINE `Block' object contains one
%% or more WORD `Block' objects. All lines and words that are detected in
%% the document are returned (including text that doesn't have a
%% relationship with the value of the `StartDocumentAnalysis'
%% `FeatureTypes' input parameter).
%%
%% </li> <li> Query. A QUERY Block object contains the query text, alias and
%% link to the associated Query results block object.
%%
%% </li> <li> Query Results. A QUERY_RESULT Block object contains the answer
%% to the query and an ID that connects it to the query asked. This Block
%% also contains a confidence score.
%%
%% </li> </ul> While processing a document with queries, look out for
%% `INVALID_REQUEST_PARAMETERS' output. This indicates that either the
%% per page query limit has been exceeded or that the operation is trying to
%% query a page in the document which doesn’t exist.
%%
%% Selection elements such as check boxes and option buttons (radio buttons)
%% can be detected in form data and in tables. A SELECTION_ELEMENT
%% `Block' object contains information about a selection element,
%% including the selection status.
%%
%% Use the `MaxResults' parameter to limit the number of blocks that are
%% returned. If there are more results than specified in `MaxResults',
%% the value of `NextToken' in the operation response contains a
%% pagination token for getting the next set of results. To get the next page
%% of results, call `GetDocumentAnalysis', and populate the
%% `NextToken' request parameter with the token value that's returned
%% from the previous call to `GetDocumentAnalysis'.
%%
%% For more information, see Document Text Analysis.
get_document_analysis(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_document_analysis(Client, Input, []).
get_document_analysis(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDocumentAnalysis">>, Input, Options).

%% @doc Gets the results for an Amazon Textract asynchronous operation that
%% detects text in a document.
%%
%% Amazon Textract can detect lines of text and the words that make up a line
%% of text.
%%
%% You start asynchronous text detection by calling
%% `StartDocumentTextDetection', which returns a job identifier
%% (`JobId'). When the text detection operation finishes, Amazon Textract
%% publishes a completion status to the Amazon Simple Notification Service
%% (Amazon SNS) topic that's registered in the initial call to
%% `StartDocumentTextDetection'. To get the results of the text-detection
%% operation, first check that the status value published to the Amazon SNS
%% topic is `SUCCEEDED'. If so, call `GetDocumentTextDetection', and
%% pass the job identifier (`JobId') from the initial call to
%% `StartDocumentTextDetection'.
%%
%% `GetDocumentTextDetection' returns an array of `Block' objects.
%%
%% Each document page has as an associated `Block' of type PAGE. Each
%% PAGE `Block' object is the parent of LINE `Block' objects that
%% represent the lines of detected text on a page. A LINE `Block' object
%% is a parent for each word that makes up the line. Words are represented by
%% `Block' objects of type WORD.
%%
%% Use the MaxResults parameter to limit the number of blocks that are
%% returned. If there are more results than specified in `MaxResults',
%% the value of `NextToken' in the operation response contains a
%% pagination token for getting the next set of results. To get the next page
%% of results, call `GetDocumentTextDetection', and populate the
%% `NextToken' request parameter with the token value that's returned
%% from the previous call to `GetDocumentTextDetection'.
%%
%% For more information, see Document Text Detection.
get_document_text_detection(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_document_text_detection(Client, Input, []).
get_document_text_detection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDocumentTextDetection">>, Input, Options).

%% @doc Gets the results for an Amazon Textract asynchronous operation that
%% analyzes invoices and receipts.
%%
%% Amazon Textract finds contact information, items purchased, and vendor
%% name, from input invoices and receipts.
%%
%% You start asynchronous invoice/receipt analysis by calling
%% `StartExpenseAnalysis', which returns a job identifier (`JobId').
%% Upon completion of the invoice/receipt analysis, Amazon Textract publishes
%% the completion status to the Amazon Simple Notification Service (Amazon
%% SNS) topic. This topic must be registered in the initial call to
%% `StartExpenseAnalysis'. To get the results of the invoice/receipt
%% analysis operation, first ensure that the status value published to the
%% Amazon SNS topic is `SUCCEEDED'. If so, call `GetExpenseAnalysis',
%% and pass the job identifier (`JobId') from the initial call to
%% `StartExpenseAnalysis'.
%%
%% Use the MaxResults parameter to limit the number of blocks that are
%% returned. If there are more results than specified in `MaxResults',
%% the value of `NextToken' in the operation response contains a
%% pagination token for getting the next set of results. To get the next page
%% of results, call `GetExpenseAnalysis', and populate the
%% `NextToken' request parameter with the token value that's returned
%% from the previous call to `GetExpenseAnalysis'.
%%
%% For more information, see Analyzing Invoices and Receipts.
get_expense_analysis(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_expense_analysis(Client, Input, []).
get_expense_analysis(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetExpenseAnalysis">>, Input, Options).

%% @doc Gets the results for an Amazon Textract asynchronous operation that
%% analyzes text in a lending document.
%%
%% You start asynchronous text analysis by calling
%% `StartLendingAnalysis', which returns a job identifier (`JobId').
%% When the text analysis operation finishes, Amazon Textract publishes a
%% completion status to the Amazon Simple Notification Service (Amazon SNS)
%% topic that's registered in the initial call to
%% `StartLendingAnalysis'.
%%
%% To get the results of the text analysis operation, first check that the
%% status value published to the Amazon SNS topic is SUCCEEDED. If so, call
%% GetLendingAnalysis, and pass the job identifier (`JobId') from the
%% initial call to `StartLendingAnalysis'.
get_lending_analysis(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_lending_analysis(Client, Input, []).
get_lending_analysis(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetLendingAnalysis">>, Input, Options).

%% @doc Gets summarized results for the `StartLendingAnalysis' operation,
%% which analyzes text in a lending document.
%%
%% The returned summary consists of information about documents grouped
%% together by a common document type. Information like detected signatures,
%% page numbers, and split documents is returned with respect to the type of
%% grouped document.
%%
%% You start asynchronous text analysis by calling
%% `StartLendingAnalysis', which returns a job identifier (`JobId').
%% When the text analysis operation finishes, Amazon Textract publishes a
%% completion status to the Amazon Simple Notification Service (Amazon SNS)
%% topic that's registered in the initial call to
%% `StartLendingAnalysis'.
%%
%% To get the results of the text analysis operation, first check that the
%% status value published to the Amazon SNS topic is SUCCEEDED. If so, call
%% `GetLendingAnalysisSummary', and pass the job identifier (`JobId')
%% from the initial call to `StartLendingAnalysis'.
get_lending_analysis_summary(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_lending_analysis_summary(Client, Input, []).
get_lending_analysis_summary(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetLendingAnalysisSummary">>, Input, Options).

%% @doc List all version of an adapter that meet the specified filtration
%% criteria.
list_adapter_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_adapter_versions(Client, Input, []).
list_adapter_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAdapterVersions">>, Input, Options).

%% @doc Lists all adapters that match the specified filtration criteria.
list_adapters(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_adapters(Client, Input, []).
list_adapters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAdapters">>, Input, Options).

%% @doc Lists all tags for an Amazon Textract resource.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Starts the asynchronous analysis of an input document for
%% relationships between detected items such as key-value pairs, tables, and
%% selection elements.
%%
%% `StartDocumentAnalysis' can analyze text in documents that are in
%% JPEG, PNG, TIFF, and PDF format. The documents are stored in an Amazon S3
%% bucket. Use `DocumentLocation' to specify the bucket name and file
%% name of the document.
%%
%% `StartDocumentAnalysis' returns a job identifier (`JobId') that
%% you use to get the results of the operation. When text analysis is
%% finished, Amazon Textract publishes a completion status to the Amazon
%% Simple Notification Service (Amazon SNS) topic that you specify in
%% `NotificationChannel'. To get the results of the text analysis
%% operation, first check that the status value published to the Amazon SNS
%% topic is `SUCCEEDED'. If so, call `GetDocumentAnalysis', and pass
%% the job identifier (`JobId') from the initial call to
%% `StartDocumentAnalysis'.
%%
%% For more information, see Document Text Analysis.
start_document_analysis(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_document_analysis(Client, Input, []).
start_document_analysis(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartDocumentAnalysis">>, Input, Options).

%% @doc Starts the asynchronous detection of text in a document.
%%
%% Amazon Textract can detect lines of text and the words that make up a line
%% of text.
%%
%% `StartDocumentTextDetection' can analyze text in documents that are in
%% JPEG, PNG, TIFF, and PDF format. The documents are stored in an Amazon S3
%% bucket. Use `DocumentLocation' to specify the bucket name and file
%% name of the document.
%%
%% `StartTextDetection' returns a job identifier (`JobId') that you
%% use to get the results of the operation. When text detection is finished,
%% Amazon Textract publishes a completion status to the Amazon Simple
%% Notification Service (Amazon SNS) topic that you specify in
%% `NotificationChannel'. To get the results of the text detection
%% operation, first check that the status value published to the Amazon SNS
%% topic is `SUCCEEDED'. If so, call `GetDocumentTextDetection', and
%% pass the job identifier (`JobId') from the initial call to
%% `StartDocumentTextDetection'.
%%
%% For more information, see Document Text Detection.
start_document_text_detection(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_document_text_detection(Client, Input, []).
start_document_text_detection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartDocumentTextDetection">>, Input, Options).

%% @doc Starts the asynchronous analysis of invoices or receipts for data
%% like contact information, items purchased, and vendor names.
%%
%% `StartExpenseAnalysis' can analyze text in documents that are in JPEG,
%% PNG, and PDF format. The documents must be stored in an Amazon S3 bucket.
%% Use the `DocumentLocation' parameter to specify the name of your S3
%% bucket and the name of the document in that bucket.
%%
%% `StartExpenseAnalysis' returns a job identifier (`JobId') that you
%% will provide to `GetExpenseAnalysis' to retrieve the results of the
%% operation. When the analysis of the input invoices/receipts is finished,
%% Amazon Textract publishes a completion status to the Amazon Simple
%% Notification Service (Amazon SNS) topic that you provide to the
%% `NotificationChannel'. To obtain the results of the invoice and
%% receipt analysis operation, ensure that the status value published to the
%% Amazon SNS topic is `SUCCEEDED'. If so, call `GetExpenseAnalysis',
%% and pass the job identifier (`JobId') that was returned by your call
%% to `StartExpenseAnalysis'.
%%
%% For more information, see Analyzing Invoices and Receipts.
start_expense_analysis(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_expense_analysis(Client, Input, []).
start_expense_analysis(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartExpenseAnalysis">>, Input, Options).

%% @doc Starts the classification and analysis of an input document.
%%
%% `StartLendingAnalysis' initiates the classification and analysis of a
%% packet of lending documents. `StartLendingAnalysis' operates on a
%% document file located in an Amazon S3 bucket.
%%
%% `StartLendingAnalysis' can analyze text in documents that are in one
%% of the following formats: JPEG, PNG, TIFF, PDF. Use `DocumentLocation'
%% to specify the bucket name and the file name of the document.
%%
%% `StartLendingAnalysis' returns a job identifier (`JobId') that you
%% use to get the results of the operation. When the text analysis is
%% finished, Amazon Textract publishes a completion status to the Amazon
%% Simple Notification Service (Amazon SNS) topic that you specify in
%% `NotificationChannel'. To get the results of the text analysis
%% operation, first check that the status value published to the Amazon SNS
%% topic is SUCCEEDED. If the status is SUCCEEDED you can call either
%% `GetLendingAnalysis' or `GetLendingAnalysisSummary' and provide
%% the `JobId' to obtain the results of the analysis.
%%
%% If using `OutputConfig' to specify an Amazon S3 bucket, the output
%% will be contained within the specified prefix in a directory labeled with
%% the job-id. In the directory there are 3 sub-directories:
%%
%% <ul> <li> detailedResponse (contains the GetLendingAnalysis response)
%%
%% </li> <li> summaryResponse (for the GetLendingAnalysisSummary response)
%%
%% </li> <li> splitDocuments (documents split across logical boundaries)
%%
%% </li> </ul>
start_lending_analysis(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_lending_analysis(Client, Input, []).
start_lending_analysis(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartLendingAnalysis">>, Input, Options).

%% @doc Adds one or more tags to the specified resource.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Removes any tags with the specified keys from the specified resource.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Update the configuration for an adapter.
%%
%% FeatureTypes configurations cannot be updated. At least one new parameter
%% must be specified as an argument.
update_adapter(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_adapter(Client, Input, []).
update_adapter(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateAdapter">>, Input, Options).

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
    Client1 = Client#{service => <<"textract">>},
    Host = build_host(<<"textract">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"Textract.", Action/binary>>}
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
