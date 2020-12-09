%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Timestream is a fast, scalable, fully managed time series
%% database service that makes it easy to store and analyze trillions of time
%% series data points per day.
%%
%% With Timestream, you can easily store and analyze IoT sensor data to
%% derive insights from your IoT applications. You can analyze industrial
%% telemetry to streamline equipment management and maintenance. You can also
%% store and analyze log data and metrics to improve the performance and
%% availability of your applications. Timestream is built from the ground up
%% to effectively ingest, process, and store time series data. It organizes
%% data to optimize query processing. It automatically scales based on the
%% volume of data ingested and on the query volume to ensure you receive
%% optimal performance while inserting and querying data. As your data grows
%% over time, Timestream’s adaptive query processing engine spans across
%% storage tiers to provide fast analysis while reducing costs.
-module(aws_timestream_write).

-export([create_database/2,
         create_database/3,
         create_table/2,
         create_table/3,
         delete_database/2,
         delete_database/3,
         delete_table/2,
         delete_table/3,
         describe_database/2,
         describe_database/3,
         describe_endpoints/2,
         describe_endpoints/3,
         describe_table/2,
         describe_table/3,
         list_databases/2,
         list_databases/3,
         list_tables/2,
         list_tables/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_database/2,
         update_database/3,
         update_table/2,
         update_table/3,
         write_records/2,
         write_records/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a new Timestream database.
%%
%% If the KMS key is not specified, the database will be encrypted with a
%% Timestream managed KMS key located in your account. Refer to AWS managed
%% KMS keys for more info. Service quotas apply. For more information, see
%% Access Management in the Timestream Developer Guide.
create_database(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_database(Client, Input, []).
create_database(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDatabase">>, Input, Options).

%% @doc The CreateTable operation adds a new table to an existing database in
%% your account.
%%
%% In an AWS account, table names must be at least unique within each Region
%% if they are in the same database. You may have identical table names in
%% the same Region if the tables are in seperate databases. While creating
%% the table, you must specify the table name, database name, and the
%% retention properties. Service quotas apply. For more information, see
%% Access Management in the Timestream Developer Guide.
create_table(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_table(Client, Input, []).
create_table(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTable">>, Input, Options).

%% @doc Deletes a given Timestream database.
%%
%% This is an irreversible operation. After a database is deleted, the time
%% series data from its tables cannot be recovered.
%%
%% All tables in the database must be deleted first, or a ValidationException
%% error will be thrown.
%%
%% Due to the nature of distributed retries, the operation can return either
%% success or a ResourceNotFoundException. Clients should consider them
%% equivalent.
delete_database(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_database(Client, Input, []).
delete_database(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDatabase">>, Input, Options).

%% @doc Deletes a given Timestream table.
%%
%% This is an irreversible operation. After a Timestream database table is
%% deleted, the time series data stored in the table cannot be recovered.
%%
%% Due to the nature of distributed retries, the operation can return either
%% success or a ResourceNotFoundException. Clients should consider them
%% equivalent.
delete_table(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_table(Client, Input, []).
delete_table(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTable">>, Input, Options).

%% @doc Returns information about the database, including the database name,
%% time that the database was created, and the total number of tables found
%% within the database.
%%
%% Service quotas apply. For more information, see Access Management in the
%% Timestream Developer Guide.
describe_database(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_database(Client, Input, []).
describe_database(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDatabase">>, Input, Options).

%% @doc DescribeEndpoints returns a list of available endpoints to make
%% Timestream API calls against.
%%
%% This API is available through both Write and Query.
%%
%% Because Timestream’s SDKs are designed to transparently work with the
%% service’s architecture, including the management and mapping of the
%% service endpoints, it is not recommended that you use this API unless:
%%
%% <ul> <li> Your application uses a programming language that does not yet
%% have SDK support
%%
%% </li> <li> You require better control over the client-side implementation
%%
%% </li> </ul> For detailed information on how to use DescribeEndpoints, see
%% The Endpoint Discovery Pattern and REST APIs.
describe_endpoints(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_endpoints(Client, Input, []).
describe_endpoints(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEndpoints">>, Input, Options).

%% @doc Returns information about the table, including the table name,
%% database name, retention duration of the memory store and the magnetic
%% store.
%%
%% Service quotas apply. For more information, see Access Management in the
%% Timestream Developer Guide.
describe_table(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_table(Client, Input, []).
describe_table(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTable">>, Input, Options).

%% @doc Returns a list of your Timestream databases.
%%
%% Service quotas apply. For more information, see Access Management in the
%% Timestream Developer Guide.
list_databases(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_databases(Client, Input, []).
list_databases(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDatabases">>, Input, Options).

%% @doc A list of tables, along with the name, status and retention
%% properties of each table.
list_tables(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tables(Client, Input, []).
list_tables(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTables">>, Input, Options).

%% @doc List all tags on a Timestream resource.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Associate a set of tags with a Timestream resource.
%%
%% You can then activate these user-defined tags so that they appear on the
%% Billing and Cost Management console for cost allocation tracking.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Removes the association of tags from a Timestream resource.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Modifies the KMS key for an existing database.
%%
%% While updating the database, you must specify the database name and the
%% identifier of the new KMS key to be used (`KmsKeyId'). If there are any
%% concurrent `UpdateDatabase' requests, first writer wins.
update_database(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_database(Client, Input, []).
update_database(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDatabase">>, Input, Options).

%% @doc Modifies the retention duration of the memory store and magnetic
%% store for your Timestream table.
%%
%% Note that the change in retention duration takes effect immediately. For
%% example, if the retention period of the memory store was initially set to
%% 2 hours and then changed to 24 hours, the memory store will be capable of
%% holding 24 hours of data, but will be populated with 24 hours of data 22
%% hours after this change was made. Timestream does not retrieve data from
%% the magnetic store to populate the memory store.
%%
%% Service quotas apply. For more information, see Access Management in the
%% Timestream Developer Guide.
update_table(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_table(Client, Input, []).
update_table(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateTable">>, Input, Options).

%% @doc The WriteRecords operation enables you to write your time series data
%% into Timestream.
%%
%% You can specify a single data point or a batch of data points to be
%% inserted into the system. Timestream offers you with a flexible schema
%% that auto detects the column names and data types for your Timestream
%% tables based on the dimension names and data types of the data points you
%% specify when invoking writes into the database. Timestream support
%% eventual consistency read semantics. This means that when you query data
%% immediately after writing a batch of data into Timestream, the query
%% results might not reflect the results of a recently completed write
%% operation. The results may also include some stale data. If you repeat the
%% query request after a short time, the results should return the latest
%% data. Service quotas apply. For more information, see Access Management in
%% the Timestream Developer Guide.
write_records(Client, Input)
  when is_map(Client), is_map(Input) ->
    write_records(Client, Input, []).
write_records(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"WriteRecords">>, Input, Options).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), binary(), map(), list()) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map() | undefined,
    Error :: map().
request(Client, Action, Input0, Options) ->
    Client1 = Client#{service => <<"timestream">>},
    Host = build_host(<<"ingest.timestream">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
        {<<"X-Amz-Target">>, <<"Timestream_20181101.", Action/binary>>}
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
