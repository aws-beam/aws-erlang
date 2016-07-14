%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/jkakar/aws-codegen for more details.

%% @doc Application Auto Scaling is a general purpose Auto Scaling service
%% for supported elastic AWS resources. With Application Auto Scaling, you
%% can automatically scale your AWS resources, with an experience similar to
%% that of Auto Scaling.
%%
%% <note> At this time, Application Auto Scaling only supports scaling Amazon
%% ECS services.
%%
%% </note> For example, you can use Application Auto Scaling to accomplish
%% the following tasks:
%%
%% <ul> <li> Define scaling policies for automatically adjusting your
%% application’s resources
%%
%% </li> <li> Scale your resources in response to CloudWatch alarms
%%
%% </li> <li> View history of your scaling events
%%
%% </li> </ul> Application Auto Scaling is available in the following
%% regions:
%%
%% <ul> <li> <code>us-east-1</code>
%%
%% </li> <li> <code>us-west-2</code>
%%
%% </li> <li> <code>eu-west-1</code>
%%
%% </li> </ul>
-module(aws_autoscaling).

-export([delete_scaling_policy/2,
         delete_scaling_policy/3,
         deregister_scalable_target/2,
         deregister_scalable_target/3,
         describe_scalable_targets/2,
         describe_scalable_targets/3,
         describe_scaling_activities/2,
         describe_scaling_activities/3,
         describe_scaling_policies/2,
         describe_scaling_policies/3,
         put_scaling_policy/2,
         put_scaling_policy/3,
         register_scalable_target/2,
         register_scalable_target/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Deletes an Application Auto Scaling scaling policy that was
%% previously created. If you are no longer using a scaling policy, you can
%% delete it with this operation.
%%
%% Deleting a policy deletes the underlying alarm action, but does not delete
%% the CloudWatch alarm, even if it no longer has an associated action.
%%
%% To create a new scaling policy or update an existing one, see
%% <a>PutScalingPolicy</a>.
delete_scaling_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_scaling_policy(Client, Input, []).
delete_scaling_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteScalingPolicy">>, Input, Options).

%% @doc Deregisters a scalable target that was previously registered. If you
%% are no longer using a scalable target, you can delete it with this
%% operation. When you deregister a scalable target, all of the scaling
%% policies that are associated with that scalable target are deleted.
%%
%% To create a new scalable target or update an existing one, see
%% <a>RegisterScalableTarget</a>.
deregister_scalable_target(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_scalable_target(Client, Input, []).
deregister_scalable_target(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterScalableTarget">>, Input, Options).

%% @doc Provides descriptive information for scalable targets with a
%% specified service namespace.
%%
%% You can filter the results in a service namespace with the
%% <code>ResourceIds</code> and <code>ScalableDimension</code> parameters.
%%
%% To create a new scalable target or update an existing one, see
%% <a>RegisterScalableTarget</a>. If you are no longer using a scalable
%% target, you can deregister it with <a>DeregisterScalableTarget</a>.
describe_scalable_targets(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_scalable_targets(Client, Input, []).
describe_scalable_targets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeScalableTargets">>, Input, Options).

%% @doc Provides descriptive information for scaling activities with a
%% specified service namespace.
%%
%% You can filter the results in a service namespace with the
%% <code>ResourceId</code> and <code>ScalableDimension</code> parameters.
%%
%% Scaling activities are triggered by CloudWatch alarms that are associated
%% with scaling policies. To view the existing scaling policies for a service
%% namespace, see <a>DescribeScalingPolicies</a>. To create a new scaling
%% policy or update an existing one, see <a>PutScalingPolicy</a>.
describe_scaling_activities(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_scaling_activities(Client, Input, []).
describe_scaling_activities(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeScalingActivities">>, Input, Options).

%% @doc Provides descriptive information for scaling policies with a
%% specified service namespace.
%%
%% You can filter the results in a service namespace with the
%% <code>ResourceId</code>, <code>ScalableDimension</code>, and
%% <code>PolicyNames</code> parameters.
%%
%% To create a new scaling policy or update an existing one, see
%% <a>PutScalingPolicy</a>. If you are no longer using a scaling policy, you
%% can delete it with <a>DeleteScalingPolicy</a>.
describe_scaling_policies(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_scaling_policies(Client, Input, []).
describe_scaling_policies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeScalingPolicies">>, Input, Options).

%% @doc Creates or updates a policy for an existing Application Auto Scaling
%% scalable target. Each scalable target is identified by service namespace,
%% a resource ID, and a scalable dimension, and a scaling policy applies to a
%% scalable target that is identified by those three attributes. You cannot
%% create a scaling policy without first registering a scalable target with
%% <a>RegisterScalableTarget</a>.
%%
%% To update an existing policy, use the existing policy name and set the
%% parameters you want to change. Any existing parameter not changed in an
%% update to an existing policy is not changed in this update request.
%%
%% You can view the existing scaling policies for a service namespace with
%% <a>DescribeScalingPolicies</a>. If you are no longer using a scaling
%% policy, you can delete it with <a>DeleteScalingPolicy</a>.
put_scaling_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_scaling_policy(Client, Input, []).
put_scaling_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutScalingPolicy">>, Input, Options).

%% @doc Registers or updates a scalable target. A scalable target is a
%% resource that can be scaled up or down with Application Auto Scaling.
%% After you have registered a scalable target, you can use this command to
%% update the minimum and maximum values for your scalable dimension.
%%
%% <note> At this time, Application Auto Scaling only supports scaling Amazon
%% ECS services.
%%
%% </note> After you register a scalable target with Application Auto
%% Scaling, you can create and apply scaling policies to it with
%% <a>PutScalingPolicy</a>. You can view the existing scaling policies for a
%% service namespace with <a>DescribeScalableTargets</a>. If you are no
%% longer using a scalable target, you can deregister it with
%% <a>DeregisterScalableTarget</a>.
register_scalable_target(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_scalable_target(Client, Input, []).
register_scalable_target(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterScalableTarget">>, Input, Options).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), binary(), map(), list()) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map() | undefined,
    Error :: {binary(), binary()}.
request(Client, Action, Input, Options) ->
    Client1 = Client#{service => <<"application-autoscaling">>},
    Host = get_host(<<"autoscaling">>, Client1),
    URL = get_url(Host, Client1),
    Headers = [{<<"Host">>, Host},
               {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
               {<<"X-Amz-Target">>, << <<"AnyScaleFrontendService.">>/binary, Action/binary>>}],
    Payload = jsx:encode(Input),
    Headers1 = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, Headers1, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    case hackney:body(Client) of
        {ok, <<>>} ->
            {ok, undefined, {200, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body, [return_maps]),
            {ok, Result, {200, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body, [return_maps]),
    Exception = maps:get(<<"__type">>, Error, undefined),
    Reason = maps:get(<<"message">>, Error, undefined),
    {error, {Exception, Reason}, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.

get_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
get_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix,
			  <<".">>,
			  Region,
			  <<".">>,
			  Endpoint],
			 <<"">>).

get_url(Host, Client) ->
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>],
			 <<"">>).
