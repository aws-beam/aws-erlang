%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Athena is an interactive query service that lets you use
%% standard SQL
%% to analyze data directly in Amazon S3.
%%
%% You can point Athena at your
%% data in Amazon S3 and run ad-hoc queries and get results in seconds.
%% Athena is serverless, so there is no infrastructure to set up or manage.
%% You pay
%% only for the queries you run. Athena scales automatically—executing
%% queries
%% in parallel—so results are fast, even with large datasets and complex
%% queries. For more
%% information, see What is Amazon Athena:
%% http://docs.aws.amazon.com/athena/latest/ug/what-is.html in the Amazon
%% Athena User
%% Guide.
%%
%% If you connect to Athena using the JDBC driver, use version 1.1.0 of the
%% driver or later with the Amazon Athena API. Earlier version drivers do not
%% support the API. For more information and to download the driver, see
%% Accessing
%% Amazon Athena with JDBC:
%% https://docs.aws.amazon.com/athena/latest/ug/connect-with-jdbc.html.
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
         delete_capacity_reservation/2,
         delete_capacity_reservation/3,
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


%% Example:
%% get_notebook_metadata_input() :: #{
%%   <<"NotebookId">> := string()
%% }
-type get_notebook_metadata_input() :: #{binary() => any()}.

%% Example:
%% query_stage_plan_node() :: #{
%%   <<"Children">> => list(query_stage_plan_node()()),
%%   <<"Identifier">> => string(),
%%   <<"Name">> => string(),
%%   <<"RemoteSources">> => list(string()())
%% }
-type query_stage_plan_node() :: #{binary() => any()}.

%% Example:
%% named_query() :: #{
%%   <<"Database">> => string(),
%%   <<"Description">> => string(),
%%   <<"Name">> => string(),
%%   <<"NamedQueryId">> => string(),
%%   <<"QueryString">> => string(),
%%   <<"WorkGroup">> => string()
%% }
-type named_query() :: #{binary() => any()}.

%% Example:
%% data_catalog_summary() :: #{
%%   <<"CatalogName">> => string(),
%%   <<"ConnectionType">> => list(any()),
%%   <<"Error">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Type">> => list(any())
%% }
-type data_catalog_summary() :: #{binary() => any()}.

%% Example:
%% managed_query_results_configuration() :: #{
%%   <<"Enabled">> => boolean(),
%%   <<"EncryptionConfiguration">> => managed_query_results_encryption_configuration()
%% }
-type managed_query_results_configuration() :: #{binary() => any()}.

%% Example:
%% delete_data_catalog_input() :: #{
%%   <<"DeleteCatalogOnly">> => boolean(),
%%   <<"Name">> := string()
%% }
-type delete_data_catalog_input() :: #{binary() => any()}.

%% Example:
%% stop_query_execution_output() :: #{

%% }
-type stop_query_execution_output() :: #{binary() => any()}.

%% Example:
%% update_prepared_statement_input() :: #{
%%   <<"Description">> => string(),
%%   <<"QueryStatement">> := string(),
%%   <<"StatementName">> := string(),
%%   <<"WorkGroup">> := string()
%% }
-type update_prepared_statement_input() :: #{binary() => any()}.

%% Example:
%% metadata_exception() :: #{
%%   <<"Message">> => string()
%% }
-type metadata_exception() :: #{binary() => any()}.

%% Example:
%% update_notebook_metadata_input() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"Name">> := string(),
%%   <<"NotebookId">> := string()
%% }
-type update_notebook_metadata_input() :: #{binary() => any()}.

%% Example:
%% encryption_configuration() :: #{
%%   <<"EncryptionOption">> => list(any()),
%%   <<"KmsKey">> => string()
%% }
-type encryption_configuration() :: #{binary() => any()}.

%% Example:
%% get_data_catalog_output() :: #{
%%   <<"DataCatalog">> => data_catalog()
%% }
-type get_data_catalog_output() :: #{binary() => any()}.

%% Example:
%% capacity_reservation() :: #{
%%   <<"AllocatedDpus">> => integer(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"LastAllocation">> => capacity_allocation(),
%%   <<"LastSuccessfulAllocationTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"TargetDpus">> => integer()
%% }
-type capacity_reservation() :: #{binary() => any()}.

%% Example:
%% result_set_metadata() :: #{
%%   <<"ColumnInfo">> => list(column_info()())
%% }
-type result_set_metadata() :: #{binary() => any()}.

%% Example:
%% get_prepared_statement_input() :: #{
%%   <<"StatementName">> := string(),
%%   <<"WorkGroup">> := string()
%% }
-type get_prepared_statement_input() :: #{binary() => any()}.

%% Example:
%% database() :: #{
%%   <<"Description">> => string(),
%%   <<"Name">> => string(),
%%   <<"Parameters">> => map()
%% }
-type database() :: #{binary() => any()}.

%% Example:
%% session_summary() :: #{
%%   <<"Description">> => string(),
%%   <<"EngineVersion">> => engine_version(),
%%   <<"NotebookVersion">> => string(),
%%   <<"SessionId">> => string(),
%%   <<"Status">> => session_status()
%% }
-type session_summary() :: #{binary() => any()}.

%% Example:
%% get_calculation_execution_status_request() :: #{
%%   <<"CalculationExecutionId">> := string()
%% }
-type get_calculation_execution_status_request() :: #{binary() => any()}.

%% Example:
%% get_session_response() :: #{
%%   <<"Description">> => string(),
%%   <<"EngineConfiguration">> => engine_configuration(),
%%   <<"EngineVersion">> => string(),
%%   <<"NotebookVersion">> => string(),
%%   <<"SessionConfiguration">> => session_configuration(),
%%   <<"SessionId">> => string(),
%%   <<"Statistics">> => session_statistics(),
%%   <<"Status">> => session_status(),
%%   <<"WorkGroup">> => string()
%% }
-type get_session_response() :: #{binary() => any()}.

%% Example:
%% get_query_results_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ResultSet">> => result_set(),
%%   <<"UpdateCount">> => float()
%% }
-type get_query_results_output() :: #{binary() => any()}.

%% Example:
%% get_notebook_metadata_output() :: #{
%%   <<"NotebookMetadata">> => notebook_metadata()
%% }
-type get_notebook_metadata_output() :: #{binary() => any()}.

%% Example:
%% list_notebook_sessions_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"NotebookId">> := string()
%% }
-type list_notebook_sessions_request() :: #{binary() => any()}.

%% Example:
%% list_notebook_metadata_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"NotebookMetadataList">> => list(notebook_metadata()())
%% }
-type list_notebook_metadata_output() :: #{binary() => any()}.

%% Example:
%% create_work_group_output() :: #{

%% }
-type create_work_group_output() :: #{binary() => any()}.

%% Example:
%% start_session_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"Description">> => string(),
%%   <<"EngineConfiguration">> := engine_configuration(),
%%   <<"NotebookVersion">> => string(),
%%   <<"SessionIdleTimeoutInMinutes">> => integer(),
%%   <<"WorkGroup">> := string()
%% }
-type start_session_request() :: #{binary() => any()}.

%% Example:
%% delete_prepared_statement_output() :: #{

%% }
-type delete_prepared_statement_output() :: #{binary() => any()}.

%% Example:
%% get_capacity_reservation_input() :: #{
%%   <<"Name">> := string()
%% }
-type get_capacity_reservation_input() :: #{binary() => any()}.

%% Example:
%% update_notebook_output() :: #{

%% }
-type update_notebook_output() :: #{binary() => any()}.

%% Example:
%% result_configuration_updates() :: #{
%%   <<"AclConfiguration">> => acl_configuration(),
%%   <<"EncryptionConfiguration">> => encryption_configuration(),
%%   <<"ExpectedBucketOwner">> => string(),
%%   <<"OutputLocation">> => string(),
%%   <<"RemoveAclConfiguration">> => boolean(),
%%   <<"RemoveEncryptionConfiguration">> => boolean(),
%%   <<"RemoveExpectedBucketOwner">> => boolean(),
%%   <<"RemoveOutputLocation">> => boolean()
%% }
-type result_configuration_updates() :: #{binary() => any()}.

%% Example:
%% engine_version() :: #{
%%   <<"EffectiveEngineVersion">> => string(),
%%   <<"SelectedEngineVersion">> => string()
%% }
-type engine_version() :: #{binary() => any()}.

%% Example:
%% engine_configuration() :: #{
%%   <<"AdditionalConfigs">> => map(),
%%   <<"CoordinatorDpuSize">> => integer(),
%%   <<"DefaultExecutorDpuSize">> => integer(),
%%   <<"MaxConcurrentDpus">> => integer(),
%%   <<"SparkProperties">> => map()
%% }
-type engine_configuration() :: #{binary() => any()}.

%% Example:
%% get_capacity_assignment_configuration_input() :: #{
%%   <<"CapacityReservationName">> := string()
%% }
-type get_capacity_assignment_configuration_input() :: #{binary() => any()}.

%% Example:
%% create_prepared_statement_input() :: #{
%%   <<"Description">> => string(),
%%   <<"QueryStatement">> := string(),
%%   <<"StatementName">> := string(),
%%   <<"WorkGroup">> := string()
%% }
-type create_prepared_statement_input() :: #{binary() => any()}.

%% Example:
%% get_query_execution_input() :: #{
%%   <<"QueryExecutionId">> := string()
%% }
-type get_query_execution_input() :: #{binary() => any()}.

%% Example:
%% result_reuse_information() :: #{
%%   <<"ReusedPreviousResult">> => boolean()
%% }
-type result_reuse_information() :: #{binary() => any()}.

%% Example:
%% stop_calculation_execution_response() :: #{
%%   <<"State">> => list(any())
%% }
-type stop_calculation_execution_response() :: #{binary() => any()}.

%% Example:
%% query_runtime_statistics() :: #{
%%   <<"OutputStage">> => query_stage(),
%%   <<"Rows">> => query_runtime_statistics_rows(),
%%   <<"Timeline">> => query_runtime_statistics_timeline()
%% }
-type query_runtime_statistics() :: #{binary() => any()}.

%% Example:
%% column() :: #{
%%   <<"Comment">> => string(),
%%   <<"Name">> => string(),
%%   <<"Type">> => string()
%% }
-type column() :: #{binary() => any()}.

%% Example:
%% athena_error() :: #{
%%   <<"ErrorCategory">> => integer(),
%%   <<"ErrorMessage">> => string(),
%%   <<"ErrorType">> => integer(),
%%   <<"Retryable">> => boolean()
%% }
-type athena_error() :: #{binary() => any()}.

%% Example:
%% list_table_metadata_input() :: #{
%%   <<"CatalogName">> := string(),
%%   <<"DatabaseName">> := string(),
%%   <<"Expression">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"WorkGroup">> => string()
%% }
-type list_table_metadata_input() :: #{binary() => any()}.

%% Example:
%% list_application_d_p_u_sizes_output() :: #{
%%   <<"ApplicationDPUSizes">> => list(application_d_p_u_sizes()()),
%%   <<"NextToken">> => string()
%% }
-type list_application_d_p_u_sizes_output() :: #{binary() => any()}.

%% Example:
%% update_notebook_metadata_output() :: #{

%% }
-type update_notebook_metadata_output() :: #{binary() => any()}.

%% Example:
%% work_group() :: #{
%%   <<"Configuration">> => work_group_configuration(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"IdentityCenterApplicationArn">> => string(),
%%   <<"Name">> => string(),
%%   <<"State">> => list(any())
%% }
-type work_group() :: #{binary() => any()}.

%% Example:
%% update_work_group_output() :: #{

%% }
-type update_work_group_output() :: #{binary() => any()}.

%% Example:
%% datum() :: #{
%%   <<"VarCharValue">> => string()
%% }
-type datum() :: #{binary() => any()}.

%% Example:
%% update_named_query_output() :: #{

%% }
-type update_named_query_output() :: #{binary() => any()}.

%% Example:
%% put_capacity_assignment_configuration_input() :: #{
%%   <<"CapacityAssignments">> := list(capacity_assignment()()),
%%   <<"CapacityReservationName">> := string()
%% }
-type put_capacity_assignment_configuration_input() :: #{binary() => any()}.

%% Example:
%% create_notebook_input() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"Name">> := string(),
%%   <<"WorkGroup">> := string()
%% }
-type create_notebook_input() :: #{binary() => any()}.

%% Example:
%% stop_query_execution_input() :: #{
%%   <<"QueryExecutionId">> := string()
%% }
-type stop_query_execution_input() :: #{binary() => any()}.

%% Example:
%% export_notebook_output() :: #{
%%   <<"NotebookMetadata">> => notebook_metadata(),
%%   <<"Payload">> => string()
%% }
-type export_notebook_output() :: #{binary() => any()}.

%% Example:
%% get_calculation_execution_status_response() :: #{
%%   <<"Statistics">> => calculation_statistics(),
%%   <<"Status">> => calculation_status()
%% }
-type get_calculation_execution_status_response() :: #{binary() => any()}.

%% Example:
%% list_capacity_reservations_output() :: #{
%%   <<"CapacityReservations">> => list(capacity_reservation()()),
%%   <<"NextToken">> => string()
%% }
-type list_capacity_reservations_output() :: #{binary() => any()}.

