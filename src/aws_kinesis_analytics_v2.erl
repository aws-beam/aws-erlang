%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Kinesis Data Analytics is a fully managed service that you can
%% use to process and analyze streaming data using SQL or Java. The service
%% enables you to quickly author and run SQL or Java code against streaming
%% sources to perform time series analytics, feed real-time dashboards, and
%% create real-time metrics.
-module(aws_kinesis_analytics_v2).

-export([add_application_cloud_watch_logging_option/2,
         add_application_cloud_watch_logging_option/3,
         add_application_input/2,
         add_application_input/3,
         add_application_input_processing_configuration/2,
         add_application_input_processing_configuration/3,
         add_application_output/2,
         add_application_output/3,
         add_application_reference_data_source/2,
         add_application_reference_data_source/3,
         add_application_vpc_configuration/2,
         add_application_vpc_configuration/3,
         create_application/2,
         create_application/3,
         create_application_snapshot/2,
         create_application_snapshot/3,
         delete_application/2,
         delete_application/3,
         delete_application_cloud_watch_logging_option/2,
         delete_application_cloud_watch_logging_option/3,
         delete_application_input_processing_configuration/2,
         delete_application_input_processing_configuration/3,
         delete_application_output/2,
         delete_application_output/3,
         delete_application_reference_data_source/2,
         delete_application_reference_data_source/3,
         delete_application_snapshot/2,
         delete_application_snapshot/3,
         delete_application_vpc_configuration/2,
         delete_application_vpc_configuration/3,
         describe_application/2,
         describe_application/3,
         describe_application_snapshot/2,
         describe_application_snapshot/3,
         discover_input_schema/2,
         discover_input_schema/3,
         list_application_snapshots/2,
         list_application_snapshots/3,
         list_applications/2,
         list_applications/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         start_application/2,
         start_application/3,
         stop_application/2,
         stop_application/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_application/2,
         update_application/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Adds an Amazon CloudWatch log stream to monitor application
%% configuration errors.
add_application_cloud_watch_logging_option(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_application_cloud_watch_logging_option(Client, Input, []).
add_application_cloud_watch_logging_option(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddApplicationCloudWatchLoggingOption">>, Input, Options).

%% @doc Adds a streaming source to your SQL-based Amazon Kinesis Data
%% Analytics application.
%%
%% You can add a streaming source when you create an application, or you can
%% use this operation to add a streaming source after you create an
%% application. For more information, see <a>CreateApplication</a>.
%%
%% Any configuration update, including adding a streaming source using this
%% operation, results in a new version of the application. You can use the
%% <a>DescribeApplication</a> operation to find the current application
%% version.
add_application_input(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_application_input(Client, Input, []).
add_application_input(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddApplicationInput">>, Input, Options).

%% @doc Adds an <a>InputProcessingConfiguration</a> to an SQL-based Kinesis
%% Data Analytics application. An input processor pre-processes records on
%% the input stream before the application's SQL code executes. Currently,
%% the only input processor available is <a
%% href="https://aws.amazon.com/documentation/lambda/">AWS Lambda</a>.
add_application_input_processing_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_application_input_processing_configuration(Client, Input, []).
add_application_input_processing_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddApplicationInputProcessingConfiguration">>, Input, Options).

%% @doc Adds an external destination to your SQL-based Amazon Kinesis Data
%% Analytics application.
%%
%% If you want Kinesis Data Analytics to deliver data from an in-application
%% stream within your application to an external destination (such as an
%% Kinesis data stream, a Kinesis Data Firehose delivery stream, or an AWS
%% Lambda function), you add the relevant configuration to your application
%% using this operation. You can configure one or more outputs for your
%% application. Each output configuration maps an in-application stream and
%% an external destination.
%%
%% You can use one of the output configurations to deliver data from your
%% in-application error stream to an external destination so that you can
%% analyze the errors.
%%
%% Any configuration update, including adding a streaming source using this
%% operation, results in a new version of the application. You can use the
%% <a>DescribeApplication</a> operation to find the current application
%% version.
add_application_output(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_application_output(Client, Input, []).
add_application_output(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddApplicationOutput">>, Input, Options).

%% @doc Adds a reference data source to an existing SQL-based Amazon Kinesis
%% Data Analytics application.
%%
%% Kinesis Data Analytics reads reference data (that is, an Amazon S3 object)
%% and creates an in-application table within your application. In the
%% request, you provide the source (S3 bucket name and object key name), name
%% of the in-application table to create, and the necessary mapping
%% information that describes how data in an Amazon S3 object maps to columns
%% in the resulting in-application table.
add_application_reference_data_source(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_application_reference_data_source(Client, Input, []).
add_application_reference_data_source(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddApplicationReferenceDataSource">>, Input, Options).

%% @doc Adds a Virtual Private Cloud (VPC) configuration to the application.
%% Applications can use VPCs to store and access resources securely.
%%
%% Note the following about VPC configurations for Kinesis Data Analytics
%% applications:
%%
%% <ul> <li> VPC configurations are not supported for SQL applications.
%%
%% </li> <li> When a VPC is added to a Kinesis Data Analytics application,
%% the application can no longer be accessed from the Internet directly. To
%% enable Internet access to the application, add an Internet gateway to your
%% VPC.
%%
%% </li> </ul>
add_application_vpc_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_application_vpc_configuration(Client, Input, []).
add_application_vpc_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddApplicationVpcConfiguration">>, Input, Options).

%% @doc Creates an Amazon Kinesis Data Analytics application. For information
%% about creating a Kinesis Data Analytics application, see <a
%% href="https://docs.aws.amazon.com/kinesisanalytics/latest/java/getting-started.html">Creating
%% an Application</a>.
create_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_application(Client, Input, []).
create_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateApplication">>, Input, Options).

%% @doc Creates a snapshot of the application's state data.
create_application_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_application_snapshot(Client, Input, []).
create_application_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateApplicationSnapshot">>, Input, Options).

%% @doc Deletes the specified application. Kinesis Data Analytics halts
%% application execution and deletes the application.
delete_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_application(Client, Input, []).
delete_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteApplication">>, Input, Options).

%% @doc Deletes an Amazon CloudWatch log stream from an Amazon Kinesis Data
%% Analytics application.
delete_application_cloud_watch_logging_option(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_application_cloud_watch_logging_option(Client, Input, []).
delete_application_cloud_watch_logging_option(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteApplicationCloudWatchLoggingOption">>, Input, Options).

%% @doc Deletes an <a>InputProcessingConfiguration</a> from an input.
delete_application_input_processing_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_application_input_processing_configuration(Client, Input, []).
delete_application_input_processing_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteApplicationInputProcessingConfiguration">>, Input, Options).

%% @doc Deletes the output destination configuration from your SQL-based
%% Amazon Kinesis Data Analytics application's configuration. Kinesis Data
%% Analytics will no longer write data from the corresponding in-application
%% stream to the external output destination.
delete_application_output(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_application_output(Client, Input, []).
delete_application_output(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteApplicationOutput">>, Input, Options).

%% @doc Deletes a reference data source configuration from the specified
%% SQL-based Amazon Kinesis Data Analytics application's configuration.
%%
%% If the application is running, Kinesis Data Analytics immediately removes
%% the in-application table that you created using the
%% <a>AddApplicationReferenceDataSource</a> operation.
delete_application_reference_data_source(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_application_reference_data_source(Client, Input, []).
delete_application_reference_data_source(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteApplicationReferenceDataSource">>, Input, Options).

%% @doc Deletes a snapshot of application state.
delete_application_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_application_snapshot(Client, Input, []).
delete_application_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteApplicationSnapshot">>, Input, Options).

%% @doc Removes a VPC configuration from a Kinesis Data Analytics
%% application.
delete_application_vpc_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_application_vpc_configuration(Client, Input, []).
delete_application_vpc_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteApplicationVpcConfiguration">>, Input, Options).

%% @doc Returns information about a specific Amazon Kinesis Data Analytics
%% application.
%%
%% If you want to retrieve a list of all applications in your account, use
%% the <a>ListApplications</a> operation.
describe_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_application(Client, Input, []).
describe_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeApplication">>, Input, Options).

%% @doc Returns information about a snapshot of application state data.
describe_application_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_application_snapshot(Client, Input, []).
describe_application_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeApplicationSnapshot">>, Input, Options).

%% @doc Infers a schema for an SQL-based Amazon Kinesis Data Analytics
%% application by evaluating sample records on the specified streaming source
%% (Kinesis data stream or Kinesis Data Firehose delivery stream) or Amazon
%% S3 object. In the response, the operation returns the inferred schema and
%% also the sample records that the operation used to infer the schema.
%%
%% You can use the inferred schema when configuring a streaming source for
%% your application. When you create an application using the Kinesis Data
%% Analytics console, the console uses this operation to infer a schema and
%% show it in the console user interface.
discover_input_schema(Client, Input)
  when is_map(Client), is_map(Input) ->
    discover_input_schema(Client, Input, []).
discover_input_schema(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DiscoverInputSchema">>, Input, Options).

%% @doc Lists information about the current application snapshots.
list_application_snapshots(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_application_snapshots(Client, Input, []).
list_application_snapshots(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListApplicationSnapshots">>, Input, Options).

%% @doc Returns a list of Amazon Kinesis Data Analytics applications in your
%% account. For each application, the response includes the application name,
%% Amazon Resource Name (ARN), and status.
%%
%% If you want detailed information about a specific application, use
%% <a>DescribeApplication</a>.
list_applications(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_applications(Client, Input, []).
list_applications(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListApplications">>, Input, Options).

%% @doc Retrieves the list of key-value tags assigned to the application. For
%% more information, see <a
%% href="https://docs.aws.amazon.com/kinesisanalytics/latest/java/how-tagging.html">Using
%% Tagging</a>.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Starts the specified Amazon Kinesis Data Analytics application. After
%% creating an application, you must exclusively call this operation to start
%% your application.
start_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_application(Client, Input, []).
start_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartApplication">>, Input, Options).

%% @doc Stops the application from processing data. You can stop an
%% application only if it is in the running state. You can use the
%% <a>DescribeApplication</a> operation to find the application state.
stop_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_application(Client, Input, []).
stop_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopApplication">>, Input, Options).

%% @doc Adds one or more key-value tags to a Kinesis Analytics application.
%% Note that the maximum number of application tags includes system tags. The
%% maximum number of user-defined application tags is 50. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/kinesisanalytics/latest/java/how-tagging.html">Using
%% Tagging</a>.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Removes one or more tags from a Kinesis Analytics application. For
%% more information, see <a
%% href="https://docs.aws.amazon.com/kinesisanalytics/latest/java/how-tagging.html">Using
%% Tagging</a>.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Updates an existing Amazon Kinesis Data Analytics application. Using
%% this operation, you can update application code, input configuration, and
%% output configuration.
%%
%% Kinesis Data Analytics updates the <code>ApplicationVersionId</code> each
%% time you update your application.
update_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_application(Client, Input, []).
update_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateApplication">>, Input, Options).

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
    Client1 = Client#{service => <<"kinesisanalytics">>},
    Host = build_host(<<"kinesisanalytics">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"KinesisAnalytics_20180523.", Action/binary>>}
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

build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Client) ->
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
