%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon RDS Performance Insights
%%
%% Amazon RDS Performance Insights enables you to monitor and explore
%% different dimensions of database load based on data captured from a
%% running DB instance.
%%
%% The guide
%% provides detailed information about Performance Insights data types,
%% parameters and errors.
%%
%% When Performance Insights is enabled, the Amazon RDS Performance Insights
%% API provides visibility into the performance of your DB instance. Amazon
%% CloudWatch provides the
%% authoritative source for Amazon Web Services service-vended monitoring
%% metrics. Performance Insights offers a domain-specific view of DB load.
%%
%% DB load is measured as average active sessions. Performance Insights
%% provides the data to API consumers as a two-dimensional time-series
%% dataset. The time dimension
%% provides DB load data for each time point in the queried time range. Each
%% time point decomposes overall load in relation to the requested
%% dimensions, measured at that time point. Examples include SQL, Wait event,
%% User, and Host.
%%
%% To learn more about Performance Insights and Amazon Aurora DB instances,
%% go to the
%% Amazon Aurora User Guide:
%% https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_PerfInsights.html
%% .
%%
%% To learn more about Performance Insights and Amazon RDS DB instances, go
%% to the
%% Amazon RDS User Guide:
%% https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html
%% .
%%
%% To learn more about Performance Insights and Amazon DocumentDB clusters,
%% go to the
%% Amazon DocumentDB Developer Guide:
%% https://docs.aws.amazon.com/documentdb/latest/developerguide/performance-insights.html
%% .
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


%% Example:
%% dimension_key_detail() :: #{
%%   <<"Dimension">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Value">> => string()
%% }
-type dimension_key_detail() :: #{binary() => any()}.

%% Example:
%% list_available_resource_dimensions_request() :: #{
%%   <<"AuthorizedActions">> => list(list(any())()),
%%   <<"Identifier">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"Metrics">> := list(string()),
%%   <<"NextToken">> => string(),
%%   <<"ServiceType">> := list(any())
%% }
-type list_available_resource_dimensions_request() :: #{binary() => any()}.

%% Example:
%% performance_insights_metric() :: #{
%%   <<"Dimensions">> => map(),
%%   <<"DisplayName">> => string(),
%%   <<"Filter">> => map(),
%%   <<"Metric">> => string(),
%%   <<"Value">> => float()
%% }
-type performance_insights_metric() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"ServiceType">> := list(any()),
%%   <<"Tags">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% data_point() :: #{
%%   <<"Timestamp">> => non_neg_integer(),
%%   <<"Value">> => float()
%% }
-type data_point() :: #{binary() => any()}.

%% Example:
%% list_available_resource_metrics_response() :: #{
%%   <<"Metrics">> => list(response_resource_metric()),
%%   <<"NextToken">> => string()
%% }
-type list_available_resource_metrics_response() :: #{binary() => any()}.

%% Example:
%% get_dimension_key_details_response() :: #{
%%   <<"Dimensions">> => list(dimension_key_detail())
%% }
-type get_dimension_key_details_response() :: #{binary() => any()}.

%% Example:
%% get_performance_analysis_report_request() :: #{
%%   <<"AcceptLanguage">> => list(any()),
%%   <<"AnalysisReportId">> := string(),
%%   <<"Identifier">> := string(),
%%   <<"ServiceType">> := list(any()),
%%   <<"TextFormat">> => list(any())
%% }
-type get_performance_analysis_report_request() :: #{binary() => any()}.

%% Example:
%% metric_key_data_points() :: #{
%%   <<"DataPoints">> => list(data_point()),
%%   <<"Key">> => response_resource_metric_key()
%% }
-type metric_key_data_points() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% get_resource_metadata_request() :: #{
%%   <<"Identifier">> := string(),
%%   <<"ServiceType">> := list(any())
%% }
-type get_resource_metadata_request() :: #{binary() => any()}.

