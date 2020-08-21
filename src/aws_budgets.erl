%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc The AWS Budgets API enables you to use AWS Budgets to plan your
%% service usage, service costs, and instance reservations. The API reference
%% provides descriptions, syntax, and usage examples for each of the actions
%% and data types for AWS Budgets.
%%
%% Budgets provide you with a way to see the following information:
%%
%% <ul> <li> How close your plan is to your budgeted amount or to the free
%% tier limits
%%
%% </li> <li> Your usage-to-date, including how much you've used of your
%% Reserved Instances (RIs)
%%
%% </li> <li> Your current estimated charges from AWS, and how much your
%% predicted usage will accrue in charges by the end of the month
%%
%% </li> <li> How much of your budget has been used
%%
%% </li> </ul> AWS updates your budget status several times a day. Budgets
%% track your unblended costs, subscriptions, refunds, and RIs. You can
%% create the following types of budgets:
%%
%% <ul> <li> <b>Cost budgets</b> - Plan how much you want to spend on a
%% service.
%%
%% </li> <li> <b>Usage budgets</b> - Plan how much you want to use one or
%% more services.
%%
%% </li> <li> <b>RI utilization budgets</b> - Define a utilization threshold,
%% and receive alerts when your RI usage falls below that threshold. This
%% lets you see if your RIs are unused or under-utilized.
%%
%% </li> <li> <b>RI coverage budgets</b> - Define a coverage threshold, and
%% receive alerts when the number of your instance hours that are covered by
%% RIs fall below that threshold. This lets you see how much of your instance
%% usage is covered by a reservation.
%%
%% </li> </ul> Service Endpoint
%%
%% The AWS Budgets API provides the following endpoint:
%%
%% <ul> <li> https://budgets.amazonaws.com
%%
%% </li> </ul> For information about costs that are associated with the AWS
%% Budgets API, see <a
%% href="https://aws.amazon.com/aws-cost-management/pricing/">AWS Cost
%% Management Pricing</a>.
-module(aws_budgets).

