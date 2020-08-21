%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc <fullname>Amazon Kinesis Analytics</fullname>
%%
%% <b>Overview</b>
%%
%% <note> This documentation is for version 1 of the Amazon Kinesis Data
%% Analytics API, which only supports SQL applications. Version 2 of the API
%% supports SQL and Java applications. For more information about version 2,
%% see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis
%% Data Analytics API V2 Documentation</a>.
%%
%% </note> This is the <i>Amazon Kinesis Analytics v1 API Reference</i>. The
%% Amazon Kinesis Analytics Developer Guide provides additional information.
-module(aws_kinesis_analytics).

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
         create_application/2,
         create_application/3,
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
         describe_application/2,
         describe_application/3,
         discover_input_schema/2,
         discover_input_schema/3,
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

%% @doc <note> This documentation is for version 1 of the Amazon Kinesis Data
%% Analytics API, which only supports SQL applications. Version 2 of the API
%% supports SQL and Java applications. For more information about version 2,
%% see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis
%% Data Analytics API V2 Documentation</a>.
%%
%% </note> Adds a CloudWatch log stream to monitor application configuration
%% errors. For more information about using CloudWatch log streams with
%% Amazon Kinesis Analytics applications, see <a
%% href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/cloudwatch-logs.html">Working
%% with Amazon CloudWatch Logs</a>.
add_application_cloud_watch_logging_option(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_application_cloud_watch_logging_option(Client, Input, []).
add_application_cloud_watch_logging_option(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddApplicationCloudWatchLoggingOption">>, Input, Options).

%% @doc <note> This documentation is for version 1 of the Amazon Kinesis Data
%% Analytics API, which only supports SQL applications. Version 2 of the API
%% supports SQL and Java applications. For more information about version 2,
%% see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis
%% Data Analytics API V2 Documentation</a>.
%%
%% </note> Adds a streaming source to your Amazon Kinesis application. For
%% conceptual information, see <a
%% href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html">Configuring
%% Application Input</a>.
%%
%% You can add a streaming source either when you create an application or
%% you can use this operation to add a streaming source after you create an
%% application. For more information, see <a
%% href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_CreateApplication.html">CreateApplication</a>.
%%
%% Any configuration update, including adding a streaming source using this
%% operation, results in a new version of the application. You can use the <a
%% href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html">DescribeApplication</a>
%% operation to find the current application version.
%%
%% This operation requires permissions to perform the
%% <code>kinesisanalytics:AddApplicationInput</code> action.
add_application_input(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_application_input(Client, Input, []).
add_application_input(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddApplicationInput">>, Input, Options).

%% @doc <note> This documentation is for version 1 of the Amazon Kinesis Data
%% Analytics API, which only supports SQL applications. Version 2 of the API
%% supports SQL and Java applications. For more information about version 2,
%% see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis
%% Data Analytics API V2 Documentation</a>.
%%
%% </note> Adds an <a
%% href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_InputProcessingConfiguration.html">InputProcessingConfiguration</a>
%% to an application. An input processor preprocesses records on the input
%% stream before the application's SQL code executes. Currently, the only
%% input processor available is <a
%% href="https://docs.aws.amazon.com/lambda/">AWS Lambda</a>.
add_application_input_processing_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_application_input_processing_configuration(Client, Input, []).
add_application_input_processing_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddApplicationInputProcessingConfiguration">>, Input, Options).

%% @doc <note> This documentation is for version 1 of the Amazon Kinesis Data
%% Analytics API, which only supports SQL applications. Version 2 of the API
%% supports SQL and Java applications. For more information about version 2,
%% see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis
%% Data Analytics API V2 Documentation</a>.
%%
%% </note> Adds an external destination to your Amazon Kinesis Analytics
%% application.
%%
%% If you want Amazon Kinesis Analytics to deliver data from an
%% in-application stream within your application to an external destination
%% (such as an Amazon Kinesis stream, an Amazon Kinesis Firehose delivery
%% stream, or an AWS Lambda function), you add the relevant configuration to
%% your application using this operation. You can configure one or more
%% outputs for your application. Each output configuration maps an
%% in-application stream and an external destination.
%%
%% You can use one of the output configurations to deliver data from your
%% in-application error stream to an external destination so that you can
%% analyze the errors. For more information, see <a
%% href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-output.html">Understanding
%% Application Output (Destination)</a>.
%%
%% Any configuration update, including adding a streaming source using this
%% operation, results in a new version of the application. You can use the <a
%% href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html">DescribeApplication</a>
%% operation to find the current application version.
%%
%% For the limits on the number of application inputs and outputs you can
%% configure, see <a
%% href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/limits.html">Limits</a>.
%%
%% This operation requires permissions to perform the
%% <code>kinesisanalytics:AddApplicationOutput</code> action.
add_application_output(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_application_output(Client, Input, []).
add_application_output(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddApplicationOutput">>, Input, Options).

%% @doc <note> This documentation is for version 1 of the Amazon Kinesis Data
%% Analytics API, which only supports SQL applications. Version 2 of the API
%% supports SQL and Java applications. For more information about version 2,
%% see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis
%% Data Analytics API V2 Documentation</a>.
%%
%% </note> Adds a reference data source to an existing application.
%%
%% Amazon Kinesis Analytics reads reference data (that is, an Amazon S3
%% object) and creates an in-application table within your application. In
%% the request, you provide the source (S3 bucket name and object key name),
%% name of the in-application table to create, and the necessary mapping
%% information that describes how data in Amazon S3 object maps to columns in
%% the resulting in-application table.
%%
%% For conceptual information, see <a
%% href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html">Configuring
%% Application Input</a>. For the limits on data sources you can add to your
%% application, see <a
%% href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/limits.html">Limits</a>.
%%
%% This operation requires permissions to perform the
%% <code>kinesisanalytics:AddApplicationOutput</code> action.
add_application_reference_data_source(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_application_reference_data_source(Client, Input, []).
add_application_reference_data_source(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddApplicationReferenceDataSource">>, Input, Options).

%% @doc <note> This documentation is for version 1 of the Amazon Kinesis Data
%% Analytics API, which only supports SQL applications. Version 2 of the API
%% supports SQL and Java applications. For more information about version 2,
%% see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis
%% Data Analytics API V2 Documentation</a>.
%%
%% </note> Creates an Amazon Kinesis Analytics application. You can configure
%% each application with one streaming source as input, application code to
%% process the input, and up to three destinations where you want Amazon
%% Kinesis Analytics to write the output data from your application. For an
%% overview, see <a
%% href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works.html">How
%% it Works</a>.
%%
%% In the input configuration, you map the streaming source to an
%% in-application stream, which you can think of as a constantly updating
%% table. In the mapping, you must provide a schema for the in-application
%% stream and map each data column in the in-application stream to a data
%% element in the streaming source.
%%
%% Your application code is one or more SQL statements that read input data,
%% transform it, and generate output. Your application code can create one or
%% more SQL artifacts like SQL streams or pumps.
%%
%% In the output configuration, you can configure the application to write
%% data from in-application streams created in your applications to up to
%% three destinations.
%%
%% To read data from your source stream or write data to destination streams,
%% Amazon Kinesis Analytics needs your permissions. You grant these
%% permissions by creating IAM roles. This operation requires permissions to
%% perform the <code>kinesisanalytics:CreateApplication</code> action.
%%
%% For introductory exercises to create an Amazon Kinesis Analytics
%% application, see <a
%% href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/getting-started.html">Getting
%% Started</a>.
create_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_application(Client, Input, []).
create_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateApplication">>, Input, Options).

%% @doc <note> This documentation is for version 1 of the Amazon Kinesis Data
%% Analytics API, which only supports SQL applications. Version 2 of the API
%% supports SQL and Java applications. For more information about version 2,
%% see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis
%% Data Analytics API V2 Documentation</a>.
%%
%% </note> Deletes the specified application. Amazon Kinesis Analytics halts
%% application execution and deletes the application, including any
%% application artifacts (such as in-application streams, reference table,
%% and application code).
%%
%% This operation requires permissions to perform the
%% <code>kinesisanalytics:DeleteApplication</code> action.
delete_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_application(Client, Input, []).
delete_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteApplication">>, Input, Options).

%% @doc <note> This documentation is for version 1 of the Amazon Kinesis Data
%% Analytics API, which only supports SQL applications. Version 2 of the API
%% supports SQL and Java applications. For more information about version 2,
%% see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis
%% Data Analytics API V2 Documentation</a>.
%%
%% </note> Deletes a CloudWatch log stream from an application. For more
%% information about using CloudWatch log streams with Amazon Kinesis
%% Analytics applications, see <a
%% href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/cloudwatch-logs.html">Working
%% with Amazon CloudWatch Logs</a>.
delete_application_cloud_watch_logging_option(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_application_cloud_watch_logging_option(Client, Input, []).
delete_application_cloud_watch_logging_option(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteApplicationCloudWatchLoggingOption">>, Input, Options).

%% @doc <note> This documentation is for version 1 of the Amazon Kinesis Data
%% Analytics API, which only supports SQL applications. Version 2 of the API
%% supports SQL and Java applications. For more information about version 2,
%% see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis
%% Data Analytics API V2 Documentation</a>.
%%
%% </note> Deletes an <a
%% href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_InputProcessingConfiguration.html">InputProcessingConfiguration</a>
%% from an input.
delete_application_input_processing_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_application_input_processing_configuration(Client, Input, []).
delete_application_input_processing_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteApplicationInputProcessingConfiguration">>, Input, Options).

%% @doc <note> This documentation is for version 1 of the Amazon Kinesis Data
%% Analytics API, which only supports SQL applications. Version 2 of the API
%% supports SQL and Java applications. For more information about version 2,
%% see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis
%% Data Analytics API V2 Documentation</a>.
%%
%% </note> Deletes output destination configuration from your application
%% configuration. Amazon Kinesis Analytics will no longer write data from the
%% corresponding in-application stream to the external output destination.
%%
%% This operation requires permissions to perform the
%% <code>kinesisanalytics:DeleteApplicationOutput</code> action.
delete_application_output(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_application_output(Client, Input, []).
delete_application_output(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteApplicationOutput">>, Input, Options).

%% @doc <note> This documentation is for version 1 of the Amazon Kinesis Data
%% Analytics API, which only supports SQL applications. Version 2 of the API
%% supports SQL and Java applications. For more information about version 2,
%% see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis
%% Data Analytics API V2 Documentation</a>.
%%
%% </note> Deletes a reference data source configuration from the specified
%% application configuration.
%%
%% If the application is running, Amazon Kinesis Analytics immediately
%% removes the in-application table that you created using the <a
%% href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_AddApplicationReferenceDataSource.html">AddApplicationReferenceDataSource</a>
%% operation.
%%
%% This operation requires permissions to perform the
%% <code>kinesisanalytics.DeleteApplicationReferenceDataSource</code> action.
delete_application_reference_data_source(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_application_reference_data_source(Client, Input, []).
delete_application_reference_data_source(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteApplicationReferenceDataSource">>, Input, Options).

%% @doc <note> This documentation is for version 1 of the Amazon Kinesis Data
%% Analytics API, which only supports SQL applications. Version 2 of the API
%% supports SQL and Java applications. For more information about version 2,
%% see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis
%% Data Analytics API V2 Documentation</a>.
%%
%% </note> Returns information about a specific Amazon Kinesis Analytics
%% application.
%%
%% If you want to retrieve a list of all applications in your account, use
%% the <a
%% href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_ListApplications.html">ListApplications</a>
%% operation.
%%
%% This operation requires permissions to perform the
%% <code>kinesisanalytics:DescribeApplication</code> action. You can use
%% <code>DescribeApplication</code> to get the current application versionId,
%% which you need to call other operations such as <code>Update</code>.
describe_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_application(Client, Input, []).
describe_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeApplication">>, Input, Options).

%% @doc <note> This documentation is for version 1 of the Amazon Kinesis Data
%% Analytics API, which only supports SQL applications. Version 2 of the API
%% supports SQL and Java applications. For more information about version 2,
%% see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis
%% Data Analytics API V2 Documentation</a>.
%%
%% </note> Infers a schema by evaluating sample records on the specified
%% streaming source (Amazon Kinesis stream or Amazon Kinesis Firehose
%% delivery stream) or S3 object. In the response, the operation returns the
%% inferred schema and also the sample records that the operation used to
%% infer the schema.
%%
%% You can use the inferred schema when configuring a streaming source for
%% your application. For conceptual information, see <a
%% href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html">Configuring
%% Application Input</a>. Note that when you create an application using the
%% Amazon Kinesis Analytics console, the console uses this operation to infer
%% a schema and show it in the console user interface.
%%
%% This operation requires permissions to perform the
%% <code>kinesisanalytics:DiscoverInputSchema</code> action.
discover_input_schema(Client, Input)
  when is_map(Client), is_map(Input) ->
    discover_input_schema(Client, Input, []).
discover_input_schema(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DiscoverInputSchema">>, Input, Options).

%% @doc <note> This documentation is for version 1 of the Amazon Kinesis Data
%% Analytics API, which only supports SQL applications. Version 2 of the API
%% supports SQL and Java applications. For more information about version 2,
%% see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis
%% Data Analytics API V2 Documentation</a>.
%%
%% </note> Returns a list of Amazon Kinesis Analytics applications in your
%% account. For each application, the response includes the application name,
%% Amazon Resource Name (ARN), and status. If the response returns the
%% <code>HasMoreApplications</code> value as true, you can send another
%% request by adding the <code>ExclusiveStartApplicationName</code> in the
%% request body, and set the value of this to the last application name from
%% the previous response.
%%
%% If you want detailed information about a specific application, use <a
%% href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html">DescribeApplication</a>.
%%
%% This operation requires permissions to perform the
%% <code>kinesisanalytics:ListApplications</code> action.
list_applications(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_applications(Client, Input, []).
list_applications(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListApplications">>, Input, Options).

%% @doc Retrieves the list of key-value tags assigned to the application. For
%% more information, see <a
%% href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-tagging.html">Using
%% Tagging</a>.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc <note> This documentation is for version 1 of the Amazon Kinesis Data
%% Analytics API, which only supports SQL applications. Version 2 of the API
%% supports SQL and Java applications. For more information about version 2,
%% see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis
%% Data Analytics API V2 Documentation</a>.
%%
%% </note> Starts the specified Amazon Kinesis Analytics application. After
%% creating an application, you must exclusively call this operation to start
%% your application.
%%
%% After the application starts, it begins consuming the input data,
%% processes it, and writes the output to the configured destination.
%%
%% The application status must be <code>READY</code> for you to start an
%% application. You can get the application status in the console or using
%% the <a
%% href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html">DescribeApplication</a>
%% operation.
%%
%% After you start the application, you can stop the application from
%% processing the input by calling the <a
%% href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_StopApplication.html">StopApplication</a>
%% operation.
%%
%% This operation requires permissions to perform the
%% <code>kinesisanalytics:StartApplication</code> action.
start_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_application(Client, Input, []).
start_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartApplication">>, Input, Options).

%% @doc <note> This documentation is for version 1 of the Amazon Kinesis Data
%% Analytics API, which only supports SQL applications. Version 2 of the API
%% supports SQL and Java applications. For more information about version 2,
%% see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis
%% Data Analytics API V2 Documentation</a>.
%%
%% </note> Stops the application from processing input data. You can stop an
%% application only if it is in the running state. You can use the <a
%% href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html">DescribeApplication</a>
%% operation to find the application state. After the application is stopped,
%% Amazon Kinesis Analytics stops reading data from the input, the
%% application stops processing data, and there is no output written to the
%% destination.
%%
%% This operation requires permissions to perform the
%% <code>kinesisanalytics:StopApplication</code> action.
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
%% href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-tagging.html">Using
%% Tagging</a>.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Removes one or more tags from a Kinesis Analytics application. For
%% more information, see <a
%% href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-tagging.html">Using
%% Tagging</a>.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc <note> This documentation is for version 1 of the Amazon Kinesis Data
%% Analytics API, which only supports SQL applications. Version 2 of the API
%% supports SQL and Java applications. For more information about version 2,
%% see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis
%% Data Analytics API V2 Documentation</a>.
%%
%% </note> Updates an existing Amazon Kinesis Analytics application. Using
%% this API, you can update application code, input configuration, and output
%% configuration.
%%
%% Note that Amazon Kinesis Analytics updates the
%% <code>CurrentApplicationVersionId</code> each time you update your
%% application.
%%
%% This operation requires permission for the
%% <code>kinesisanalytics:UpdateApplication</code> action.
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
    Host = get_host(<<"kinesisanalytics">>, Client1),
    URL = get_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"KinesisAnalytics_20150814.", Action/binary>>}
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

get_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
get_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

get_url(Host, Client) ->
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