%% Example:
%% get_performance_analysis_report_response() :: #{
%%   <<"AnalysisReport">> => analysis_report()
%% }
-type get_performance_analysis_report_response() :: #{binary() => any()}.

%% Example:
%% response_resource_metric() :: #{
%%   <<"Description">> => string(),
%%   <<"Metric">> => string(),
%%   <<"Unit">> => string()
%% }
-type response_resource_metric() :: #{binary() => any()}.

%% Example:
%% feature_metadata() :: #{
%%   <<"Status">> => list(any())
%% }
-type feature_metadata() :: #{binary() => any()}.

%% Example:
%% list_available_resource_dimensions_response() :: #{
%%   <<"MetricDimensions">> => list(metric_dimension_groups()),
%%   <<"NextToken">> => string()
%% }
-type list_available_resource_dimensions_response() :: #{binary() => any()}.

%% Example:
%% get_resource_metrics_request() :: #{
%%   <<"EndTime">> := non_neg_integer(),
%%   <<"Identifier">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"MetricQueries">> := list(metric_query()),
%%   <<"NextToken">> => string(),
%%   <<"PeriodAlignment">> => list(any()),
%%   <<"PeriodInSeconds">> => integer(),
%%   <<"ServiceType">> := list(any()),
%%   <<"StartTime">> := non_neg_integer()
%% }
-type get_resource_metrics_request() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"ServiceType">> := list(any()),
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% get_resource_metrics_response() :: #{
%%   <<"AlignedEndTime">> => non_neg_integer(),
%%   <<"AlignedStartTime">> => non_neg_integer(),
%%   <<"Identifier">> => string(),
%%   <<"MetricList">> => list(metric_key_data_points()),
%%   <<"NextToken">> => string()
%% }
-type get_resource_metrics_response() :: #{binary() => any()}.

%% Example:
%% create_performance_analysis_report_request() :: #{
%%   <<"EndTime">> := non_neg_integer(),
%%   <<"Identifier">> := string(),
%%   <<"ServiceType">> := list(any()),
%%   <<"StartTime">> := non_neg_integer(),
%%   <<"Tags">> => list(tag())
%% }
-type create_performance_analysis_report_request() :: #{binary() => any()}.

%% Example:
%% create_performance_analysis_report_response() :: #{
%%   <<"AnalysisReportId">> => string()
%% }
-type create_performance_analysis_report_response() :: #{binary() => any()}.

%% Example:
%% delete_performance_analysis_report_request() :: #{
%%   <<"AnalysisReportId">> := string(),
%%   <<"Identifier">> := string(),
%%   <<"ServiceType">> := list(any())
%% }
-type delete_performance_analysis_report_request() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% response_resource_metric_key() :: #{
%%   <<"Dimensions">> => map(),
%%   <<"Metric">> => string()
%% }
-type response_resource_metric_key() :: #{binary() => any()}.

%% Example:
%% recommendation() :: #{
%%   <<"RecommendationDescription">> => string(),
%%   <<"RecommendationId">> => string()
%% }
-type recommendation() :: #{binary() => any()}.

%% Example:
%% analysis_report() :: #{
%%   <<"AnalysisReportId">> => string(),
%%   <<"CreateTime">> => non_neg_integer(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"Identifier">> => string(),
%%   <<"Insights">> => list(insight()),
%%   <<"ServiceType">> => list(any()),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"Status">> => list(any())
%% }
-type analysis_report() :: #{binary() => any()}.

%% Example:
%% analysis_report_summary() :: #{
%%   <<"AnalysisReportId">> => string(),
%%   <<"CreateTime">> => non_neg_integer(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"Status">> => list(any()),
%%   <<"Tags">> => list(tag())
%% }
-type analysis_report_summary() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => list(tag())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% list_available_resource_metrics_request() :: #{
%%   <<"Identifier">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"MetricTypes">> := list(string()),
%%   <<"NextToken">> => string(),
%%   <<"ServiceType">> := list(any())
%% }
-type list_available_resource_metrics_request() :: #{binary() => any()}.

