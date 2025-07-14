%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc You can use the Amazon Redshift Data API to run queries on Amazon
%% Redshift tables.
%%
%% You
%% can run SQL statements, which are committed if the statement succeeds.
%%
%% For more information about the Amazon Redshift Data API and CLI usage
%% examples, see
%% Using the Amazon Redshift Data API:
%% https://docs.aws.amazon.com/redshift/latest/mgmt/data-api.html in the
%% Amazon Redshift Management Guide.
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
         get_statement_result_v2/2,
         get_statement_result_v2/3,
         list_databases/2,
         list_databases/3,
         list_schemas/2,
         list_schemas/3,
         list_statements/2,
         list_statements/3,
         list_tables/2,
         list_tables/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% cancel_statement_response() :: #{
%%   <<"Status">> => [boolean()]
%% }
-type cancel_statement_response() :: #{binary() => any()}.

%% Example:
%% table_member() :: #{
%%   <<"name">> => string(),
%%   <<"schema">> => string(),
%%   <<"type">> => string()
%% }
-type table_member() :: #{binary() => any()}.

%% Example:
%% batch_execute_statement_output() :: #{
%%   <<"ClusterIdentifier">> => string(),
%%   <<"CreatedAt">> => [non_neg_integer()],
%%   <<"Database">> => string(),
%%   <<"DbGroups">> => list(string()),
%%   <<"DbUser">> => string(),
%%   <<"Id">> => string(),
%%   <<"SecretArn">> => string(),
%%   <<"SessionId">> => string(),
%%   <<"WorkgroupName">> => string()
%% }
-type batch_execute_statement_output() :: #{binary() => any()}.

%% Example:
%% statement_data() :: #{
%%   <<"CreatedAt">> => [non_neg_integer()],
%%   <<"Id">> => string(),
%%   <<"IsBatchStatement">> => [boolean()],
%%   <<"QueryParameters">> => list(sql_parameter()),
%%   <<"QueryString">> => string(),
%%   <<"QueryStrings">> => list(string()),
%%   <<"ResultFormat">> => string(),
%%   <<"SecretArn">> => string(),
%%   <<"SessionId">> => string(),
%%   <<"StatementName">> => string(),
%%   <<"Status">> => string(),
%%   <<"UpdatedAt">> => [non_neg_integer()]
%% }
-type statement_data() :: #{binary() => any()}.

%% Example:
%% column_metadata() :: #{
%%   <<"columnDefault">> => string(),
%%   <<"isCaseSensitive">> => boolean(),
%%   <<"isCurrency">> => boolean(),
%%   <<"isSigned">> => boolean(),
%%   <<"label">> => string(),
%%   <<"length">> => integer(),
%%   <<"name">> => string(),
%%   <<"nullable">> => integer(),
%%   <<"precision">> => integer(),
%%   <<"scale">> => integer(),
%%   <<"schemaName">> => string(),
%%   <<"tableName">> => string(),
%%   <<"typeName">> => string()
%% }
-type column_metadata() :: #{binary() => any()}.

%% Example:
%% sql_parameter() :: #{
%%   <<"name">> => string(),
%%   <<"value">> => string()
%% }
-type sql_parameter() :: #{binary() => any()}.

%% Example:
%% cancel_statement_request() :: #{
%%   <<"Id">> := string()
%% }
-type cancel_statement_request() :: #{binary() => any()}.

%% Example:
%% execute_statement_output() :: #{
%%   <<"ClusterIdentifier">> => string(),
%%   <<"CreatedAt">> => [non_neg_integer()],
%%   <<"Database">> => string(),
%%   <<"DbGroups">> => list(string()),
%%   <<"DbUser">> => string(),
%%   <<"Id">> => string(),
%%   <<"SecretArn">> => string(),
%%   <<"SessionId">> => string(),
%%   <<"WorkgroupName">> => string()
%% }
-type execute_statement_output() :: #{binary() => any()}.

%% Example:
%% describe_table_response() :: #{
%%   <<"ColumnList">> => list(column_metadata()),
%%   <<"NextToken">> => string(),
%%   <<"TableName">> => string()
%% }
-type describe_table_response() :: #{binary() => any()}.

