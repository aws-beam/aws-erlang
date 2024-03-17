%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc
%% Amazon Honeycode is a fully managed service that allows you to quickly
%% build mobile and web apps for teams—without
%% programming.
%%
%% Build Honeycode apps for managing almost anything, like projects,
%% customers, operations, approvals,
%% resources, and even your team.
-module(aws_honeycode).

-export([batch_create_table_rows/4,
         batch_create_table_rows/5,
         batch_delete_table_rows/4,
         batch_delete_table_rows/5,
         batch_update_table_rows/4,
         batch_update_table_rows/5,
         batch_upsert_table_rows/4,
         batch_upsert_table_rows/5,
         describe_table_data_import_job/4,
         describe_table_data_import_job/6,
         describe_table_data_import_job/7,
         get_screen_data/2,
         get_screen_data/3,
         invoke_screen_automation/6,
         invoke_screen_automation/7,
         list_table_columns/3,
         list_table_columns/5,
         list_table_columns/6,
         list_table_rows/4,
         list_table_rows/5,
         list_tables/2,
         list_tables/4,
         list_tables/5,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         query_table_rows/4,
         query_table_rows/5,
         start_table_data_import_job/4,
         start_table_data_import_job/5,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% list_table_rows_result() :: #{
%%   <<"columnIds">> => list(string()()),
%%   <<"nextToken">> => string(),
%%   <<"rowIdsNotFound">> => list(string()()),
%%   <<"rows">> => list(table_row()()),
%%   <<"workbookCursor">> => float()
%% }
-type list_table_rows_result() :: #{binary() => any()}.


%% Example:
%% delimited_text_import_options() :: #{
%%   <<"dataCharacterEncoding">> => list(any()),
%%   <<"delimiter">> => string(),
%%   <<"hasHeaderRow">> => boolean(),
%%   <<"ignoreEmptyRows">> => boolean()
%% }
-type delimited_text_import_options() :: #{binary() => any()}.


%% Example:
%% import_options() :: #{
%%   <<"delimitedTextOptions">> => delimited_text_import_options(),
%%   <<"destinationOptions">> => destination_options()
%% }
-type import_options() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% query_table_rows_result() :: #{
%%   <<"columnIds">> => list(string()()),
%%   <<"nextToken">> => string(),
%%   <<"rows">> => list(table_row()()),
%%   <<"workbookCursor">> => float()
%% }
-type query_table_rows_result() :: #{binary() => any()}.


%% Example:
%% describe_table_data_import_job_result() :: #{
%%   <<"errorCode">> => list(any()),
%%   <<"jobMetadata">> => table_data_import_job_metadata(),
%%   <<"jobStatus">> => list(any()),
%%   <<"message">> => string()
%% }
-type describe_table_data_import_job_result() :: #{binary() => any()}.


%% Example:
%% create_row_data() :: #{
%%   <<"batchItemId">> => string(),
%%   <<"cellsToCreate">> => map()
%% }
-type create_row_data() :: #{binary() => any()}.


%% Example:
%% list_table_rows_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"rowIds">> => list(string()())
%% }
-type list_table_rows_request() :: #{binary() => any()}.


%% Example:
%% query_table_rows_request() :: #{
%%   <<"filterFormula">> := filter(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type query_table_rows_request() :: #{binary() => any()}.


%% Example:
%% invoke_screen_automation_request() :: #{
%%   <<"clientRequestToken">> => string(),
%%   <<"rowId">> => string(),
%%   <<"variables">> => map()
%% }
-type invoke_screen_automation_request() :: #{binary() => any()}.


%% Example:
%% column_metadata() :: #{
%%   <<"format">> => list(any()),
%%   <<"name">> => string()
%% }
-type column_metadata() :: #{binary() => any()}.

%% Example:
%% untag_resource_result() :: #{}
-type untag_resource_result() :: #{}.


%% Example:
%% automation_execution_exception() :: #{
%%   <<"message">> => string()
%% }
-type automation_execution_exception() :: #{binary() => any()}.


%% Example:
%% update_row_data() :: #{
%%   <<"cellsToUpdate">> => map(),
%%   <<"rowId">> => string()
%% }
-type update_row_data() :: #{binary() => any()}.