%% Example:
%% dimension_group() :: #{
%%   <<"Dimensions">> => list(string()),
%%   <<"Group">> => string(),
%%   <<"Limit">> => integer()
%% }
-type dimension_group() :: #{binary() => any()}.

%% Example:
%% metric_query() :: #{
%%   <<"Filter">> => map(),
%%   <<"GroupBy">> => dimension_group(),
%%   <<"Metric">> => string()
%% }
-type metric_query() :: #{binary() => any()}.

%% Example:
%% dimension_detail() :: #{
%%   <<"Identifier">> => string()
%% }
-type dimension_detail() :: #{binary() => any()}.

%% Example:
%% dimension_key_description() :: #{
%%   <<"AdditionalMetrics">> => map(),
%%   <<"Dimensions">> => map(),
%%   <<"Partitions">> => list(float()),
%%   <<"Total">> => float()
%% }
-type dimension_key_description() :: #{binary() => any()}.

%% Example:
%% get_dimension_key_details_request() :: #{
%%   <<"Group">> := string(),
%%   <<"GroupIdentifier">> := string(),
%%   <<"Identifier">> := string(),
%%   <<"RequestedDimensions">> => list(string()),
%%   <<"ServiceType">> := list(any())
%% }
-type get_dimension_key_details_request() :: #{binary() => any()}.

%% Example:
%% not_authorized_exception() :: #{
%%   <<"Message">> => string()
%% }
-type not_authorized_exception() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% invalid_argument_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_argument_exception() :: #{binary() => any()}.

%% Example:
%% delete_performance_analysis_report_response() :: #{

%% }
-type delete_performance_analysis_report_response() :: #{binary() => any()}.

%% Example:
%% internal_service_error() :: #{
%%   <<"Message">> => string()
%% }
-type internal_service_error() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"ServiceType">> := list(any())
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% response_partition_key() :: #{
%%   <<"Dimensions">> => map()
%% }
-type response_partition_key() :: #{binary() => any()}.

%% Example:
%% list_performance_analysis_reports_request() :: #{
%%   <<"Identifier">> := string(),
%%   <<"ListTags">> => boolean(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ServiceType">> := list(any())
%% }
-type list_performance_analysis_reports_request() :: #{binary() => any()}.

%% Example:
%% describe_dimension_keys_request() :: #{
%%   <<"AdditionalMetrics">> => list(string()),
%%   <<"EndTime">> := non_neg_integer(),
%%   <<"Filter">> => map(),
%%   <<"GroupBy">> := dimension_group(),
%%   <<"Identifier">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"Metric">> := string(),
%%   <<"NextToken">> => string(),
%%   <<"PartitionBy">> => dimension_group(),
%%   <<"PeriodInSeconds">> => integer(),
%%   <<"ServiceType">> := list(any()),
%%   <<"StartTime">> := non_neg_integer()
%% }
-type describe_dimension_keys_request() :: #{binary() => any()}.

%% Example:
%% dimension_group_detail() :: #{
%%   <<"Dimensions">> => list(dimension_detail()),
%%   <<"Group">> => string()
%% }
-type dimension_group_detail() :: #{binary() => any()}.

%% Example:
%% describe_dimension_keys_response() :: #{
%%   <<"AlignedEndTime">> => non_neg_integer(),
%%   <<"AlignedStartTime">> => non_neg_integer(),
%%   <<"Keys">> => list(dimension_key_description()),
%%   <<"NextToken">> => string(),
%%   <<"PartitionKeys">> => list(response_partition_key())
%% }
-type describe_dimension_keys_response() :: #{binary() => any()}.

%% Example:
%% data() :: #{
%%   <<"PerformanceInsightsMetric">> => performance_insights_metric()
%% }
-type data() :: #{binary() => any()}.

