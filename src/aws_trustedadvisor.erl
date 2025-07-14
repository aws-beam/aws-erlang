%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc TrustedAdvisor Public API
-module(aws_trustedadvisor).

-export([batch_update_recommendation_resource_exclusion/2,
         batch_update_recommendation_resource_exclusion/3,
         get_organization_recommendation/2,
         get_organization_recommendation/4,
         get_organization_recommendation/5,
         get_recommendation/2,
         get_recommendation/4,
         get_recommendation/5,
         list_checks/1,
         list_checks/3,
         list_checks/4,
         list_organization_recommendation_accounts/2,
         list_organization_recommendation_accounts/4,
         list_organization_recommendation_accounts/5,
         list_organization_recommendation_resources/2,
         list_organization_recommendation_resources/4,
         list_organization_recommendation_resources/5,
         list_organization_recommendations/1,
         list_organization_recommendations/3,
         list_organization_recommendations/4,
         list_recommendation_resources/2,
         list_recommendation_resources/4,
         list_recommendation_resources/5,
         list_recommendations/1,
         list_recommendations/3,
         list_recommendations/4,
         update_organization_recommendation_lifecycle/3,
         update_organization_recommendation_lifecycle/4,
         update_recommendation_lifecycle/3,
         update_recommendation_lifecycle/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% recommendation_resource_exclusion() :: #{
%%   <<"arn">> => string(),
%%   <<"isExcluded">> => [boolean()]
%% }
-type recommendation_resource_exclusion() :: #{binary() => any()}.


%% Example:
%% recommendation_pillar_specific_aggregates() :: #{
%%   <<"costOptimizing">> => recommendation_cost_optimizing_aggregates()
%% }
-type recommendation_pillar_specific_aggregates() :: #{binary() => any()}.


%% Example:
%% list_organization_recommendation_accounts_response() :: #{
%%   <<"accountRecommendationLifecycleSummaries">> => list(account_recommendation_lifecycle_summary()),
%%   <<"nextToken">> => [string()]
%% }
-type list_organization_recommendation_accounts_response() :: #{binary() => any()}.


%% Example:
%% list_checks_response() :: #{
%%   <<"checkSummaries">> => list(check_summary()),
%%   <<"nextToken">> => [string()]
%% }
-type list_checks_response() :: #{binary() => any()}.

%% Example:
%% get_recommendation_request() :: #{}
-type get_recommendation_request() :: #{}.


%% Example:
%% organization_recommendation_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"awsServices">> => list(string()),
%%   <<"checkArn">> => [string()],
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"id">> => [string()],
%%   <<"lastUpdatedAt">> => [non_neg_integer()],
%%   <<"lifecycleStage">> => list(any()),
%%   <<"name">> => [string()],
%%   <<"pillarSpecificAggregates">> => recommendation_pillar_specific_aggregates(),
%%   <<"pillars">> => list(list(any())()),
%%   <<"resourcesAggregates">> => recommendation_resources_aggregates(),
%%   <<"source">> => list(any()),
%%   <<"status">> => list(any()),
%%   <<"type">> => list(any())
%% }
-type organization_recommendation_summary() :: #{binary() => any()}.


%% Example:
%% update_recommendation_lifecycle_request() :: #{
%%   <<"lifecycleStage">> := list(any()),
%%   <<"updateReason">> => string(),
%%   <<"updateReasonCode">> => list(any())
%% }
-type update_recommendation_lifecycle_request() :: #{binary() => any()}.


%% Example:
%% batch_update_recommendation_resource_exclusion_request() :: #{
%%   <<"recommendationResourceExclusions">> := list(recommendation_resource_exclusion())
%% }
-type batch_update_recommendation_resource_exclusion_request() :: #{binary() => any()}.