%% Example:
%% data_item() :: #{
%%   <<"formattedValue">> => string(),
%%   <<"overrideFormat">> => list(any()),
%%   <<"rawValue">> => string()
%% }
-type data_item() :: #{binary() => any()}.


%% Example:
%% cell() :: #{
%%   <<"format">> => list(any()),
%%   <<"formattedValue">> => string(),
%%   <<"formattedValues">> => list(string()()),
%%   <<"formula">> => string(),
%%   <<"rawValue">> => string()
%% }
-type cell() :: #{binary() => any()}.


%% Example:
%% batch_delete_table_rows_request() :: #{
%%   <<"clientRequestToken">> => string(),
%%   <<"rowIds">> := list(string()())
%% }
-type batch_delete_table_rows_request() :: #{binary() => any()}.


%% Example:
%% request_timeout_exception() :: #{
%%   <<"message">> => string()
%% }
-type request_timeout_exception() :: #{binary() => any()}.


%% Example:
%% table_data_import_job_metadata() :: #{
%%   <<"dataSource">> => import_data_source(),
%%   <<"importOptions">> => import_options(),
%%   <<"submitTime">> => non_neg_integer(),
%%   <<"submitter">> => import_job_submitter()
%% }
-type table_data_import_job_metadata() :: #{binary() => any()}.


%% Example:
%% upsert_row_data() :: #{
%%   <<"batchItemId">> => string(),
%%   <<"cellsToUpdate">> => map(),
%%   <<"filter">> => filter()
%% }
-type upsert_row_data() :: #{binary() => any()}.


%% Example:
%% batch_upsert_table_rows_request() :: #{
%%   <<"clientRequestToken">> => string(),
%%   <<"rowsToUpsert">> := list(upsert_row_data()())
%% }
-type batch_upsert_table_rows_request() :: #{binary() => any()}.


%% Example:
%% batch_create_table_rows_request() :: #{
%%   <<"clientRequestToken">> => string(),
%%   <<"rowsToCreate">> := list(create_row_data()())
%% }
-type batch_create_table_rows_request() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string()())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% table_row() :: #{
%%   <<"cells">> => list(cell()()),
%%   <<"rowId">> => string()
%% }
-type table_row() :: #{binary() => any()}.


%% Example:
%% table_column() :: #{
%%   <<"format">> => list(any()),
%%   <<"tableColumnId">> => string(),
%%   <<"tableColumnName">> => string()
%% }
-type table_column() :: #{binary() => any()}.


%% Example:
%% result_row() :: #{
%%   <<"dataItems">> => list(data_item()()),
%%   <<"rowId">> => string()
%% }
-type result_row() :: #{binary() => any()}.


%% Example:
%% batch_update_table_rows_request() :: #{
%%   <<"clientRequestToken">> => string(),
%%   <<"rowsToUpdate">> := list(update_row_data()())
%% }
-type batch_update_table_rows_request() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% list_table_columns_result() :: #{
%%   <<"nextToken">> => string(),
%%   <<"tableColumns">> => list(table_column()()),
%%   <<"workbookCursor">> => float()
%% }
-type list_table_columns_result() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% import_job_submitter() :: #{
%%   <<"email">> => string(),
%%   <<"userArn">> => string()
%% }
-type import_job_submitter() :: #{binary() => any()}.


%% Example:
%% service_unavailable_exception() :: #{
%%   <<"message">> => string()
%% }
-type service_unavailable_exception() :: #{binary() => any()}.


%% Example:
%% filter() :: #{
%%   <<"contextRowId">> => string(),
%%   <<"formula">> => string()
%% }
-type filter() :: #{binary() => any()}.


%% Example:
%% batch_update_table_rows_result() :: #{
%%   <<"failedBatchItems">> => list(failed_batch_item()()),
%%   <<"workbookCursor">> => float()
%% }
-type batch_update_table_rows_result() :: #{binary() => any()}.


%% Example:
%% automation_execution_timeout_exception() :: #{
%%   <<"message">> => string()
%% }
-type automation_execution_timeout_exception() :: #{binary() => any()}.