%% Example:
%% get_query_execution_output() :: #{
%%   <<"QueryExecution">> => query_execution()
%% }
-type get_query_execution_output() :: #{binary() => any()}.

%% Example:
%% get_named_query_input() :: #{
%%   <<"NamedQueryId">> := string()
%% }
-type get_named_query_input() :: #{binary() => any()}.

%% Example:
%% notebook_session_summary() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"SessionId">> => string()
%% }
-type notebook_session_summary() :: #{binary() => any()}.

%% Example:
%% capacity_assignment_configuration() :: #{
%%   <<"CapacityAssignments">> => list(capacity_assignment()()),
%%   <<"CapacityReservationName">> => string()
%% }
-type capacity_assignment_configuration() :: #{binary() => any()}.

%% Example:
%% batch_get_named_query_input() :: #{
%%   <<"NamedQueryIds">> := list(string()())
%% }
-type batch_get_named_query_input() :: #{binary() => any()}.

%% Example:
%% too_many_requests_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"Reason">> => list(any())
%% }
-type too_many_requests_exception() :: #{binary() => any()}.

%% Example:
%% calculation_statistics() :: #{
%%   <<"DpuExecutionInMillis">> => float(),
%%   <<"Progress">> => string()
%% }
-type calculation_statistics() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Tags">> => list(tag()())
%% }
-type list_tags_for_resource_output() :: #{binary() => any()}.

%% Example:
%% prepared_statement_summary() :: #{
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"StatementName">> => string()
%% }
-type prepared_statement_summary() :: #{binary() => any()}.

%% Example:
%% get_session_request() :: #{
%%   <<"SessionId">> := string()
%% }
-type get_session_request() :: #{binary() => any()}.

%% Example:
%% delete_notebook_output() :: #{

%% }
-type delete_notebook_output() :: #{binary() => any()}.

%% Example:
%% list_prepared_statements_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"WorkGroup">> := string()
%% }
-type list_prepared_statements_input() :: #{binary() => any()}.

%% Example:
%% session_configuration() :: #{
%%   <<"EncryptionConfiguration">> => encryption_configuration(),
%%   <<"ExecutionRole">> => string(),
%%   <<"IdleTimeoutSeconds">> => float(),
%%   <<"WorkingDirectory">> => string()
%% }
-type session_configuration() :: #{binary() => any()}.

%% Example:
%% cancel_capacity_reservation_input() :: #{
%%   <<"Name">> := string()
%% }
-type cancel_capacity_reservation_input() :: #{binary() => any()}.

%% Example:
%% data_catalog() :: #{
%%   <<"ConnectionType">> => list(any()),
%%   <<"Description">> => string(),
%%   <<"Error">> => string(),
%%   <<"Name">> => string(),
%%   <<"Parameters">> => map(),
%%   <<"Status">> => list(any()),
%%   <<"Type">> => list(any())
%% }
-type data_catalog() :: #{binary() => any()}.

%% Example:
%% create_prepared_statement_output() :: #{

%% }
-type create_prepared_statement_output() :: #{binary() => any()}.

%% Example:
%% result_reuse_configuration() :: #{
%%   <<"ResultReuseByAgeConfiguration">> => result_reuse_by_age_configuration()
%% }
-type result_reuse_configuration() :: #{binary() => any()}.

%% Example:
%% start_calculation_execution_response() :: #{
%%   <<"CalculationExecutionId">> => string(),
%%   <<"State">> => list(any())
%% }
-type start_calculation_execution_response() :: #{binary() => any()}.

%% Example:
%% batch_get_prepared_statement_input() :: #{
%%   <<"PreparedStatementNames">> := list(string()()),
%%   <<"WorkGroup">> := string()
%% }
-type batch_get_prepared_statement_input() :: #{binary() => any()}.

%% Example:
%% export_notebook_input() :: #{
%%   <<"NotebookId">> := string()
%% }
-type export_notebook_input() :: #{binary() => any()}.

%% Example:
%% list_calculation_executions_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SessionId">> := string(),
%%   <<"StateFilter">> => list(any())
%% }
-type list_calculation_executions_request() :: #{binary() => any()}.

%% Example:
%% terminate_session_request() :: #{
%%   <<"SessionId">> := string()
%% }
-type terminate_session_request() :: #{binary() => any()}.

%% Example:
%% create_data_catalog_input() :: #{
%%   <<"Description">> => string(),
%%   <<"Name">> := string(),
%%   <<"Parameters">> => map(),
%%   <<"Tags">> => list(tag()()),
%%   <<"Type">> := list(any())
%% }
-type create_data_catalog_input() :: #{binary() => any()}.

%% Example:
%% list_databases_input() :: #{
%%   <<"CatalogName">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"WorkGroup">> => string()
%% }
-type list_databases_input() :: #{binary() => any()}.

%% Example:
%% get_capacity_assignment_configuration_output() :: #{
%%   <<"CapacityAssignmentConfiguration">> => capacity_assignment_configuration()
%% }
-type get_capacity_assignment_configuration_output() :: #{binary() => any()}.

%% Example:
%% update_capacity_reservation_input() :: #{
%%   <<"Name">> := string(),
%%   <<"TargetDpus">> := integer()
%% }
-type update_capacity_reservation_input() :: #{binary() => any()}.

%% Example:
%% unprocessed_query_execution_id() :: #{
%%   <<"ErrorCode">> => string(),
%%   <<"ErrorMessage">> => string(),
%%   <<"QueryExecutionId">> => string()
%% }
-type unprocessed_query_execution_id() :: #{binary() => any()}.

%% Example:
%% terminate_session_response() :: #{
%%   <<"State">> => list(any())
%% }
-type terminate_session_response() :: #{binary() => any()}.

%% Example:
%% list_named_queries_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"WorkGroup">> => string()
%% }
-type list_named_queries_input() :: #{binary() => any()}.

%% Example:
%% create_named_query_input() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"Database">> := string(),
%%   <<"Description">> => string(),
%%   <<"Name">> := string(),
%%   <<"QueryString">> := string(),
%%   <<"WorkGroup">> => string()
%% }
-type create_named_query_input() :: #{binary() => any()}.

%% Example:
%% table_metadata() :: #{
%%   <<"Columns">> => list(column()()),
%%   <<"CreateTime">> => non_neg_integer(),
%%   <<"LastAccessTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Parameters">> => map(),
%%   <<"PartitionKeys">> => list(column()()),
%%   <<"TableType">> => string()
%% }
-type table_metadata() :: #{binary() => any()}.

%% Example:
%% list_sessions_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Sessions">> => list(session_summary()())
%% }
-type list_sessions_response() :: #{binary() => any()}.

%% Example:
%% managed_query_results_configuration_updates() :: #{
%%   <<"Enabled">> => boolean(),
%%   <<"EncryptionConfiguration">> => managed_query_results_encryption_configuration(),
%%   <<"RemoveEncryptionConfiguration">> => boolean()
%% }
-type managed_query_results_configuration_updates() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"ResourceName">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% get_database_output() :: #{
%%   <<"Database">> => database()
%% }
-type get_database_output() :: #{binary() => any()}.

%% Example:
%% update_named_query_input() :: #{
%%   <<"Description">> => string(),
%%   <<"Name">> := string(),
%%   <<"NamedQueryId">> := string(),
%%   <<"QueryString">> := string()
%% }
-type update_named_query_input() :: #{binary() => any()}.

%% Example:
%% calculation_configuration() :: #{
%%   <<"CodeBlock">> => string()
%% }
-type calculation_configuration() :: #{binary() => any()}.

%% Example:
%% list_table_metadata_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"TableMetadataList">> => list(table_metadata()())
%% }
-type list_table_metadata_output() :: #{binary() => any()}.

%% Example:
%% application_d_p_u_sizes() :: #{
%%   <<"ApplicationRuntimeId">> => string(),
%%   <<"SupportedDPUSizes">> => list(integer()())
%% }
-type application_d_p_u_sizes() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% query_execution_context() :: #{
%%   <<"Catalog">> => string(),
%%   <<"Database">> => string()
%% }
-type query_execution_context() :: #{binary() => any()}.

%% Example:
%% invalid_request_exception() :: #{
%%   <<"AthenaErrorCode">> => string(),
%%   <<"Message">> => string()
%% }
-type invalid_request_exception() :: #{binary() => any()}.

%% Example:
%% capacity_assignment() :: #{
%%   <<"WorkGroupNames">> => list(string()())
%% }
-type capacity_assignment() :: #{binary() => any()}.

%% Example:
%% calculation_result() :: #{
%%   <<"ResultS3Uri">> => string(),
%%   <<"ResultType">> => string(),
%%   <<"StdErrorS3Uri">> => string(),
%%   <<"StdOutS3Uri">> => string()
%% }
-type calculation_result() :: #{binary() => any()}.

%% Example:
%% row() :: #{
%%   <<"Data">> => list(datum()())
%% }
-type row() :: #{binary() => any()}.

%% Example:
%% update_capacity_reservation_output() :: #{

%% }
-type update_capacity_reservation_output() :: #{binary() => any()}.

%% Example:
%% list_databases_output() :: #{
%%   <<"DatabaseList">> => list(database()()),
%%   <<"NextToken">> => string()
%% }
-type list_databases_output() :: #{binary() => any()}.

%% Example:
%% get_data_catalog_input() :: #{
%%   <<"Name">> := string(),
%%   <<"WorkGroup">> => string()
%% }
-type get_data_catalog_input() :: #{binary() => any()}.

%% Example:
%% list_notebook_sessions_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"NotebookSessionsList">> => list(notebook_session_summary()())
%% }
-type list_notebook_sessions_response() :: #{binary() => any()}.

%% Example:
%% query_stage() :: #{
%%   <<"ExecutionTime">> => float(),
%%   <<"InputBytes">> => float(),
%%   <<"InputRows">> => float(),
%%   <<"OutputBytes">> => float(),
%%   <<"OutputRows">> => float(),
%%   <<"QueryStagePlan">> => query_stage_plan_node(),
%%   <<"StageId">> => float(),
%%   <<"State">> => string(),
%%   <<"SubStages">> => list(query_stage()())
%% }
-type query_stage() :: #{binary() => any()}.

%% Example:
%% list_executors_response() :: #{
%%   <<"ExecutorsSummary">> => list(executors_summary()()),
%%   <<"NextToken">> => string(),
%%   <<"SessionId">> => string()
%% }
-type list_executors_response() :: #{binary() => any()}.

%% Example:
%% delete_capacity_reservation_input() :: #{
%%   <<"Name">> := string()
%% }
-type delete_capacity_reservation_input() :: #{binary() => any()}.

%% Example:
%% create_notebook_output() :: #{
%%   <<"NotebookId">> => string()
%% }
-type create_notebook_output() :: #{binary() => any()}.

%% Example:
%% list_capacity_reservations_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_capacity_reservations_input() :: #{binary() => any()}.

%% Example:
%% query_execution() :: #{
%%   <<"EngineVersion">> => engine_version(),
%%   <<"ExecutionParameters">> => list(string()()),
%%   <<"ManagedQueryResultsConfiguration">> => managed_query_results_configuration(),
%%   <<"Query">> => string(),
%%   <<"QueryExecutionContext">> => query_execution_context(),
%%   <<"QueryExecutionId">> => string(),
%%   <<"QueryResultsS3AccessGrantsConfiguration">> => query_results_s3_access_grants_configuration(),
%%   <<"ResultConfiguration">> => result_configuration(),
%%   <<"ResultReuseConfiguration">> => result_reuse_configuration(),
%%   <<"StatementType">> => list(any()),
%%   <<"Statistics">> => query_execution_statistics(),
%%   <<"Status">> => query_execution_status(),
%%   <<"SubstatementType">> => string(),
%%   <<"WorkGroup">> => string()
%% }
-type query_execution() :: #{binary() => any()}.

%% Example:
%% get_table_metadata_output() :: #{
%%   <<"TableMetadata">> => table_metadata()
%% }
-type get_table_metadata_output() :: #{binary() => any()}.

%% Example:
%% create_capacity_reservation_input() :: #{
%%   <<"Name">> := string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"TargetDpus">> := integer()
%% }
-type create_capacity_reservation_input() :: #{binary() => any()}.

%% Example:
%% delete_data_catalog_output() :: #{
%%   <<"DataCatalog">> => data_catalog()
%% }
-type delete_data_catalog_output() :: #{binary() => any()}.

%% Example:
%% update_notebook_input() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"NotebookId">> := string(),
%%   <<"Payload">> := string(),
%%   <<"SessionId">> => string(),
%%   <<"Type">> := list(any())
%% }
-type update_notebook_input() :: #{binary() => any()}.

%% Example:
%% batch_get_named_query_output() :: #{
%%   <<"NamedQueries">> => list(named_query()()),
%%   <<"UnprocessedNamedQueryIds">> => list(unprocessed_named_query_id()())
%% }
-type batch_get_named_query_output() :: #{binary() => any()}.

%% Example:
%% get_database_input() :: #{
%%   <<"CatalogName">> := string(),
%%   <<"DatabaseName">> := string(),
%%   <<"WorkGroup">> => string()
%% }
-type get_database_input() :: #{binary() => any()}.

%% Example:
%% list_sessions_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"StateFilter">> => list(any()),
%%   <<"WorkGroup">> := string()
%% }
-type list_sessions_request() :: #{binary() => any()}.

