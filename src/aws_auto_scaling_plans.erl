%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS Auto Scaling
%%
%% Use AWS Auto Scaling to create scaling plans for your applications to
%% automatically scale your scalable AWS resources.
%%
%% API Summary
%%
%% You can use the AWS Auto Scaling service API to accomplish the following
%% tasks:
%%
%% Create and manage scaling plans
%%
%% Define target tracking scaling policies to dynamically scale your
%% resources based
%% on utilization
%%
%% Scale Amazon EC2 Auto Scaling groups using predictive scaling and dynamic
%% scaling to scale your
%% Amazon EC2 capacity faster
%%
%% Set minimum and maximum capacity limits
%%
%% Retrieve information on existing scaling plans
%%
%% Access current forecast data and historical forecast data for up to 56
%% days
%% previous
%%
%% To learn more about AWS Auto Scaling, including information about granting
%% IAM users required
%% permissions for AWS Auto Scaling actions, see the AWS Auto Scaling User
%% Guide:
%% https://docs.aws.amazon.com/autoscaling/plans/userguide/what-is-aws-auto-scaling.html.
-module(aws_auto_scaling_plans).

-export([create_scaling_plan/2,
         create_scaling_plan/3,
         delete_scaling_plan/2,
         delete_scaling_plan/3,
         describe_scaling_plan_resources/2,
         describe_scaling_plan_resources/3,
         describe_scaling_plans/2,
         describe_scaling_plans/3,
         get_scaling_plan_resource_forecast_data/2,
         get_scaling_plan_resource_forecast_data/3,
         update_scaling_plan/2,
         update_scaling_plan/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% application_source() :: #{
%%   <<"CloudFormationStackARN">> => string(),
%%   <<"TagFilters">> => list(tag_filter())
%% }
-type application_source() :: #{binary() => any()}.

%% Example:
%% concurrent_update_exception() :: #{
%%   <<"Message">> => string()
%% }
-type concurrent_update_exception() :: #{binary() => any()}.

%% Example:
%% create_scaling_plan_request() :: #{
%%   <<"ApplicationSource">> := application_source(),
%%   <<"ScalingInstructions">> := list(scaling_instruction()),
%%   <<"ScalingPlanName">> := string()
%% }
-type create_scaling_plan_request() :: #{binary() => any()}.

%% Example:
%% create_scaling_plan_response() :: #{
%%   <<"ScalingPlanVersion">> => float()
%% }
-type create_scaling_plan_response() :: #{binary() => any()}.

%% Example:
%% customized_load_metric_specification() :: #{
%%   <<"Dimensions">> => list(metric_dimension()),
%%   <<"MetricName">> => string(),
%%   <<"Namespace">> => string(),
%%   <<"Statistic">> => list(any()),
%%   <<"Unit">> => string()
%% }
-type customized_load_metric_specification() :: #{binary() => any()}.

%% Example:
%% customized_scaling_metric_specification() :: #{
%%   <<"Dimensions">> => list(metric_dimension()),
%%   <<"MetricName">> => string(),
%%   <<"Namespace">> => string(),
%%   <<"Statistic">> => list(any()),
%%   <<"Unit">> => string()
%% }
-type customized_scaling_metric_specification() :: #{binary() => any()}.

%% Example:
%% datapoint() :: #{
%%   <<"Timestamp">> => non_neg_integer(),
%%   <<"Value">> => float()
%% }
-type datapoint() :: #{binary() => any()}.

%% Example:
%% delete_scaling_plan_request() :: #{
%%   <<"ScalingPlanName">> := string(),
%%   <<"ScalingPlanVersion">> := float()
%% }
-type delete_scaling_plan_request() :: #{binary() => any()}.

%% Example:
%% delete_scaling_plan_response() :: #{

%% }
-type delete_scaling_plan_response() :: #{binary() => any()}.

%% Example:
%% describe_scaling_plan_resources_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ScalingPlanName">> := string(),
%%   <<"ScalingPlanVersion">> := float()
%% }
-type describe_scaling_plan_resources_request() :: #{binary() => any()}.

%% Example:
%% describe_scaling_plan_resources_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ScalingPlanResources">> => list(scaling_plan_resource())
%% }
-type describe_scaling_plan_resources_response() :: #{binary() => any()}.