%% Example:
%% active_statements_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type active_statements_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% execute_statement_input() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"ClusterIdentifier">> => string(),
%%   <<"Database">> => string(),
%%   <<"DbUser">> => string(),
%%   <<"Parameters">> => list(sql_parameter()),
%%   <<"ResultFormat">> => string(),
%%   <<"SecretArn">> => string(),
%%   <<"SessionId">> => string(),
%%   <<"SessionKeepAliveSeconds">> => integer(),
%%   <<"Sql">> := string(),
%%   <<"StatementName">> => string(),
%%   <<"WithEvent">> => [boolean()],
%%   <<"WorkgroupName">> => string()
%% }
-type execute_statement_input() :: #{binary() => any()}.

%% Example:
%% list_schemas_request() :: #{
%%   <<"ClusterIdentifier">> => string(),
%%   <<"ConnectedDatabase">> => string(),
%%   <<"Database">> := string(),
%%   <<"DbUser">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SchemaPattern">> => string(),
%%   <<"SecretArn">> => string(),
%%   <<"WorkgroupName">> => string()
%% }
-type list_schemas_request() :: #{binary() => any()}.

%% Example:
%% batch_execute_statement_input() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"ClusterIdentifier">> => string(),
%%   <<"Database">> => string(),
%%   <<"DbUser">> => string(),
%%   <<"ResultFormat">> => string(),
%%   <<"SecretArn">> => string(),
%%   <<"SessionId">> => string(),
%%   <<"SessionKeepAliveSeconds">> => integer(),
%%   <<"Sqls">> := list(string()),
%%   <<"StatementName">> => string(),
%%   <<"WithEvent">> => [boolean()],
%%   <<"WorkgroupName">> => string()
%% }
-type batch_execute_statement_input() :: #{binary() => any()}.

%% Example:
%% sub_statement_data() :: #{
%%   <<"CreatedAt">> => [non_neg_integer()],
%%   <<"Duration">> => float(),
%%   <<"Error">> => string(),
%%   <<"HasResultSet">> => [boolean()],
%%   <<"Id">> => string(),
%%   <<"QueryString">> => string(),
%%   <<"RedshiftQueryId">> => float(),
%%   <<"ResultRows">> => float(),
%%   <<"ResultSize">> => float(),
%%   <<"Status">> => string(),
%%   <<"UpdatedAt">> => [non_neg_integer()]
%% }
-type sub_statement_data() :: #{binary() => any()}.

%% Example:
%% describe_statement_request() :: #{
%%   <<"Id">> := string()
%% }
-type describe_statement_request() :: #{binary() => any()}.

%% Example:
%% list_statements_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Statements">> => list(statement_data())
%% }
-type list_statements_response() :: #{binary() => any()}.

%% Example:
%% list_databases_request() :: #{
%%   <<"ClusterIdentifier">> => string(),
%%   <<"Database">> := string(),
%%   <<"DbUser">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SecretArn">> => string(),
%%   <<"WorkgroupName">> => string()
%% }
-type list_databases_request() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"ResourceId">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% list_tables_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Tables">> => list(table_member())
%% }
-type list_tables_response() :: #{binary() => any()}.

%% Example:
%% get_statement_result_response() :: #{
%%   <<"ColumnMetadata">> => list(column_metadata()),
%%   <<"NextToken">> => string(),
%%   <<"Records">> => list(list(list())()),
%%   <<"TotalNumRows">> => float()
%% }
-type get_statement_result_response() :: #{binary() => any()}.

%% Example:
%% batch_execute_statement_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"StatementId">> => string()
%% }
-type batch_execute_statement_exception() :: #{binary() => any()}.

%% Example:
%% describe_table_request() :: #{
%%   <<"ClusterIdentifier">> => string(),
%%   <<"ConnectedDatabase">> => string(),
%%   <<"Database">> := string(),
%%   <<"DbUser">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Schema">> => string(),
%%   <<"SecretArn">> => string(),
%%   <<"Table">> => string(),
%%   <<"WorkgroupName">> => string()
%% }
-type describe_table_request() :: #{binary() => any()}.

%% Example:
%% execute_statement_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"StatementId">> => string()
%% }
-type execute_statement_exception() :: #{binary() => any()}.