%% Example:
%% get_calculation_execution_response() :: #{
%%   <<"CalculationExecutionId">> => string(),
%%   <<"Description">> => string(),
%%   <<"Result">> => calculation_result(),
%%   <<"SessionId">> => string(),
%%   <<"Statistics">> => calculation_statistics(),
%%   <<"Status">> => calculation_status(),
%%   <<"WorkingDirectory">> => string()
%% }
-type get_calculation_execution_response() :: #{binary() => any()}.

%% Example:
%% prepared_statement() :: #{
%%   <<"Description">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"QueryStatement">> => string(),
%%   <<"StatementName">> => string(),
%%   <<"WorkGroupName">> => string()
%% }
-type prepared_statement() :: #{binary() => any()}.

%% Example:
%% get_work_group_output() :: #{
%%   <<"WorkGroup">> => work_group()
%% }
-type get_work_group_output() :: #{binary() => any()}.

%% Example:
%% delete_work_group_output() :: #{

%% }
-type delete_work_group_output() :: #{binary() => any()}.

%% Example:
%% create_work_group_input() :: #{
%%   <<"Configuration">> => work_group_configuration(),
%%   <<"Description">> => string(),
%%   <<"Name">> := string(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_work_group_input() :: #{binary() => any()}.

%% Example:
%% tag_resource_input() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"Tags">> := list(tag()())
%% }
-type tag_resource_input() :: #{binary() => any()}.

%% Example:
%% batch_get_query_execution_input() :: #{
%%   <<"QueryExecutionIds">> := list(string()())
%% }
-type batch_get_query_execution_input() :: #{binary() => any()}.

%% Example:
%% list_application_d_p_u_sizes_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_application_d_p_u_sizes_input() :: #{binary() => any()}.

%% Example:
%% create_data_catalog_output() :: #{
%%   <<"DataCatalog">> => data_catalog()
%% }
-type create_data_catalog_output() :: #{binary() => any()}.

%% Example:
%% get_query_runtime_statistics_input() :: #{
%%   <<"QueryExecutionId">> := string()
%% }
-type get_query_runtime_statistics_input() :: #{binary() => any()}.

%% Example:
%% unprocessed_prepared_statement_name() :: #{
%%   <<"ErrorCode">> => string(),
%%   <<"ErrorMessage">> => string(),
%%   <<"StatementName">> => string()
%% }
-type unprocessed_prepared_statement_name() :: #{binary() => any()}.

%% Example:
%% capacity_allocation() :: #{
%%   <<"RequestCompletionTime">> => non_neg_integer(),
%%   <<"RequestTime">> => non_neg_integer(),
%%   <<"Status">> => list(any()),
%%   <<"StatusMessage">> => string()
%% }
-type capacity_allocation() :: #{binary() => any()}.

%% Example:
%% query_execution_status() :: #{
%%   <<"AthenaError">> => athena_error(),
%%   <<"CompletionDateTime">> => non_neg_integer(),
%%   <<"State">> => list(any()),
%%   <<"StateChangeReason">> => string(),
%%   <<"SubmissionDateTime">> => non_neg_integer()
%% }
-type query_execution_status() :: #{binary() => any()}.

%% Example:
%% executors_summary() :: #{
%%   <<"ExecutorId">> => string(),
%%   <<"ExecutorSize">> => float(),
%%   <<"ExecutorState">> => list(any()),
%%   <<"ExecutorType">> => list(any()),
%%   <<"StartDateTime">> => float(),
%%   <<"TerminationDateTime">> => float()
%% }
-type executors_summary() :: #{binary() => any()}.

%% Example:
%% tag_resource_output() :: #{

%% }
-type tag_resource_output() :: #{binary() => any()}.

%% Example:
%% update_work_group_input() :: #{
%%   <<"ConfigurationUpdates">> => work_group_configuration_updates(),
%%   <<"Description">> => string(),
%%   <<"State">> => list(any()),
%%   <<"WorkGroup">> := string()
%% }
-type update_work_group_input() :: #{binary() => any()}.

%% Example:
%% put_capacity_assignment_configuration_output() :: #{

%% }
-type put_capacity_assignment_configuration_output() :: #{binary() => any()}.

%% Example:
%% update_data_catalog_input() :: #{
%%   <<"Description">> => string(),
%%   <<"Name">> := string(),
%%   <<"Parameters">> => map(),
%%   <<"Type">> := list(any())
%% }
-type update_data_catalog_input() :: #{binary() => any()}.

%% Example:
%% get_calculation_execution_code_response() :: #{
%%   <<"CodeBlock">> => string()
%% }
-type get_calculation_execution_code_response() :: #{binary() => any()}.

%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% work_group_configuration() :: #{
%%   <<"AdditionalConfiguration">> => string(),
%%   <<"BytesScannedCutoffPerQuery">> => float(),
%%   <<"CustomerContentEncryptionConfiguration">> => customer_content_encryption_configuration(),
%%   <<"EnableMinimumEncryptionConfiguration">> => boolean(),
%%   <<"EnforceWorkGroupConfiguration">> => boolean(),
%%   <<"EngineVersion">> => engine_version(),
%%   <<"ExecutionRole">> => string(),
%%   <<"IdentityCenterConfiguration">> => identity_center_configuration(),
%%   <<"ManagedQueryResultsConfiguration">> => managed_query_results_configuration(),
%%   <<"PublishCloudWatchMetricsEnabled">> => boolean(),
%%   <<"QueryResultsS3AccessGrantsConfiguration">> => query_results_s3_access_grants_configuration(),
%%   <<"RequesterPaysEnabled">> => boolean(),
%%   <<"ResultConfiguration">> => result_configuration()
%% }
-type work_group_configuration() :: #{binary() => any()}.

%% Example:
%% get_calculation_execution_request() :: #{
%%   <<"CalculationExecutionId">> := string()
%% }
-type get_calculation_execution_request() :: #{binary() => any()}.

%% Example:
%% work_group_configuration_updates() :: #{
%%   <<"AdditionalConfiguration">> => string(),
%%   <<"BytesScannedCutoffPerQuery">> => float(),
%%   <<"CustomerContentEncryptionConfiguration">> => customer_content_encryption_configuration(),
%%   <<"EnableMinimumEncryptionConfiguration">> => boolean(),
%%   <<"EnforceWorkGroupConfiguration">> => boolean(),
%%   <<"EngineVersion">> => engine_version(),
%%   <<"ExecutionRole">> => string(),
%%   <<"ManagedQueryResultsConfigurationUpdates">> => managed_query_results_configuration_updates(),
%%   <<"PublishCloudWatchMetricsEnabled">> => boolean(),
%%   <<"QueryResultsS3AccessGrantsConfiguration">> => query_results_s3_access_grants_configuration(),
%%   <<"RemoveBytesScannedCutoffPerQuery">> => boolean(),
%%   <<"RemoveCustomerContentEncryptionConfiguration">> => boolean(),
%%   <<"RequesterPaysEnabled">> => boolean(),
%%   <<"ResultConfigurationUpdates">> => result_configuration_updates()
%% }
-type work_group_configuration_updates() :: #{binary() => any()}.

%% Example:
%% get_work_group_input() :: #{
%%   <<"WorkGroup">> := string()
%% }
-type get_work_group_input() :: #{binary() => any()}.

%% Example:
%% start_query_execution_input() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"ExecutionParameters">> => list(string()()),
%%   <<"QueryExecutionContext">> => query_execution_context(),
%%   <<"QueryString">> := string(),
%%   <<"ResultConfiguration">> => result_configuration(),
%%   <<"ResultReuseConfiguration">> => result_reuse_configuration(),
%%   <<"WorkGroup">> => string()
%% }
-type start_query_execution_input() :: #{binary() => any()}.

%% Example:
%% list_query_executions_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"WorkGroup">> => string()
%% }
-type list_query_executions_input() :: #{binary() => any()}.

%% Example:
%% update_prepared_statement_output() :: #{

%% }
-type update_prepared_statement_output() :: #{binary() => any()}.

%% Example:
%% start_session_response() :: #{
%%   <<"SessionId">> => string(),
%%   <<"State">> => list(any())
%% }
-type start_session_response() :: #{binary() => any()}.

%% Example:
%% update_data_catalog_output() :: #{

%% }
-type update_data_catalog_output() :: #{binary() => any()}.

%% Example:
%% get_capacity_reservation_output() :: #{
%%   <<"CapacityReservation">> => capacity_reservation()
%% }
-type get_capacity_reservation_output() :: #{binary() => any()}.

%% Example:
%% result_configuration() :: #{
%%   <<"AclConfiguration">> => acl_configuration(),
%%   <<"EncryptionConfiguration">> => encryption_configuration(),
%%   <<"ExpectedBucketOwner">> => string(),
%%   <<"OutputLocation">> => string()
%% }
-type result_configuration() :: #{binary() => any()}.

%% Example:
%% get_calculation_execution_code_request() :: #{
%%   <<"CalculationExecutionId">> := string()
%% }
-type get_calculation_execution_code_request() :: #{binary() => any()}.

%% Example:
%% query_runtime_statistics_rows() :: #{
%%   <<"InputBytes">> => float(),
%%   <<"InputRows">> => float(),
%%   <<"OutputBytes">> => float(),
%%   <<"OutputRows">> => float()
%% }
-type query_runtime_statistics_rows() :: #{binary() => any()}.

%% Example:
%% import_notebook_input() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"Name">> := string(),
%%   <<"NotebookS3LocationUri">> => string(),
%%   <<"Payload">> => string(),
%%   <<"Type">> := list(any()),
%%   <<"WorkGroup">> := string()
%% }
-type import_notebook_input() :: #{binary() => any()}.

%% Example:
%% untag_resource_input() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"TagKeys">> := list(string()())
%% }
-type untag_resource_input() :: #{binary() => any()}.

%% Example:
%% filter_definition() :: #{
%%   <<"Name">> => string()
%% }
-type filter_definition() :: #{binary() => any()}.

%% Example:
%% create_presigned_notebook_url_response() :: #{
%%   <<"AuthToken">> => string(),
%%   <<"AuthTokenExpirationTime">> => float(),
%%   <<"NotebookUrl">> => string()
%% }
-type create_presigned_notebook_url_response() :: #{binary() => any()}.

%% Example:
%% get_query_runtime_statistics_output() :: #{
%%   <<"QueryRuntimeStatistics">> => query_runtime_statistics()
%% }
-type get_query_runtime_statistics_output() :: #{binary() => any()}.

%% Example:
%% import_notebook_output() :: #{
%%   <<"NotebookId">> => string()
%% }
-type import_notebook_output() :: #{binary() => any()}.

%% Example:
%% result_reuse_by_age_configuration() :: #{
%%   <<"Enabled">> => boolean(),
%%   <<"MaxAgeInMinutes">> => integer()
%% }
-type result_reuse_by_age_configuration() :: #{binary() => any()}.

%% Example:
%% delete_prepared_statement_input() :: #{
%%   <<"StatementName">> := string(),
%%   <<"WorkGroup">> := string()
%% }
-type delete_prepared_statement_input() :: #{binary() => any()}.

%% Example:
%% list_calculation_executions_response() :: #{
%%   <<"Calculations">> => list(calculation_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_calculation_executions_response() :: #{binary() => any()}.

%% Example:
%% result_set() :: #{
%%   <<"ResultSetMetadata">> => result_set_metadata(),
%%   <<"Rows">> => list(row()())
%% }
-type result_set() :: #{binary() => any()}.

%% Example:
%% get_query_results_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"QueryExecutionId">> := string(),
%%   <<"QueryResultType">> => list(any())
%% }
-type get_query_results_input() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ResourceARN">> := string()
%% }
-type list_tags_for_resource_input() :: #{binary() => any()}.

%% Example:
%% untag_resource_output() :: #{

%% }
-type untag_resource_output() :: #{binary() => any()}.

%% Example:
%% get_session_status_response() :: #{
%%   <<"SessionId">> => string(),
%%   <<"Status">> => session_status()
%% }
-type get_session_status_response() :: #{binary() => any()}.

%% Example:
%% identity_center_configuration() :: #{
%%   <<"EnableIdentityCenter">> => boolean(),
%%   <<"IdentityCenterInstanceArn">> => string()
%% }
-type identity_center_configuration() :: #{binary() => any()}.

%% Example:
%% stop_calculation_execution_request() :: #{
%%   <<"CalculationExecutionId">> := string()
%% }
-type stop_calculation_execution_request() :: #{binary() => any()}.

%% Example:
%% query_results_s3_access_grants_configuration() :: #{
%%   <<"AuthenticationType">> => list(any()),
%%   <<"CreateUserLevelPrefix">> => boolean(),
%%   <<"EnableS3AccessGrants">> => boolean()
%% }
-type query_results_s3_access_grants_configuration() :: #{binary() => any()}.

%% Example:
%% create_presigned_notebook_url_request() :: #{
%%   <<"SessionId">> := string()
%% }
-type create_presigned_notebook_url_request() :: #{binary() => any()}.

%% Example:
%% calculation_summary() :: #{
%%   <<"CalculationExecutionId">> => string(),
%%   <<"Description">> => string(),
%%   <<"Status">> => calculation_status()
%% }
-type calculation_summary() :: #{binary() => any()}.

%% Example:
%% list_work_groups_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"WorkGroups">> => list(work_group_summary()())
%% }
-type list_work_groups_output() :: #{binary() => any()}.

