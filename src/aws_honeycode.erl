%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Honeycode is a fully managed service that allows you to
%% quickly build mobile and web apps for teams—without programming.
%%
%% Build Honeycode apps for managing almost anything, like projects,
%% customers, operations, approvals, resources, and even your team.
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

%%====================================================================
%% API
%%====================================================================

%% @doc The BatchCreateTableRows API allows you to create one or more rows at
%% the end of a table in a workbook.
%%
%% The API allows you to specify the values to set in some or all of the
%% columns in the new rows.
%%
%% If a column is not explicitly set in a specific row, then the column level
%% formula specified in the table will be applied to the new row. If there is
%% no column level formula but the last row of the table has a formula, then
%% that formula will be copied down to the new row. If there is no column
%% level formula and no formula in the last row of the table, then that
%% column will be left blank for the new rows.
batch_create_table_rows(Client, TableId, WorkbookId, Input) ->
    batch_create_table_rows(Client, TableId, WorkbookId, Input, []).
batch_create_table_rows(Client, TableId, WorkbookId, Input0, Options0) ->
    Method = post,
    Path = ["/workbooks/", aws_util:encode_uri(WorkbookId), "/tables/", aws_util:encode_uri(TableId), "/rows/batchcreate"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc The BatchDeleteTableRows API allows you to delete one or more rows
%% from a table in a workbook.
%%
%% You need to specify the ids of the rows that you want to delete from the
%% table.
batch_delete_table_rows(Client, TableId, WorkbookId, Input) ->
    batch_delete_table_rows(Client, TableId, WorkbookId, Input, []).
batch_delete_table_rows(Client, TableId, WorkbookId, Input0, Options0) ->
    Method = post,
    Path = ["/workbooks/", aws_util:encode_uri(WorkbookId), "/tables/", aws_util:encode_uri(TableId), "/rows/batchdelete"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc The BatchUpdateTableRows API allows you to update one or more rows in
%% a table in a workbook.
%%
%% You can specify the values to set in some or all of the columns in the
%% table for the specified rows. If a column is not explicitly specified in a
%% particular row, then that column will not be updated for that row. To
%% clear out the data in a specific cell, you need to set the value as an
%% empty string ("").
batch_update_table_rows(Client, TableId, WorkbookId, Input) ->
    batch_update_table_rows(Client, TableId, WorkbookId, Input, []).
batch_update_table_rows(Client, TableId, WorkbookId, Input0, Options0) ->
    Method = post,
    Path = ["/workbooks/", aws_util:encode_uri(WorkbookId), "/tables/", aws_util:encode_uri(TableId), "/rows/batchupdate"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc The BatchUpsertTableRows API allows you to upsert one or more rows in
%% a table.
%%
%% The upsert operation takes a filter expression as input and evaluates it
%% to find matching rows on the destination table. If matching rows are
%% found, it will update the cells in the matching rows to new values
%% specified in the request. If no matching rows are found, a new row is
%% added at the end of the table and the cells in that row are set to the new
%% values specified in the request.
%%
%% You can specify the values to set in some or all of the columns in the
%% table for the matching or newly appended rows. If a column is not
%% explicitly specified for a particular row, then that column will not be
%% updated for that row. To clear out the data in a specific cell, you need
%% to set the value as an empty string ("").
batch_upsert_table_rows(Client, TableId, WorkbookId, Input) ->
    batch_upsert_table_rows(Client, TableId, WorkbookId, Input, []).
batch_upsert_table_rows(Client, TableId, WorkbookId, Input0, Options0) ->
    Method = post,
    Path = ["/workbooks/", aws_util:encode_uri(WorkbookId), "/tables/", aws_util:encode_uri(TableId), "/rows/batchupsert"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc The DescribeTableDataImportJob API allows you to retrieve the status
%% and details of a table data import job.
describe_table_data_import_job(Client, JobId, TableId, WorkbookId)
  when is_map(Client) ->
    describe_table_data_import_job(Client, JobId, TableId, WorkbookId, #{}, #{}).

describe_table_data_import_job(Client, JobId, TableId, WorkbookId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_table_data_import_job(Client, JobId, TableId, WorkbookId, QueryMap, HeadersMap, []).

describe_table_data_import_job(Client, JobId, TableId, WorkbookId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workbooks/", aws_util:encode_uri(WorkbookId), "/tables/", aws_util:encode_uri(TableId), "/import/", aws_util:encode_uri(JobId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc The GetScreenData API allows retrieval of data from a screen in a
%% Honeycode app.
%%
%% The API allows setting local variables in the screen to filter, sort or
%% otherwise affect what will be displayed on the screen.
get_screen_data(Client, Input) ->
    get_screen_data(Client, Input, []).
get_screen_data(Client, Input0, Options0) ->
    Method = post,
    Path = ["/screendata"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc The InvokeScreenAutomation API allows invoking an action defined in a
%% screen in a Honeycode app.
%%
%% The API allows setting local variables, which can then be used in the
%% automation being invoked. This allows automating the Honeycode app
%% interactions to write, update or delete data in the workbook.
invoke_screen_automation(Client, AppId, ScreenAutomationId, ScreenId, WorkbookId, Input) ->
    invoke_screen_automation(Client, AppId, ScreenAutomationId, ScreenId, WorkbookId, Input, []).
invoke_screen_automation(Client, AppId, ScreenAutomationId, ScreenId, WorkbookId, Input0, Options0) ->
    Method = post,
    Path = ["/workbooks/", aws_util:encode_uri(WorkbookId), "/apps/", aws_util:encode_uri(AppId), "/screens/", aws_util:encode_uri(ScreenId), "/automations/", aws_util:encode_uri(ScreenAutomationId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc The ListTableColumns API allows you to retrieve a list of all the
%% columns in a table in a workbook.
list_table_columns(Client, TableId, WorkbookId)
  when is_map(Client) ->
    list_table_columns(Client, TableId, WorkbookId, #{}, #{}).

list_table_columns(Client, TableId, WorkbookId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_table_columns(Client, TableId, WorkbookId, QueryMap, HeadersMap, []).

list_table_columns(Client, TableId, WorkbookId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workbooks/", aws_util:encode_uri(WorkbookId), "/tables/", aws_util:encode_uri(TableId), "/columns"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc The ListTableRows API allows you to retrieve a list of all the rows
%% in a table in a workbook.
list_table_rows(Client, TableId, WorkbookId, Input) ->
    list_table_rows(Client, TableId, WorkbookId, Input, []).
list_table_rows(Client, TableId, WorkbookId, Input0, Options0) ->
    Method = post,
    Path = ["/workbooks/", aws_util:encode_uri(WorkbookId), "/tables/", aws_util:encode_uri(TableId), "/rows/list"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc The ListTables API allows you to retrieve a list of all the tables in
%% a workbook.
list_tables(Client, WorkbookId)
  when is_map(Client) ->
    list_tables(Client, WorkbookId, #{}, #{}).

list_tables(Client, WorkbookId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tables(Client, WorkbookId, QueryMap, HeadersMap, []).

list_tables(Client, WorkbookId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workbooks/", aws_util:encode_uri(WorkbookId), "/tables"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc The ListTagsForResource API allows you to return a resource's tags.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc The QueryTableRows API allows you to use a filter formula to query
%% for specific rows in a table.
query_table_rows(Client, TableId, WorkbookId, Input) ->
    query_table_rows(Client, TableId, WorkbookId, Input, []).
query_table_rows(Client, TableId, WorkbookId, Input0, Options0) ->
    Method = post,
    Path = ["/workbooks/", aws_util:encode_uri(WorkbookId), "/tables/", aws_util:encode_uri(TableId), "/rows/query"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc The StartTableDataImportJob API allows you to start an import job on
%% a table.
%%
%% This API will only return the id of the job that was started. To find out
%% the status of the import request, you need to call the
%% DescribeTableDataImportJob API.
start_table_data_import_job(Client, DestinationTableId, WorkbookId, Input) ->
    start_table_data_import_job(Client, DestinationTableId, WorkbookId, Input, []).
start_table_data_import_job(Client, DestinationTableId, WorkbookId, Input0, Options0) ->
    Method = post,
    Path = ["/workbooks/", aws_util:encode_uri(WorkbookId), "/tables/", aws_util:encode_uri(DestinationTableId), "/import"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc The TagResource API allows you to add tags to an ARN-able resource.
%%
%% Resource includes workbook, table, screen and screen-automation.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc The UntagResource API allows you to removes tags from an ARN-able
%% resource.
%%
%% Resource includes workbook, table, screen and screen-automation.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
    AdditionalHeaders = [ {<<"Host">>, Host}
                        , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                        ],
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),

    Payload =
      case proplists:get_value(send_body_as_binary, Options) of
        true ->
          maps:get(<<"Body">>, Input, <<"">>);
        false ->
          encode_payload(Input)
      end,

    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    DecodeBody = not proplists:get_value(receive_body_as_binary, Options),
    handle_response(Response, SuccessStatusCode, DecodeBody).

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
handle_response({ok, StatusCode, ResponseHeaders, Client}, _, _DecodeBody) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}, _, _DecodeBody) ->
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
