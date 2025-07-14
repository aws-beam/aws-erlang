%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Welcome to the Routing Control (Recovery Cluster) API Reference Guide
%% for Amazon Route 53 Application Recovery Controller.
%%
%% With Route 53 ARC, you can use routing control with extreme reliability to
%% recover applications by rerouting traffic across
%% Availability Zones or Amazon Web Services Regions. Routing controls are
%% simple on/off switches hosted
%% on a highly available cluster in Route 53 ARC. A cluster provides a set of
%% five redundant Regional endpoints against which you
%% can run API calls to get or update the state of routing controls. To
%% implement failover, you set
%% one routing control to ON and another one to OFF, to reroute traffic from
%% one Availability Zone or Amazon Web Services Region
%% to another.
%%
%% Be aware that you must specify a Regional endpoint for a cluster when you
%% work with API cluster operations
%% to get or update routing control states in Route 53 ARC. In addition, you
%% must specify the US West (Oregon) Region
%% for Route 53 ARC API calls. For example, use the parameter `--region
%% us-west-2' with AWS CLI commands.
%% For more information, see
%%
%% Get and update routing control states using the API:
%% https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.update.api.html
%% in the Amazon Route 53 Application Recovery Controller Developer Guide.
%%
%% This API guide includes information about the API operations for how to
%% get and update routing control states
%% in Route 53 ARC. To work with routing control in Route 53 ARC, you must
%% first create the required components (clusters, control
%% panels, and routing controls) using the recovery cluster configuration
%% API.
%%
%% For more information about working with routing control in Route 53 ARC,
%% see the following:
%%
%% Create clusters, control panels, and routing controls by using API
%% operations. For more information,
%% see the Recovery Control Configuration API Reference Guide for Amazon
%% Route 53 Application Recovery Controller:
%% https://docs.aws.amazon.com/recovery-cluster/latest/api/.
%%
%% Learn about the components in recovery control, including clusters,
%% routing controls, and control panels, and how to work with Route 53 ARC in
%% the Amazon Web Services console. For more
%% information, see
%% Recovery control components:
%% https://docs.aws.amazon.com/r53recovery/latest/dg/introduction-components.html#introduction-components-routing
%% in the Amazon Route 53 Application Recovery Controller Developer Guide.
%%
%% Route 53 ARC also provides readiness checks that continually audit
%% resources to help make sure that your
%% applications are scaled and ready to handle failover traffic. For more
%% information about
%% the related API operations, see the Recovery Readiness API Reference Guide
%% for Amazon Route 53 Application Recovery Controller:
%% https://docs.aws.amazon.com/recovery-readiness/latest/api/.
%%
%% For more information about creating resilient applications and preparing
%% for
%% recovery readiness with Route 53 ARC, see the Amazon Route 53 Application
%% Recovery Controller Developer Guide:
%% https://docs.aws.amazon.com/r53recovery/latest/dg/.
-module(aws_route53_recovery_cluster).

-export([get_routing_control_state/2,
         get_routing_control_state/3,
         list_routing_controls/2,
         list_routing_controls/3,
         update_routing_control_state/2,
         update_routing_control_state/3,
         update_routing_control_states/2,
         update_routing_control_states/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => string(),
%%   <<"resourceId">> => string(),
%%   <<"resourceType">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.

%% Example:
%% endpoint_temporarily_unavailable_exception() :: #{
%%   <<"message">> => string()
%% }
-type endpoint_temporarily_unavailable_exception() :: #{binary() => any()}.

%% Example:
%% get_routing_control_state_request() :: #{
%%   <<"RoutingControlArn">> := string()
%% }
-type get_routing_control_state_request() :: #{binary() => any()}.

%% Example:
%% get_routing_control_state_response() :: #{
%%   <<"RoutingControlArn">> => string(),
%%   <<"RoutingControlName">> => string(),
%%   <<"RoutingControlState">> => list(any())
%% }
-type get_routing_control_state_response() :: #{binary() => any()}.

%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => string(),
%%   <<"retryAfterSeconds">> => integer()
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% list_routing_controls_request() :: #{
%%   <<"ControlPanelArn">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_routing_controls_request() :: #{binary() => any()}.

%% Example:
%% list_routing_controls_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"RoutingControls">> => list(routing_control())
%% }
-type list_routing_controls_response() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string(),
%%   <<"resourceId">> => string(),
%%   <<"resourceType">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% routing_control() :: #{
%%   <<"ControlPanelArn">> => string(),
%%   <<"ControlPanelName">> => string(),
%%   <<"Owner">> => string(),
%%   <<"RoutingControlArn">> => string(),
%%   <<"RoutingControlName">> => string(),
%%   <<"RoutingControlState">> => list(any())
%% }
-type routing_control() :: #{binary() => any()}.

%% Example:
%% service_limit_exceeded_exception() :: #{
%%   <<"limitCode">> => string(),
%%   <<"message">> => string(),
%%   <<"resourceId">> => string(),
%%   <<"resourceType">> => string(),
%%   <<"serviceCode">> => string()
%% }
-type service_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => string(),
%%   <<"retryAfterSeconds">> => integer()
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% update_routing_control_state_entry() :: #{
%%   <<"RoutingControlArn">> => string(),
%%   <<"RoutingControlState">> => list(any())
%% }
-type update_routing_control_state_entry() :: #{binary() => any()}.

%% Example:
%% update_routing_control_state_request() :: #{
%%   <<"RoutingControlArn">> := string(),
%%   <<"RoutingControlState">> := list(any()),
%%   <<"SafetyRulesToOverride">> => list(string())
%% }
-type update_routing_control_state_request() :: #{binary() => any()}.

%% Example:
%% update_routing_control_state_response() :: #{

%% }
-type update_routing_control_state_response() :: #{binary() => any()}.

%% Example:
%% update_routing_control_states_request() :: #{
%%   <<"SafetyRulesToOverride">> => list(string()),
%%   <<"UpdateRoutingControlStateEntries">> := list(update_routing_control_state_entry())
%% }
-type update_routing_control_states_request() :: #{binary() => any()}.

%% Example:
%% update_routing_control_states_response() :: #{

%% }
-type update_routing_control_states_response() :: #{binary() => any()}.

%% Example:
%% validation_exception() :: #{
%%   <<"fields">> => list(validation_exception_field()),
%%   <<"message">> => string(),
%%   <<"reason">> => list(any())
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% validation_exception_field() :: #{
%%   <<"message">> => string(),
%%   <<"name">> => string()
%% }
-type validation_exception_field() :: #{binary() => any()}.

-type get_routing_control_state_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    endpoint_temporarily_unavailable_exception() | 
    access_denied_exception().

-type list_routing_controls_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    endpoint_temporarily_unavailable_exception() | 
    access_denied_exception().

-type update_routing_control_state_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    endpoint_temporarily_unavailable_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type update_routing_control_states_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_limit_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    endpoint_temporarily_unavailable_exception() | 
    conflict_exception() | 
    access_denied_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Get the state for a routing control.
%%
%% A routing control is a simple on/off switch that you
%% can use to route traffic to cells. When a routing control state is set to
%% ON, traffic flows to a cell. When
%% the state is set to OFF, traffic does not flow.
%%
%% Before you can create a routing control, you must first create a cluster,
%% and then host the control
%% in a control panel on the cluster. For more information, see
%% Create routing control structures:
%% https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.create.html
%% in the Amazon Route 53 Application Recovery Controller Developer Guide.
%% You access one of the endpoints for the cluster to get or update the
%% routing control state to
%% redirect traffic for your application.
%%
%% You must specify Regional endpoints when you work with API cluster
%% operations
%% to get or update routing control states in Route 53 ARC.
%%
%% To see a code example for getting a routing control state, including
%% accessing Regional cluster endpoints
%% in sequence, see API examples:
%% https://docs.aws.amazon.com/r53recovery/latest/dg/service_code_examples_actions.html
%% in the Amazon Route 53 Application Recovery Controller Developer Guide.
%%
%% Learn more about working with routing controls in the following topics in
%% the
%% Amazon Route 53 Application Recovery Controller Developer Guide:
%%
%% Viewing and updating routing control states:
%% https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.update.html
%%
%% Working with
%% routing controls in Route 53 ARC:
%% https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.html
-spec get_routing_control_state(aws_client:aws_client(), get_routing_control_state_request()) ->
    {ok, get_routing_control_state_response(), tuple()} |
    {error, any()} |
    {error, get_routing_control_state_errors(), tuple()}.
get_routing_control_state(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_routing_control_state(Client, Input, []).

-spec get_routing_control_state(aws_client:aws_client(), get_routing_control_state_request(), proplists:proplist()) ->
    {ok, get_routing_control_state_response(), tuple()} |
    {error, any()} |
    {error, get_routing_control_state_errors(), tuple()}.
get_routing_control_state(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRoutingControlState">>, Input, Options).

%% @doc List routing control names and Amazon Resource Names (ARNs), as well
%% as the routing control
%% state for each routing control, along with the control panel name and
%% control panel ARN for the routing controls.
%%
%% If you specify a control panel ARN, this call lists the routing controls
%% in the control panel. Otherwise, it lists
%% all the routing controls in the cluster.
%%
%% A routing control is a simple on/off switch in Route 53 ARC that you
%% can use to route traffic to cells. When a routing control state is set to
%% ON, traffic flows to a cell. When
%% the state is set to OFF, traffic does not flow.
%%
%% Before you can create a routing control, you must first create a cluster,
%% and then host the control
%% in a control panel on the cluster. For more information, see
%% Create routing control structures:
%% https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.create.html
%% in the Amazon Route 53 Application Recovery Controller Developer Guide.
%% You access one of the endpoints for the cluster to get or update the
%% routing control state to
%% redirect traffic for your application.
%%
%% You must specify Regional endpoints when you work with API cluster
%% operations
%% to use this API operation to list routing controls in Route 53 ARC.
%%
%% Learn more about working with routing controls in the following topics in
%% the
%% Amazon Route 53 Application Recovery Controller Developer Guide:
%%
%% Viewing and updating routing control states:
%% https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.update.html
%%
%% Working with
%% routing controls in Route 53 ARC:
%% https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.html
-spec list_routing_controls(aws_client:aws_client(), list_routing_controls_request()) ->
    {ok, list_routing_controls_response(), tuple()} |
    {error, any()} |
    {error, list_routing_controls_errors(), tuple()}.
list_routing_controls(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_routing_controls(Client, Input, []).

-spec list_routing_controls(aws_client:aws_client(), list_routing_controls_request(), proplists:proplist()) ->
    {ok, list_routing_controls_response(), tuple()} |
    {error, any()} |
    {error, list_routing_controls_errors(), tuple()}.
list_routing_controls(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRoutingControls">>, Input, Options).

%% @doc Set the state of the routing control to reroute traffic.
%%
%% You can set the value to ON or
%% OFF. When the state is ON, traffic flows to a cell. When the state is OFF,
%% traffic does not
%% flow.
%%
%% With Route 53 ARC, you can add safety rules for routing controls, which
%% are safeguards for routing
%% control state updates that help prevent unexpected outcomes, like fail
%% open traffic routing. However,
%% there are scenarios when you might want to bypass the routing control
%% safeguards that are enforced with
%% safety rules that you've configured. For example, you might want to
%% fail over quickly for disaster recovery,
%% and one or more safety rules might be unexpectedly preventing you from
%% updating a routing control state to
%% reroute traffic. In a &quot;break glass&quot; scenario like this, you can
%% override one or more safety rules to change
%% a routing control state and fail over your application.
%%
%% The `SafetyRulesToOverride' property enables you override one or more
%% safety rules and
%% update routing control states. For more information, see
%%
%% Override safety rules to reroute traffic:
%% https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.override-safety-rule.html
%% in the Amazon Route 53 Application Recovery Controller Developer Guide.
%%
%% You must specify Regional endpoints when you work with API cluster
%% operations
%% to get or update routing control states in Route 53 ARC.
%%
%% To see a code example for getting a routing control state, including
%% accessing Regional cluster endpoints
%% in sequence, see API examples:
%% https://docs.aws.amazon.com/r53recovery/latest/dg/service_code_examples_actions.html
%% in the Amazon Route 53 Application Recovery Controller Developer Guide.
%%
%% Viewing and updating routing control states:
%% https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.update.html
%%
%% Working with routing controls overall:
%% https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.html
-spec update_routing_control_state(aws_client:aws_client(), update_routing_control_state_request()) ->
    {ok, update_routing_control_state_response(), tuple()} |
    {error, any()} |
    {error, update_routing_control_state_errors(), tuple()}.