%% Example:
%% recommendation_resources_aggregates() :: #{
%%   <<"errorCount">> => [float()],
%%   <<"okCount">> => [float()],
%%   <<"warningCount">> => [float()]
%% }
-type recommendation_resources_aggregates() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% list_recommendation_resources_response() :: #{
%%   <<"nextToken">> => [string()],
%%   <<"recommendationResourceSummaries">> => list(recommendation_resource_summary())
%% }
-type list_recommendation_resources_response() :: #{binary() => any()}.


%% Example:
%% recommendation() :: #{
%%   <<"arn">> => string(),
%%   <<"awsServices">> => list(string()),
%%   <<"checkArn">> => [string()],
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"createdBy">> => [string()],
%%   <<"description">> => [string()],
%%   <<"id">> => [string()],
%%   <<"lastUpdatedAt">> => [non_neg_integer()],
%%   <<"lifecycleStage">> => list(any()),
%%   <<"name">> => [string()],
%%   <<"pillarSpecificAggregates">> => recommendation_pillar_specific_aggregates(),
%%   <<"pillars">> => list(list(any())()),
%%   <<"resolvedAt">> => [non_neg_integer()],
%%   <<"resourcesAggregates">> => recommendation_resources_aggregates(),
%%   <<"source">> => list(any()),
%%   <<"status">> => list(any()),
%%   <<"type">> => list(any()),
%%   <<"updateReason">> => string(),
%%   <<"updateReasonCode">> => list(any()),
%%   <<"updatedOnBehalfOf">> => [string()],
%%   <<"updatedOnBehalfOfJobTitle">> => [string()]
%% }
-type recommendation() :: #{binary() => any()}.


%% Example:
%% list_checks_request() :: #{
%%   <<"awsService">> => string(),
%%   <<"language">> => list(any()),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()],
%%   <<"pillar">> => list(any()),
%%   <<"source">> => list(any())
%% }
-type list_checks_request() :: #{binary() => any()}.


%% Example:
%% account_recommendation_lifecycle_summary() :: #{
%%   <<"accountId">> => string(),
%%   <<"accountRecommendationArn">> => string(),
%%   <<"lastUpdatedAt">> => [non_neg_integer()],
%%   <<"lifecycleStage">> => list(any()),
%%   <<"updateReason">> => string(),
%%   <<"updateReasonCode">> => list(any()),
%%   <<"updatedOnBehalfOf">> => [string()],
%%   <<"updatedOnBehalfOfJobTitle">> => [string()]
%% }
-type account_recommendation_lifecycle_summary() :: #{binary() => any()}.

%% Example:
%% get_organization_recommendation_request() :: #{}
-type get_organization_recommendation_request() :: #{}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% list_organization_recommendations_response() :: #{
%%   <<"nextToken">> => [string()],
%%   <<"organizationRecommendationSummaries">> => list(organization_recommendation_summary())
%% }
-type list_organization_recommendations_response() :: #{binary() => any()}.


%% Example:
%% list_organization_recommendation_accounts_request() :: #{
%%   <<"affectedAccountId">> => string(),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()]
%% }
-type list_organization_recommendation_accounts_request() :: #{binary() => any()}.


%% Example:
%% batch_update_recommendation_resource_exclusion_response() :: #{
%%   <<"batchUpdateRecommendationResourceExclusionErrors">> => list(update_recommendation_resource_exclusion_error())
%% }
-type batch_update_recommendation_resource_exclusion_response() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% list_recommendation_resources_request() :: #{
%%   <<"exclusionStatus">> => list(any()),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()],
%%   <<"regionCode">> => [string()],
%%   <<"status">> => list(any())
%% }
-type list_recommendation_resources_request() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type validation_exception() :: #{binary() => any()}.


%% Example:
%% list_organization_recommendation_resources_response() :: #{
%%   <<"nextToken">> => [string()],
%%   <<"organizationRecommendationResourceSummaries">> => list(organization_recommendation_resource_summary())
%% }
-type list_organization_recommendation_resources_response() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% update_organization_recommendation_lifecycle_request() :: #{
%%   <<"lifecycleStage">> := list(any()),
%%   <<"updateReason">> => string(),
%%   <<"updateReasonCode">> => list(any())
%% }
-type update_organization_recommendation_lifecycle_request() :: #{binary() => any()}.


