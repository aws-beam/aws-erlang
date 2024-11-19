%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc RDS Data API
%%
%% Amazon RDS provides an HTTP endpoint to run SQL statements on an Amazon
%% Aurora DB cluster.
%%
%% To run these
%% statements, you use the RDS Data API (Data API).
%%
%% Data API is available with the following types of Aurora databases:
%%
%% Aurora PostgreSQL - Serverless v2, provisioned, and Serverless v1
%%
%% Aurora MySQL - Serverless v2, provisioned, and Serverless v1
%%
%% For more information about the Data API, see
%% Using RDS Data API:
%% https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/data-api.html
%% in the Amazon Aurora User Guide.
-module(aws_rds_data).

-export([batch_execute_statement/2,
         batch_execute_statement/3,
         begin_transaction/2,
         begin_transaction/3,
         commit_transaction/2,
         commit_transaction/3,
         execute_sql/2,
         execute_sql/3,
         execute_statement/2,
         execute_statement/3,
         rollback_transaction/2,
         rollback_transaction/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% statement_timeout_exception() :: #{
%%   <<"dbConnectionId">> => float(),
%%   <<"message">> => string()
%% }
-type statement_timeout_exception() :: #{binary() => any()}.


%% Example:
%% record() :: #{
%%   <<"values">> => list(list()())
%% }
-type record() :: #{binary() => any()}.


%% Example:
%% result_set_metadata() :: #{
%%   <<"columnCount">> => float(),
%%   <<"columnMetadata">> => list(column_metadata()())
%% }
-type result_set_metadata() :: #{binary() => any()}.


%% Example:
%% database_resuming_exception() :: #{
%%   <<"message">> => string()
%% }
-type database_resuming_exception() :: #{binary() => any()}.


%% Example:
%% unsupported_result_exception() :: #{
%%   <<"message">> => string()
%% }
-type unsupported_result_exception() :: #{binary() => any()}.


%% Example:
%% rollback_transaction_request() :: #{
%%   <<"resourceArn">> => string(),
%%   <<"secretArn">> => string(),
%%   <<"transactionId">> => string()
%% }
-type rollback_transaction_request() :: #{binary() => any()}.


%% Example:
%% column_metadata() :: #{
%%   <<"arrayBaseColumnType">> => integer(),
%%   <<"isAutoIncrement">> => boolean(),
%%   <<"isCaseSensitive">> => boolean(),
%%   <<"isCurrency">> => boolean(),
%%   <<"isSigned">> => boolean(),
%%   <<"label">> => string(),
%%   <<"name">> => string(),
%%   <<"nullable">> => integer(),
%%   <<"precision">> => integer(),
%%   <<"scale">> => integer(),
%%   <<"schemaName">> => string(),
%%   <<"tableName">> => string(),
%%   <<"type">> => integer(),
%%   <<"typeName">> => string()
%% }
-type column_metadata() :: #{binary() => any()}.


%% Example:
%% commit_transaction_request() :: #{
%%   <<"resourceArn">> => string(),
%%   <<"secretArn">> => string(),
%%   <<"transactionId">> => string()
%% }
-type commit_transaction_request() :: #{binary() => any()}.


%% Example:
%% execute_sql_request() :: #{
%%   <<"awsSecretStoreArn">> => string(),
%%   <<"database">> => string(),
%%   <<"dbClusterOrInstanceArn">> => string(),
%%   <<"schema">> => string(),
%%   <<"sqlStatements">> => string()
%% }
-type execute_sql_request() :: #{binary() => any()}.


%% Example:
%% transaction_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type transaction_not_found_exception() :: #{binary() => any()}.


%% Example:
%% forbidden_exception() :: #{
%%   <<"message">> => string()
%% }
-type forbidden_exception() :: #{binary() => any()}.


%% Example:
%% update_result() :: #{
%%   <<"generatedFields">> => list(list()())
%% }
-type update_result() :: #{binary() => any()}.


%% Example:
%% sql_parameter() :: #{
%%   <<"name">> => string(),
%%   <<"typeHint">> => string(),
%%   <<"value">> => list()
%% }
-type sql_parameter() :: #{binary() => any()}.


