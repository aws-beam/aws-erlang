%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc This section provides documentation for the Amazon CodeGuru Profiler
%% API operations.
%%
%% Amazon CodeGuru Profiler collects runtime performance data from your live
%% applications, and provides recommendations that can help you fine-tune
%% your application performance. Using machine learning algorithms, CodeGuru
%% Profiler can help you find your most expensive lines of code and suggest
%% ways you can improve efficiency and remove CPU bottlenecks.
%%
%% Amazon CodeGuru Profiler provides different visualizations of profiling
%% data to help you identify what code is running on the CPU, see how much
%% time is consumed, and suggest ways to reduce CPU utilization.
%%
%% Amazon CodeGuru Profiler currently supports applications written in all
%% Java virtual machine (JVM) languages and Python. While CodeGuru Profiler
%% supports both visualizations and recommendations for applications written
%% in Java, it can also generate visualizations and a subset of
%% recommendations for applications written in other JVM languages and
%% Python.
%%
%% For more information, see What is Amazon CodeGuru Profiler in the Amazon
%% CodeGuru Profiler User Guide.
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
         describe_profiling_group/4,
         describe_profiling_group/5,
         get_findings_report_account_summary/1,
         get_findings_report_account_summary/3,
         get_findings_report_account_summary/4,
         get_notification_configuration/2,
         get_notification_configuration/4,
         get_notification_configuration/5,
         get_policy/2,
         get_policy/4,
         get_policy/5,
         get_profile/2,
         get_profile/4,
         get_profile/5,
         get_recommendations/4,
         get_recommendations/6,
         get_recommendations/7,
         list_findings_reports/4,
         list_findings_reports/6,
         list_findings_reports/7,
         list_profile_times/5,
         list_profile_times/7,
         list_profile_times/8,
         list_profiling_groups/1,
         list_profiling_groups/3,
         list_profiling_groups/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
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
add_notification_channels(Client, ProfilingGroupName, Input0, Options0) ->
    Method = post,
    Path = ["/profilingGroups/", aws_util:encode_uri(ProfilingGroupName), "/notificationConfiguration"],
    SuccessStatusCode = 200,
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

%% @doc Returns the time series of values for a requested list of frame
%% metrics from a time period.
batch_get_frame_metric_data(Client, ProfilingGroupName, Input) ->
    batch_get_frame_metric_data(Client, ProfilingGroupName, Input, []).
