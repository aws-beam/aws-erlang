%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc You can use the Amazon Web Services Free Tier API to query
%% programmatically your Free Tier usage data.
%%
%% Free Tier tracks your monthly usage data for all free tier offers that are
%% associated with your Amazon Web Services account. You can use the Free
%% Tier API to filter and show only the data that you want.
%%
%% Service endpoint
%%
%% The Free Tier API provides the following endpoint:
%%
%% For more information, see Using the Amazon Web Services Free Tier:
%% https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/billing-free-tier.html
%% in the Billing User Guide.
-module(aws_freetier).

-export([get_account_activity/2,
         get_account_activity/3,
         get_account_plan_state/2,
         get_account_plan_state/3,
         get_free_tier_usage/2,
         get_free_tier_usage/3,
         list_account_activities/2,
         list_account_activities/3,
         upgrade_account_plan/2,
         upgrade_account_plan/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% activity_summary() :: #{
%%   <<"activityId">> => string(),
%%   <<"reward">> => list(),
%%   <<"status">> => list(any()),
%%   <<"title">> => string()
%% }
-type activity_summary() :: #{binary() => any()}.

%% Example:
%% dimension_values() :: #{
%%   <<"Key">> => list(any()),
%%   <<"MatchOptions">> => list(list(any())()),
%%   <<"Values">> => list(string()())
%% }
-type dimension_values() :: #{binary() => any()}.

%% Example:
%% expression() :: #{
%%   <<"And">> => list(expression()()),
%%   <<"Dimensions">> => dimension_values(),
%%   <<"Not">> => expression(),
%%   <<"Or">> => list(expression()())
%% }
-type expression() :: #{binary() => any()}.

%% Example:
%% free_tier_usage() :: #{
%%   <<"actualUsageAmount">> => float(),
%%   <<"description">> => string(),
%%   <<"forecastedUsageAmount">> => float(),
%%   <<"freeTierType">> => string(),
%%   <<"limit">> => float(),
%%   <<"operation">> => string(),
%%   <<"region">> => string(),
%%   <<"service">> => string(),
%%   <<"unit">> => string(),
%%   <<"usageType">> => string()
%% }
-type free_tier_usage() :: #{binary() => any()}.

%% Example:
%% get_account_activity_request() :: #{
%%   <<"activityId">> := string(),
%%   <<"languageCode">> => list(any())
%% }
-type get_account_activity_request() :: #{binary() => any()}.

%% Example:
%% get_account_activity_response() :: #{
%%   <<"activityId">> => string(),
%%   <<"completedAt">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"estimatedTimeToCompleteInMinutes">> => [integer()],
%%   <<"expiresAt">> => [non_neg_integer()],
%%   <<"instructionsUrl">> => string(),
%%   <<"reward">> => list(),
%%   <<"startedAt">> => [non_neg_integer()],
%%   <<"status">> => list(any()),
%%   <<"title">> => string()
%% }
-type get_account_activity_response() :: #{binary() => any()}.

%% Example:
%% get_account_plan_state_request() :: #{

%% }
-type get_account_plan_state_request() :: #{binary() => any()}.

%% Example:
%% get_account_plan_state_response() :: #{
%%   <<"accountId">> => string(),
%%   <<"accountPlanExpirationDate">> => [non_neg_integer()],
%%   <<"accountPlanRemainingCredits">> => monetary_amount(),
%%   <<"accountPlanStatus">> => list(any()),
%%   <<"accountPlanType">> => list(any())
%% }
-type get_account_plan_state_response() :: #{binary() => any()}.

%% Example:
%% get_free_tier_usage_request() :: #{
%%   <<"filter">> => expression(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type get_free_tier_usage_request() :: #{binary() => any()}.

%% Example:
%% get_free_tier_usage_response() :: #{
%%   <<"freeTierUsages">> => list(free_tier_usage()()),
%%   <<"nextToken">> => string()
%% }
-type get_free_tier_usage_response() :: #{binary() => any()}.

%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% list_account_activities_request() :: #{
%%   <<"filterActivityStatuses">> => list(list(any())()),
%%   <<"languageCode">> => list(any()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_account_activities_request() :: #{binary() => any()}.

%% Example:
%% list_account_activities_response() :: #{
%%   <<"activities">> => list(activity_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_account_activities_response() :: #{binary() => any()}.

%% Example:
%% monetary_amount() :: #{
%%   <<"amount">> => float(),
%%   <<"unit">> => list(any())
%% }
-type monetary_amount() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% upgrade_account_plan_request() :: #{
%%   <<"accountPlanType">> := list(any())
%% }
-type upgrade_account_plan_request() :: #{binary() => any()}.

