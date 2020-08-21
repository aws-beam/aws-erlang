%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS X-Ray provides APIs for managing debug traces and retrieving
%% service maps and other data created by processing those traces.
-module(aws_xray).

-export([batch_get_traces/2,
         batch_get_traces/3,
         create_group/2,
         create_group/3,
         create_sampling_rule/2,
         create_sampling_rule/3,
         delete_group/2,
         delete_group/3,
         delete_sampling_rule/2,
         delete_sampling_rule/3,
         get_encryption_config/2,
         get_encryption_config/3,
         get_group/2,
         get_group/3,
         get_groups/2,
         get_groups/3,
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
         put_encryption_config/2,
         put_encryption_config/3,
         put_telemetry_records/2,
         put_telemetry_records/3,
         put_trace_segments/2,
         put_trace_segments/3,
         update_group/2,
         update_group/3,
         update_sampling_rule/2,
         update_sampling_rule/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Retrieves a list of traces specified by ID. Each trace is a
%% collection of segment documents that originates from a single request. Use
%% <code>GetTraceSummaries</code> to get a list of trace IDs.
batch_get_traces(Client, Input) ->
    batch_get_traces(Client, Input, []).
batch_get_traces(Client, Input0, Options) ->
    Method = post,
    Path = ["/Traces"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a group resource with a name and a filter expression.
create_group(Client, Input) ->
    create_group(Client, Input, []).
create_group(Client, Input0, Options) ->
    Method = post,
    Path = ["/CreateGroup"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a rule to control sampling behavior for instrumented
%% applications. Services retrieve rules with <a>GetSamplingRules</a>, and
%% evaluate each rule in ascending order of <i>priority</i> for each request.
%% If a rule matches, the service records a trace, borrowing it from the
%% reservoir size. After 10 seconds, the service reports back to X-Ray with
%% <a>GetSamplingTargets</a> to get updated versions of each in-use rule. The
%% updated rule contains a trace quota that the service can use instead of
%% borrowing from the reservoir.
create_sampling_rule(Client, Input) ->
    create_sampling_rule(Client, Input, []).
create_sampling_rule(Client, Input0, Options) ->
    Method = post,
    Path = ["/CreateSamplingRule"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a group resource.
delete_group(Client, Input) ->
    delete_group(Client, Input, []).
delete_group(Client, Input0, Options) ->
    Method = post,
    Path = ["/DeleteGroup"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a sampling rule.
delete_sampling_rule(Client, Input) ->
    delete_sampling_rule(Client, Input, []).
delete_sampling_rule(Client, Input0, Options) ->
    Method = post,
    Path = ["/DeleteSamplingRule"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves the current encryption configuration for X-Ray data.
get_encryption_config(Client, Input) ->
    get_encryption_config(Client, Input, []).
get_encryption_config(Client, Input0, Options) ->
    Method = post,
    Path = ["/EncryptionConfig"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves group resource details.
get_group(Client, Input) ->
    get_group(Client, Input, []).
get_group(Client, Input0, Options) ->
    Method = post,
    Path = ["/GetGroup"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves all active group details.
get_groups(Client, Input) ->
    get_groups(Client, Input, []).
get_groups(Client, Input0, Options) ->
    Method = post,
    Path = ["/Groups"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves all sampling rules.
get_sampling_rules(Client, Input) ->
    get_sampling_rules(Client, Input, []).
get_sampling_rules(Client, Input0, Options) ->
    Method = post,
    Path = ["/GetSamplingRules"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves information about recent sampling results for all sampling
%% rules.
get_sampling_statistic_summaries(Client, Input) ->
    get_sampling_statistic_summaries(Client, Input, []).
get_sampling_statistic_summaries(Client, Input0, Options) ->
    Method = post,
    Path = ["/SamplingStatisticSummaries"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Requests a sampling quota for rules that the service is using to
%% sample requests.
get_sampling_targets(Client, Input) ->
    get_sampling_targets(Client, Input, []).
get_sampling_targets(Client, Input0, Options) ->
    Method = post,
    Path = ["/SamplingTargets"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves a document that describes services that process incoming
%% requests, and downstream services that they call as a result. Root
%% services process incoming requests and make calls to downstream services.
%% Root services are applications that use the <a
%% href="https://docs.aws.amazon.com/xray/index.html">AWS X-Ray SDK</a>.
%% Downstream services can be other applications, AWS resources, HTTP web
%% APIs, or SQL databases.
get_service_graph(Client, Input) ->
    get_service_graph(Client, Input, []).
get_service_graph(Client, Input0, Options) ->
    Method = post,
    Path = ["/ServiceGraph"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Get an aggregation of service statistics defined by a specific time
%% range.
get_time_series_service_statistics(Client, Input) ->
    get_time_series_service_statistics(Client, Input, []).
get_time_series_service_statistics(Client, Input0, Options) ->
    Method = post,
    Path = ["/TimeSeriesServiceStatistics"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves a service graph for one or more specific trace IDs.
get_trace_graph(Client, Input) ->
    get_trace_graph(Client, Input, []).
get_trace_graph(Client, Input0, Options) ->
    Method = post,
    Path = ["/TraceGraph"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves IDs and annotations for traces available for a specified
%% time frame using an optional filter. To get the full traces, pass the
%% trace IDs to <code>BatchGetTraces</code>.
%%
%% A filter expression can target traced requests that hit specific service
%% nodes or edges, have errors, or come from a known user. For example, the
%% following filter expression targets traces that pass through
%% <code>api.example.com</code>:
%%
%% <code>service("api.example.com")</code>
%%
%% This filter expression finds traces that have an annotation named
%% <code>account</code> with the value <code>12345</code>:
%%
%% <code>annotation.account = "12345"</code>
%%
%% For a full list of indexed fields and keywords that you can use in filter
%% expressions, see <a
%% href="https://docs.aws.amazon.com/xray/latest/devguide/xray-console-filters.html">Using
%% Filter Expressions</a> in the <i>AWS X-Ray Developer Guide</i>.
get_trace_summaries(Client, Input) ->
    get_trace_summaries(Client, Input, []).
get_trace_summaries(Client, Input0, Options) ->
    Method = post,
    Path = ["/TraceSummaries"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the encryption configuration for X-Ray data.
put_encryption_config(Client, Input) ->
    put_encryption_config(Client, Input, []).
put_encryption_config(Client, Input0, Options) ->
    Method = post,
    Path = ["/PutEncryptionConfig"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Used by the AWS X-Ray daemon to upload telemetry.
put_telemetry_records(Client, Input) ->
    put_telemetry_records(Client, Input, []).
put_telemetry_records(Client, Input0, Options) ->
    Method = post,
    Path = ["/TelemetryRecords"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Uploads segment documents to AWS X-Ray. The <a
%% href="https://docs.aws.amazon.com/xray/index.html">X-Ray SDK</a> generates
%% segment documents and sends them to the X-Ray daemon, which uploads them
%% in batches. A segment document can be a completed segment, an in-progress
%% segment, or an array of subsegments.
%%
%% Segments must include the following fields. For the full segment document
%% schema, see <a
%% href="https://docs.aws.amazon.com/xray/latest/devguide/xray-api-segmentdocuments.html">AWS
%% X-Ray Segment Documents</a> in the <i>AWS X-Ray Developer Guide</i>.
%%
%% <p class="title"> <b>Required Segment Document Fields</b>
%%
%% <ul> <li> <code>name</code> - The name of the service that handled the
%% request.
%%
%% </li> <li> <code>id</code> - A 64-bit identifier for the segment, unique
%% among segments in the same trace, in 16 hexadecimal digits.
%%
%% </li> <li> <code>trace_id</code> - A unique identifier that connects all
%% segments and subsegments originating from a single client request.
%%
%% </li> <li> <code>start_time</code> - Time the segment or subsegment was
%% created, in floating point seconds in epoch time, accurate to
%% milliseconds. For example, <code>1480615200.010</code> or
%% <code>1.480615200010E9</code>.
%%
%% </li> <li> <code>end_time</code> - Time the segment or subsegment was
%% closed. For example, <code>1480615200.090</code> or
%% <code>1.480615200090E9</code>. Specify either an <code>end_time</code> or
%% <code>in_progress</code>.
%%
%% </li> <li> <code>in_progress</code> - Set to <code>true</code> instead of
%% specifying an <code>end_time</code> to record that a segment has been
%% started, but is not complete. Send an in progress segment when your
%% application receives a request that will take a long time to serve, to
%% trace the fact that the request was received. When the response is sent,
%% send the complete segment to overwrite the in-progress segment.
%%
%% </li> </ul> A <code>trace_id</code> consists of three numbers separated by
%% hyphens. For example, 1-58406520-a006649127e371903a2de979. This includes:
%%
%% <p class="title"> <b>Trace ID Format</b>
%%
%% <ul> <li> The version number, i.e. <code>1</code>.
%%
%% </li> <li> The time of the original request, in Unix epoch time, in 8
%% hexadecimal digits. For example, 10:00AM December 2nd, 2016 PST in epoch
%% time is <code>1480615200</code> seconds, or <code>58406520</code> in
%% hexadecimal.
%%
%% </li> <li> A 96-bit identifier for the trace, globally unique, in 24
%% hexadecimal digits.
%%
%% </li> </ul>
put_trace_segments(Client, Input) ->
    put_trace_segments(Client, Input, []).
put_trace_segments(Client, Input0, Options) ->
    Method = post,
    Path = ["/TraceSegments"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a group resource.
update_group(Client, Input) ->
    update_group(Client, Input, []).
update_group(Client, Input0, Options) ->
    Method = post,
    Path = ["/UpdateGroup"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%% @doc Modifies a sampling rule's configuration.
update_sampling_rule(Client, Input) ->
    update_sampling_rule(Client, Input, []).
update_sampling_rule(Client, Input0, Options) ->
    Method = post,
    Path = ["/UpdateSamplingRule"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query = [],
    Input = Input1,

    request(Client, Method, Path, Query, Headers, Input, Options, SuccessStatusCode).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), atom(), iolist(), list(),
              list(), map() | undefined, list(), pos_integer() | undefined) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map(),
    Error :: map().
request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
    Client1 = Client#{service => <<"xray">>},
    Host = get_host(<<"xray">>, Client1),
    URL0 = get_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders = [ {<<"Host">>, Host}
                        , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                        ],
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),
    Payload = encode_payload(Input),
    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    handle_response(Response, SuccessStatusCode).

handle_response({ok, StatusCode, ResponseHeaders, Client}, SuccessStatusCode)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= SuccessStatusCode ->
    case hackney:body(Client) of
        {ok, <<>>} when StatusCode =:= 200;
                        StatusCode =:= SuccessStatusCode ->
            {ok, #{}, {StatusCode, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body),
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}, _) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}, _) ->
  {error, Reason}.

get_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
get_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

get_url(Host, Path0, Client) ->
    Proto = maps:get(proto, Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  jsx:encode(Input).
