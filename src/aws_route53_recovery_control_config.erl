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
         get_resource_policy/2,
         get_resource_policy/4,
         get_resource_policy/5,
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
         update_cluster/2,
         update_cluster/3,
         update_control_panel/2,
         update_control_panel/3,
         update_routing_control/2,
         update_routing_control/3,
         update_safety_rule/2,
         update_safety_rule/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% describe_cluster_request() :: #{}
-type describe_cluster_request() :: #{}.


%% Example:
%% update_control_panel_response() :: #{
%%   <<"ControlPanel">> => control_panel()
%% }
-type update_control_panel_response() :: #{binary() => any()}.


%% Example:
%% describe_routing_control_response() :: #{
%%   <<"RoutingControl">> => routing_control()
%% }
-type describe_routing_control_response() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"Tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% describe_safety_rule_response() :: #{
%%   <<"AssertionRule">> => assertion_rule(),
%%   <<"GatingRule">> => gating_rule()
%% }
-type describe_safety_rule_response() :: #{binary() => any()}.


%% Example:
%% gating_rule() :: #{
%%   <<"ControlPanelArn">> => string(),
%%   <<"GatingControls">> => list(string()()),
%%   <<"Name">> => string(),
%%   <<"Owner">> => string(),
%%   <<"RuleConfig">> => rule_config(),
%%   <<"SafetyRuleArn">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"TargetControls">> => list(string()()),
%%   <<"WaitPeriodMs">> => integer()
%% }
-type gating_rule() :: #{binary() => any()}.


%% Example:
%% describe_cluster_response() :: #{
%%   <<"Cluster">> => cluster()
%% }
-type describe_cluster_response() :: #{binary() => any()}.

%% Example:
%% delete_control_panel_response() :: #{}
-type delete_control_panel_response() :: #{}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% create_cluster_response() :: #{
%%   <<"Cluster">> => cluster()
%% }
-type create_cluster_response() :: #{binary() => any()}.


%% Example:
%% list_routing_controls_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_routing_controls_request() :: #{binary() => any()}.


%% Example:
%% update_control_panel_request() :: #{
%%   <<"ControlPanelArn">> := string(),
%%   <<"ControlPanelName">> := string()
%% }
-type update_control_panel_request() :: #{binary() => any()}.

%% Example:
%% delete_routing_control_request() :: #{}
-type delete_routing_control_request() :: #{}.


%% Example:
%% get_resource_policy_response() :: #{
%%   <<"Policy">> => string()
%% }
-type get_resource_policy_response() :: #{binary() => any()}.


%% Example:
%% gating_rule_update() :: #{
%%   <<"Name">> => string(),
%%   <<"SafetyRuleArn">> => string(),
%%   <<"WaitPeriodMs">> => integer()
%% }
-type gating_rule_update() :: #{binary() => any()}.


%% Example:
%% describe_control_panel_response() :: #{
%%   <<"ControlPanel">> => control_panel()
%% }
-type describe_control_panel_response() :: #{binary() => any()}.


%% Example:
%% list_control_panels_response() :: #{
%%   <<"ControlPanels">> => list(control_panel()()),
%%   <<"NextToken">> => string()
%% }
-type list_control_panels_response() :: #{binary() => any()}.


%% Example:
%% cluster_endpoint() :: #{
%%   <<"Endpoint">> => string(),
%%   <<"Region">> => string()
%% }
-type cluster_endpoint() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"TagKeys">> := list(string()())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% create_routing_control_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"ClusterArn">> := string(),
%%   <<"ControlPanelArn">> => string(),
%%   <<"RoutingControlName">> := string()
%% }
-type create_routing_control_request() :: #{binary() => any()}.

%% Example:
%% delete_routing_control_response() :: #{}
-type delete_routing_control_response() :: #{}.


%% Example:
%% update_cluster_request() :: #{
%%   <<"ClusterArn">> := string(),
%%   <<"NetworkType">> := list(any())
%% }
-type update_cluster_request() :: #{binary() => any()}.


