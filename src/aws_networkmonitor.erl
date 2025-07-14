%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon CloudWatch Network Monitor is an Amazon Web Services active
%% network monitoring
%% service that identifies if a network issues exists within the Amazon Web
%% Services network
%% or your own company network.
%%
%% Within Network Monitor you'll choose the source VPCs and
%% subnets from the Amazon Web Services network in which you operate and then
%% you'll choose
%% the destination IP addresses from your on-premises network. From these
%% sources and
%% destinations, Network Monitor creates a monitor containing all the
%% possible source and
%% destination combinations, each of which is called a probe, within a single
%% monitor.
%% These probes then monitor network traffic to help you identify where
%% network issues might be affecting your traffic.
%%
%% Before you begin, ensure the Amazon Web Services CLI is configured in the
%% Amazon Web Services Account where you will create the Network Monitor
%% resource. Network
%% Monitor doesn’t support creation on cross-account resources, but you can
%% create a
%% Network Monitor in any subnet belonging to a VPC owned by your Account.
%%
%% For more information, see Using Amazon CloudWatch Network Monitor:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/what-is-network-monitor.html
%% in the Amazon CloudWatch User Guide.
-module(aws_networkmonitor).

-export([create_monitor/2,
         create_monitor/3,
         create_probe/3,
         create_probe/4,
         delete_monitor/3,
         delete_monitor/4,
         delete_probe/4,
         delete_probe/5,
         get_monitor/2,
         get_monitor/4,
         get_monitor/5,
         get_probe/3,
         get_probe/5,
         get_probe/6,
         list_monitors/1,
         list_monitors/3,
         list_monitors/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_monitor/3,
         update_monitor/4,
         update_probe/4,
         update_probe/5]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% list_monitors_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"state">> => [string()]
%% }
-type list_monitors_input() :: #{binary() => any()}.


%% Example:
%% get_monitor_output() :: #{
%%   <<"aggregationPeriod">> => float(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"modifiedAt">> => non_neg_integer(),
%%   <<"monitorArn">> => string(),
%%   <<"monitorName">> => string(),
%%   <<"probes">> => list(probe()),
%%   <<"state">> => list(any()),
%%   <<"tags">> => map()
%% }
-type get_monitor_output() :: #{binary() => any()}.


%% Example:
%% list_monitors_output() :: #{
%%   <<"monitors">> => list(monitor_summary()),
%%   <<"nextToken">> => [string()]
%% }
-type list_monitors_output() :: #{binary() => any()}.


%% Example:
%% create_monitor_probe_input() :: #{
%%   <<"destination">> => string(),
%%   <<"destinationPort">> => integer(),
%%   <<"packetSize">> => integer(),
%%   <<"probeTags">> => map(),
%%   <<"protocol">> => list(any()),
%%   <<"sourceArn">> => string()
%% }
-type create_monitor_probe_input() :: #{binary() => any()}.


%% Example:
%% update_probe_output() :: #{
%%   <<"addressFamily">> => list(any()),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"destination">> => string(),
%%   <<"destinationPort">> => integer(),
%%   <<"modifiedAt">> => non_neg_integer(),
%%   <<"packetSize">> => integer(),
%%   <<"probeArn">> => string(),
%%   <<"probeId">> => string(),
%%   <<"protocol">> => list(any()),
%%   <<"sourceArn">> => string(),
%%   <<"state">> => list(any()),
%%   <<"tags">> => map(),
%%   <<"vpcId">> => string()
%% }
-type update_probe_output() :: #{binary() => any()}.

%% Example:
%% delete_monitor_output() :: #{}
-type delete_monitor_output() :: #{}.


%% Example:
%% list_tags_for_resource_output() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_output() :: #{binary() => any()}.

%% Example:
%% delete_monitor_input() :: #{}
-type delete_monitor_input() :: #{}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% create_probe_input() :: #{
%%   <<"clientToken">> => [string()],
%%   <<"probe">> := probe_input(),
%%   <<"tags">> => map()
%% }
-type create_probe_input() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% delete_probe_input() :: #{}
-type delete_probe_input() :: #{}.

