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
         cancel_capacity_reservation/2,
         cancel_capacity_reservation/3,
         create_capacity_reservation/2,
         create_capacity_reservation/3,
         create_data_catalog/2,
         create_data_catalog/3,
         create_named_query/2,
         create_named_query/3,
         create_notebook/2,
         create_notebook/3,
         create_prepared_statement/2,
         create_prepared_statement/3,
         create_presigned_notebook_url/2,
         create_presigned_notebook_url/3,
         create_work_group/2,
         create_work_group/3,
         delete_data_catalog/2,
         delete_data_catalog/3,
         delete_named_query/2,
         delete_named_query/3,
         delete_notebook/2,
         delete_notebook/3,
         delete_prepared_statement/2,
         delete_prepared_statement/3,
         delete_work_group/2,
         delete_work_group/3,
         export_notebook/2,
         export_notebook/3,
         get_calculation_execution/2,
         get_calculation_execution/3,
         get_calculation_execution_code/2,
         get_calculation_execution_code/3,
         get_calculation_execution_status/2,
         get_calculation_execution_status/3,
         get_capacity_assignment_configuration/2,
         get_capacity_assignment_configuration/3,
         get_capacity_reservation/2,
         get_capacity_reservation/3,
         get_data_catalog/2,
         get_data_catalog/3,
         get_database/2,
         get_database/3,
         get_named_query/2,
         get_named_query/3,
         get_notebook_metadata/2,
         get_notebook_metadata/3,
         get_prepared_statement/2,
         get_prepared_statement/3,
         get_query_execution/2,
         get_query_execution/3,
         get_query_results/2,
         get_query_results/3,
         get_query_runtime_statistics/2,
         get_query_runtime_statistics/3,
         get_session/2,
         get_session/3,
         get_session_status/2,
         get_session_status/3,
         get_table_metadata/2,
         get_table_metadata/3,
         get_work_group/2,
         get_work_group/3,
         import_notebook/2,
         import_notebook/3,
         list_application_d_p_u_sizes/2,
         list_application_d_p_u_sizes/3,
         list_calculation_executions/2,
         list_calculation_executions/3,
         list_capacity_reservations/2,
         list_capacity_reservations/3,
         list_data_catalogs/2,
         list_data_catalogs/3,
         list_databases/2,
         list_databases/3,
         list_engine_versions/2,
         list_engine_versions/3,
         list_executors/2,
         list_executors/3,
         list_named_queries/2,
         list_named_queries/3,
         list_notebook_metadata/2,
         list_notebook_metadata/3,
         list_notebook_sessions/2,
         list_notebook_sessions/3,
         list_prepared_statements/2,
         list_prepared_statements/3,
         list_query_executions/2,
         list_query_executions/3,
         list_sessions/2,
         list_sessions/3,
         list_table_metadata/2,
         list_table_metadata/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_work_groups/2,
         list_work_groups/3,
         put_capacity_assignment_configuration/2,
         put_capacity_assignment_configuration/3,
         start_calculation_execution/2,
         start_calculation_execution/3,
         start_query_execution/2,
         start_query_execution/3,
         start_session/2,
         start_session/3,
         stop_calculation_execution/2,
         stop_calculation_execution/3,
         stop_query_execution/2,
         stop_query_execution/3,
         tag_resource/2,
         tag_resource/3,
         terminate_session/2,
         terminate_session/3,
         untag_resource/2,
         untag_resource/3,
         update_capacity_reservation/2,
         update_capacity_reservation/3,
         update_data_catalog/2,
         update_data_catalog/3,
         update_named_query/2,
         update_named_query/3,
         update_notebook/2,
         update_notebook/3,
         update_notebook_metadata/2,
         update_notebook_metadata/3,
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
%% saved. Use `ListNamedQueriesInput' to get the list of named query IDs
%% in the specified workgroup. If information could not be retrieved for a
%% submitted query ID, information about the query ID submitted is listed
%% under `UnprocessedNamedQueryId'. Named queries differ from executed
%% queries. Use `BatchGetQueryExecutionInput' to get details about each
%% unique query execution, and `ListQueryExecutionsInput' to get a list
%% of query execution IDs.
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
%% `ListQueryExecutionsInput$WorkGroup'. Query executions differ from
%% named (saved) queries. Use `BatchGetNamedQueryInput' to get details
%% about named queries.
batch_get_query_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_query_execution(Client, Input, []).
batch_get_query_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetQueryExecution">>, Input, Options).

