%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc With Application Auto Scaling, you can configure automatic scaling
%% for the following resources:
%%
%% <ul> <li> Amazon AppStream 2.0 fleets
%%
%% </li> <li> Amazon Aurora Replicas
%%
%% </li> <li> Amazon Comprehend document classification and entity recognizer
%% endpoints
%%
%% </li> <li> Amazon DynamoDB tables and global secondary indexes throughput
%% capacity
%%
%% </li> <li> Amazon ECS services
%%
%% </li> <li> Amazon ElastiCache for Redis clusters (replication groups)
%%
%% </li> <li> Amazon EMR clusters
%%
%% </li> <li> Amazon Keyspaces (for Apache Cassandra) tables
%%
%% </li> <li> Lambda function provisioned concurrency
%%
%% </li> <li> Amazon Managed Streaming for Apache Kafka broker storage
%%
%% </li> <li> Amazon Neptune clusters
%%
%% </li> <li> Amazon SageMaker endpoint variants
%%
%% </li> <li> Spot Fleets (Amazon EC2)
%%
%% </li> <li> Custom resources provided by your own applications or services
%%
%% </li> </ul> API Summary
%%
%% The Application Auto Scaling service API includes three key sets of
%% actions:
%%
%% <ul> <li> Register and manage scalable targets - Register Amazon Web
%% Services or custom resources as scalable targets (a resource that
%% Application Auto Scaling can scale), set minimum and maximum capacity
%% limits, and retrieve information on existing scalable targets.
%%
%% </li> <li> Configure and manage automatic scaling - Define scaling
%% policies to dynamically scale your resources in response to CloudWatch
%% alarms, schedule one-time or recurring scaling actions, and retrieve your
%% recent scaling activity history.
%%
%% </li> <li> Suspend and resume scaling - Temporarily suspend and later
%% resume automatic scaling by calling the RegisterScalableTarget API action
%% for any Application Auto Scaling scalable target. You can suspend and
%% resume (individually or in combination) scale-out activities that are
%% triggered by a scaling policy, scale-in activities that are triggered by a
%% scaling policy, and scheduled scaling.
%%
%% </li> </ul> To learn more about Application Auto Scaling, including
%% information about granting IAM users required permissions for Application
%% Auto Scaling actions, see the Application Auto Scaling User Guide.
-module(aws_application_auto_scaling).

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

%% @doc Deletes the specified scaling policy for an Application Auto Scaling
%% scalable target.
%%
%% Deleting a step scaling policy deletes the underlying alarm action, but
%% does not delete the CloudWatch alarm associated with the scaling policy,
%% even if it no longer has an associated action.
%%
%% For more information, see Delete a step scaling policy and Delete a target
%% tracking scaling policy in the Application Auto Scaling User Guide.
delete_scaling_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_scaling_policy(Client, Input, []).
delete_scaling_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteScalingPolicy">>, Input, Options).

%% @doc Deletes the specified scheduled action for an Application Auto
%% Scaling scalable target.
%%
%% For more information, see Delete a scheduled action in the Application
%% Auto Scaling User Guide.
delete_scheduled_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_scheduled_action(Client, Input, []).
delete_scheduled_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteScheduledAction">>, Input, Options).

