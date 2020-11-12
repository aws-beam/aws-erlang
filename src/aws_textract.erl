%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Textract detects and analyzes text in documents and converts
%% it into machine-readable text.
%%
%% This is the API reference documentation for Amazon Textract.
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
%% in two `Block' objects, each of type `KEY_VALUE_SET': a KEY `Block' object
%% and a VALUE `Block' object. For example, Name: Ana Silva Carolina contains
%% a key and value. Name: is the key. Ana Silva Carolina is the value.
%%
%% </li> <li> Table and table cell data. A TABLE `Block' object contains
%% information about a detected table. A CELL `Block' object is returned for
%% each cell in a table.
%%
%% </li> <li> Lines and words of text. A LINE `Block' object contains one or
%% more WORD `Block' objects. All lines and words that are detected in the
%% document are returned (including text that doesn't have a relationship
%% with the value of `FeatureTypes').
%%
%% </li> </ul> Selection elements such as check boxes and option buttons
%% (radio buttons) can be detected in form data and in tables. A
%% SELECTION_ELEMENT `Block' object contains information about a selection
%% element, including the selection status.
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

%% @doc Detects text in the input document.
%%
%% Amazon Textract can detect lines of text and the words that make up a line
%% of text. The input document must be an image in JPEG or PNG format.
%% `DetectDocumentText' returns the detected text in an array of `Block'
%% objects.
%%
%% Each document page has as an associated `Block' of type PAGE. Each PAGE
%% `Block' object is the parent of LINE `Block' objects that represent the
%% lines of detected text on a page. A LINE `Block' object is a parent for
%% each word that makes up the line. Words are represented by `Block' objects
%% of type WORD.
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

%% @doc Gets the results for an Amazon Textract asynchronous operation that
%% analyzes text in a document.
%%
%% You start asynchronous text analysis by calling `StartDocumentAnalysis',
%% which returns a job identifier (`JobId'). When the text analysis operation
%% finishes, Amazon Textract publishes a completion status to the Amazon
%% Simple Notification Service (Amazon SNS) topic that's registered in the
%% initial call to `StartDocumentAnalysis'. To get the results of the
%% text-detection operation, first check that the status value published to
%% the Amazon SNS topic is `SUCCEEDED'. If so, call `GetDocumentAnalysis',
%% and pass the job identifier (`JobId') from the initial call to
%% `StartDocumentAnalysis'.
%%
%% `GetDocumentAnalysis' returns an array of `Block' objects. The following
%% types of information are returned:
%%
%% <ul> <li> Form data (key-value pairs). The related information is returned
%% in two `Block' objects, each of type `KEY_VALUE_SET': a KEY `Block' object
%% and a VALUE `Block' object. For example, Name: Ana Silva Carolina contains
%% a key and value. Name: is the key. Ana Silva Carolina is the value.
%%
%% </li> <li> Table and table cell data. A TABLE `Block' object contains
%% information about a detected table. A CELL `Block' object is returned for
%% each cell in a table.
%%
%% </li> <li> Lines and words of text. A LINE `Block' object contains one or
%% more WORD `Block' objects. All lines and words that are detected in the
%% document are returned (including text that doesn't have a relationship
%% with the value of the `StartDocumentAnalysis' `FeatureTypes' input
%% parameter).
%%
%% </li> </ul> Selection elements such as check boxes and option buttons
%% (radio buttons) can be detected in form data and in tables. A
%% SELECTION_ELEMENT `Block' object contains information about a selection
%% element, including the selection status.
%%
%% Use the `MaxResults' parameter to limit the number of blocks that are
%% returned. If there are more results than specified in `MaxResults', the
%% value of `NextToken' in the operation response contains a pagination token
%% for getting the next set of results. To get the next page of results, call
%% `GetDocumentAnalysis', and populate the `NextToken' request parameter with
%% the token value that's returned from the previous call to
%% `GetDocumentAnalysis'.
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
%% `StartDocumentTextDetection', which returns a job identifier (`JobId').
%% When the text detection operation finishes, Amazon Textract publishes a
%% completion status to the Amazon Simple Notification Service (Amazon SNS)
%% topic that's registered in the initial call to
%% `StartDocumentTextDetection'. To get the results of the text-detection
%% operation, first check that the status value published to the Amazon SNS
%% topic is `SUCCEEDED'. If so, call `GetDocumentTextDetection', and pass the
%% job identifier (`JobId') from the initial call to
%% `StartDocumentTextDetection'.
%%
%% `GetDocumentTextDetection' returns an array of `Block' objects.
%%
%% Each document page has as an associated `Block' of type PAGE. Each PAGE
%% `Block' object is the parent of LINE `Block' objects that represent the
%% lines of detected text on a page. A LINE `Block' object is a parent for
%% each word that makes up the line. Words are represented by `Block' objects
%% of type WORD.
%%
%% Use the MaxResults parameter to limit the number of blocks that are
%% returned. If there are more results than specified in `MaxResults', the
%% value of `NextToken' in the operation response contains a pagination token
%% for getting the next set of results. To get the next page of results, call
%% `GetDocumentTextDetection', and populate the `NextToken' request parameter
%% with the token value that's returned from the previous call to
%% `GetDocumentTextDetection'.
%%
%% For more information, see Document Text Detection.
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
%% `StartDocumentAnalysis' can analyze text in documents that are in JPEG,
%% PNG, and PDF format. The documents are stored in an Amazon S3 bucket. Use
%% `DocumentLocation' to specify the bucket name and file name of the
%% document.
%%
%% `StartDocumentAnalysis' returns a job identifier (`JobId') that you use to
%% get the results of the operation. When text analysis is finished, Amazon
%% Textract publishes a completion status to the Amazon Simple Notification
%% Service (Amazon SNS) topic that you specify in `NotificationChannel'. To
%% get the results of the text analysis operation, first check that the
%% status value published to the Amazon SNS topic is `SUCCEEDED'. If so, call
%% `GetDocumentAnalysis', and pass the job identifier (`JobId') from the
%% initial call to `StartDocumentAnalysis'.
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
%% JPEG, PNG, and PDF format. The documents are stored in an Amazon S3
%% bucket. Use `DocumentLocation' to specify the bucket name and file name of
%% the document.
%%
%% `StartTextDetection' returns a job identifier (`JobId') that you use to
%% get the results of the operation. When text detection is finished, Amazon
%% Textract publishes a completion status to the Amazon Simple Notification
%% Service (Amazon SNS) topic that you specify in `NotificationChannel'. To
%% get the results of the text detection operation, first check that the
%% status value published to the Amazon SNS topic is `SUCCEEDED'. If so, call
%% `GetDocumentTextDetection', and pass the job identifier (`JobId') from the
%% initial call to `StartDocumentTextDetection'.
%%
%% For more information, see Document Text Detection.
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
