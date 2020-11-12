%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc You use the AmazonCloudSearch2013 API to upload documents to a search
%% domain and search those documents.
%%
%% The endpoints for submitting `UploadDocuments', `Search', and `Suggest'
%% requests are domain-specific. To get the endpoints for your domain, use
%% the Amazon CloudSearch configuration service `DescribeDomains' action. The
%% domain endpoints are also displayed on the domain dashboard in the Amazon
%% CloudSearch console. You submit suggest requests to the search endpoint.
%%
%% For more information, see the Amazon CloudSearch Developer Guide.
-module(aws_cloudsearchdomain).

-export([search/15,
         search/16,
         suggest/4,
         suggest/5,
         upload_documents/2,
         upload_documents/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Retrieves a list of documents that match the specified search
%% criteria.
%%
%% How you specify the search criteria depends on which query parser you use.
%% Amazon CloudSearch supports four query parsers:
%%
%% <ul> <li>`simple': search all `text' and `text-array' fields for the
%% specified string. Search for phrases, individual terms, and prefixes.
%% </li> <li>`structured': search specific fields, construct compound queries
%% using Boolean operators, and use advanced features such as term boosting
%% and proximity searching.</li> <li>`lucene': specify search criteria using
%% the Apache Lucene query parser syntax.</li> <li>`dismax': specify search
%% criteria using the simplified subset of the Apache Lucene query parser
%% syntax defined by the DisMax query parser.</li> </ul> For more
%% information, see Searching Your Data in the Amazon CloudSearch Developer
%% Guide.
%%
%% The endpoint for submitting `Search' requests is domain-specific. You
%% submit search requests to a domain's search endpoint. To get the search
%% endpoint for your domain, use the Amazon CloudSearch configuration service
%% `DescribeDomains' action. A domain's endpoints are also displayed on the
%% domain dashboard in the Amazon CloudSearch console.
search(Client, Cursor, Expr, Facet, FilterQuery, Highlight, Partial, Query, QueryOptions, QueryParser, Return, Size, Sort, Start, Stats)
  when is_map(Client) ->
    search(Client, Cursor, Expr, Facet, FilterQuery, Highlight, Partial, Query, QueryOptions, QueryParser, Return, Size, Sort, Start, Stats, []).
search(Client, Cursor, Expr, Facet, FilterQuery, Highlight, Partial, Query, QueryOptions, QueryParser, Return, Size, Sort, Start, Stats, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2013-01-01/search?format=sdk&pretty=true"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"cursor">>, Cursor},
        {<<"expr">>, Expr},
        {<<"facet">>, Facet},
        {<<"fq">>, FilterQuery},
        {<<"highlight">>, Highlight},
        {<<"partial">>, Partial},
        {<<"q">>, Query},
        {<<"q.options">>, QueryOptions},
        {<<"q.parser">>, QueryParser},
        {<<"return">>, Return},
        {<<"size">>, Size},
        {<<"sort">>, Sort},
        {<<"start">>, Start},
        {<<"stats">>, Stats}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves autocomplete suggestions for a partial query string.
%%
%% You can use suggestions enable you to display likely matches before users
%% finish typing. In Amazon CloudSearch, suggestions are based on the
%% contents of a particular text field. When you request suggestions, Amazon
%% CloudSearch finds all of the documents whose values in the suggester field
%% start with the specified query string. The beginning of the field must
%% match the query string to be considered a match.
%%
%% For more information about configuring suggesters and retrieving
%% suggestions, see Getting Suggestions in the Amazon CloudSearch Developer
%% Guide.
%%
%% The endpoint for submitting `Suggest' requests is domain-specific. You
%% submit suggest requests to a domain's search endpoint. To get the search
%% endpoint for your domain, use the Amazon CloudSearch configuration service
%% `DescribeDomains' action. A domain's endpoints are also displayed on the
%% domain dashboard in the Amazon CloudSearch console.
suggest(Client, Query, Size, Suggester)
  when is_map(Client) ->
    suggest(Client, Query, Size, Suggester, []).
suggest(Client, Query, Size, Suggester, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/2013-01-01/suggest?format=sdk&pretty=true"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"q">>, Query},
        {<<"size">>, Size},
        {<<"suggester">>, Suggester}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Posts a batch of documents to a search domain for indexing.
%%
%% A document batch is a collection of add and delete operations that
%% represent the documents you want to add, update, or delete from your
%% domain. Batches can be described in either JSON or XML. Each item that you
%% want Amazon CloudSearch to return as a search result (such as a product)
%% is represented as a document. Every document has a unique ID and one or
%% more fields that contain the data that you want to search and return in
%% results. Individual documents cannot contain more than 1 MB of data. The
%% entire batch cannot exceed 5 MB. To get the best possible upload
%% performance, group add and delete operations in batches that are close the
%% 5 MB limit. Submitting a large volume of single-document batches can
%% overload a domain's document service.
%%
%% The endpoint for submitting `UploadDocuments' requests is domain-specific.
%% To get the document endpoint for your domain, use the Amazon CloudSearch
%% configuration service `DescribeDomains' action. A domain's endpoints are
%% also displayed on the domain dashboard in the Amazon CloudSearch console.
%%
%% For more information about formatting your data for Amazon CloudSearch,
%% see Preparing Your Data in the Amazon CloudSearch Developer Guide. For
%% more information about uploading data for indexing, see Uploading Data in
%% the Amazon CloudSearch Developer Guide.
upload_documents(Client, Input) ->
    upload_documents(Client, Input, []).
upload_documents(Client, Input0, Options) ->
    Method = post,
    Path = ["/2013-01-01/documents/batch?format=sdk"],
    SuccessStatusCode = undefined,

    HeadersMapping = [
                       {<<"Content-Type">>, <<"contentType">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), atom(), iolist(), list(),
              list(), map() | undefined, list(), pos_integer() | undefined) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map(),
    Error :: map().
request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
    Client1 = Client#{service => <<"cloudsearch">>},
    Host = build_host(<<"cloudsearchdomain">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders = [ {<<"Host">>, Host}
                        , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                        ],
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),
    Payload = encode_payload(Input),
    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    handle_response(Response, SuccessStatusCode).

handle_response({ok, StatusCode, ResponseHeaders, Client}, SuccessStatusCode)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= SuccessStatusCode ->
    case hackney:body(Client) of
        {ok, <<>>} when StatusCode =:= 200;
                        StatusCode =:= SuccessStatusCode ->
            {ok, #{}, {StatusCode, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body),
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}, _) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}, _) ->
  {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Path0, Client) ->
    Proto = maps:get(proto, Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  jsx:encode(Input).
