%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon CloudWatch Internet Monitor provides visibility into how
%% internet issues impact the performance and availability
%% between your applications hosted on Amazon Web Services and your end
%% users.
%%
%% It can reduce the time it takes for you to diagnose
%% internet issues from days to minutes. Internet Monitor uses the
%% connectivity data that Amazon Web Services captures from its global
%% networking footprint to calculate a baseline of performance and
%% availability for internet traffic. This
%% is the same data that Amazon Web Services uses to monitor internet uptime
%% and availability. With those measurements
%% as a baseline, Internet Monitor raises awareness for you when there are
%% significant problems for your
%% end users in the different geographic locations where your application
%% runs.
%%
%% Internet Monitor publishes internet measurements to CloudWatch Logs and
%% CloudWatch Metrics,
%% to easily support using CloudWatch tools with health information for
%% geographies and networks specific to your application.
%% Internet Monitor sends health events to Amazon EventBridge so that you can
%% set up notifications. If an issue is caused by the Amazon Web Services
%% network,
%% you also automatically receive an Amazon Web Services Health Dashboard
%% notification with the steps that Amazon Web Services is taking to mitigate
%% the problem.
%%
%% To use Internet Monitor, you create a monitor and associate your
%% application's resources
%% with it - VPCs, NLBs, CloudFront distributions, or WorkSpaces directories
%% - so Internet Monitor can determine
%% where your application's internet traffic is. Internet Monitor then
%% provides internet measurements from Amazon Web Services that are specific
%% to
%% the locations and ASNs (typically, internet service providers or ISPs)
%% that communicate with your application.
%%
%% For more information, see Using Amazon CloudWatch Internet Monitor:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-InternetMonitor.html
%% in the Amazon CloudWatch User Guide.
-module(aws_internetmonitor).

