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
create_export(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_export(Client, Input, []).
create_export(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateExport">>, Input, Options).

%% @doc Deletes an existing data export.
delete_export(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_export(Client, Input, []).
delete_export(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteExport">>, Input, Options).

%% @doc Exports data based on the source data update.
get_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_execution(Client, Input, []).
get_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetExecution">>, Input, Options).

%% @doc Views the definition of an existing data export.
get_export(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_export(Client, Input, []).
get_export(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetExport">>, Input, Options).

%% @doc Returns the metadata for the specified table and table properties.
%%
%% This includes the list
%% of columns in the table schema, their data types, and column descriptions.
get_table(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_table(Client, Input, []).
get_table(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTable">>, Input, Options).

%% @doc Lists the historical executions for the export.
list_executions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_executions(Client, Input, []).
list_executions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListExecutions">>, Input, Options).

%% @doc Lists all data export definitions.
list_exports(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_exports(Client, Input, []).
list_exports(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListExports">>, Input, Options).

%% @doc Lists all available tables in data exports.
list_tables(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tables(Client, Input, []).
list_tables(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTables">>, Input, Options).

%% @doc List tags associated with an existing data export.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Adds tags for an existing data export definition.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Deletes tags associated with an existing data export definition.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Updates an existing data export by overwriting all export parameters.
%%
%% All export
%% parameters must be provided in the UpdateExport request.
update_export(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_export(Client, Input, []).
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
