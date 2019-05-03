%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/jkakar/aws-codegen for more details.

%% @doc With Application Auto Scaling, you can configure automatic scaling
%% for your scalable resources. You can use Application Auto Scaling to
%% accomplish the following tasks:
%%
%% <ul> <li> Define scaling policies to automatically scale your AWS or
%% custom resources
%%
%% </li> <li> Scale your resources in response to CloudWatch alarms
%%
%% </li> <li> Schedule one-time or recurring scaling actions
%%
%% </li> <li> View the history of your scaling events
%%
%% </li> </ul> Application Auto Scaling can scale the following resources:
%%
%% <ul> <li> Amazon ECS services. For more information, see <a
%% href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-auto-scaling.html">Service
%% Auto Scaling</a> in the <i>Amazon Elastic Container Service Developer
%% Guide</i>.
%%
%% </li> <li> Amazon EC2 Spot fleets. For more information, see <a
%% href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/fleet-auto-scaling.html">Automatic
%% Scaling for Spot Fleet</a> in the <i>Amazon EC2 User Guide</i>.
%%
%% </li> <li> Amazon EMR clusters. For more information, see <a
%% href="https://docs.aws.amazon.com/ElasticMapReduce/latest/ManagementGuide/emr-automatic-scaling.html">Using
%% Automatic Scaling in Amazon EMR</a> in the <i>Amazon EMR Management
%% Guide</i>.
%%
%% </li> <li> AppStream 2.0 fleets. For more information, see <a
%% href="https://docs.aws.amazon.com/appstream2/latest/developerguide/autoscaling.html">Fleet
%% Auto Scaling for Amazon AppStream 2.0</a> in the <i>Amazon AppStream 2.0
%% Developer Guide</i>.
%%
%% </li> <li> Provisioned read and write capacity for Amazon DynamoDB tables
%% and global secondary indexes. For more information, see <a
%% href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/AutoScaling.html">Managing
%% Throughput Capacity Automatically with DynamoDB Auto Scaling</a> in the
%% <i>Amazon DynamoDB Developer Guide</i>.
%%
%% </li> <li> Amazon Aurora Replicas. For more information, see <a
%% href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Integrating.AutoScaling.html">Using
%% Amazon Aurora Auto Scaling with Aurora Replicas</a>.
%%
%% </li> <li> Amazon SageMaker endpoint variants. For more information, see
%% <a
%% href="https://docs.aws.amazon.com/sagemaker/latest/dg/endpoint-auto-scaling.html">Automatically
%% Scaling Amazon SageMaker Models</a>.
%%
%% </li> <li> Custom resources provided by your own applications or services.
%% More information is available in our <a
%% href="https://github.com/aws/aws-auto-scaling-custom-resource">GitHub
%% repository</a>.
%%
%% </li> </ul> To learn more about Application Auto Scaling, including
%% information about granting IAM users required permissions for Application
%% Auto Scaling actions, see the <a
%% href="https://docs.aws.amazon.com/autoscaling/application/userguide/what-is-application-auto-scaling.html">Application
%% Auto Scaling User Guide</a>.
-module(aws_autoscaling).