%% Example:
%% batch_get_prepared_statement_output() :: #{
%%   <<"PreparedStatements">> => list(prepared_statement()()),
%%   <<"UnprocessedPreparedStatementNames">> => list(unprocessed_prepared_statement_name()())
%% }
-type batch_get_prepared_statement_output() :: #{binary() => any()}.

%% Example:
%% query_runtime_statistics_timeline() :: #{
%%   <<"EngineExecutionTimeInMillis">> => float(),
%%   <<"QueryPlanningTimeInMillis">> => float(),
%%   <<"QueryQueueTimeInMillis">> => float(),
%%   <<"ServicePreProcessingTimeInMillis">> => float(),
%%   <<"ServiceProcessingTimeInMillis">> => float(),
%%   <<"TotalExecutionTimeInMillis">> => float()
%% }
-type query_runtime_statistics_timeline() :: #{binary() => any()}.

%% Example:
%% list_data_catalogs_output() :: #{
%%   <<"DataCatalogsSummary">> => list(data_catalog_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_data_catalogs_output() :: #{binary() => any()}.

%% Example:
%% delete_notebook_input() :: #{
%%   <<"NotebookId">> := string()
%% }
-type delete_notebook_input() :: #{binary() => any()}.

%% Example:
%% start_query_execution_output() :: #{
%%   <<"QueryExecutionId">> => string()
%% }
-type start_query_execution_output() :: #{binary() => any()}.

%% Example:
%% list_executors_request() :: #{
%%   <<"ExecutorStateFilter">> => list(any()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SessionId">> := string()
%% }
-type list_executors_request() :: #{binary() => any()}.

%% Example:
%% delete_named_query_input() :: #{
%%   <<"NamedQueryId">> := string()
%% }
-type delete_named_query_input() :: #{binary() => any()}.

%% Example:
%% unprocessed_named_query_id() :: #{
%%   <<"ErrorCode">> => string(),
%%   <<"ErrorMessage">> => string(),
%%   <<"NamedQueryId">> => string()
%% }
-type unprocessed_named_query_id() :: #{binary() => any()}.

%% Example:
%% work_group_summary() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"EngineVersion">> => engine_version(),
%%   <<"IdentityCenterApplicationArn">> => string(),
%%   <<"Name">> => string(),
%%   <<"State">> => list(any())
%% }
-type work_group_summary() :: #{binary() => any()}.

%% Example:
%% list_work_groups_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_work_groups_input() :: #{binary() => any()}.

%% Example:
%% get_session_status_request() :: #{
%%   <<"SessionId">> := string()
%% }
-type get_session_status_request() :: #{binary() => any()}.

%% Example:
%% cancel_capacity_reservation_output() :: #{

%% }
-type cancel_capacity_reservation_output() :: #{binary() => any()}.

%% Example:
%% managed_query_results_encryption_configuration() :: #{
%%   <<"KmsKey">> => string()
%% }
-type managed_query_results_encryption_configuration() :: #{binary() => any()}.

%% Example:
%% list_query_executions_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"QueryExecutionIds">> => list(string()())
%% }
-type list_query_executions_output() :: #{binary() => any()}.

%% Example:
%% calculation_status() :: #{
%%   <<"CompletionDateTime">> => non_neg_integer(),
%%   <<"State">> => list(any()),
%%   <<"StateChangeReason">> => string(),
%%   <<"SubmissionDateTime">> => non_neg_integer()
%% }
-type calculation_status() :: #{binary() => any()}.

%% Example:
%% column_info() :: #{
%%   <<"CaseSensitive">> => boolean(),
%%   <<"CatalogName">> => string(),
%%   <<"Label">> => string(),
%%   <<"Name">> => string(),
%%   <<"Nullable">> => list(any()),
%%   <<"Precision">> => integer(),
%%   <<"Scale">> => integer(),
%%   <<"SchemaName">> => string(),
%%   <<"TableName">> => string(),
%%   <<"Type">> => string()
%% }
-type column_info() :: #{binary() => any()}.

%% Example:
%% list_data_catalogs_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"WorkGroup">> => string()
%% }
-type list_data_catalogs_input() :: #{binary() => any()}.

%% Example:
%% batch_get_query_execution_output() :: #{
%%   <<"QueryExecutions">> => list(query_execution()()),
%%   <<"UnprocessedQueryExecutionIds">> => list(unprocessed_query_execution_id()())
%% }
-type batch_get_query_execution_output() :: #{binary() => any()}.

%% Example:
%% session_status() :: #{
%%   <<"EndDateTime">> => non_neg_integer(),
%%   <<"IdleSinceDateTime">> => non_neg_integer(),
%%   <<"LastModifiedDateTime">> => non_neg_integer(),
%%   <<"StartDateTime">> => non_neg_integer(),
%%   <<"State">> => list(any()),
%%   <<"StateChangeReason">> => string()
%% }
-type session_status() :: #{binary() => any()}.

%% Example:
%% start_calculation_execution_request() :: #{
%%   <<"CalculationConfiguration">> => calculation_configuration(),
%%   <<"ClientRequestToken">> => string(),
%%   <<"CodeBlock">> => string(),
%%   <<"Description">> => string(),
%%   <<"SessionId">> := string()
%% }
-type start_calculation_execution_request() :: #{binary() => any()}.

%% Example:
%% get_table_metadata_input() :: #{
%%   <<"CatalogName">> := string(),
%%   <<"DatabaseName">> := string(),
%%   <<"TableName">> := string(),
%%   <<"WorkGroup">> => string()
%% }
-type get_table_metadata_input() :: #{binary() => any()}.

%% Example:
%% list_engine_versions_output() :: #{
%%   <<"EngineVersions">> => list(engine_version()()),
%%   <<"NextToken">> => string()
%% }
-type list_engine_versions_output() :: #{binary() => any()}.

%% Example:
%% notebook_metadata() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"NotebookId">> => string(),
%%   <<"Type">> => list(any()),
%%   <<"WorkGroup">> => string()
%% }
-type notebook_metadata() :: #{binary() => any()}.

%% Example:
%% create_capacity_reservation_output() :: #{

%% }
-type create_capacity_reservation_output() :: #{binary() => any()}.

%% Example:
%% get_named_query_output() :: #{
%%   <<"NamedQuery">> => named_query()
%% }
-type get_named_query_output() :: #{binary() => any()}.

%% Example:
%% acl_configuration() :: #{
%%   <<"S3AclOption">> => list(any())
%% }
-type acl_configuration() :: #{binary() => any()}.

%% Example:
%% list_named_queries_output() :: #{
%%   <<"NamedQueryIds">> => list(string()()),
%%   <<"NextToken">> => string()
%% }
-type list_named_queries_output() :: #{binary() => any()}.

%% Example:
%% delete_named_query_output() :: #{

%% }
-type delete_named_query_output() :: #{binary() => any()}.

%% Example:
%% session_statistics() :: #{
%%   <<"DpuExecutionInMillis">> => float()
%% }
-type session_statistics() :: #{binary() => any()}.

%% Example:
%% list_engine_versions_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_engine_versions_input() :: #{binary() => any()}.

%% Example:
%% create_named_query_output() :: #{
%%   <<"NamedQueryId">> => string()
%% }
-type create_named_query_output() :: #{binary() => any()}.

%% Example:
%% list_prepared_statements_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PreparedStatements">> => list(prepared_statement_summary()())
%% }
-type list_prepared_statements_output() :: #{binary() => any()}.

%% Example:
%% session_already_exists_exception() :: #{
%%   <<"Message">> => string()
%% }
-type session_already_exists_exception() :: #{binary() => any()}.

%% Example:
%% customer_content_encryption_configuration() :: #{
%%   <<"KmsKey">> => string()
%% }
-type customer_content_encryption_configuration() :: #{binary() => any()}.

%% Example:
%% delete_capacity_reservation_output() :: #{

%% }
-type delete_capacity_reservation_output() :: #{binary() => any()}.

%% Example:
%% list_notebook_metadata_input() :: #{
%%   <<"Filters">> => filter_definition(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"WorkGroup">> := string()
%% }
-type list_notebook_metadata_input() :: #{binary() => any()}.

%% Example:
%% delete_work_group_input() :: #{
%%   <<"RecursiveDeleteOption">> => boolean(),
%%   <<"WorkGroup">> := string()
%% }
-type delete_work_group_input() :: #{binary() => any()}.

%% Example:
%% query_execution_statistics() :: #{
%%   <<"DataManifestLocation">> => string(),
%%   <<"DataScannedInBytes">> => float(),
%%   <<"EngineExecutionTimeInMillis">> => float(),
%%   <<"QueryPlanningTimeInMillis">> => float(),
%%   <<"QueryQueueTimeInMillis">> => float(),
%%   <<"ResultReuseInformation">> => result_reuse_information(),
%%   <<"ServicePreProcessingTimeInMillis">> => float(),
%%   <<"ServiceProcessingTimeInMillis">> => float(),
%%   <<"TotalExecutionTimeInMillis">> => float()
%% }
-type query_execution_statistics() :: #{binary() => any()}.

%% Example:
%% get_prepared_statement_output() :: #{
%%   <<"PreparedStatement">> => prepared_statement()
%% }
-type get_prepared_statement_output() :: #{binary() => any()}.

-type batch_get_named_query_errors() ::
    internal_server_exception() | 
    invalid_request_exception().

-type batch_get_prepared_statement_errors() ::
    internal_server_exception() | 
    invalid_request_exception().

-type batch_get_query_execution_errors() ::
    internal_server_exception() | 
    invalid_request_exception().

-type cancel_capacity_reservation_errors() ::
    internal_server_exception() | 
    invalid_request_exception().

-type create_capacity_reservation_errors() ::
    internal_server_exception() | 
    invalid_request_exception().

-type create_data_catalog_errors() ::
    internal_server_exception() | 
    invalid_request_exception().

-type create_named_query_errors() ::
    internal_server_exception() | 
    invalid_request_exception().

-type create_notebook_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    too_many_requests_exception().

-type create_prepared_statement_errors() ::
    internal_server_exception() | 
    invalid_request_exception().

-type create_presigned_notebook_url_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type create_work_group_errors() ::
    internal_server_exception() | 
    invalid_request_exception().

-type delete_capacity_reservation_errors() ::
    internal_server_exception() | 
    invalid_request_exception().

-type delete_data_catalog_errors() ::
    internal_server_exception() | 
    invalid_request_exception().

-type delete_named_query_errors() ::
    internal_server_exception() | 
    invalid_request_exception().

-type delete_notebook_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    too_many_requests_exception().

-type delete_prepared_statement_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type delete_work_group_errors() ::
    internal_server_exception() | 
    invalid_request_exception().

-type export_notebook_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    too_many_requests_exception().

-type get_calculation_execution_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type get_calculation_execution_code_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type get_calculation_execution_status_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type get_capacity_assignment_configuration_errors() ::
    internal_server_exception() | 
    invalid_request_exception().

-type get_capacity_reservation_errors() ::
    internal_server_exception() | 
    invalid_request_exception().

-type get_data_catalog_errors() ::
    internal_server_exception() | 
    invalid_request_exception().

-type get_database_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    metadata_exception().

-type get_named_query_errors() ::
    internal_server_exception() | 
    invalid_request_exception().

-type get_notebook_metadata_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    too_many_requests_exception().

-type get_prepared_statement_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type get_query_execution_errors() ::
    internal_server_exception() | 
    invalid_request_exception().

-type get_query_results_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    too_many_requests_exception().

-type get_query_runtime_statistics_errors() ::
    internal_server_exception() | 
    invalid_request_exception().

-type get_session_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type get_session_status_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type get_table_metadata_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    metadata_exception().

-type get_work_group_errors() ::
    internal_server_exception() | 
    invalid_request_exception().

-type import_notebook_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    too_many_requests_exception().

-type list_application_d_p_u_sizes_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    too_many_requests_exception().

-type list_calculation_executions_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type list_capacity_reservations_errors() ::
    internal_server_exception() | 
    invalid_request_exception().

-type list_data_catalogs_errors() ::
    internal_server_exception() | 
    invalid_request_exception().

-type list_databases_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    metadata_exception().

-type list_engine_versions_errors() ::
    internal_server_exception() | 
    invalid_request_exception().

-type list_executors_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type list_named_queries_errors() ::
    internal_server_exception() | 
    invalid_request_exception().

-type list_notebook_metadata_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    too_many_requests_exception().

-type list_notebook_sessions_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type list_prepared_statements_errors() ::
    internal_server_exception() | 
    invalid_request_exception().

-type list_query_executions_errors() ::
    internal_server_exception() | 
    invalid_request_exception().

-type list_sessions_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type list_table_metadata_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    metadata_exception().

-type list_tags_for_resource_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type list_work_groups_errors() ::
    internal_server_exception() | 
    invalid_request_exception().

-type put_capacity_assignment_configuration_errors() ::
    internal_server_exception() | 
    invalid_request_exception().

-type start_calculation_execution_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type start_query_execution_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    too_many_requests_exception().

-type start_session_errors() ::
    session_already_exists_exception() | 
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type stop_calculation_execution_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type stop_query_execution_errors() ::
    internal_server_exception() | 
    invalid_request_exception().