%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% list_statements_request() :: #{
%%   <<"ClusterIdentifier">> => string(),
%%   <<"Database">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"RoleLevel">> => [boolean()],
%%   <<"StatementName">> => string(),
%%   <<"Status">> => string(),
%%   <<"WorkgroupName">> => string()
%% }
-type list_statements_request() :: #{binary() => any()}.

%% Example:
%% validation_exception() :: #{
%%   <<"Message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% query_timeout_exception() :: #{
%%   <<"Message">> => string()
%% }
-type query_timeout_exception() :: #{binary() => any()}.

%% Example:
%% active_sessions_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type active_sessions_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% get_statement_result_request() :: #{
%%   <<"Id">> := string(),
%%   <<"NextToken">> => string()
%% }
-type get_statement_result_request() :: #{binary() => any()}.

%% Example:
%% get_statement_result_v2_request() :: #{
%%   <<"Id">> := string(),
%%   <<"NextToken">> => string()
%% }
-type get_statement_result_v2_request() :: #{binary() => any()}.

%% Example:
%% describe_statement_response() :: #{
%%   <<"ClusterIdentifier">> => string(),
%%   <<"CreatedAt">> => [non_neg_integer()],
%%   <<"Database">> => string(),
%%   <<"DbUser">> => string(),
%%   <<"Duration">> => float(),
%%   <<"Error">> => string(),
%%   <<"HasResultSet">> => [boolean()],
%%   <<"Id">> => string(),
%%   <<"QueryParameters">> => list(sql_parameter()),
%%   <<"QueryString">> => string(),
%%   <<"RedshiftPid">> => float(),
%%   <<"RedshiftQueryId">> => float(),
%%   <<"ResultFormat">> => string(),
%%   <<"ResultRows">> => float(),
%%   <<"ResultSize">> => float(),
%%   <<"SecretArn">> => string(),
%%   <<"SessionId">> => string(),
%%   <<"Status">> => string(),
%%   <<"SubStatements">> => list(sub_statement_data()),
%%   <<"UpdatedAt">> => [non_neg_integer()],
%%   <<"WorkgroupName">> => string()
%% }
-type describe_statement_response() :: #{binary() => any()}.

%% Example:
%% list_schemas_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Schemas">> => list(string())
%% }
-type list_schemas_response() :: #{binary() => any()}.

%% Example:
%% list_databases_response() :: #{
%%   <<"Databases">> => list(string()),
%%   <<"NextToken">> => string()
%% }
-type list_databases_response() :: #{binary() => any()}.

%% Example:
%% database_connection_exception() :: #{
%%   <<"Message">> => string()
%% }
-type database_connection_exception() :: #{binary() => any()}.

%% Example:
%% get_statement_result_v2_response() :: #{
%%   <<"ColumnMetadata">> => list(column_metadata()),
%%   <<"NextToken">> => string(),
%%   <<"Records">> => list(list()),
%%   <<"ResultFormat">> => string(),
%%   <<"TotalNumRows">> => float()
%% }
-type get_statement_result_v2_response() :: #{binary() => any()}.

%% Example:
%% list_tables_request() :: #{
%%   <<"ClusterIdentifier">> => string(),
%%   <<"ConnectedDatabase">> => string(),
%%   <<"Database">> := string(),
%%   <<"DbUser">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SchemaPattern">> => string(),
%%   <<"SecretArn">> => string(),
%%   <<"TablePattern">> => string(),
%%   <<"WorkgroupName">> => string()
%% }
-type list_tables_request() :: #{binary() => any()}.

-type batch_execute_statement_errors() ::
    active_sessions_exceeded_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    batch_execute_statement_exception() | 
    active_statements_exceeded_exception().

-type cancel_statement_errors() ::
    database_connection_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_statement_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_table_errors() ::
    database_connection_exception() | 
    query_timeout_exception() | 
    validation_exception() | 
    internal_server_exception().

-type execute_statement_errors() ::
    active_sessions_exceeded_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    execute_statement_exception() | 
    active_statements_exceeded_exception().

-type get_statement_result_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_statement_result_v2_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_databases_errors() ::
    database_connection_exception() | 
    query_timeout_exception() | 
    validation_exception() | 
    internal_server_exception().