%% Example:
%% get_organization_recommendation_response() :: #{
%%   <<"organizationRecommendation">> => organization_recommendation()
%% }
-type get_organization_recommendation_response() :: #{binary() => any()}.


%% Example:
%% list_organization_recommendation_resources_request() :: #{
%%   <<"affectedAccountId">> => string(),
%%   <<"exclusionStatus">> => list(any()),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()],
%%   <<"regionCode">> => [string()],
%%   <<"status">> => list(any())
%% }
-type list_organization_recommendation_resources_request() :: #{binary() => any()}.


%% Example:
%% list_organization_recommendations_request() :: #{
%%   <<"afterLastUpdatedAt">> => [non_neg_integer()],
%%   <<"awsService">> => string(),
%%   <<"beforeLastUpdatedAt">> => [non_neg_integer()],
%%   <<"checkIdentifier">> => string(),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()],
%%   <<"pillar">> => list(any()),
%%   <<"source">> => list(any()),
%%   <<"status">> => list(any()),
%%   <<"type">> => list(any())
%% }
-type list_organization_recommendations_request() :: #{binary() => any()}.


%% Example:
%% check_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"awsServices">> => list(string()),
%%   <<"description">> => [string()],
%%   <<"id">> => [string()],
%%   <<"metadata">> => map(),
%%   <<"name">> => [string()],
%%   <<"pillars">> => list(list(any())()),
%%   <<"source">> => list(any())
%% }
-type check_summary() :: #{binary() => any()}.


%% Example:
%% recommendation_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"awsServices">> => list(string()),
%%   <<"checkArn">> => [string()],
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"id">> => [string()],
%%   <<"lastUpdatedAt">> => [non_neg_integer()],
%%   <<"lifecycleStage">> => list(any()),
%%   <<"name">> => [string()],
%%   <<"pillarSpecificAggregates">> => recommendation_pillar_specific_aggregates(),
%%   <<"pillars">> => list(list(any())()),
%%   <<"resourcesAggregates">> => recommendation_resources_aggregates(),
%%   <<"source">> => list(any()),
%%   <<"status">> => list(any()),
%%   <<"type">> => list(any())
%% }
-type recommendation_summary() :: #{binary() => any()}.


%% Example:
%% update_recommendation_resource_exclusion_error() :: #{
%%   <<"arn">> => string(),
%%   <<"errorCode">> => [string()],
%%   <<"errorMessage">> => [string()]
%% }
-type update_recommendation_resource_exclusion_error() :: #{binary() => any()}.


%% Example:
%% organization_recommendation_resource_summary() :: #{
%%   <<"accountId">> => string(),
%%   <<"arn">> => string(),
%%   <<"awsResourceId">> => [string()],
%%   <<"exclusionStatus">> => list(any()),
%%   <<"id">> => [string()],
%%   <<"lastUpdatedAt">> => [non_neg_integer()],
%%   <<"metadata">> => map(),
%%   <<"recommendationArn">> => string(),
%%   <<"regionCode">> => string(),
%%   <<"status">> => list(any())
%% }
-type organization_recommendation_resource_summary() :: #{binary() => any()}.


%% Example:
%% list_recommendations_response() :: #{
%%   <<"nextToken">> => [string()],
%%   <<"recommendationSummaries">> => list(recommendation_summary())
%% }
-type list_recommendations_response() :: #{binary() => any()}.


%% Example:
%% recommendation_cost_optimizing_aggregates() :: #{
%%   <<"estimatedMonthlySavings">> => [float()],
%%   <<"estimatedPercentMonthlySavings">> => [float()]
%% }
-type recommendation_cost_optimizing_aggregates() :: #{binary() => any()}.