%% Example:
%% insight() :: #{
%%   <<"BaselineData">> => list(data()),
%%   <<"Context">> => list(any()),
%%   <<"Description">> => string(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"InsightData">> => list(data()),
%%   <<"InsightId">> => string(),
%%   <<"InsightType">> => string(),
%%   <<"Recommendations">> => list(recommendation()),
%%   <<"Severity">> => list(any()),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"SupportingInsights">> => list(insight())
%% }
-type insight() :: #{binary() => any()}.

%% Example:
%% list_performance_analysis_reports_response() :: #{
%%   <<"AnalysisReports">> => list(analysis_report_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_performance_analysis_reports_response() :: #{binary() => any()}.

%% Example:
%% metric_dimension_groups() :: #{
%%   <<"Groups">> => list(dimension_group_detail()),
%%   <<"Metric">> => string()
%% }
-type metric_dimension_groups() :: #{binary() => any()}.

%% Example:
%% get_resource_metadata_response() :: #{
%%   <<"Features">> => map(),
%%   <<"Identifier">> => string()
%% }
-type get_resource_metadata_response() :: #{binary() => any()}.

-type create_performance_analysis_report_errors() ::
    internal_service_error() | 
    invalid_argument_exception() | 
    not_authorized_exception().

-type delete_performance_analysis_report_errors() ::
    internal_service_error() | 
    invalid_argument_exception() | 
    not_authorized_exception().

-type describe_dimension_keys_errors() ::
    internal_service_error() | 
    invalid_argument_exception() | 
    not_authorized_exception().

-type get_dimension_key_details_errors() ::
    internal_service_error() | 
    invalid_argument_exception() | 
    not_authorized_exception().

-type get_performance_analysis_report_errors() ::
    internal_service_error() | 
    invalid_argument_exception() | 
    not_authorized_exception().

-type get_resource_metadata_errors() ::
    internal_service_error() | 
    invalid_argument_exception() | 
    not_authorized_exception().

-type get_resource_metrics_errors() ::
    internal_service_error() | 
    invalid_argument_exception() | 
    not_authorized_exception().

-type list_available_resource_dimensions_errors() ::
    internal_service_error() | 
    invalid_argument_exception() | 
    not_authorized_exception().

-type list_available_resource_metrics_errors() ::
    internal_service_error() | 
    invalid_argument_exception() | 
    not_authorized_exception().

-type list_performance_analysis_reports_errors() ::
    internal_service_error() | 
    invalid_argument_exception() | 
    not_authorized_exception().

-type list_tags_for_resource_errors() ::
    internal_service_error() | 
    invalid_argument_exception() | 
    not_authorized_exception().

-type tag_resource_errors() ::
    internal_service_error() | 
    invalid_argument_exception() | 
    not_authorized_exception().

-type untag_resource_errors() ::
    internal_service_error() | 
    invalid_argument_exception() | 
    not_authorized_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a new performance analysis report for a specific time period
%% for the
%% DB instance.
-spec create_performance_analysis_report(aws_client:aws_client(), create_performance_analysis_report_request()) ->
    {ok, create_performance_analysis_report_response(), tuple()} |
    {error, any()} |
    {error, create_performance_analysis_report_errors(), tuple()}.