%% Example:
%% update_routing_control_request() :: #{
%%   <<"RoutingControlArn">> := string(),
%%   <<"RoutingControlName">> := string()
%% }
-type update_routing_control_request() :: #{binary() => any()}.

%% Example:
%% delete_safety_rule_response() :: #{}
-type delete_safety_rule_response() :: #{}.


%% Example:
%% create_cluster_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"ClusterName">> := string(),
%%   <<"NetworkType">> => list(any()),
%%   <<"Tags">> => map()
%% }
-type create_cluster_request() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% assertion_rule_update() :: #{
%%   <<"Name">> => string(),
%%   <<"SafetyRuleArn">> => string(),
%%   <<"WaitPeriodMs">> => integer()
%% }
-type assertion_rule_update() :: #{binary() => any()}.


%% Example:
%% create_routing_control_response() :: #{
%%   <<"RoutingControl">> => routing_control()
%% }
-type create_routing_control_response() :: #{binary() => any()}.


%% Example:
%% cluster() :: #{
%%   <<"ClusterArn">> => string(),
%%   <<"ClusterEndpoints">> => list(cluster_endpoint()()),
%%   <<"Name">> => string(),
%%   <<"NetworkType">> => list(any()),
%%   <<"Owner">> => string(),
%%   <<"Status">> => list(any())
%% }
-type cluster() :: #{binary() => any()}.


%% Example:
%% create_control_panel_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"ClusterArn">> := string(),
%%   <<"ControlPanelName">> := string(),
%%   <<"Tags">> => map()
%% }
-type create_control_panel_request() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% describe_control_panel_request() :: #{}
-type describe_control_panel_request() :: #{}.


%% Example:
%% routing_control() :: #{
%%   <<"ControlPanelArn">> => string(),
%%   <<"Name">> => string(),
%%   <<"Owner">> => string(),
%%   <<"RoutingControlArn">> => string(),
%%   <<"Status">> => list(any())
%% }
-type routing_control() :: #{binary() => any()}.


%% Example:
%% update_safety_rule_request() :: #{
%%   <<"AssertionRuleUpdate">> => assertion_rule_update(),
%%   <<"GatingRuleUpdate">> => gating_rule_update()
%% }
-type update_safety_rule_request() :: #{binary() => any()}.

%% Example:
%% describe_safety_rule_request() :: #{}
-type describe_safety_rule_request() :: #{}.


%% Example:
%% create_safety_rule_request() :: #{
%%   <<"AssertionRule">> => new_assertion_rule(),
%%   <<"ClientToken">> => string(),
%%   <<"GatingRule">> => new_gating_rule(),
%%   <<"Tags">> => map()
%% }
-type create_safety_rule_request() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% list_routing_controls_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"RoutingControls">> => list(routing_control()())
%% }
-type list_routing_controls_response() :: #{binary() => any()}.


%% Example:
%% list_clusters_response() :: #{
%%   <<"Clusters">> => list(cluster()()),
%%   <<"NextToken">> => string()
%% }
-type list_clusters_response() :: #{binary() => any()}.

%% Example:
%% get_resource_policy_request() :: #{}
-type get_resource_policy_request() :: #{}.

%% Example:
%% delete_cluster_response() :: #{}
-type delete_cluster_response() :: #{}.


%% Example:
%% update_routing_control_response() :: #{
%%   <<"RoutingControl">> => routing_control()
%% }
-type update_routing_control_response() :: #{binary() => any()}.


%% Example:
%% rule() :: #{
%%   <<"ASSERTION">> => assertion_rule(),
%%   <<"GATING">> => gating_rule()
%% }
-type rule() :: #{binary() => any()}.


%% Example:
%% rule_config() :: #{
%%   <<"Inverted">> => boolean(),
%%   <<"Threshold">> => integer(),
%%   <<"Type">> => list(any())
%% }
-type rule_config() :: #{binary() => any()}.

%% Example:
%% delete_safety_rule_request() :: #{}
-type delete_safety_rule_request() :: #{}.