%% Example:
%% upsert_rows_result() :: #{
%%   <<"rowIds">> => list(string()()),
%%   <<"upsertAction">> => list(any())
%% }
-type upsert_rows_result() :: #{binary() => any()}.


%% Example:
%% list_table_columns_request() :: #{
%%   <<"nextToken">> => string()
%% }
-type list_table_columns_request() :: #{binary() => any()}.


%% Example:
%% failed_batch_item() :: #{
%%   <<"errorMessage">> => string(),
%%   <<"id">> => string()
%% }
-type failed_batch_item() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_result() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_result() :: #{binary() => any()}.


%% Example:
%% get_screen_data_request() :: #{
%%   <<"appId">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"screenId">> := string(),
%%   <<"variables">> => map(),
%%   <<"workbookId">> := string()
%% }
-type get_screen_data_request() :: #{binary() => any()}.


%% Example:
%% start_table_data_import_job_request() :: #{
%%   <<"clientRequestToken">> := string(),
%%   <<"dataFormat">> := list(any()),
%%   <<"dataSource">> := import_data_source(),
%%   <<"importOptions">> := import_options()
%% }
-type start_table_data_import_job_request() :: #{binary() => any()}.


%% Example:
%% destination_options() :: #{
%%   <<"columnMap">> => map()
%% }
-type destination_options() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% describe_table_data_import_job_request() :: #{}
-type describe_table_data_import_job_request() :: #{}.


%% Example:
%% result_set() :: #{
%%   <<"headers">> => list(column_metadata()()),
%%   <<"rows">> => list(result_row()())
%% }
-type result_set() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.


%% Example:
%% list_tables_result() :: #{
%%   <<"nextToken">> => string(),
%%   <<"tables">> => list(table()()),
%%   <<"workbookCursor">> => float()
%% }
-type list_tables_result() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% invoke_screen_automation_result() :: #{
%%   <<"workbookCursor">> => float()
%% }
-type invoke_screen_automation_result() :: #{binary() => any()}.


%% Example:
%% batch_upsert_table_rows_result() :: #{
%%   <<"failedBatchItems">> => list(failed_batch_item()()),
%%   <<"rows">> => map(),
%%   <<"workbookCursor">> => float()
%% }
-type batch_upsert_table_rows_result() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% start_table_data_import_job_result() :: #{
%%   <<"jobId">> => string(),
%%   <<"jobStatus">> => list(any())
%% }
-type start_table_data_import_job_result() :: #{binary() => any()}.


%% Example:
%% get_screen_data_result() :: #{
%%   <<"nextToken">> => string(),
%%   <<"results">> => map(),
%%   <<"workbookCursor">> => float()
%% }
-type get_screen_data_result() :: #{binary() => any()}.

%% Example:
%% tag_resource_result() :: #{}
-type tag_resource_result() :: #{}.


%% Example:
%% variable_value() :: #{
%%   <<"rawValue">> => string()
%% }
-type variable_value() :: #{binary() => any()}.


%% Example:
%% import_data_source() :: #{
%%   <<"dataSourceConfig">> => import_data_source_config()
%% }
-type import_data_source() :: #{binary() => any()}.


%% Example:
%% import_data_source_config() :: #{
%%   <<"dataSourceUrl">> => string()
%% }
-type import_data_source_config() :: #{binary() => any()}.


%% Example:
%% source_data_column_properties() :: #{
%%   <<"columnIndex">> => integer()
%% }
-type source_data_column_properties() :: #{binary() => any()}.


%% Example:
%% batch_create_table_rows_result() :: #{
%%   <<"createdRows">> => map(),
%%   <<"failedBatchItems">> => list(failed_batch_item()()),
%%   <<"workbookCursor">> => float()
%% }
-type batch_create_table_rows_result() :: #{binary() => any()}.


%% Example:
%% table() :: #{
%%   <<"tableId">> => string(),
%%   <<"tableName">> => string()
%% }
-type table() :: #{binary() => any()}.


%% Example:
%% batch_delete_table_rows_result() :: #{
%%   <<"failedBatchItems">> => list(failed_batch_item()()),
%%   <<"workbookCursor">> => float()
%% }
-type batch_delete_table_rows_result() :: #{binary() => any()}.