update_routing_control_state(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_routing_control_state(Client, Input, []).

-spec update_routing_control_state(aws_client:aws_client(), update_routing_control_state_request(), proplists:proplist()) ->
    {ok, update_routing_control_state_response(), tuple()} |
    {error, any()} |
    {error, update_routing_control_state_errors(), tuple()}.
update_routing_control_state(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateRoutingControlState">>, Input, Options).

%% @doc Set multiple routing control states.
%%
%% You can set the value for each state to be ON or OFF.
%% When the state is ON, traffic flows to a cell. When it's OFF, traffic
%% does not
%% flow.
%%
%% With Route 53 ARC, you can add safety rules for routing controls, which
%% are safeguards for routing
%% control state updates that help prevent unexpected outcomes, like fail
%% open traffic routing. However,
%% there are scenarios when you might want to bypass the routing control
%% safeguards that are enforced with
%% safety rules that you've configured. For example, you might want to
%% fail over quickly for disaster recovery,
%% and one or more safety rules might be unexpectedly preventing you from
%% updating a routing control state to
%% reroute traffic. In a &quot;break glass&quot; scenario like this, you can
%% override one or more safety rules to change
%% a routing control state and fail over your application.
%%
%% The `SafetyRulesToOverride' property enables you override one or more
%% safety rules and
%% update routing control states. For more information, see
%%
%% Override safety rules to reroute traffic:
%% https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.override-safety-rule.html
%% in the Amazon Route 53 Application Recovery Controller Developer Guide.
%%
%% You must specify Regional endpoints when you work with API cluster
%% operations
%% to get or update routing control states in Route 53 ARC.
%%
%% To see a code example for getting a routing control state, including
%% accessing Regional cluster endpoints
%% in sequence, see API examples:
%% https://docs.aws.amazon.com/r53recovery/latest/dg/service_code_examples_actions.html
%% in the Amazon Route 53 Application Recovery Controller Developer Guide.
%%
%% Viewing and updating routing control states:
%% https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.update.html
%%
%% Working with routing controls overall:
%% https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.html
-spec update_routing_control_states(aws_client:aws_client(), update_routing_control_states_request()) ->
    {ok, update_routing_control_states_response(), tuple()} |
    {error, any()} |
    {error, update_routing_control_states_errors(), tuple()}.
update_routing_control_states(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_routing_control_states(Client, Input, []).

-spec update_routing_control_states(aws_client:aws_client(), update_routing_control_states_request(), proplists:proplist()) ->
    {ok, update_routing_control_states_response(), tuple()} |
    {error, any()} |
    {error, update_routing_control_states_errors(), tuple()}.
update_routing_control_states(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateRoutingControlStates">>, Input, Options).

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
    Client1 = Client#{service => <<"route53-recovery-cluster">>},
    Host = build_host(<<"route53-recovery-cluster">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
        {<<"X-Amz-Target">>, <<"ToggleCustomerAPI.", Action/binary>>}
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