%% Example:
%% list_clusters_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_clusters_request() :: #{binary() => any()}.


%% Example:
%% list_associated_route53_health_checks_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_associated_route53_health_checks_request() :: #{binary() => any()}.


%% Example:
%% new_gating_rule() :: #{
%%   <<"ControlPanelArn">> => string(),
%%   <<"GatingControls">> => list(string()()),
%%   <<"Name">> => string(),
%%   <<"RuleConfig">> => rule_config(),
%%   <<"TargetControls">> => list(string()()),
%%   <<"WaitPeriodMs">> => integer()
%% }
-type new_gating_rule() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% assertion_rule() :: #{
%%   <<"AssertedControls">> => list(string()()),
%%   <<"ControlPanelArn">> => string(),
%%   <<"Name">> => string(),
%%   <<"Owner">> => string(),
%%   <<"RuleConfig">> => rule_config(),
%%   <<"SafetyRuleArn">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"WaitPeriodMs">> => integer()
%% }
-type assertion_rule() :: #{binary() => any()}.


%% Example:
%% new_assertion_rule() :: #{
%%   <<"AssertedControls">> => list(string()()),
%%   <<"ControlPanelArn">> => string(),
%%   <<"Name">> => string(),
%%   <<"RuleConfig">> => rule_config(),
%%   <<"WaitPeriodMs">> => integer()
%% }
-type new_assertion_rule() :: #{binary() => any()}.

%% Example:
%% delete_cluster_request() :: #{}
-type delete_cluster_request() :: #{}.


%% Example:
%% control_panel() :: #{
%%   <<"ClusterArn">> => string(),
%%   <<"ControlPanelArn">> => string(),
%%   <<"DefaultControlPanel">> => boolean(),
%%   <<"Name">> => string(),
%%   <<"Owner">> => string(),
%%   <<"RoutingControlCount">> => integer(),
%%   <<"Status">> => list(any())
%% }
-type control_panel() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% delete_control_panel_request() :: #{}
-type delete_control_panel_request() :: #{}.


%% Example:
%% update_safety_rule_response() :: #{
%%   <<"AssertionRule">> => assertion_rule(),
%%   <<"GatingRule">> => gating_rule()
%% }
-type update_safety_rule_response() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% list_associated_route53_health_checks_response() :: #{
%%   <<"HealthCheckIds">> => list(string()()),
%%   <<"NextToken">> => string()
%% }
-type list_associated_route53_health_checks_response() :: #{binary() => any()}.


%% Example:
%% create_control_panel_response() :: #{
%%   <<"ControlPanel">> => control_panel()
%% }
-type create_control_panel_response() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"Message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% list_safety_rules_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"SafetyRules">> => list(rule()())
%% }
-type list_safety_rules_response() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% list_safety_rules_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_safety_rules_request() :: #{binary() => any()}.


%% Example:
%% list_control_panels_request() :: #{
%%   <<"ClusterArn">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_control_panels_request() :: #{binary() => any()}.

%% Example:
%% describe_routing_control_request() :: #{}
-type describe_routing_control_request() :: #{}.


%% Example:
%% create_safety_rule_response() :: #{
%%   <<"AssertionRule">> => assertion_rule(),
%%   <<"GatingRule">> => gating_rule()
%% }
-type create_safety_rule_response() :: #{binary() => any()}.


%% Example:
%% update_cluster_response() :: #{
%%   <<"Cluster">> => cluster()
%% }
-type update_cluster_response() :: #{binary() => any()}.

-type create_cluster_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_control_panel_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_routing_control_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_safety_rule_errors() ::
    validation_exception() | 
    internal_server_exception().

-type delete_cluster_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_control_panel_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_routing_control_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_safety_rule_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_cluster_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type describe_control_panel_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type describe_routing_control_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type describe_safety_rule_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type get_resource_policy_errors() ::
    internal_server_exception() | 
    resource_not_found_exception().