%% Example:
%% get_probe_input() :: #{}
-type get_probe_input() :: #{}.

%% Example:
%% get_monitor_input() :: #{}
-type get_monitor_input() :: #{}.


%% Example:
%% create_probe_output() :: #{
%%   <<"addressFamily">> => list(any()),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"destination">> => string(),
%%   <<"destinationPort">> => integer(),
%%   <<"modifiedAt">> => non_neg_integer(),
%%   <<"packetSize">> => integer(),
%%   <<"probeArn">> => string(),
%%   <<"probeId">> => string(),
%%   <<"protocol">> => list(any()),
%%   <<"sourceArn">> => string(),
%%   <<"state">> => list(any()),
%%   <<"tags">> => map(),
%%   <<"vpcId">> => string()
%% }
-type create_probe_output() :: #{binary() => any()}.


%% Example:
%% tag_resource_input() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_input() :: #{binary() => any()}.

%% Example:
%% delete_probe_output() :: #{}
-type delete_probe_output() :: #{}.

%% Example:
%% tag_resource_output() :: #{}
-type tag_resource_output() :: #{}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% update_probe_input() :: #{
%%   <<"destination">> => string(),
%%   <<"destinationPort">> => integer(),
%%   <<"packetSize">> => integer(),
%%   <<"protocol">> => list(any()),
%%   <<"state">> => list(any())
%% }
-type update_probe_input() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% untag_resource_input() :: #{
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_input() :: #{binary() => any()}.


%% Example:
%% probe_input() :: #{
%%   <<"destination">> => string(),
%%   <<"destinationPort">> => integer(),
%%   <<"packetSize">> => integer(),
%%   <<"protocol">> => list(any()),
%%   <<"sourceArn">> => string(),
%%   <<"tags">> => map()
%% }
-type probe_input() :: #{binary() => any()}.


%% Example:
%% update_monitor_input() :: #{
%%   <<"aggregationPeriod">> := float()
%% }
-type update_monitor_input() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_input() :: #{}
-type list_tags_for_resource_input() :: #{}.


%% Example:
%% probe() :: #{
%%   <<"addressFamily">> => list(any()),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"destination">> => string(),
%%   <<"destinationPort">> => integer(),
%%   <<"modifiedAt">> => non_neg_integer(),
%%   <<"packetSize">> => integer(),
%%   <<"probeArn">> => string(),
%%   <<"probeId">> => string(),
%%   <<"protocol">> => list(any()),
%%   <<"sourceArn">> => string(),
%%   <<"state">> => list(any()),
%%   <<"tags">> => map(),
%%   <<"vpcId">> => string()
%% }
-type probe() :: #{binary() => any()}.

%% Example:
%% untag_resource_output() :: #{}
-type untag_resource_output() :: #{}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% get_probe_output() :: #{
%%   <<"addressFamily">> => list(any()),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"destination">> => string(),
%%   <<"destinationPort">> => integer(),
%%   <<"modifiedAt">> => non_neg_integer(),
%%   <<"packetSize">> => integer(),
%%   <<"probeArn">> => string(),
%%   <<"probeId">> => string(),
%%   <<"protocol">> => list(any()),
%%   <<"sourceArn">> => string(),
%%   <<"state">> => list(any()),
%%   <<"tags">> => map(),
%%   <<"vpcId">> => string()
%% }
-type get_probe_output() :: #{binary() => any()}.


%% Example:
%% create_monitor_output() :: #{
%%   <<"aggregationPeriod">> => float(),
%%   <<"monitorArn">> => string(),
%%   <<"monitorName">> => string(),
%%   <<"state">> => list(any()),
%%   <<"tags">> => map()
%% }
-type create_monitor_output() :: #{binary() => any()}.


%% Example:
%% monitor_summary() :: #{
%%   <<"aggregationPeriod">> => float(),
%%   <<"monitorArn">> => string(),
%%   <<"monitorName">> => string(),
%%   <<"state">> => list(any()),
%%   <<"tags">> => map()
%% }
-type monitor_summary() :: #{binary() => any()}.


