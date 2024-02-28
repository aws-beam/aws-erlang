%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Keyspaces (for Apache Cassandra) is a scalable, highly
%% available, and managed Apache Cassandra-compatible database service.
%%
%% Amazon Keyspaces makes it easy to migrate, run, and scale Cassandra
%% workloads in the Amazon Web Services Cloud. With just a few clicks on the
%% Amazon Web Services Management Console or a few lines of code, you can
%% create keyspaces and tables in Amazon Keyspaces, without deploying any
%% infrastructure or installing software.
%%
%% In addition to supporting Cassandra Query Language (CQL) requests via
%% open-source Cassandra drivers, Amazon Keyspaces supports data definition
%% language (DDL) operations to manage keyspaces and tables using the Amazon
%% Web Services SDK and CLI, as well as infrastructure as code (IaC) services
%% and tools such as CloudFormation and Terraform. This API reference
%% describes the supported DDL operations in detail.
%%
%% For the list of all supported CQL APIs, see Supported Cassandra APIs,
%% operations, and data types in Amazon Keyspaces:
%% https://docs.aws.amazon.com/keyspaces/latest/devguide/cassandra-apis.html
%% in the Amazon Keyspaces Developer Guide.
%%
%% To learn how Amazon Keyspaces API actions are recorded with CloudTrail,
%% see Amazon Keyspaces information in CloudTrail:
%% https://docs.aws.amazon.com/keyspaces/latest/devguide/logging-using-cloudtrail.html#service-name-info-in-cloudtrail
%% in the Amazon Keyspaces Developer Guide.
%%
%% For more information about Amazon Web Services APIs, for example how to
%% implement retry logic or how to sign Amazon Web Services API requests, see
%% Amazon Web Services APIs:
%% https://docs.aws.amazon.com/general/latest/gr/aws-apis.html in the General
%% Reference.
-module(aws_keyspaces).