-type list_associated_route53_health_checks_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_clusters_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_control_panels_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_routing_controls_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_safety_rules_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_tags_for_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type tag_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_cluster_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_control_panel_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_routing_control_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_safety_rule_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

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
-spec create_cluster(aws_client:aws_client(), create_cluster_request()) ->
    {ok, create_cluster_response(), tuple()} |
    {error, any()} |
    {error, create_cluster_errors(), tuple()}.
create_cluster(Client, Input) ->
    create_cluster(Client, Input, []).

-spec create_cluster(aws_client:aws_client(), create_cluster_request(), proplists:proplist()) ->
    {ok, create_cluster_response(), tuple()} |
    {error, any()} |
    {error, create_cluster_errors(), tuple()}.
create_cluster(Client, Input0, Options0) ->
    Method = post,
    Path = ["/cluster"],
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

%% @doc Creates a new control panel.
%%
%% A control panel represents a group of routing controls that can be changed
%% together in a single transaction. You can use a control panel to centrally
%% view the operational status of applications across your organization, and
%% trigger multi-app failovers in a single transaction, for example, to fail
%% over an Availability Zone or Amazon Web Services Region.
-spec create_control_panel(aws_client:aws_client(), create_control_panel_request()) ->
    {ok, create_control_panel_response(), tuple()} |
    {error, any()} |
    {error, create_control_panel_errors(), tuple()}.
create_control_panel(Client, Input) ->
    create_control_panel(Client, Input, []).

-spec create_control_panel(aws_client:aws_client(), create_control_panel_request(), proplists:proplist()) ->
    {ok, create_control_panel_response(), tuple()} |
    {error, any()} |
    {error, create_control_panel_errors(), tuple()}.
create_control_panel(Client, Input0, Options0) ->
    Method = post,
    Path = ["/controlpanel"],
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

%% @doc Creates a new routing control.
%%
%% A routing control has one of two states: ON and OFF. You can map the
%% routing control state to the state of an Amazon Route 53 health check,
%% which can be used to control traffic routing.
%%
%% To get or update the routing control state, see the Recovery Cluster (data
%% plane) API actions for Amazon Route 53 Application Recovery Controller.
-spec create_routing_control(aws_client:aws_client(), create_routing_control_request()) ->
    {ok, create_routing_control_response(), tuple()} |
    {error, any()} |
    {error, create_routing_control_errors(), tuple()}.
create_routing_control(Client, Input) ->
    create_routing_control(Client, Input, []).

-spec create_routing_control(aws_client:aws_client(), create_routing_control_request(), proplists:proplist()) ->
    {ok, create_routing_control_response(), tuple()} |
    {error, any()} |
    {error, create_routing_control_errors(), tuple()}.
create_routing_control(Client, Input0, Options0) ->
    Method = post,
    Path = ["/routingcontrol"],
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
%% an overall &quot;on/off&quot; switch for a group of routing controls. Or,
%% you can configure more complex gating scenarios, for example by
%% configuring multiple gating routing controls.
%%
%% For more information, see Safety rules:
%% https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.safety-rules.html
%% in the Amazon Route 53 Application Recovery Controller Developer Guide.
-spec create_safety_rule(aws_client:aws_client(), create_safety_rule_request()) ->
    {ok, create_safety_rule_response(), tuple()} |
    {error, any()} |
    {error, create_safety_rule_errors(), tuple()}.
create_safety_rule(Client, Input) ->
    create_safety_rule(Client, Input, []).

-spec create_safety_rule(aws_client:aws_client(), create_safety_rule_request(), proplists:proplist()) ->
    {ok, create_safety_rule_response(), tuple()} |
    {error, any()} |
    {error, create_safety_rule_errors(), tuple()}.
create_safety_rule(Client, Input0, Options0) ->
    Method = post,
    Path = ["/safetyrule"],
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

%% @doc Delete a cluster.
-spec delete_cluster(aws_client:aws_client(), binary() | list(), delete_cluster_request()) ->
    {ok, delete_cluster_response(), tuple()} |
    {error, any()} |
    {error, delete_cluster_errors(), tuple()}.
