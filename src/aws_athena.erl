%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Athena is an interactive query service that lets you use
%% standard SQL to analyze data directly in Amazon S3.
%%
%% You can point Athena at your data in Amazon S3 and run ad-hoc queries and
%% get results in seconds. Athena is serverless, so there is no
%% infrastructure to set up or manage. You pay only for the queries you run.
%% Athena scales automatically—executing queries in parallel—so results are
%% fast, even with large datasets and complex queries. For more information,
%% see What is Amazon Athena in the Amazon Athena User Guide.
%%
%% If you connect to Athena using the JDBC driver, use version 1.1.0 of the
%% driver or later with the Amazon Athena API. Earlier version drivers do not
%% support the API. For more information and to download the driver, see
%% Accessing Amazon Athena with JDBC.
%%
%% For code samples using the Amazon Web Services SDK for Java, see Examples
%% and Code Samples in the Amazon Athena User Guide.
-module(aws_athena).

-export([batch_get_named_query/2,
         batch_get_named_query/3,
         batch_get_prepared_statement/2,
         batch_get_prepared_statement/3,
         batch_get_query_execution/2,
         batch_get_query_execution/3,
         create_data_catalog/2,
         create_data_catalog/3,
         create_named_query/2,
         create_named_query/3,
         create_prepared_statement/2,
         create_prepared_statement/3,
         create_work_group/2,
         create_work_group/3,
         delete_data_catalog/2,
         delete_data_catalog/3,
         delete_named_query/2,
         delete_named_query/3,
         delete_prepared_statement/2,
         delete_prepared_statement/3,
         delete_work_group/2,
         delete_work_group/3,
         get_data_catalog/2,
         get_data_catalog/3,
         get_database/2,
         get_database/3,
         get_named_query/2,
         get_named_query/3,
         get_prepared_statement/2,
         get_prepared_statement/3,
         get_query_execution/2,
         get_query_execution/3,
         get_query_results/2,
         get_query_results/3,
         get_query_runtime_statistics/2,
         get_query_runtime_statistics/3,
         get_table_metadata/2,
         get_table_metadata/3,
         get_work_group/2,
         get_work_group/3,
         list_data_catalogs/2,
         list_data_catalogs/3,
         list_databases/2,
         list_databases/3,
         list_engine_versions/2,
         list_engine_versions/3,
         list_named_queries/2,
         list_named_queries/3,
         list_prepared_statements/2,
         list_prepared_statements/3,
         list_query_executions/2,
         list_query_executions/3,
         list_table_metadata/2,
         list_table_metadata/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_work_groups/2,
         list_work_groups/3,
         start_query_execution/2,
         start_query_execution/3,
         stop_query_execution/2,
         stop_query_execution/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_data_catalog/2,
         update_data_catalog/3,
         update_named_query/2,
         update_named_query/3,
         update_prepared_statement/2,
         update_prepared_statement/3,
         update_work_group/2,
         update_work_group/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Returns the details of a single named query or a list of up to 50
%% queries, which you provide as an array of query ID strings.
%%
%% Requires you to have access to the workgroup in which the queries were
%% saved. Use `ListNamedQueriesInput' to get the list of named query IDs in
%% the specified workgroup. If information could not be retrieved for a
%% submitted query ID, information about the query ID submitted is listed
%% under `UnprocessedNamedQueryId'. Named queries differ from executed
%% queries. Use `BatchGetQueryExecutionInput' to get details about each
%% unique query execution, and `ListQueryExecutionsInput' to get a list of
%% query execution IDs.
batch_get_named_query(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_named_query(Client, Input, []).
batch_get_named_query(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetNamedQuery">>, Input, Options).

%% @doc Returns the details of a single prepared statement or a list of up to
%% 256 prepared statements for the array of prepared statement names that you
%% provide.
%%
%% Requires you to have access to the workgroup to which the prepared
%% statements belong. If a prepared statement cannot be retrieved for the
%% name specified, the statement is listed in
%% `UnprocessedPreparedStatementNames'.
batch_get_prepared_statement(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_prepared_statement(Client, Input, []).
batch_get_prepared_statement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetPreparedStatement">>, Input, Options).

%% @doc Returns the details of a single query execution or a list of up to 50
%% query executions, which you provide as an array of query execution ID
%% strings.
%%
%% Requires you to have access to the workgroup in which the queries ran. To
%% get a list of query execution IDs, use
%% `ListQueryExecutionsInput$WorkGroup'. Query executions differ from named
%% (saved) queries. Use `BatchGetNamedQueryInput' to get details about named
%% queries.
batch_get_query_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_query_execution(Client, Input, []).
batch_get_query_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetQueryExecution">>, Input, Options).

%% @doc Creates (registers) a data catalog with the specified name and
%% properties.
%%
%% Catalogs created are visible to all users of the same Amazon Web Services
%% account.
create_data_catalog(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_data_catalog(Client, Input, []).
create_data_catalog(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDataCatalog">>, Input, Options).

%% @doc Creates a named query in the specified workgroup.
%%
%% Requires that you have access to the workgroup.
%%
%% For code samples using the Amazon Web Services SDK for Java, see Examples
%% and Code Samples in the Amazon Athena User Guide.
create_named_query(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_named_query(Client, Input, []).
create_named_query(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateNamedQuery">>, Input, Options).

%% @doc Creates a prepared statement for use with SQL queries in Athena.
create_prepared_statement(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_prepared_statement(Client, Input, []).
create_prepared_statement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePreparedStatement">>, Input, Options).

%% @doc Creates a workgroup with the specified name.
create_work_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_work_group(Client, Input, []).
create_work_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateWorkGroup">>, Input, Options).

%% @doc Deletes a data catalog.
delete_data_catalog(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_data_catalog(Client, Input, []).
delete_data_catalog(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDataCatalog">>, Input, Options).

%% @doc Deletes the named query if you have access to the workgroup in which
%% the query was saved.
%%
%% For code samples using the Amazon Web Services SDK for Java, see Examples
%% and Code Samples in the Amazon Athena User Guide.
delete_named_query(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_named_query(Client, Input, []).
delete_named_query(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteNamedQuery">>, Input, Options).

%% @doc Deletes the prepared statement with the specified name from the
%% specified workgroup.
delete_prepared_statement(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_prepared_statement(Client, Input, []).
delete_prepared_statement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePreparedStatement">>, Input, Options).

%% @doc Deletes the workgroup with the specified name.
%%
%% The primary workgroup cannot be deleted.
delete_work_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_work_group(Client, Input, []).
delete_work_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteWorkGroup">>, Input, Options).

%% @doc Returns the specified data catalog.
get_data_catalog(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_data_catalog(Client, Input, []).
get_data_catalog(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDataCatalog">>, Input, Options).

%% @doc Returns a database object for the specified database and data
%% catalog.
get_database(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_database(Client, Input, []).
get_database(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDatabase">>, Input, Options).

%% @doc Returns information about a single query.
%%
%% Requires that you have access to the workgroup in which the query was
%% saved.
get_named_query(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_named_query(Client, Input, []).
get_named_query(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetNamedQuery">>, Input, Options).

%% @doc Retrieves the prepared statement with the specified name from the
%% specified workgroup.
get_prepared_statement(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_prepared_statement(Client, Input, []).
get_prepared_statement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPreparedStatement">>, Input, Options).

%% @doc Returns information about a single execution of a query if you have
%% access to the workgroup in which the query ran.
%%
%% Each time a query executes, information about the query execution is saved
%% with a unique ID.
get_query_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_query_execution(Client, Input, []).
get_query_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetQueryExecution">>, Input, Options).

%% @doc Streams the results of a single query execution specified by
%% `QueryExecutionId' from the Athena query results location in Amazon S3.
%%
%% For more information, see Query Results in the Amazon Athena User Guide.
%% This request does not execute the query but returns results. Use
%% `StartQueryExecution' to run a query.
%%
%% To stream query results successfully, the IAM principal with permission to
%% call `GetQueryResults' also must have permissions to the Amazon S3
%% `GetObject' action for the Athena query results location.
%%
%% IAM principals with permission to the Amazon S3 `GetObject' action for the
%% query results location are able to retrieve query results from Amazon S3
%% even if permission to the `GetQueryResults' action is denied. To restrict
%% user or role access, ensure that Amazon S3 permissions to the Athena query
%% location are denied.
get_query_results(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_query_results(Client, Input, []).
get_query_results(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetQueryResults">>, Input, Options).

%% @doc Returns query execution runtime statistics related to a single
%% execution of a query if you have access to the workgroup in which the
%% query ran.
%%
%% The query execution runtime statistics is returned only when
%% `QueryExecutionStatus$State' is in a SUCCEEDED or FAILED state.
get_query_runtime_statistics(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_query_runtime_statistics(Client, Input, []).
get_query_runtime_statistics(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetQueryRuntimeStatistics">>, Input, Options).

%% @doc Returns table metadata for the specified catalog, database, and
%% table.
get_table_metadata(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_table_metadata(Client, Input, []).
get_table_metadata(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTableMetadata">>, Input, Options).

%% @doc Returns information about the workgroup with the specified name.
get_work_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_work_group(Client, Input, []).
get_work_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetWorkGroup">>, Input, Options).

%% @doc Lists the data catalogs in the current Amazon Web Services account.
list_data_catalogs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_data_catalogs(Client, Input, []).
list_data_catalogs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDataCatalogs">>, Input, Options).

%% @doc Lists the databases in the specified data catalog.
list_databases(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_databases(Client, Input, []).
list_databases(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDatabases">>, Input, Options).

%% @doc Returns a list of engine versions that are available to choose from,
%% including the Auto option.
list_engine_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_engine_versions(Client, Input, []).
list_engine_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEngineVersions">>, Input, Options).

%% @doc Provides a list of available query IDs only for queries saved in the
%% specified workgroup.
%%
%% Requires that you have access to the specified workgroup. If a workgroup
%% is not specified, lists the saved queries for the primary workgroup.
%%
%% For code samples using the Amazon Web Services SDK for Java, see Examples
%% and Code Samples in the Amazon Athena User Guide.
list_named_queries(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_named_queries(Client, Input, []).
list_named_queries(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListNamedQueries">>, Input, Options).

%% @doc Lists the prepared statements in the specified workgroup.
list_prepared_statements(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_prepared_statements(Client, Input, []).
list_prepared_statements(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPreparedStatements">>, Input, Options).

%% @doc Provides a list of available query execution IDs for the queries in
%% the specified workgroup.
%%
%% If a workgroup is not specified, returns a list of query execution IDs for
%% the primary workgroup. Requires you to have access to the workgroup in
%% which the queries ran.
%%
%% For code samples using the Amazon Web Services SDK for Java, see Examples
%% and Code Samples in the Amazon Athena User Guide.
list_query_executions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_query_executions(Client, Input, []).
list_query_executions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListQueryExecutions">>, Input, Options).

%% @doc Lists the metadata for the tables in the specified data catalog
%% database.
list_table_metadata(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_table_metadata(Client, Input, []).
list_table_metadata(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTableMetadata">>, Input, Options).

%% @doc Lists the tags associated with an Athena workgroup or data catalog
%% resource.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Lists available workgroups for the account.
list_work_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_work_groups(Client, Input, []).
list_work_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListWorkGroups">>, Input, Options).

%% @doc Runs the SQL query statements contained in the `Query'.
%%
%% Requires you to have access to the workgroup in which the query ran.
%% Running queries against an external catalog requires `GetDataCatalog'
%% permission to the catalog. For code samples using the Amazon Web Services
%% SDK for Java, see Examples and Code Samples in the Amazon Athena User
%% Guide.
start_query_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_query_execution(Client, Input, []).
start_query_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartQueryExecution">>, Input, Options).

%% @doc Stops a query execution.
%%
%% Requires you to have access to the workgroup in which the query ran.
%%
%% For code samples using the Amazon Web Services SDK for Java, see Examples
%% and Code Samples in the Amazon Athena User Guide.
stop_query_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_query_execution(Client, Input, []).
stop_query_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopQueryExecution">>, Input, Options).

%% @doc Adds one or more tags to an Athena resource.
%%
%% A tag is a label that you assign to a resource. In Athena, a resource can
%% be a workgroup or data catalog. Each tag consists of a key and an optional
%% value, both of which you define. For example, you can use tags to
%% categorize Athena workgroups or data catalogs by purpose, owner, or
%% environment. Use a consistent set of tag keys to make it easier to search
%% and filter workgroups or data catalogs in your account. For best
%% practices, see Tagging Best Practices. Tag keys can be from 1 to 128 UTF-8
%% Unicode characters, and tag values can be from 0 to 256 UTF-8 Unicode
%% characters. Tags can use letters and numbers representable in UTF-8, and
%% the following characters: + - = . _ : / @. Tag keys and values are
%% case-sensitive. Tag keys must be unique per resource. If you specify more
%% than one tag, separate them by commas.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Removes one or more tags from a data catalog or workgroup resource.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Updates the data catalog that has the specified name.
update_data_catalog(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_data_catalog(Client, Input, []).
update_data_catalog(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDataCatalog">>, Input, Options).

%% @doc Updates a `NamedQuery' object.
%%
%% The database or workgroup cannot be updated.
update_named_query(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_named_query(Client, Input, []).
update_named_query(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateNamedQuery">>, Input, Options).

%% @doc Updates a prepared statement.
update_prepared_statement(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_prepared_statement(Client, Input, []).
update_prepared_statement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdatePreparedStatement">>, Input, Options).

%% @doc Updates the workgroup with the specified name.
%%
%% The workgroup's name cannot be changed.
update_work_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_work_group(Client, Input, []).
update_work_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateWorkGroup">>, Input, Options).

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
    Client1 = Client#{service => <<"athena">>},
    Host = build_host(<<"athena">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"AmazonAthena.", Action/binary>>}
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
