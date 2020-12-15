%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc This section provides documentation for the Amazon CodeGuru Profiler
%% API operations.
%%
%% <p>Amazon CodeGuru Profiler collects runtime performance data from your
%% live applications, and provides recommendations that can help you
%% fine-tune your application performance. Using machine learning algorithms,
%% CodeGuru Profiler can help you find your most expensive lines of code and
%% suggest ways you can improve efficiency and remove CPU bottlenecks. </p>
%% <p>Amazon CodeGuru Profiler provides different visualizations of profiling
%% data to help you identify what code is running on the CPU, see how much
%% time is consumed, and suggest ways to reduce CPU utilization. </p> <note>
%% <p>Amazon CodeGuru Profiler currently supports applications written in all
%% Java virtual machine (JVM) languages. While CodeGuru Profiler supports
%% both visualizations and recommendations for applications written in Java,
%% it can also generate visualizations and a subset of recommendations for
%% applications written in other JVM languages.</p> </note> <p> For more
%% information, see <a
%% href="https://docs.aws.amazon.com/codeguru/latest/profiler-ug/what-is-codeguru-profiler.html">What
%% is Amazon CodeGuru Profiler</a> in the <i>Amazon CodeGuru Profiler User
%% Guide</i>. </p>
-module(aws_codeguruprofiler).

