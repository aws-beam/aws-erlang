%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS Auto Scaling
%%
%% Use AWS Auto Scaling to quickly discover all the scalable AWS resources
%% for your application and configure dynamic scaling and predictive scaling
%% for your resources using scaling plans.
%%
%% Use this service in conjunction with the Amazon EC2 Auto Scaling,
%% Application Auto Scaling, Amazon CloudWatch, and AWS CloudFormation
%% services.
%%
%% Currently, predictive scaling is only available for Amazon EC2 Auto
%% Scaling groups.
%%
%% For more information about AWS Auto Scaling, including information about
%% granting IAM users required permissions for AWS Auto Scaling actions, see
%% the AWS Auto Scaling User Guide.
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

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a scaling plan.
create_scaling_plan(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_scaling_plan(Client, Input, []).
create_scaling_plan(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateScalingPlan">>, Input, Options).

%% @doc Deletes the specified scaling plan.
%%
%% Deleting a scaling plan deletes the underlying `ScalingInstruction` for
%% all of the scalable resources that are covered by the plan.
%%
%% If the plan has launched resources or has scaling activities in progress,
%% you must delete those resources separately.
delete_scaling_plan(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_scaling_plan(Client, Input, []).
delete_scaling_plan(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteScalingPlan">>, Input, Options).

%% @doc Describes the scalable resources in the specified scaling plan.
describe_scaling_plan_resources(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_scaling_plan_resources(Client, Input, []).
describe_scaling_plan_resources(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeScalingPlanResources">>, Input, Options).

%% @doc Describes one or more of your scaling plans.
describe_scaling_plans(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_scaling_plans(Client, Input, []).
describe_scaling_plans(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeScalingPlans">>, Input, Options).

%% @doc Retrieves the forecast data for a scalable resource.
%%
%% Capacity forecasts are represented as predicted values, or data points,
%% that are calculated using historical data points from a specified
%% CloudWatch load metric. Data points are available for up to 56 days.
get_scaling_plan_resource_forecast_data(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_scaling_plan_resource_forecast_data(Client, Input, []).
get_scaling_plan_resource_forecast_data(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetScalingPlanResourceForecastData">>, Input, Options).

%% @doc Updates the specified scaling plan.
%%
%% You cannot update a scaling plan if it is in the process of being created,
%% updated, or deleted.
update_scaling_plan(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_scaling_plan(Client, Input, []).
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
request(Client, Action, Input0, Options) ->
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
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