delete_cluster(Client, ClusterArn, Input) ->
    delete_cluster(Client, ClusterArn, Input, []).

-spec delete_cluster(aws_client:aws_client(), binary() | list(), delete_cluster_request(), proplists:proplist()) ->
    {ok, delete_cluster_response(), tuple()} |
    {error, any()} |
    {error, delete_cluster_errors(), tuple()}.
delete_cluster(Client, ClusterArn, Input0, Options0) ->
    Method = delete,
    Path = ["/cluster/", aws_util:encode_uri(ClusterArn), ""],
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

%% @doc Deletes a control panel.
-spec delete_control_panel(aws_client:aws_client(), binary() | list(), delete_control_panel_request()) ->
    {ok, delete_control_panel_response(), tuple()} |
    {error, any()} |
    {error, delete_control_panel_errors(), tuple()}.
delete_control_panel(Client, ControlPanelArn, Input) ->
    delete_control_panel(Client, ControlPanelArn, Input, []).

-spec delete_control_panel(aws_client:aws_client(), binary() | list(), delete_control_panel_request(), proplists:proplist()) ->
    {ok, delete_control_panel_response(), tuple()} |
    {error, any()} |
    {error, delete_control_panel_errors(), tuple()}.
delete_control_panel(Client, ControlPanelArn, Input0, Options0) ->
    Method = delete,
    Path = ["/controlpanel/", aws_util:encode_uri(ControlPanelArn), ""],
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

%% @doc Deletes a routing control.
-spec delete_routing_control(aws_client:aws_client(), binary() | list(), delete_routing_control_request()) ->
    {ok, delete_routing_control_response(), tuple()} |
    {error, any()} |
    {error, delete_routing_control_errors(), tuple()}.
delete_routing_control(Client, RoutingControlArn, Input) ->
    delete_routing_control(Client, RoutingControlArn, Input, []).

-spec delete_routing_control(aws_client:aws_client(), binary() | list(), delete_routing_control_request(), proplists:proplist()) ->
    {ok, delete_routing_control_response(), tuple()} |
    {error, any()} |
    {error, delete_routing_control_errors(), tuple()}.
delete_routing_control(Client, RoutingControlArn, Input0, Options0) ->
    Method = delete,
    Path = ["/routingcontrol/", aws_util:encode_uri(RoutingControlArn), ""],
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

%% @doc Deletes a safety rule.
%%
%% /&gt;
-spec delete_safety_rule(aws_client:aws_client(), binary() | list(), delete_safety_rule_request()) ->
    {ok, delete_safety_rule_response(), tuple()} |
    {error, any()} |
    {error, delete_safety_rule_errors(), tuple()}.
delete_safety_rule(Client, SafetyRuleArn, Input) ->
    delete_safety_rule(Client, SafetyRuleArn, Input, []).

-spec delete_safety_rule(aws_client:aws_client(), binary() | list(), delete_safety_rule_request(), proplists:proplist()) ->
    {ok, delete_safety_rule_response(), tuple()} |
    {error, any()} |
    {error, delete_safety_rule_errors(), tuple()}.
delete_safety_rule(Client, SafetyRuleArn, Input0, Options0) ->
    Method = delete,
    Path = ["/safetyrule/", aws_util:encode_uri(SafetyRuleArn), ""],
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

%% @doc Display the details about a cluster.
%%
%% The response includes the cluster name, endpoints, status, and Amazon
%% Resource Name (ARN).
-spec describe_cluster(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_cluster_response(), tuple()} |
    {error, any()} |
    {error, describe_cluster_errors(), tuple()}.