batch_get_frame_metric_data(Client, ProfilingGroupName, Input0, Options0) ->
    Method = post,
    Path = ["/profilingGroups/", aws_util:encode_uri(ProfilingGroupName), "/frames/-/metrics"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"endTime">>, <<"endTime">>},
                     {<<"period">>, <<"period">>},
                     {<<"startTime">>, <<"startTime">>},
                     {<<"targetResolution">>, <<"targetResolution">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Used by profiler agents to report their current state and to receive
%% remote configuration updates.
%%
%% For example, `ConfigureAgent' can be used to tell an agent whether to
%% profile or not and for how long to return profiling data.
configure_agent(Client, ProfilingGroupName, Input) ->
    configure_agent(Client, ProfilingGroupName, Input, []).
configure_agent(Client, ProfilingGroupName, Input0, Options0) ->
    Method = post,
    Path = ["/profilingGroups/", aws_util:encode_uri(ProfilingGroupName), "/configureAgent"],
    SuccessStatusCode = 200,
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

%% @doc Creates a profiling group.
create_profiling_group(Client, Input) ->
    create_profiling_group(Client, Input, []).
create_profiling_group(Client, Input0, Options0) ->
    Method = post,
    Path = ["/profilingGroups"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a profiling group.
delete_profiling_group(Client, ProfilingGroupName, Input) ->
    delete_profiling_group(Client, ProfilingGroupName, Input, []).
delete_profiling_group(Client, ProfilingGroupName, Input0, Options0) ->
    Method = delete,
    Path = ["/profilingGroups/", aws_util:encode_uri(ProfilingGroupName), ""],
    SuccessStatusCode = 204,
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

%% @doc Returns a `ProfilingGroupDescription' object that contains
%% information about the requested profiling group.
describe_profiling_group(Client, ProfilingGroupName)
  when is_map(Client) ->
    describe_profiling_group(Client, ProfilingGroupName, #{}, #{}).

describe_profiling_group(Client, ProfilingGroupName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_profiling_group(Client, ProfilingGroupName, QueryMap, HeadersMap, []).

describe_profiling_group(Client, ProfilingGroupName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/profilingGroups/", aws_util:encode_uri(ProfilingGroupName), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of `FindingsReportSummary' objects that contain
%% analysis results for all profiling groups in your AWS account.
get_findings_report_account_summary(Client)
  when is_map(Client) ->
    get_findings_report_account_summary(Client, #{}, #{}).

get_findings_report_account_summary(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_findings_report_account_summary(Client, QueryMap, HeadersMap, []).

get_findings_report_account_summary(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/internal/findingsReports"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"dailyReportsOnly">>, maps:get(<<"dailyReportsOnly">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get the current configuration for anomaly notifications for a
%% profiling group.
get_notification_configuration(Client, ProfilingGroupName)
  when is_map(Client) ->
    get_notification_configuration(Client, ProfilingGroupName, #{}, #{}).

get_notification_configuration(Client, ProfilingGroupName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_notification_configuration(Client, ProfilingGroupName, QueryMap, HeadersMap, []).

get_notification_configuration(Client, ProfilingGroupName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/profilingGroups/", aws_util:encode_uri(ProfilingGroupName), "/notificationConfiguration"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the JSON-formatted resource-based policy on a profiling
%% group.
get_policy(Client, ProfilingGroupName)
  when is_map(Client) ->
    get_policy(Client, ProfilingGroupName, #{}, #{}).

get_policy(Client, ProfilingGroupName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_policy(Client, ProfilingGroupName, QueryMap, HeadersMap, []).

get_policy(Client, ProfilingGroupName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/profilingGroups/", aws_util:encode_uri(ProfilingGroupName), "/policy"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the aggregated profile of a profiling group for a specified time
%% range.
%%
%% Amazon CodeGuru Profiler collects posted agent profiles for a profiling
%% group into aggregated profiles.
%%
%% &lt;note&gt; &lt;p&gt; Because aggregated profiles expire over time
%% &lt;code&gt;GetProfile&lt;/code&gt; is not idempotent. &lt;/p&gt;
%% &lt;/note&gt; &lt;p&gt; Specify the time range for the requested
%% aggregated profile using 1 or 2 of the following parameters:
%% &lt;code&gt;startTime&lt;/code&gt;, &lt;code&gt;endTime&lt;/code&gt;,
%% &lt;code&gt;period&lt;/code&gt;. The maximum time range allowed is 7 days.
%% If you specify all 3 parameters, an exception is thrown. If you specify
%% only &lt;code&gt;period&lt;/code&gt;, the latest aggregated profile is
%% returned. &lt;/p&gt; &lt;p&gt; Aggregated profiles are available with
%% aggregation periods of 5 minutes, 1 hour, and 1 day, aligned to UTC. The
%% aggregation period of an aggregated profile determines how long it is
%% retained. For more information, see &lt;a
%% href=&quot;https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_AggregatedProfileTime.html&quot;&gt;
%% &lt;code&gt;AggregatedProfileTime&lt;/code&gt; &lt;/a&gt;. The aggregated
%% profile's aggregation period determines how long it is retained by
%% CodeGuru Profiler. &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; If the
%% aggregation period is 5 minutes, the aggregated profile is retained for 15
%% days. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; If the aggregation
%% period is 1 hour, the aggregated profile is retained for 60 days.
%% &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; If the aggregation period is 1
%% day, the aggregated profile is retained for 3 years. &lt;/p&gt;
%% &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;There are two use cases for calling
%% &lt;code&gt;GetProfile&lt;/code&gt;.&lt;/p&gt; &lt;ol&gt; &lt;li&gt;
%% &lt;p&gt; If you want to return an aggregated profile that already exists,
%% use &lt;a
%% href=&quot;https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ListProfileTimes.html&quot;&gt;
%% &lt;code&gt;ListProfileTimes&lt;/code&gt; &lt;/a&gt; to view the time
%% ranges of existing aggregated profiles. Use them in a
%% &lt;code&gt;GetProfile&lt;/code&gt; request to return a specific, existing
%% aggregated profile. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; If you
%% want to return an aggregated profile for a time range that doesn't
%% align with an existing aggregated profile, then CodeGuru Profiler makes a
%% best effort to combine existing aggregated profiles from the requested
%% time range and return them as one aggregated profile. &lt;/p&gt; &lt;p&gt;
%% If aggregated profiles do not exist for the full time range requested,
%% then aggregated profiles for a smaller time range are returned. For
%% example, if the requested time range is from 00:00 to 00:20, and the
%% existing aggregated profiles are from 00:15 and 00:25, then the aggregated
%% profiles from 00:15 to 00:20 are returned. &lt;/p&gt; &lt;/li&gt;
%% &lt;/ol&gt;
get_profile(Client, ProfilingGroupName)
  when is_map(Client) ->
    get_profile(Client, ProfilingGroupName, #{}, #{}).

get_profile(Client, ProfilingGroupName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_profile(Client, ProfilingGroupName, QueryMap, HeadersMap, []).

get_profile(Client, ProfilingGroupName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/profilingGroups/", aws_util:encode_uri(ProfilingGroupName), "/profile"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"Accept">>, maps:get(<<"Accept">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"endTime">>, maps:get(<<"endTime">>, QueryMap, undefined)},
        {<<"maxDepth">>, maps:get(<<"maxDepth">>, QueryMap, undefined)},
        {<<"period">>, maps:get(<<"period">>, QueryMap, undefined)},
        {<<"startTime">>, maps:get(<<"startTime">>, QueryMap, undefined)}
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
%% A list of `Anomaly' objects that contains details about anomalies
%% detected in the profiling group for the same time period is also returned.
get_recommendations(Client, ProfilingGroupName, EndTime, StartTime)
  when is_map(Client) ->
    get_recommendations(Client, ProfilingGroupName, EndTime, StartTime, #{}, #{}).

get_recommendations(Client, ProfilingGroupName, EndTime, StartTime, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_recommendations(Client, ProfilingGroupName, EndTime, StartTime, QueryMap, HeadersMap, []).

get_recommendations(Client, ProfilingGroupName, EndTime, StartTime, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/internal/profilingGroups/", aws_util:encode_uri(ProfilingGroupName), "/recommendations"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"endTime">>, EndTime},
        {<<"locale">>, maps:get(<<"locale">>, QueryMap, undefined)},
        {<<"startTime">>, StartTime}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the available reports for a given profiling group and time
%% range.
list_findings_reports(Client, ProfilingGroupName, EndTime, StartTime)
  when is_map(Client) ->
    list_findings_reports(Client, ProfilingGroupName, EndTime, StartTime, #{}, #{}).

list_findings_reports(Client, ProfilingGroupName, EndTime, StartTime, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_findings_reports(Client, ProfilingGroupName, EndTime, StartTime, QueryMap, HeadersMap, []).

list_findings_reports(Client, ProfilingGroupName, EndTime, StartTime, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/internal/profilingGroups/", aws_util:encode_uri(ProfilingGroupName), "/findingsReports"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"dailyReportsOnly">>, maps:get(<<"dailyReportsOnly">>, QueryMap, undefined)},
        {<<"endTime">>, EndTime},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"startTime">>, StartTime}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the start times of the available aggregated profiles of a
%% profiling group for an aggregation period within the specified time range.
list_profile_times(Client, ProfilingGroupName, EndTime, Period, StartTime)
  when is_map(Client) ->
    list_profile_times(Client, ProfilingGroupName, EndTime, Period, StartTime, #{}, #{}).

list_profile_times(Client, ProfilingGroupName, EndTime, Period, StartTime, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_profile_times(Client, ProfilingGroupName, EndTime, Period, StartTime, QueryMap, HeadersMap, []).

list_profile_times(Client, ProfilingGroupName, EndTime, Period, StartTime, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/profilingGroups/", aws_util:encode_uri(ProfilingGroupName), "/profileTimes"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"endTime">>, EndTime},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"orderBy">>, maps:get(<<"orderBy">>, QueryMap, undefined)},
        {<<"period">>, Period},
        {<<"startTime">>, StartTime}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of profiling groups.
%%
%% The profiling groups are returned as `ProfilingGroupDescription'
%% objects.
list_profiling_groups(Client)
  when is_map(Client) ->
    list_profiling_groups(Client, #{}, #{}).

list_profiling_groups(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_profiling_groups(Client, QueryMap, HeadersMap, []).

list_profiling_groups(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/profilingGroups"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"includeDescription">>, maps:get(<<"includeDescription">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of the tags that are assigned to a specified resource.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Submits profiling data to an aggregated profile of a profiling group.
%%
%% To get an aggregated profile that is created with this profiling data, use
%% `GetProfile' .
post_agent_profile(Client, ProfilingGroupName, Input) ->
    post_agent_profile(Client, ProfilingGroupName, Input, []).
post_agent_profile(Client, ProfilingGroupName, Input0, Options0) ->
    Method = post,
    Path = ["/profilingGroups/", aws_util:encode_uri(ProfilingGroupName), "/agentProfile"],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"Content-Type">>, <<"contentType">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"profileToken">>, <<"profileToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Adds permissions to a profiling group's resource-based policy
%% that are provided using an action group.
%%
%% If a profiling group doesn't have a resource-based policy, one is
%% created for it using the permissions in the action group and the roles and
%% users in the `principals' parameter.
%%
%% &lt;p&gt; The one supported action group that can be added is
%% &lt;code&gt;agentPermission&lt;/code&gt; which grants
%% &lt;code&gt;ConfigureAgent&lt;/code&gt; and
%% &lt;code&gt;PostAgent&lt;/code&gt; permissions. For more information, see
%% &lt;a
%% href=&quot;https://docs.aws.amazon.com/codeguru/latest/profiler-ug/resource-based-policies.html&quot;&gt;Resource-based
%% policies in CodeGuru Profiler&lt;/a&gt; in the &lt;i&gt;Amazon CodeGuru
%% Profiler User Guide&lt;/i&gt;, &lt;a
%% href=&quot;https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ConfigureAgent.html&quot;&gt;
%% &lt;code&gt;ConfigureAgent&lt;/code&gt; &lt;/a&gt;, and &lt;a
%% href=&quot;https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_PostAgentProfile.html&quot;&gt;
%% &lt;code&gt;PostAgentProfile&lt;/code&gt; &lt;/a&gt;. &lt;/p&gt; &lt;p&gt;
%% The first time you call &lt;code&gt;PutPermission&lt;/code&gt; on a
%% profiling group, do not specify a &lt;code&gt;revisionId&lt;/code&gt;
%% because it doesn't have a resource-based policy. Subsequent calls must
%% provide a &lt;code&gt;revisionId&lt;/code&gt; to specify which revision of
%% the resource-based policy to add the permissions to. &lt;/p&gt; &lt;p&gt;
%% The response contains the profiling group's JSON-formatted resource
%% policy. &lt;/p&gt;
put_permission(Client, ActionGroup, ProfilingGroupName, Input) ->
    put_permission(Client, ActionGroup, ProfilingGroupName, Input, []).
put_permission(Client, ActionGroup, ProfilingGroupName, Input0, Options0) ->
    Method = put,
    Path = ["/profilingGroups/", aws_util:encode_uri(ProfilingGroupName), "/policy/", aws_util:encode_uri(ActionGroup), ""],
    SuccessStatusCode = 200,
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

%% @doc Remove one anomaly notifications channel for a profiling group.
remove_notification_channel(Client, ChannelId, ProfilingGroupName, Input) ->
    remove_notification_channel(Client, ChannelId, ProfilingGroupName, Input, []).
remove_notification_channel(Client, ChannelId, ProfilingGroupName, Input0, Options0) ->
    Method = delete,
    Path = ["/profilingGroups/", aws_util:encode_uri(ProfilingGroupName), "/notificationConfiguration/", aws_util:encode_uri(ChannelId), ""],
    SuccessStatusCode = 200,
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

%% @doc Removes permissions from a profiling group's resource-based
%% policy that are provided using an action group.
%%
%% The one supported action group that can be removed is
%% `agentPermission' which grants `ConfigureAgent' and
%% `PostAgent' permissions. For more information, see Resource-based
%% policies in CodeGuru Profiler in the Amazon CodeGuru Profiler User Guide,
%% `ConfigureAgent' , and `PostAgentProfile' .
remove_permission(Client, ActionGroup, ProfilingGroupName, Input) ->
    remove_permission(Client, ActionGroup, ProfilingGroupName, Input, []).
remove_permission(Client, ActionGroup, ProfilingGroupName, Input0, Options0) ->
    Method = delete,
    Path = ["/profilingGroups/", aws_util:encode_uri(ProfilingGroupName), "/policy/", aws_util:encode_uri(ActionGroup), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"revisionId">>, <<"revisionId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Sends feedback to CodeGuru Profiler about whether the anomaly
%% detected by the analysis is useful or not.
submit_feedback(Client, AnomalyInstanceId, ProfilingGroupName, Input) ->
    submit_feedback(Client, AnomalyInstanceId, ProfilingGroupName, Input, []).
submit_feedback(Client, AnomalyInstanceId, ProfilingGroupName, Input0, Options0) ->
    Method = post,
    Path = ["/internal/profilingGroups/", aws_util:encode_uri(ProfilingGroupName), "/anomalies/", aws_util:encode_uri(AnomalyInstanceId), "/feedback"],
    SuccessStatusCode = 204,
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

%% @doc Use to assign one or more tags to a resource.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 204,
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

%% @doc Use to remove one or more tags from a resource.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
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

%% @doc Updates a profiling group.
update_profiling_group(Client, ProfilingGroupName, Input) ->
    update_profiling_group(Client, ProfilingGroupName, Input, []).
update_profiling_group(Client, ProfilingGroupName, Input0, Options0) ->
    Method = put,
    Path = ["/profilingGroups/", aws_util:encode_uri(ProfilingGroupName), ""],
    SuccessStatusCode = 200,
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
    Client1 = Client#{service => <<"codeguru-profiler">>},
    Host = build_host(<<"codeguru-profiler">>, Client1),
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
    AdditionalHeaders = case proplists:get_value(append_sha256_content_hash, Options, false) of
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
    try
      DecodedError = jsx:decode(Body),
      {error, DecodedError, {StatusCode, ResponseHeaders, Client}}
    catch
      Error:Reason:Stack ->
        erlang:raise(error, {body_decode_failed, Error, Reason, StatusCode, Body}, Stack)
    end;
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