%% Example:
%% update_monitor_output() :: #{
%%   <<"aggregationPeriod">> => float(),
%%   <<"monitorArn">> => string(),
%%   <<"monitorName">> => string(),
%%   <<"state">> => list(any()),
%%   <<"tags">> => map()
%% }
-type update_monitor_output() :: #{binary() => any()}.


%% Example:
%% create_monitor_input() :: #{
%%   <<"aggregationPeriod">> => float(),
%%   <<"clientToken">> => [string()],
%%   <<"monitorName">> := string(),
%%   <<"probes">> => list(create_monitor_probe_input()),
%%   <<"tags">> => map()
%% }
-type create_monitor_input() :: #{binary() => any()}.

-type create_monitor_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_probe_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type delete_monitor_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_probe_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type get_monitor_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_probe_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_monitors_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type tag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_monitor_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type update_probe_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a monitor between a source subnet and destination IP address.
%%
%% Within a monitor you'll create one or more probes that monitor network
%% traffic between your source Amazon Web Services VPC subnets and your
%% destination IP addresses. Each probe then aggregates and sends metrics to
%% Amazon CloudWatch.
%%
%% You can also create a monitor with probes using this command. For each
%% probe, you
%% define the following:
%%
%% `source'—The subnet IDs where the probes will be created.
%%
%% `destination'— The target destination IP address for the
%% probe.
%%
%% `destinationPort'—Required only if the protocol is
%% `TCP'.
%%
%% `protocol'—The communication protocol between the source and
%% destination. This will be either `TCP' or `ICMP'.
%%
%% `packetSize'—The size of the packets. This must be a number between
%% `56' and `8500'.
%%
%% (Optional) `tags' —Key-value pairs created and assigned to the
%% probe.
-spec create_monitor(aws_client:aws_client(), create_monitor_input()) ->
    {ok, create_monitor_output(), tuple()} |
    {error, any()} |
    {error, create_monitor_errors(), tuple()}.
create_monitor(Client, Input) ->
    create_monitor(Client, Input, []).

-spec create_monitor(aws_client:aws_client(), create_monitor_input(), proplists:proplist()) ->
    {ok, create_monitor_output(), tuple()} |
    {error, any()} |
    {error, create_monitor_errors(), tuple()}.
create_monitor(Client, Input0, Options0) ->
    Method = post,
    Path = ["/monitors"],
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

%% @doc Create a probe within a monitor.
%%
%% Once you create a probe, and it begins monitoring your
%% network traffic, you'll incur billing charges for that probe. This
%% action requires the
%% `monitorName' parameter. Run `ListMonitors' to get a list of
%% monitor names. Note the name of the `monitorName' you want to create
%% the
%% probe for.
-spec create_probe(aws_client:aws_client(), binary() | list(), create_probe_input()) ->
    {ok, create_probe_output(), tuple()} |
    {error, any()} |
    {error, create_probe_errors(), tuple()}.
create_probe(Client, MonitorName, Input) ->
    create_probe(Client, MonitorName, Input, []).

-spec create_probe(aws_client:aws_client(), binary() | list(), create_probe_input(), proplists:proplist()) ->
    {ok, create_probe_output(), tuple()} |
    {error, any()} |
    {error, create_probe_errors(), tuple()}.
create_probe(Client, MonitorName, Input0, Options0) ->
    Method = post,
    Path = ["/monitors/", aws_util:encode_uri(MonitorName), "/probes"],
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

%% @doc Deletes a specified monitor.
%%
%% This action requires the `monitorName' parameter. Run
%% `ListMonitors' to get a list of monitor names.
-spec delete_monitor(aws_client:aws_client(), binary() | list(), delete_monitor_input()) ->
    {ok, delete_monitor_output(), tuple()} |
    {error, any()} |
    {error, delete_monitor_errors(), tuple()}.
delete_monitor(Client, MonitorName, Input) ->
    delete_monitor(Client, MonitorName, Input, []).

-spec delete_monitor(aws_client:aws_client(), binary() | list(), delete_monitor_input(), proplists:proplist()) ->
    {ok, delete_monitor_output(), tuple()} |
    {error, any()} |
    {error, delete_monitor_errors(), tuple()}.
delete_monitor(Client, MonitorName, Input0, Options0) ->
    Method = delete,
    Path = ["/monitors/", aws_util:encode_uri(MonitorName), ""],
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

%% @doc Deletes the specified probe.
%%
%% Once a probe is deleted you'll no longer incur any billing
%% fees for that probe.
%%
%% This action requires both the `monitorName' and `probeId'
%% parameters. Run `ListMonitors' to get a list of monitor names. Run
%% `GetMonitor' to get a list of probes and probe IDs. You can only
%% delete a
%% single probe at a time using this action.
-spec delete_probe(aws_client:aws_client(), binary() | list(), binary() | list(), delete_probe_input()) ->
    {ok, delete_probe_output(), tuple()} |
    {error, any()} |
    {error, delete_probe_errors(), tuple()}.