-export([add_notification_channels/3,
         add_notification_channels/4,
         batch_get_frame_metric_data/3,
         batch_get_frame_metric_data/4,
         configure_agent/3,
         configure_agent/4,
         create_profiling_group/2,
         create_profiling_group/3,
         delete_profiling_group/3,
         delete_profiling_group/4,
         describe_profiling_group/2,
         describe_profiling_group/3,
         get_findings_report_account_summary/4,
         get_findings_report_account_summary/5,
         get_notification_configuration/2,
         get_notification_configuration/3,
         get_policy/2,
         get_policy/3,
         get_profile/7,
         get_profile/8,
         get_recommendations/5,
         get_recommendations/6,
         list_findings_reports/7,
         list_findings_reports/8,
         list_profile_times/8,
         list_profile_times/9,
         list_profiling_groups/4,
         list_profiling_groups/5,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         post_agent_profile/3,
         post_agent_profile/4,
         put_permission/4,
         put_permission/5,
         remove_notification_channel/4,
         remove_notification_channel/5,
         remove_permission/4,
         remove_permission/5,
         submit_feedback/4,
         submit_feedback/5,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_profiling_group/3,
         update_profiling_group/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Add up to 2 anomaly notifications channels for a profiling group.
add_notification_channels(Client, ProfilingGroupName, Input) ->
    add_notification_channels(Client, ProfilingGroupName, Input, []).
add_notification_channels(Client, ProfilingGroupName, Input0, Options) ->
    Method = post,
    Path = ["/profilingGroups/", aws_util:encode_uri(ProfilingGroupName), "/notificationConfiguration"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Returns the time series of values for a requested list of frame
%% metrics from a time period.
batch_get_frame_metric_data(Client, ProfilingGroupName, Input) ->
    batch_get_frame_metric_data(Client, ProfilingGroupName, Input, []).
batch_get_frame_metric_data(Client, ProfilingGroupName, Input0, Options) ->
    Method = post,
    Path = ["/profilingGroups/", aws_util:encode_uri(ProfilingGroupName), "/frames/-/metrics"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"endTime">>, <<"endTime">>},
                     {<<"period">>, <<"period">>},
                     {<<"startTime">>, <<"startTime">>},
                     {<<"targetResolution">>, <<"targetResolution">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Used by profiler agents to report their current state and to receive
%% remote configuration updates.
%%
%% For example, `ConfigureAgent' can be used to tell and agent whether to
%% profile or not and for how long to return profiling data.
configure_agent(Client, ProfilingGroupName, Input) ->
    configure_agent(Client, ProfilingGroupName, Input, []).
configure_agent(Client, ProfilingGroupName, Input0, Options) ->
    Method = post,
    Path = ["/profilingGroups/", aws_util:encode_uri(ProfilingGroupName), "/configureAgent"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a profiling group.
create_profiling_group(Client, Input) ->
    create_profiling_group(Client, Input, []).
create_profiling_group(Client, Input0, Options) ->
    Method = post,
    Path = ["/profilingGroups"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a profiling group.
delete_profiling_group(Client, ProfilingGroupName, Input) ->
    delete_profiling_group(Client, ProfilingGroupName, Input, []).
delete_profiling_group(Client, ProfilingGroupName, Input0, Options) ->
    Method = delete,
    Path = ["/profilingGroups/", aws_util:encode_uri(ProfilingGroupName), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Returns a `ProfilingGroupDescription' object that contains
%% information about the requested profiling group.
describe_profiling_group(Client, ProfilingGroupName)
  when is_map(Client) ->
    describe_profiling_group(Client, ProfilingGroupName, []).
describe_profiling_group(Client, ProfilingGroupName, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/profilingGroups/", aws_util:encode_uri(ProfilingGroupName), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of `FindingsReportSummary' objects that contain
%% analysis results for all profiling groups in your AWS account.
get_findings_report_account_summary(Client, DailyReportsOnly, MaxResults, NextToken)
  when is_map(Client) ->
    get_findings_report_account_summary(Client, DailyReportsOnly, MaxResults, NextToken, []).
get_findings_report_account_summary(Client, DailyReportsOnly, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/internal/findingsReports"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"dailyReportsOnly">>, DailyReportsOnly},
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get the current configuration for anomaly notifications for a
%% profiling group.
get_notification_configuration(Client, ProfilingGroupName)
  when is_map(Client) ->
    get_notification_configuration(Client, ProfilingGroupName, []).
get_notification_configuration(Client, ProfilingGroupName, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/profilingGroups/", aws_util:encode_uri(ProfilingGroupName), "/notificationConfiguration"],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the JSON-formatted resource-based policy on a profiling
%% group.
get_policy(Client, ProfilingGroupName)
  when is_map(Client) ->
    get_policy(Client, ProfilingGroupName, []).
get_policy(Client, ProfilingGroupName, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/profilingGroups/", aws_util:encode_uri(ProfilingGroupName), "/policy"],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the aggregated profile of a profiling group for a specified time
%% range.
%%
%% Amazon CodeGuru Profiler collects posted agent profiles for a profiling
%% group into aggregated profiles.
%%
%% <note> <p> Because aggregated profiles expire over time
%% <code>GetProfile</code> is not idempotent. </p> </note> <p> Specify the
%% time range for the requested aggregated profile using 1 or 2 of the
%% following parameters: <code>startTime</code>, <code>endTime</code>,
%% <code>period</code>. The maximum time range allowed is 7 days. If you
%% specify all 3 parameters, an exception is thrown. If you specify only
%% <code>period</code>, the latest aggregated profile is returned. </p> <p>
%% Aggregated profiles are available with aggregation periods of 5 minutes, 1
%% hour, and 1 day, aligned to UTC. The aggregation period of an aggregated
%% profile determines how long it is retained. For more information, see <a
%% href="https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_AggregatedProfileTime.html">
%% <code>AggregatedProfileTime</code> </a>. The aggregated profile's
%% aggregation period determines how long it is retained by CodeGuru
%% Profiler. </p> <ul> <li> <p> If the aggregation period is 5 minutes, the
%% aggregated profile is retained for 15 days. </p> </li> <li> <p> If the
%% aggregation period is 1 hour, the aggregated profile is retained for 60
%% days. </p> </li> <li> <p> If the aggregation period is 1 day, the
%% aggregated profile is retained for 3 years. </p> </li> </ul> <p>There are
%% two use cases for calling <code>GetProfile</code>.</p> <ol> <li> <p> If
%% you want to return an aggregated profile that already exists, use <a
%% href="https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ListProfileTimes.html">
%% <code>ListProfileTimes</code> </a> to view the time ranges of existing
%% aggregated profiles. Use them in a <code>GetProfile</code> request to
%% return a specific, existing aggregated profile. </p> </li> <li> <p> If you
%% want to return an aggregated profile for a time range that doesn't align
%% with an existing aggregated profile, then CodeGuru Profiler makes a best
%% effort to combine existing aggregated profiles from the requested time
%% range and return them as one aggregated profile. </p> <p> If aggregated
%% profiles do not exist for the full time range requested, then aggregated
%% profiles for a smaller time range are returned. For example, if the
%% requested time range is from 00:00 to 00:20, and the existing aggregated
%% profiles are from 00:15 and 00:25, then the aggregated profiles from 00:15
%% to 00:20 are returned. </p> </li> </ol>
get_profile(Client, ProfilingGroupName, EndTime, MaxDepth, Period, StartTime, Accept)
  when is_map(Client) ->
    get_profile(Client, ProfilingGroupName, EndTime, MaxDepth, Period, StartTime, Accept, []).
get_profile(Client, ProfilingGroupName, EndTime, MaxDepth, Period, StartTime, Accept, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/profilingGroups/", aws_util:encode_uri(ProfilingGroupName), "/profile"],
    SuccessStatusCode = 200,

    Headers0 =
      [
        {<<"Accept">>, Accept}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"endTime">>, EndTime},
        {<<"maxDepth">>, MaxDepth},
        {<<"period">>, Period},
        {<<"startTime">>, StartTime}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"Content-Encoding">>, <<"contentEncoding">>},
            {<<"Content-Type">>, <<"contentType">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Returns a list of `Recommendation' objects that contain
%% recommendations for a profiling group for a given time period.
%%
%% A list of `Anomaly' objects that contains details about anomalies detected
%% in the profiling group for the same time period is also returned.
get_recommendations(Client, ProfilingGroupName, EndTime, Locale, StartTime)
  when is_map(Client) ->
    get_recommendations(Client, ProfilingGroupName, EndTime, Locale, StartTime, []).
get_recommendations(Client, ProfilingGroupName, EndTime, Locale, StartTime, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/internal/profilingGroups/", aws_util:encode_uri(ProfilingGroupName), "/recommendations"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"endTime">>, EndTime},
        {<<"locale">>, Locale},
        {<<"startTime">>, StartTime}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the available reports for a given profiling group and time
%% range.
list_findings_reports(Client, ProfilingGroupName, DailyReportsOnly, EndTime, MaxResults, NextToken, StartTime)
  when is_map(Client) ->
    list_findings_reports(Client, ProfilingGroupName, DailyReportsOnly, EndTime, MaxResults, NextToken, StartTime, []).
list_findings_reports(Client, ProfilingGroupName, DailyReportsOnly, EndTime, MaxResults, NextToken, StartTime, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/internal/profilingGroups/", aws_util:encode_uri(ProfilingGroupName), "/findingsReports"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"dailyReportsOnly">>, DailyReportsOnly},
        {<<"endTime">>, EndTime},
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken},
        {<<"startTime">>, StartTime}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the start times of the available aggregated profiles of a
%% profiling group for an aggregation period within the specified time range.
list_profile_times(Client, ProfilingGroupName, EndTime, MaxResults, NextToken, OrderBy, Period, StartTime)
  when is_map(Client) ->
    list_profile_times(Client, ProfilingGroupName, EndTime, MaxResults, NextToken, OrderBy, Period, StartTime, []).
list_profile_times(Client, ProfilingGroupName, EndTime, MaxResults, NextToken, OrderBy, Period, StartTime, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/profilingGroups/", aws_util:encode_uri(ProfilingGroupName), "/profileTimes"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"endTime">>, EndTime},
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken},
        {<<"orderBy">>, OrderBy},
        {<<"period">>, Period},
        {<<"startTime">>, StartTime}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of profiling groups.
%%
%% The profiling groups are returned as `ProfilingGroupDescription' objects.
list_profiling_groups(Client, IncludeDescription, MaxResults, NextToken)
  when is_map(Client) ->
    list_profiling_groups(Client, IncludeDescription, MaxResults, NextToken, []).
list_profiling_groups(Client, IncludeDescription, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/profilingGroups"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"includeDescription">>, IncludeDescription},
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of the tags that are assigned to a specified resource.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, []).
list_tags_for_resource(Client, ResourceArn, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Submits profiling data to an aggregated profile of a profiling group.
%%
%% To get an aggregated profile that is created with this profiling data, use
%% `GetProfile' .
post_agent_profile(Client, ProfilingGroupName, Input) ->
    post_agent_profile(Client, ProfilingGroupName, Input, []).
post_agent_profile(Client, ProfilingGroupName, Input0, Options) ->
    Method = post,
    Path = ["/profilingGroups/", aws_util:encode_uri(ProfilingGroupName), "/agentProfile"],
    SuccessStatusCode = 204,

    HeadersMapping = [
                       {<<"Content-Type">>, <<"contentType">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    QueryMapping = [
                     {<<"profileToken">>, <<"profileToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Adds permissions to a profiling group's resource-based policy that
%% are provided using an action group.
%%
%% If a profiling group doesn't have a resource-based policy, one is created
%% for it using the permissions in the action group and the roles and users
%% in the `principals' parameter.
%%
%% <p> The one supported action group that can be added is
%% <code>agentPermission</code> which grants <code>ConfigureAgent</code> and
%% <code>PostAgent</code> permissions. For more information, see <a
%% href="https://docs.aws.amazon.com/codeguru/latest/profiler-ug/resource-based-policies.html">Resource-based
%% policies in CodeGuru Profiler</a> in the <i>Amazon CodeGuru Profiler User
%% Guide</i>, <a
%% href="https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ConfigureAgent.html">
%% <code>ConfigureAgent</code> </a>, and <a
%% href="https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_PostAgentProfile.html">
%% <code>PostAgentProfile</code> </a>. </p> <p> The first time you call
%% <code>PutPermission</code> on a profiling group, do not specify a
%% <code>revisionId</code> because it doesn't have a resource-based policy.
%% Subsequent calls must provide a <code>revisionId</code> to specify which
%% revision of the resource-based policy to add the permissions to. </p> <p>
%% The response contains the profiling group's JSON-formatted resource
%% policy. </p>
put_permission(Client, ActionGroup, ProfilingGroupName, Input) ->
    put_permission(Client, ActionGroup, ProfilingGroupName, Input, []).
put_permission(Client, ActionGroup, ProfilingGroupName, Input0, Options) ->
    Method = put,
    Path = ["/profilingGroups/", aws_util:encode_uri(ProfilingGroupName), "/policy/", aws_util:encode_uri(ActionGroup), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Remove one anomaly notifications channel for a profiling group.
remove_notification_channel(Client, ChannelId, ProfilingGroupName, Input) ->
    remove_notification_channel(Client, ChannelId, ProfilingGroupName, Input, []).
remove_notification_channel(Client, ChannelId, ProfilingGroupName, Input0, Options) ->
    Method = delete,
    Path = ["/profilingGroups/", aws_util:encode_uri(ProfilingGroupName), "/notificationConfiguration/", aws_util:encode_uri(ChannelId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Removes permissions from a profiling group's resource-based policy
%% that are provided using an action group.
%%
%% The one supported action group that can be removed is `agentPermission'
%% which grants `ConfigureAgent' and `PostAgent' permissions. For more
%% information, see Resource-based policies in CodeGuru Profiler in the
%% Amazon CodeGuru Profiler User Guide, `ConfigureAgent' , and
%% `PostAgentProfile' .
remove_permission(Client, ActionGroup, ProfilingGroupName, Input) ->
    remove_permission(Client, ActionGroup, ProfilingGroupName, Input, []).
remove_permission(Client, ActionGroup, ProfilingGroupName, Input0, Options) ->
    Method = delete,
    Path = ["/profilingGroups/", aws_util:encode_uri(ProfilingGroupName), "/policy/", aws_util:encode_uri(ActionGroup), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"revisionId">>, <<"revisionId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Sends feedback to CodeGuru Profiler about whether the anomaly
%% detected by the analysis is useful or not.
submit_feedback(Client, AnomalyInstanceId, ProfilingGroupName, Input) ->
    submit_feedback(Client, AnomalyInstanceId, ProfilingGroupName, Input, []).
submit_feedback(Client, AnomalyInstanceId, ProfilingGroupName, Input0, Options) ->
    Method = post,
    Path = ["/internal/profilingGroups/", aws_util:encode_uri(ProfilingGroupName), "/anomalies/", aws_util:encode_uri(AnomalyInstanceId), "/feedback"],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Use to assign one or more tags to a resource.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Use to remove one or more tags from a resource.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a profiling group.
update_profiling_group(Client, ProfilingGroupName, Input) ->
    update_profiling_group(Client, ProfilingGroupName, Input, []).
update_profiling_group(Client, ProfilingGroupName, Input0, Options) ->
    Method = put,
    Path = ["/profilingGroups/", aws_util:encode_uri(ProfilingGroupName), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

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
    Client1 = Client#{service => <<"codeguru-profiler">>},
    Host = build_host(<<"codeguru-profiler">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders = [ {<<"Host">>, Host}
                        , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                        ],
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),

    Payload =
      case proplists:get_value(should_send_body_as_binary, Options) of
        true ->
          maps:get_value(<<"Body">>, Input);
        _ ->
          encode_payload(Input)
      end,

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