%% Example:
%% upgrade_account_plan_response() :: #{
%%   <<"accountId">> => string(),
%%   <<"accountPlanStatus">> => list(any()),
%%   <<"accountPlanType">> => list(any())
%% }
-type upgrade_account_plan_response() :: #{binary() => any()}.

%% Example:
%% validation_exception() :: #{
%%   <<"message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

-type get_account_activity_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception().

-type get_account_plan_state_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type get_free_tier_usage_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception().

-type list_account_activities_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception().

-type upgrade_account_plan_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Returns a specific activity record that is available to the customer.
-spec get_account_activity(aws_client:aws_client(), get_account_activity_request()) ->
    {ok, get_account_activity_response(), tuple()} |
    {error, any()} |
    {error, get_account_activity_errors(), tuple()}.
get_account_activity(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_account_activity(Client, Input, []).

-spec get_account_activity(aws_client:aws_client(), get_account_activity_request(), proplists:proplist()) ->
    {ok, get_account_activity_response(), tuple()} |
    {error, any()} |
    {error, get_account_activity_errors(), tuple()}.
get_account_activity(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAccountActivity">>, Input, Options).

%% @doc This returns all of the information related to the state of the
%% account plan related to Free Tier.
-spec get_account_plan_state(aws_client:aws_client(), get_account_plan_state_request()) ->
    {ok, get_account_plan_state_response(), tuple()} |
    {error, any()} |
    {error, get_account_plan_state_errors(), tuple()}.
get_account_plan_state(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_account_plan_state(Client, Input, []).

-spec get_account_plan_state(aws_client:aws_client(), get_account_plan_state_request(), proplists:proplist()) ->
    {ok, get_account_plan_state_response(), tuple()} |
    {error, any()} |
    {error, get_account_plan_state_errors(), tuple()}.
get_account_plan_state(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAccountPlanState">>, Input, Options).

%% @doc Returns a list of all Free Tier usage objects that match your
%% filters.
-spec get_free_tier_usage(aws_client:aws_client(), get_free_tier_usage_request()) ->
    {ok, get_free_tier_usage_response(), tuple()} |
    {error, any()} |
    {error, get_free_tier_usage_errors(), tuple()}.
get_free_tier_usage(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_free_tier_usage(Client, Input, []).

-spec get_free_tier_usage(aws_client:aws_client(), get_free_tier_usage_request(), proplists:proplist()) ->
    {ok, get_free_tier_usage_response(), tuple()} |
    {error, any()} |
    {error, get_free_tier_usage_errors(), tuple()}.
get_free_tier_usage(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetFreeTierUsage">>, Input, Options).

%% @doc Returns a list of activities that are available.
%%
%% This operation supports pagination and filtering by status.
-spec list_account_activities(aws_client:aws_client(), list_account_activities_request()) ->
    {ok, list_account_activities_response(), tuple()} |
    {error, any()} |
    {error, list_account_activities_errors(), tuple()}.
list_account_activities(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_account_activities(Client, Input, []).

-spec list_account_activities(aws_client:aws_client(), list_account_activities_request(), proplists:proplist()) ->
    {ok, list_account_activities_response(), tuple()} |
    {error, any()} |
    {error, list_account_activities_errors(), tuple()}.
list_account_activities(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAccountActivities">>, Input, Options).

%% @doc The account plan type for the Amazon Web Services account.
-spec upgrade_account_plan(aws_client:aws_client(), upgrade_account_plan_request()) ->
    {ok, upgrade_account_plan_response(), tuple()} |
    {error, any()} |
    {error, upgrade_account_plan_errors(), tuple()}.
upgrade_account_plan(Client, Input)
  when is_map(Client), is_map(Input) ->
    upgrade_account_plan(Client, Input, []).

-spec upgrade_account_plan(aws_client:aws_client(), upgrade_account_plan_request(), proplists:proplist()) ->
    {ok, upgrade_account_plan_response(), tuple()} |
    {error, any()} |
    {error, upgrade_account_plan_errors(), tuple()}.
upgrade_account_plan(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpgradeAccountPlan">>, Input, Options).

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
    Client1 = Client#{service => <<"freetier">>},
    Host = build_host(<<"freetier">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
        {<<"X-Amz-Target">>, <<"AWSFreeTierService.", Action/binary>>}
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