%% Example:
%% batch_execute_statement_request() :: #{
%%   <<"database">> => string(),
%%   <<"parameterSets">> => list(list(sql_parameter()())()),
%%   <<"resourceArn">> => string(),
%%   <<"schema">> => string(),
%%   <<"secretArn">> => string(),
%%   <<"sql">> => string(),
%%   <<"transactionId">> => string()
%% }
-type batch_execute_statement_request() :: #{binary() => any()}.


%% Example:
%% begin_transaction_request() :: #{
%%   <<"database">> => string(),
%%   <<"resourceArn">> => string(),
%%   <<"schema">> => string(),
%%   <<"secretArn">> => string()
%% }
-type begin_transaction_request() :: #{binary() => any()}.


%% Example:
%% execute_statement_response() :: #{
%%   <<"columnMetadata">> => list(column_metadata()()),
%%   <<"formattedRecords">> => string(),
%%   <<"generatedFields">> => list(list()()),
%%   <<"numberOfRecordsUpdated">> => float(),
%%   <<"records">> => list(list(list()())())
%% }
-type execute_statement_response() :: #{binary() => any()}.

%% Example:
%% service_unavailable_error() :: #{}
-type service_unavailable_error() :: #{}.


%% Example:
%% invalid_secret_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_secret_exception() :: #{binary() => any()}.


%% Example:
%% result_set_options() :: #{
%%   <<"decimalReturnType">> => string(),
%%   <<"longReturnType">> => string()
%% }
-type result_set_options() :: #{binary() => any()}.


%% Example:
%% commit_transaction_response() :: #{
%%   <<"transactionStatus">> => string()
%% }
-type commit_transaction_response() :: #{binary() => any()}.


%% Example:
%% not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type not_found_exception() :: #{binary() => any()}.

%% Example:
%% database_unavailable_exception() :: #{}
-type database_unavailable_exception() :: #{}.


%% Example:
%% secrets_error_exception() :: #{
%%   <<"message">> => string()
%% }
-type secrets_error_exception() :: #{binary() => any()}.


%% Example:
%% http_endpoint_not_enabled_exception() :: #{
%%   <<"message">> => string()
%% }
-type http_endpoint_not_enabled_exception() :: #{binary() => any()}.


%% Example:
%% database_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type database_not_found_exception() :: #{binary() => any()}.


%% Example:
%% rollback_transaction_response() :: #{
%%   <<"transactionStatus">> => string()
%% }
-type rollback_transaction_response() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% database_error_exception() :: #{
%%   <<"message">> => string()
%% }
-type database_error_exception() :: #{binary() => any()}.


%% Example:
%% begin_transaction_response() :: #{
%%   <<"transactionId">> => string()
%% }
-type begin_transaction_response() :: #{binary() => any()}.

%% Example:
%% internal_server_error_exception() :: #{}
-type internal_server_error_exception() :: #{}.


%% Example:
%% result_frame() :: #{
%%   <<"records">> => list(record()()),
%%   <<"resultSetMetadata">> => result_set_metadata()
%% }
-type result_frame() :: #{binary() => any()}.


%% Example:
%% execute_statement_request() :: #{
%%   <<"continueAfterTimeout">> => boolean(),
%%   <<"database">> => string(),
%%   <<"formatRecordsAs">> => string(),
%%   <<"includeResultMetadata">> => boolean(),
%%   <<"parameters">> => list(sql_parameter()()),
%%   <<"resourceArn">> => string(),
%%   <<"resultSetOptions">> => result_set_options(),
%%   <<"schema">> => string(),
%%   <<"secretArn">> => string(),
%%   <<"sql">> => string(),
%%   <<"transactionId">> => string()
%% }
-type execute_statement_request() :: #{binary() => any()}.


%% Example:
%% sql_statement_result() :: #{
%%   <<"numberOfRecordsUpdated">> => float(),
%%   <<"resultFrame">> => result_frame()
%% }
-type sql_statement_result() :: #{binary() => any()}.


%% Example:
%% bad_request_exception() :: #{
%%   <<"message">> => string()
%% }
-type bad_request_exception() :: #{binary() => any()}.


%% Example:
%% execute_sql_response() :: #{
%%   <<"sqlStatementResults">> => list(sql_statement_result()())
%% }
-type execute_sql_response() :: #{binary() => any()}.


%% Example:
%% struct_value() :: #{
%%   <<"attributes">> => list(list()())
%% }
-type struct_value() :: #{binary() => any()}.