%% Example:
%% cell_input() :: #{
%%   <<"fact">> => string(),
%%   <<"facts">> => list(string()())
%% }
-type cell_input() :: #{binary() => any()}.


%% Example:
%% list_tables_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_tables_request() :: #{binary() => any()}.

-type batch_create_table_rows_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    request_timeout_exception().

-type batch_delete_table_rows_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    request_timeout_exception().

-type batch_update_table_rows_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    request_timeout_exception().

-type batch_upsert_table_rows_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    request_timeout_exception().

-type describe_table_data_import_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    request_timeout_exception().

-type get_screen_data_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    request_timeout_exception().

-type invoke_screen_automation_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    automation_execution_timeout_exception() | 
    service_unavailable_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    request_timeout_exception() | 
    automation_execution_exception().

-type list_table_columns_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    request_timeout_exception().

-type list_table_rows_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    request_timeout_exception().

-type list_tables_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    request_timeout_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    request_timeout_exception().

-type query_table_rows_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    request_timeout_exception().

-type start_table_data_import_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    request_timeout_exception().

-type tag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    request_timeout_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    request_timeout_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc
%% The BatchCreateTableRows API allows you to create one or more rows at the
%% end of a table in a workbook.
%%
%% The API allows you to specify the values to set in some or all of the
%% columns in the new rows.
%%
%% If a column is not explicitly set in a specific row, then the column level
%% formula specified in the table
%% will be applied to the new row. If there is no column level formula but
%% the last row of the table has a
%% formula, then that formula will be copied down to the new row. If there is
%% no column level formula and
%% no formula in the last row of the table, then that column will be left
%% blank for the new rows.
-spec batch_create_table_rows(aws_client:aws_client(), binary() | list(), binary() | list(), batch_create_table_rows_request()) ->
    {ok, batch_create_table_rows_result(), tuple()} |
    {error, any()} |
    {error, batch_create_table_rows_errors(), tuple()}.
batch_create_table_rows(Client, TableId, WorkbookId, Input) ->
    batch_create_table_rows(Client, TableId, WorkbookId, Input, []).

-spec batch_create_table_rows(aws_client:aws_client(), binary() | list(), binary() | list(), batch_create_table_rows_request(), proplists:proplist()) ->
    {ok, batch_create_table_rows_result(), tuple()} |
    {error, any()} |
    {error, batch_create_table_rows_errors(), tuple()}.
batch_create_table_rows(Client, TableId, WorkbookId, Input0, Options0) ->
    Method = post,
    Path = ["/workbooks/", aws_util:encode_uri(WorkbookId), "/tables/", aws_util:encode_uri(TableId), "/rows/batchcreate"],
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

%% @doc
%% The BatchDeleteTableRows API allows you to delete one or more rows from a
%% table in a workbook.
%%
%% You need to specify the ids of the rows that you want to delete from the
%% table.
-spec batch_delete_table_rows(aws_client:aws_client(), binary() | list(), binary() | list(), batch_delete_table_rows_request()) ->
    {ok, batch_delete_table_rows_result(), tuple()} |
    {error, any()} |
    {error, batch_delete_table_rows_errors(), tuple()}.
batch_delete_table_rows(Client, TableId, WorkbookId, Input) ->
    batch_delete_table_rows(Client, TableId, WorkbookId, Input, []).

-spec batch_delete_table_rows(aws_client:aws_client(), binary() | list(), binary() | list(), batch_delete_table_rows_request(), proplists:proplist()) ->
    {ok, batch_delete_table_rows_result(), tuple()} |
    {error, any()} |
    {error, batch_delete_table_rows_errors(), tuple()}.
batch_delete_table_rows(Client, TableId, WorkbookId, Input0, Options0) ->
    Method = post,
    Path = ["/workbooks/", aws_util:encode_uri(WorkbookId), "/tables/", aws_util:encode_uri(TableId), "/rows/batchdelete"],
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

