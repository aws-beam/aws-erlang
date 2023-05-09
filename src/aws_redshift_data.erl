%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc You can use the Amazon Redshift Data API to run queries on Amazon
%% Redshift tables.
%%
%% You can run SQL statements, which are committed if the statement succeeds.
%%
%% For more information about the Amazon Redshift Data API and CLI usage
%% examples, see Using the Amazon Redshift Data API in the Amazon Redshift
%% Management Guide.
-module(aws_redshift_data).

-export([batch_execute_statement/2,
         batch_execute_statement/3,
         cancel_statement/2,
         cancel_statement/3,
         describe_statement/2,
         describe_statement/3,
         describe_table/2,
         describe_table/3,
         execute_statement/2,
         execute_statement/3,
         get_statement_result/2,
         get_statement_result/3,
         list_databases/2,
         list_databases/3,
         list_schemas/2,
         list_schemas/3,
         list_statements/2,
         list_statements/3,
         list_tables/2,
         list_tables/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Runs one or more SQL statements, which can be data manipulation
%% language (DML) or data definition language (DDL).
%%
%% Depending on the authorization method, use one of the following
%% combinations of request parameters:
%%
%% <ul> <li> Secrets Manager - when connecting to a cluster, provide the
%% `secret-arn' of a secret stored in Secrets Manager which has
%% `username' and `password'. The specified secret contains
%% credentials to connect to the `database' you specify. When you are
%% connecting to a cluster, you also supply the database name, If you provide
%% a cluster identifier (`dbClusterIdentifier'), it must match the
%% cluster identifier stored in the secret. When you are connecting to a
%% serverless workgroup, you also supply the database name.
%%
%% </li> <li> Temporary credentials - when connecting to your data warehouse,
%% choose one of the following options:
%%
%% <ul> <li> When connecting to a serverless workgroup, specify the workgroup
%% name and database name. The database user name is derived from the IAM
%% identity. For example, `arn:iam::123456789012:user:foo' has the
%% database user name `IAM:foo'. Also, permission to call the
%% `redshift-serverless:GetCredentials' operation is required.
%%
%% </li> <li> When connecting to a cluster as an IAM identity, specify the
%% cluster identifier and the database name. The database user name is
%% derived from the IAM identity. For example,
%% `arn:iam::123456789012:user:foo' has the database user name
%% `IAM:foo'. Also, permission to call the
%% `redshift:GetClusterCredentialsWithIAM' operation is required.
%%
%% </li> <li> When connecting to a cluster as a database user, specify the
%% cluster identifier, the database name, and the database user name. Also,
%% permission to call the `redshift:GetClusterCredentials' operation is
%% required.
%%
%% </li> </ul> </li> </ul> For more information about the Amazon Redshift
%% Data API and CLI usage examples, see Using the Amazon Redshift Data API in
%% the Amazon Redshift Management Guide.
batch_execute_statement(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_execute_statement(Client, Input, []).
batch_execute_statement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchExecuteStatement">>, Input, Options).

%% @doc Cancels a running query.
%%
%% To be canceled, a query must be running.
%%
%% For more information about the Amazon Redshift Data API and CLI usage
%% examples, see Using the Amazon Redshift Data API in the Amazon Redshift
%% Management Guide.
cancel_statement(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_statement(Client, Input, []).
cancel_statement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelStatement">>, Input, Options).

%% @doc Describes the details about a specific instance when a query was run
%% by the Amazon Redshift Data API.
%%
%% The information includes when the query started, when it finished, the
%% query status, the number of rows returned, and the SQL statement.
%%
%% For more information about the Amazon Redshift Data API and CLI usage
%% examples, see Using the Amazon Redshift Data API in the Amazon Redshift
%% Management Guide.
describe_statement(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_statement(Client, Input, []).
describe_statement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeStatement">>, Input, Options).

%% @doc Describes the detailed information about a table from metadata in the
%% cluster.
%%
%% The information includes its columns. A token is returned to page through
%% the column list. Depending on the authorization method, use one of the
%% following combinations of request parameters:
%%
%% <ul> <li> Secrets Manager - when connecting to a cluster, provide the
%% `secret-arn' of a secret stored in Secrets Manager which has
%% `username' and `password'. The specified secret contains
%% credentials to connect to the `database' you specify. When you are
%% connecting to a cluster, you also supply the database name, If you provide
%% a cluster identifier (`dbClusterIdentifier'), it must match the
%% cluster identifier stored in the secret. When you are connecting to a
%% serverless workgroup, you also supply the database name.
%%
%% </li> <li> Temporary credentials - when connecting to your data warehouse,
%% choose one of the following options:
%%
%% <ul> <li> When connecting to a serverless workgroup, specify the workgroup
%% name and database name. The database user name is derived from the IAM
%% identity. For example, `arn:iam::123456789012:user:foo' has the
%% database user name `IAM:foo'. Also, permission to call the
%% `redshift-serverless:GetCredentials' operation is required.
%%
%% </li> <li> When connecting to a cluster as an IAM identity, specify the
%% cluster identifier and the database name. The database user name is
%% derived from the IAM identity. For example,
%% `arn:iam::123456789012:user:foo' has the database user name
%% `IAM:foo'. Also, permission to call the
%% `redshift:GetClusterCredentialsWithIAM' operation is required.
%%
%% </li> <li> When connecting to a cluster as a database user, specify the
%% cluster identifier, the database name, and the database user name. Also,
%% permission to call the `redshift:GetClusterCredentials' operation is
%% required.
%%
%% </li> </ul> </li> </ul> For more information about the Amazon Redshift
%% Data API and CLI usage examples, see Using the Amazon Redshift Data API in
%% the Amazon Redshift Management Guide.
describe_table(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_table(Client, Input, []).
describe_table(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTable">>, Input, Options).

%% @doc Runs an SQL statement, which can be data manipulation language (DML)
%% or data definition language (DDL).
%%
%% This statement must be a single SQL statement. Depending on the
%% authorization method, use one of the following combinations of request
%% parameters:
%%
%% <ul> <li> Secrets Manager - when connecting to a cluster, provide the
%% `secret-arn' of a secret stored in Secrets Manager which has
%% `username' and `password'. The specified secret contains
%% credentials to connect to the `database' you specify. When you are
%% connecting to a cluster, you also supply the database name, If you provide
%% a cluster identifier (`dbClusterIdentifier'), it must match the
%% cluster identifier stored in the secret. When you are connecting to a
%% serverless workgroup, you also supply the database name.
%%
%% </li> <li> Temporary credentials - when connecting to your data warehouse,
%% choose one of the following options:
%%
%% <ul> <li> When connecting to a serverless workgroup, specify the workgroup
%% name and database name. The database user name is derived from the IAM
%% identity. For example, `arn:iam::123456789012:user:foo' has the
%% database user name `IAM:foo'. Also, permission to call the
%% `redshift-serverless:GetCredentials' operation is required.
%%
%% </li> <li> When connecting to a cluster as an IAM identity, specify the
%% cluster identifier and the database name. The database user name is
%% derived from the IAM identity. For example,
%% `arn:iam::123456789012:user:foo' has the database user name
%% `IAM:foo'. Also, permission to call the
%% `redshift:GetClusterCredentialsWithIAM' operation is required.
%%
%% </li> <li> When connecting to a cluster as a database user, specify the
%% cluster identifier, the database name, and the database user name. Also,
%% permission to call the `redshift:GetClusterCredentials' operation is
%% required.
%%
%% </li> </ul> </li> </ul> For more information about the Amazon Redshift
%% Data API and CLI usage examples, see Using the Amazon Redshift Data API in
%% the Amazon Redshift Management Guide.
execute_statement(Client, Input)
  when is_map(Client), is_map(Input) ->
    execute_statement(Client, Input, []).
execute_statement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ExecuteStatement">>, Input, Options).

%% @doc Fetches the temporarily cached result of an SQL statement.
%%
%% A token is returned to page through the statement results.
%%
%% For more information about the Amazon Redshift Data API and CLI usage
%% examples, see Using the Amazon Redshift Data API in the Amazon Redshift
%% Management Guide.
get_statement_result(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_statement_result(Client, Input, []).
get_statement_result(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetStatementResult">>, Input, Options).

%% @doc List the databases in a cluster.
%%
%% A token is returned to page through the database list. Depending on the
%% authorization method, use one of the following combinations of request
%% parameters:
%%
%% <ul> <li> Secrets Manager - when connecting to a cluster, provide the
%% `secret-arn' of a secret stored in Secrets Manager which has
%% `username' and `password'. The specified secret contains
%% credentials to connect to the `database' you specify. When you are
%% connecting to a cluster, you also supply the database name, If you provide
%% a cluster identifier (`dbClusterIdentifier'), it must match the
%% cluster identifier stored in the secret. When you are connecting to a
%% serverless workgroup, you also supply the database name.
%%
%% </li> <li> Temporary credentials - when connecting to your data warehouse,
%% choose one of the following options:
%%
%% <ul> <li> When connecting to a serverless workgroup, specify the workgroup
%% name and database name. The database user name is derived from the IAM
%% identity. For example, `arn:iam::123456789012:user:foo' has the
%% database user name `IAM:foo'. Also, permission to call the
%% `redshift-serverless:GetCredentials' operation is required.
%%
%% </li> <li> When connecting to a cluster as an IAM identity, specify the
%% cluster identifier and the database name. The database user name is
%% derived from the IAM identity. For example,
%% `arn:iam::123456789012:user:foo' has the database user name
%% `IAM:foo'. Also, permission to call the
%% `redshift:GetClusterCredentialsWithIAM' operation is required.
%%
%% </li> <li> When connecting to a cluster as a database user, specify the
%% cluster identifier, the database name, and the database user name. Also,
%% permission to call the `redshift:GetClusterCredentials' operation is
%% required.
%%
%% </li> </ul> </li> </ul> For more information about the Amazon Redshift
%% Data API and CLI usage examples, see Using the Amazon Redshift Data API in
%% the Amazon Redshift Management Guide.
list_databases(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_databases(Client, Input, []).
list_databases(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDatabases">>, Input, Options).

%% @doc Lists the schemas in a database.
%%
%% A token is returned to page through the schema list. Depending on the
%% authorization method, use one of the following combinations of request
%% parameters:
%%
%% <ul> <li> Secrets Manager - when connecting to a cluster, provide the
%% `secret-arn' of a secret stored in Secrets Manager which has
%% `username' and `password'. The specified secret contains
%% credentials to connect to the `database' you specify. When you are
%% connecting to a cluster, you also supply the database name, If you provide
%% a cluster identifier (`dbClusterIdentifier'), it must match the
%% cluster identifier stored in the secret. When you are connecting to a
%% serverless workgroup, you also supply the database name.
%%
%% </li> <li> Temporary credentials - when connecting to your data warehouse,
%% choose one of the following options:
%%
%% <ul> <li> When connecting to a serverless workgroup, specify the workgroup
%% name and database name. The database user name is derived from the IAM
%% identity. For example, `arn:iam::123456789012:user:foo' has the
%% database user name `IAM:foo'. Also, permission to call the
%% `redshift-serverless:GetCredentials' operation is required.
%%
%% </li> <li> When connecting to a cluster as an IAM identity, specify the
%% cluster identifier and the database name. The database user name is
%% derived from the IAM identity. For example,
%% `arn:iam::123456789012:user:foo' has the database user name
%% `IAM:foo'. Also, permission to call the
%% `redshift:GetClusterCredentialsWithIAM' operation is required.
%%
%% </li> <li> When connecting to a cluster as a database user, specify the
%% cluster identifier, the database name, and the database user name. Also,
%% permission to call the `redshift:GetClusterCredentials' operation is
%% required.
%%
%% </li> </ul> </li> </ul> For more information about the Amazon Redshift
%% Data API and CLI usage examples, see Using the Amazon Redshift Data API in
%% the Amazon Redshift Management Guide.
list_schemas(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_schemas(Client, Input, []).
list_schemas(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSchemas">>, Input, Options).

%% @doc List of SQL statements.
%%
%% By default, only finished statements are shown. A token is returned to
%% page through the statement list.
%%
%% For more information about the Amazon Redshift Data API and CLI usage
%% examples, see Using the Amazon Redshift Data API in the Amazon Redshift
%% Management Guide.
list_statements(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_statements(Client, Input, []).
list_statements(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListStatements">>, Input, Options).

%% @doc List the tables in a database.
%%
%% If neither `SchemaPattern' nor `TablePattern' are specified, then
%% all tables in the database are returned. A token is returned to page
%% through the table list. Depending on the authorization method, use one of
%% the following combinations of request parameters:
%%
%% <ul> <li> Secrets Manager - when connecting to a cluster, provide the
%% `secret-arn' of a secret stored in Secrets Manager which has
%% `username' and `password'. The specified secret contains
%% credentials to connect to the `database' you specify. When you are
%% connecting to a cluster, you also supply the database name, If you provide
%% a cluster identifier (`dbClusterIdentifier'), it must match the
%% cluster identifier stored in the secret. When you are connecting to a
%% serverless workgroup, you also supply the database name.
%%
%% </li> <li> Temporary credentials - when connecting to your data warehouse,
%% choose one of the following options:
%%
%% <ul> <li> When connecting to a serverless workgroup, specify the workgroup
%% name and database name. The database user name is derived from the IAM
%% identity. For example, `arn:iam::123456789012:user:foo' has the
%% database user name `IAM:foo'. Also, permission to call the
%% `redshift-serverless:GetCredentials' operation is required.
%%
%% </li> <li> When connecting to a cluster as an IAM identity, specify the
%% cluster identifier and the database name. The database user name is
%% derived from the IAM identity. For example,
%% `arn:iam::123456789012:user:foo' has the database user name
%% `IAM:foo'. Also, permission to call the
%% `redshift:GetClusterCredentialsWithIAM' operation is required.
%%
%% </li> <li> When connecting to a cluster as a database user, specify the
%% cluster identifier, the database name, and the database user name. Also,
%% permission to call the `redshift:GetClusterCredentials' operation is
%% required.
%%
%% </li> </ul> </li> </ul> For more information about the Amazon Redshift
%% Data API and CLI usage examples, see Using the Amazon Redshift Data API in
%% the Amazon Redshift Management Guide.
list_tables(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tables(Client, Input, []).
list_tables(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTables">>, Input, Options).

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
    Client1 = Client#{service => <<"redshift-data">>},
    Host = build_host(<<"redshift-data">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"RedshiftData.", Action/binary>>}
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
