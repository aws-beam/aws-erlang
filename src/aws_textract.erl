%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Textract detects and analyzes text in documents and converts
%% it into machine-readable text. This is the API reference documentation for
%% Amazon Textract.
-module(aws_textract).

-export([analyze_document/2,
         analyze_document/3,
         detect_document_text/2,
         detect_document_text/3,
         get_document_analysis/2,
         get_document_analysis/3,
         get_document_text_detection/2,
         get_document_text_detection/3,
         start_document_analysis/2,
         start_document_analysis/3,
         start_document_text_detection/2,
         start_document_text_detection/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Analyzes an input document for relationships between detected items.
%%
%% The types of information returned are as follows:
%%
%% <ul> <li> Form data (key-value pairs). The related information is returned
%% in two <a>Block</a> objects, each of type <code>KEY_VALUE_SET</code>: a
%% KEY <code>Block</code> object and a VALUE <code>Block</code> object. For
%% example, <i>Name: Ana Silva Carolina</i> contains a key and value.
%% <i>Name:</i> is the key. <i>Ana Silva Carolina</i> is the value.
%%
%% </li> <li> Table and table cell data. A TABLE <code>Block</code> object
%% contains information about a detected table. A CELL <code>Block</code>
%% object is returned for each cell in a table.
%%
%% </li> <li> Lines and words of text. A LINE <code>Block</code> object
%% contains one or more WORD <code>Block</code> objects. All lines and words
%% that are detected in the document are returned (including text that
%% doesn't have a relationship with the value of <code>FeatureTypes</code>).
%%
%% </li> </ul> Selection elements such as check boxes and option buttons
%% (radio buttons) can be detected in form data and in tables. A
%% SELECTION_ELEMENT <code>Block</code> object contains information about a
%% selection element, including the selection status.
%%
%% You can choose which type of analysis to perform by specifying the
%% <code>FeatureTypes</code> list.
%%
%% The output is returned in a list of <code>Block</code> objects.
%%
%% <code>AnalyzeDocument</code> is a synchronous operation. To analyze
%% documents asynchronously, use <a>StartDocumentAnalysis</a>.
%%
%% For more information, see <a
%% href="https://docs.aws.amazon.com/textract/latest/dg/how-it-works-analyzing.html">Document
%% Text Analysis</a>.
analyze_document(Client, Input)
  when is_map(Client), is_map(Input) ->
    analyze_document(Client, Input, []).
analyze_document(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AnalyzeDocument">>, Input, Options).

%% @doc Detects text in the input document. Amazon Textract can detect lines
%% of text and the words that make up a line of text. The input document must
%% be an image in JPEG or PNG format. <code>DetectDocumentText</code> returns
%% the detected text in an array of <a>Block</a> objects.
%%
%% Each document page has as an associated <code>Block</code> of type PAGE.
%% Each PAGE <code>Block</code> object is the parent of LINE
%% <code>Block</code> objects that represent the lines of detected text on a
%% page. A LINE <code>Block</code> object is a parent for each word that
%% makes up the line. Words are represented by <code>Block</code> objects of
%% type WORD.
%%
%% <code>DetectDocumentText</code> is a synchronous operation. To analyze
%% documents asynchronously, use <a>StartDocumentTextDetection</a>.
%%
%% For more information, see <a
%% href="https://docs.aws.amazon.com/textract/latest/dg/how-it-works-detecting.html">Document
%% Text Detection</a>.
detect_document_text(Client, Input)
  when is_map(Client), is_map(Input) ->
    detect_document_text(Client, Input, []).
detect_document_text(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetectDocumentText">>, Input, Options).

%% @doc Gets the results for an Amazon Textract asynchronous operation that
%% analyzes text in a document.
%%
%% You start asynchronous text analysis by calling
%% <a>StartDocumentAnalysis</a>, which returns a job identifier
%% (<code>JobId</code>). When the text analysis operation finishes, Amazon
%% Textract publishes a completion status to the Amazon Simple Notification
%% Service (Amazon SNS) topic that's registered in the initial call to
%% <code>StartDocumentAnalysis</code>. To get the results of the
%% text-detection operation, first check that the status value published to
%% the Amazon SNS topic is <code>SUCCEEDED</code>. If so, call
%% <code>GetDocumentAnalysis</code>, and pass the job identifier
%% (<code>JobId</code>) from the initial call to
%% <code>StartDocumentAnalysis</code>.
%%
%% <code>GetDocumentAnalysis</code> returns an array of <a>Block</a> objects.
%% The following types of information are returned:
%%
%% <ul> <li> Form data (key-value pairs). The related information is returned
%% in two <a>Block</a> objects, each of type <code>KEY_VALUE_SET</code>: a
%% KEY <code>Block</code> object and a VALUE <code>Block</code> object. For
%% example, <i>Name: Ana Silva Carolina</i> contains a key and value.
%% <i>Name:</i> is the key. <i>Ana Silva Carolina</i> is the value.
%%
%% </li> <li> Table and table cell data. A TABLE <code>Block</code> object
%% contains information about a detected table. A CELL <code>Block</code>
%% object is returned for each cell in a table.
%%
%% </li> <li> Lines and words of text. A LINE <code>Block</code> object
%% contains one or more WORD <code>Block</code> objects. All lines and words
%% that are detected in the document are returned (including text that
%% doesn't have a relationship with the value of the
%% <code>StartDocumentAnalysis</code> <code>FeatureTypes</code> input
%% parameter).
%%
%% </li> </ul> Selection elements such as check boxes and option buttons
%% (radio buttons) can be detected in form data and in tables. A
%% SELECTION_ELEMENT <code>Block</code> object contains information about a
%% selection element, including the selection status.
%%
%% Use the <code>MaxResults</code> parameter to limit the number of blocks
%% that are returned. If there are more results than specified in
%% <code>MaxResults</code>, the value of <code>NextToken</code> in the
%% operation response contains a pagination token for getting the next set of
%% results. To get the next page of results, call
%% <code>GetDocumentAnalysis</code>, and populate the <code>NextToken</code>
%% request parameter with the token value that's returned from the previous
%% call to <code>GetDocumentAnalysis</code>.
%%
%% For more information, see <a
%% href="https://docs.aws.amazon.com/textract/latest/dg/how-it-works-analyzing.html">Document
%% Text Analysis</a>.
get_document_analysis(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_document_analysis(Client, Input, []).
get_document_analysis(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDocumentAnalysis">>, Input, Options).

%% @doc Gets the results for an Amazon Textract asynchronous operation that
%% detects text in a document. Amazon Textract can detect lines of text and
%% the words that make up a line of text.
%%
%% You start asynchronous text detection by calling
%% <a>StartDocumentTextDetection</a>, which returns a job identifier
%% (<code>JobId</code>). When the text detection operation finishes, Amazon
%% Textract publishes a completion status to the Amazon Simple Notification
%% Service (Amazon SNS) topic that's registered in the initial call to
%% <code>StartDocumentTextDetection</code>. To get the results of the
%% text-detection operation, first check that the status value published to
%% the Amazon SNS topic is <code>SUCCEEDED</code>. If so, call
%% <code>GetDocumentTextDetection</code>, and pass the job identifier
%% (<code>JobId</code>) from the initial call to
%% <code>StartDocumentTextDetection</code>.
%%
%% <code>GetDocumentTextDetection</code> returns an array of <a>Block</a>
%% objects.
%%
%% Each document page has as an associated <code>Block</code> of type PAGE.
%% Each PAGE <code>Block</code> object is the parent of LINE
%% <code>Block</code> objects that represent the lines of detected text on a
%% page. A LINE <code>Block</code> object is a parent for each word that
%% makes up the line. Words are represented by <code>Block</code> objects of
%% type WORD.
%%
%% Use the MaxResults parameter to limit the number of blocks that are
%% returned. If there are more results than specified in
%% <code>MaxResults</code>, the value of <code>NextToken</code> in the
%% operation response contains a pagination token for getting the next set of
%% results. To get the next page of results, call
%% <code>GetDocumentTextDetection</code>, and populate the
%% <code>NextToken</code> request parameter with the token value that's
%% returned from the previous call to <code>GetDocumentTextDetection</code>.
%%
%% For more information, see <a
%% href="https://docs.aws.amazon.com/textract/latest/dg/how-it-works-detecting.html">Document
%% Text Detection</a>.
get_document_text_detection(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_document_text_detection(Client, Input, []).
get_document_text_detection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDocumentTextDetection">>, Input, Options).

%% @doc Starts the asynchronous analysis of an input document for
%% relationships between detected items such as key-value pairs, tables, and
%% selection elements.
%%
%% <code>StartDocumentAnalysis</code> can analyze text in documents that are
%% in JPEG, PNG, and PDF format. The documents are stored in an Amazon S3
%% bucket. Use <a>DocumentLocation</a> to specify the bucket name and file
%% name of the document.
%%
%% <code>StartDocumentAnalysis</code> returns a job identifier
%% (<code>JobId</code>) that you use to get the results of the operation.
%% When text analysis is finished, Amazon Textract publishes a completion
%% status to the Amazon Simple Notification Service (Amazon SNS) topic that
%% you specify in <code>NotificationChannel</code>. To get the results of the
%% text analysis operation, first check that the status value published to
%% the Amazon SNS topic is <code>SUCCEEDED</code>. If so, call
%% <a>GetDocumentAnalysis</a>, and pass the job identifier
%% (<code>JobId</code>) from the initial call to
%% <code>StartDocumentAnalysis</code>.
%%
%% For more information, see <a
%% href="https://docs.aws.amazon.com/textract/latest/dg/how-it-works-analyzing.html">Document
%% Text Analysis</a>.
start_document_analysis(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_document_analysis(Client, Input, []).
start_document_analysis(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartDocumentAnalysis">>, Input, Options).

%% @doc Starts the asynchronous detection of text in a document. Amazon
%% Textract can detect lines of text and the words that make up a line of
%% text.
%%
%% <code>StartDocumentTextDetection</code> can analyze text in documents that
%% are in JPEG, PNG, and PDF format. The documents are stored in an Amazon S3
%% bucket. Use <a>DocumentLocation</a> to specify the bucket name and file
%% name of the document.
%%
%% <code>StartTextDetection</code> returns a job identifier
%% (<code>JobId</code>) that you use to get the results of the operation.
%% When text detection is finished, Amazon Textract publishes a completion
%% status to the Amazon Simple Notification Service (Amazon SNS) topic that
%% you specify in <code>NotificationChannel</code>. To get the results of the
%% text detection operation, first check that the status value published to
%% the Amazon SNS topic is <code>SUCCEEDED</code>. If so, call
%% <a>GetDocumentTextDetection</a>, and pass the job identifier
%% (<code>JobId</code>) from the initial call to
%% <code>StartDocumentTextDetection</code>.
%%
%% For more information, see <a
%% href="https://docs.aws.amazon.com/textract/latest/dg/how-it-works-detecting.html">Document
%% Text Detection</a>.
start_document_text_detection(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_document_text_detection(Client, Input, []).
start_document_text_detection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartDocumentTextDetection">>, Input, Options).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), binary(), map(), list()) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map() | undefined,
    Error :: map().
request(Client, Action, Input0, Options) ->
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

build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Client) ->
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