-type list_schemas_errors() ::
    database_connection_exception() | 
    query_timeout_exception() | 
    validation_exception() | 
    internal_server_exception().

-type list_statements_errors() ::
    validation_exception() | 
    internal_server_exception().

-type list_tables_errors() ::
    database_connection_exception() | 
    query_timeout_exception() | 
    validation_exception() | 
    internal_server_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Runs one or more SQL statements, which can be data manipulation
%% language (DML) or data definition
%% language (DDL).
%%
%% Depending on the authorization
%% method, use one of the following combinations of request parameters:
%%
%% Secrets Manager - when connecting to a cluster, provide the
%% `secret-arn' of a secret
%% stored in Secrets Manager which has `username' and `password'.
%% The specified secret contains credentials
%% to connect to the `database' you specify.
%% When you are connecting to a cluster, you also supply the database name,
%% If you provide a cluster identifier (`dbClusterIdentifier'), it must
%% match the cluster identifier stored in the secret.
%% When you are connecting to a serverless workgroup, you also supply the
%% database name.
%%
%% Temporary credentials - when connecting to your data warehouse, choose one
%% of the following options:
%%
%% When connecting to a serverless workgroup, specify the workgroup name and
%% database name.
%% The database user name is derived from the IAM identity. For example,
%% `arn:iam::123456789012:user:foo' has the database user name
%% `IAM:foo'.
%% Also, permission to call the `redshift-serverless:GetCredentials'
%% operation is required.
%%
%% When connecting to a cluster as an IAM identity, specify the cluster
%% identifier and the database name.
%% The database user name is derived from the IAM identity. For example,
%% `arn:iam::123456789012:user:foo' has the database user name
%% `IAM:foo'.
%% Also, permission to call the `redshift:GetClusterCredentialsWithIAM'
%% operation is required.
%%
%% When connecting to a cluster as a database user, specify the cluster
%% identifier, the database name, and the database user name.
%% Also, permission to call the `redshift:GetClusterCredentials'
%% operation is required.
%%
%% For more information about the Amazon Redshift Data API and CLI usage
%% examples, see
%% Using the Amazon Redshift Data API:
%% https://docs.aws.amazon.com/redshift/latest/mgmt/data-api.html in the
%% Amazon Redshift Management Guide.
-spec batch_execute_statement(aws_client:aws_client(), batch_execute_statement_input()) ->
    {ok, batch_execute_statement_output(), tuple()} |
    {error, any()} |
    {error, batch_execute_statement_errors(), tuple()}.
batch_execute_statement(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_execute_statement(Client, Input, []).

-spec batch_execute_statement(aws_client:aws_client(), batch_execute_statement_input(), proplists:proplist()) ->
    {ok, batch_execute_statement_output(), tuple()} |
    {error, any()} |
    {error, batch_execute_statement_errors(), tuple()}.
batch_execute_statement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchExecuteStatement">>, Input, Options).

%% @doc Cancels a running query.
%%
%% To be canceled, a query must be running.
%%
%% For more information about the Amazon Redshift Data API and CLI usage
%% examples, see
%% Using the Amazon Redshift Data API:
%% https://docs.aws.amazon.com/redshift/latest/mgmt/data-api.html in the
%% Amazon Redshift Management Guide.
-spec cancel_statement(aws_client:aws_client(), cancel_statement_request()) ->
    {ok, cancel_statement_response(), tuple()} |
    {error, any()} |
    {error, cancel_statement_errors(), tuple()}.
cancel_statement(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_statement(Client, Input, []).

-spec cancel_statement(aws_client:aws_client(), cancel_statement_request(), proplists:proplist()) ->
    {ok, cancel_statement_response(), tuple()} |
    {error, any()} |
    {error, cancel_statement_errors(), tuple()}.
cancel_statement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelStatement">>, Input, Options).

%% @doc Describes the details about a specific instance when a query was run
%% by the Amazon Redshift Data API.
%%
%% The information
%% includes when the query started, when it finished, the query status, the
%% number of rows returned, and the SQL
%% statement.
%%
%% For more information about the Amazon Redshift Data API and CLI usage
%% examples, see
%% Using the Amazon Redshift Data API:
%% https://docs.aws.amazon.com/redshift/latest/mgmt/data-api.html in the
%% Amazon Redshift Management Guide.
-spec describe_statement(aws_client:aws_client(), describe_statement_request()) ->
    {ok, describe_statement_response(), tuple()} |
    {error, any()} |
    {error, describe_statement_errors(), tuple()}.
describe_statement(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_statement(Client, Input, []).

-spec describe_statement(aws_client:aws_client(), describe_statement_request(), proplists:proplist()) ->
    {ok, describe_statement_response(), tuple()} |
    {error, any()} |
    {error, describe_statement_errors(), tuple()}.
describe_statement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeStatement">>, Input, Options).

%% @doc Describes the detailed information about a table from metadata in the
%% cluster.
%%
%% The
%% information includes its columns.
%% A token is returned to page through the column list.
%% Depending on the authorization method, use one of the
%% following combinations of request parameters:
%%
%% Secrets Manager - when connecting to a cluster, provide the
%% `secret-arn' of a secret
%% stored in Secrets Manager which has `username' and `password'.
%% The specified secret contains credentials
%% to connect to the `database' you specify.
%% When you are connecting to a cluster, you also supply the database name,
%% If you provide a cluster identifier (`dbClusterIdentifier'), it must
%% match the cluster identifier stored in the secret.
%% When you are connecting to a serverless workgroup, you also supply the
%% database name.
%%
%% Temporary credentials - when connecting to your data warehouse, choose one
%% of the following options:
%%
%% When connecting to a serverless workgroup, specify the workgroup name and
%% database name.
%% The database user name is derived from the IAM identity. For example,
%% `arn:iam::123456789012:user:foo' has the database user name
%% `IAM:foo'.
%% Also, permission to call the `redshift-serverless:GetCredentials'
%% operation is required.
%%
%% When connecting to a cluster as an IAM identity, specify the cluster
%% identifier and the database name.
%% The database user name is derived from the IAM identity. For example,
%% `arn:iam::123456789012:user:foo' has the database user name
%% `IAM:foo'.
%% Also, permission to call the `redshift:GetClusterCredentialsWithIAM'
%% operation is required.
%%
%% When connecting to a cluster as a database user, specify the cluster
%% identifier, the database name, and the database user name.
%% Also, permission to call the `redshift:GetClusterCredentials'
%% operation is required.
%%
%% For more information about the Amazon Redshift Data API and CLI usage
%% examples, see
%% Using the Amazon Redshift Data API:
%% https://docs.aws.amazon.com/redshift/latest/mgmt/data-api.html in the
%% Amazon Redshift Management Guide.
-spec describe_table(aws_client:aws_client(), describe_table_request()) ->
    {ok, describe_table_response(), tuple()} |
    {error, any()} |
    {error, describe_table_errors(), tuple()}.
describe_table(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_table(Client, Input, []).

-spec describe_table(aws_client:aws_client(), describe_table_request(), proplists:proplist()) ->
    {ok, describe_table_response(), tuple()} |
    {error, any()} |
    {error, describe_table_errors(), tuple()}.
describe_table(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTable">>, Input, Options).

%% @doc Runs an SQL statement, which can be data manipulation language (DML)
%% or data definition
%% language (DDL).
%%
%% This statement must be a single SQL statement.
%% Depending on the authorization
%% method, use one of the following combinations of request parameters:
%%
%% Secrets Manager - when connecting to a cluster, provide the
%% `secret-arn' of a secret
%% stored in Secrets Manager which has `username' and `password'.
%% The specified secret contains credentials
%% to connect to the `database' you specify.
%% When you are connecting to a cluster, you also supply the database name,
%% If you provide a cluster identifier (`dbClusterIdentifier'), it must
%% match the cluster identifier stored in the secret.
%% When you are connecting to a serverless workgroup, you also supply the
%% database name.
%%
%% Temporary credentials - when connecting to your data warehouse, choose one
%% of the following options:
%%
%% When connecting to a serverless workgroup, specify the workgroup name and
%% database name.
%% The database user name is derived from the IAM identity. For example,
%% `arn:iam::123456789012:user:foo' has the database user name
%% `IAM:foo'.
%% Also, permission to call the `redshift-serverless:GetCredentials'
%% operation is required.
%%
%% When connecting to a cluster as an IAM identity, specify the cluster
%% identifier and the database name.
%% The database user name is derived from the IAM identity. For example,
%% `arn:iam::123456789012:user:foo' has the database user name
%% `IAM:foo'.
%% Also, permission to call the `redshift:GetClusterCredentialsWithIAM'
%% operation is required.
%%
%% When connecting to a cluster as a database user, specify the cluster
%% identifier, the database name, and the database user name.
%% Also, permission to call the `redshift:GetClusterCredentials'
%% operation is required.
%%
%% For more information about the Amazon Redshift Data API and CLI usage
%% examples, see
%% Using the Amazon Redshift Data API:
%% https://docs.aws.amazon.com/redshift/latest/mgmt/data-api.html in the
%% Amazon Redshift Management Guide.
-spec execute_statement(aws_client:aws_client(), execute_statement_input()) ->
    {ok, execute_statement_output(), tuple()} |
    {error, any()} |
    {error, execute_statement_errors(), tuple()}.
execute_statement(Client, Input)
  when is_map(Client), is_map(Input) ->
    execute_statement(Client, Input, []).

-spec execute_statement(aws_client:aws_client(), execute_statement_input(), proplists:proplist()) ->
    {ok, execute_statement_output(), tuple()} |
    {error, any()} |
    {error, execute_statement_errors(), tuple()}.
execute_statement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ExecuteStatement">>, Input, Options).

%% @doc Fetches the temporarily cached result of an SQL statement in JSON
%% format.
%%
%% The `ExecuteStatement' or `BatchExecuteStatement' operation that
%% ran the SQL statement must have specified `ResultFormat' as `JSON'
%% , or let the format default to JSON.
%% A token is returned to page through the statement results.
%%
%% For more information about the Amazon Redshift Data API and CLI usage
%% examples, see
%% Using the Amazon Redshift Data API:
%% https://docs.aws.amazon.com/redshift/latest/mgmt/data-api.html in the
%% Amazon Redshift Management Guide.
-spec get_statement_result(aws_client:aws_client(), get_statement_result_request()) ->
    {ok, get_statement_result_response(), tuple()} |
    {error, any()} |
    {error, get_statement_result_errors(), tuple()}.
