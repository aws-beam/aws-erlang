%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Web Services X-Ray provides APIs for managing debug traces and
%% retrieving service maps and other data created by processing those traces.
-module(aws_xray).

-export([batch_get_traces/2,
         batch_get_traces/3,
         create_group/2,
         create_group/3,
         create_sampling_rule/2,
         create_sampling_rule/3,
         delete_group/2,
         delete_group/3,
         delete_resource_policy/2,
         delete_resource_policy/3,
         delete_sampling_rule/2,
         delete_sampling_rule/3,
         get_encryption_config/2,
         get_encryption_config/3,
         get_group/2,
         get_group/3,
         get_groups/2,
         get_groups/3,
         get_insight/2,
         get_insight/3,
         get_insight_events/2,
         get_insight_events/3,
         get_insight_impact_graph/2,
         get_insight_impact_graph/3,
         get_insight_summaries/2,
         get_insight_summaries/3,
         get_sampling_rules/2,
         get_sampling_rules/3,
         get_sampling_statistic_summaries/2,
         get_sampling_statistic_summaries/3,
         get_sampling_targets/2,
         get_sampling_targets/3,
         get_service_graph/2,
         get_service_graph/3,
         get_time_series_service_statistics/2,
         get_time_series_service_statistics/3,
         get_trace_graph/2,
         get_trace_graph/3,
         get_trace_summaries/2,
         get_trace_summaries/3,
         list_resource_policies/2,
         list_resource_policies/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         put_encryption_config/2,
         put_encryption_config/3,
         put_resource_policy/2,
         put_resource_policy/3,
         put_telemetry_records/2,
         put_telemetry_records/3,
         put_trace_segments/2,
         put_trace_segments/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_group/2,
         update_group/3,
         update_sampling_rule/2,
         update_sampling_rule/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Retrieves a list of traces specified by ID.
%%
%% Each trace is a collection of segment documents that originates from a
%% single request. Use `GetTraceSummaries' to get a list of trace IDs.
batch_get_traces(Client, Input) ->
    batch_get_traces(Client, Input, []).
batch_get_traces(Client, Input0, Options0) ->
    Method = post,
    Path = ["/Traces"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a group resource with a name and a filter expression.
create_group(Client, Input) ->
    create_group(Client, Input, []).
create_group(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CreateGroup"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a rule to control sampling behavior for instrumented
%% applications.
%%
%% Services retrieve rules with GetSamplingRules, and evaluate each rule in
%% ascending order of priority for each request. If a rule matches, the
%% service records a trace, borrowing it from the reservoir size. After 10
%% seconds, the service reports back to X-Ray with GetSamplingTargets to get
%% updated versions of each in-use rule. The updated rule contains a trace
%% quota that the service can use instead of borrowing from the reservoir.
create_sampling_rule(Client, Input) ->
    create_sampling_rule(Client, Input, []).
create_sampling_rule(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CreateSamplingRule"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a group resource.
delete_group(Client, Input) ->
    delete_group(Client, Input, []).
delete_group(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteGroup"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a resource policy from the target Amazon Web Services
%% account.
delete_resource_policy(Client, Input) ->
    delete_resource_policy(Client, Input, []).
delete_resource_policy(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteResourcePolicy"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a sampling rule.
delete_sampling_rule(Client, Input) ->
    delete_sampling_rule(Client, Input, []).
delete_sampling_rule(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteSamplingRule"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves the current encryption configuration for X-Ray data.
get_encryption_config(Client, Input) ->
    get_encryption_config(Client, Input, []).
get_encryption_config(Client, Input0, Options0) ->
    Method = post,
    Path = ["/EncryptionConfig"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves group resource details.
get_group(Client, Input) ->
    get_group(Client, Input, []).
get_group(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetGroup"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves all active group details.
get_groups(Client, Input) ->
    get_groups(Client, Input, []).
get_groups(Client, Input0, Options0) ->
    Method = post,
    Path = ["/Groups"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves the summary information of an insight.
%%
%% This includes impact to clients and root cause services, the top anomalous
%% services, the category, the state of the insight, and the start and end
%% time of the insight.
get_insight(Client, Input) ->
    get_insight(Client, Input, []).
get_insight(Client, Input0, Options0) ->
    Method = post,
    Path = ["/Insight"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc X-Ray reevaluates insights periodically until they're resolved, and
%% records each intermediate state as an event.
%%
%% You can review an insight's events in the Impact Timeline on the Inspect
%% page in the X-Ray console.
get_insight_events(Client, Input) ->
    get_insight_events(Client, Input, []).
get_insight_events(Client, Input0, Options0) ->
    Method = post,
    Path = ["/InsightEvents"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves a service graph structure filtered by the specified
%% insight.
%%
%% The service graph is limited to only structural information. For a
%% complete service graph, use this API with the GetServiceGraph API.
get_insight_impact_graph(Client, Input) ->
    get_insight_impact_graph(Client, Input, []).
get_insight_impact_graph(Client, Input0, Options0) ->
    Method = post,
    Path = ["/InsightImpactGraph"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves the summaries of all insights in the specified group
%% matching the provided filter values.
get_insight_summaries(Client, Input) ->
    get_insight_summaries(Client, Input, []).
get_insight_summaries(Client, Input0, Options0) ->
    Method = post,
    Path = ["/InsightSummaries"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves all sampling rules.
get_sampling_rules(Client, Input) ->
    get_sampling_rules(Client, Input, []).
get_sampling_rules(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetSamplingRules"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves information about recent sampling results for all sampling
%% rules.
get_sampling_statistic_summaries(Client, Input) ->
    get_sampling_statistic_summaries(Client, Input, []).
get_sampling_statistic_summaries(Client, Input0, Options0) ->
    Method = post,
    Path = ["/SamplingStatisticSummaries"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Requests a sampling quota for rules that the service is using to
%% sample requests.
get_sampling_targets(Client, Input) ->
    get_sampling_targets(Client, Input, []).
get_sampling_targets(Client, Input0, Options0) ->
    Method = post,
    Path = ["/SamplingTargets"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves a document that describes services that process incoming
%% requests, and downstream services that they call as a result.
%%
%% Root services process incoming requests and make calls to downstream
%% services. Root services are applications that use the Amazon Web Services
%% X-Ray SDK. Downstream services can be other applications, Amazon Web
%% Services resources, HTTP web APIs, or SQL databases.
get_service_graph(Client, Input) ->
    get_service_graph(Client, Input, []).
get_service_graph(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ServiceGraph"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Get an aggregation of service statistics defined by a specific time
%% range.
get_time_series_service_statistics(Client, Input) ->
    get_time_series_service_statistics(Client, Input, []).
get_time_series_service_statistics(Client, Input0, Options0) ->
    Method = post,
    Path = ["/TimeSeriesServiceStatistics"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves a service graph for one or more specific trace IDs.
get_trace_graph(Client, Input) ->
    get_trace_graph(Client, Input, []).
get_trace_graph(Client, Input0, Options0) ->
    Method = post,
    Path = ["/TraceGraph"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves IDs and annotations for traces available for a specified
%% time frame using an optional filter.
%%
%% To get the full traces, pass the trace IDs to `BatchGetTraces'.
%%
%% A filter expression can target traced requests that hit specific service
%% nodes or edges, have errors, or come from a known user. For example, the
%% following filter expression targets traces that pass through
%% `api.example.com':
%%
%% `service("api.example.com")'
%%
%% This filter expression finds traces that have an annotation named
%% `account' with the value `12345':
%%
%% `annotation.account = "12345"'
%%
%% For a full list of indexed fields and keywords that you can use in filter
%% expressions, see Using Filter Expressions in the Amazon Web Services X-Ray
%% Developer Guide.
get_trace_summaries(Client, Input) ->
    get_trace_summaries(Client, Input, []).
get_trace_summaries(Client, Input0, Options0) ->
    Method = post,
    Path = ["/TraceSummaries"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns the list of resource policies in the target Amazon Web
%% Services account.
list_resource_policies(Client, Input) ->
    list_resource_policies(Client, Input, []).
list_resource_policies(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListResourcePolicies"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns a list of tags that are applied to the specified Amazon Web
%% Services X-Ray group or sampling rule.
list_tags_for_resource(Client, Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListTagsForResource"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the encryption configuration for X-Ray data.
put_encryption_config(Client, Input) ->
    put_encryption_config(Client, Input, []).
put_encryption_config(Client, Input0, Options0) ->
    Method = post,
    Path = ["/PutEncryptionConfig"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Sets the resource policy to grant one or more Amazon Web Services
%% services and accounts permissions to access X-Ray.
%%
%% Each resource policy will be associated with a specific Amazon Web
%% Services account. Each Amazon Web Services account can have a maximum of 5
%% resource policies, and each policy name must be unique within that
%% account. The maximum size of each resource policy is 5KB.
put_resource_policy(Client, Input) ->
    put_resource_policy(Client, Input, []).
put_resource_policy(Client, Input0, Options0) ->
    Method = post,
    Path = ["/PutResourcePolicy"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Used by the Amazon Web Services X-Ray daemon to upload telemetry.
put_telemetry_records(Client, Input) ->
    put_telemetry_records(Client, Input, []).
put_telemetry_records(Client, Input0, Options0) ->
    Method = post,
    Path = ["/TelemetryRecords"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Uploads segment documents to Amazon Web Services X-Ray.
%%
%% The X-Ray SDK generates segment documents and sends them to the X-Ray
%% daemon, which uploads them in batches. A segment document can be a
%% completed segment, an in-progress segment, or an array of subsegments.
%%
%% Segments must include the following fields. For the full segment document
%% schema, see Amazon Web Services X-Ray Segment Documents in the Amazon Web
%% Services X-Ray Developer Guide.
%%
%% == Required segment document fields ==
%%
%% <ul> <li> `name' - The name of the service that handled the request.
%%
%% </li> <li> `id' - A 64-bit identifier for the segment, unique among
%% segments in the same trace, in 16 hexadecimal digits.
%%
%% </li> <li> `trace_id' - A unique identifier that connects all segments and
%% subsegments originating from a single client request.
%%
%% </li> <li> `start_time' - Time the segment or subsegment was created, in
%% floating point seconds in epoch time, accurate to milliseconds. For
%% example, `1480615200.010' or `1.480615200010E9'.
%%
%% </li> <li> `end_time' - Time the segment or subsegment was closed. For
%% example, `1480615200.090' or `1.480615200090E9'. Specify either an
%% `end_time' or `in_progress'.
%%
%% </li> <li> `in_progress' - Set to `true' instead of specifying an
%% `end_time' to record that a segment has been started, but is not complete.
%% Send an in-progress segment when your application receives a request that
%% will take a long time to serve, to trace that the request was received.
%% When the response is sent, send the complete segment to overwrite the
%% in-progress segment.
%%
%% </li> </ul> A `trace_id' consists of three numbers separated by hyphens.
%% For example, 1-58406520-a006649127e371903a2de979. This includes:
%%
%% == Trace ID Format ==
%%
%% <ul> <li> The version number, for instance, `1'.
%%
%% </li> <li> The time of the original request, in Unix epoch time, in 8
%% hexadecimal digits. For example, 10:00AM December 2nd, 2016 PST in epoch
%% time is `1480615200' seconds, or `58406520' in hexadecimal.
%%
%% </li> <li> A 96-bit identifier for the trace, globally unique, in 24
%% hexadecimal digits.
%%
%% </li> </ul>
put_trace_segments(Client, Input) ->
    put_trace_segments(Client, Input, []).
put_trace_segments(Client, Input0, Options0) ->
    Method = post,
    Path = ["/TraceSegments"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Applies tags to an existing Amazon Web Services X-Ray group or
%% sampling rule.
tag_resource(Client, Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/TagResource"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes tags from an Amazon Web Services X-Ray group or sampling
%% rule.
%%
%% You cannot edit or delete system tags (those with an `aws:' prefix).
untag_resource(Client, Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UntagResource"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a group resource.
update_group(Client, Input) ->
    update_group(Client, Input, []).
update_group(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UpdateGroup"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Modifies a sampling rule's configuration.
update_sampling_rule(Client, Input) ->
    update_sampling_rule(Client, Input, []).
update_sampling_rule(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UpdateSamplingRule"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

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
    Client1 = Client#{service => <<"xray">>},
    Host = build_host(<<"xray">>, Client1),
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
    AdditionalHeaders = case proplists:get_value(append_sha256_content_hash, Options) of
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