%% Example:
%% batch_execute_statement_response() :: #{
%%   <<"updateResults">> => list(update_result()())
%% }
-type batch_execute_statement_response() :: #{binary() => any()}.

-type batch_execute_statement_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    database_error_exception() | 
    access_denied_exception() | 
    database_not_found_exception() | 
    http_endpoint_not_enabled_exception() | 
    secrets_error_exception() | 
    database_unavailable_exception() | 
    invalid_secret_exception() | 
    service_unavailable_error() | 
    forbidden_exception() | 
    transaction_not_found_exception() | 
    database_resuming_exception() | 
    statement_timeout_exception().

-type begin_transaction_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    database_error_exception() | 
    access_denied_exception() | 
    database_not_found_exception() | 
    http_endpoint_not_enabled_exception() | 
    secrets_error_exception() | 
    database_unavailable_exception() | 
    invalid_secret_exception() | 
    service_unavailable_error() | 
    forbidden_exception() | 
    transaction_not_found_exception() | 
    database_resuming_exception() | 
    statement_timeout_exception().

-type commit_transaction_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    database_error_exception() | 
    access_denied_exception() | 
    database_not_found_exception() | 
    http_endpoint_not_enabled_exception() | 
    secrets_error_exception() | 
    database_unavailable_exception() | 
    not_found_exception() | 
    invalid_secret_exception() | 
    service_unavailable_error() | 
    forbidden_exception() | 
    transaction_not_found_exception() | 
    statement_timeout_exception().

-type execute_sql_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    access_denied_exception() | 
    service_unavailable_error() | 
    forbidden_exception().

-type execute_statement_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    database_error_exception() | 
    access_denied_exception() | 
    database_not_found_exception() | 
    http_endpoint_not_enabled_exception() | 
    secrets_error_exception() | 
    database_unavailable_exception() | 
    invalid_secret_exception() | 
    service_unavailable_error() | 
    forbidden_exception() | 
    transaction_not_found_exception() | 
    unsupported_result_exception() | 
    database_resuming_exception() | 
    statement_timeout_exception().

-type rollback_transaction_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    database_error_exception() | 
    access_denied_exception() | 
    database_not_found_exception() | 
    http_endpoint_not_enabled_exception() | 
    secrets_error_exception() | 
    database_unavailable_exception() | 
    not_found_exception() | 
    invalid_secret_exception() | 
    service_unavailable_error() | 
    forbidden_exception() | 
    transaction_not_found_exception() | 
    statement_timeout_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Runs a batch SQL statement over an array of data.
%%
%% You can run bulk update and insert operations for multiple records using a
%% DML
%% statement with different parameter sets. Bulk operations can provide a
%% significant
%% performance improvement over individual insert and update operations.
%%
%% If a call isn't part of a transaction because it doesn't include
%% the `transactionID' parameter,
%% changes that result from the call are committed automatically.
%%
%% There isn't a fixed upper limit on the number of parameter sets.
%% However, the maximum size of the HTTP request
%% submitted through the Data API is 4 MiB. If the request exceeds this
%% limit, the Data API returns an error and doesn't
%% process the request. This 4-MiB limit includes the size of the HTTP
%% headers and the JSON notation in the request. Thus, the
%% number of parameter sets that you can include depends on a combination of
%% factors, such as the size of the SQL statement and
%% the size of each parameter set.
%%
%% The response size limit is 1 MiB. If the call returns more than 1 MiB of
%% response data, the call is terminated.
-spec batch_execute_statement(aws_client:aws_client(), batch_execute_statement_request()) ->
    {ok, batch_execute_statement_response(), tuple()} |
    {error, any()} |
    {error, batch_execute_statement_errors(), tuple()}.
batch_execute_statement(Client, Input) ->
    batch_execute_statement(Client, Input, []).

-spec batch_execute_statement(aws_client:aws_client(), batch_execute_statement_request(), proplists:proplist()) ->
    {ok, batch_execute_statement_response(), tuple()} |
    {error, any()} |
    {error, batch_execute_statement_errors(), tuple()}.
batch_execute_statement(Client, Input0, Options0) ->
    Method = post,
    Path = ["/BatchExecute"],
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

%% @doc Starts a SQL transaction.
%%
%% A transaction can run for a maximum of 24 hours. A transaction is
%% terminated and rolled back automatically after 24
%% hours.
%%
%% A transaction times out if no calls use its transaction ID in three
%% minutes. If a transaction times out before it's
%% committed, it's rolled back automatically.
%%
%% For Aurora MySQL, DDL statements inside a transaction cause an implicit
%% commit. We recommend that you run each MySQL DDL statement in a separate
%% `ExecuteStatement' call with `continueAfterTimeout' enabled.
-spec begin_transaction(aws_client:aws_client(), begin_transaction_request()) ->
    {ok, begin_transaction_response(), tuple()} |
    {error, any()} |
    {error, begin_transaction_errors(), tuple()}.
