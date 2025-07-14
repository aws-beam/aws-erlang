%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc You can use the Data Exports API to create customized exports from
%% multiple Amazon Web Services cost management and billing datasets, such as
%% cost and usage data and cost
%% optimization recommendations.
%%
%% The Data Exports API provides the following endpoint:
%%
%% https://bcm-data-exports.us-east-1.api.aws
-module(aws_bcm_data_exports).

-export([create_export/2,
         create_export/3,
         delete_export/2,
         delete_export/3,
         get_execution/2,
         get_execution/3,
         get_export/2,
         get_export/3,
         get_table/2,
         get_table/3,
         list_executions/2,
         list_executions/3,
         list_exports/2,
         list_exports/3,
         list_tables/2,
         list_tables/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_export/2,
         update_export/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% tag_resource_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"ResourceTags">> := list(resource_tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% export_status() :: #{
%%   <<"CreatedAt">> => [non_neg_integer()],
%%   <<"LastRefreshedAt">> => [non_neg_integer()],
%%   <<"LastUpdatedAt">> => [non_neg_integer()],
%%   <<"StatusCode">> => list(any()),
%%   <<"StatusReason">> => list(any())
%% }
-type export_status() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% create_export_request() :: #{
%%   <<"Export">> := export(),
%%   <<"ResourceTags">> => list(resource_tag())
%% }
-type create_export_request() :: #{binary() => any()}.

%% Example:
%% column() :: #{
%%   <<"Description">> => string(),
%%   <<"Name">> => string(),
%%   <<"Type">> => string()
%% }
-type column() :: #{binary() => any()}.

%% Example:
%% get_table_request() :: #{
%%   <<"TableName">> := string(),
%%   <<"TableProperties">> => map()
%% }
-type get_table_request() :: #{binary() => any()}.

%% Example:
%% get_table_response() :: #{
%%   <<"Description">> => string(),
%%   <<"Schema">> => list(column()),
%%   <<"TableName">> => string(),
%%   <<"TableProperties">> => map()
%% }
-type get_table_response() :: #{binary() => any()}.

%% Example:
%% delete_export_request() :: #{
%%   <<"ExportArn">> := string()
%% }
-type delete_export_request() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"ResourceTagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% execution_status() :: #{
%%   <<"CompletedAt">> => [non_neg_integer()],
%%   <<"CreatedAt">> => [non_neg_integer()],
%%   <<"LastUpdatedAt">> => [non_neg_integer()],
%%   <<"StatusCode">> => list(any()),
%%   <<"StatusReason">> => list(any())
%% }
-type execution_status() :: #{binary() => any()}.

%% Example:
%% list_exports_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_exports_request() :: #{binary() => any()}.

%% Example:
%% refresh_cadence() :: #{
%%   <<"Frequency">> => list(any())
%% }
-type refresh_cadence() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"ResourceId">> => string(),
%%   <<"ResourceType">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% list_tables_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Tables">> => list(table())
%% }
-type list_tables_response() :: #{binary() => any()}.

%% Example:
%% list_executions_response() :: #{
%%   <<"Executions">> => list(execution_reference()),
%%   <<"NextToken">> => string()
%% }
-type list_executions_response() :: #{binary() => any()}.

%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"QuotaCode">> => string(),
%%   <<"ResourceId">> => string(),
%%   <<"ResourceType">> => string(),
%%   <<"ServiceCode">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% export_reference() :: #{
%%   <<"ExportArn">> => string(),
%%   <<"ExportName">> => string(),
%%   <<"ExportStatus">> => export_status()
%% }
-type export_reference() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ResourceTags">> => list(resource_tag())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% delete_export_response() :: #{
%%   <<"ExportArn">> => string()
%% }
-type delete_export_response() :: #{binary() => any()}.

%% Example:
%% validation_exception_field() :: #{
%%   <<"Message">> => string(),
%%   <<"Name">> => string()
%% }
-type validation_exception_field() :: #{binary() => any()}.

%% Example:
%% data_query() :: #{
%%   <<"QueryStatement">> => string(),
%%   <<"TableConfigurations">> => map()
%% }
-type data_query() :: #{binary() => any()}.

%% Example:
%% s3_destination() :: #{
%%   <<"S3Bucket">> => string(),
%%   <<"S3OutputConfigurations">> => s3_output_configurations(),
%%   <<"S3Prefix">> => string(),
%%   <<"S3Region">> => string()
%% }
-type s3_destination() :: #{binary() => any()}.

%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% destination_configurations() :: #{
%%   <<"S3Destination">> => s3_destination()
%% }
-type destination_configurations() :: #{binary() => any()}.

%% Example:
%% resource_tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type resource_tag() :: #{binary() => any()}.

%% Example:
%% get_export_request() :: #{
%%   <<"ExportArn">> := string()
%% }
-type get_export_request() :: #{binary() => any()}.

