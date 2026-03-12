%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon SimpleDB is a web service providing the core database
%% functions of data indexing and
%% querying in the cloud.
%%
%% By offloading the time and effort associated with building and operating a
%% web-scale
%% database, SimpleDB provides developers the freedom to focus on application
%% development.
%%
%% A traditional, clustered relational database requires a sizable upfront
%% capital outlay, is complex to design,
%% and often requires extensive and repetitive database administration.
%% Amazon SimpleDB is dramatically simpler,
%% requiring no schema, automatically indexing your data and providing a
%% simple API for storage and access.
%% This approach eliminates the administrative burden of data modeling, index
%% maintenance, and performance tuning.
%% Developers gain access to this functionality within Amazon's proven
%% computing environment, are able to scale
%% instantly, and pay only for what they use.
-module(aws_simpledbv2).

-export([get_export/2,
         get_export/3,
         list_exports/2,
         list_exports/3,
         start_domain_export/2,
         start_domain_export/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% export_summary() :: #{
%%   <<"domainName">> => string(),
%%   <<"exportArn">> => string(),
%%   <<"exportStatus">> => list(any()),
%%   <<"requestedAt">> => non_neg_integer()
%% }
-type export_summary() :: #{binary() => any()}.


%% Example:
%% get_export_request() :: #{
%%   <<"exportArn">> := string()
%% }
-type get_export_request() :: #{binary() => any()}.


%% Example:
%% get_export_response() :: #{
%%   <<"clientToken">> => string(),
%%   <<"domainName">> => string(),
%%   <<"exportArn">> => string(),
%%   <<"exportDataCutoffTime">> => non_neg_integer(),
%%   <<"exportManifest">> => string(),
%%   <<"exportStatus">> => list(any()),
%%   <<"failureCode">> => string(),
%%   <<"failureMessage">> => string(),
%%   <<"itemsCount">> => float(),
%%   <<"requestedAt">> => non_neg_integer(),
%%   <<"s3Bucket">> => string(),
%%   <<"s3BucketOwner">> => string(),
%%   <<"s3KeyPrefix">> => string(),
%%   <<"s3SseAlgorithm">> => list(any()),
%%   <<"s3SseKmsKeyId">> => string()
%% }
-type get_export_response() :: #{binary() => any()}.


%% Example:
%% invalid_next_token_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type invalid_next_token_exception() :: #{binary() => any()}.


%% Example:
%% invalid_parameter_combination_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type invalid_parameter_combination_exception() :: #{binary() => any()}.


%% Example:
%% invalid_parameter_value_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type invalid_parameter_value_exception() :: #{binary() => any()}.


%% Example:
%% list_exports_request() :: #{
%%   <<"domainName">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_exports_request() :: #{binary() => any()}.


%% Example:
%% list_exports_response() :: #{
%%   <<"exportSummaries">> => list(export_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_exports_response() :: #{binary() => any()}.


%% Example:
%% no_such_domain_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type no_such_domain_exception() :: #{binary() => any()}.


%% Example:
%% no_such_export_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type no_such_export_exception() :: #{binary() => any()}.


%% Example:
%% number_exports_limit_exceeded() :: #{
%%   <<"message">> => [string()]
%% }
-type number_exports_limit_exceeded() :: #{binary() => any()}.


%% Example:
%% start_domain_export_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"domainName">> := string(),
%%   <<"s3Bucket">> := string(),
%%   <<"s3BucketOwner">> => string(),
%%   <<"s3KeyPrefix">> => string(),
%%   <<"s3SseAlgorithm">> => list(any()),
%%   <<"s3SseKmsKeyId">> => string()
%% }
-type start_domain_export_request() :: #{binary() => any()}.


%% Example:
%% start_domain_export_response() :: #{
%%   <<"clientToken">> => string(),
%%   <<"exportArn">> => string(),
%%   <<"requestedAt">> => non_neg_integer()
%% }
-type start_domain_export_response() :: #{binary() => any()}.

-type get_export_errors() ::
    no_such_export_exception() | 
    invalid_parameter_value_exception().

-type list_exports_errors() ::
    no_such_domain_exception() | 
    invalid_parameter_value_exception() | 
    invalid_next_token_exception().

-type start_domain_export_errors() ::
    number_exports_limit_exceeded() | 
    no_such_domain_exception() | 
    invalid_parameter_value_exception() | 
    invalid_parameter_combination_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Returns information for an existing domain export.
-spec get_export(aws_client:aws_client(), get_export_request()) ->
    {ok, get_export_response(), tuple()} |
    {error, any()} |
    {error, get_export_errors(), tuple()}.
get_export(Client, Input) ->
    get_export(Client, Input, []).

-spec get_export(aws_client:aws_client(), get_export_request(), proplists:proplist()) ->
    {ok, get_export_response(), tuple()} |
    {error, any()} |
    {error, get_export_errors(), tuple()}.
get_export(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/GetExport"],
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

%% @doc Lists all exports that were created.
%%
%% The results are paginated and can be filtered by domain name.
-spec list_exports(aws_client:aws_client(), list_exports_request()) ->
    {ok, list_exports_response(), tuple()} |
    {error, any()} |
    {error, list_exports_errors(), tuple()}.
list_exports(Client, Input) ->
    list_exports(Client, Input, []).

-spec list_exports(aws_client:aws_client(), list_exports_request(), proplists:proplist()) ->
    {ok, list_exports_response(), tuple()} |
    {error, any()} |
    {error, list_exports_errors(), tuple()}.
list_exports(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/ListExports"],
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

%% @doc Initiates the export of a SimpleDB domain to an S3 bucket.
-spec start_domain_export(aws_client:aws_client(), start_domain_export_request()) ->
    {ok, start_domain_export_response(), tuple()} |
    {error, any()} |
    {error, start_domain_export_errors(), tuple()}.
start_domain_export(Client, Input) ->
    start_domain_export(Client, Input, []).

-spec start_domain_export(aws_client:aws_client(), start_domain_export_request(), proplists:proplist()) ->
    {ok, start_domain_export_response(), tuple()} |
    {error, any()} |
    {error, start_domain_export_errors(), tuple()}.
start_domain_export(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/StartDomainExport"],
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
    Client1 = Client#{service => <<"sdb">>},
    Host = build_host(<<"sdb">>, Client1),
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
