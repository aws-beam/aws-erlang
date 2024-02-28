%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon RDS Performance Insights
%%
%% Amazon RDS Performance Insights enables you to monitor and explore
%% different dimensions of database load based on data captured from a
%% running DB instance.
%%
%% The guide provides detailed information about Performance Insights data
%% types, parameters and errors.
%%
%% When Performance Insights is enabled, the Amazon RDS Performance Insights
%% API provides visibility into the performance of your DB instance. Amazon
%% CloudWatch provides the authoritative source for Amazon Web Services
%% service-vended monitoring metrics. Performance Insights offers a
%% domain-specific view of DB load.
%%
%% DB load is measured as average active sessions. Performance Insights
%% provides the data to API consumers as a two-dimensional time-series
%% dataset. The time dimension provides DB load data for each time point in
%% the queried time range. Each time point decomposes overall load in
%% relation to the requested dimensions, measured at that time point.
%% Examples include SQL, Wait event, User, and Host.
%%
%% <ul> <li> To learn more about Performance Insights and Amazon Aurora DB
%% instances, go to the Amazon Aurora User Guide:
%% https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_PerfInsights.html
%% .
%%
%% </li> <li> To learn more about Performance Insights and Amazon RDS DB
%% instances, go to the Amazon RDS User Guide:
%% https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html
%% .
%%
%% </li> <li> To learn more about Performance Insights and Amazon DocumentDB
%% clusters, go to the Amazon DocumentDB Developer Guide:
%% https://docs.aws.amazon.com/documentdb/latest/developerguide/performance-insights.html
%% .
%%
%% </li> </ul>
-module(aws_pi).

-export([create_performance_analysis_report/2,
         create_performance_analysis_report/3,
         delete_performance_analysis_report/2,
         delete_performance_analysis_report/3,
         describe_dimension_keys/2,
         describe_dimension_keys/3,
         get_dimension_key_details/2,
         get_dimension_key_details/3,
         get_performance_analysis_report/2,
         get_performance_analysis_report/3,
         get_resource_metadata/2,
         get_resource_metadata/3,
         get_resource_metrics/2,
         get_resource_metrics/3,
         list_available_resource_dimensions/2,
         list_available_resource_dimensions/3,
         list_available_resource_metrics/2,
         list_available_resource_metrics/3,
         list_performance_analysis_reports/2,
         list_performance_analysis_reports/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a new performance analysis report for a specific time period
%% for the DB instance.
create_performance_analysis_report(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_performance_analysis_report(Client, Input, []).
create_performance_analysis_report(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePerformanceAnalysisReport">>, Input, Options).

%% @doc Deletes a performance analysis report.
delete_performance_analysis_report(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_performance_analysis_report(Client, Input, []).
delete_performance_analysis_report(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePerformanceAnalysisReport">>, Input, Options).

%% @doc For a specific time period, retrieve the top `N' dimension keys
%% for a metric.
%%
%% Each response element returns a maximum of 500 bytes. For larger elements,
%% such as SQL statements, only the first 500 bytes are returned.
describe_dimension_keys(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_dimension_keys(Client, Input, []).
describe_dimension_keys(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDimensionKeys">>, Input, Options).

%% @doc Get the attributes of the specified dimension group for a DB instance
%% or data source.
%%
%% For example, if you specify a SQL ID, `GetDimensionKeyDetails'
%% retrieves the full text of the dimension `db.sql.statement' associated
%% with this ID. This operation is useful because `GetResourceMetrics'
%% and `DescribeDimensionKeys' don't support retrieval of large SQL
%% statement text.
get_dimension_key_details(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_dimension_key_details(Client, Input, []).
get_dimension_key_details(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDimensionKeyDetails">>, Input, Options).

%% @doc Retrieves the report including the report ID, status, time details,
%% and the insights with recommendations.
%%
%% The report status can be `RUNNING', `SUCCEEDED', or `FAILED'.
%% The insights include the `description' and `recommendation'
%% fields.
get_performance_analysis_report(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_performance_analysis_report(Client, Input, []).
get_performance_analysis_report(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPerformanceAnalysisReport">>, Input, Options).

%% @doc Retrieve the metadata for different features.
%%
%% For example, the metadata might indicate that a feature is turned on or
%% off on a specific DB instance.
get_resource_metadata(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_resource_metadata(Client, Input, []).
get_resource_metadata(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetResourceMetadata">>, Input, Options).

%% @doc Retrieve Performance Insights metrics for a set of data sources over
%% a time period.
%%
%% You can provide specific dimension groups and dimensions, and provide
%% aggregation and filtering criteria for each group.
%%
%% Each response element returns a maximum of 500 bytes. For larger elements,
%% such as SQL statements, only the first 500 bytes are returned.
get_resource_metrics(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_resource_metrics(Client, Input, []).
get_resource_metrics(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetResourceMetrics">>, Input, Options).

%% @doc Retrieve the dimensions that can be queried for each specified metric
%% type on a specified DB instance.
list_available_resource_dimensions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_available_resource_dimensions(Client, Input, []).
list_available_resource_dimensions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAvailableResourceDimensions">>, Input, Options).

%% @doc Retrieve metrics of the specified types that can be queried for a
%% specified DB instance.
list_available_resource_metrics(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_available_resource_metrics(Client, Input, []).
list_available_resource_metrics(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAvailableResourceMetrics">>, Input, Options).

%% @doc Lists all the analysis reports created for the DB instance.
%%
%% The reports are sorted based on the start time of each report.
list_performance_analysis_reports(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_performance_analysis_reports(Client, Input, []).
list_performance_analysis_reports(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPerformanceAnalysisReports">>, Input, Options).

%% @doc Retrieves all the metadata tags associated with Amazon RDS
%% Performance Insights resource.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Adds metadata tags to the Amazon RDS Performance Insights resource.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Deletes the metadata tags from the Amazon RDS Performance Insights
%% resource.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

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
    Client1 = Client#{service => <<"pi">>},
    Host = build_host(<<"pi">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"PerformanceInsightsv20180227.", Action/binary>>}
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
