%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc You use the AmazonCloudSearch2013 API to upload documents to a search
%% domain and search those documents.
%%
%% The endpoints for submitting `UploadDocuments', `Search', and
%% `Suggest' requests are domain-specific. To get the endpoints for your
%% domain, use the Amazon CloudSearch configuration service
%% `DescribeDomains' action. The domain endpoints are also displayed on
%% the domain dashboard in the Amazon CloudSearch console. You submit suggest
%% requests to the search endpoint.
%%
%% For more information, see the Amazon CloudSearch Developer Guide:
%% http://docs.aws.amazon.com/cloudsearch/latest/developerguide.
-module(aws_cloudsearch_domain).

-export([search/2,
         search/4,
         search/5,
         suggest/3,
         suggest/5,
         suggest/6,
         upload_documents/2,
         upload_documents/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% bucket() :: #{
%%   <<"count">> => float(),
%%   <<"value">> => string()
%% }
-type bucket() :: #{binary() => any()}.


%% Example:
%% bucket_info() :: #{
%%   <<"buckets">> => list(bucket())
%% }
-type bucket_info() :: #{binary() => any()}.


%% Example:
%% document_service_exception() :: #{
%%   <<"message">> => string(),
%%   <<"status">> => string()
%% }
-type document_service_exception() :: #{binary() => any()}.


%% Example:
%% document_service_warning() :: #{
%%   <<"message">> => string()
%% }
-type document_service_warning() :: #{binary() => any()}.


%% Example:
%% field_stats() :: #{
%%   <<"count">> => float(),
%%   <<"max">> => string(),
%%   <<"mean">> => string(),
%%   <<"min">> => string(),
%%   <<"missing">> => float(),
%%   <<"stddev">> => float(),
%%   <<"sum">> => float(),
%%   <<"sumOfSquares">> => float()
%% }
-type field_stats() :: #{binary() => any()}.


%% Example:
%% hit() :: #{
%%   <<"exprs">> => map(),
%%   <<"fields">> => map(),
%%   <<"highlights">> => map(),
%%   <<"id">> => string()
%% }
-type hit() :: #{binary() => any()}.


%% Example:
%% hits() :: #{
%%   <<"cursor">> => string(),
%%   <<"found">> => float(),
%%   <<"hit">> => list(hit()),
%%   <<"start">> => float()
%% }
-type hits() :: #{binary() => any()}.


%% Example:
%% search_exception() :: #{
%%   <<"message">> => string()
%% }
-type search_exception() :: #{binary() => any()}.


%% Example:
%% search_request() :: #{
%%   <<"cursor">> => string(),
%%   <<"expr">> => string(),
%%   <<"facet">> => string(),
%%   <<"filterQuery">> => string(),
%%   <<"highlight">> => string(),
%%   <<"partial">> => boolean(),
%%   <<"query">> := string(),
%%   <<"queryOptions">> => string(),
%%   <<"queryParser">> => list(any()),
%%   <<"return">> => string(),
%%   <<"size">> => float(),
%%   <<"sort">> => string(),
%%   <<"start">> => float(),
%%   <<"stats">> => string()
%% }
-type search_request() :: #{binary() => any()}.


%% Example:
%% search_response() :: #{
%%   <<"facets">> => map(),
%%   <<"hits">> => hits(),
%%   <<"stats">> => map(),
%%   <<"status">> => search_status()
%% }
-type search_response() :: #{binary() => any()}.


%% Example:
%% search_status() :: #{
%%   <<"rid">> => string(),
%%   <<"timems">> => float()
%% }
-type search_status() :: #{binary() => any()}.


%% Example:
%% suggest_model() :: #{
%%   <<"found">> => float(),
%%   <<"query">> => string(),
%%   <<"suggestions">> => list(suggestion_match())
%% }
-type suggest_model() :: #{binary() => any()}.


%% Example:
%% suggest_request() :: #{
%%   <<"query">> := string(),
%%   <<"size">> => float(),
%%   <<"suggester">> := string()
%% }
-type suggest_request() :: #{binary() => any()}.


%% Example:
%% suggest_response() :: #{
%%   <<"status">> => suggest_status(),
%%   <<"suggest">> => suggest_model()
%% }
-type suggest_response() :: #{binary() => any()}.


%% Example:
%% suggest_status() :: #{
%%   <<"rid">> => string(),
%%   <<"timems">> => float()
%% }
-type suggest_status() :: #{binary() => any()}.


%% Example:
%% suggestion_match() :: #{
%%   <<"id">> => string(),
%%   <<"score">> => float(),
%%   <<"suggestion">> => string()
%% }
-type suggestion_match() :: #{binary() => any()}.


%% Example:
%% upload_documents_request() :: #{
%%   <<"contentType">> := list(any()),
%%   <<"documents">> := binary()
%% }
-type upload_documents_request() :: #{binary() => any()}.


%% Example:
%% upload_documents_response() :: #{
%%   <<"adds">> => float(),
%%   <<"deletes">> => float(),
%%   <<"status">> => string(),
%%   <<"warnings">> => list(document_service_warning())
%% }
-type upload_documents_response() :: #{binary() => any()}.

-type search_errors() ::
    search_exception().

-type suggest_errors() ::
    search_exception().

-type upload_documents_errors() ::
    document_service_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Retrieves a list of documents that match the specified search