-export([create_keyspace/2,
         create_keyspace/3,
         create_table/2,
         create_table/3,
         delete_keyspace/2,
         delete_keyspace/3,
         delete_table/2,
         delete_table/3,
         get_keyspace/2,
         get_keyspace/3,
         get_table/2,
         get_table/3,
         get_table_auto_scaling_settings/2,
         get_table_auto_scaling_settings/3,
         list_keyspaces/2,
         list_keyspaces/3,
         list_tables/2,
         list_tables/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         restore_table/2,
         restore_table/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_table/2,
         update_table/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc The `CreateKeyspace' operation adds a new keyspace to your
%% account.
%%
%% In an Amazon Web Services account, keyspace names must be unique within
%% each Region.
%%
%% `CreateKeyspace' is an asynchronous operation. You can monitor the
%% creation status of the new keyspace by using the `GetKeyspace'
%% operation.
%%
%% For more information, see Creating keyspaces:
%% https://docs.aws.amazon.com/keyspaces/latest/devguide/working-with-keyspaces.html#keyspaces-create
%% in the Amazon Keyspaces Developer Guide.
create_keyspace(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_keyspace(Client, Input, []).
create_keyspace(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateKeyspace">>, Input, Options).

%% @doc The `CreateTable' operation adds a new table to the specified
%% keyspace.
%%
%% Within a keyspace, table names must be unique.
%%
%% `CreateTable' is an asynchronous operation. When the request is
%% received, the status of the table is set to `CREATING'. You can
%% monitor the creation status of the new table by using the `GetTable'
%% operation, which returns the current `status' of the table. You can
%% start using a table when the status is `ACTIVE'.
%%
%% For more information, see Creating tables:
%% https://docs.aws.amazon.com/keyspaces/latest/devguide/working-with-tables.html#tables-create
%% in the Amazon Keyspaces Developer Guide.
create_table(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_table(Client, Input, []).
create_table(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTable">>, Input, Options).

%% @doc The `DeleteKeyspace' operation deletes a keyspace and all of its
%% tables.
delete_keyspace(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_keyspace(Client, Input, []).
delete_keyspace(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteKeyspace">>, Input, Options).

%% @doc The `DeleteTable' operation deletes a table and all of its data.
%%
%% After a `DeleteTable' request is received, the specified table is in
%% the `DELETING' state until Amazon Keyspaces completes the deletion. If
%% the table is in the `ACTIVE' state, you can delete it. If a table is
%% either in the `CREATING' or `UPDATING' states, then Amazon
%% Keyspaces returns a `ResourceInUseException'. If the specified table
%% does not exist, Amazon Keyspaces returns a
%% `ResourceNotFoundException'. If the table is already in the
%% `DELETING' state, no error is returned.
delete_table(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_table(Client, Input, []).
delete_table(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTable">>, Input, Options).

%% @doc Returns the name and the Amazon Resource Name (ARN) of the specified
%% table.
get_keyspace(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_keyspace(Client, Input, []).
get_keyspace(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetKeyspace">>, Input, Options).

%% @doc Returns information about the table, including the table's name
%% and current status, the keyspace name, configuration settings, and
%% metadata.
%%
%% To read table metadata using `GetTable', `Select' action
%% permissions for the table and system tables are required to complete the
%% operation.
get_table(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_table(Client, Input, []).
get_table(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTable">>, Input, Options).

%% @doc Returns auto scaling related settings of the specified table in JSON
%% format.
%%
%% If the table is a multi-Region table, the Amazon Web Services Region
%% specific auto scaling settings of the table are included.
%%
%% Amazon Keyspaces auto scaling helps you provision throughput capacity for
%% variable workloads efficiently by increasing and decreasing your
%% table's read and write capacity automatically in response to
%% application traffic. For more information, see Managing throughput
%% capacity automatically with Amazon Keyspaces auto scaling:
%% https://docs.aws.amazon.com/keyspaces/latest/devguide/autoscaling.html in
%% the Amazon Keyspaces Developer Guide.
%%
%% `GetTableAutoScalingSettings' can't be used as an action in an IAM
%% policy.
%%
%% To define permissions for `GetTableAutoScalingSettings', you must
%% allow the following two actions in the IAM policy statement's
%% `Action' element:
%%
%% <ul> <li> `application-autoscaling:DescribeScalableTargets'
%%
%% </li> <li> `application-autoscaling:DescribeScalingPolicies'
%%
%% </li> </ul>
get_table_auto_scaling_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_table_auto_scaling_settings(Client, Input, []).
get_table_auto_scaling_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTableAutoScalingSettings">>, Input, Options).

%% @doc Returns a list of keyspaces.
list_keyspaces(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_keyspaces(Client, Input, []).
list_keyspaces(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListKeyspaces">>, Input, Options).

%% @doc Returns a list of tables for a specified keyspace.
list_tables(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tables(Client, Input, []).
list_tables(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTables">>, Input, Options).

%% @doc Returns a list of all tags associated with the specified Amazon
%% Keyspaces resource.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Restores the table to the specified point in time within the
%% `earliest_restorable_timestamp' and the current time.
%%
%% For more information about restore points, see Time window for PITR
%% continuous backups:
%% https://docs.aws.amazon.com/keyspaces/latest/devguide/PointInTimeRecovery_HowItWorks.html#howitworks_backup_window
%% in the Amazon Keyspaces Developer Guide.
%%
%% Any number of users can execute up to 4 concurrent restores (any type of
%% restore) in a given account.
%%
%% When you restore using point in time recovery, Amazon Keyspaces restores
%% your source table's schema and data to the state based on the selected
%% timestamp `(day:hour:minute:second)' to a new table. The Time to Live
%% (TTL) settings are also restored to the state based on the selected
%% timestamp.
%%
%% In addition to the table's schema, data, and TTL settings,
%% `RestoreTable' restores the capacity mode, auto scaling settings,
%% encryption settings, and point-in-time recovery settings from the source
%% table. Unlike the table's schema data and TTL settings, which are
%% restored based on the selected timestamp, these settings are always
%% restored based on the table's settings as of the current time or when
%% the table was deleted.
%%
%% You can also overwrite these settings during restore:
%%
%% <ul> <li> Read/write capacity mode
%%
%% </li> <li> Provisioned throughput capacity units
%%
%% </li> <li> Auto scaling settings
%%
%% </li> <li> Point-in-time (PITR) settings
%%
%% </li> <li> Tags
%%
%% </li> </ul> For more information, see PITR restore settings:
%% https://docs.aws.amazon.com/keyspaces/latest/devguide/PointInTimeRecovery_HowItWorks.html#howitworks_backup_settings
%% in the Amazon Keyspaces Developer Guide.
%%
%% Note that the following settings are not restored, and you must configure
%% them manually for the new table:
%%
%% <ul> <li> Identity and Access Management (IAM) policies
%%
%% </li> <li> Amazon CloudWatch metrics and alarms
%%
%% </li> </ul>
restore_table(Client, Input)
  when is_map(Client), is_map(Input) ->
    restore_table(Client, Input, []).
restore_table(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RestoreTable">>, Input, Options).

%% @doc Associates a set of tags with a Amazon Keyspaces resource.
%%
%% You can then activate these user-defined tags so that they appear on the
%% Cost Management Console for cost allocation tracking. For more
%% information, see Adding tags and labels to Amazon Keyspaces resources:
%% https://docs.aws.amazon.com/keyspaces/latest/devguide/tagging-keyspaces.html
%% in the Amazon Keyspaces Developer Guide.
%%
%% For IAM policy examples that show how to control access to Amazon
%% Keyspaces resources based on tags, see Amazon Keyspaces resource access
%% based on tags:
%% https://docs.aws.amazon.com/keyspaces/latest/devguide/security_iam_id-based-policy-examples.html#security_iam_id-based-policy-examples-tags
%% in the Amazon Keyspaces Developer Guide.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Removes the association of tags from a Amazon Keyspaces resource.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Adds new columns to the table or updates one of the table's
%% settings, for example capacity mode, auto scaling, encryption,
%% point-in-time recovery, or ttl settings.
%%
%% Note that you can only update one specific table setting per update
%% operation.
update_table(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_table(Client, Input, []).
update_table(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateTable">>, Input, Options).

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
    Client1 = Client#{service => <<"cassandra">>},
    Host = build_host(<<"cassandra">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
        {<<"X-Amz-Target">>, <<"KeyspacesService.", Action/binary>>}
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