%% Example:
%% get_recommendation_response() :: #{
%%   <<"recommendation">> => recommendation()
%% }
-type get_recommendation_response() :: #{binary() => any()}.


%% Example:
%% organization_recommendation() :: #{
%%   <<"arn">> => string(),
%%   <<"awsServices">> => list(string()),
%%   <<"checkArn">> => [string()],
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"createdBy">> => [string()],
%%   <<"description">> => [string()],
%%   <<"id">> => [string()],
%%   <<"lastUpdatedAt">> => [non_neg_integer()],
%%   <<"lifecycleStage">> => list(any()),
%%   <<"name">> => [string()],
%%   <<"pillarSpecificAggregates">> => recommendation_pillar_specific_aggregates(),
%%   <<"pillars">> => list(list(any())()),
%%   <<"resolvedAt">> => [non_neg_integer()],
%%   <<"resourcesAggregates">> => recommendation_resources_aggregates(),
%%   <<"source">> => list(any()),
%%   <<"status">> => list(any()),
%%   <<"type">> => list(any()),
%%   <<"updateReason">> => string(),
%%   <<"updateReasonCode">> => list(any()),
%%   <<"updatedOnBehalfOf">> => [string()],
%%   <<"updatedOnBehalfOfJobTitle">> => [string()]
%% }
-type organization_recommendation() :: #{binary() => any()}.


%% Example:
%% recommendation_resource_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"awsResourceId">> => [string()],
%%   <<"exclusionStatus">> => list(any()),
%%   <<"id">> => [string()],
%%   <<"lastUpdatedAt">> => [non_neg_integer()],
%%   <<"metadata">> => map(),
%%   <<"recommendationArn">> => string(),
%%   <<"regionCode">> => string(),
%%   <<"status">> => list(any())
%% }
-type recommendation_resource_summary() :: #{binary() => any()}.


%% Example:
%% list_recommendations_request() :: #{
%%   <<"afterLastUpdatedAt">> => [non_neg_integer()],
%%   <<"awsService">> => string(),
%%   <<"beforeLastUpdatedAt">> => [non_neg_integer()],
%%   <<"checkIdentifier">> => string(),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()],
%%   <<"pillar">> => list(any()),
%%   <<"source">> => list(any()),
%%   <<"status">> => list(any()),
%%   <<"type">> => list(any())
%% }
-type list_recommendations_request() :: #{binary() => any()}.

-type batch_update_recommendation_resource_exclusion_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type get_organization_recommendation_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_recommendation_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_checks_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_organization_recommendation_accounts_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_organization_recommendation_resources_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_organization_recommendations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_recommendation_resources_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_recommendations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type update_organization_recommendation_lifecycle_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_recommendation_lifecycle_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Update one or more exclusion status for a list of recommendation
%% resources
-spec batch_update_recommendation_resource_exclusion(aws_client:aws_client(), batch_update_recommendation_resource_exclusion_request()) ->
    {ok, batch_update_recommendation_resource_exclusion_response(), tuple()} |
    {error, any()} |
    {error, batch_update_recommendation_resource_exclusion_errors(), tuple()}.
batch_update_recommendation_resource_exclusion(Client, Input) ->
    batch_update_recommendation_resource_exclusion(Client, Input, []).

-spec batch_update_recommendation_resource_exclusion(aws_client:aws_client(), batch_update_recommendation_resource_exclusion_request(), proplists:proplist()) ->
    {ok, batch_update_recommendation_resource_exclusion_response(), tuple()} |
    {error, any()} |
    {error, batch_update_recommendation_resource_exclusion_errors(), tuple()}.