delete_probe(Client, MonitorName, ProbeId, Input) ->
    delete_probe(Client, MonitorName, ProbeId, Input, []).

-spec delete_probe(aws_client:aws_client(), binary() | list(), binary() | list(), delete_probe_input(), proplists:proplist()) ->
    {ok, delete_probe_output(), tuple()} |
    {error, any()} |
    {error, delete_probe_errors(), tuple()}.
delete_probe(Client, MonitorName, ProbeId, Input0, Options0) ->
    Method = delete,
    Path = ["/monitors/", aws_util:encode_uri(MonitorName), "/probes/", aws_util:encode_uri(ProbeId), ""],
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

%% @doc Returns details about a specific monitor.
%%
%% This action requires the `monitorName' parameter. Run
%% `ListMonitors' to get a list of monitor names.
-spec get_monitor(aws_client:aws_client(), binary() | list()) ->
    {ok, get_monitor_output(), tuple()} |
    {error, any()} |
    {error, get_monitor_errors(), tuple()}.
get_monitor(Client, MonitorName)
  when is_map(Client) ->
    get_monitor(Client, MonitorName, #{}, #{}).

-spec get_monitor(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_monitor_output(), tuple()} |
    {error, any()} |
    {error, get_monitor_errors(), tuple()}.
get_monitor(Client, MonitorName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_monitor(Client, MonitorName, QueryMap, HeadersMap, []).

-spec get_monitor(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_monitor_output(), tuple()} |
    {error, any()} |
    {error, get_monitor_errors(), tuple()}.
get_monitor(Client, MonitorName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/monitors/", aws_util:encode_uri(MonitorName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the details about a probe.
%%
%% This action requires both the
%% `monitorName' and `probeId' parameters. Run
%% `ListMonitors' to get a list of monitor names. Run
%% `GetMonitor' to get a list of probes and probe IDs.
-spec get_probe(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_probe_output(), tuple()} |
    {error, any()} |
    {error, get_probe_errors(), tuple()}.
get_probe(Client, MonitorName, ProbeId)
  when is_map(Client) ->
    get_probe(Client, MonitorName, ProbeId, #{}, #{}).

-spec get_probe(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_probe_output(), tuple()} |
    {error, any()} |
    {error, get_probe_errors(), tuple()}.
get_probe(Client, MonitorName, ProbeId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_probe(Client, MonitorName, ProbeId, QueryMap, HeadersMap, []).

-spec get_probe(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_probe_output(), tuple()} |
    {error, any()} |
    {error, get_probe_errors(), tuple()}.
get_probe(Client, MonitorName, ProbeId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/monitors/", aws_util:encode_uri(MonitorName), "/probes/", aws_util:encode_uri(ProbeId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of all of your monitors.
-spec list_monitors(aws_client:aws_client()) ->
    {ok, list_monitors_output(), tuple()} |
    {error, any()} |
    {error, list_monitors_errors(), tuple()}.
list_monitors(Client)
  when is_map(Client) ->
    list_monitors(Client, #{}, #{}).

-spec list_monitors(aws_client:aws_client(), map(), map()) ->
    {ok, list_monitors_output(), tuple()} |
    {error, any()} |
    {error, list_monitors_errors(), tuple()}.
list_monitors(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_monitors(Client, QueryMap, HeadersMap, []).

-spec list_monitors(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_monitors_output(), tuple()} |
    {error, any()} |
    {error, list_monitors_errors(), tuple()}.
list_monitors(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/monitors"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"state">>, maps:get(<<"state">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the tags assigned to this resource.
-spec list_tags_for_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
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

%% @doc Adds key-value pairs to a monitor or probe.
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_input()) ->
    {ok, tag_resource_output(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_input(), proplists:proplist()) ->
    {ok, tag_resource_output(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
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

%% @doc Removes a key-value pair from a monitor or probe.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_input()) ->
    {ok, untag_resource_output(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_input(), proplists:proplist()) ->
    {ok, untag_resource_output(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
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

    QueryMapping = [
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the `aggregationPeriod' for a monitor.
%%
%% Monitors support an
%% `aggregationPeriod' of either `30' or `60' seconds.
%% This action requires the `monitorName' and `probeId' parameter.
%% Run `ListMonitors' to get a list of monitor names.
-spec update_monitor(aws_client:aws_client(), binary() | list(), update_monitor_input()) ->
    {ok, update_monitor_output(), tuple()} |
    {error, any()} |
    {error, update_monitor_errors(), tuple()}.
update_monitor(Client, MonitorName, Input) ->
    update_monitor(Client, MonitorName, Input, []).

-spec update_monitor(aws_client:aws_client(), binary() | list(), update_monitor_input(), proplists:proplist()) ->
    {ok, update_monitor_output(), tuple()} |
    {error, any()} |
    {error, update_monitor_errors(), tuple()}.
update_monitor(Client, MonitorName, Input0, Options0) ->
    Method = patch,
    Path = ["/monitors/", aws_util:encode_uri(MonitorName), ""],
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

%% @doc Updates a monitor probe.
%%
%% This action requires both the `monitorName' and `probeId'
%% parameters. Run `ListMonitors' to get a list of monitor names. Run
%% `GetMonitor' to get a list of probes and probe IDs.
%%
%% You can update the following para create a monitor with probes using this
%% command. For
%% each probe, you define the following:
%%
%% `state'—The state of the probe.
%%
%% `destination'— The target destination IP address for the
%% probe.
%%
%% `destinationPort'—Required only if the protocol is
%% `TCP'.
%%
%% `protocol'—The communication protocol between the source and
%% destination. This will be either `TCP' or `ICMP'.
%%
%% `packetSize'—The size of the packets. This must be a number between
%% `56' and `8500'.
%%
%% (Optional) `tags' —Key-value pairs created and assigned to the
%% probe.
-spec update_probe(aws_client:aws_client(), binary() | list(), binary() | list(), update_probe_input()) ->
    {ok, update_probe_output(), tuple()} |
    {error, any()} |
    {error, update_probe_errors(), tuple()}.
update_probe(Client, MonitorName, ProbeId, Input) ->
    update_probe(Client, MonitorName, ProbeId, Input, []).

-spec update_probe(aws_client:aws_client(), binary() | list(), binary() | list(), update_probe_input(), proplists:proplist()) ->
    {ok, update_probe_output(), tuple()} |
    {error, any()} |
    {error, update_probe_errors(), tuple()}.
update_probe(Client, MonitorName, ProbeId, Input0, Options0) ->
    Method = patch,
    Path = ["/monitors/", aws_util:encode_uri(MonitorName), "/probes/", aws_util:encode_uri(ProbeId), ""],
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

-spec proplists_take(any(), proplists:proplist(), any()) -> {any(), proplists:proplist()}.
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
    Client1 = Client#{service => <<"networkmonitor">>},
    Host = build_host(<<"networkmonitor">>, Client1),
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