%% Example:
%% get_execution_response() :: #{
%%   <<"ExecutionId">> => string(),
%%   <<"ExecutionStatus">> => execution_status(),
%%   <<"Export">> => export()
%% }
-type get_execution_response() :: #{binary() => any()}.

%% Example:
%% create_export_response() :: #{
%%   <<"ExportArn">> => string()
%% }
-type create_export_response() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% validation_exception() :: #{
%%   <<"Fields">> => list(validation_exception_field()),
%%   <<"Message">> => string(),
%%   <<"Reason">> => list(any())
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ResourceArn">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% s3_output_configurations() :: #{
%%   <<"Compression">> => list(any()),
%%   <<"Format">> => list(any()),
%%   <<"OutputType">> => list(any()),
%%   <<"Overwrite">> => list(any())
%% }
-type s3_output_configurations() :: #{binary() => any()}.

%% Example:
%% table_property_description() :: #{
%%   <<"DefaultValue">> => string(),
%%   <<"Description">> => string(),
%%   <<"Name">> => string(),
%%   <<"ValidValues">> => list(string())
%% }
-type table_property_description() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"QuotaCode">> => string(),
%%   <<"ServiceCode">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% get_export_response() :: #{
%%   <<"Export">> => export(),
%%   <<"ExportStatus">> => export_status()
%% }
-type get_export_response() :: #{binary() => any()}.

%% Example:
%% execution_reference() :: #{
%%   <<"ExecutionId">> => string(),
%%   <<"ExecutionStatus">> => execution_status()
%% }
-type execution_reference() :: #{binary() => any()}.

%% Example:
%% get_execution_request() :: #{
%%   <<"ExecutionId">> := string(),
%%   <<"ExportArn">> := string()
%% }
-type get_execution_request() :: #{binary() => any()}.

%% Example:
%% update_export_response() :: #{
%%   <<"ExportArn">> => string()
%% }
-type update_export_response() :: #{binary() => any()}.

%% Example:
%% update_export_request() :: #{
%%   <<"Export">> := export(),
%%   <<"ExportArn">> := string()
%% }
-type update_export_request() :: #{binary() => any()}.

%% Example:
%% table() :: #{
%%   <<"Description">> => string(),
%%   <<"TableName">> => string(),
%%   <<"TableProperties">> => list(table_property_description())
%% }
-type table() :: #{binary() => any()}.

%% Example:
%% export() :: #{
%%   <<"DataQuery">> => data_query(),
%%   <<"Description">> => string(),
%%   <<"DestinationConfigurations">> => destination_configurations(),
%%   <<"ExportArn">> => string(),
%%   <<"Name">> => string(),
%%   <<"RefreshCadence">> => refresh_cadence()
%% }
-type export() :: #{binary() => any()}.

%% Example:
%% list_executions_request() :: #{
%%   <<"ExportArn">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_executions_request() :: #{binary() => any()}.

%% Example:
%% list_tables_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_tables_request() :: #{binary() => any()}.

%% Example:
%% list_exports_response() :: #{
%%   <<"Exports">> => list(export_reference()),
%%   <<"NextToken">> => string()
%% }
-type list_exports_response() :: #{binary() => any()}.

-type create_export_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception().

-type delete_export_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_execution_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_export_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_table_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception().

-type list_executions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_exports_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception().

-type list_tables_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type tag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_export_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a data export and specifies the data query, the delivery
%% preference, and any
%% optional resource tags.
%%
%% A `DataQuery' consists of both a `QueryStatement' and
%% `TableConfigurations'.
%%
%% The `QueryStatement' is an SQL statement. Data Exports only supports a
%% limited
%% subset of the SQL syntax. For more information on the SQL syntax that is
%% supported, see Data query:
%% https://docs.aws.amazon.com/cur/latest/userguide/de-data-query.html. To
%% view the available tables and columns, see the Data Exports table
%% dictionary:
%% https://docs.aws.amazon.com/cur/latest/userguide/de-table-dictionary.html.
%%
%% The `TableConfigurations' is a collection of specified
%% `TableProperties' for the table being queried in the
%% `QueryStatement'.
%% TableProperties are additional configurations you can provide to change
%% the data and schema of
%% a table. Each table can have different TableProperties. However, tables
%% are not required to
%% have any TableProperties. Each table property has a default value that it
%% assumes if not
%% specified. For more information on table configurations, see Data query:
%% https://docs.aws.amazon.com/cur/latest/userguide/de-data-query.html. To
%% view the table properties available for each table, see the Data Exports
%% table
%% dictionary:
%% https://docs.aws.amazon.com/cur/latest/userguide/de-table-dictionary.html
%% or use the `ListTables' API to get a response of all tables
%% and their available properties.
-spec create_export(aws_client:aws_client(), create_export_request()) ->
    {ok, create_export_response(), tuple()} |
    {error, any()} |
    {error, create_export_errors(), tuple()}.
