%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc You can use the Cost Explorer API to programmatically query your cost
%% and usage data.
%%
%% You can query for aggregated data such as total monthly costs or total
%% daily usage. You can
%% also query for granular data. This might include the number of daily write
%% operations for
%% Amazon DynamoDB database tables in your production environment.
%%
%% Service Endpoint
%%
%% The Cost Explorer API provides the following endpoint:
%%
%% `https://ce.us-east-1.amazonaws.com'
%%
%% For information about the costs that are associated with the Cost Explorer
%% API, see
%% Amazon Web Services Cost
%% Management Pricing: http://aws.amazon.com/aws-cost-management/pricing/.
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
         get_approximate_usage_records/2,
         get_approximate_usage_records/3,
         get_cost_and_usage/2,
         get_cost_and_usage/3,
         get_cost_and_usage_with_resources/2,
         get_cost_and_usage_with_resources/3,
         get_cost_categories/2,
         get_cost_categories/3,
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
         get_savings_plan_purchase_recommendation_details/2,
         get_savings_plan_purchase_recommendation_details/3,
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
         list_cost_allocation_tag_backfill_history/2,
         list_cost_allocation_tag_backfill_history/3,
         list_cost_allocation_tags/2,
         list_cost_allocation_tags/3,
         list_cost_category_definitions/2,
         list_cost_category_definitions/3,
         list_savings_plans_purchase_recommendation_generation/2,
         list_savings_plans_purchase_recommendation_generation/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         provide_anomaly_feedback/2,
         provide_anomaly_feedback/3,
         start_cost_allocation_tag_backfill/2,
         start_cost_allocation_tag_backfill/3,
         start_savings_plans_purchase_recommendation_generation/2,
         start_savings_plans_purchase_recommendation_generation/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_anomaly_monitor/2,
         update_anomaly_monitor/3,
         update_anomaly_subscription/2,
         update_anomaly_subscription/3,
         update_cost_allocation_tags_status/2,
         update_cost_allocation_tags_status/3,
         update_cost_category_definition/2,
         update_cost_category_definition/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a new cost anomaly detection monitor with the requested type
%% and monitor
%% specification.
create_anomaly_monitor(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_anomaly_monitor(Client, Input, []).
create_anomaly_monitor(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAnomalyMonitor">>, Input, Options).

%% @doc Adds an alert subscription to a cost anomaly detection monitor.
%%
%% You can use each
%% subscription to define subscribers with email or SNS notifications. Email
%% subscribers can set
%% an absolute or percentage threshold and a time frequency for receiving
%% notifications.
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
%% Expenses from this month going forward will no longer be
%% categorized with this Cost Category.
delete_cost_category_definition(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_cost_category_definition(Client, Input, []).
delete_cost_category_definition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCostCategoryDefinition">>, Input, Options).

%% @doc Returns the name, Amazon Resource Name (ARN), rules, definition, and
%% effective dates of a
%% Cost Category that's defined in the account.
%%
%% You have the option to use `EffectiveOn' to return a Cost Category
%% that's
%% active on a specific date. If there's no `EffectiveOn' specified,
%% you see a Cost
%% Category that's effective on the current date. If Cost Category is
%% still effective,
%% `EffectiveEnd' is omitted in the response.
describe_cost_category_definition(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_cost_category_definition(Client, Input, []).
describe_cost_category_definition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCostCategoryDefinition">>, Input, Options).

%% @doc Retrieves all of the cost anomalies detected on your account during
%% the time period that's
%% specified by the `DateInterval' object.
%%
%% Anomalies are available for up to 90
%% days.
get_anomalies(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_anomalies(Client, Input, []).
get_anomalies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAnomalies">>, Input, Options).

%% @doc Retrieves the cost anomaly monitor definitions for your account.
%%
%% You can filter using a
%% list of cost anomaly monitor Amazon Resource Names (ARNs).
get_anomaly_monitors(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_anomaly_monitors(Client, Input, []).
get_anomaly_monitors(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAnomalyMonitors">>, Input, Options).

%% @doc Retrieves the cost anomaly subscription objects for your account.
%%
%% You can filter using a
%% list of cost anomaly monitor Amazon Resource Names (ARNs).
get_anomaly_subscriptions(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_anomaly_subscriptions(Client, Input, []).
get_anomaly_subscriptions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAnomalySubscriptions">>, Input, Options).

%% @doc Retrieves estimated usage records for hourly granularity or
%% resource-level data at daily
%% granularity.
get_approximate_usage_records(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_approximate_usage_records(Client, Input, []).
get_approximate_usage_records(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetApproximateUsageRecords">>, Input, Options).

%% @doc Retrieves cost and usage metrics for your account.
%%
%% You can specify which cost and
%% usage-related metric that you want the request to return. For example, you
%% can specify
%% `BlendedCosts' or `UsageQuantity'. You can also filter and group
%% your
%% data by various dimensions, such as `SERVICE' or `AZ', in a
%% specific
%% time range. For a complete list of valid dimensions, see the
%% GetDimensionValues:
%% https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_GetDimensionValues.html
%% operation. Management account in an organization in Organizations have
%% access to all member accounts.
%%
%% For information about filter limitations, see Quotas and restrictions:
%% https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/billing-limits.html
%% in the Billing and Cost Management User Guide.
get_cost_and_usage(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_cost_and_usage(Client, Input, []).
get_cost_and_usage(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCostAndUsage">>, Input, Options).

%% @doc Retrieves cost and usage metrics with resources for your account.
%%
%% You can specify which
%% cost and usage-related metric, such as `BlendedCosts' or
%% `UsageQuantity', that you want the request to return. You can also
%% filter and group
%% your data by various dimensions, such as `SERVICE' or `AZ', in a
%% specific time range. For a complete list of valid dimensions, see the
%% GetDimensionValues:
%% https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_GetDimensionValues.html
%% operation. Management account in an organization in Organizations have
%% access to all member accounts. This API is currently available for the
%% Amazon Elastic Compute Cloud – Compute service only.
%%
%% This is an opt-in only feature. You can enable this feature from the Cost
%% Explorer
%% Settings page. For information about how to access the Settings page, see
%% Controlling
%% Access for Cost Explorer:
%% https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/ce-access.html
%% in the Billing and Cost Management User
%% Guide.
get_cost_and_usage_with_resources(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_cost_and_usage_with_resources(Client, Input, []).
get_cost_and_usage_with_resources(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCostAndUsageWithResources">>, Input, Options).

%% @doc Retrieves an array of Cost Category names and values incurred cost.
%%
%% If some Cost Category names and values are not associated with any cost,
%% they will not
%% be returned by this API.
get_cost_categories(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_cost_categories(Client, Input, []).
get_cost_categories(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCostCategories">>, Input, Options).

%% @doc Retrieves a forecast for how much Amazon Web Services predicts that
%% you will spend over
%% the forecast time period that you select, based on your past costs.
get_cost_forecast(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_cost_forecast(Client, Input, []).
get_cost_forecast(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCostForecast">>, Input, Options).

%% @doc Retrieves all available filter values for a specified filter over a
%% period of time.
%%
%% You
%% can search the dimension values for an arbitrary string.
get_dimension_values(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_dimension_values(Client, Input, []).
get_dimension_values(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDimensionValues">>, Input, Options).

%% @doc Retrieves the reservation coverage for your account, which you can
%% use to see how much
%% of your Amazon Elastic Compute Cloud, Amazon ElastiCache, Amazon
%% Relational Database Service,
%% or Amazon Redshift usage is covered by a reservation.
%%
%% An organization's management account can
%% see the coverage of the associated member accounts. This supports
%% dimensions, Cost Categories,
%% and nested expressions. For any time period, you can filter data about
%% reservation usage by
%% the following dimensions:
%%
%% AZ
%%
%% CACHE_ENGINE
%%
%% DATABASE_ENGINE
%%
%% DEPLOYMENT_OPTION
%%
%% INSTANCE_TYPE
%%
%% LINKED_ACCOUNT
%%
%% OPERATING_SYSTEM
%%
%% PLATFORM
%%
%% REGION
%%
%% SERVICE
%%
%% TAG
%%
%% TENANCY
%%
%% To determine valid values for a dimension, use the
%% `GetDimensionValues'
%% operation.
get_reservation_coverage(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_reservation_coverage(Client, Input, []).
get_reservation_coverage(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetReservationCoverage">>, Input, Options).

%% @doc Gets recommendations for reservation purchases.
%%
%% These recommendations might help you to
%% reduce your costs. Reservations provide a discounted hourly rate (up to
%% 75%) compared to
%% On-Demand pricing.
%%
%% Amazon Web Services generates your recommendations by identifying your
%% On-Demand usage
%% during a specific time period and collecting your usage into categories
%% that are eligible for
%% a reservation. After Amazon Web Services has these categories, it
%% simulates every combination
%% of reservations in each category of usage to identify the best number of
%% each type of Reserved
%% Instance (RI) to purchase to maximize your estimated savings.
%%
%% For example, Amazon Web Services automatically aggregates your Amazon EC2
%% Linux, shared
%% tenancy, and c4 family usage in the US West (Oregon) Region and recommends
%% that you buy
%% size-flexible regional reservations to apply to the c4 family usage.
%% Amazon Web Services
%% recommends the smallest size instance in an instance family. This makes it
%% easier to purchase
%% a size-flexible Reserved Instance (RI). Amazon Web Services also shows the
%% equal number of
%% normalized units. This way, you can purchase any instance size that you
%% want. For this
%% example, your RI recommendation is for `c4.large' because that is the
%% smallest size
%% instance in the c4 instance family.
get_reservation_purchase_recommendation(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_reservation_purchase_recommendation(Client, Input, []).
get_reservation_purchase_recommendation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetReservationPurchaseRecommendation">>, Input, Options).

%% @doc Retrieves the reservation utilization for your account.
%%
%% Management account in an
%% organization have access to member accounts. You can filter data by
%% dimensions in a time
%% period. You can use `GetDimensionValues' to determine the possible
%% dimension
%% values. Currently, you can group only by `SUBSCRIPTION_ID'.
get_reservation_utilization(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_reservation_utilization(Client, Input, []).
get_reservation_utilization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetReservationUtilization">>, Input, Options).

%% @doc Creates recommendations that help you save cost by identifying idle
%% and underutilized
%% Amazon EC2 instances.
%%
%% Recommendations are generated to either downsize or terminate instances,
%% along with
%% providing savings detail and metrics. For more information about
%% calculation and function, see
%% Optimizing Your Cost with Rightsizing Recommendations:
%% https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/ce-rightsizing.html
%% in the Billing and Cost Management User Guide.
get_rightsizing_recommendation(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_rightsizing_recommendation(Client, Input, []).
get_rightsizing_recommendation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRightsizingRecommendation">>, Input, Options).

%% @doc Retrieves the details for a Savings Plan recommendation.
%%
%% These details include the hourly
%% data-points that construct the cost, coverage, and utilization charts.
get_savings_plan_purchase_recommendation_details(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_savings_plan_purchase_recommendation_details(Client, Input, []).
get_savings_plan_purchase_recommendation_details(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSavingsPlanPurchaseRecommendationDetails">>, Input, Options).

%% @doc Retrieves the Savings Plans covered for your account.
%%
%% This enables you to see how much of
%% your cost is covered by a Savings Plan. An organization’s management
%% account can see the
%% coverage of the associated member accounts. This supports dimensions, Cost
%% Categories, and
%% nested expressions. For any time period, you can filter data for Savings
%% Plans usage with the
%% following dimensions:
%%
%% `LINKED_ACCOUNT'
%%
%% `REGION'
%%
%% `SERVICE'
%%
%% `INSTANCE_FAMILY'
%%
%% To determine valid values for a dimension, use the
%% `GetDimensionValues'
%% operation.
get_savings_plans_coverage(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_savings_plans_coverage(Client, Input, []).
get_savings_plans_coverage(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSavingsPlansCoverage">>, Input, Options).

%% @doc Retrieves the Savings Plans recommendations for your account.
%%
%% First use
%% `StartSavingsPlansPurchaseRecommendationGeneration' to generate a new
%% set of
%% recommendations, and then use `GetSavingsPlansPurchaseRecommendation'
%% to retrieve
%% them.
get_savings_plans_purchase_recommendation(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_savings_plans_purchase_recommendation(Client, Input, []).
get_savings_plans_purchase_recommendation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSavingsPlansPurchaseRecommendation">>, Input, Options).

%% @doc Retrieves the Savings Plans utilization for your account across date
%% ranges with daily or
%% monthly granularity.
%%
%% Management account in an organization have access to member accounts. You
%% can use `GetDimensionValues' in `SAVINGS_PLANS' to determine the
%% possible dimension values.
%%
%% You can't group by any dimension values for
%% `GetSavingsPlansUtilization'.
get_savings_plans_utilization(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_savings_plans_utilization(Client, Input, []).
get_savings_plans_utilization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSavingsPlansUtilization">>, Input, Options).

%% @doc Retrieves attribute data along with aggregate utilization and savings
%% data for a given
%% time period.
%%
%% This doesn't support granular or grouped data (daily/monthly) in
%% response. You
%% can't retrieve data by dates in a single response similar to
%% `GetSavingsPlanUtilization', but you have the option to make multiple
%% calls to
%% `GetSavingsPlanUtilizationDetails' by providing individual dates. You
%% can use
%% `GetDimensionValues' in `SAVINGS_PLANS' to determine the possible
%% dimension values.
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
%% You can search
%% the tag values for an arbitrary string.
get_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_tags(Client, Input, []).
get_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTags">>, Input, Options).

%% @doc Retrieves a forecast for how much Amazon Web Services predicts that
%% you will use
%% over the forecast time period that you select, based on your past usage.
get_usage_forecast(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_usage_forecast(Client, Input, []).
get_usage_forecast(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetUsageForecast">>, Input, Options).

%% @doc
%% Retrieves a list of your historical cost allocation tag backfill requests.
list_cost_allocation_tag_backfill_history(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_cost_allocation_tag_backfill_history(Client, Input, []).
list_cost_allocation_tag_backfill_history(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCostAllocationTagBackfillHistory">>, Input, Options).

%% @doc Get a list of cost allocation tags.
%%
%% All inputs in the API are optional and serve as
%% filters. By default, all cost allocation tags are returned.
list_cost_allocation_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_cost_allocation_tags(Client, Input, []).
list_cost_allocation_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCostAllocationTags">>, Input, Options).

%% @doc Returns the name, Amazon Resource Name (ARN), `NumberOfRules' and
%% effective
%% dates of all Cost Categories defined in the account.
%%
%% You have the option to use
%% `EffectiveOn' to return a list of Cost Categories that were active on
%% a specific
%% date. If there is no `EffectiveOn' specified, you’ll see Cost
%% Categories that are
%% effective on the current date. If Cost Category is still effective,
%% `EffectiveEnd'
%% is omitted in the response. `ListCostCategoryDefinitions' supports
%% pagination. The
%% request can have a `MaxResults' range up to 100.
list_cost_category_definitions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_cost_category_definitions(Client, Input, []).
list_cost_category_definitions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCostCategoryDefinitions">>, Input, Options).

%% @doc Retrieves a list of your historical recommendation generations within
%% the past 30
%% days.
list_savings_plans_purchase_recommendation_generation(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_savings_plans_purchase_recommendation_generation(Client, Input, []).
list_savings_plans_purchase_recommendation_generation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSavingsPlansPurchaseRecommendationGeneration">>, Input, Options).

%% @doc Returns a list of resource tags associated with the resource
%% specified by the Amazon
%% Resource Name (ARN).
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Modifies the feedback property of a given cost anomaly.
provide_anomaly_feedback(Client, Input)
  when is_map(Client), is_map(Input) ->
    provide_anomaly_feedback(Client, Input, []).
provide_anomaly_feedback(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ProvideAnomalyFeedback">>, Input, Options).

%% @doc
%% Request a cost allocation tag backfill.
%%
%% This will backfill the activation status (either `active' or
%% `inactive') for all tag keys from `para:BackfillFrom' up to the
%% when this request is made.
%%
%% You can request a backfill once every 24 hours.
start_cost_allocation_tag_backfill(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_cost_allocation_tag_backfill(Client, Input, []).
start_cost_allocation_tag_backfill(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartCostAllocationTagBackfill">>, Input, Options).

%% @doc Requests a Savings Plans recommendation generation.
%%
%% This enables you to calculate a fresh
%% set of Savings Plans recommendations that takes your latest usage data and
%% current Savings
%% Plans inventory into account. You can refresh Savings Plans
%% recommendations up to three times
%% daily for a consolidated billing family.
%%
%% `StartSavingsPlansPurchaseRecommendationGeneration' has no request
%% syntax
%% because no input parameters are needed to support this operation.
start_savings_plans_purchase_recommendation_generation(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_savings_plans_purchase_recommendation_generation(Client, Input, []).
start_savings_plans_purchase_recommendation_generation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartSavingsPlansPurchaseRecommendationGeneration">>, Input, Options).

%% @doc An API operation for adding one or more tags (key-value pairs) to a
%% resource.
%%
%% You can use the `TagResource' operation with a resource that already
%% has tags.
%% If you specify a new tag key for the resource, this tag is appended to the
%% list of tags
%% associated with the resource. If you specify a tag key that is already
%% associated with the
%% resource, the new tag value you specify replaces the previous value for
%% that tag.
%%
%% Although the maximum number of array members is 200, user-tag maximum is
%% 50. The remaining
%% are reserved for Amazon Web Services use.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Removes one or more tags from a resource.
%%
%% Specify only tag keys in your request. Don't
%% specify the value.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Updates an existing cost anomaly monitor.
%%
%% The changes made are applied going forward, and
%% doesn't change anomalies detected in the past.
update_anomaly_monitor(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_anomaly_monitor(Client, Input, []).
update_anomaly_monitor(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateAnomalyMonitor">>, Input, Options).

%% @doc Updates an existing cost anomaly subscription.
%%
%% Specify the fields that you want to update.
%% Omitted fields are unchanged.
%%
%% The JSON below describes the generic construct for each type. See Request
%% Parameters:
%% https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_UpdateAnomalySubscription.html#API_UpdateAnomalySubscription_RequestParameters
%% for possible values as they apply to
%% `AnomalySubscription'.
update_anomaly_subscription(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_anomaly_subscription(Client, Input, []).
update_anomaly_subscription(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateAnomalySubscription">>, Input, Options).

%% @doc Updates status for cost allocation tags in bulk, with maximum batch
%% size of 20.
%%
%% If the tag
%% status that's updated is the same as the existing tag status, the
%% request doesn't fail.
%% Instead, it doesn't have any effect on the tag status (for example,
%% activating the active
%% tag).
update_cost_allocation_tags_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_cost_allocation_tags_status(Client, Input, []).
update_cost_allocation_tags_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateCostAllocationTagsStatus">>, Input, Options).

%% @doc Updates an existing Cost Category.
%%
%% Changes made to the Cost Category rules will be used to
%% categorize the current month’s expenses and future expenses. This won’t
%% change categorization
%% for the previous months.
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
request(Client, Action, Input, Options) ->
    RequestFun = fun() -> do_request(Client, Action, Input, Options) end,
    aws_request:request(RequestFun, Options).

do_request(Client, Action, Input0, Options) ->
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
    Proto = aws_client:proto(Client),
    Port = aws_client:port(Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