%% @doc
%% The BatchUpdateTableRows API allows you to update one or more rows in a
%% table in a workbook.
%%
%% You can specify the values to set in some or all of the columns in the
%% table for the specified
%% rows.
%% If a column is not explicitly specified in a particular row, then that
%% column will not be updated
%% for that row. To clear out the data in a specific cell, you need to set
%% the value as an empty string
%% (&quot;&quot;).
-spec batch_update_table_rows(aws_client:aws_client(), binary() | list(), binary() | list(), batch_update_table_rows_request()) ->
    {ok, batch_update_table_rows_result(), tuple()} |
    {error, any()} |
    {error, batch_update_table_rows_errors(), tuple()}.
batch_update_table_rows(Client, TableId, WorkbookId, Input) ->
    batch_update_table_rows(Client, TableId, WorkbookId, Input, []).

-spec batch_update_table_rows(aws_client:aws_client(), binary() | list(), binary() | list(), batch_update_table_rows_request(), proplists:proplist()) ->
    {ok, batch_update_table_rows_result(), tuple()} |
    {error, any()} |
    {error, batch_update_table_rows_errors(), tuple()}.
batch_update_table_rows(Client, TableId, WorkbookId, Input0, Options0) ->
    Method = post,
    Path = ["/workbooks/", aws_util:encode_uri(WorkbookId), "/tables/", aws_util:encode_uri(TableId), "/rows/batchupdate"],
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

%% @doc
%% The BatchUpsertTableRows API allows you to upsert one or more rows in a
%% table.
%%
%% The upsert
%% operation takes a filter expression as input and evaluates it to find
%% matching rows on the destination
%% table. If matching rows are found, it will update the cells in the
%% matching rows to new values specified
%% in the request. If no matching rows are found, a new row is added at the
%% end of the table and the cells in
%% that row are set to the new values specified in the request.
%%
%% You can specify the values to set in some or all of the columns in the
%% table for the
%% matching or newly appended rows. If a column is not explicitly specified
%% for a particular row, then that
%% column will not be updated for that row. To clear out the data in a
%% specific cell, you need to set the value
%% as an empty string (&quot;&quot;).
-spec batch_upsert_table_rows(aws_client:aws_client(), binary() | list(), binary() | list(), batch_upsert_table_rows_request()) ->
    {ok, batch_upsert_table_rows_result(), tuple()} |
    {error, any()} |
    {error, batch_upsert_table_rows_errors(), tuple()}.
batch_upsert_table_rows(Client, TableId, WorkbookId, Input) ->
    batch_upsert_table_rows(Client, TableId, WorkbookId, Input, []).

-spec batch_upsert_table_rows(aws_client:aws_client(), binary() | list(), binary() | list(), batch_upsert_table_rows_request(), proplists:proplist()) ->
    {ok, batch_upsert_table_rows_result(), tuple()} |
    {error, any()} |
    {error, batch_upsert_table_rows_errors(), tuple()}.
batch_upsert_table_rows(Client, TableId, WorkbookId, Input0, Options0) ->
    Method = post,
    Path = ["/workbooks/", aws_util:encode_uri(WorkbookId), "/tables/", aws_util:encode_uri(TableId), "/rows/batchupsert"],
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

%% @doc
%% The DescribeTableDataImportJob API allows you to retrieve the status and
%% details of a table data import job.
-spec describe_table_data_import_job(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, describe_table_data_import_job_result(), tuple()} |
    {error, any()} |
    {error, describe_table_data_import_job_errors(), tuple()}.
