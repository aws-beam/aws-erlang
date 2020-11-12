%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon RDS Data Service
%%
%% Amazon RDS provides an HTTP endpoint to run SQL statements on an Amazon
%% Aurora Serverless DB cluster.
%%
%% To run these statements, you work with the Data Service API.
%%
%% For more information about the Data Service API, see Using the Data API
%% for Aurora Serverless in the Amazon Aurora User Guide.
%%
%% If you have questions or comments related to the Data API, send email to
%% Rds-data-api-feedback@amazon.com.
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

%%====================================================================
%% API
%%====================================================================

%% @doc Runs a batch SQL statement over an array of data.
%%
%% You can run bulk update and insert operations for multiple records using a
%% DML statement with different parameter sets. Bulk operations can provide a
%% significant performance improvement over individual insert and update
%% operations.
%%
%% If a call isn't part of a transaction because it doesn't include the
%% `transactionID` parameter, changes that result from the call are committed
%% automatically.
batch_execute_statement(Client, Input) ->
    batch_execute_statement(Client, Input, []).
batch_execute_statement(Client, Input0, Options) ->
    Method = post,
    Path = ["/BatchExecute"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Starts a SQL transaction.
%%
%% <pre>` <important> <p>A transaction can run for a maximum of 24 hours. A
%% transaction is terminated and rolled back automatically after 24
%% hours.</p> <p>A transaction times out if no calls use its transaction ID
%% in three minutes. If a transaction times out before it's committed, it's
%% rolled back automatically.</p> <p>DDL statements inside a transaction
%% cause an implicit commit. We recommend that you run each DDL statement in
%% a separate <code>ExecuteStatement</code> call with
%% <code>continueAfterTimeout</code> enabled.</p> </important> `</pre>
begin_transaction(Client, Input) ->
    begin_transaction(Client, Input, []).
begin_transaction(Client, Input0, Options) ->
    Method = post,
    Path = ["/BeginTransaction"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Ends a SQL transaction started with the `BeginTransaction` operation
%% and commits the changes.
commit_transaction(Client, Input) ->
    commit_transaction(Client, Input, []).
commit_transaction(Client, Input0, Options) ->
    Method = post,
    Path = ["/CommitTransaction"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Runs one or more SQL statements.
%%
%% This operation is deprecated. Use the `BatchExecuteStatement` or
%% `ExecuteStatement` operation.
execute_sql(Client, Input) ->
    execute_sql(Client, Input, []).
execute_sql(Client, Input0, Options) ->
    Method = post,
    Path = ["/ExecuteSql"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Runs a SQL statement against a database.
%%
%% If a call isn't part of a transaction because it doesn't include the
%% `transactionID` parameter, changes that result from the call are committed
%% automatically.
%%
%% The response size limit is 1 MB. If the call returns more than 1 MB of
%% response data, the call is terminated.
execute_statement(Client, Input) ->
    execute_statement(Client, Input, []).
execute_statement(Client, Input0, Options) ->
    Method = post,
    Path = ["/Execute"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Performs a rollback of a transaction.
%%
%% Rolling back a transaction cancels its changes.
rollback_transaction(Client, Input) ->
    rollback_transaction(Client, Input, []).
rollback_transaction(Client, Input0, Options) ->
    Method = post,
    Path = ["/RollbackTransaction"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

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
    Client1 = Client#{service => <<"rds-data">>},
    Host = build_host(<<"rds-data">>, Client1),
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