%% criteria.
%%
%% How you specify the search criteria depends on which query parser you use.
%% Amazon CloudSearch supports four query parsers:
%%
%% `simple': search all `text' and `text-array' fields for the
%% specified string. Search for phrases, individual terms, and prefixes.
%% `structured': search specific fields, construct compound queries using
%% Boolean operators, and use advanced features such as term boosting and
%% proximity searching.
%% `lucene': specify search criteria using the Apache Lucene query parser
%% syntax.
%% `dismax': specify search criteria using the simplified subset of the
%% Apache Lucene query parser syntax defined by the DisMax query parser.
%%
%% For more information, see Searching Your Data:
%% http://docs.aws.amazon.com/cloudsearch/latest/developerguide/searching.html
%% in the Amazon CloudSearch Developer Guide.
%%
%% The endpoint for submitting `Search' requests is domain-specific. You
%% submit search requests to a domain's search endpoint. To get the
%% search endpoint for your domain, use the Amazon CloudSearch configuration
%% service `DescribeDomains' action. A domain's endpoints are also
%% displayed on the domain dashboard in the Amazon CloudSearch console.
-spec search(aws_client:aws_client(), binary() | list()) ->
    {ok, search_response(), tuple()} |
    {error, any()} |
    {error, search_errors(), tuple()}.
search(Client, Query)
  when is_map(Client) ->
    search(Client, Query, #{}, #{}).

-spec search(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, search_response(), tuple()} |
    {error, any()} |
    {error, search_errors(), tuple()}.
search(Client, Query, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    search(Client, Query, QueryMap, HeadersMap, []).

-spec search(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, search_response(), tuple()} |
    {error, any()} |
    {error, search_errors(), tuple()}.
search(Client, Query, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-01-01/search?format=sdk&pretty=true"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"cursor">>, maps:get(<<"cursor">>, QueryMap, undefined)},
        {<<"expr">>, maps:get(<<"expr">>, QueryMap, undefined)},
        {<<"facet">>, maps:get(<<"facet">>, QueryMap, undefined)},
        {<<"fq">>, maps:get(<<"fq">>, QueryMap, undefined)},
        {<<"highlight">>, maps:get(<<"highlight">>, QueryMap, undefined)},
        {<<"partial">>, maps:get(<<"partial">>, QueryMap, undefined)},
        {<<"q">>, Query},
        {<<"q.options">>, maps:get(<<"q.options">>, QueryMap, undefined)},
        {<<"q.parser">>, maps:get(<<"q.parser">>, QueryMap, undefined)},
        {<<"return">>, maps:get(<<"return">>, QueryMap, undefined)},
        {<<"size">>, maps:get(<<"size">>, QueryMap, undefined)},
        {<<"sort">>, maps:get(<<"sort">>, QueryMap, undefined)},
        {<<"start">>, maps:get(<<"start">>, QueryMap, undefined)},
        {<<"stats">>, maps:get(<<"stats">>, QueryMap, undefined)}
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
%% suggestions, see Getting Suggestions:
%% http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html
%% in the Amazon CloudSearch Developer Guide.
%%
%% The endpoint for submitting `Suggest' requests is domain-specific. You
%% submit suggest requests to a domain's search endpoint. To get the
%% search endpoint for your domain, use the Amazon CloudSearch configuration
%% service `DescribeDomains' action. A domain's endpoints are also
%% displayed on the domain dashboard in the Amazon CloudSearch console.
-spec suggest(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, suggest_response(), tuple()} |
    {error, any()} |
    {error, suggest_errors(), tuple()}.
suggest(Client, Query, Suggester)
  when is_map(Client) ->
    suggest(Client, Query, Suggester, #{}, #{}).

-spec suggest(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, suggest_response(), tuple()} |
    {error, any()} |
    {error, suggest_errors(), tuple()}.
suggest(Client, Query, Suggester, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    suggest(Client, Query, Suggester, QueryMap, HeadersMap, []).

-spec suggest(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, suggest_response(), tuple()} |
    {error, any()} |
    {error, suggest_errors(), tuple()}.
suggest(Client, Query, Suggester, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2013-01-01/suggest?format=sdk&pretty=true"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"q">>, Query},
        {<<"size">>, maps:get(<<"size">>, QueryMap, undefined)},
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
%% The endpoint for submitting `UploadDocuments' requests is
%% domain-specific. To get the document endpoint for your domain, use the
%% Amazon CloudSearch configuration service `DescribeDomains' action. A
%% domain's endpoints are also displayed on the domain dashboard in the
%% Amazon CloudSearch console.
%%
%% For more information about formatting your data for Amazon CloudSearch,
%% see Preparing Your Data:
%% http://docs.aws.amazon.com/cloudsearch/latest/developerguide/preparing-data.html
%% in the Amazon CloudSearch Developer Guide.
%% For more information about uploading data for indexing, see Uploading
%% Data:
%% http://docs.aws.amazon.com/cloudsearch/latest/developerguide/uploading-data.html
%% in the Amazon CloudSearch Developer Guide.
-spec upload_documents(aws_client:aws_client(), upload_documents_request()) ->
    {ok, upload_documents_response(), tuple()} |
    {error, any()} |
    {error, upload_documents_errors(), tuple()}.
upload_documents(Client, Input) ->
    upload_documents(Client, Input, []).

-spec upload_documents(aws_client:aws_client(), upload_documents_request(), proplists:proplist()) ->
    {ok, upload_documents_response(), tuple()} |
    {error, any()} |
    {error, upload_documents_errors(), tuple()}.
upload_documents(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2013-01-01/documents/batch?format=sdk"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"Content-Type">>, <<"contentType">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

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
    Client1 = Client#{service => <<"cloudsearch">>},
    Host = build_host(<<"cloudsearchdomain">>, Client1),
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