%% Example:
%% describe_scaling_plans_request() :: #{
%%   <<"ApplicationSources">> => list(application_source()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ScalingPlanNames">> => list(string()),
%%   <<"ScalingPlanVersion">> => float()
%% }
-type describe_scaling_plans_request() :: #{binary() => any()}.

%% Example:
%% describe_scaling_plans_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ScalingPlans">> => list(scaling_plan())
%% }
-type describe_scaling_plans_response() :: #{binary() => any()}.

%% Example:
%% get_scaling_plan_resource_forecast_data_request() :: #{
%%   <<"EndTime">> := non_neg_integer(),
%%   <<"ForecastDataType">> := list(any()),
%%   <<"ResourceId">> := string(),
%%   <<"ScalableDimension">> := list(any()),
%%   <<"ScalingPlanName">> := string(),
%%   <<"ScalingPlanVersion">> := float(),
%%   <<"ServiceNamespace">> := list(any()),
%%   <<"StartTime">> := non_neg_integer()
%% }
-type get_scaling_plan_resource_forecast_data_request() :: #{binary() => any()}.

%% Example:
%% get_scaling_plan_resource_forecast_data_response() :: #{
%%   <<"Datapoints">> => list(datapoint())
%% }
-type get_scaling_plan_resource_forecast_data_response() :: #{binary() => any()}.

%% Example:
%% internal_service_exception() :: #{
%%   <<"Message">> => string()
%% }
-type internal_service_exception() :: #{binary() => any()}.

%% Example:
%% invalid_next_token_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_next_token_exception() :: #{binary() => any()}.

%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% metric_dimension() :: #{
%%   <<"Name">> => string(),
%%   <<"Value">> => string()
%% }
-type metric_dimension() :: #{binary() => any()}.

%% Example:
%% object_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type object_not_found_exception() :: #{binary() => any()}.

%% Example:
%% predefined_load_metric_specification() :: #{
%%   <<"PredefinedLoadMetricType">> => list(any()),
%%   <<"ResourceLabel">> => string()
%% }
-type predefined_load_metric_specification() :: #{binary() => any()}.

%% Example:
%% predefined_scaling_metric_specification() :: #{
%%   <<"PredefinedScalingMetricType">> => list(any()),
%%   <<"ResourceLabel">> => string()
%% }
-type predefined_scaling_metric_specification() :: #{binary() => any()}.

%% Example:
%% scaling_instruction() :: #{
%%   <<"CustomizedLoadMetricSpecification">> => customized_load_metric_specification(),
%%   <<"DisableDynamicScaling">> => boolean(),
%%   <<"MaxCapacity">> => integer(),
%%   <<"MinCapacity">> => integer(),
%%   <<"PredefinedLoadMetricSpecification">> => predefined_load_metric_specification(),
%%   <<"PredictiveScalingMaxCapacityBehavior">> => list(any()),
%%   <<"PredictiveScalingMaxCapacityBuffer">> => integer(),
%%   <<"PredictiveScalingMode">> => list(any()),
%%   <<"ResourceId">> => string(),
%%   <<"ScalableDimension">> => list(any()),
%%   <<"ScalingPolicyUpdateBehavior">> => list(any()),
%%   <<"ScheduledActionBufferTime">> => integer(),
%%   <<"ServiceNamespace">> => list(any()),
%%   <<"TargetTrackingConfigurations">> => list(target_tracking_configuration())
%% }
-type scaling_instruction() :: #{binary() => any()}.

%% Example:
%% scaling_plan() :: #{
%%   <<"ApplicationSource">> => application_source(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"ScalingInstructions">> => list(scaling_instruction()),
%%   <<"ScalingPlanName">> => string(),
%%   <<"ScalingPlanVersion">> => float(),
%%   <<"StatusCode">> => list(any()),
%%   <<"StatusMessage">> => string(),
%%   <<"StatusStartTime">> => non_neg_integer()
%% }
-type scaling_plan() :: #{binary() => any()}.