describe_table_data_import_job(Client, JobId, TableId, WorkbookId)
  when is_map(Client) ->
    describe_table_data_import_job(Client, JobId, TableId, WorkbookId, #{}, #{}).

-spec describe_table_data_import_job(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_table_data_import_job_result(), tuple()} |
    {error, any()} |
    {error, describe_table_data_import_job_errors(), tuple()}.
describe_table_data_import_job(Client, JobId, TableId, WorkbookId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_table_data_import_job(Client, JobId, TableId, WorkbookId, QueryMap, HeadersMap, []).

-spec describe_table_data_import_job(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_table_data_import_job_result(), tuple()} |
    {error, any()} |
    {error, describe_table_data_import_job_errors(), tuple()}.
describe_table_data_import_job(Client, JobId, TableId, WorkbookId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workbooks/", aws_util:encode_uri(WorkbookId), "/tables/", aws_util:encode_uri(TableId), "/import/", aws_util:encode_uri(JobId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% The GetScreenData API allows retrieval of data from a screen in a
%% Honeycode app.
%%
%% The API allows setting local variables in the screen to filter, sort or
%% otherwise affect what will be
%% displayed on the screen.
-spec get_screen_data(aws_client:aws_client(), get_screen_data_request()) ->
    {ok, get_screen_data_result(), tuple()} |
    {error, any()} |
    {error, get_screen_data_errors(), tuple()}.
get_screen_data(Client, Input) ->
    get_screen_data(Client, Input, []).

-spec get_screen_data(aws_client:aws_client(), get_screen_data_request(), proplists:proplist()) ->
    {ok, get_screen_data_result(), tuple()} |
    {error, any()} |
    {error, get_screen_data_errors(), tuple()}.
get_screen_data(Client, Input0, Options0) ->
    Method = post,
    Path = ["/screendata"],
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

%% @doc
%% The InvokeScreenAutomation API allows invoking an action defined in a
%% screen in a Honeycode app.
%%
%% The API allows setting local variables, which can then be used in the
%% automation being invoked.
%% This allows automating the Honeycode app interactions to write, update or
%% delete data in the workbook.
-spec invoke_screen_automation(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), invoke_screen_automation_request()) ->
    {ok, invoke_screen_automation_result(), tuple()} |
    {error, any()} |
    {error, invoke_screen_automation_errors(), tuple()}.
invoke_screen_automation(Client, AppId, ScreenAutomationId, ScreenId, WorkbookId, Input) ->
    invoke_screen_automation(Client, AppId, ScreenAutomationId, ScreenId, WorkbookId, Input, []).

-spec invoke_screen_automation(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), invoke_screen_automation_request(), proplists:proplist()) ->
    {ok, invoke_screen_automation_result(), tuple()} |
    {error, any()} |
    {error, invoke_screen_automation_errors(), tuple()}.
invoke_screen_automation(Client, AppId, ScreenAutomationId, ScreenId, WorkbookId, Input0, Options0) ->
    Method = post,
    Path = ["/workbooks/", aws_util:encode_uri(WorkbookId), "/apps/", aws_util:encode_uri(AppId), "/screens/", aws_util:encode_uri(ScreenId), "/automations/", aws_util:encode_uri(ScreenAutomationId), ""],
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

%% @doc
%% The ListTableColumns API allows you to retrieve a list of all the columns
%% in a table in a workbook.
-spec list_table_columns(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_table_columns_result(), tuple()} |
    {error, any()} |
    {error, list_table_columns_errors(), tuple()}.
list_table_columns(Client, TableId, WorkbookId)
  when is_map(Client) ->
    list_table_columns(Client, TableId, WorkbookId, #{}, #{}).

-spec list_table_columns(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_table_columns_result(), tuple()} |
    {error, any()} |
    {error, list_table_columns_errors(), tuple()}.
list_table_columns(Client, TableId, WorkbookId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_table_columns(Client, TableId, WorkbookId, QueryMap, HeadersMap, []).

-spec list_table_columns(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_table_columns_result(), tuple()} |
    {error, any()} |
    {error, list_table_columns_errors(), tuple()}.
list_table_columns(Client, TableId, WorkbookId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workbooks/", aws_util:encode_uri(WorkbookId), "/tables/", aws_util:encode_uri(TableId), "/columns"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% The ListTableRows API allows you to retrieve a list of all the rows in a
%% table in a workbook.
-spec list_table_rows(aws_client:aws_client(), binary() | list(), binary() | list(), list_table_rows_request()) ->
    {ok, list_table_rows_result(), tuple()} |
    {error, any()} |
    {error, list_table_rows_errors(), tuple()}.
list_table_rows(Client, TableId, WorkbookId, Input) ->
    list_table_rows(Client, TableId, WorkbookId, Input, []).

-spec list_table_rows(aws_client:aws_client(), binary() | list(), binary() | list(), list_table_rows_request(), proplists:proplist()) ->
    {ok, list_table_rows_result(), tuple()} |
    {error, any()} |
    {error, list_table_rows_errors(), tuple()}.
list_table_rows(Client, TableId, WorkbookId, Input0, Options0) ->
    Method = post,
    Path = ["/workbooks/", aws_util:encode_uri(WorkbookId), "/tables/", aws_util:encode_uri(TableId), "/rows/list"],
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

%% @doc
%% The ListTables API allows you to retrieve a list of all the tables in a
%% workbook.
-spec list_tables(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tables_result(), tuple()} |
    {error, any()} |
    {error, list_tables_errors(), tuple()}.
list_tables(Client, WorkbookId)
  when is_map(Client) ->
    list_tables(Client, WorkbookId, #{}, #{}).

-spec list_tables(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tables_result(), tuple()} |
    {error, any()} |
    {error, list_tables_errors(), tuple()}.
list_tables(Client, WorkbookId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tables(Client, WorkbookId, QueryMap, HeadersMap, []).

-spec list_tables(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tables_result(), tuple()} |
    {error, any()} |
    {error, list_tables_errors(), tuple()}.
list_tables(Client, WorkbookId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workbooks/", aws_util:encode_uri(WorkbookId), "/tables"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% The ListTagsForResource API allows you to return a resource's tags.
-spec list_tags_for_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_for_resource_result(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_resource_result(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_resource_result(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% The QueryTableRows API allows you to use a filter formula to query for
%% specific rows in a table.
-spec query_table_rows(aws_client:aws_client(), binary() | list(), binary() | list(), query_table_rows_request()) ->
    {ok, query_table_rows_result(), tuple()} |
    {error, any()} |
    {error, query_table_rows_errors(), tuple()}.
query_table_rows(Client, TableId, WorkbookId, Input) ->
    query_table_rows(Client, TableId, WorkbookId, Input, []).

-spec query_table_rows(aws_client:aws_client(), binary() | list(), binary() | list(), query_table_rows_request(), proplists:proplist()) ->
    {ok, query_table_rows_result(), tuple()} |
    {error, any()} |
    {error, query_table_rows_errors(), tuple()}.
query_table_rows(Client, TableId, WorkbookId, Input0, Options0) ->
    Method = post,
    Path = ["/workbooks/", aws_util:encode_uri(WorkbookId), "/tables/", aws_util:encode_uri(TableId), "/rows/query"],
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

%% @doc
%% The StartTableDataImportJob API allows you to start an import job on a
%% table.
%%
%% This API will only return
%% the id of the job that was started. To find out the status of the import
%% request, you need to call the
%% DescribeTableDataImportJob API.
-spec start_table_data_import_job(aws_client:aws_client(), binary() | list(), binary() | list(), start_table_data_import_job_request()) ->
    {ok, start_table_data_import_job_result(), tuple()} |
    {error, any()} |
    {error, start_table_data_import_job_errors(), tuple()}.
start_table_data_import_job(Client, DestinationTableId, WorkbookId, Input) ->
    start_table_data_import_job(Client, DestinationTableId, WorkbookId, Input, []).

-spec start_table_data_import_job(aws_client:aws_client(), binary() | list(), binary() | list(), start_table_data_import_job_request(), proplists:proplist()) ->
    {ok, start_table_data_import_job_result(), tuple()} |
    {error, any()} |
    {error, start_table_data_import_job_errors(), tuple()}.
start_table_data_import_job(Client, DestinationTableId, WorkbookId, Input0, Options0) ->
    Method = post,
    Path = ["/workbooks/", aws_util:encode_uri(WorkbookId), "/tables/", aws_util:encode_uri(DestinationTableId), "/import"],
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

%% @doc
%% The TagResource API allows you to add tags to an ARN-able resource.
%%
%% Resource includes workbook, table,
%% screen and screen-automation.
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request()) ->
    {ok, tag_resource_result(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_result(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
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

%% @doc
%% The UntagResource API allows you to removes tags from an ARN-able
%% resource.
%%
%% Resource includes workbook, table,
%% screen and screen-automation.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request()) ->
    {ok, untag_resource_result(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_result(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
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

    QueryMapping = [
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
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
    Client1 = Client#{service => <<"honeycode">>},
    Host = build_host(<<"honeycode">>, Client1),
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