-export([delete_scaling_policy/2,
         delete_scaling_policy/3,
         delete_scheduled_action/2,
         delete_scheduled_action/3,
         deregister_scalable_target/2,
         deregister_scalable_target/3,
         describe_scalable_targets/2,
         describe_scalable_targets/3,
         describe_scaling_activities/2,
         describe_scaling_activities/3,
         describe_scaling_policies/2,
         describe_scaling_policies/3,
         describe_scheduled_actions/2,
         describe_scheduled_actions/3,
         put_scaling_policy/2,
         put_scaling_policy/3,
         put_scheduled_action/2,
         put_scheduled_action/3,
         register_scalable_target/2,
         register_scalable_target/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Deletes the specified Application Auto Scaling scaling policy.
%%
%% Deleting a policy deletes the underlying alarm action, but does not delete
%% the CloudWatch alarm associated with the scaling policy, even if it no
%% longer has an associated action.
%%
%% To create a scaling policy or update an existing one, see
%% <a>PutScalingPolicy</a>.
delete_scaling_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_scaling_policy(Client, Input, []).
delete_scaling_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteScalingPolicy">>, Input, Options).

%% @doc Deletes the specified Application Auto Scaling scheduled action.
delete_scheduled_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_scheduled_action(Client, Input, []).
delete_scheduled_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteScheduledAction">>, Input, Options).

%% @doc Deregisters a scalable target.
%%
%% Deregistering a scalable target deletes the scaling policies that are
%% associated with it.
%%
%% To create a scalable target or update an existing one, see
%% <a>RegisterScalableTarget</a>.
deregister_scalable_target(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_scalable_target(Client, Input, []).
deregister_scalable_target(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterScalableTarget">>, Input, Options).

%% @doc Gets information about the scalable targets in the specified
%% namespace.
%%
%% You can filter the results using the <code>ResourceIds</code> and
%% <code>ScalableDimension</code> parameters.
%%
%% To create a scalable target or update an existing one, see
%% <a>RegisterScalableTarget</a>. If you are no longer using a scalable
%% target, you can deregister it using <a>DeregisterScalableTarget</a>.
describe_scalable_targets(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_scalable_targets(Client, Input, []).
describe_scalable_targets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeScalableTargets">>, Input, Options).

%% @doc Provides descriptive information about the scaling activities in the
%% specified namespace from the previous six weeks.
%%
%% You can filter the results using the <code>ResourceId</code> and
%% <code>ScalableDimension</code> parameters.
%%
%% Scaling activities are triggered by CloudWatch alarms that are associated
%% with scaling policies. To view the scaling policies for a service
%% namespace, see <a>DescribeScalingPolicies</a>. To create a scaling policy
%% or update an existing one, see <a>PutScalingPolicy</a>.
describe_scaling_activities(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_scaling_activities(Client, Input, []).
describe_scaling_activities(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeScalingActivities">>, Input, Options).

%% @doc Describes the scaling policies for the specified service namespace.
%%
%% You can filter the results using the <code>ResourceId</code>,
%% <code>ScalableDimension</code>, and <code>PolicyNames</code> parameters.
%%
%% To create a scaling policy or update an existing one, see
%% <a>PutScalingPolicy</a>. If you are no longer using a scaling policy, you
%% can delete it using <a>DeleteScalingPolicy</a>.
describe_scaling_policies(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_scaling_policies(Client, Input, []).
describe_scaling_policies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeScalingPolicies">>, Input, Options).

%% @doc Describes the scheduled actions for the specified service namespace.
%%
%% You can filter the results using the <code>ResourceId</code>,
%% <code>ScalableDimension</code>, and <code>ScheduledActionNames</code>
%% parameters.
%%
%% To create a scheduled action or update an existing one, see
%% <a>PutScheduledAction</a>. If you are no longer using a scheduled action,
%% you can delete it using <a>DeleteScheduledAction</a>.
describe_scheduled_actions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_scheduled_actions(Client, Input, []).
describe_scheduled_actions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeScheduledActions">>, Input, Options).

%% @doc Creates or updates a policy for an Application Auto Scaling scalable
%% target.
%%
%% Each scalable target is identified by a service namespace, resource ID,
%% and scalable dimension. A scaling policy applies to the scalable target
%% identified by those three attributes. You cannot create a scaling policy
%% until you have registered the resource as a scalable target using
%% <a>RegisterScalableTarget</a>.
%%
%% To update a policy, specify its policy name and the parameters that you
%% want to change. Any parameters that you don't specify are not changed by
%% this update request.
%%
%% You can view the scaling policies for a service namespace using
%% <a>DescribeScalingPolicies</a>. If you are no longer using a scaling
%% policy, you can delete it using <a>DeleteScalingPolicy</a>.
%%
%% Multiple scaling policies can be in force at the same time for the same
%% scalable target. You can have one or more target tracking scaling
%% policies, one or more step scaling policies, or both. However, there is a
%% chance that multiple policies could conflict, instructing the scalable
%% target to scale out or in at the same time. Application Auto Scaling gives
%% precedence to the policy that provides the largest capacity for both scale
%% in and scale out. For example, if one policy increases capacity by 3,
%% another policy increases capacity by 200 percent, and the current capacity
%% is 10, Application Auto Scaling uses the policy with the highest
%% calculated capacity (200% of 10 = 20) and scales out to 30.
%%
%% Learn more about how to work with scaling policies in the <a
%% href="https://docs.aws.amazon.com/autoscaling/application/userguide/what-is-application-auto-scaling.html">Application
%% Auto Scaling User Guide</a>.
put_scaling_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_scaling_policy(Client, Input, []).
put_scaling_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutScalingPolicy">>, Input, Options).

%% @doc Creates or updates a scheduled action for an Application Auto Scaling
%% scalable target.
%%
%% Each scalable target is identified by a service namespace, resource ID,
%% and scalable dimension. A scheduled action applies to the scalable target
%% identified by those three attributes. You cannot create a scheduled action
%% until you have registered the resource as a scalable target using
%% <a>RegisterScalableTarget</a>.
%%
%% To update an action, specify its name and the parameters that you want to
%% change. If you don't specify start and end times, the old values are
%% deleted. Any other parameters that you don't specify are not changed by
%% this update request.
%%
%% You can view the scheduled actions using <a>DescribeScheduledActions</a>.
%% If you are no longer using a scheduled action, you can delete it using
%% <a>DeleteScheduledAction</a>.
%%
%% Learn more about how to work with scheduled actions in the <a
%% href="https://docs.aws.amazon.com/autoscaling/application/userguide/what-is-application-auto-scaling.html">Application
%% Auto Scaling User Guide</a>.
put_scheduled_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_scheduled_action(Client, Input, []).
put_scheduled_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutScheduledAction">>, Input, Options).

%% @doc Registers or updates a scalable target. A scalable target is a
%% resource that Application Auto Scaling can scale out and scale in. Each
%% scalable target has a resource ID, scalable dimension, and namespace, as
%% well as values for minimum and maximum capacity.
%%
%% After you register a scalable target, you do not need to register it again
%% to use other Application Auto Scaling operations. To see which resources
%% have been registered, use <a>DescribeScalableTargets</a>. You can also
%% view the scaling policies for a service namespace using
%% <a>DescribeScalableTargets</a>.
%%
%% If you no longer need a scalable target, you can deregister it using
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