%% Example:
%% scaling_plan_resource() :: #{
%%   <<"ResourceId">> => string(),
%%   <<"ScalableDimension">> => list(any()),
%%   <<"ScalingPlanName">> => string(),
%%   <<"ScalingPlanVersion">> => float(),
%%   <<"ScalingPolicies">> => list(scaling_policy()),
%%   <<"ScalingStatusCode">> => list(any()),
%%   <<"ScalingStatusMessage">> => string(),
%%   <<"ServiceNamespace">> => list(any())
%% }
-type scaling_plan_resource() :: #{binary() => any()}.

%% Example:
%% scaling_policy() :: #{
%%   <<"PolicyName">> => string(),
%%   <<"PolicyType">> => list(any()),
%%   <<"TargetTrackingConfiguration">> => target_tracking_configuration()
%% }
-type scaling_policy() :: #{binary() => any()}.

%% Example:
%% tag_filter() :: #{
%%   <<"Key">> => string(),
%%   <<"Values">> => list(string())
%% }
-type tag_filter() :: #{binary() => any()}.

%% Example:
%% target_tracking_configuration() :: #{
%%   <<"CustomizedScalingMetricSpecification">> => customized_scaling_metric_specification(),
%%   <<"DisableScaleIn">> => boolean(),
%%   <<"EstimatedInstanceWarmup">> => integer(),
%%   <<"PredefinedScalingMetricSpecification">> => predefined_scaling_metric_specification(),
%%   <<"ScaleInCooldown">> => integer(),
%%   <<"ScaleOutCooldown">> => integer(),
%%   <<"TargetValue">> => float()
%% }
-type target_tracking_configuration() :: #{binary() => any()}.

%% Example:
%% update_scaling_plan_request() :: #{
%%   <<"ApplicationSource">> => application_source(),
%%   <<"ScalingInstructions">> => list(scaling_instruction()),
%%   <<"ScalingPlanName">> := string(),
%%   <<"ScalingPlanVersion">> := float()
%% }
-type update_scaling_plan_request() :: #{binary() => any()}.

%% Example:
%% update_scaling_plan_response() :: #{

%% }
-type update_scaling_plan_response() :: #{binary() => any()}.

%% Example:
%% validation_exception() :: #{
%%   <<"Message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

-type create_scaling_plan_errors() ::
    validation_exception() | 
    limit_exceeded_exception() | 
    internal_service_exception() | 
    concurrent_update_exception().

-type delete_scaling_plan_errors() ::
    validation_exception() | 
    object_not_found_exception() | 
    internal_service_exception() | 
    concurrent_update_exception().

-type describe_scaling_plan_resources_errors() ::
    validation_exception() | 
    invalid_next_token_exception() | 
    internal_service_exception() | 
    concurrent_update_exception().

-type describe_scaling_plans_errors() ::
    validation_exception() | 
    invalid_next_token_exception() | 
    internal_service_exception() | 
    concurrent_update_exception().

-type get_scaling_plan_resource_forecast_data_errors() ::
    validation_exception() | 
    internal_service_exception().

-type update_scaling_plan_errors() ::
    validation_exception() | 
    object_not_found_exception() | 
    internal_service_exception() | 
    concurrent_update_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a scaling plan.
-spec create_scaling_plan(aws_client:aws_client(), create_scaling_plan_request()) ->
    {ok, create_scaling_plan_response(), tuple()} |
    {error, any()} |
    {error, create_scaling_plan_errors(), tuple()}.