get_statement_result(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_statement_result(Client, Input, []).

-spec get_statement_result(aws_client:aws_client(), get_statement_result_request(), proplists:proplist()) ->
    {ok, get_statement_result_response(), tuple()} |
    {error, any()} |
    {error, get_statement_result_errors(), tuple()}.
get_statement_result(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetStatementResult">>, Input, Options).

%% @doc Fetches the temporarily cached result of an SQL statement in CSV
%% format.
%%
%% The `ExecuteStatement' or `BatchExecuteStatement' operation that
%% ran the SQL statement must have specified `ResultFormat' as `CSV'.
%% A token is returned to page through the statement results.
%%
%% For more information about the Amazon Redshift Data API and CLI usage
%% examples, see
%% Using the Amazon Redshift Data API:
%% https://docs.aws.amazon.com/redshift/latest/mgmt/data-api.html in the
%% Amazon Redshift Management Guide.
-spec get_statement_result_v2(aws_client:aws_client(), get_statement_result_v2_request()) ->
    {ok, get_statement_result_v2_response(), tuple()} |
    {error, any()} |
    {error, get_statement_result_v2_errors(), tuple()}.
get_statement_result_v2(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_statement_result_v2(Client, Input, []).

-spec get_statement_result_v2(aws_client:aws_client(), get_statement_result_v2_request(), proplists:proplist()) ->
    {ok, get_statement_result_v2_response(), tuple()} |
    {error, any()} |
    {error, get_statement_result_v2_errors(), tuple()}.
get_statement_result_v2(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetStatementResultV2">>, Input, Options).

%% @doc List the databases in a cluster.
%%
%% A token is returned to page through the database list.
%% Depending on the authorization method, use one of the
%% following combinations of request parameters:
%%
%% Secrets Manager - when connecting to a cluster, provide the
%% `secret-arn' of a secret
%% stored in Secrets Manager which has `username' and `password'.
%% The specified secret contains credentials
%% to connect to the `database' you specify.
%% When you are connecting to a cluster, you also supply the database name,
%% If you provide a cluster identifier (`dbClusterIdentifier'), it must
%% match the cluster identifier stored in the secret.
%% When you are connecting to a serverless workgroup, you also supply the
%% database name.
%%
%% Temporary credentials - when connecting to your data warehouse, choose one
%% of the following options:
%%
%% When connecting to a serverless workgroup, specify the workgroup name and
%% database name.
%% The database user name is derived from the IAM identity. For example,
%% `arn:iam::123456789012:user:foo' has the database user name
%% `IAM:foo'.
%% Also, permission to call the `redshift-serverless:GetCredentials'
%% operation is required.
%%
%% When connecting to a cluster as an IAM identity, specify the cluster
%% identifier and the database name.
%% The database user name is derived from the IAM identity. For example,
%% `arn:iam::123456789012:user:foo' has the database user name
%% `IAM:foo'.
%% Also, permission to call the `redshift:GetClusterCredentialsWithIAM'
%% operation is required.
%%
%% When connecting to a cluster as a database user, specify the cluster
%% identifier, the database name, and the database user name.
%% Also, permission to call the `redshift:GetClusterCredentials'
%% operation is required.
%%
%% For more information about the Amazon Redshift Data API and CLI usage
%% examples, see
%% Using the Amazon Redshift Data API:
%% https://docs.aws.amazon.com/redshift/latest/mgmt/data-api.html in the
%% Amazon Redshift Management Guide.
-spec list_databases(aws_client:aws_client(), list_databases_request()) ->
    {ok, list_databases_response(), tuple()} |
    {error, any()} |
    {error, list_databases_errors(), tuple()}.
list_databases(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_databases(Client, Input, []).

-spec list_databases(aws_client:aws_client(), list_databases_request(), proplists:proplist()) ->
    {ok, list_databases_response(), tuple()} |
    {error, any()} |
    {error, list_databases_errors(), tuple()}.
list_databases(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDatabases">>, Input, Options).

%% @doc Lists the schemas in a database.
%%
%% A token is returned to page through the schema list.
%% Depending on the authorization method, use one of the
%% following combinations of request parameters:
%%
%% Secrets Manager - when connecting to a cluster, provide the
%% `secret-arn' of a secret
%% stored in Secrets Manager which has `username' and `password'.
%% The specified secret contains credentials
%% to connect to the `database' you specify.
%% When you are connecting to a cluster, you also supply the database name,
%% If you provide a cluster identifier (`dbClusterIdentifier'), it must
%% match the cluster identifier stored in the secret.
%% When you are connecting to a serverless workgroup, you also supply the
%% database name.
%%
%% Temporary credentials - when connecting to your data warehouse, choose one
%% of the following options:
%%
%% When connecting to a serverless workgroup, specify the workgroup name and
%% database name.
%% The database user name is derived from the IAM identity. For example,
%% `arn:iam::123456789012:user:foo' has the database user name
%% `IAM:foo'.
%% Also, permission to call the `redshift-serverless:GetCredentials'
%% operation is required.
%%
%% When connecting to a cluster as an IAM identity, specify the cluster
%% identifier and the database name.
%% The database user name is derived from the IAM identity. For example,
%% `arn:iam::123456789012:user:foo' has the database user name
%% `IAM:foo'.
%% Also, permission to call the `redshift:GetClusterCredentialsWithIAM'
%% operation is required.
%%
%% When connecting to a cluster as a database user, specify the cluster
%% identifier, the database name, and the database user name.
%% Also, permission to call the `redshift:GetClusterCredentials'
%% operation is required.
%%
%% For more information about the Amazon Redshift Data API and CLI usage
%% examples, see
%% Using the Amazon Redshift Data API:
%% https://docs.aws.amazon.com/redshift/latest/mgmt/data-api.html in the
%% Amazon Redshift Management Guide.
-spec list_schemas(aws_client:aws_client(), list_schemas_request()) ->
    {ok, list_schemas_response(), tuple()} |
    {error, any()} |
    {error, list_schemas_errors(), tuple()}.
list_schemas(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_schemas(Client, Input, []).

-spec list_schemas(aws_client:aws_client(), list_schemas_request(), proplists:proplist()) ->
    {ok, list_schemas_response(), tuple()} |
    {error, any()} |
    {error, list_schemas_errors(), tuple()}.
list_schemas(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSchemas">>, Input, Options).

%% @doc List of SQL statements.
%%
%% By default, only finished statements are shown.
%% A token is returned to page through the statement list.
%%
%% When you use identity-enhanced role sessions to list statements, you must
%% provide either the
%% `cluster-identifier' or `workgroup-name' parameter. This ensures
%% that the IdC user
%% can only access the Amazon Redshift IdC applications they are assigned.
%% For more information, see
%%
%% Trusted identity propagation overview:
%% https://docs.aws.amazon.com/singlesignon/latest/userguide/trustedidentitypropagation-overview.html.
%%
%% For more information about the Amazon Redshift Data API and CLI usage
%% examples, see
%% Using the Amazon Redshift Data API:
%% https://docs.aws.amazon.com/redshift/latest/mgmt/data-api.html in the
%% Amazon Redshift Management Guide.
-spec list_statements(aws_client:aws_client(), list_statements_request()) ->
    {ok, list_statements_response(), tuple()} |
    {error, any()} |
    {error, list_statements_errors(), tuple()}.
list_statements(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_statements(Client, Input, []).

-spec list_statements(aws_client:aws_client(), list_statements_request(), proplists:proplist()) ->
    {ok, list_statements_response(), tuple()} |
    {error, any()} |
    {error, list_statements_errors(), tuple()}.
list_statements(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListStatements">>, Input, Options).

%% @doc List the tables in a database.
%%
%% If neither `SchemaPattern' nor `TablePattern' are specified, then
%% all tables in the database are returned.
%% A token is returned to page through the table list.
%% Depending on the authorization method, use one of the
%% following combinations of request parameters:
%%
%% Secrets Manager - when connecting to a cluster, provide the
%% `secret-arn' of a secret
%% stored in Secrets Manager which has `username' and `password'.
%% The specified secret contains credentials
%% to connect to the `database' you specify.
%% When you are connecting to a cluster, you also supply the database name,
%% If you provide a cluster identifier (`dbClusterIdentifier'), it must
%% match the cluster identifier stored in the secret.
%% When you are connecting to a serverless workgroup, you also supply the
%% database name.
%%
%% Temporary credentials - when connecting to your data warehouse, choose one
%% of the following options:
%%
%% When connecting to a serverless workgroup, specify the workgroup name and
%% database name.
%% The database user name is derived from the IAM identity. For example,
%% `arn:iam::123456789012:user:foo' has the database user name
%% `IAM:foo'.
%% Also, permission to call the `redshift-serverless:GetCredentials'
%% operation is required.
%%
%% When connecting to a cluster as an IAM identity, specify the cluster
%% identifier and the database name.
%% The database user name is derived from the IAM identity. For example,
%% `arn:iam::123456789012:user:foo' has the database user name
%% `IAM:foo'.
%% Also, permission to call the `redshift:GetClusterCredentialsWithIAM'
%% operation is required.
%%
%% When connecting to a cluster as a database user, specify the cluster
%% identifier, the database name, and the database user name.
%% Also, permission to call the `redshift:GetClusterCredentials'
%% operation is required.
%%
%% For more information about the Amazon Redshift Data API and CLI usage
%% examples, see
%% Using the Amazon Redshift Data API:
%% https://docs.aws.amazon.com/redshift/latest/mgmt/data-api.html in the
%% Amazon Redshift Management Guide.
-spec list_tables(aws_client:aws_client(), list_tables_request()) ->
    {ok, list_tables_response(), tuple()} |
    {error, any()} |
    {error, list_tables_errors(), tuple()}.
list_tables(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tables(Client, Input, []).

-spec list_tables(aws_client:aws_client(), list_tables_request(), proplists:proplist()) ->
    {ok, list_tables_response(), tuple()} |
    {error, any()} |
    {error, list_tables_errors(), tuple()}.
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