-export([create_monitor/2,
         create_monitor/3,
         delete_monitor/3,
         delete_monitor/4,
         get_health_event/3,
         get_health_event/5,
         get_health_event/6,
         get_monitor/2,
         get_monitor/4,
         get_monitor/5,
         get_query_results/3,
         get_query_results/5,
         get_query_results/6,
         get_query_status/3,
         get_query_status/5,
         get_query_status/6,
         list_health_events/2,
         list_health_events/4,
         list_health_events/5,
         list_monitors/1,
         list_monitors/3,
         list_monitors/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         start_query/3,
         start_query/4,
         stop_query/4,
         stop_query/5,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_monitor/3,
         update_monitor/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a monitor in Amazon CloudWatch Internet Monitor.
%%
%% A monitor is built based on information from the application resources
%% that you add: VPCs,
%% Network Load Balancers (NLBs), Amazon CloudFront distributions, and Amazon
%% WorkSpaces directories. Internet Monitor then publishes internet
%% measurements from Amazon Web Services
%% that are specific to the city-networks. That is, the locations and ASNs
%% (typically internet service providers or ISPs),
%% where clients access your application. For more information, see Using
%% Amazon CloudWatch Internet Monitor:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-InternetMonitor.html
%% in the Amazon CloudWatch User
%% Guide.
%%
%% When you create a monitor, you choose the percentage of traffic that you
%% want to monitor. You can also set a maximum limit for the
%% number of city-networks where client traffic is monitored, that caps the
%% total traffic that Internet Monitor monitors. A city-network
%% maximum is the limit of city-networks, but you only pay for the number of
%% city-networks that are actually monitored. You can update your monitor
%% at any time to change the percentage of traffic to monitor or the
%% city-networks maximum. For more information, see Choosing a city-network
%% maximum value:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/IMCityNetworksMaximum.html
%% in the Amazon CloudWatch User Guide.
create_monitor(Client, Input) ->
    create_monitor(Client, Input, []).
create_monitor(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v20210603/Monitors"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a monitor in Amazon CloudWatch Internet Monitor.
delete_monitor(Client, MonitorName, Input) ->
    delete_monitor(Client, MonitorName, Input, []).
delete_monitor(Client, MonitorName, Input0, Options0) ->
    Method = delete,
    Path = ["/v20210603/Monitors/", aws_util:encode_uri(MonitorName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets information the Amazon CloudWatch Internet Monitor has created
%% and stored about a health event for a specified monitor.
%%
%% This information includes the impacted locations,
%% and all the information related to the event, by location.
%%
%% The information returned includes the impact on performance, availability,
%% and round-trip time, information about the network providers (ASNs),
%% the event type, and so on.
%%
%% Information rolled up at the global traffic level is also returned,
%% including the impact type and total traffic impact.
get_health_event(Client, EventId, MonitorName)
  when is_map(Client) ->
    get_health_event(Client, EventId, MonitorName, #{}, #{}).

get_health_event(Client, EventId, MonitorName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_health_event(Client, EventId, MonitorName, QueryMap, HeadersMap, []).

get_health_event(Client, EventId, MonitorName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20210603/Monitors/", aws_util:encode_uri(MonitorName), "/HealthEvents/", aws_util:encode_uri(EventId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a monitor in Amazon CloudWatch Internet
%% Monitor based on a monitor name.
%%
%% The information returned includes the Amazon Resource Name (ARN), create
%% time,
%% modified time, resources included in the monitor, and status information.
get_monitor(Client, MonitorName)
  when is_map(Client) ->
    get_monitor(Client, MonitorName, #{}, #{}).

get_monitor(Client, MonitorName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_monitor(Client, MonitorName, QueryMap, HeadersMap, []).

get_monitor(Client, MonitorName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20210603/Monitors/", aws_util:encode_uri(MonitorName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Return the data for a query with the Amazon CloudWatch Internet
%% Monitor query interface.
%%
%% Specify the query that you want to return results for by providing
%% a `QueryId' and a monitor name.
%%
%% For more information about using the query interface, including examples,
%% see
%% Using the Amazon CloudWatch Internet Monitor query interface:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-IM-view-cw-tools-cwim-query.html
%% in the Amazon CloudWatch Internet Monitor User Guide.
get_query_results(Client, MonitorName, QueryId)
  when is_map(Client) ->
    get_query_results(Client, MonitorName, QueryId, #{}, #{}).

get_query_results(Client, MonitorName, QueryId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_query_results(Client, MonitorName, QueryId, QueryMap, HeadersMap, []).

get_query_results(Client, MonitorName, QueryId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20210603/Monitors/", aws_util:encode_uri(MonitorName), "/Queries/", aws_util:encode_uri(QueryId), "/Results"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the current status of a query for the Amazon CloudWatch
%% Internet Monitor query interface, for a specified query ID and monitor.
%%
%% When you run a query, check the status to make sure that the query has
%% `SUCCEEDED' before you review the results.
%%
%% `QUEUED': The query is scheduled to run.
%%
%% `RUNNING': The query is in progress but not complete.
%%
%% `SUCCEEDED': The query completed sucessfully.
%%
%% `FAILED': The query failed due to an error.
%%
%% `CANCELED': The query was canceled.
get_query_status(Client, MonitorName, QueryId)
  when is_map(Client) ->
    get_query_status(Client, MonitorName, QueryId, #{}, #{}).

get_query_status(Client, MonitorName, QueryId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_query_status(Client, MonitorName, QueryId, QueryMap, HeadersMap, []).

get_query_status(Client, MonitorName, QueryId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20210603/Monitors/", aws_util:encode_uri(MonitorName), "/Queries/", aws_util:encode_uri(QueryId), "/Status"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all health events for a monitor in Amazon CloudWatch Internet
%% Monitor.
%%
%% Returns information for health events including the event start and end
%% time and
%% the status.
%%
%% Health events that have start times during the time frame that is
%% requested are not included in the list of health events.
list_health_events(Client, MonitorName)
  when is_map(Client) ->
    list_health_events(Client, MonitorName, #{}, #{}).

list_health_events(Client, MonitorName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_health_events(Client, MonitorName, QueryMap, HeadersMap, []).

list_health_events(Client, MonitorName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20210603/Monitors/", aws_util:encode_uri(MonitorName), "/HealthEvents"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"EndTime">>, maps:get(<<"EndTime">>, QueryMap, undefined)},
        {<<"EventStatus">>, maps:get(<<"EventStatus">>, QueryMap, undefined)},
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)},
        {<<"StartTime">>, maps:get(<<"StartTime">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all of your monitors for Amazon CloudWatch Internet Monitor and
%% their statuses, along with the Amazon Resource Name (ARN) and name of each
%% monitor.
list_monitors(Client)
  when is_map(Client) ->
    list_monitors(Client, #{}, #{}).

list_monitors(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_monitors(Client, QueryMap, HeadersMap, []).

list_monitors(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v20210603/Monitors"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"MonitorStatus">>, maps:get(<<"MonitorStatus">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the tags for a resource.
%%
%% Tags are supported only for monitors in Amazon CloudWatch Internet
%% Monitor.
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
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Start a query to return data for a specific query type for the Amazon
%% CloudWatch Internet Monitor query interface.
%%
%% Specify a time period
%% for the data that you want returned by using `StartTime' and
%% `EndTime'. You filter the query
%% results to return by providing parameters that you specify with
%% `FilterParameters'.
%%
%% For more information about using the query interface, including examples,
%% see
%% Using the Amazon CloudWatch Internet Monitor query interface:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-IM-view-cw-tools-cwim-query.html
%% in the Amazon CloudWatch Internet Monitor User Guide.
start_query(Client, MonitorName, Input) ->
    start_query(Client, MonitorName, Input, []).
start_query(Client, MonitorName, Input0, Options0) ->
    Method = post,
    Path = ["/v20210603/Monitors/", aws_util:encode_uri(MonitorName), "/Queries"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Stop a query that is progress for a specific monitor.
stop_query(Client, MonitorName, QueryId, Input) ->
    stop_query(Client, MonitorName, QueryId, Input, []).
stop_query(Client, MonitorName, QueryId, Input0, Options0) ->
    Method = delete,
    Path = ["/v20210603/Monitors/", aws_util:encode_uri(MonitorName), "/Queries/", aws_util:encode_uri(QueryId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Adds a tag to a resource.
%%
%% Tags are supported only for monitors in Amazon CloudWatch Internet
%% Monitor. You can add a maximum of 50 tags in Internet Monitor.
%%
%% A minimum of one tag is required for this call. It returns an error if you
%% use the `TagResource' request with 0 tags.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 204,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes a tag from a resource.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 204,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"tagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a monitor.
%%
%% You can update a monitor to change the percentage of traffic to monitor or
%% the maximum number of city-networks
%% (locations and ASNs), to add or remove resources, or to change the status
%% of the monitor. Note that you can't change the name of a monitor.
%%
%% The city-network maximum that you choose is the limit, but you only pay
%% for the number of city-networks that are actually monitored.
%% For more information, see Choosing a city-network maximum value:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/IMCityNetworksMaximum.html
%% in the Amazon CloudWatch User Guide.
update_monitor(Client, MonitorName, Input) ->
    update_monitor(Client, MonitorName, Input, []).
update_monitor(Client, MonitorName, Input0, Options0) ->
    Method = patch,
    Path = ["/v20210603/Monitors/", aws_util:encode_uri(MonitorName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

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

-spec proplists_take(any(), proplists:proplists(), any()) -> {any(), proplists:proplists()}.
proplists_take(Key, Proplist, Default) ->
  Value = proplists:get_value(Key, Proplist, Default),
  {Value, proplists:delete(Key, Proplist)}.

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
    Client1 = Client#{service => <<"internetmonitor">>},
    Host = build_host(<<"internetmonitor">>, Client1),
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
handle_response({ok, StatusCode, _ResponseHeaders, _Client}, _, _DecodeBody)
  when StatusCode =:= 503 ->
  %% Retriable error if retries are enabled
  {error, service_unavailable};
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
    Proto = aws_client:proto(Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = aws_client:port(Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  jsx:encode(Input).