-type tag_resource_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type terminate_session_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type update_capacity_reservation_errors() ::
    internal_server_exception() | 
    invalid_request_exception().

-type update_data_catalog_errors() ::
    internal_server_exception() | 
    invalid_request_exception().

-type update_named_query_errors() ::
    internal_server_exception() | 
    invalid_request_exception().

-type update_notebook_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    too_many_requests_exception().

-type update_notebook_metadata_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    too_many_requests_exception().

-type update_prepared_statement_errors() ::
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type update_work_group_errors() ::
    internal_server_exception() | 
    invalid_request_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Returns the details of a single named query or a list of up to 50
%% queries, which you
%% provide as an array of query ID strings.
%%
%% Requires you to have access to the workgroup in
%% which the queries were saved. Use `ListNamedQueriesInput' to get the
%% list of named query IDs in the specified workgroup. If information could
%% not be
%% retrieved for a submitted query ID, information about the query ID
%% submitted is listed
%% under `UnprocessedNamedQueryId'. Named queries differ from executed
%% queries. Use `BatchGetQueryExecutionInput' to get details about each
%% unique query execution, and `ListQueryExecutionsInput' to get a list
%% of
%% query execution IDs.
-spec batch_get_named_query(aws_client:aws_client(), batch_get_named_query_input()) ->
    {ok, batch_get_named_query_output(), tuple()} |
    {error, any()} |
    {error, batch_get_named_query_errors(), tuple()}.