-export([create_budget/2,
         create_budget/3,
         create_notification/2,
         create_notification/3,
         create_subscriber/2,
         create_subscriber/3,
         delete_budget/2,
         delete_budget/3,
         delete_notification/2,
         delete_notification/3,
         delete_subscriber/2,
         delete_subscriber/3,
         describe_budget/2,
         describe_budget/3,
         describe_budget_performance_history/2,
         describe_budget_performance_history/3,
         describe_budgets/2,
         describe_budgets/3,
         describe_notifications_for_budget/2,
         describe_notifications_for_budget/3,
         describe_subscribers_for_notification/2,
         describe_subscribers_for_notification/3,
         update_budget/2,
         update_budget/3,
         update_notification/2,
         update_notification/3,
         update_subscriber/2,
         update_subscriber/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a budget and, if included, notifications and subscribers.
%%
%% <important> Only one of <code>BudgetLimit</code> or
%% <code>PlannedBudgetLimits</code> can be present in the syntax at one time.
%% Use the syntax that matches your case. The Request Syntax section shows
%% the <code>BudgetLimit</code> syntax. For <code>PlannedBudgetLimits</code>,
%% see the <a
%% href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_budgets_CreateBudget.html#API_CreateBudget_Examples">Examples</a>
%% section.
%%
%% </important>
create_budget(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_budget(Client, Input, []).
create_budget(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateBudget">>, Input, Options).

%% @doc Creates a notification. You must create the budget before you create
%% the associated notification.
create_notification(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_notification(Client, Input, []).
create_notification(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateNotification">>, Input, Options).

%% @doc Creates a subscriber. You must create the associated budget and
%% notification before you create the subscriber.
create_subscriber(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_subscriber(Client, Input, []).
create_subscriber(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSubscriber">>, Input, Options).

%% @doc Deletes a budget. You can delete your budget at any time.
%%
%% <important> Deleting a budget also deletes the notifications and
%% subscribers that are associated with that budget.
%%
%% </important>
delete_budget(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_budget(Client, Input, []).
delete_budget(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteBudget">>, Input, Options).

%% @doc Deletes a notification.
%%
%% <important> Deleting a notification also deletes the subscribers that are
%% associated with the notification.
%%
%% </important>
delete_notification(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_notification(Client, Input, []).
delete_notification(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteNotification">>, Input, Options).

%% @doc Deletes a subscriber.
%%
%% <important> Deleting the last subscriber to a notification also deletes
%% the notification.
%%
%% </important>
delete_subscriber(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_subscriber(Client, Input, []).
delete_subscriber(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSubscriber">>, Input, Options).

%% @doc Describes a budget.
%%
%% <important> The Request Syntax section shows the <code>BudgetLimit</code>
%% syntax. For <code>PlannedBudgetLimits</code>, see the <a
%% href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_budgets_DescribeBudget.html#API_DescribeBudget_Examples">Examples</a>
%% section.
%%
%% </important>
describe_budget(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_budget(Client, Input, []).
describe_budget(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeBudget">>, Input, Options).

%% @doc Describes the history for <code>DAILY</code>, <code>MONTHLY</code>,
%% and <code>QUARTERLY</code> budgets. Budget history isn't available for
%% <code>ANNUAL</code> budgets.
describe_budget_performance_history(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_budget_performance_history(Client, Input, []).
describe_budget_performance_history(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeBudgetPerformanceHistory">>, Input, Options).

%% @doc Lists the budgets that are associated with an account.
%%
%% <important> The Request Syntax section shows the <code>BudgetLimit</code>
%% syntax. For <code>PlannedBudgetLimits</code>, see the <a
%% href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_budgets_DescribeBudgets.html#API_DescribeBudgets_Examples">Examples</a>
%% section.
%%
%% </important>
describe_budgets(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_budgets(Client, Input, []).
describe_budgets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeBudgets">>, Input, Options).

%% @doc Lists the notifications that are associated with a budget.
describe_notifications_for_budget(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_notifications_for_budget(Client, Input, []).
describe_notifications_for_budget(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeNotificationsForBudget">>, Input, Options).

%% @doc Lists the subscribers that are associated with a notification.
describe_subscribers_for_notification(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_subscribers_for_notification(Client, Input, []).
describe_subscribers_for_notification(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSubscribersForNotification">>, Input, Options).

%% @doc Updates a budget. You can change every part of a budget except for
%% the <code>budgetName</code> and the <code>calculatedSpend</code>. When you
%% modify a budget, the <code>calculatedSpend</code> drops to zero until AWS
%% has new usage data to use for forecasting.
%%
%% <important> Only one of <code>BudgetLimit</code> or
%% <code>PlannedBudgetLimits</code> can be present in the syntax at one time.
%% Use the syntax that matches your case. The Request Syntax section shows
%% the <code>BudgetLimit</code> syntax. For <code>PlannedBudgetLimits</code>,
%% see the <a
%% href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_budgets_UpdateBudget.html#API_UpdateBudget_Examples">Examples</a>
%% section.
%%
%% </important>
update_budget(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_budget(Client, Input, []).
update_budget(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateBudget">>, Input, Options).

%% @doc Updates a notification.
update_notification(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_notification(Client, Input, []).
update_notification(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateNotification">>, Input, Options).

%% @doc Updates a subscriber.
update_subscriber(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_subscriber(Client, Input, []).
update_subscriber(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateSubscriber">>, Input, Options).

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
    Client1 = Client#{service => <<"budgets">>,
                      region => <<"us-east-1">>},
    Host = get_host(<<"budgets">>, Client1),
    URL = get_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"AWSBudgetServiceGateway.", Action/binary>>}
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

get_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
get_host(EndpointPrefix, #{endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Endpoint], <<".">>).

get_url(Host, Client) ->
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