create_scaling_plan(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_scaling_plan(Client, Input, []).

-spec create_scaling_plan(aws_client:aws_client(), create_scaling_plan_request(), proplists:proplist()) ->
    {ok, create_scaling_plan_response(), tuple()} |
    {error, any()} |
    {error, create_scaling_plan_errors(), tuple()}.
create_scaling_plan(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateScalingPlan">>, Input, Options).

%% @doc Deletes the specified scaling plan.
%%
%% Deleting a scaling plan deletes the underlying `ScalingInstruction'
%% for
%% all of the scalable resources that are covered by the plan.
%%
%% If the plan has launched resources or has scaling activities in progress,
%% you must
%% delete those resources separately.
-spec delete_scaling_plan(aws_client:aws_client(), delete_scaling_plan_request()) ->
    {ok, delete_scaling_plan_response(), tuple()} |
    {error, any()} |
    {error, delete_scaling_plan_errors(), tuple()}.
delete_scaling_plan(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_scaling_plan(Client, Input, []).

-spec delete_scaling_plan(aws_client:aws_client(), delete_scaling_plan_request(), proplists:proplist()) ->
    {ok, delete_scaling_plan_response(), tuple()} |
    {error, any()} |
    {error, delete_scaling_plan_errors(), tuple()}.
delete_scaling_plan(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteScalingPlan">>, Input, Options).

%% @doc Describes the scalable resources in the specified scaling plan.
-spec describe_scaling_plan_resources(aws_client:aws_client(), describe_scaling_plan_resources_request()) ->
    {ok, describe_scaling_plan_resources_response(), tuple()} |
    {error, any()} |
    {error, describe_scaling_plan_resources_errors(), tuple()}.
describe_scaling_plan_resources(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_scaling_plan_resources(Client, Input, []).

-spec describe_scaling_plan_resources(aws_client:aws_client(), describe_scaling_plan_resources_request(), proplists:proplist()) ->
    {ok, describe_scaling_plan_resources_response(), tuple()} |
    {error, any()} |
    {error, describe_scaling_plan_resources_errors(), tuple()}.
describe_scaling_plan_resources(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeScalingPlanResources">>, Input, Options).

%% @doc Describes one or more of your scaling plans.
-spec describe_scaling_plans(aws_client:aws_client(), describe_scaling_plans_request()) ->
    {ok, describe_scaling_plans_response(), tuple()} |
    {error, any()} |
    {error, describe_scaling_plans_errors(), tuple()}.
describe_scaling_plans(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_scaling_plans(Client, Input, []).

-spec describe_scaling_plans(aws_client:aws_client(), describe_scaling_plans_request(), proplists:proplist()) ->
    {ok, describe_scaling_plans_response(), tuple()} |
    {error, any()} |
    {error, describe_scaling_plans_errors(), tuple()}.
describe_scaling_plans(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeScalingPlans">>, Input, Options).

%% @doc Retrieves the forecast data for a scalable resource.
%%
%% Capacity forecasts are represented as predicted values, or data points,
%% that are
%% calculated using historical data points from a specified CloudWatch load
%% metric. Data points are
%% available for up to 56 days.
-spec get_scaling_plan_resource_forecast_data(aws_client:aws_client(), get_scaling_plan_resource_forecast_data_request()) ->
    {ok, get_scaling_plan_resource_forecast_data_response(), tuple()} |
    {error, any()} |
    {error, get_scaling_plan_resource_forecast_data_errors(), tuple()}.
get_scaling_plan_resource_forecast_data(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_scaling_plan_resource_forecast_data(Client, Input, []).

-spec get_scaling_plan_resource_forecast_data(aws_client:aws_client(), get_scaling_plan_resource_forecast_data_request(), proplists:proplist()) ->
    {ok, get_scaling_plan_resource_forecast_data_response(), tuple()} |
    {error, any()} |
    {error, get_scaling_plan_resource_forecast_data_errors(), tuple()}.
get_scaling_plan_resource_forecast_data(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetScalingPlanResourceForecastData">>, Input, Options).

%% @doc Updates the specified scaling plan.
%%
%% You cannot update a scaling plan if it is in the process of being created,
%% updated, or
%% deleted.
-spec update_scaling_plan(aws_client:aws_client(), update_scaling_plan_request()) ->
    {ok, update_scaling_plan_response(), tuple()} |
    {error, any()} |
    {error, update_scaling_plan_errors(), tuple()}.
update_scaling_plan(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_scaling_plan(Client, Input, []).

-spec update_scaling_plan(aws_client:aws_client(), update_scaling_plan_request(), proplists:proplist()) ->
    {ok, update_scaling_plan_response(), tuple()} |
    {error, any()} |
    {error, update_scaling_plan_errors(), tuple()}.
update_scaling_plan(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateScalingPlan">>, Input, Options).

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
    Client1 = Client#{service => <<"autoscaling-plans">>},
    Host = build_host(<<"autoscaling-plans">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"AnyScaleScalingPlannerFrontendService.", Action/binary>>}
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