create_export(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_export(Client, Input, []).

-spec create_export(aws_client:aws_client(), create_export_request(), proplists:proplist()) ->
    {ok, create_export_response(), tuple()} |
    {error, any()} |
    {error, create_export_errors(), tuple()}.
create_export(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateExport">>, Input, Options).

%% @doc Deletes an existing data export.
-spec delete_export(aws_client:aws_client(), delete_export_request()) ->
    {ok, delete_export_response(), tuple()} |
    {error, any()} |
    {error, delete_export_errors(), tuple()}.
delete_export(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_export(Client, Input, []).

-spec delete_export(aws_client:aws_client(), delete_export_request(), proplists:proplist()) ->
    {ok, delete_export_response(), tuple()} |
    {error, any()} |
    {error, delete_export_errors(), tuple()}.
delete_export(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteExport">>, Input, Options).

%% @doc Exports data based on the source data update.
-spec get_execution(aws_client:aws_client(), get_execution_request()) ->
    {ok, get_execution_response(), tuple()} |
    {error, any()} |
    {error, get_execution_errors(), tuple()}.
get_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_execution(Client, Input, []).

-spec get_execution(aws_client:aws_client(), get_execution_request(), proplists:proplist()) ->
    {ok, get_execution_response(), tuple()} |
    {error, any()} |
    {error, get_execution_errors(), tuple()}.
get_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetExecution">>, Input, Options).

%% @doc Views the definition of an existing data export.
-spec get_export(aws_client:aws_client(), get_export_request()) ->
    {ok, get_export_response(), tuple()} |
    {error, any()} |
    {error, get_export_errors(), tuple()}.
get_export(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_export(Client, Input, []).

-spec get_export(aws_client:aws_client(), get_export_request(), proplists:proplist()) ->
    {ok, get_export_response(), tuple()} |
    {error, any()} |
    {error, get_export_errors(), tuple()}.
get_export(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetExport">>, Input, Options).

%% @doc Returns the metadata for the specified table and table properties.
%%
%% This includes the list
%% of columns in the table schema, their data types, and column descriptions.
-spec get_table(aws_client:aws_client(), get_table_request()) ->
    {ok, get_table_response(), tuple()} |
    {error, any()} |
    {error, get_table_errors(), tuple()}.
get_table(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_table(Client, Input, []).

-spec get_table(aws_client:aws_client(), get_table_request(), proplists:proplist()) ->
    {ok, get_table_response(), tuple()} |
    {error, any()} |
    {error, get_table_errors(), tuple()}.
get_table(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTable">>, Input, Options).

%% @doc Lists the historical executions for the export.
-spec list_executions(aws_client:aws_client(), list_executions_request()) ->
    {ok, list_executions_response(), tuple()} |
    {error, any()} |
    {error, list_executions_errors(), tuple()}.
list_executions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_executions(Client, Input, []).

-spec list_executions(aws_client:aws_client(), list_executions_request(), proplists:proplist()) ->
    {ok, list_executions_response(), tuple()} |
    {error, any()} |
    {error, list_executions_errors(), tuple()}.
list_executions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListExecutions">>, Input, Options).

%% @doc Lists all data export definitions.
-spec list_exports(aws_client:aws_client(), list_exports_request()) ->
    {ok, list_exports_response(), tuple()} |
    {error, any()} |
    {error, list_exports_errors(), tuple()}.
list_exports(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_exports(Client, Input, []).

-spec list_exports(aws_client:aws_client(), list_exports_request(), proplists:proplist()) ->
    {ok, list_exports_response(), tuple()} |
    {error, any()} |
    {error, list_exports_errors(), tuple()}.
list_exports(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListExports">>, Input, Options).

%% @doc Lists all available tables in data exports.
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

%% @doc List tags associated with an existing data export.
-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).

-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Adds tags for an existing data export definition.
-spec tag_resource(aws_client:aws_client(), tag_resource_request()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Deletes tags associated with an existing data export definition.
-spec untag_resource(aws_client:aws_client(), untag_resource_request()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).

-spec untag_resource(aws_client:aws_client(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Updates an existing data export by overwriting all export parameters.
%%
%% All export
%% parameters must be provided in the UpdateExport request.
-spec update_export(aws_client:aws_client(), update_export_request()) ->
    {ok, update_export_response(), tuple()} |
    {error, any()} |
    {error, update_export_errors(), tuple()}.
update_export(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_export(Client, Input, []).

-spec update_export(aws_client:aws_client(), update_export_request(), proplists:proplist()) ->
    {ok, update_export_response(), tuple()} |
    {error, any()} |
    {error, update_export_errors(), tuple()}.
update_export(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateExport">>, Input, Options).

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
    Client1 = Client#{service => <<"bcm-data-exports">>},
    Host = build_host(<<"bcm-data-exports">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"AWSBillingAndCostManagementDataExports.", Action/binary>>}
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