create_performance_analysis_report(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_performance_analysis_report(Client, Input, []).

-spec create_performance_analysis_report(aws_client:aws_client(), create_performance_analysis_report_request(), proplists:proplist()) ->
    {ok, create_performance_analysis_report_response(), tuple()} |
    {error, any()} |
    {error, create_performance_analysis_report_errors(), tuple()}.
create_performance_analysis_report(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePerformanceAnalysisReport">>, Input, Options).

%% @doc Deletes a performance analysis report.
-spec delete_performance_analysis_report(aws_client:aws_client(), delete_performance_analysis_report_request()) ->
    {ok, delete_performance_analysis_report_response(), tuple()} |
    {error, any()} |
    {error, delete_performance_analysis_report_errors(), tuple()}.
delete_performance_analysis_report(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_performance_analysis_report(Client, Input, []).

-spec delete_performance_analysis_report(aws_client:aws_client(), delete_performance_analysis_report_request(), proplists:proplist()) ->
    {ok, delete_performance_analysis_report_response(), tuple()} |
    {error, any()} |
    {error, delete_performance_analysis_report_errors(), tuple()}.
delete_performance_analysis_report(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePerformanceAnalysisReport">>, Input, Options).

%% @doc For a specific time period, retrieve the top `N' dimension keys
%% for a metric.
%%
%% Each response element returns a maximum of 500 bytes. For larger elements,
%% such as SQL statements,
%% only the first 500 bytes are returned.
-spec describe_dimension_keys(aws_client:aws_client(), describe_dimension_keys_request()) ->
    {ok, describe_dimension_keys_response(), tuple()} |
    {error, any()} |
    {error, describe_dimension_keys_errors(), tuple()}.
describe_dimension_keys(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_dimension_keys(Client, Input, []).

-spec describe_dimension_keys(aws_client:aws_client(), describe_dimension_keys_request(), proplists:proplist()) ->
    {ok, describe_dimension_keys_response(), tuple()} |
    {error, any()} |
    {error, describe_dimension_keys_errors(), tuple()}.
describe_dimension_keys(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDimensionKeys">>, Input, Options).

%% @doc Get the attributes of the specified dimension group for a DB instance
%% or data source.
%%
%% For example, if you specify a SQL ID,
%% `GetDimensionKeyDetails' retrieves the full text of the dimension
%% `db.sql.statement' associated with this ID.
%% This operation is useful because `GetResourceMetrics' and
%% `DescribeDimensionKeys' don't support retrieval of large
%% SQL statement text, lock snapshots, and execution plans.
-spec get_dimension_key_details(aws_client:aws_client(), get_dimension_key_details_request()) ->
    {ok, get_dimension_key_details_response(), tuple()} |
    {error, any()} |
    {error, get_dimension_key_details_errors(), tuple()}.
get_dimension_key_details(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_dimension_key_details(Client, Input, []).

-spec get_dimension_key_details(aws_client:aws_client(), get_dimension_key_details_request(), proplists:proplist()) ->
    {ok, get_dimension_key_details_response(), tuple()} |
    {error, any()} |
    {error, get_dimension_key_details_errors(), tuple()}.
get_dimension_key_details(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDimensionKeyDetails">>, Input, Options).

%% @doc Retrieves the report including the report ID, status, time details,
%% and the insights
%% with recommendations.
%%
%% The report status can be `RUNNING',
%% `SUCCEEDED', or `FAILED'. The insights include the
%% `description' and `recommendation' fields.
-spec get_performance_analysis_report(aws_client:aws_client(), get_performance_analysis_report_request()) ->
    {ok, get_performance_analysis_report_response(), tuple()} |
    {error, any()} |
    {error, get_performance_analysis_report_errors(), tuple()}.
get_performance_analysis_report(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_performance_analysis_report(Client, Input, []).

-spec get_performance_analysis_report(aws_client:aws_client(), get_performance_analysis_report_request(), proplists:proplist()) ->
    {ok, get_performance_analysis_report_response(), tuple()} |
    {error, any()} |
    {error, get_performance_analysis_report_errors(), tuple()}.
get_performance_analysis_report(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPerformanceAnalysisReport">>, Input, Options).

%% @doc Retrieve the metadata for different features.
%%
%% For example, the metadata might indicate
%% that a feature is turned on or off on a specific DB instance.
-spec get_resource_metadata(aws_client:aws_client(), get_resource_metadata_request()) ->
    {ok, get_resource_metadata_response(), tuple()} |
    {error, any()} |
    {error, get_resource_metadata_errors(), tuple()}.
get_resource_metadata(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_resource_metadata(Client, Input, []).

-spec get_resource_metadata(aws_client:aws_client(), get_resource_metadata_request(), proplists:proplist()) ->
    {ok, get_resource_metadata_response(), tuple()} |
    {error, any()} |
    {error, get_resource_metadata_errors(), tuple()}.
get_resource_metadata(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetResourceMetadata">>, Input, Options).

%% @doc Retrieve Performance Insights metrics for a set of data sources over
%% a time period.
%%
%% You can provide
%% specific dimension groups and dimensions, and provide filtering criteria
%% for each group. You must specify an aggregate function for
%% each metric.
%%
%% Each response element returns a maximum of 500 bytes. For larger elements,
%% such as SQL statements,
%% only the first 500 bytes are returned.
-spec get_resource_metrics(aws_client:aws_client(), get_resource_metrics_request()) ->
    {ok, get_resource_metrics_response(), tuple()} |
    {error, any()} |
    {error, get_resource_metrics_errors(), tuple()}.
get_resource_metrics(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_resource_metrics(Client, Input, []).

-spec get_resource_metrics(aws_client:aws_client(), get_resource_metrics_request(), proplists:proplist()) ->
    {ok, get_resource_metrics_response(), tuple()} |
    {error, any()} |
    {error, get_resource_metrics_errors(), tuple()}.
get_resource_metrics(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetResourceMetrics">>, Input, Options).

%% @doc Retrieve the dimensions that can be queried for each specified metric
%% type on a specified DB instance.
-spec list_available_resource_dimensions(aws_client:aws_client(), list_available_resource_dimensions_request()) ->
    {ok, list_available_resource_dimensions_response(), tuple()} |
    {error, any()} |
    {error, list_available_resource_dimensions_errors(), tuple()}.
list_available_resource_dimensions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_available_resource_dimensions(Client, Input, []).

-spec list_available_resource_dimensions(aws_client:aws_client(), list_available_resource_dimensions_request(), proplists:proplist()) ->
    {ok, list_available_resource_dimensions_response(), tuple()} |
    {error, any()} |
    {error, list_available_resource_dimensions_errors(), tuple()}.
list_available_resource_dimensions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAvailableResourceDimensions">>, Input, Options).

%% @doc Retrieve metrics of the specified types that can be queried for a
%% specified DB instance.
-spec list_available_resource_metrics(aws_client:aws_client(), list_available_resource_metrics_request()) ->
    {ok, list_available_resource_metrics_response(), tuple()} |
    {error, any()} |
    {error, list_available_resource_metrics_errors(), tuple()}.
list_available_resource_metrics(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_available_resource_metrics(Client, Input, []).

-spec list_available_resource_metrics(aws_client:aws_client(), list_available_resource_metrics_request(), proplists:proplist()) ->
    {ok, list_available_resource_metrics_response(), tuple()} |
    {error, any()} |
    {error, list_available_resource_metrics_errors(), tuple()}.
list_available_resource_metrics(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAvailableResourceMetrics">>, Input, Options).

%% @doc Lists all the analysis reports created for the DB instance.
%%
%% The reports are sorted based on the start time of each report.
-spec list_performance_analysis_reports(aws_client:aws_client(), list_performance_analysis_reports_request()) ->
    {ok, list_performance_analysis_reports_response(), tuple()} |
    {error, any()} |
    {error, list_performance_analysis_reports_errors(), tuple()}.
list_performance_analysis_reports(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_performance_analysis_reports(Client, Input, []).

-spec list_performance_analysis_reports(aws_client:aws_client(), list_performance_analysis_reports_request(), proplists:proplist()) ->
    {ok, list_performance_analysis_reports_response(), tuple()} |
    {error, any()} |
    {error, list_performance_analysis_reports_errors(), tuple()}.
list_performance_analysis_reports(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPerformanceAnalysisReports">>, Input, Options).

%% @doc Retrieves all the metadata tags associated with Amazon RDS
%% Performance Insights resource.
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

%% @doc Adds metadata tags to the Amazon RDS Performance Insights resource.
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

%% @doc Deletes the metadata tags from the Amazon RDS Performance Insights
%% resource.
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