batch_get_named_query(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_named_query(Client, Input, []).

-spec batch_get_named_query(aws_client:aws_client(), batch_get_named_query_input(), proplists:proplist()) ->
    {ok, batch_get_named_query_output(), tuple()} |
    {error, any()} |
    {error, batch_get_named_query_errors(), tuple()}.
batch_get_named_query(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetNamedQuery">>, Input, Options).

%% @doc Returns the details of a single prepared statement or a list of up to
%% 256 prepared
%% statements for the array of prepared statement names that you provide.
%%
%% Requires you to
%% have access to the workgroup to which the prepared statements belong. If a
%% prepared
%% statement cannot be retrieved for the name specified, the statement is
%% listed in
%% `UnprocessedPreparedStatementNames'.
-spec batch_get_prepared_statement(aws_client:aws_client(), batch_get_prepared_statement_input()) ->
    {ok, batch_get_prepared_statement_output(), tuple()} |
    {error, any()} |
    {error, batch_get_prepared_statement_errors(), tuple()}.
batch_get_prepared_statement(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_prepared_statement(Client, Input, []).

-spec batch_get_prepared_statement(aws_client:aws_client(), batch_get_prepared_statement_input(), proplists:proplist()) ->
    {ok, batch_get_prepared_statement_output(), tuple()} |
    {error, any()} |
    {error, batch_get_prepared_statement_errors(), tuple()}.
batch_get_prepared_statement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetPreparedStatement">>, Input, Options).

%% @doc Returns the details of a single query execution or a list of up to 50
%% query
%% executions, which you provide as an array of query execution ID strings.
%%
%% Requires you to
%% have access to the workgroup in which the queries ran. To get a list of
%% query execution
%% IDs, use `ListQueryExecutionsInput$WorkGroup'. Query executions differ
%% from named (saved) queries. Use `BatchGetNamedQueryInput' to get
%% details
%% about named queries.
-spec batch_get_query_execution(aws_client:aws_client(), batch_get_query_execution_input()) ->
    {ok, batch_get_query_execution_output(), tuple()} |
    {error, any()} |
    {error, batch_get_query_execution_errors(), tuple()}.
batch_get_query_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_query_execution(Client, Input, []).

-spec batch_get_query_execution(aws_client:aws_client(), batch_get_query_execution_input(), proplists:proplist()) ->
    {ok, batch_get_query_execution_output(), tuple()} |
    {error, any()} |
    {error, batch_get_query_execution_errors(), tuple()}.
batch_get_query_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetQueryExecution">>, Input, Options).

%% @doc Cancels the capacity reservation with the specified name.
%%
%% Cancelled reservations
%% remain in your account and will be deleted 45 days after cancellation.
%% During the 45
%% days, you cannot re-purpose or reuse a reservation that has been
%% cancelled, but you can
%% refer to its tags and view it for historical reference.
-spec cancel_capacity_reservation(aws_client:aws_client(), cancel_capacity_reservation_input()) ->
    {ok, cancel_capacity_reservation_output(), tuple()} |
    {error, any()} |
    {error, cancel_capacity_reservation_errors(), tuple()}.
cancel_capacity_reservation(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_capacity_reservation(Client, Input, []).

-spec cancel_capacity_reservation(aws_client:aws_client(), cancel_capacity_reservation_input(), proplists:proplist()) ->
    {ok, cancel_capacity_reservation_output(), tuple()} |
    {error, any()} |
    {error, cancel_capacity_reservation_errors(), tuple()}.
cancel_capacity_reservation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelCapacityReservation">>, Input, Options).

%% @doc Creates a capacity reservation with the specified name and number of
%% requested data
%% processing units.
-spec create_capacity_reservation(aws_client:aws_client(), create_capacity_reservation_input()) ->
    {ok, create_capacity_reservation_output(), tuple()} |
    {error, any()} |
    {error, create_capacity_reservation_errors(), tuple()}.
create_capacity_reservation(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_capacity_reservation(Client, Input, []).

-spec create_capacity_reservation(aws_client:aws_client(), create_capacity_reservation_input(), proplists:proplist()) ->
    {ok, create_capacity_reservation_output(), tuple()} |
    {error, any()} |
    {error, create_capacity_reservation_errors(), tuple()}.
create_capacity_reservation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCapacityReservation">>, Input, Options).

%% @doc Creates (registers) a data catalog with the specified name and
%% properties.
%%
%% Catalogs
%% created are visible to all users of the same Amazon Web Services account.
%%
%% For a `FEDERATED' catalog, this API operation creates the following
%% resources.
%%
%% CFN Stack Name with a maximum length of 128 characters and prefix
%% `athenafederatedcatalog-CATALOG_NAME_SANITIZED' with length 23
%% characters.
%%
%% Lambda Function Name with a maximum length of 64 characters and prefix
%% `athenafederatedcatalog_CATALOG_NAME_SANITIZED' with length 23
%% characters.
%%
%% Glue Connection Name with a maximum length of 255 characters and a prefix
%% `athenafederatedcatalog_CATALOG_NAME_SANITIZED' with length 23
%% characters.
-spec create_data_catalog(aws_client:aws_client(), create_data_catalog_input()) ->
    {ok, create_data_catalog_output(), tuple()} |
    {error, any()} |
    {error, create_data_catalog_errors(), tuple()}.
create_data_catalog(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_data_catalog(Client, Input, []).

-spec create_data_catalog(aws_client:aws_client(), create_data_catalog_input(), proplists:proplist()) ->
    {ok, create_data_catalog_output(), tuple()} |
    {error, any()} |
    {error, create_data_catalog_errors(), tuple()}.
create_data_catalog(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDataCatalog">>, Input, Options).

%% @doc Creates a named query in the specified workgroup.
%%
%% Requires that you have access to the
%% workgroup.
-spec create_named_query(aws_client:aws_client(), create_named_query_input()) ->
    {ok, create_named_query_output(), tuple()} |
    {error, any()} |
    {error, create_named_query_errors(), tuple()}.
create_named_query(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_named_query(Client, Input, []).

-spec create_named_query(aws_client:aws_client(), create_named_query_input(), proplists:proplist()) ->
    {ok, create_named_query_output(), tuple()} |
    {error, any()} |
    {error, create_named_query_errors(), tuple()}.
create_named_query(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateNamedQuery">>, Input, Options).

%% @doc Creates an empty `ipynb' file in the specified Apache Spark
%% enabled
%% workgroup.
%%
%% Throws an error if a file in the workgroup with the same name already
%% exists.
-spec create_notebook(aws_client:aws_client(), create_notebook_input()) ->
    {ok, create_notebook_output(), tuple()} |
    {error, any()} |
    {error, create_notebook_errors(), tuple()}.
create_notebook(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_notebook(Client, Input, []).

-spec create_notebook(aws_client:aws_client(), create_notebook_input(), proplists:proplist()) ->
    {ok, create_notebook_output(), tuple()} |
    {error, any()} |
    {error, create_notebook_errors(), tuple()}.
create_notebook(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateNotebook">>, Input, Options).

%% @doc Creates a prepared statement for use with SQL queries in Athena.
-spec create_prepared_statement(aws_client:aws_client(), create_prepared_statement_input()) ->
    {ok, create_prepared_statement_output(), tuple()} |
    {error, any()} |
    {error, create_prepared_statement_errors(), tuple()}.
create_prepared_statement(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_prepared_statement(Client, Input, []).

-spec create_prepared_statement(aws_client:aws_client(), create_prepared_statement_input(), proplists:proplist()) ->
    {ok, create_prepared_statement_output(), tuple()} |
    {error, any()} |
    {error, create_prepared_statement_errors(), tuple()}.
create_prepared_statement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePreparedStatement">>, Input, Options).

%% @doc Gets an authentication token and the URL at which the notebook can be
%% accessed.
%%
%% During
%% programmatic access, `CreatePresignedNotebookUrl' must be called every
%% 10
%% minutes to refresh the authentication token. For information about
%% granting programmatic
%% access, see Grant
%% programmatic access:
%% https://docs.aws.amazon.com/athena/latest/ug/setting-up.html#setting-up-grant-programmatic-access.
-spec create_presigned_notebook_url(aws_client:aws_client(), create_presigned_notebook_url_request()) ->
    {ok, create_presigned_notebook_url_response(), tuple()} |
    {error, any()} |
    {error, create_presigned_notebook_url_errors(), tuple()}.
create_presigned_notebook_url(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_presigned_notebook_url(Client, Input, []).

-spec create_presigned_notebook_url(aws_client:aws_client(), create_presigned_notebook_url_request(), proplists:proplist()) ->
    {ok, create_presigned_notebook_url_response(), tuple()} |
    {error, any()} |
    {error, create_presigned_notebook_url_errors(), tuple()}.
create_presigned_notebook_url(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePresignedNotebookUrl">>, Input, Options).

%% @doc Creates a workgroup with the specified name.
%%
%% A workgroup can be an Apache Spark
%% enabled workgroup or an Athena SQL workgroup.
-spec create_work_group(aws_client:aws_client(), create_work_group_input()) ->
    {ok, create_work_group_output(), tuple()} |
    {error, any()} |
    {error, create_work_group_errors(), tuple()}.
create_work_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_work_group(Client, Input, []).

-spec create_work_group(aws_client:aws_client(), create_work_group_input(), proplists:proplist()) ->
    {ok, create_work_group_output(), tuple()} |
    {error, any()} |
    {error, create_work_group_errors(), tuple()}.
create_work_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateWorkGroup">>, Input, Options).

%% @doc Deletes a cancelled capacity reservation.
%%
%% A reservation must be cancelled before it
%% can be deleted. A deleted reservation is immediately removed from your
%% account and can
%% no longer be referenced, including by its ARN. A deleted reservation
%% cannot be called by
%% `GetCapacityReservation', and deleted reservations do not appear in
%% the
%% output of `ListCapacityReservations'.
-spec delete_capacity_reservation(aws_client:aws_client(), delete_capacity_reservation_input()) ->
    {ok, delete_capacity_reservation_output(), tuple()} |
    {error, any()} |
    {error, delete_capacity_reservation_errors(), tuple()}.
delete_capacity_reservation(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_capacity_reservation(Client, Input, []).

-spec delete_capacity_reservation(aws_client:aws_client(), delete_capacity_reservation_input(), proplists:proplist()) ->
    {ok, delete_capacity_reservation_output(), tuple()} |
    {error, any()} |
    {error, delete_capacity_reservation_errors(), tuple()}.
delete_capacity_reservation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCapacityReservation">>, Input, Options).

%% @doc Deletes a data catalog.
-spec delete_data_catalog(aws_client:aws_client(), delete_data_catalog_input()) ->
    {ok, delete_data_catalog_output(), tuple()} |
    {error, any()} |
    {error, delete_data_catalog_errors(), tuple()}.
delete_data_catalog(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_data_catalog(Client, Input, []).

-spec delete_data_catalog(aws_client:aws_client(), delete_data_catalog_input(), proplists:proplist()) ->
    {ok, delete_data_catalog_output(), tuple()} |
    {error, any()} |
    {error, delete_data_catalog_errors(), tuple()}.
delete_data_catalog(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDataCatalog">>, Input, Options).

%% @doc Deletes the named query if you have access to the workgroup in which
%% the query was
%% saved.
-spec delete_named_query(aws_client:aws_client(), delete_named_query_input()) ->
    {ok, delete_named_query_output(), tuple()} |
    {error, any()} |
    {error, delete_named_query_errors(), tuple()}.
delete_named_query(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_named_query(Client, Input, []).

-spec delete_named_query(aws_client:aws_client(), delete_named_query_input(), proplists:proplist()) ->
    {ok, delete_named_query_output(), tuple()} |
    {error, any()} |
    {error, delete_named_query_errors(), tuple()}.
delete_named_query(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteNamedQuery">>, Input, Options).

%% @doc Deletes the specified notebook.
-spec delete_notebook(aws_client:aws_client(), delete_notebook_input()) ->
    {ok, delete_notebook_output(), tuple()} |
    {error, any()} |
    {error, delete_notebook_errors(), tuple()}.
delete_notebook(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_notebook(Client, Input, []).

-spec delete_notebook(aws_client:aws_client(), delete_notebook_input(), proplists:proplist()) ->
    {ok, delete_notebook_output(), tuple()} |
    {error, any()} |
    {error, delete_notebook_errors(), tuple()}.
delete_notebook(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteNotebook">>, Input, Options).

%% @doc Deletes the prepared statement with the specified name from the
%% specified
%% workgroup.
-spec delete_prepared_statement(aws_client:aws_client(), delete_prepared_statement_input()) ->
    {ok, delete_prepared_statement_output(), tuple()} |
    {error, any()} |
    {error, delete_prepared_statement_errors(), tuple()}.
delete_prepared_statement(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_prepared_statement(Client, Input, []).

-spec delete_prepared_statement(aws_client:aws_client(), delete_prepared_statement_input(), proplists:proplist()) ->
    {ok, delete_prepared_statement_output(), tuple()} |
    {error, any()} |
    {error, delete_prepared_statement_errors(), tuple()}.
delete_prepared_statement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePreparedStatement">>, Input, Options).

%% @doc Deletes the workgroup with the specified name.
%%
%% The primary workgroup cannot be
%% deleted.
-spec delete_work_group(aws_client:aws_client(), delete_work_group_input()) ->
    {ok, delete_work_group_output(), tuple()} |
    {error, any()} |
    {error, delete_work_group_errors(), tuple()}.
delete_work_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_work_group(Client, Input, []).

-spec delete_work_group(aws_client:aws_client(), delete_work_group_input(), proplists:proplist()) ->
    {ok, delete_work_group_output(), tuple()} |
    {error, any()} |
    {error, delete_work_group_errors(), tuple()}.
delete_work_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteWorkGroup">>, Input, Options).

%% @doc Exports the specified notebook and its metadata.
-spec export_notebook(aws_client:aws_client(), export_notebook_input()) ->
    {ok, export_notebook_output(), tuple()} |
    {error, any()} |
    {error, export_notebook_errors(), tuple()}.
export_notebook(Client, Input)
  when is_map(Client), is_map(Input) ->
    export_notebook(Client, Input, []).

-spec export_notebook(aws_client:aws_client(), export_notebook_input(), proplists:proplist()) ->
    {ok, export_notebook_output(), tuple()} |
    {error, any()} |
    {error, export_notebook_errors(), tuple()}.
export_notebook(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ExportNotebook">>, Input, Options).

%% @doc Describes a previously submitted calculation execution.
-spec get_calculation_execution(aws_client:aws_client(), get_calculation_execution_request()) ->
    {ok, get_calculation_execution_response(), tuple()} |
    {error, any()} |
    {error, get_calculation_execution_errors(), tuple()}.
get_calculation_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_calculation_execution(Client, Input, []).

-spec get_calculation_execution(aws_client:aws_client(), get_calculation_execution_request(), proplists:proplist()) ->
    {ok, get_calculation_execution_response(), tuple()} |
    {error, any()} |
    {error, get_calculation_execution_errors(), tuple()}.
get_calculation_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCalculationExecution">>, Input, Options).

%% @doc Retrieves the unencrypted code that was executed for the calculation.
-spec get_calculation_execution_code(aws_client:aws_client(), get_calculation_execution_code_request()) ->
    {ok, get_calculation_execution_code_response(), tuple()} |
    {error, any()} |
    {error, get_calculation_execution_code_errors(), tuple()}.
get_calculation_execution_code(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_calculation_execution_code(Client, Input, []).

-spec get_calculation_execution_code(aws_client:aws_client(), get_calculation_execution_code_request(), proplists:proplist()) ->
    {ok, get_calculation_execution_code_response(), tuple()} |
    {error, any()} |
    {error, get_calculation_execution_code_errors(), tuple()}.
get_calculation_execution_code(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCalculationExecutionCode">>, Input, Options).

%% @doc Gets the status of a current calculation.
-spec get_calculation_execution_status(aws_client:aws_client(), get_calculation_execution_status_request()) ->
    {ok, get_calculation_execution_status_response(), tuple()} |
    {error, any()} |
    {error, get_calculation_execution_status_errors(), tuple()}.
get_calculation_execution_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_calculation_execution_status(Client, Input, []).

-spec get_calculation_execution_status(aws_client:aws_client(), get_calculation_execution_status_request(), proplists:proplist()) ->
    {ok, get_calculation_execution_status_response(), tuple()} |
    {error, any()} |
    {error, get_calculation_execution_status_errors(), tuple()}.
get_calculation_execution_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCalculationExecutionStatus">>, Input, Options).

%% @doc Gets the capacity assignment configuration for a capacity
%% reservation, if one
%% exists.
-spec get_capacity_assignment_configuration(aws_client:aws_client(), get_capacity_assignment_configuration_input()) ->
    {ok, get_capacity_assignment_configuration_output(), tuple()} |
    {error, any()} |
    {error, get_capacity_assignment_configuration_errors(), tuple()}.
get_capacity_assignment_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_capacity_assignment_configuration(Client, Input, []).

-spec get_capacity_assignment_configuration(aws_client:aws_client(), get_capacity_assignment_configuration_input(), proplists:proplist()) ->
    {ok, get_capacity_assignment_configuration_output(), tuple()} |
    {error, any()} |
    {error, get_capacity_assignment_configuration_errors(), tuple()}.
get_capacity_assignment_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCapacityAssignmentConfiguration">>, Input, Options).

%% @doc Returns information about the capacity reservation with the specified
%% name.
-spec get_capacity_reservation(aws_client:aws_client(), get_capacity_reservation_input()) ->
    {ok, get_capacity_reservation_output(), tuple()} |
    {error, any()} |
    {error, get_capacity_reservation_errors(), tuple()}.
get_capacity_reservation(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_capacity_reservation(Client, Input, []).

-spec get_capacity_reservation(aws_client:aws_client(), get_capacity_reservation_input(), proplists:proplist()) ->
    {ok, get_capacity_reservation_output(), tuple()} |
    {error, any()} |
    {error, get_capacity_reservation_errors(), tuple()}.
get_capacity_reservation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCapacityReservation">>, Input, Options).

%% @doc Returns the specified data catalog.
-spec get_data_catalog(aws_client:aws_client(), get_data_catalog_input()) ->
    {ok, get_data_catalog_output(), tuple()} |
    {error, any()} |
    {error, get_data_catalog_errors(), tuple()}.
get_data_catalog(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_data_catalog(Client, Input, []).

-spec get_data_catalog(aws_client:aws_client(), get_data_catalog_input(), proplists:proplist()) ->
    {ok, get_data_catalog_output(), tuple()} |
    {error, any()} |
    {error, get_data_catalog_errors(), tuple()}.
get_data_catalog(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDataCatalog">>, Input, Options).

%% @doc Returns a database object for the specified database and data
%% catalog.
-spec get_database(aws_client:aws_client(), get_database_input()) ->
    {ok, get_database_output(), tuple()} |
    {error, any()} |
    {error, get_database_errors(), tuple()}.
get_database(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_database(Client, Input, []).

-spec get_database(aws_client:aws_client(), get_database_input(), proplists:proplist()) ->
    {ok, get_database_output(), tuple()} |
    {error, any()} |
    {error, get_database_errors(), tuple()}.
get_database(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDatabase">>, Input, Options).

%% @doc Returns information about a single query.
%%
%% Requires that you have access to the
%% workgroup in which the query was saved.
-spec get_named_query(aws_client:aws_client(), get_named_query_input()) ->
    {ok, get_named_query_output(), tuple()} |
    {error, any()} |
    {error, get_named_query_errors(), tuple()}.
get_named_query(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_named_query(Client, Input, []).

-spec get_named_query(aws_client:aws_client(), get_named_query_input(), proplists:proplist()) ->
    {ok, get_named_query_output(), tuple()} |
    {error, any()} |
    {error, get_named_query_errors(), tuple()}.
get_named_query(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetNamedQuery">>, Input, Options).

%% @doc Retrieves notebook metadata for the specified notebook ID.
-spec get_notebook_metadata(aws_client:aws_client(), get_notebook_metadata_input()) ->
    {ok, get_notebook_metadata_output(), tuple()} |
    {error, any()} |
    {error, get_notebook_metadata_errors(), tuple()}.
get_notebook_metadata(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_notebook_metadata(Client, Input, []).

-spec get_notebook_metadata(aws_client:aws_client(), get_notebook_metadata_input(), proplists:proplist()) ->
    {ok, get_notebook_metadata_output(), tuple()} |
    {error, any()} |
    {error, get_notebook_metadata_errors(), tuple()}.
get_notebook_metadata(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetNotebookMetadata">>, Input, Options).

%% @doc Retrieves the prepared statement with the specified name from the
%% specified
%% workgroup.
-spec get_prepared_statement(aws_client:aws_client(), get_prepared_statement_input()) ->
    {ok, get_prepared_statement_output(), tuple()} |
    {error, any()} |
    {error, get_prepared_statement_errors(), tuple()}.
get_prepared_statement(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_prepared_statement(Client, Input, []).

-spec get_prepared_statement(aws_client:aws_client(), get_prepared_statement_input(), proplists:proplist()) ->
    {ok, get_prepared_statement_output(), tuple()} |
    {error, any()} |
    {error, get_prepared_statement_errors(), tuple()}.
get_prepared_statement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPreparedStatement">>, Input, Options).

%% @doc Returns information about a single execution of a query if you have
%% access to the
%% workgroup in which the query ran.
%%
%% Each time a query executes, information about the
%% query execution is saved with a unique ID.
-spec get_query_execution(aws_client:aws_client(), get_query_execution_input()) ->
    {ok, get_query_execution_output(), tuple()} |
    {error, any()} |
    {error, get_query_execution_errors(), tuple()}.
get_query_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_query_execution(Client, Input, []).

-spec get_query_execution(aws_client:aws_client(), get_query_execution_input(), proplists:proplist()) ->
    {ok, get_query_execution_output(), tuple()} |
    {error, any()} |
    {error, get_query_execution_errors(), tuple()}.
get_query_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetQueryExecution">>, Input, Options).

%% @doc Streams the results of a single query execution specified by
%% `QueryExecutionId' from the Athena query results location in
%% Amazon S3.
%%
%% For more information, see Working with query results, recent queries, and
%% output files: https://docs.aws.amazon.com/athena/latest/ug/querying.html
%% in the Amazon Athena User Guide.
%% This request does not execute the query but returns results. Use
%% `StartQueryExecution' to run a query.
%%
%% To stream query results successfully, the IAM principal with permission to
%% call
%% `GetQueryResults' also must have permissions to the Amazon S3
%% `GetObject' action for the Athena query results location.
%%
%% IAM principals with permission to the Amazon S3
%% `GetObject' action for the query results location are able to retrieve
%% query results from Amazon S3 even if permission to the
%% `GetQueryResults' action is denied. To restrict user or role access,
%% ensure that Amazon S3 permissions to the Athena query location
%% are denied.
-spec get_query_results(aws_client:aws_client(), get_query_results_input()) ->
    {ok, get_query_results_output(), tuple()} |
    {error, any()} |
    {error, get_query_results_errors(), tuple()}.
get_query_results(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_query_results(Client, Input, []).

-spec get_query_results(aws_client:aws_client(), get_query_results_input(), proplists:proplist()) ->
    {ok, get_query_results_output(), tuple()} |
    {error, any()} |
    {error, get_query_results_errors(), tuple()}.
get_query_results(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetQueryResults">>, Input, Options).

%% @doc Returns query execution runtime statistics related to a single
%% execution of a query if
%% you have access to the workgroup in which the query ran.
%%
%% Statistics from the
%% `Timeline' section of the response object are available as soon as
%% `QueryExecutionStatus$State' is in a SUCCEEDED or FAILED state. The
%% remaining non-timeline statistics in the response (like stage-level input
%% and output row
%% count and data size) are updated asynchronously and may not be available
%% immediately
%% after a query completes. The non-timeline statistics are also not included
%% when a query
%% has row-level filters defined in Lake Formation.
-spec get_query_runtime_statistics(aws_client:aws_client(), get_query_runtime_statistics_input()) ->
    {ok, get_query_runtime_statistics_output(), tuple()} |
    {error, any()} |
    {error, get_query_runtime_statistics_errors(), tuple()}.
get_query_runtime_statistics(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_query_runtime_statistics(Client, Input, []).

-spec get_query_runtime_statistics(aws_client:aws_client(), get_query_runtime_statistics_input(), proplists:proplist()) ->
    {ok, get_query_runtime_statistics_output(), tuple()} |
    {error, any()} |
    {error, get_query_runtime_statistics_errors(), tuple()}.
get_query_runtime_statistics(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetQueryRuntimeStatistics">>, Input, Options).

%% @doc Gets the full details of a previously created session, including the
%% session status
%% and configuration.
-spec get_session(aws_client:aws_client(), get_session_request()) ->
    {ok, get_session_response(), tuple()} |
    {error, any()} |
    {error, get_session_errors(), tuple()}.
get_session(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_session(Client, Input, []).

-spec get_session(aws_client:aws_client(), get_session_request(), proplists:proplist()) ->
    {ok, get_session_response(), tuple()} |
    {error, any()} |
    {error, get_session_errors(), tuple()}.
get_session(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSession">>, Input, Options).

%% @doc Gets the current status of a session.
-spec get_session_status(aws_client:aws_client(), get_session_status_request()) ->
    {ok, get_session_status_response(), tuple()} |
    {error, any()} |
    {error, get_session_status_errors(), tuple()}.
get_session_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_session_status(Client, Input, []).

-spec get_session_status(aws_client:aws_client(), get_session_status_request(), proplists:proplist()) ->
    {ok, get_session_status_response(), tuple()} |
    {error, any()} |
    {error, get_session_status_errors(), tuple()}.
get_session_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSessionStatus">>, Input, Options).

%% @doc Returns table metadata for the specified catalog, database, and
%% table.
-spec get_table_metadata(aws_client:aws_client(), get_table_metadata_input()) ->
    {ok, get_table_metadata_output(), tuple()} |
    {error, any()} |
    {error, get_table_metadata_errors(), tuple()}.
get_table_metadata(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_table_metadata(Client, Input, []).

-spec get_table_metadata(aws_client:aws_client(), get_table_metadata_input(), proplists:proplist()) ->
    {ok, get_table_metadata_output(), tuple()} |
    {error, any()} |
    {error, get_table_metadata_errors(), tuple()}.
get_table_metadata(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTableMetadata">>, Input, Options).

%% @doc Returns information about the workgroup with the specified name.
-spec get_work_group(aws_client:aws_client(), get_work_group_input()) ->
    {ok, get_work_group_output(), tuple()} |
    {error, any()} |
    {error, get_work_group_errors(), tuple()}.
get_work_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_work_group(Client, Input, []).

-spec get_work_group(aws_client:aws_client(), get_work_group_input(), proplists:proplist()) ->
    {ok, get_work_group_output(), tuple()} |
    {error, any()} |
    {error, get_work_group_errors(), tuple()}.
get_work_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetWorkGroup">>, Input, Options).

%% @doc Imports a single `ipynb' file to a Spark enabled workgroup.
%%
%% To import the
%% notebook, the request must specify a value for either `Payload' or
%% `NoteBookS3LocationUri'. If neither is specified or both are
%% specified,
%% an `InvalidRequestException' occurs. The maximum file size that can be
%% imported is 10 megabytes. If an `ipynb' file with the same name
%% already
%% exists in the workgroup, throws an error.
-spec import_notebook(aws_client:aws_client(), import_notebook_input()) ->
    {ok, import_notebook_output(), tuple()} |
    {error, any()} |
    {error, import_notebook_errors(), tuple()}.
import_notebook(Client, Input)
  when is_map(Client), is_map(Input) ->
    import_notebook(Client, Input, []).

-spec import_notebook(aws_client:aws_client(), import_notebook_input(), proplists:proplist()) ->
    {ok, import_notebook_output(), tuple()} |
    {error, any()} |
    {error, import_notebook_errors(), tuple()}.
import_notebook(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ImportNotebook">>, Input, Options).

%% @doc Returns the supported DPU sizes for the supported application
%% runtimes (for example,
%% `Athena notebook version 1').
-spec list_application_d_p_u_sizes(aws_client:aws_client(), list_application_d_p_u_sizes_input()) ->
    {ok, list_application_d_p_u_sizes_output(), tuple()} |
    {error, any()} |
    {error, list_application_d_p_u_sizes_errors(), tuple()}.
list_application_d_p_u_sizes(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_application_d_p_u_sizes(Client, Input, []).

-spec list_application_d_p_u_sizes(aws_client:aws_client(), list_application_d_p_u_sizes_input(), proplists:proplist()) ->
    {ok, list_application_d_p_u_sizes_output(), tuple()} |
    {error, any()} |
    {error, list_application_d_p_u_sizes_errors(), tuple()}.
list_application_d_p_u_sizes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListApplicationDPUSizes">>, Input, Options).

%% @doc Lists the calculations that have been submitted to a session in
%% descending order.
%%
%% Newer calculations are listed first; older calculations are listed later.
-spec list_calculation_executions(aws_client:aws_client(), list_calculation_executions_request()) ->
    {ok, list_calculation_executions_response(), tuple()} |
    {error, any()} |
    {error, list_calculation_executions_errors(), tuple()}.
list_calculation_executions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_calculation_executions(Client, Input, []).

-spec list_calculation_executions(aws_client:aws_client(), list_calculation_executions_request(), proplists:proplist()) ->
    {ok, list_calculation_executions_response(), tuple()} |
    {error, any()} |
    {error, list_calculation_executions_errors(), tuple()}.
list_calculation_executions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCalculationExecutions">>, Input, Options).

%% @doc Lists the capacity reservations for the current account.
-spec list_capacity_reservations(aws_client:aws_client(), list_capacity_reservations_input()) ->
    {ok, list_capacity_reservations_output(), tuple()} |
    {error, any()} |
    {error, list_capacity_reservations_errors(), tuple()}.
list_capacity_reservations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_capacity_reservations(Client, Input, []).

-spec list_capacity_reservations(aws_client:aws_client(), list_capacity_reservations_input(), proplists:proplist()) ->
    {ok, list_capacity_reservations_output(), tuple()} |
    {error, any()} |
    {error, list_capacity_reservations_errors(), tuple()}.
list_capacity_reservations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCapacityReservations">>, Input, Options).

%% @doc Lists the data catalogs in the current Amazon Web Services account.
%%
%% In the Athena console, data catalogs are listed as &quot;data
%% sources&quot; on
%% the Data sources page under the Data source name column.
-spec list_data_catalogs(aws_client:aws_client(), list_data_catalogs_input()) ->
    {ok, list_data_catalogs_output(), tuple()} |
    {error, any()} |
    {error, list_data_catalogs_errors(), tuple()}.
list_data_catalogs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_data_catalogs(Client, Input, []).

-spec list_data_catalogs(aws_client:aws_client(), list_data_catalogs_input(), proplists:proplist()) ->
    {ok, list_data_catalogs_output(), tuple()} |
    {error, any()} |
    {error, list_data_catalogs_errors(), tuple()}.
list_data_catalogs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDataCatalogs">>, Input, Options).

%% @doc Lists the databases in the specified data catalog.
-spec list_databases(aws_client:aws_client(), list_databases_input()) ->
    {ok, list_databases_output(), tuple()} |
    {error, any()} |
    {error, list_databases_errors(), tuple()}.
list_databases(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_databases(Client, Input, []).

-spec list_databases(aws_client:aws_client(), list_databases_input(), proplists:proplist()) ->
    {ok, list_databases_output(), tuple()} |
    {error, any()} |
    {error, list_databases_errors(), tuple()}.
list_databases(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDatabases">>, Input, Options).

%% @doc Returns a list of engine versions that are available to choose from,
%% including the
%% Auto option.
-spec list_engine_versions(aws_client:aws_client(), list_engine_versions_input()) ->
    {ok, list_engine_versions_output(), tuple()} |
    {error, any()} |
    {error, list_engine_versions_errors(), tuple()}.
list_engine_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_engine_versions(Client, Input, []).

-spec list_engine_versions(aws_client:aws_client(), list_engine_versions_input(), proplists:proplist()) ->
    {ok, list_engine_versions_output(), tuple()} |
    {error, any()} |
    {error, list_engine_versions_errors(), tuple()}.
list_engine_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEngineVersions">>, Input, Options).

%% @doc Lists, in descending order, the executors that joined a session.
%%
%% Newer executors are
%% listed first; older executors are listed later. The result can be
%% optionally filtered by
%% state.
-spec list_executors(aws_client:aws_client(), list_executors_request()) ->
    {ok, list_executors_response(), tuple()} |
    {error, any()} |
    {error, list_executors_errors(), tuple()}.
list_executors(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_executors(Client, Input, []).

-spec list_executors(aws_client:aws_client(), list_executors_request(), proplists:proplist()) ->
    {ok, list_executors_response(), tuple()} |
    {error, any()} |
    {error, list_executors_errors(), tuple()}.
list_executors(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListExecutors">>, Input, Options).

%% @doc Provides a list of available query IDs only for queries saved in the
%% specified
%% workgroup.
%%
%% Requires that you have access to the specified workgroup. If a workgroup
%% is
%% not specified, lists the saved queries for the primary workgroup.
-spec list_named_queries(aws_client:aws_client(), list_named_queries_input()) ->
    {ok, list_named_queries_output(), tuple()} |
    {error, any()} |
    {error, list_named_queries_errors(), tuple()}.
list_named_queries(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_named_queries(Client, Input, []).

-spec list_named_queries(aws_client:aws_client(), list_named_queries_input(), proplists:proplist()) ->
    {ok, list_named_queries_output(), tuple()} |
    {error, any()} |
    {error, list_named_queries_errors(), tuple()}.
list_named_queries(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListNamedQueries">>, Input, Options).

%% @doc Displays the notebook files for the specified workgroup in paginated
%% format.
-spec list_notebook_metadata(aws_client:aws_client(), list_notebook_metadata_input()) ->
    {ok, list_notebook_metadata_output(), tuple()} |
    {error, any()} |
    {error, list_notebook_metadata_errors(), tuple()}.
list_notebook_metadata(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_notebook_metadata(Client, Input, []).

-spec list_notebook_metadata(aws_client:aws_client(), list_notebook_metadata_input(), proplists:proplist()) ->
    {ok, list_notebook_metadata_output(), tuple()} |
    {error, any()} |
    {error, list_notebook_metadata_errors(), tuple()}.
list_notebook_metadata(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListNotebookMetadata">>, Input, Options).

%% @doc Lists, in descending order, the sessions that have been created in a
%% notebook that are
%% in an active state like `CREATING', `CREATED', `IDLE'
%% or `BUSY'.
%%
%% Newer sessions are listed first; older sessions are listed
%% later.
-spec list_notebook_sessions(aws_client:aws_client(), list_notebook_sessions_request()) ->
    {ok, list_notebook_sessions_response(), tuple()} |
    {error, any()} |
    {error, list_notebook_sessions_errors(), tuple()}.
list_notebook_sessions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_notebook_sessions(Client, Input, []).

-spec list_notebook_sessions(aws_client:aws_client(), list_notebook_sessions_request(), proplists:proplist()) ->
    {ok, list_notebook_sessions_response(), tuple()} |
    {error, any()} |
    {error, list_notebook_sessions_errors(), tuple()}.
list_notebook_sessions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListNotebookSessions">>, Input, Options).

%% @doc Lists the prepared statements in the specified workgroup.
-spec list_prepared_statements(aws_client:aws_client(), list_prepared_statements_input()) ->
    {ok, list_prepared_statements_output(), tuple()} |
    {error, any()} |
    {error, list_prepared_statements_errors(), tuple()}.
list_prepared_statements(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_prepared_statements(Client, Input, []).

-spec list_prepared_statements(aws_client:aws_client(), list_prepared_statements_input(), proplists:proplist()) ->
    {ok, list_prepared_statements_output(), tuple()} |
    {error, any()} |
    {error, list_prepared_statements_errors(), tuple()}.
list_prepared_statements(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPreparedStatements">>, Input, Options).

%% @doc Provides a list of available query execution IDs for the queries in
%% the specified
%% workgroup.
%%
%% Athena keeps a query history for 45 days. If a workgroup is not
%% specified, returns a list of query execution IDs for the primary
%% workgroup. Requires you
%% to have access to the workgroup in which the queries ran.
-spec list_query_executions(aws_client:aws_client(), list_query_executions_input()) ->
    {ok, list_query_executions_output(), tuple()} |
    {error, any()} |
    {error, list_query_executions_errors(), tuple()}.
list_query_executions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_query_executions(Client, Input, []).

-spec list_query_executions(aws_client:aws_client(), list_query_executions_input(), proplists:proplist()) ->
    {ok, list_query_executions_output(), tuple()} |
    {error, any()} |
    {error, list_query_executions_errors(), tuple()}.
list_query_executions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListQueryExecutions">>, Input, Options).

%% @doc Lists the sessions in a workgroup that are in an active state like
%% `CREATING', `CREATED', `IDLE', or
%% `BUSY'.
%%
%% Newer sessions are listed first; older sessions are listed
%% later.
-spec list_sessions(aws_client:aws_client(), list_sessions_request()) ->
    {ok, list_sessions_response(), tuple()} |
    {error, any()} |
    {error, list_sessions_errors(), tuple()}.
list_sessions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_sessions(Client, Input, []).

-spec list_sessions(aws_client:aws_client(), list_sessions_request(), proplists:proplist()) ->
    {ok, list_sessions_response(), tuple()} |
    {error, any()} |
    {error, list_sessions_errors(), tuple()}.
list_sessions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSessions">>, Input, Options).

%% @doc Lists the metadata for the tables in the specified data catalog
%% database.
-spec list_table_metadata(aws_client:aws_client(), list_table_metadata_input()) ->
    {ok, list_table_metadata_output(), tuple()} |
    {error, any()} |
    {error, list_table_metadata_errors(), tuple()}.
list_table_metadata(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_table_metadata(Client, Input, []).

-spec list_table_metadata(aws_client:aws_client(), list_table_metadata_input(), proplists:proplist()) ->
    {ok, list_table_metadata_output(), tuple()} |
    {error, any()} |
    {error, list_table_metadata_errors(), tuple()}.
list_table_metadata(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTableMetadata">>, Input, Options).

%% @doc Lists the tags associated with an Athena resource.
-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_input()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).

-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_input(), proplists:proplist()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Lists available workgroups for the account.
-spec list_work_groups(aws_client:aws_client(), list_work_groups_input()) ->
    {ok, list_work_groups_output(), tuple()} |
    {error, any()} |
    {error, list_work_groups_errors(), tuple()}.
list_work_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_work_groups(Client, Input, []).

-spec list_work_groups(aws_client:aws_client(), list_work_groups_input(), proplists:proplist()) ->
    {ok, list_work_groups_output(), tuple()} |
    {error, any()} |
    {error, list_work_groups_errors(), tuple()}.
list_work_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListWorkGroups">>, Input, Options).

%% @doc Puts a new capacity assignment configuration for a specified capacity
%% reservation.
%%
%% If
%% a capacity assignment configuration already exists for the capacity
%% reservation,
%% replaces the existing capacity assignment configuration.
-spec put_capacity_assignment_configuration(aws_client:aws_client(), put_capacity_assignment_configuration_input()) ->
    {ok, put_capacity_assignment_configuration_output(), tuple()} |
    {error, any()} |
    {error, put_capacity_assignment_configuration_errors(), tuple()}.
put_capacity_assignment_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_capacity_assignment_configuration(Client, Input, []).

-spec put_capacity_assignment_configuration(aws_client:aws_client(), put_capacity_assignment_configuration_input(), proplists:proplist()) ->
    {ok, put_capacity_assignment_configuration_output(), tuple()} |
    {error, any()} |
    {error, put_capacity_assignment_configuration_errors(), tuple()}.
put_capacity_assignment_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutCapacityAssignmentConfiguration">>, Input, Options).

%% @doc Submits calculations for execution within a session.
%%
%% You can supply the code to run as
%% an inline code block within the request.
%%
%% The request syntax requires the
%% `StartCalculationExecutionRequest$CodeBlock' parameter or the
%% `CalculationConfiguration$CodeBlock' parameter, but not both. Because
%% `CalculationConfiguration$CodeBlock' is deprecated, use the
%% `StartCalculationExecutionRequest$CodeBlock' parameter
%% instead.
-spec start_calculation_execution(aws_client:aws_client(), start_calculation_execution_request()) ->
    {ok, start_calculation_execution_response(), tuple()} |
    {error, any()} |
    {error, start_calculation_execution_errors(), tuple()}.
start_calculation_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_calculation_execution(Client, Input, []).

-spec start_calculation_execution(aws_client:aws_client(), start_calculation_execution_request(), proplists:proplist()) ->
    {ok, start_calculation_execution_response(), tuple()} |
    {error, any()} |
    {error, start_calculation_execution_errors(), tuple()}.
start_calculation_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartCalculationExecution">>, Input, Options).

%% @doc Runs the SQL query statements contained in the `Query'.
%%
%% Requires you to
%% have access to the workgroup in which the query ran. Running queries
%% against an external
%% catalog requires `GetDataCatalog' permission to the catalog. For code
%% samples using the Amazon Web Services SDK for Java, see Examples and
%% Code Samples:
%% http://docs.aws.amazon.com/athena/latest/ug/code-samples.html in the
%% Amazon Athena User
%% Guide.
-spec start_query_execution(aws_client:aws_client(), start_query_execution_input()) ->
    {ok, start_query_execution_output(), tuple()} |
    {error, any()} |
    {error, start_query_execution_errors(), tuple()}.
start_query_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_query_execution(Client, Input, []).

-spec start_query_execution(aws_client:aws_client(), start_query_execution_input(), proplists:proplist()) ->
    {ok, start_query_execution_output(), tuple()} |
    {error, any()} |
    {error, start_query_execution_errors(), tuple()}.
start_query_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartQueryExecution">>, Input, Options).

%% @doc Creates a session for running calculations within a workgroup.
%%
%% The session is ready
%% when it reaches an `IDLE' state.
-spec start_session(aws_client:aws_client(), start_session_request()) ->
    {ok, start_session_response(), tuple()} |
    {error, any()} |
    {error, start_session_errors(), tuple()}.
start_session(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_session(Client, Input, []).

-spec start_session(aws_client:aws_client(), start_session_request(), proplists:proplist()) ->
    {ok, start_session_response(), tuple()} |
    {error, any()} |
    {error, start_session_errors(), tuple()}.
start_session(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartSession">>, Input, Options).

%% @doc Requests the cancellation of a calculation.
%%
%% A `StopCalculationExecution'
%% call on a calculation that is already in a terminal state (for example,
%% `STOPPED', `FAILED', or `COMPLETED') succeeds but
%% has no effect.
%%
%% Cancelling a calculation is done on a best effort basis. If a calculation
%% cannot
%% be cancelled, you can be charged for its completion. If you are concerned
%% about
%% being charged for a calculation that cannot be cancelled, consider
%% terminating the
%% session in which the calculation is running.
-spec stop_calculation_execution(aws_client:aws_client(), stop_calculation_execution_request()) ->
    {ok, stop_calculation_execution_response(), tuple()} |
    {error, any()} |
    {error, stop_calculation_execution_errors(), tuple()}.
stop_calculation_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_calculation_execution(Client, Input, []).

-spec stop_calculation_execution(aws_client:aws_client(), stop_calculation_execution_request(), proplists:proplist()) ->
    {ok, stop_calculation_execution_response(), tuple()} |
    {error, any()} |
    {error, stop_calculation_execution_errors(), tuple()}.
stop_calculation_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopCalculationExecution">>, Input, Options).

%% @doc Stops a query execution.
%%
%% Requires you to have access to the workgroup in which the
%% query ran.
-spec stop_query_execution(aws_client:aws_client(), stop_query_execution_input()) ->
    {ok, stop_query_execution_output(), tuple()} |
    {error, any()} |
    {error, stop_query_execution_errors(), tuple()}.
stop_query_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_query_execution(Client, Input, []).

-spec stop_query_execution(aws_client:aws_client(), stop_query_execution_input(), proplists:proplist()) ->
    {ok, stop_query_execution_output(), tuple()} |
    {error, any()} |
    {error, stop_query_execution_errors(), tuple()}.
stop_query_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopQueryExecution">>, Input, Options).

%% @doc Adds one or more tags to an Athena resource.
%%
%% A tag is a label that you
%% assign to a resource. Each tag consists of a key and an optional value,
%% both of which
%% you define. For example, you can use tags to categorize Athena workgroups,
%% data catalogs, or capacity reservations by purpose, owner, or environment.
%% Use a
%% consistent set of tag keys to make it easier to search and filter the
%% resources in your
%% account. For best practices, see Tagging
%% Best Practices:
%% https://docs.aws.amazon.com/whitepapers/latest/tagging-best-practices/tagging-best-practices.html.
%% Tag keys can be from 1 to 128 UTF-8 Unicode characters, and
%% tag values can be from 0 to 256 UTF-8 Unicode characters. Tags can use
%% letters and
%% numbers representable in UTF-8, and the following characters: + - = . _ :
%% / @. Tag keys
%% and values are case-sensitive. Tag keys must be unique per resource. If
%% you specify more
%% than one tag, separate them by commas.
-spec tag_resource(aws_client:aws_client(), tag_resource_input()) ->
    {ok, tag_resource_output(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_input(), proplists:proplist()) ->
    {ok, tag_resource_output(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Terminates an active session.
%%
%% A `TerminateSession' call on a session that
%% is already inactive (for example, in a `FAILED', `TERMINATED' or
%% `TERMINATING' state) succeeds but has no effect. Calculations running
%% in
%% the session when `TerminateSession' is called are forcefully stopped,
%% but may
%% display as `FAILED' instead of `STOPPED'.
-spec terminate_session(aws_client:aws_client(), terminate_session_request()) ->
    {ok, terminate_session_response(), tuple()} |
    {error, any()} |
    {error, terminate_session_errors(), tuple()}.
terminate_session(Client, Input)
  when is_map(Client), is_map(Input) ->
    terminate_session(Client, Input, []).

-spec terminate_session(aws_client:aws_client(), terminate_session_request(), proplists:proplist()) ->
    {ok, terminate_session_response(), tuple()} |
    {error, any()} |
    {error, terminate_session_errors(), tuple()}.
terminate_session(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TerminateSession">>, Input, Options).

%% @doc Removes one or more tags from an Athena resource.
-spec untag_resource(aws_client:aws_client(), untag_resource_input()) ->
    {ok, untag_resource_output(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).

-spec untag_resource(aws_client:aws_client(), untag_resource_input(), proplists:proplist()) ->
    {ok, untag_resource_output(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Updates the number of requested data processing units for the
%% capacity reservation
%% with the specified name.
-spec update_capacity_reservation(aws_client:aws_client(), update_capacity_reservation_input()) ->
    {ok, update_capacity_reservation_output(), tuple()} |
    {error, any()} |
    {error, update_capacity_reservation_errors(), tuple()}.
update_capacity_reservation(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_capacity_reservation(Client, Input, []).

-spec update_capacity_reservation(aws_client:aws_client(), update_capacity_reservation_input(), proplists:proplist()) ->
    {ok, update_capacity_reservation_output(), tuple()} |
    {error, any()} |
    {error, update_capacity_reservation_errors(), tuple()}.
update_capacity_reservation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateCapacityReservation">>, Input, Options).

%% @doc Updates the data catalog that has the specified name.
-spec update_data_catalog(aws_client:aws_client(), update_data_catalog_input()) ->
    {ok, update_data_catalog_output(), tuple()} |
    {error, any()} |
    {error, update_data_catalog_errors(), tuple()}.
update_data_catalog(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_data_catalog(Client, Input, []).

-spec update_data_catalog(aws_client:aws_client(), update_data_catalog_input(), proplists:proplist()) ->
    {ok, update_data_catalog_output(), tuple()} |
    {error, any()} |
    {error, update_data_catalog_errors(), tuple()}.
update_data_catalog(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDataCatalog">>, Input, Options).

%% @doc Updates a `NamedQuery' object.
%%
%% The database or workgroup cannot be
%% updated.
-spec update_named_query(aws_client:aws_client(), update_named_query_input()) ->
    {ok, update_named_query_output(), tuple()} |
    {error, any()} |
    {error, update_named_query_errors(), tuple()}.
update_named_query(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_named_query(Client, Input, []).

-spec update_named_query(aws_client:aws_client(), update_named_query_input(), proplists:proplist()) ->
    {ok, update_named_query_output(), tuple()} |
    {error, any()} |
    {error, update_named_query_errors(), tuple()}.
update_named_query(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateNamedQuery">>, Input, Options).

%% @doc Updates the contents of a Spark notebook.
-spec update_notebook(aws_client:aws_client(), update_notebook_input()) ->
    {ok, update_notebook_output(), tuple()} |
    {error, any()} |
    {error, update_notebook_errors(), tuple()}.
update_notebook(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_notebook(Client, Input, []).

-spec update_notebook(aws_client:aws_client(), update_notebook_input(), proplists:proplist()) ->
    {ok, update_notebook_output(), tuple()} |
    {error, any()} |
    {error, update_notebook_errors(), tuple()}.
update_notebook(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateNotebook">>, Input, Options).

%% @doc Updates the metadata for a notebook.
-spec update_notebook_metadata(aws_client:aws_client(), update_notebook_metadata_input()) ->
    {ok, update_notebook_metadata_output(), tuple()} |
    {error, any()} |
    {error, update_notebook_metadata_errors(), tuple()}.
update_notebook_metadata(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_notebook_metadata(Client, Input, []).

-spec update_notebook_metadata(aws_client:aws_client(), update_notebook_metadata_input(), proplists:proplist()) ->
    {ok, update_notebook_metadata_output(), tuple()} |
    {error, any()} |
    {error, update_notebook_metadata_errors(), tuple()}.
update_notebook_metadata(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateNotebookMetadata">>, Input, Options).

%% @doc Updates a prepared statement.
-spec update_prepared_statement(aws_client:aws_client(), update_prepared_statement_input()) ->
    {ok, update_prepared_statement_output(), tuple()} |
    {error, any()} |
    {error, update_prepared_statement_errors(), tuple()}.
update_prepared_statement(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_prepared_statement(Client, Input, []).

-spec update_prepared_statement(aws_client:aws_client(), update_prepared_statement_input(), proplists:proplist()) ->
    {ok, update_prepared_statement_output(), tuple()} |
    {error, any()} |
    {error, update_prepared_statement_errors(), tuple()}.
update_prepared_statement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdatePreparedStatement">>, Input, Options).

%% @doc Updates the workgroup with the specified name.
%%
%% The workgroup's name cannot be changed.
%% Only `ConfigurationUpdates' can be specified.
-spec update_work_group(aws_client:aws_client(), update_work_group_input()) ->
    {ok, update_work_group_output(), tuple()} |
    {error, any()} |
    {error, update_work_group_errors(), tuple()}.
update_work_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_work_group(Client, Input, []).

-spec update_work_group(aws_client:aws_client(), update_work_group_input(), proplists:proplist()) ->
    {ok, update_work_group_output(), tuple()} |
    {error, any()} |
    {error, update_work_group_errors(), tuple()}.
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