%% @doc Deregisters an Application Auto Scaling scalable target when you have
%% finished using it.
%%
%% To see which resources have been registered, use DescribeScalableTargets.
%%
%% Deregistering a scalable target deletes the scaling policies and the
%% scheduled actions that are associated with it.
deregister_scalable_target(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_scalable_target(Client, Input, []).
deregister_scalable_target(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterScalableTarget">>, Input, Options).

%% @doc Gets information about the scalable targets in the specified
%% namespace.
%%
%% You can filter the results using `ResourceIds' and `ScalableDimension'.
describe_scalable_targets(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_scalable_targets(Client, Input, []).
describe_scalable_targets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeScalableTargets">>, Input, Options).

%% @doc Provides descriptive information about the scaling activities in the
%% specified namespace from the previous six weeks.
%%
%% You can filter the results using `ResourceId' and `ScalableDimension'.
describe_scaling_activities(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_scaling_activities(Client, Input, []).
describe_scaling_activities(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeScalingActivities">>, Input, Options).

%% @doc Describes the Application Auto Scaling scaling policies for the
%% specified service namespace.
%%
%% You can filter the results using `ResourceId', `ScalableDimension', and
%% `PolicyNames'.
%%
%% For more information, see Target tracking scaling policies and Step
%% scaling policies in the Application Auto Scaling User Guide.
describe_scaling_policies(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_scaling_policies(Client, Input, []).
describe_scaling_policies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeScalingPolicies">>, Input, Options).

%% @doc Describes the Application Auto Scaling scheduled actions for the
%% specified service namespace.
%%
%% You can filter the results using the `ResourceId', `ScalableDimension',
%% and `ScheduledActionNames' parameters.
%%
%% For more information, see Scheduled scaling and Managing scheduled scaling
%% in the Application Auto Scaling User Guide.
describe_scheduled_actions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_scheduled_actions(Client, Input, []).
describe_scheduled_actions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeScheduledActions">>, Input, Options).

%% @doc Creates or updates a scaling policy for an Application Auto Scaling
%% scalable target.
%%
%% Each scalable target is identified by a service namespace, resource ID,
%% and scalable dimension. A scaling policy applies to the scalable target
%% identified by those three attributes. You cannot create a scaling policy
%% until you have registered the resource as a scalable target.
%%
%% Multiple scaling policies can be in force at the same time for the same
%% scalable target. You can have one or more target tracking scaling
%% policies, one or more step scaling policies, or both. However, there is a
%% chance that multiple policies could conflict, instructing the scalable
%% target to scale out or in at the same time. Application Auto Scaling gives
%% precedence to the policy that provides the largest capacity for both scale
%% out and scale in. For example, if one policy increases capacity by 3,
%% another policy increases capacity by 200 percent, and the current capacity
%% is 10, Application Auto Scaling uses the policy with the highest
%% calculated capacity (200% of 10 = 20) and scales out to 30.
%%
%% We recommend caution, however, when using target tracking scaling policies
%% with step scaling policies because conflicts between these policies can
%% cause undesirable behavior. For example, if the step scaling policy
%% initiates a scale-in activity before the target tracking policy is ready
%% to scale in, the scale-in activity will not be blocked. After the scale-in
%% activity completes, the target tracking policy could instruct the scalable
%% target to scale out again.
%%
%% For more information, see Target tracking scaling policies and Step
%% scaling policies in the Application Auto Scaling User Guide.
%%
%% If a scalable target is deregistered, the scalable target is no longer
%% available to execute scaling policies. Any scaling policies that were
%% specified for the scalable target are deleted.
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
%% until you have registered the resource as a scalable target.
%%
%% When start and end times are specified with a recurring schedule using a
%% cron expression or rates, they form the boundaries for when the recurring
%% action starts and stops.
%%
%% To update a scheduled action, specify the parameters that you want to
%% change. If you don't specify start and end times, the old values are
%% deleted.
%%
%% For more information, see Scheduled scaling in the Application Auto
%% Scaling User Guide.
%%
%% If a scalable target is deregistered, the scalable target is no longer
%% available to run scheduled actions. Any scheduled actions that were
%% specified for the scalable target are deleted.
put_scheduled_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_scheduled_action(Client, Input, []).
put_scheduled_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutScheduledAction">>, Input, Options).

%% @doc Registers or updates a scalable target.
%%
%% A scalable target is a resource that Application Auto Scaling can scale
%% out and scale in. Scalable targets are uniquely identified by the
%% combination of resource ID, scalable dimension, and namespace.
%%
%% When you register a new scalable target, you must specify values for
%% minimum and maximum capacity. Current capacity will be adjusted within the
%% specified range when scaling starts. Application Auto Scaling scaling
%% policies will not scale capacity to values that are outside of this range.
%%
%% After you register a scalable target, you do not need to register it again
%% to use other Application Auto Scaling operations. To see which resources
%% have been registered, use DescribeScalableTargets. You can also view the
%% scaling policies for a service namespace by using DescribeScalableTargets.
%% If you no longer need a scalable target, you can deregister it by using
%% DeregisterScalableTarget.
%%
%% To update a scalable target, specify the parameters that you want to
%% change. Include the parameters that identify the scalable target: resource
%% ID, scalable dimension, and namespace. Any parameters that you don't
%% specify are not changed by this update request.
%%
%% If you call the `RegisterScalableTarget' API to update an existing
%% scalable target, Application Auto Scaling retrieves the current capacity
%% of the resource. If it is below the minimum capacity or above the maximum
%% capacity, Application Auto Scaling adjusts the capacity of the scalable
%% target to place it within these bounds, even if you don't include the
%% `MinCapacity' or `MaxCapacity' request parameters.
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
    Error :: map().
request(Client, Action, Input0, Options) ->
    Client1 = Client#{service => <<"application-autoscaling">>},
    Host = build_host(<<"application-autoscaling">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"AnyScaleFrontendService.", Action/binary>>}
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
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