%% @doc Cancels the capacity reservation with the specified name.
cancel_capacity_reservation(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_capacity_reservation(Client, Input, []).
cancel_capacity_reservation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelCapacityReservation">>, Input, Options).

%% @doc Creates a capacity reservation with the specified name and number of
%% requested data processing units.
create_capacity_reservation(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_capacity_reservation(Client, Input, []).
create_capacity_reservation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCapacityReservation">>, Input, Options).

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

%% @doc Creates an empty `ipynb' file in the specified Apache Spark
%% enabled workgroup.
%%
%% Throws an error if a file in the workgroup with the same name already
%% exists.
create_notebook(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_notebook(Client, Input, []).
create_notebook(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateNotebook">>, Input, Options).

%% @doc Creates a prepared statement for use with SQL queries in Athena.
create_prepared_statement(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_prepared_statement(Client, Input, []).
create_prepared_statement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePreparedStatement">>, Input, Options).

%% @doc Gets an authentication token and the URL at which the notebook can be
%% accessed.
%%
%% During programmatic access, `CreatePresignedNotebookUrl' must be
%% called every 10 minutes to refresh the authentication token. For
%% information about granting programmatic access, see Grant programmatic
%% access.
create_presigned_notebook_url(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_presigned_notebook_url(Client, Input, []).
create_presigned_notebook_url(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePresignedNotebookUrl">>, Input, Options).

%% @doc Creates a workgroup with the specified name.
%%
%% A workgroup can be an Apache Spark enabled workgroup or an Athena SQL
%% workgroup.
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

%% @doc Deletes the specified notebook.
delete_notebook(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_notebook(Client, Input, []).
delete_notebook(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteNotebook">>, Input, Options).

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

%% @doc Exports the specified notebook and its metadata.
export_notebook(Client, Input)
  when is_map(Client), is_map(Input) ->
    export_notebook(Client, Input, []).
export_notebook(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ExportNotebook">>, Input, Options).

%% @doc Describes a previously submitted calculation execution.
get_calculation_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_calculation_execution(Client, Input, []).
get_calculation_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCalculationExecution">>, Input, Options).

%% @doc Retrieves the unencrypted code that was executed for the calculation.
get_calculation_execution_code(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_calculation_execution_code(Client, Input, []).
get_calculation_execution_code(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCalculationExecutionCode">>, Input, Options).

%% @doc Gets the status of a current calculation.
get_calculation_execution_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_calculation_execution_status(Client, Input, []).
get_calculation_execution_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCalculationExecutionStatus">>, Input, Options).

%% @doc Gets the capacity assignment configuration for a capacity
%% reservation, if one exists.
get_capacity_assignment_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_capacity_assignment_configuration(Client, Input, []).
get_capacity_assignment_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCapacityAssignmentConfiguration">>, Input, Options).

%% @doc Returns information about the capacity reservation with the specified
%% name.
get_capacity_reservation(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_capacity_reservation(Client, Input, []).
get_capacity_reservation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCapacityReservation">>, Input, Options).

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

%% @doc Retrieves notebook metadata for the specified notebook ID.
get_notebook_metadata(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_notebook_metadata(Client, Input, []).
get_notebook_metadata(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetNotebookMetadata">>, Input, Options).

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
%% `QueryExecutionId' from the Athena query results location in Amazon
%% S3.
%%
%% For more information, see Working with query results, recent queries, and
%% output files in the Amazon Athena User Guide. This request does not
%% execute the query but returns results. Use `StartQueryExecution' to
%% run a query.
%%
%% To stream query results successfully, the IAM principal with permission to
%% call `GetQueryResults' also must have permissions to the Amazon S3
%% `GetObject' action for the Athena query results location.
%%
%% IAM principals with permission to the Amazon S3 `GetObject' action for
%% the query results location are able to retrieve query results from Amazon
%% S3 even if permission to the `GetQueryResults' action is denied. To
%% restrict user or role access, ensure that Amazon S3 permissions to the
%% Athena query location are denied.
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
%% Query execution runtime statistics are returned only when
%% `QueryExecutionStatus$State' is in a SUCCEEDED or FAILED state.
%% Stage-level input and output row count and data size statistics are not
%% shown when a query has row-level filters defined in Lake Formation.
get_query_runtime_statistics(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_query_runtime_statistics(Client, Input, []).
get_query_runtime_statistics(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetQueryRuntimeStatistics">>, Input, Options).

%% @doc Gets the full details of a previously created session, including the
%% session status and configuration.
get_session(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_session(Client, Input, []).
get_session(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSession">>, Input, Options).

%% @doc Gets the current status of a session.
get_session_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_session_status(Client, Input, []).
get_session_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSessionStatus">>, Input, Options).

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

%% @doc Imports a single `ipynb' file to a Spark enabled workgroup.
%%
%% The maximum file size that can be imported is 10 megabytes. If an
%% `ipynb' file with the same name already exists in the workgroup,
%% throws an error.
import_notebook(Client, Input)
  when is_map(Client), is_map(Input) ->
    import_notebook(Client, Input, []).
import_notebook(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ImportNotebook">>, Input, Options).

%% @doc Returns the supported DPU sizes for the supported application
%% runtimes (for example, `Athena notebook version 1').
list_application_d_p_u_sizes(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_application_d_p_u_sizes(Client, Input, []).
list_application_d_p_u_sizes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListApplicationDPUSizes">>, Input, Options).

%% @doc Lists the calculations that have been submitted to a session in
%% descending order.
%%
%% Newer calculations are listed first; older calculations are listed later.
list_calculation_executions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_calculation_executions(Client, Input, []).
list_calculation_executions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCalculationExecutions">>, Input, Options).

%% @doc Lists the capacity reservations for the current account.
list_capacity_reservations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_capacity_reservations(Client, Input, []).
list_capacity_reservations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCapacityReservations">>, Input, Options).

%% @doc Lists the data catalogs in the current Amazon Web Services account.
%%
%% In the Athena console, data catalogs are listed as &quot;data
%% sources&quot; on the Data sources page under the Data source name column.
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

%% @doc Lists, in descending order, the executors that joined a session.
%%
%% Newer executors are listed first; older executors are listed later. The
%% result can be optionally filtered by state.
list_executors(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_executors(Client, Input, []).
list_executors(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListExecutors">>, Input, Options).

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

%% @doc Displays the notebook files for the specified workgroup in paginated
%% format.
list_notebook_metadata(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_notebook_metadata(Client, Input, []).
list_notebook_metadata(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListNotebookMetadata">>, Input, Options).

%% @doc Lists, in descending order, the sessions that have been created in a
%% notebook that are in an active state like `CREATING', `CREATED',
%% `IDLE' or `BUSY'.
%%
%% Newer sessions are listed first; older sessions are listed later.
list_notebook_sessions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_notebook_sessions(Client, Input, []).
list_notebook_sessions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListNotebookSessions">>, Input, Options).

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

%% @doc Lists the sessions in a workgroup that are in an active state like
%% `CREATING', `CREATED', `IDLE', or `BUSY'.
%%
%% Newer sessions are listed first; older sessions are listed later.
list_sessions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_sessions(Client, Input, []).
list_sessions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSessions">>, Input, Options).

%% @doc Lists the metadata for the tables in the specified data catalog
%% database.
list_table_metadata(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_table_metadata(Client, Input, []).
list_table_metadata(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTableMetadata">>, Input, Options).

%% @doc Lists the tags associated with an Athena resource.
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

%% @doc Puts a new capacity assignment configuration for a specified capacity
%% reservation.
%%
%% If a capacity assignment configuration already exists for the capacity
%% reservation, replaces the existing capacity assignment configuration.
put_capacity_assignment_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_capacity_assignment_configuration(Client, Input, []).
put_capacity_assignment_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutCapacityAssignmentConfiguration">>, Input, Options).

%% @doc Submits calculations for execution within a session.
%%
%% You can supply the code to run as an inline code block within the request.
start_calculation_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_calculation_execution(Client, Input, []).
start_calculation_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartCalculationExecution">>, Input, Options).

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

%% @doc Creates a session for running calculations within a workgroup.
%%
%% The session is ready when it reaches an `IDLE' state.
start_session(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_session(Client, Input, []).
start_session(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartSession">>, Input, Options).

%% @doc Requests the cancellation of a calculation.
%%
%% A `StopCalculationExecution' call on a calculation that is already in
%% a terminal state (for example, `STOPPED', `FAILED', or
%% `COMPLETED') succeeds but has no effect.
%%
%% Cancelling a calculation is done on a best effort basis. If a calculation
%% cannot be cancelled, you can be charged for its completion. If you are
%% concerned about being charged for a calculation that cannot be cancelled,
%% consider terminating the session in which the calculation is running.
stop_calculation_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_calculation_execution(Client, Input, []).
stop_calculation_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopCalculationExecution">>, Input, Options).

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
%% A tag is a label that you assign to a resource. Each tag consists of a key
%% and an optional value, both of which you define. For example, you can use
%% tags to categorize Athena workgroups, data catalogs, or capacity
%% reservations by purpose, owner, or environment. Use a consistent set of
%% tag keys to make it easier to search and filter the resources in your
%% account. For best practices, see Tagging Best Practices. Tag keys can be
%% from 1 to 128 UTF-8 Unicode characters, and tag values can be from 0 to
%% 256 UTF-8 Unicode characters. Tags can use letters and numbers
%% representable in UTF-8, and the following characters: + - = . _ : / @. Tag
%% keys and values are case-sensitive. Tag keys must be unique per resource.
%% If you specify more than one tag, separate them by commas.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Terminates an active session.
%%
%% A `TerminateSession' call on a session that is already inactive (for
%% example, in a `FAILED', `TERMINATED' or `TERMINATING' state)
%% succeeds but has no effect. Calculations running in the session when
%% `TerminateSession' is called are forcefully stopped, but may display
%% as `FAILED' instead of `STOPPED'.
terminate_session(Client, Input)
  when is_map(Client), is_map(Input) ->
    terminate_session(Client, Input, []).
terminate_session(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TerminateSession">>, Input, Options).

%% @doc Removes one or more tags from an Athena resource.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Updates the number of requested data processing units for the
%% capacity reservation with the specified name.
update_capacity_reservation(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_capacity_reservation(Client, Input, []).
update_capacity_reservation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateCapacityReservation">>, Input, Options).

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

%% @doc Updates the contents of a Spark notebook.
update_notebook(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_notebook(Client, Input, []).
update_notebook(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateNotebook">>, Input, Options).

%% @doc Updates the metadata for a notebook.
update_notebook_metadata(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_notebook_metadata(Client, Input, []).
update_notebook_metadata(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateNotebookMetadata">>, Input, Options).

%% @doc Updates a prepared statement.
update_prepared_statement(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_prepared_statement(Client, Input, []).
update_prepared_statement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdatePreparedStatement">>, Input, Options).

%% @doc Updates the workgroup with the specified name.
%%
%% The workgroup's name cannot be changed. Only
%% `ConfigurationUpdates' can be specified.
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
    Proto = aws_client:proto(Client),
    Port = aws_client:port(Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
