%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Recovery Control Configuration API Reference for Amazon Route 53
%% Application Recovery Controller
-module(aws_route53_recovery_control_config).

-export([create_cluster/2,
         create_cluster/3,
         create_control_panel/2,
         create_control_panel/3,
         create_routing_control/2,
         create_routing_control/3,
         create_safety_rule/2,
         create_safety_rule/3,
         delete_cluster/3,
         delete_cluster/4,
         delete_control_panel/3,
         delete_control_panel/4,
         delete_routing_control/3,
         delete_routing_control/4,
         delete_safety_rule/3,
         delete_safety_rule/4,
         describe_cluster/2,
         describe_cluster/4,
         describe_cluster/5,
         describe_control_panel/2,
         describe_control_panel/4,
         describe_control_panel/5,
         describe_routing_control/2,
         describe_routing_control/4,
         describe_routing_control/5,
         describe_safety_rule/2,
         describe_safety_rule/4,
         describe_safety_rule/5,
         list_associated_route53_health_checks/2,
         list_associated_route53_health_checks/4,
         list_associated_route53_health_checks/5,
         list_clusters/1,
         list_clusters/3,
         list_clusters/4,
         list_control_panels/1,
         list_control_panels/3,
         list_control_panels/4,
         list_routing_controls/2,
         list_routing_controls/4,
         list_routing_controls/5,
         list_safety_rules/2,
         list_safety_rules/4,
         list_safety_rules/5,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_control_panel/2,
         update_control_panel/3,
         update_routing_control/2,
         update_routing_control/3,
         update_safety_rule/2,
         update_safety_rule/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Create a new cluster.
%%
%% A cluster is a set of redundant Regional endpoints against which you can
%% run API calls to update or get the state of one or more routing controls.
%% Each cluster has a name, status, Amazon Resource Name (ARN), and an array
%% of the five cluster endpoints (one for each supported Amazon Web Services
%% Region) that you can use with API calls to the cluster data plane.
create_cluster(Client, Input) ->
    create_cluster(Client, Input, []).
create_cluster(Client, Input0, Options0) ->
    Method = post,
    Path = ["/cluster"],
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

%% @doc Creates a new control panel.
%%
%% A control panel represents a group of routing controls that can be changed
%% together in a single transaction. You can use a control panel to centrally
%% view the operational status of applications across your organization, and
%% trigger multi-app failovers in a single transaction, for example, to fail
%% over an Availability Zone or Amazon Web Services Region.
create_control_panel(Client, Input) ->
    create_control_panel(Client, Input, []).
create_control_panel(Client, Input0, Options0) ->
    Method = post,
    Path = ["/controlpanel"],
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

%% @doc Creates a new routing control.
%%
%% A routing control has one of two states: ON and OFF. You can map the
%% routing control state to the state of an Amazon Route 53 health check,
%% which can be used to control traffic routing.
%%
%% To get or update the routing control state, see the Recovery Cluster (data
%% plane) API actions for Amazon Route 53 Application Recovery Controller.
create_routing_control(Client, Input) ->
    create_routing_control(Client, Input, []).
create_routing_control(Client, Input0, Options0) ->
    Method = post,
    Path = ["/routingcontrol"],
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

%% @doc Creates a safety rule in a control panel.
%%
%% Safety rules let you add safeguards around changing routing control
%% states, and for enabling and disabling routing controls, to help prevent
%% unexpected outcomes.
%%
%% There are two types of safety rules: assertion rules and gating rules.
%%
%% Assertion rule: An assertion rule enforces that, when you change a routing
%% control state, that a certain criteria is met. For example, the criteria
%% might be that at least one routing control state is On after the
%% transaction so that traffic continues to flow to at least one cell for the
%% application. This ensures that you avoid a fail-open scenario.
%%
%% Gating rule: A gating rule lets you configure a gating routing control as
%% an overall "on/off" switch for a group of routing controls. Or, you can
%% configure more complex gating scenarios, for example by configuring
%% multiple gating routing controls.
%%
%% For more information, see Safety rules in the Amazon Route 53 Application
%% Recovery Controller Developer Guide.
create_safety_rule(Client, Input) ->
    create_safety_rule(Client, Input, []).
create_safety_rule(Client, Input0, Options0) ->
    Method = post,
    Path = ["/safetyrule"],
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

%% @doc Delete a cluster.
delete_cluster(Client, ClusterArn, Input) ->
    delete_cluster(Client, ClusterArn, Input, []).
delete_cluster(Client, ClusterArn, Input0, Options0) ->
    Method = delete,
    Path = ["/cluster/", aws_util:encode_uri(ClusterArn), ""],
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

%% @doc Deletes a control panel.
delete_control_panel(Client, ControlPanelArn, Input) ->
    delete_control_panel(Client, ControlPanelArn, Input, []).
delete_control_panel(Client, ControlPanelArn, Input0, Options0) ->
    Method = delete,
    Path = ["/controlpanel/", aws_util:encode_uri(ControlPanelArn), ""],
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

%% @doc Deletes a routing control.
delete_routing_control(Client, RoutingControlArn, Input) ->
    delete_routing_control(Client, RoutingControlArn, Input, []).
delete_routing_control(Client, RoutingControlArn, Input0, Options0) ->
    Method = delete,
    Path = ["/routingcontrol/", aws_util:encode_uri(RoutingControlArn), ""],
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

%% @doc Deletes a safety rule.
%%
%% />
delete_safety_rule(Client, SafetyRuleArn, Input) ->
    delete_safety_rule(Client, SafetyRuleArn, Input, []).
delete_safety_rule(Client, SafetyRuleArn, Input0, Options0) ->
    Method = delete,
    Path = ["/safetyrule/", aws_util:encode_uri(SafetyRuleArn), ""],
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

%% @doc Display the details about a cluster.
%%
%% The response includes the cluster name, endpoints, status, and Amazon
%% Resource Name (ARN).
describe_cluster(Client, ClusterArn)
  when is_map(Client) ->
    describe_cluster(Client, ClusterArn, #{}, #{}).

describe_cluster(Client, ClusterArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_cluster(Client, ClusterArn, QueryMap, HeadersMap, []).

describe_cluster(Client, ClusterArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/cluster/", aws_util:encode_uri(ClusterArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Displays details about a control panel.
describe_control_panel(Client, ControlPanelArn)
  when is_map(Client) ->
    describe_control_panel(Client, ControlPanelArn, #{}, #{}).

describe_control_panel(Client, ControlPanelArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_control_panel(Client, ControlPanelArn, QueryMap, HeadersMap, []).

describe_control_panel(Client, ControlPanelArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/controlpanel/", aws_util:encode_uri(ControlPanelArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Displays details about a routing control.
%%
%% A routing control has one of two states: ON and OFF. You can map the
%% routing control state to the state of an Amazon Route 53 health check,
%% which can be used to control routing.
%%
%% To get or update the routing control state, see the Recovery Cluster (data
%% plane) API actions for Amazon Route 53 Application Recovery Controller.
describe_routing_control(Client, RoutingControlArn)
  when is_map(Client) ->
    describe_routing_control(Client, RoutingControlArn, #{}, #{}).

describe_routing_control(Client, RoutingControlArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_routing_control(Client, RoutingControlArn, QueryMap, HeadersMap, []).

describe_routing_control(Client, RoutingControlArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/routingcontrol/", aws_util:encode_uri(RoutingControlArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a safety rule.
describe_safety_rule(Client, SafetyRuleArn)
  when is_map(Client) ->
    describe_safety_rule(Client, SafetyRuleArn, #{}, #{}).

describe_safety_rule(Client, SafetyRuleArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_safety_rule(Client, SafetyRuleArn, QueryMap, HeadersMap, []).

describe_safety_rule(Client, SafetyRuleArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/safetyrule/", aws_util:encode_uri(SafetyRuleArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns an array of all Amazon Route 53 health checks associated with
%% a specific routing control.
list_associated_route53_health_checks(Client, RoutingControlArn)
  when is_map(Client) ->
    list_associated_route53_health_checks(Client, RoutingControlArn, #{}, #{}).

list_associated_route53_health_checks(Client, RoutingControlArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_associated_route53_health_checks(Client, RoutingControlArn, QueryMap, HeadersMap, []).

list_associated_route53_health_checks(Client, RoutingControlArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/routingcontrol/", aws_util:encode_uri(RoutingControlArn), "/associatedRoute53HealthChecks"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns an array of all the clusters in an account.
list_clusters(Client)
  when is_map(Client) ->
    list_clusters(Client, #{}, #{}).

list_clusters(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_clusters(Client, QueryMap, HeadersMap, []).

list_clusters(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/cluster"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns an array of control panels in an account or in a cluster.
list_control_panels(Client)
  when is_map(Client) ->
    list_control_panels(Client, #{}, #{}).

list_control_panels(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_control_panels(Client, QueryMap, HeadersMap, []).

list_control_panels(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/controlpanels"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"ClusterArn">>, maps:get(<<"ClusterArn">>, QueryMap, undefined)},
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns an array of routing controls for a control panel.
%%
%% A routing control is an Amazon Route 53 Application Recovery Controller
%% construct that has one of two states: ON and OFF. You can map the routing
%% control state to the state of an Amazon Route 53 health check, which can
%% be used to control routing.
list_routing_controls(Client, ControlPanelArn)
  when is_map(Client) ->
    list_routing_controls(Client, ControlPanelArn, #{}, #{}).

list_routing_controls(Client, ControlPanelArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_routing_controls(Client, ControlPanelArn, QueryMap, HeadersMap, []).

list_routing_controls(Client, ControlPanelArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/controlpanel/", aws_util:encode_uri(ControlPanelArn), "/routingcontrols"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the safety rules (the assertion rules and gating rules) that
%% you've defined for the routing controls in a control panel.
list_safety_rules(Client, ControlPanelArn)
  when is_map(Client) ->
    list_safety_rules(Client, ControlPanelArn, #{}, #{}).

list_safety_rules(Client, ControlPanelArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_safety_rules(Client, ControlPanelArn, QueryMap, HeadersMap, []).

list_safety_rules(Client, ControlPanelArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/controlpanel/", aws_util:encode_uri(ControlPanelArn), "/safetyrules"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the tags for a resource.
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

%% @doc Adds a tag to a resource.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
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

%% @doc Removes a tag from a resource.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
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
                     {<<"TagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a control panel.
%%
%% The only update you can make to a control panel is to change the name of
%% the control panel.
update_control_panel(Client, Input) ->
    update_control_panel(Client, Input, []).
update_control_panel(Client, Input0, Options0) ->
    Method = put,
    Path = ["/controlpanel"],
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

%% @doc Updates a routing control.
%%
%% You can only update the name of the routing control. To get or update the
%% routing control state, see the Recovery Cluster (data plane) API actions
%% for Amazon Route 53 Application Recovery Controller.
update_routing_control(Client, Input) ->
    update_routing_control(Client, Input, []).
update_routing_control(Client, Input0, Options0) ->
    Method = put,
    Path = ["/routingcontrol"],
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

%% @doc Update a safety rule (an assertion rule or gating rule).
%%
%% You can only update the name and the waiting period for a safety rule. To
%% make other updates, delete the safety rule and create a new one.
update_safety_rule(Client, Input) ->
    update_safety_rule(Client, Input, []).
update_safety_rule(Client, Input0, Options0) ->
    Method = put,
    Path = ["/safetyrule"],
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
    Client1 = Client#{service => <<"route53-recovery-control-config">>},
    Host = build_host(<<"route53-recovery-control-config">>, Client1),
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