batch_update_recommendation_resource_exclusion(Client, Input0, Options0) ->
    Method = put,
    Path = ["/v1/batch-update-recommendation-resource-exclusion"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Get a specific recommendation within an AWS Organizations
%% organization.
%%
%% This API supports only prioritized
%% recommendations.
-spec get_organization_recommendation(aws_client:aws_client(), binary() | list()) ->
    {ok, get_organization_recommendation_response(), tuple()} |
    {error, any()} |
    {error, get_organization_recommendation_errors(), tuple()}.
get_organization_recommendation(Client, OrganizationRecommendationIdentifier)
  when is_map(Client) ->
    get_organization_recommendation(Client, OrganizationRecommendationIdentifier, #{}, #{}).

-spec get_organization_recommendation(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_organization_recommendation_response(), tuple()} |
    {error, any()} |
    {error, get_organization_recommendation_errors(), tuple()}.
get_organization_recommendation(Client, OrganizationRecommendationIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_organization_recommendation(Client, OrganizationRecommendationIdentifier, QueryMap, HeadersMap, []).

-spec get_organization_recommendation(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_organization_recommendation_response(), tuple()} |
    {error, any()} |
    {error, get_organization_recommendation_errors(), tuple()}.
get_organization_recommendation(Client, OrganizationRecommendationIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/organization-recommendations/", aws_util:encode_uri(OrganizationRecommendationIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get a specific Recommendation
-spec get_recommendation(aws_client:aws_client(), binary() | list()) ->
    {ok, get_recommendation_response(), tuple()} |
    {error, any()} |
    {error, get_recommendation_errors(), tuple()}.
get_recommendation(Client, RecommendationIdentifier)
  when is_map(Client) ->
    get_recommendation(Client, RecommendationIdentifier, #{}, #{}).

-spec get_recommendation(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_recommendation_response(), tuple()} |
    {error, any()} |
    {error, get_recommendation_errors(), tuple()}.
get_recommendation(Client, RecommendationIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_recommendation(Client, RecommendationIdentifier, QueryMap, HeadersMap, []).

-spec get_recommendation(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_recommendation_response(), tuple()} |
    {error, any()} |
    {error, get_recommendation_errors(), tuple()}.
get_recommendation(Client, RecommendationIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/recommendations/", aws_util:encode_uri(RecommendationIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List a filterable set of Checks
-spec list_checks(aws_client:aws_client()) ->
    {ok, list_checks_response(), tuple()} |
    {error, any()} |
    {error, list_checks_errors(), tuple()}.
list_checks(Client)
  when is_map(Client) ->
    list_checks(Client, #{}, #{}).

-spec list_checks(aws_client:aws_client(), map(), map()) ->
    {ok, list_checks_response(), tuple()} |
    {error, any()} |
    {error, list_checks_errors(), tuple()}.
list_checks(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_checks(Client, QueryMap, HeadersMap, []).

-spec list_checks(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_checks_response(), tuple()} |
    {error, any()} |
    {error, list_checks_errors(), tuple()}.
list_checks(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/checks"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"awsService">>, maps:get(<<"awsService">>, QueryMap, undefined)},
        {<<"language">>, maps:get(<<"language">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"pillar">>, maps:get(<<"pillar">>, QueryMap, undefined)},
        {<<"source">>, maps:get(<<"source">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the accounts that own the resources for an organization
%% aggregate recommendation.
%%
%% This API only
%% supports prioritized recommendations.
-spec list_organization_recommendation_accounts(aws_client:aws_client(), binary() | list()) ->
    {ok, list_organization_recommendation_accounts_response(), tuple()} |
    {error, any()} |
    {error, list_organization_recommendation_accounts_errors(), tuple()}.
list_organization_recommendation_accounts(Client, OrganizationRecommendationIdentifier)
  when is_map(Client) ->
    list_organization_recommendation_accounts(Client, OrganizationRecommendationIdentifier, #{}, #{}).

-spec list_organization_recommendation_accounts(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_organization_recommendation_accounts_response(), tuple()} |
    {error, any()} |
    {error, list_organization_recommendation_accounts_errors(), tuple()}.
list_organization_recommendation_accounts(Client, OrganizationRecommendationIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_organization_recommendation_accounts(Client, OrganizationRecommendationIdentifier, QueryMap, HeadersMap, []).

-spec list_organization_recommendation_accounts(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_organization_recommendation_accounts_response(), tuple()} |
    {error, any()} |
    {error, list_organization_recommendation_accounts_errors(), tuple()}.
list_organization_recommendation_accounts(Client, OrganizationRecommendationIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/organization-recommendations/", aws_util:encode_uri(OrganizationRecommendationIdentifier), "/accounts"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"affectedAccountId">>, maps:get(<<"affectedAccountId">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List Resources of a Recommendation within an Organization.
%%
%% This API only supports prioritized
%% recommendations.
-spec list_organization_recommendation_resources(aws_client:aws_client(), binary() | list()) ->
    {ok, list_organization_recommendation_resources_response(), tuple()} |
    {error, any()} |
    {error, list_organization_recommendation_resources_errors(), tuple()}.
list_organization_recommendation_resources(Client, OrganizationRecommendationIdentifier)
  when is_map(Client) ->
    list_organization_recommendation_resources(Client, OrganizationRecommendationIdentifier, #{}, #{}).

-spec list_organization_recommendation_resources(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_organization_recommendation_resources_response(), tuple()} |
    {error, any()} |
    {error, list_organization_recommendation_resources_errors(), tuple()}.
list_organization_recommendation_resources(Client, OrganizationRecommendationIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_organization_recommendation_resources(Client, OrganizationRecommendationIdentifier, QueryMap, HeadersMap, []).

-spec list_organization_recommendation_resources(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_organization_recommendation_resources_response(), tuple()} |
    {error, any()} |
    {error, list_organization_recommendation_resources_errors(), tuple()}.
list_organization_recommendation_resources(Client, OrganizationRecommendationIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/organization-recommendations/", aws_util:encode_uri(OrganizationRecommendationIdentifier), "/resources"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"affectedAccountId">>, maps:get(<<"affectedAccountId">>, QueryMap, undefined)},
        {<<"exclusionStatus">>, maps:get(<<"exclusionStatus">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"regionCode">>, maps:get(<<"regionCode">>, QueryMap, undefined)},
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List a filterable set of Recommendations within an Organization.
%%
%% This API only supports prioritized
%% recommendations.
-spec list_organization_recommendations(aws_client:aws_client()) ->
    {ok, list_organization_recommendations_response(), tuple()} |
    {error, any()} |
    {error, list_organization_recommendations_errors(), tuple()}.
list_organization_recommendations(Client)
  when is_map(Client) ->
    list_organization_recommendations(Client, #{}, #{}).

-spec list_organization_recommendations(aws_client:aws_client(), map(), map()) ->
    {ok, list_organization_recommendations_response(), tuple()} |
    {error, any()} |
    {error, list_organization_recommendations_errors(), tuple()}.
list_organization_recommendations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_organization_recommendations(Client, QueryMap, HeadersMap, []).

-spec list_organization_recommendations(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_organization_recommendations_response(), tuple()} |
    {error, any()} |
    {error, list_organization_recommendations_errors(), tuple()}.
list_organization_recommendations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/organization-recommendations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"afterLastUpdatedAt">>, maps:get(<<"afterLastUpdatedAt">>, QueryMap, undefined)},
        {<<"awsService">>, maps:get(<<"awsService">>, QueryMap, undefined)},
        {<<"beforeLastUpdatedAt">>, maps:get(<<"beforeLastUpdatedAt">>, QueryMap, undefined)},
        {<<"checkIdentifier">>, maps:get(<<"checkIdentifier">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"pillar">>, maps:get(<<"pillar">>, QueryMap, undefined)},
        {<<"source">>, maps:get(<<"source">>, QueryMap, undefined)},
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)},
        {<<"type">>, maps:get(<<"type">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List Resources of a Recommendation
-spec list_recommendation_resources(aws_client:aws_client(), binary() | list()) ->
    {ok, list_recommendation_resources_response(), tuple()} |
    {error, any()} |
    {error, list_recommendation_resources_errors(), tuple()}.
list_recommendation_resources(Client, RecommendationIdentifier)
  when is_map(Client) ->
    list_recommendation_resources(Client, RecommendationIdentifier, #{}, #{}).

-spec list_recommendation_resources(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_recommendation_resources_response(), tuple()} |
    {error, any()} |
    {error, list_recommendation_resources_errors(), tuple()}.
list_recommendation_resources(Client, RecommendationIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_recommendation_resources(Client, RecommendationIdentifier, QueryMap, HeadersMap, []).

-spec list_recommendation_resources(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_recommendation_resources_response(), tuple()} |
    {error, any()} |
    {error, list_recommendation_resources_errors(), tuple()}.
list_recommendation_resources(Client, RecommendationIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/recommendations/", aws_util:encode_uri(RecommendationIdentifier), "/resources"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"exclusionStatus">>, maps:get(<<"exclusionStatus">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"regionCode">>, maps:get(<<"regionCode">>, QueryMap, undefined)},
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List a filterable set of Recommendations
-spec list_recommendations(aws_client:aws_client()) ->
    {ok, list_recommendations_response(), tuple()} |
    {error, any()} |
    {error, list_recommendations_errors(), tuple()}.
list_recommendations(Client)
  when is_map(Client) ->
    list_recommendations(Client, #{}, #{}).

-spec list_recommendations(aws_client:aws_client(), map(), map()) ->
    {ok, list_recommendations_response(), tuple()} |
    {error, any()} |
    {error, list_recommendations_errors(), tuple()}.
list_recommendations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_recommendations(Client, QueryMap, HeadersMap, []).

-spec list_recommendations(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_recommendations_response(), tuple()} |
    {error, any()} |
    {error, list_recommendations_errors(), tuple()}.
list_recommendations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/recommendations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"afterLastUpdatedAt">>, maps:get(<<"afterLastUpdatedAt">>, QueryMap, undefined)},
        {<<"awsService">>, maps:get(<<"awsService">>, QueryMap, undefined)},
        {<<"beforeLastUpdatedAt">>, maps:get(<<"beforeLastUpdatedAt">>, QueryMap, undefined)},
        {<<"checkIdentifier">>, maps:get(<<"checkIdentifier">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"pillar">>, maps:get(<<"pillar">>, QueryMap, undefined)},
        {<<"source">>, maps:get(<<"source">>, QueryMap, undefined)},
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)},
        {<<"type">>, maps:get(<<"type">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Update the lifecycle of a Recommendation within an Organization.
%%
%% This API only supports prioritized
%% recommendations.
-spec update_organization_recommendation_lifecycle(aws_client:aws_client(), binary() | list(), update_organization_recommendation_lifecycle_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_organization_recommendation_lifecycle_errors(), tuple()}.
update_organization_recommendation_lifecycle(Client, OrganizationRecommendationIdentifier, Input) ->
    update_organization_recommendation_lifecycle(Client, OrganizationRecommendationIdentifier, Input, []).

-spec update_organization_recommendation_lifecycle(aws_client:aws_client(), binary() | list(), update_organization_recommendation_lifecycle_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_organization_recommendation_lifecycle_errors(), tuple()}.
update_organization_recommendation_lifecycle(Client, OrganizationRecommendationIdentifier, Input0, Options0) ->
    Method = put,
    Path = ["/v1/organization-recommendations/", aws_util:encode_uri(OrganizationRecommendationIdentifier), "/lifecycle"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Update the lifecyle of a Recommendation.
%%
%% This API only supports prioritized recommendations.
-spec update_recommendation_lifecycle(aws_client:aws_client(), binary() | list(), update_recommendation_lifecycle_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_recommendation_lifecycle_errors(), tuple()}.
update_recommendation_lifecycle(Client, RecommendationIdentifier, Input) ->
    update_recommendation_lifecycle(Client, RecommendationIdentifier, Input, []).

-spec update_recommendation_lifecycle(aws_client:aws_client(), binary() | list(), update_recommendation_lifecycle_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_recommendation_lifecycle_errors(), tuple()}.
update_recommendation_lifecycle(Client, RecommendationIdentifier, Input0, Options0) ->
    Method = put,
    Path = ["/v1/recommendations/", aws_util:encode_uri(RecommendationIdentifier), "/lifecycle"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%%====================================================================
%% Internal functions
%%====================================================================

-spec proplists_take(any(), proplists:proplist(), any()) -> {any(), proplists:proplist()}.
proplists_take(Key, Proplist, Default) ->
  Value = proplists:get_value(Key, Proplist, Default),
  {Value, proplists:delete(Key, Proplist)}.

-spec request(aws_client:aws_client(), atom(), iolist(), list(),
              list(), map() | undefined, list(), pos_integer() | undefined) ->
    {ok, {integer(), list()}} |
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map(),
    Error :: map().
request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
  RequestFun = fun() -> do_request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) end,
  aws_request:request(RequestFun, Options).

do_request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
    Client1 = Client#{service => <<"trustedadvisor">>},
    Host = build_host(<<"trustedadvisor">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders1 = [ {<<"Host">>, Host}
                         , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                         ],
    Payload =
      case proplists:get_value(send_body_as_binary, Options) of
        true ->
          maps:get(<<"Body">>, Input, <<"">>);
        false ->
          encode_payload(Input)
      end,
    AdditionalHeaders = case proplists:get_value(append_sha256_content_hash, Options, false) of
                          true ->
                            add_checksum_hash_header(AdditionalHeaders1, Payload);
                          false ->
                            AdditionalHeaders1
                        end,
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),

    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    DecodeBody = not proplists:get_value(receive_body_as_binary, Options),
    handle_response(Response, SuccessStatusCode, DecodeBody).

add_checksum_hash_header(Headers, Body) ->
  [ {<<"X-Amz-CheckSum-SHA256">>, base64:encode(crypto:hash(sha256, Body))}
  | Headers
  ].

handle_response({ok, StatusCode, ResponseHeaders}, SuccessStatusCode, _DecodeBody)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= 206;
       StatusCode =:= SuccessStatusCode ->
    {ok, {StatusCode, ResponseHeaders}};
handle_response({ok, StatusCode, ResponseHeaders}, _, _DecodeBody) ->
    {error, {StatusCode, ResponseHeaders}};
handle_response({ok, StatusCode, ResponseHeaders, Client}, SuccessStatusCode, DecodeBody)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= 206;
       StatusCode =:= SuccessStatusCode ->
    case hackney:body(Client) of
        {ok, <<>>} when StatusCode =:= 200;
                        StatusCode =:= SuccessStatusCode ->
            {ok, #{}, {StatusCode, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = case DecodeBody of
                       true ->
                         try
                           jsx:decode(Body)
                         catch
                           Error:Reason:Stack ->
                             erlang:raise(error, {body_decode_failed, Error, Reason, StatusCode, Body}, Stack)
                         end;
                       false -> #{<<"Body">> => Body}
                     end,
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, _ResponseHeaders, _Client}, _, _DecodeBody)
  when StatusCode =:= 503 ->
  %% Retriable error if retries are enabled
  {error, service_unavailable};
handle_response({ok, StatusCode, ResponseHeaders, Client}, _, _DecodeBody) ->
    {ok, Body} = hackney:body(Client),
    try
      DecodedError = jsx:decode(Body),
      {error, DecodedError, {StatusCode, ResponseHeaders, Client}}
    catch
      Error:Reason:Stack ->
        erlang:raise(error, {body_decode_failed, Error, Reason, StatusCode, Body}, Stack)
    end;
handle_response({error, Reason}, _, _DecodeBody) ->
  {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Path0, Client) ->
    Proto = aws_client:proto(Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = aws_client:port(Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  jsx:encode(Input).