begin_transaction(Client, Input) ->
    begin_transaction(Client, Input, []).

-spec begin_transaction(aws_client:aws_client(), begin_transaction_request(), proplists:proplist()) ->
    {ok, begin_transaction_response(), tuple()} |
    {error, any()} |
    {error, begin_transaction_errors(), tuple()}.
begin_transaction(Client, Input0, Options0) ->
    Method = post,
    Path = ["/BeginTransaction"],
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

%% @doc Ends a SQL transaction started with the `BeginTransaction'
%% operation and
%% commits the changes.
-spec commit_transaction(aws_client:aws_client(), commit_transaction_request()) ->
    {ok, commit_transaction_response(), tuple()} |
    {error, any()} |
    {error, commit_transaction_errors(), tuple()}.
commit_transaction(Client, Input) ->
    commit_transaction(Client, Input, []).

-spec commit_transaction(aws_client:aws_client(), commit_transaction_request(), proplists:proplist()) ->
    {ok, commit_transaction_response(), tuple()} |
    {error, any()} |
    {error, commit_transaction_errors(), tuple()}.
commit_transaction(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CommitTransaction"],
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

%% @doc Runs one or more SQL statements.
%%
%% This operation isn't supported for Aurora Serverless v2 and
%% provisioned DB clusters.
%% For Aurora Serverless v1 DB clusters, the operation is deprecated.
%% Use the `BatchExecuteStatement' or `ExecuteStatement' operation.
-spec execute_sql(aws_client:aws_client(), execute_sql_request()) ->
    {ok, execute_sql_response(), tuple()} |
    {error, any()} |
    {error, execute_sql_errors(), tuple()}.
execute_sql(Client, Input) ->
    execute_sql(Client, Input, []).

-spec execute_sql(aws_client:aws_client(), execute_sql_request(), proplists:proplist()) ->
    {ok, execute_sql_response(), tuple()} |
    {error, any()} |
    {error, execute_sql_errors(), tuple()}.
execute_sql(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ExecuteSql"],
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

%% @doc Runs a SQL statement against a database.
%%
%% If a call isn't part of a transaction because it doesn't include
%% the
%% `transactionID' parameter, changes that result from the call are
%% committed automatically.
%%
%% If the binary response data from the database is more than 1 MB, the call
%% is terminated.
-spec execute_statement(aws_client:aws_client(), execute_statement_request()) ->
    {ok, execute_statement_response(), tuple()} |
    {error, any()} |
    {error, execute_statement_errors(), tuple()}.
execute_statement(Client, Input) ->
    execute_statement(Client, Input, []).

-spec execute_statement(aws_client:aws_client(), execute_statement_request(), proplists:proplist()) ->
    {ok, execute_statement_response(), tuple()} |
    {error, any()} |
    {error, execute_statement_errors(), tuple()}.
execute_statement(Client, Input0, Options0) ->
    Method = post,
    Path = ["/Execute"],
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

%% @doc Performs a rollback of a transaction.
%%
%% Rolling back a transaction cancels its changes.
-spec rollback_transaction(aws_client:aws_client(), rollback_transaction_request()) ->
    {ok, rollback_transaction_response(), tuple()} |
    {error, any()} |
    {error, rollback_transaction_errors(), tuple()}.
rollback_transaction(Client, Input) ->
    rollback_transaction(Client, Input, []).

-spec rollback_transaction(aws_client:aws_client(), rollback_transaction_request(), proplists:proplist()) ->
    {ok, rollback_transaction_response(), tuple()} |
    {error, any()} |
    {error, rollback_transaction_errors(), tuple()}.
rollback_transaction(Client, Input0, Options0) ->
    Method = post,
    Path = ["/RollbackTransaction"],
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
    Client1 = Client#{service => <<"rds-data">>},
    Host = build_host(<<"rds-data">>, Client1),
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
