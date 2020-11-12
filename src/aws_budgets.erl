%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc The AWS Budgets API enables you to use AWS Budgets to plan your
%% service usage, service costs, and instance reservations.
%%
%% The API reference provides descriptions, syntax, and usage examples for
%% each of the actions and data types for AWS Budgets.
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
%% <ul> <li> Cost budgets - Plan how much you want to spend on a service.
%%
%% </li> <li> Usage budgets - Plan how much you want to use one or more
%% services.
%%
%% </li> <li> RI utilization budgets - Define a utilization threshold, and
%% receive alerts when your RI usage falls below that threshold. This lets
%% you see if your RIs are unused or under-utilized.
%%
%% </li> <li> RI coverage budgets - Define a coverage threshold, and receive
%% alerts when the number of your instance hours that are covered by RIs fall
%% below that threshold. This lets you see how much of your instance usage is
%% covered by a reservation.
%%
%% </li> </ul> Service Endpoint
%%
%% The AWS Budgets API provides the following endpoint:
%%
%% <ul> <li> https://budgets.amazonaws.com
%%
%% </li> </ul> For information about costs that are associated with the AWS
%% Budgets API, see AWS Cost Management Pricing.
-module(aws_budgets).

-export([create_budget/2,
         create_budget/3,
         create_budget_action/2,
         create_budget_action/3,
         create_notification/2,
         create_notification/3,
         create_subscriber/2,
         create_subscriber/3,
         delete_budget/2,
         delete_budget/3,
         delete_budget_action/2,
         delete_budget_action/3,
         delete_notification/2,
         delete_notification/3,
         delete_subscriber/2,
         delete_subscriber/3,
         describe_budget/2,
         describe_budget/3,
         describe_budget_action/2,
         describe_budget_action/3,
         describe_budget_action_histories/2,
         describe_budget_action_histories/3,
         describe_budget_actions_for_account/2,
         describe_budget_actions_for_account/3,
         describe_budget_actions_for_budget/2,
         describe_budget_actions_for_budget/3,
         describe_budget_performance_history/2,
         describe_budget_performance_history/3,
         describe_budgets/2,
         describe_budgets/3,
         describe_notifications_for_budget/2,
         describe_notifications_for_budget/3,
         describe_subscribers_for_notification/2,
         describe_subscribers_for_notification/3,
         execute_budget_action/2,
         execute_budget_action/3,
         update_budget/2,
         update_budget/3,
         update_budget_action/2,
         update_budget_action/3,
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
%% Only one of `BudgetLimit' or `PlannedBudgetLimits' can be present in the
%% syntax at one time. Use the syntax that matches your case. The Request
%% Syntax section shows the `BudgetLimit' syntax. For `PlannedBudgetLimits',
%% see the Examples section.
create_budget(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_budget(Client, Input, []).
create_budget(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateBudget">>, Input, Options).

%% @doc Creates a budget action.
create_budget_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_budget_action(Client, Input, []).
create_budget_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateBudgetAction">>, Input, Options).

%% @doc Creates a notification.
%%
%% You must create the budget before you create the associated notification.
create_notification(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_notification(Client, Input, []).
create_notification(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateNotification">>, Input, Options).

%% @doc Creates a subscriber.
%%
%% You must create the associated budget and notification before you create
%% the subscriber.
create_subscriber(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_subscriber(Client, Input, []).
create_subscriber(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSubscriber">>, Input, Options).

%% @doc Deletes a budget.
%%
%% You can delete your budget at any time.
%%
%% Deleting a budget also deletes the notifications and subscribers that are
%% associated with that budget.
delete_budget(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_budget(Client, Input, []).
delete_budget(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteBudget">>, Input, Options).

%% @doc Deletes a budget action.
delete_budget_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_budget_action(Client, Input, []).
delete_budget_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteBudgetAction">>, Input, Options).

%% @doc Deletes a notification.
%%
%% Deleting a notification also deletes the subscribers that are associated
%% with the notification.
delete_notification(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_notification(Client, Input, []).
delete_notification(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteNotification">>, Input, Options).

%% @doc Deletes a subscriber.
%%
%% Deleting the last subscriber to a notification also deletes the
%% notification.
delete_subscriber(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_subscriber(Client, Input, []).
delete_subscriber(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSubscriber">>, Input, Options).

%% @doc Describes a budget.
%%
%% The Request Syntax section shows the `BudgetLimit' syntax. For
%% `PlannedBudgetLimits', see the Examples section.
describe_budget(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_budget(Client, Input, []).
describe_budget(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeBudget">>, Input, Options).

%% @doc Describes a budget action detail.
describe_budget_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_budget_action(Client, Input, []).
describe_budget_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeBudgetAction">>, Input, Options).

%% @doc Describes a budget action history detail.
describe_budget_action_histories(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_budget_action_histories(Client, Input, []).
describe_budget_action_histories(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeBudgetActionHistories">>, Input, Options).

%% @doc Describes all of the budget actions for an account.
describe_budget_actions_for_account(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_budget_actions_for_account(Client, Input, []).
describe_budget_actions_for_account(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeBudgetActionsForAccount">>, Input, Options).

%% @doc Describes all of the budget actions for a budget.
describe_budget_actions_for_budget(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_budget_actions_for_budget(Client, Input, []).
describe_budget_actions_for_budget(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeBudgetActionsForBudget">>, Input, Options).

%% @doc Describes the history for `DAILY', `MONTHLY', and `QUARTERLY'
%% budgets.
%%
%% Budget history isn't available for `ANNUAL' budgets.
describe_budget_performance_history(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_budget_performance_history(Client, Input, []).
describe_budget_performance_history(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeBudgetPerformanceHistory">>, Input, Options).

%% @doc Lists the budgets that are associated with an account.
%%
%% The Request Syntax section shows the `BudgetLimit' syntax. For
%% `PlannedBudgetLimits', see the Examples section.
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

%% @doc Executes a budget action.
execute_budget_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    execute_budget_action(Client, Input, []).
execute_budget_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ExecuteBudgetAction">>, Input, Options).

%% @doc Updates a budget.
%%
%% You can change every part of a budget except for the `budgetName' and the
%% `calculatedSpend'. When you modify a budget, the `calculatedSpend' drops
%% to zero until AWS has new usage data to use for forecasting.
%%
%% Only one of `BudgetLimit' or `PlannedBudgetLimits' can be present in the
%% syntax at one time. Use the syntax that matches your case. The Request
%% Syntax section shows the `BudgetLimit' syntax. For `PlannedBudgetLimits',
%% see the Examples section.
update_budget(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_budget(Client, Input, []).
update_budget(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateBudget">>, Input, Options).

%% @doc Updates a budget action.
update_budget_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_budget_action(Client, Input, []).
update_budget_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateBudgetAction">>, Input, Options).

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
    Host = build_host(<<"budgets">>, Client1),
    URL = build_url(Host, Client1),
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
