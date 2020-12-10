%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc The Cost Explorer API enables you to programmatically query your cost
%% and usage data.
%%
%% You can query for aggregated data such as total monthly costs or total
%% daily usage. You can also query for granular data, such as the number of
%% daily write operations for Amazon DynamoDB database tables in your
%% production environment.
%%
%% Service Endpoint
%%
%% The Cost Explorer API provides the following endpoint:
%%
%% <ul> <li> `https://ce.us-east-1.amazonaws.com'
%%
%% </li> </ul> For information about costs associated with the Cost Explorer
%% API, see AWS Cost Management Pricing.
-module(aws_cost_explorer).

-export([create_anomaly_monitor/2,
         create_anomaly_monitor/3,
         create_anomaly_subscription/2,
         create_anomaly_subscription/3,
         create_cost_category_definition/2,
         create_cost_category_definition/3,
         delete_anomaly_monitor/2,
         delete_anomaly_monitor/3,
         delete_anomaly_subscription/2,
         delete_anomaly_subscription/3,
         delete_cost_category_definition/2,
         delete_cost_category_definition/3,
         describe_cost_category_definition/2,
         describe_cost_category_definition/3,
         get_anomalies/2,
         get_anomalies/3,
         get_anomaly_monitors/2,
         get_anomaly_monitors/3,
         get_anomaly_subscriptions/2,
         get_anomaly_subscriptions/3,
         get_cost_and_usage/2,
         get_cost_and_usage/3,
         get_cost_and_usage_with_resources/2,
         get_cost_and_usage_with_resources/3,
         get_cost_forecast/2,
         get_cost_forecast/3,
         get_dimension_values/2,
         get_dimension_values/3,
         get_reservation_coverage/2,
         get_reservation_coverage/3,
         get_reservation_purchase_recommendation/2,
         get_reservation_purchase_recommendation/3,
         get_reservation_utilization/2,
         get_reservation_utilization/3,
         get_rightsizing_recommendation/2,
         get_rightsizing_recommendation/3,
         get_savings_plans_coverage/2,
         get_savings_plans_coverage/3,
         get_savings_plans_purchase_recommendation/2,
         get_savings_plans_purchase_recommendation/3,
         get_savings_plans_utilization/2,
         get_savings_plans_utilization/3,
         get_savings_plans_utilization_details/2,
         get_savings_plans_utilization_details/3,
         get_tags/2,
         get_tags/3,
         get_usage_forecast/2,
         get_usage_forecast/3,
         list_cost_category_definitions/2,
         list_cost_category_definitions/3,
         provide_anomaly_feedback/2,
         provide_anomaly_feedback/3,
         update_anomaly_monitor/2,
         update_anomaly_monitor/3,
         update_anomaly_subscription/2,
         update_anomaly_subscription/3,
         update_cost_category_definition/2,
         update_cost_category_definition/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a new cost anomaly detection monitor with the requested type
%% and monitor specification.
create_anomaly_monitor(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_anomaly_monitor(Client, Input, []).
create_anomaly_monitor(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAnomalyMonitor">>, Input, Options).

%% @doc Adds a subscription to a cost anomaly detection monitor.
%%
%% You can use each subscription to define subscribers with email or SNS
%% notifications. Email subscribers can set a dollar threshold and a time
%% frequency for receiving notifications.
create_anomaly_subscription(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_anomaly_subscription(Client, Input, []).
create_anomaly_subscription(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAnomalySubscription">>, Input, Options).

%% @doc Creates a new Cost Category with the requested name and rules.
create_cost_category_definition(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_cost_category_definition(Client, Input, []).
create_cost_category_definition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCostCategoryDefinition">>, Input, Options).

%% @doc Deletes a cost anomaly monitor.
delete_anomaly_monitor(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_anomaly_monitor(Client, Input, []).
delete_anomaly_monitor(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAnomalyMonitor">>, Input, Options).

%% @doc Deletes a cost anomaly subscription.
delete_anomaly_subscription(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_anomaly_subscription(Client, Input, []).
delete_anomaly_subscription(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAnomalySubscription">>, Input, Options).

%% @doc Deletes a Cost Category.
%%
%% Expenses from this month going forward will no longer be categorized with
%% this Cost Category.
delete_cost_category_definition(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_cost_category_definition(Client, Input, []).
delete_cost_category_definition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCostCategoryDefinition">>, Input, Options).

%% @doc Returns the name, ARN, rules, definition, and effective dates of a
%% Cost Category that's defined in the account.
%%
%% You have the option to use `EffectiveOn' to return a Cost Category that is
%% active on a specific date. If there is no `EffectiveOn' specified, you’ll
%% see a Cost Category that is effective on the current date. If Cost
%% Category is still effective, `EffectiveEnd' is omitted in the response.
describe_cost_category_definition(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_cost_category_definition(Client, Input, []).
describe_cost_category_definition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCostCategoryDefinition">>, Input, Options).

%% @doc Retrieves all of the cost anomalies detected on your account, during
%% the time period specified by the `DateInterval' object.
get_anomalies(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_anomalies(Client, Input, []).
get_anomalies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAnomalies">>, Input, Options).

%% @doc Retrieves the cost anomaly monitor definitions for your account.
%%
%% You can filter using a list of cost anomaly monitor Amazon Resource Names
%% (ARNs).
get_anomaly_monitors(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_anomaly_monitors(Client, Input, []).
get_anomaly_monitors(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAnomalyMonitors">>, Input, Options).

%% @doc Retrieves the cost anomaly subscription objects for your account.
%%
%% You can filter using a list of cost anomaly monitor Amazon Resource Names
%% (ARNs).
get_anomaly_subscriptions(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_anomaly_subscriptions(Client, Input, []).
get_anomaly_subscriptions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAnomalySubscriptions">>, Input, Options).

%% @doc Retrieves cost and usage metrics for your account.
%%
%% You can specify which cost and usage-related metric, such as
%% `BlendedCosts' or `UsageQuantity', that you want the request to return.
%% You can also filter and group your data by various dimensions, such as
%% `SERVICE' or `AZ', in a specific time range. For a complete list of valid
%% dimensions, see the GetDimensionValues operation. Management account in an
%% organization in AWS Organizations have access to all member accounts.
%%
%% For information about filter limitations, see Quotas and restrictions in
%% the Billing and Cost Management User Guide.
get_cost_and_usage(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_cost_and_usage(Client, Input, []).
get_cost_and_usage(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCostAndUsage">>, Input, Options).

%% @doc Retrieves cost and usage metrics with resources for your account.
%%
%% You can specify which cost and usage-related metric, such as
%% `BlendedCosts' or `UsageQuantity', that you want the request to return.
%% You can also filter and group your data by various dimensions, such as
%% `SERVICE' or `AZ', in a specific time range. For a complete list of valid
%% dimensions, see the GetDimensionValues operation. Management account in an
%% organization in AWS Organizations have access to all member accounts. This
%% API is currently available for the Amazon Elastic Compute Cloud – Compute
%% service only.
%%
%% This is an opt-in only feature. You can enable this feature from the Cost
%% Explorer Settings page. For information on how to access the Settings
%% page, see Controlling Access for Cost Explorer in the AWS Billing and Cost
%% Management User Guide.
get_cost_and_usage_with_resources(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_cost_and_usage_with_resources(Client, Input, []).
get_cost_and_usage_with_resources(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCostAndUsageWithResources">>, Input, Options).

%% @doc Retrieves a forecast for how much Amazon Web Services predicts that
%% you will spend over the forecast time period that you select, based on
%% your past costs.
get_cost_forecast(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_cost_forecast(Client, Input, []).
get_cost_forecast(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCostForecast">>, Input, Options).

%% @doc Retrieves all available filter values for a specified filter over a
%% period of time.
%%
%% You can search the dimension values for an arbitrary string.
get_dimension_values(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_dimension_values(Client, Input, []).
get_dimension_values(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDimensionValues">>, Input, Options).

%% @doc Retrieves the reservation coverage for your account.
%%
%% This enables you to see how much of your Amazon Elastic Compute Cloud,
%% Amazon ElastiCache, Amazon Relational Database Service, or Amazon Redshift
%% usage is covered by a reservation. An organization's management account
%% can see the coverage of the associated member accounts. This supports
%% dimensions, Cost Categories, and nested expressions. For any time period,
%% you can filter data about reservation usage by the following dimensions:
%%
%% <ul> <li> AZ
%%
%% </li> <li> CACHE_ENGINE
%%
%% </li> <li> DATABASE_ENGINE
%%
%% </li> <li> DEPLOYMENT_OPTION
%%
%% </li> <li> INSTANCE_TYPE
%%
%% </li> <li> LINKED_ACCOUNT
%%
%% </li> <li> OPERATING_SYSTEM
%%
%% </li> <li> PLATFORM
%%
%% </li> <li> REGION
%%
%% </li> <li> SERVICE
%%
%% </li> <li> TAG
%%
%% </li> <li> TENANCY
%%
%% </li> </ul> To determine valid values for a dimension, use the
%% `GetDimensionValues' operation.
get_reservation_coverage(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_reservation_coverage(Client, Input, []).
get_reservation_coverage(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetReservationCoverage">>, Input, Options).

%% @doc Gets recommendations for which reservations to purchase.
%%
%% These recommendations could help you reduce your costs. Reservations
%% provide a discounted hourly rate (up to 75%) compared to On-Demand
%% pricing.
%%
%% AWS generates your recommendations by identifying your On-Demand usage
%% during a specific time period and collecting your usage into categories
%% that are eligible for a reservation. After AWS has these categories, it
%% simulates every combination of reservations in each category of usage to
%% identify the best number of each type of RI to purchase to maximize your
%% estimated savings.
%%
%% For example, AWS automatically aggregates your Amazon EC2 Linux, shared
%% tenancy, and c4 family usage in the US West (Oregon) Region and recommends
%% that you buy size-flexible regional reservations to apply to the c4 family
%% usage. AWS recommends the smallest size instance in an instance family.
%% This makes it easier to purchase a size-flexible RI. AWS also shows the
%% equal number of normalized units so that you can purchase any instance
%% size that you want. For this example, your RI recommendation would be for
%% `c4.large' because that is the smallest size instance in the c4 instance
%% family.
get_reservation_purchase_recommendation(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_reservation_purchase_recommendation(Client, Input, []).
get_reservation_purchase_recommendation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetReservationPurchaseRecommendation">>, Input, Options).

%% @doc Retrieves the reservation utilization for your account.
%%
%% Management account in an organization have access to member accounts. You
%% can filter data by dimensions in a time period. You can use
%% `GetDimensionValues' to determine the possible dimension values.
%% Currently, you can group only by `SUBSCRIPTION_ID'.
get_reservation_utilization(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_reservation_utilization(Client, Input, []).
get_reservation_utilization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetReservationUtilization">>, Input, Options).

%% @doc Creates recommendations that help you save cost by identifying idle
%% and underutilized Amazon EC2 instances.
%%
%% Recommendations are generated to either downsize or terminate instances,
%% along with providing savings detail and metrics. For details on
%% calculation and function, see Optimizing Your Cost with Rightsizing
%% Recommendations in the AWS Billing and Cost Management User Guide.
get_rightsizing_recommendation(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_rightsizing_recommendation(Client, Input, []).
get_rightsizing_recommendation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRightsizingRecommendation">>, Input, Options).

%% @doc Retrieves the Savings Plans covered for your account.
%%
%% This enables you to see how much of your cost is covered by a Savings
%% Plan. An organization’s management account can see the coverage of the
%% associated member accounts. This supports dimensions, Cost Categories, and
%% nested expressions. For any time period, you can filter data for Savings
%% Plans usage with the following dimensions:
%%
%% <ul> <li> `LINKED_ACCOUNT'
%%
%% </li> <li> `REGION'
%%
%% </li> <li> `SERVICE'
%%
%% </li> <li> `INSTANCE_FAMILY'
%%
%% </li> </ul> To determine valid values for a dimension, use the
%% `GetDimensionValues' operation.
get_savings_plans_coverage(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_savings_plans_coverage(Client, Input, []).
get_savings_plans_coverage(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSavingsPlansCoverage">>, Input, Options).

%% @doc Retrieves your request parameters, Savings Plan Recommendations
%% Summary and Details.
get_savings_plans_purchase_recommendation(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_savings_plans_purchase_recommendation(Client, Input, []).
get_savings_plans_purchase_recommendation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSavingsPlansPurchaseRecommendation">>, Input, Options).

%% @doc Retrieves the Savings Plans utilization for your account across date
%% ranges with daily or monthly granularity.
%%
%% Management account in an organization have access to member accounts. You
%% can use `GetDimensionValues' in `SAVINGS_PLANS' to determine the possible
%% dimension values.
%%
%% You cannot group by any dimension values for `GetSavingsPlansUtilization'.
get_savings_plans_utilization(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_savings_plans_utilization(Client, Input, []).
get_savings_plans_utilization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSavingsPlansUtilization">>, Input, Options).

%% @doc Retrieves attribute data along with aggregate utilization and savings
%% data for a given time period.
%%
%% This doesn't support granular or grouped data (daily/monthly) in response.
%% You can't retrieve data by dates in a single response similar to
%% `GetSavingsPlanUtilization', but you have the option to make multiple
%% calls to `GetSavingsPlanUtilizationDetails' by providing individual dates.
%% You can use `GetDimensionValues' in `SAVINGS_PLANS' to determine the
%% possible dimension values.
%%
%% `GetSavingsPlanUtilizationDetails' internally groups data by
%% `SavingsPlansArn'.
get_savings_plans_utilization_details(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_savings_plans_utilization_details(Client, Input, []).
get_savings_plans_utilization_details(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSavingsPlansUtilizationDetails">>, Input, Options).

%% @doc Queries for available tag keys and tag values for a specified period.
%%
%% You can search the tag values for an arbitrary string.
get_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_tags(Client, Input, []).
get_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTags">>, Input, Options).

%% @doc Retrieves a forecast for how much Amazon Web Services predicts that
%% you will use over the forecast time period that you select, based on your
%% past usage.
get_usage_forecast(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_usage_forecast(Client, Input, []).
get_usage_forecast(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetUsageForecast">>, Input, Options).

%% @doc Returns the name, ARN, `NumberOfRules' and effective dates of all
%% Cost Categories defined in the account.
%%
%% You have the option to use `EffectiveOn' to return a list of Cost
%% Categories that were active on a specific date. If there is no
%% `EffectiveOn' specified, you’ll see Cost Categories that are effective on
%% the current date. If Cost Category is still effective, `EffectiveEnd' is
%% omitted in the response. `ListCostCategoryDefinitions' supports
%% pagination. The request can have a `MaxResults' range up to 100.
list_cost_category_definitions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_cost_category_definitions(Client, Input, []).
list_cost_category_definitions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCostCategoryDefinitions">>, Input, Options).

%% @doc Modifies the feedback property of a given cost anomaly.
provide_anomaly_feedback(Client, Input)
  when is_map(Client), is_map(Input) ->
    provide_anomaly_feedback(Client, Input, []).
provide_anomaly_feedback(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ProvideAnomalyFeedback">>, Input, Options).

%% @doc Updates an existing cost anomaly monitor.
%%
%% The changes made are applied going forward, and does not change anomalies
%% detected in the past.
update_anomaly_monitor(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_anomaly_monitor(Client, Input, []).
update_anomaly_monitor(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateAnomalyMonitor">>, Input, Options).

%% @doc Updates an existing cost anomaly monitor subscription.
update_anomaly_subscription(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_anomaly_subscription(Client, Input, []).
update_anomaly_subscription(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateAnomalySubscription">>, Input, Options).

%% @doc Updates an existing Cost Category.
%%
%% Changes made to the Cost Category rules will be used to categorize the
%% current month’s expenses and future expenses. This won’t change
%% categorization for the previous months.
update_cost_category_definition(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_cost_category_definition(Client, Input, []).
update_cost_category_definition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateCostCategoryDefinition">>, Input, Options).

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
    Client1 = Client#{service => <<"ce">>,
                      region => <<"us-east-1">>},
    Host = build_host(<<"ce">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"AWSInsightsIndexService.", Action/binary>>}
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
build_host(EndpointPrefix, #{endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Endpoint], <<".">>).

build_url(Host, Client) ->
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