describe_cluster(Client, ClusterArn)
  when is_map(Client) ->
    describe_cluster(Client, ClusterArn, #{}, #{}).

-spec describe_cluster(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_cluster_response(), tuple()} |
    {error, any()} |
    {error, describe_cluster_errors(), tuple()}.
describe_cluster(Client, ClusterArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_cluster(Client, ClusterArn, QueryMap, HeadersMap, []).

-spec describe_cluster(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_cluster_response(), tuple()} |
    {error, any()} |
    {error, describe_cluster_errors(), tuple()}.
describe_cluster(Client, ClusterArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/cluster/", aws_util:encode_uri(ClusterArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Displays details about a control panel.
-spec describe_control_panel(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_control_panel_response(), tuple()} |
    {error, any()} |
    {error, describe_control_panel_errors(), tuple()}.
describe_control_panel(Client, ControlPanelArn)
  when is_map(Client) ->
    describe_control_panel(Client, ControlPanelArn, #{}, #{}).

-spec describe_control_panel(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_control_panel_response(), tuple()} |
    {error, any()} |
    {error, describe_control_panel_errors(), tuple()}.
describe_control_panel(Client, ControlPanelArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_control_panel(Client, ControlPanelArn, QueryMap, HeadersMap, []).

-spec describe_control_panel(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_control_panel_response(), tuple()} |
    {error, any()} |
    {error, describe_control_panel_errors(), tuple()}.
describe_control_panel(Client, ControlPanelArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/controlpanel/", aws_util:encode_uri(ControlPanelArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

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
-spec describe_routing_control(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_routing_control_response(), tuple()} |
    {error, any()} |
    {error, describe_routing_control_errors(), tuple()}.
describe_routing_control(Client, RoutingControlArn)
  when is_map(Client) ->
    describe_routing_control(Client, RoutingControlArn, #{}, #{}).

-spec describe_routing_control(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_routing_control_response(), tuple()} |
    {error, any()} |
    {error, describe_routing_control_errors(), tuple()}.
describe_routing_control(Client, RoutingControlArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_routing_control(Client, RoutingControlArn, QueryMap, HeadersMap, []).

-spec describe_routing_control(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_routing_control_response(), tuple()} |
    {error, any()} |
    {error, describe_routing_control_errors(), tuple()}.
describe_routing_control(Client, RoutingControlArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/routingcontrol/", aws_util:encode_uri(RoutingControlArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a safety rule.
-spec describe_safety_rule(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_safety_rule_response(), tuple()} |
    {error, any()} |
    {error, describe_safety_rule_errors(), tuple()}.
describe_safety_rule(Client, SafetyRuleArn)
  when is_map(Client) ->
    describe_safety_rule(Client, SafetyRuleArn, #{}, #{}).

-spec describe_safety_rule(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_safety_rule_response(), tuple()} |
    {error, any()} |
    {error, describe_safety_rule_errors(), tuple()}.
describe_safety_rule(Client, SafetyRuleArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_safety_rule(Client, SafetyRuleArn, QueryMap, HeadersMap, []).

-spec describe_safety_rule(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_safety_rule_response(), tuple()} |
    {error, any()} |
    {error, describe_safety_rule_errors(), tuple()}.
describe_safety_rule(Client, SafetyRuleArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/safetyrule/", aws_util:encode_uri(SafetyRuleArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get information about the resource policy for a cluster.
-spec get_resource_policy(aws_client:aws_client(), binary() | list()) ->
    {ok, get_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, get_resource_policy_errors(), tuple()}.
get_resource_policy(Client, ResourceArn)
  when is_map(Client) ->
    get_resource_policy(Client, ResourceArn, #{}, #{}).

-spec get_resource_policy(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, get_resource_policy_errors(), tuple()}.
get_resource_policy(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_resource_policy(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec get_resource_policy(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, get_resource_policy_errors(), tuple()}.
get_resource_policy(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/resourcePolicy/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns an array of all Amazon Route 53 health checks associated with
%% a specific routing control.
-spec list_associated_route53_health_checks(aws_client:aws_client(), binary() | list()) ->
    {ok, list_associated_route53_health_checks_response(), tuple()} |
    {error, any()} |
    {error, list_associated_route53_health_checks_errors(), tuple()}.
list_associated_route53_health_checks(Client, RoutingControlArn)
  when is_map(Client) ->
    list_associated_route53_health_checks(Client, RoutingControlArn, #{}, #{}).

-spec list_associated_route53_health_checks(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_associated_route53_health_checks_response(), tuple()} |
    {error, any()} |
    {error, list_associated_route53_health_checks_errors(), tuple()}.
list_associated_route53_health_checks(Client, RoutingControlArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_associated_route53_health_checks(Client, RoutingControlArn, QueryMap, HeadersMap, []).

-spec list_associated_route53_health_checks(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_associated_route53_health_checks_response(), tuple()} |
    {error, any()} |
    {error, list_associated_route53_health_checks_errors(), tuple()}.
list_associated_route53_health_checks(Client, RoutingControlArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/routingcontrol/", aws_util:encode_uri(RoutingControlArn), "/associatedRoute53HealthChecks"],
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

%% @doc Returns an array of all the clusters in an account.
-spec list_clusters(aws_client:aws_client()) ->
    {ok, list_clusters_response(), tuple()} |
    {error, any()} |
    {error, list_clusters_errors(), tuple()}.
list_clusters(Client)
  when is_map(Client) ->
    list_clusters(Client, #{}, #{}).

-spec list_clusters(aws_client:aws_client(), map(), map()) ->
    {ok, list_clusters_response(), tuple()} |
    {error, any()} |
    {error, list_clusters_errors(), tuple()}.
list_clusters(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_clusters(Client, QueryMap, HeadersMap, []).

-spec list_clusters(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_clusters_response(), tuple()} |
    {error, any()} |
    {error, list_clusters_errors(), tuple()}.
list_clusters(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/cluster"],
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

%% @doc Returns an array of control panels in an account or in a cluster.
-spec list_control_panels(aws_client:aws_client()) ->
    {ok, list_control_panels_response(), tuple()} |
    {error, any()} |
    {error, list_control_panels_errors(), tuple()}.
list_control_panels(Client)
  when is_map(Client) ->
    list_control_panels(Client, #{}, #{}).

-spec list_control_panels(aws_client:aws_client(), map(), map()) ->
    {ok, list_control_panels_response(), tuple()} |
    {error, any()} |
    {error, list_control_panels_errors(), tuple()}.
list_control_panels(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_control_panels(Client, QueryMap, HeadersMap, []).

-spec list_control_panels(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_control_panels_response(), tuple()} |
    {error, any()} |
    {error, list_control_panels_errors(), tuple()}.
list_control_panels(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/controlpanels"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

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
-spec list_routing_controls(aws_client:aws_client(), binary() | list()) ->
    {ok, list_routing_controls_response(), tuple()} |
    {error, any()} |
    {error, list_routing_controls_errors(), tuple()}.
list_routing_controls(Client, ControlPanelArn)
  when is_map(Client) ->
    list_routing_controls(Client, ControlPanelArn, #{}, #{}).

-spec list_routing_controls(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_routing_controls_response(), tuple()} |
    {error, any()} |
    {error, list_routing_controls_errors(), tuple()}.
list_routing_controls(Client, ControlPanelArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_routing_controls(Client, ControlPanelArn, QueryMap, HeadersMap, []).

-spec list_routing_controls(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_routing_controls_response(), tuple()} |
    {error, any()} |
    {error, list_routing_controls_errors(), tuple()}.
list_routing_controls(Client, ControlPanelArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/controlpanel/", aws_util:encode_uri(ControlPanelArn), "/routingcontrols"],
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

%% @doc List the safety rules (the assertion rules and gating rules) that
%% you've defined for the routing controls in a control panel.
-spec list_safety_rules(aws_client:aws_client(), binary() | list()) ->
    {ok, list_safety_rules_response(), tuple()} |
    {error, any()} |
    {error, list_safety_rules_errors(), tuple()}.
list_safety_rules(Client, ControlPanelArn)
  when is_map(Client) ->
    list_safety_rules(Client, ControlPanelArn, #{}, #{}).

-spec list_safety_rules(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_safety_rules_response(), tuple()} |
    {error, any()} |
    {error, list_safety_rules_errors(), tuple()}.
list_safety_rules(Client, ControlPanelArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_safety_rules(Client, ControlPanelArn, QueryMap, HeadersMap, []).

-spec list_safety_rules(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_safety_rules_response(), tuple()} |
    {error, any()} |
    {error, list_safety_rules_errors(), tuple()}.
list_safety_rules(Client, ControlPanelArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/controlpanel/", aws_util:encode_uri(ControlPanelArn), "/safetyrules"],
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

%% @doc Lists the tags for a resource.
-spec list_tags_for_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
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

%% @doc Adds a tag to a resource.
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_response(), tuple()} |
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

%% @doc Removes a tag from a resource.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_response(), tuple()} |
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
                     {<<"TagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an existing cluster.
%%
%% You can only update the network type of a cluster.
-spec update_cluster(aws_client:aws_client(), update_cluster_request()) ->
    {ok, update_cluster_response(), tuple()} |
    {error, any()} |
    {error, update_cluster_errors(), tuple()}.
update_cluster(Client, Input) ->
    update_cluster(Client, Input, []).

-spec update_cluster(aws_client:aws_client(), update_cluster_request(), proplists:proplist()) ->
    {ok, update_cluster_response(), tuple()} |
    {error, any()} |
    {error, update_cluster_errors(), tuple()}.
update_cluster(Client, Input0, Options0) ->
    Method = put,
    Path = ["/cluster"],
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

%% @doc Updates a control panel.
%%
%% The only update you can make to a control panel is to change the name of
%% the control panel.
-spec update_control_panel(aws_client:aws_client(), update_control_panel_request()) ->
    {ok, update_control_panel_response(), tuple()} |
    {error, any()} |
    {error, update_control_panel_errors(), tuple()}.
update_control_panel(Client, Input) ->
    update_control_panel(Client, Input, []).

-spec update_control_panel(aws_client:aws_client(), update_control_panel_request(), proplists:proplist()) ->
    {ok, update_control_panel_response(), tuple()} |
    {error, any()} |
    {error, update_control_panel_errors(), tuple()}.
update_control_panel(Client, Input0, Options0) ->
    Method = put,
    Path = ["/controlpanel"],
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

%% @doc Updates a routing control.
%%
%% You can only update the name of the routing control. To get or update the
%% routing control state, see the Recovery Cluster (data plane) API actions
%% for Amazon Route 53 Application Recovery Controller.
-spec update_routing_control(aws_client:aws_client(), update_routing_control_request()) ->
    {ok, update_routing_control_response(), tuple()} |
    {error, any()} |
    {error, update_routing_control_errors(), tuple()}.
update_routing_control(Client, Input) ->
    update_routing_control(Client, Input, []).

-spec update_routing_control(aws_client:aws_client(), update_routing_control_request(), proplists:proplist()) ->
    {ok, update_routing_control_response(), tuple()} |
    {error, any()} |
    {error, update_routing_control_errors(), tuple()}.
update_routing_control(Client, Input0, Options0) ->
    Method = put,
    Path = ["/routingcontrol"],
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

%% @doc Update a safety rule (an assertion rule or gating rule).
%%
%% You can only update the name and the waiting period for a safety rule. To
%% make other updates, delete the safety rule and create a new one.
-spec update_safety_rule(aws_client:aws_client(), update_safety_rule_request()) ->
    {ok, update_safety_rule_response(), tuple()} |
    {error, any()} |
    {error, update_safety_rule_errors(), tuple()}.
update_safety_rule(Client, Input) ->
    update_safety_rule(Client, Input, []).

-spec update_safety_rule(aws_client:aws_client(), update_safety_rule_request(), proplists:proplist()) ->
    {ok, update_safety_rule_response(), tuple()} |
    {error, any()} |
    {error, update_safety_rule_errors(), tuple()}.
update_safety_rule(Client, Input0, Options0) ->
    Method = put,
    Path = ["/safetyrule"],
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
