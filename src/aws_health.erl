%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Health
%%
%% The Health API provides access to the Health information that appears in
%% the
%% Health Dashboard: https://health.aws.amazon.com/health/home.
%%
%% You can use
%% the API operations to get information about events that might affect your
%% Amazon Web Services services and resources.
%%
%% You must have a Business, Enterprise On-Ramp, or Enterprise Support plan
%% from Amazon Web Services Support: http://aws.amazon.com/premiumsupport/ to
%% use the Health API. If you call the Health API from an
%% Amazon Web Services account that doesn't have a Business, Enterprise
%% On-Ramp, or Enterprise Support plan, you receive a
%% `SubscriptionRequiredException' error.
%%
%% For API access, you need an access key ID and a secret access key. Use
%% temporary
%% credentials instead of long-term access keys when possible. Temporary
%% credentials include
%% an access key ID, a secret access key, and a security token that indicates
%% when the
%% credentials expire. For more information, see Best practices for managing
%% Amazon Web Services access keys:
%% https://docs.aws.amazon.com/general/latest/gr/aws-access-keys-best-practices.html
%% in the Amazon Web Services General Reference.
%%
%% You can use the Health endpoint health.us-east-1.amazonaws.com (HTTPS) to
%% call the
%% Health API operations. Health supports a multi-Region application
%% architecture
%% and has two regional endpoints in an active-passive configuration. You can
%% use the high
%% availability endpoint example to determine which Amazon Web Services
%% Region is active, so that you can
%% get the latest information from the API. For more information, see
%% Accessing the Health
%% API: https://docs.aws.amazon.com/health/latest/ug/health-api.html in the
%% Health User Guide.
%%
%% For authentication of requests, Health uses the Signature Version 4
%% Signing
%% Process:
%% https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html.
%%
%% If your Amazon Web Services account is part of Organizations, you can use
%% the Health organizational
%% view feature. This feature provides a centralized view of Health events
%% across all
%% accounts in your organization. You can aggregate Health events in real
%% time to
%% identify accounts in your organization that are affected by an operational
%% event or get
%% notified of security vulnerabilities. Use the organizational view API
%% operations to enable
%% this feature and return event information. For more information, see
%% Aggregating
%% Health events:
%% https://docs.aws.amazon.com/health/latest/ug/aggregate-events.html in the
%% Health User Guide.
%%
%% When you use the Health API operations to return Health events, see the
%% following recommendations:
%%
%% Use the eventScopeCode:
%% https://docs.aws.amazon.com/health/latest/APIReference/API_Event.html#AWSHealth-Type-Event-eventScopeCode
%% parameter to specify whether to return Health
%% events that are public or account-specific.
%%
%% Use pagination to view all events from the response. For example, if you
%% call
%% the `DescribeEventsForOrganization' operation to get all events in
%% your
%% organization, you might receive several page results. Specify the
%% `nextToken' in the next request to return more results.
-module(aws_health).

-export([describe_affected_accounts_for_organization/2,
         describe_affected_accounts_for_organization/3,
         describe_affected_entities/2,
         describe_affected_entities/3,
         describe_affected_entities_for_organization/2,
         describe_affected_entities_for_organization/3,
         describe_entity_aggregates/2,
         describe_entity_aggregates/3,
         describe_entity_aggregates_for_organization/2,
         describe_entity_aggregates_for_organization/3,
         describe_event_aggregates/2,
         describe_event_aggregates/3,
         describe_event_details/2,
         describe_event_details/3,
         describe_event_details_for_organization/2,
         describe_event_details_for_organization/3,
         describe_event_types/2,
         describe_event_types/3,
         describe_events/2,
         describe_events/3,
         describe_events_for_organization/2,
         describe_events_for_organization/3,
         describe_health_service_status_for_organization/2,
         describe_health_service_status_for_organization/3,
         disable_health_service_access_for_organization/2,
         disable_health_service_access_for_organization/3,
         enable_health_service_access_for_organization/2,
         enable_health_service_access_for_organization/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% describe_events_for_organization_response() :: #{
%%   <<"events">> => list(organization_event()),
%%   <<"nextToken">> => string()
%% }
-type describe_events_for_organization_response() :: #{binary() => any()}.

%% Example:
%% unsupported_locale() :: #{
%%   <<"message">> => string()
%% }
-type unsupported_locale() :: #{binary() => any()}.

%% Example:
%% account_entity_aggregate() :: #{
%%   <<"accountId">> => string(),
%%   <<"count">> => integer(),
%%   <<"statuses">> => map()
%% }
-type account_entity_aggregate() :: #{binary() => any()}.

%% Example:
%% organization_event_filter() :: #{
%%   <<"awsAccountIds">> => list(string()),
%%   <<"endTime">> => date_time_range(),
%%   <<"entityArns">> => list(string()),
%%   <<"entityValues">> => list(string()),
%%   <<"eventStatusCodes">> => list(list(any())()),
%%   <<"eventTypeCategories">> => list(list(any())()),
%%   <<"eventTypeCodes">> => list(string()),
%%   <<"lastUpdatedTime">> => date_time_range(),
%%   <<"regions">> => list(string()),
%%   <<"services">> => list(string()),
%%   <<"startTime">> => date_time_range()
%% }
-type organization_event_filter() :: #{binary() => any()}.

%% Example:
%% describe_event_details_for_organization_request() :: #{
%%   <<"locale">> => string(),
%%   <<"organizationEventDetailFilters">> := list(event_account_filter())
%% }
-type describe_event_details_for_organization_request() :: #{binary() => any()}.

%% Example:
%% describe_affected_accounts_for_organization_response() :: #{
%%   <<"affectedAccounts">> => list(string()),
%%   <<"eventScopeCode">> => list(any()),
%%   <<"nextToken">> => string()
%% }
-type describe_affected_accounts_for_organization_response() :: #{binary() => any()}.

%% Example:
%% invalid_pagination_token() :: #{
%%   <<"message">> => string()
%% }
-type invalid_pagination_token() :: #{binary() => any()}.

%% Example:
%% affected_entity() :: #{
%%   <<"awsAccountId">> => string(),
%%   <<"entityArn">> => string(),
%%   <<"entityMetadata">> => map(),
%%   <<"entityUrl">> => string(),
%%   <<"entityValue">> => string(),
%%   <<"eventArn">> => string(),
%%   <<"lastUpdatedTime">> => non_neg_integer(),
%%   <<"statusCode">> => list(any()),
%%   <<"tags">> => map()
%% }
-type affected_entity() :: #{binary() => any()}.

%% Example:
%% describe_entity_aggregates_response() :: #{
%%   <<"entityAggregates">> => list(entity_aggregate())
%% }
-type describe_entity_aggregates_response() :: #{binary() => any()}.

%% Example:
%% event_details() :: #{
%%   <<"event">> => event(),
%%   <<"eventDescription">> => event_description(),
%%   <<"eventMetadata">> => map()
%% }
-type event_details() :: #{binary() => any()}.

%% Example:
%% organization_event_details_error_item() :: #{
%%   <<"awsAccountId">> => string(),
%%   <<"errorMessage">> => string(),
%%   <<"errorName">> => string(),
%%   <<"eventArn">> => string()
%% }
-type organization_event_details_error_item() :: #{binary() => any()}.

%% Example:
%% organization_event_details() :: #{
%%   <<"awsAccountId">> => string(),
%%   <<"event">> => event(),
%%   <<"eventDescription">> => event_description(),
%%   <<"eventMetadata">> => map()
%% }
-type organization_event_details() :: #{binary() => any()}.

%% Example:
%% entity_filter() :: #{
%%   <<"entityArns">> => list(string()),
%%   <<"entityValues">> => list(string()),
%%   <<"eventArns">> => list(string()),
%%   <<"lastUpdatedTimes">> => list(date_time_range()),
%%   <<"statusCodes">> => list(list(any())()),
%%   <<"tags">> => list(map())
%% }
-type entity_filter() :: #{binary() => any()}.

%% Example:
%% event_description() :: #{
%%   <<"latestDescription">> => string()
%% }
-type event_description() :: #{binary() => any()}.

%% Example:
%% describe_affected_entities_for_organization_request() :: #{
%%   <<"locale">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"organizationEntityAccountFilters">> => list(entity_account_filter()),
%%   <<"organizationEntityFilters">> => list(event_account_filter())
%% }
-type describe_affected_entities_for_organization_request() :: #{binary() => any()}.

%% Example:
%% describe_affected_entities_for_organization_response() :: #{
%%   <<"entities">> => list(affected_entity()),
%%   <<"failedSet">> => list(organization_affected_entities_error_item()),
%%   <<"nextToken">> => string()
%% }
-type describe_affected_entities_for_organization_response() :: #{binary() => any()}.

%% Example:
%% event_account_filter() :: #{
%%   <<"awsAccountId">> => string(),
%%   <<"eventArn">> => string()
%% }
-type event_account_filter() :: #{binary() => any()}.

%% Example:
%% describe_entity_aggregates_for_organization_response() :: #{
%%   <<"organizationEntityAggregates">> => list(organization_entity_aggregate())
%% }
-type describe_entity_aggregates_for_organization_response() :: #{binary() => any()}.

%% Example:
%% describe_entity_aggregates_for_organization_request() :: #{
%%   <<"awsAccountIds">> => list(string()),
%%   <<"eventArns">> := list(string())
%% }
-type describe_entity_aggregates_for_organization_request() :: #{binary() => any()}.

%% Example:
%% describe_event_details_request() :: #{
%%   <<"eventArns">> := list(string()),
%%   <<"locale">> => string()
%% }
-type describe_event_details_request() :: #{binary() => any()}.

%% Example:
%% describe_event_types_response() :: #{
%%   <<"eventTypes">> => list(event_type()),
%%   <<"nextToken">> => string()
%% }
-type describe_event_types_response() :: #{binary() => any()}.

%% Example:
%% describe_entity_aggregates_request() :: #{
%%   <<"eventArns">> => list(string())
%% }
-type describe_entity_aggregates_request() :: #{binary() => any()}.

%% Example:
%% entity_aggregate() :: #{
%%   <<"count">> => integer(),
%%   <<"eventArn">> => string(),
%%   <<"statuses">> => map()
%% }
-type entity_aggregate() :: #{binary() => any()}.

%% Example:
%% describe_affected_entities_response() :: #{
%%   <<"entities">> => list(affected_entity()),
%%   <<"nextToken">> => string()
%% }
-type describe_affected_entities_response() :: #{binary() => any()}.

%% Example:
%% describe_health_service_status_for_organization_response() :: #{
%%   <<"healthServiceAccessStatusForOrganization">> => string()
%% }
-type describe_health_service_status_for_organization_response() :: #{binary() => any()}.

%% Example:
%% organization_entity_aggregate() :: #{
%%   <<"accounts">> => list(account_entity_aggregate()),
%%   <<"count">> => integer(),
%%   <<"eventArn">> => string(),
%%   <<"statuses">> => map()
%% }
-type organization_entity_aggregate() :: #{binary() => any()}.

%% Example:
%% describe_affected_accounts_for_organization_request() :: #{
%%   <<"eventArn">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type describe_affected_accounts_for_organization_request() :: #{binary() => any()}.

%% Example:
%% entity_account_filter() :: #{
%%   <<"awsAccountId">> => string(),
%%   <<"eventArn">> => string(),
%%   <<"statusCodes">> => list(list(any())())
%% }
-type entity_account_filter() :: #{binary() => any()}.

%% Example:
%% organization_affected_entities_error_item() :: #{
%%   <<"awsAccountId">> => string(),
%%   <<"errorMessage">> => string(),
%%   <<"errorName">> => string(),
%%   <<"eventArn">> => string()
%% }
-type organization_affected_entities_error_item() :: #{binary() => any()}.

%% Example:
%% date_time_range() :: #{
%%   <<"from">> => non_neg_integer(),
%%   <<"to">> => non_neg_integer()
%% }
-type date_time_range() :: #{binary() => any()}.

%% Example:
%% event_filter() :: #{
%%   <<"availabilityZones">> => list(string()),
%%   <<"endTimes">> => list(date_time_range()),
%%   <<"entityArns">> => list(string()),
%%   <<"entityValues">> => list(string()),
%%   <<"eventArns">> => list(string()),
%%   <<"eventStatusCodes">> => list(list(any())()),
%%   <<"eventTypeCategories">> => list(list(any())()),
%%   <<"eventTypeCodes">> => list(string()),
%%   <<"lastUpdatedTimes">> => list(date_time_range()),
%%   <<"regions">> => list(string()),
%%   <<"services">> => list(string()),
%%   <<"startTimes">> => list(date_time_range()),
%%   <<"tags">> => list(map())
%% }
-type event_filter() :: #{binary() => any()}.

%% Example:
%% describe_event_aggregates_request() :: #{
%%   <<"aggregateField">> := list(any()),
%%   <<"filter">> => event_filter(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type describe_event_aggregates_request() :: #{binary() => any()}.

%% Example:
%% describe_events_for_organization_request() :: #{
%%   <<"filter">> => organization_event_filter(),
%%   <<"locale">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type describe_events_for_organization_request() :: #{binary() => any()}.

%% Example:
%% event() :: #{
%%   <<"arn">> => string(),
%%   <<"availabilityZone">> => string(),
%%   <<"endTime">> => non_neg_integer(),
%%   <<"eventScopeCode">> => list(any()),
%%   <<"eventTypeCategory">> => list(any()),
%%   <<"eventTypeCode">> => string(),
%%   <<"lastUpdatedTime">> => non_neg_integer(),
%%   <<"region">> => string(),
%%   <<"service">> => string(),
%%   <<"startTime">> => non_neg_integer(),
%%   <<"statusCode">> => list(any())
%% }
-type event() :: #{binary() => any()}.

%% Example:
%% describe_events_request() :: #{
%%   <<"filter">> => event_filter(),
%%   <<"locale">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type describe_events_request() :: #{binary() => any()}.

%% Example:
%% describe_event_aggregates_response() :: #{
%%   <<"eventAggregates">> => list(event_aggregate()),
%%   <<"nextToken">> => string()
%% }
-type describe_event_aggregates_response() :: #{binary() => any()}.

%% Example:
%% concurrent_modification_exception() :: #{
%%   <<"message">> => string()
%% }
-type concurrent_modification_exception() :: #{binary() => any()}.

%% Example:
%% event_type_filter() :: #{
%%   <<"eventTypeCategories">> => list(list(any())()),
%%   <<"eventTypeCodes">> => list(string()),
%%   <<"services">> => list(string())
%% }
-type event_type_filter() :: #{binary() => any()}.

%% Example:
%% describe_event_details_for_organization_response() :: #{
%%   <<"failedSet">> => list(organization_event_details_error_item()),
%%   <<"successfulSet">> => list(organization_event_details())
%% }
-type describe_event_details_for_organization_response() :: #{binary() => any()}.

%% Example:
%% describe_event_types_request() :: #{
%%   <<"filter">> => event_type_filter(),
%%   <<"locale">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type describe_event_types_request() :: #{binary() => any()}.

%% Example:
%% event_type() :: #{
%%   <<"category">> => list(any()),
%%   <<"code">> => string(),
%%   <<"service">> => string()
%% }
-type event_type() :: #{binary() => any()}.

%% Example:
%% organization_event() :: #{
%%   <<"arn">> => string(),
%%   <<"endTime">> => non_neg_integer(),
%%   <<"eventScopeCode">> => list(any()),
%%   <<"eventTypeCategory">> => list(any()),
%%   <<"eventTypeCode">> => string(),
%%   <<"lastUpdatedTime">> => non_neg_integer(),
%%   <<"region">> => string(),
%%   <<"service">> => string(),
%%   <<"startTime">> => non_neg_integer(),
%%   <<"statusCode">> => list(any())
%% }
-type organization_event() :: #{binary() => any()}.

%% Example:
%% describe_event_details_response() :: #{
%%   <<"failedSet">> => list(event_details_error_item()),
%%   <<"successfulSet">> => list(event_details())
%% }
-type describe_event_details_response() :: #{binary() => any()}.

%% Example:
%% event_details_error_item() :: #{
%%   <<"errorMessage">> => string(),
%%   <<"errorName">> => string(),
%%   <<"eventArn">> => string()
%% }
-type event_details_error_item() :: #{binary() => any()}.

%% Example:
%% event_aggregate() :: #{
%%   <<"aggregateValue">> => string(),
%%   <<"count">> => integer()
%% }
-type event_aggregate() :: #{binary() => any()}.

%% Example:
%% describe_events_response() :: #{
%%   <<"events">> => list(event()),
%%   <<"nextToken">> => string()
%% }
-type describe_events_response() :: #{binary() => any()}.

%% Example:
%% describe_affected_entities_request() :: #{
%%   <<"filter">> := entity_filter(),
%%   <<"locale">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type describe_affected_entities_request() :: #{binary() => any()}.

-type describe_affected_accounts_for_organization_errors() ::
    invalid_pagination_token().

-type describe_affected_entities_errors() ::
    invalid_pagination_token() | 
    unsupported_locale().

-type describe_affected_entities_for_organization_errors() ::
    invalid_pagination_token() | 
    unsupported_locale().

-type describe_event_aggregates_errors() ::
    invalid_pagination_token().

-type describe_event_details_errors() ::
    unsupported_locale().

-type describe_event_details_for_organization_errors() ::
    unsupported_locale().

-type describe_event_types_errors() ::
    invalid_pagination_token() | 
    unsupported_locale().

-type describe_events_errors() ::
    invalid_pagination_token() | 
    unsupported_locale().

-type describe_events_for_organization_errors() ::
    invalid_pagination_token() | 
    unsupported_locale().

-type disable_health_service_access_for_organization_errors() ::
    concurrent_modification_exception().

-type enable_health_service_access_for_organization_errors() ::
    concurrent_modification_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Returns a list of accounts in the organization from Organizations
%% that are affected by the
%% provided event.
%%
%% For more information about the different types of Health events, see
%% Event:
%% https://docs.aws.amazon.com/health/latest/APIReference/API_Event.html.
%%
%% Before you can call this operation, you must first enable Health to work
%% with
%% Organizations. To do this, call the
%% EnableHealthServiceAccessForOrganization:
%% https://docs.aws.amazon.com/health/latest/APIReference/API_EnableHealthServiceAccessForOrganization.html
%% operation from your organization's
%% management account.
%%
%% This API operation uses pagination. Specify the `nextToken' parameter
%% in the next request to return more results.
-spec describe_affected_accounts_for_organization(aws_client:aws_client(), describe_affected_accounts_for_organization_request()) ->
    {ok, describe_affected_accounts_for_organization_response(), tuple()} |
    {error, any()} |
    {error, describe_affected_accounts_for_organization_errors(), tuple()}.
describe_affected_accounts_for_organization(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_affected_accounts_for_organization(Client, Input, []).

-spec describe_affected_accounts_for_organization(aws_client:aws_client(), describe_affected_accounts_for_organization_request(), proplists:proplist()) ->
    {ok, describe_affected_accounts_for_organization_response(), tuple()} |
    {error, any()} |
    {error, describe_affected_accounts_for_organization_errors(), tuple()}.
describe_affected_accounts_for_organization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAffectedAccountsForOrganization">>, Input, Options).

%% @doc Returns a list of entities that have been affected by the specified
%% events, based on the
%% specified filter criteria.
%%
%% Entities can refer to individual customer resources, groups of
%% customer resources, or any other construct, depending on the Amazon Web
%% Services service. Events that
%% have impact beyond that of the affected entities, or where the extent of
%% impact is unknown,
%% include at least one entity indicating this.
%%
%% At least one event ARN is required.
%%
%% This API operation uses pagination. Specify the `nextToken' parameter
%% in the next request to return more results.
%%
%% This operation supports resource-level permissions. You can use this
%% operation to allow or deny access to specific Health events. For more
%% information, see Resource- and action-based conditions:
%% https://docs.aws.amazon.com/health/latest/ug/security_iam_id-based-policy-examples.html#resource-action-based-conditions
%% in the Health User Guide.
-spec describe_affected_entities(aws_client:aws_client(), describe_affected_entities_request()) ->
    {ok, describe_affected_entities_response(), tuple()} |
    {error, any()} |
    {error, describe_affected_entities_errors(), tuple()}.
describe_affected_entities(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_affected_entities(Client, Input, []).

-spec describe_affected_entities(aws_client:aws_client(), describe_affected_entities_request(), proplists:proplist()) ->
    {ok, describe_affected_entities_response(), tuple()} |
    {error, any()} |
    {error, describe_affected_entities_errors(), tuple()}.
describe_affected_entities(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAffectedEntities">>, Input, Options).

%% @doc Returns a list of entities that have been affected by one or more
%% events for one or more
%% accounts in your organization in Organizations, based on the filter
%% criteria.
%%
%% Entities can refer
%% to individual customer resources, groups of customer resources, or any
%% other construct,
%% depending on the Amazon Web Services service.
%%
%% At least one event Amazon Resource Name (ARN) and account ID are required.
%%
%% Before you can call this operation, you must first enable Health to work
%% with
%% Organizations. To do this, call the
%% EnableHealthServiceAccessForOrganization:
%% https://docs.aws.amazon.com/health/latest/APIReference/API_EnableHealthServiceAccessForOrganization.html
%% operation from your organization's
%% management account.
%%
%% This API operation uses pagination. Specify the `nextToken' parameter
%% in the next request to return more results.
%%
%% This operation doesn't support resource-level permissions. You
%% can't use this operation to allow or deny access to specific Health
%% events. For more
%% information, see Resource- and action-based conditions:
%% https://docs.aws.amazon.com/health/latest/ug/security_iam_id-based-policy-examples.html#resource-action-based-conditions
%% in the Health User Guide.
-spec describe_affected_entities_for_organization(aws_client:aws_client(), describe_affected_entities_for_organization_request()) ->
    {ok, describe_affected_entities_for_organization_response(), tuple()} |
    {error, any()} |
    {error, describe_affected_entities_for_organization_errors(), tuple()}.
describe_affected_entities_for_organization(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_affected_entities_for_organization(Client, Input, []).

-spec describe_affected_entities_for_organization(aws_client:aws_client(), describe_affected_entities_for_organization_request(), proplists:proplist()) ->
    {ok, describe_affected_entities_for_organization_response(), tuple()} |
    {error, any()} |
    {error, describe_affected_entities_for_organization_errors(), tuple()}.
describe_affected_entities_for_organization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAffectedEntitiesForOrganization">>, Input, Options).

%% @doc Returns the number of entities that are affected by each of the
%% specified events.
-spec describe_entity_aggregates(aws_client:aws_client(), describe_entity_aggregates_request()) ->
    {ok, describe_entity_aggregates_response(), tuple()} |
    {error, any()}.
describe_entity_aggregates(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_entity_aggregates(Client, Input, []).

-spec describe_entity_aggregates(aws_client:aws_client(), describe_entity_aggregates_request(), proplists:proplist()) ->
    {ok, describe_entity_aggregates_response(), tuple()} |
    {error, any()}.
describe_entity_aggregates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEntityAggregates">>, Input, Options).

%% @doc Returns a list of entity aggregates for your Organizations that are
%% affected by each of the specified events.
-spec describe_entity_aggregates_for_organization(aws_client:aws_client(), describe_entity_aggregates_for_organization_request()) ->
    {ok, describe_entity_aggregates_for_organization_response(), tuple()} |
    {error, any()}.
describe_entity_aggregates_for_organization(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_entity_aggregates_for_organization(Client, Input, []).

-spec describe_entity_aggregates_for_organization(aws_client:aws_client(), describe_entity_aggregates_for_organization_request(), proplists:proplist()) ->
    {ok, describe_entity_aggregates_for_organization_response(), tuple()} |
    {error, any()}.
describe_entity_aggregates_for_organization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEntityAggregatesForOrganization">>, Input, Options).

%% @doc Returns the number of events of each event type (issue, scheduled
%% change, and account
%% notification).
%%
%% If no filter is specified, the counts of all events in each category are
%% returned.
%%
%% This API operation uses pagination. Specify the `nextToken' parameter
%% in the next request to return more results.
-spec describe_event_aggregates(aws_client:aws_client(), describe_event_aggregates_request()) ->
    {ok, describe_event_aggregates_response(), tuple()} |
    {error, any()} |
    {error, describe_event_aggregates_errors(), tuple()}.
describe_event_aggregates(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_event_aggregates(Client, Input, []).

-spec describe_event_aggregates(aws_client:aws_client(), describe_event_aggregates_request(), proplists:proplist()) ->
    {ok, describe_event_aggregates_response(), tuple()} |
    {error, any()} |
    {error, describe_event_aggregates_errors(), tuple()}.
describe_event_aggregates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEventAggregates">>, Input, Options).

%% @doc Returns detailed information about one or more specified events.
%%
%% Information includes
%% standard event data (Amazon Web Services Region, service, and so on, as
%% returned by DescribeEvents:
%% https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEvents.html),
%% a detailed event description, and possible additional metadata
%% that depends upon the nature of the event. Affected entities are not
%% included. To retrieve
%% the entities, use the DescribeAffectedEntities:
%% https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeAffectedEntities.html
%% operation.
%%
%% If a specified event can't be retrieved, an error message is returned
%% for that
%% event.
%%
%% This operation supports resource-level permissions. You can use this
%% operation to allow or deny access to specific Health events. For more
%% information, see Resource- and action-based conditions:
%% https://docs.aws.amazon.com/health/latest/ug/security_iam_id-based-policy-examples.html#resource-action-based-conditions
%% in the Health User Guide.
-spec describe_event_details(aws_client:aws_client(), describe_event_details_request()) ->
    {ok, describe_event_details_response(), tuple()} |
    {error, any()} |
    {error, describe_event_details_errors(), tuple()}.
describe_event_details(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_event_details(Client, Input, []).

-spec describe_event_details(aws_client:aws_client(), describe_event_details_request(), proplists:proplist()) ->
    {ok, describe_event_details_response(), tuple()} |
    {error, any()} |
    {error, describe_event_details_errors(), tuple()}.
describe_event_details(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEventDetails">>, Input, Options).

%% @doc Returns detailed information about one or more specified events for
%% one or more
%% Amazon Web Services accounts in your organization.
%%
%% This information includes standard event data (such as
%% the Amazon Web Services Region and service), an event description, and
%% (depending on the event) possible
%% metadata. This operation doesn't return affected entities, such as the
%% resources related to
%% the event. To return affected entities, use the
%% DescribeAffectedEntitiesForOrganization:
%% https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeAffectedEntitiesForOrganization.html
%% operation.
%%
%% Before you can call this operation, you must first enable Health to work
%% with
%% Organizations. To do this, call the
%% EnableHealthServiceAccessForOrganization:
%% https://docs.aws.amazon.com/health/latest/APIReference/API_EnableHealthServiceAccessForOrganization.html
%% operation from your organization's
%% management account.
%%
%% When you call the `DescribeEventDetailsForOrganization' operation,
%% specify
%% the `organizationEventDetailFilters' object in the request. Depending
%% on the
%% Health event type, note the following differences:
%%
%% To return event details for a public event, you must specify a null value
%% for the
%% `awsAccountId' parameter. If you specify an account ID for a public
%% event, Health returns an error message because public events aren't
%% specific to
%% an account.
%%
%% To return event details for an event that is specific to an account in
%% your
%% organization, you must specify the `awsAccountId' parameter in the
%% request. If you don't specify an account ID, Health returns an error
%% message
%% because the event is specific to an account in your organization.
%%
%% For more information, see Event:
%% https://docs.aws.amazon.com/health/latest/APIReference/API_Event.html.
%%
%% This operation doesn't support resource-level permissions. You
%% can't use this operation to allow or deny access to specific Health
%% events. For more
%% information, see Resource- and action-based conditions:
%% https://docs.aws.amazon.com/health/latest/ug/security_iam_id-based-policy-examples.html#resource-action-based-conditions
%% in the Health User Guide.
-spec describe_event_details_for_organization(aws_client:aws_client(), describe_event_details_for_organization_request()) ->
    {ok, describe_event_details_for_organization_response(), tuple()} |
    {error, any()} |
    {error, describe_event_details_for_organization_errors(), tuple()}.
describe_event_details_for_organization(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_event_details_for_organization(Client, Input, []).

-spec describe_event_details_for_organization(aws_client:aws_client(), describe_event_details_for_organization_request(), proplists:proplist()) ->
    {ok, describe_event_details_for_organization_response(), tuple()} |
    {error, any()} |
    {error, describe_event_details_for_organization_errors(), tuple()}.
describe_event_details_for_organization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEventDetailsForOrganization">>, Input, Options).

%% @doc Returns the event types that meet the specified filter criteria.
%%
%% You can use this API
%% operation to find information about the Health event, such as the
%% category, Amazon Web Services service, and event code. The metadata for
%% each event appears in the EventType:
%% https://docs.aws.amazon.com/health/latest/APIReference/API_EventType.html
%% object.
%%
%% If you don't specify a filter criteria, the API operation returns all
%% event types, in no
%% particular order.
%%
%% This API operation uses pagination. Specify the `nextToken' parameter
%% in the next request to return more results.
-spec describe_event_types(aws_client:aws_client(), describe_event_types_request()) ->
    {ok, describe_event_types_response(), tuple()} |
    {error, any()} |
    {error, describe_event_types_errors(), tuple()}.
describe_event_types(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_event_types(Client, Input, []).

-spec describe_event_types(aws_client:aws_client(), describe_event_types_request(), proplists:proplist()) ->
    {ok, describe_event_types_response(), tuple()} |
    {error, any()} |
    {error, describe_event_types_errors(), tuple()}.
describe_event_types(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEventTypes">>, Input, Options).

%% @doc Returns information about events that meet the specified filter
%% criteria.
%%
%% Events are
%% returned in a summary form and do not include the detailed description,
%% any additional
%% metadata that depends on the event type, or any affected resources. To
%% retrieve that
%% information, use the DescribeEventDetails:
%% https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventDetails.html
%% and DescribeAffectedEntities:
%% https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeAffectedEntities.html
%% operations.
%%
%% If no filter criteria are specified, all events are returned. Results are
%% sorted by
%% `lastModifiedTime', starting with the most recent event.
%%
%% When you call the `DescribeEvents' operation and specify an entity
%% for the `entityValues' parameter, Health might return public
%% events that aren't specific to that resource. For example, if you call
%% `DescribeEvents' and specify an ID for an Amazon Elastic Compute Cloud
%% (Amazon EC2)
%% instance, Health might return events that aren't specific to that
%% resource or
%% service. To get events that are specific to a service, use the
%% `services' parameter in the `filter' object. For more
%% information, see Event:
%% https://docs.aws.amazon.com/health/latest/APIReference/API_Event.html.
%%
%% This API operation uses pagination. Specify the `nextToken' parameter
%% in the next request to return more results.
-spec describe_events(aws_client:aws_client(), describe_events_request()) ->
    {ok, describe_events_response(), tuple()} |
    {error, any()} |
    {error, describe_events_errors(), tuple()}.
describe_events(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_events(Client, Input, []).

-spec describe_events(aws_client:aws_client(), describe_events_request(), proplists:proplist()) ->
    {ok, describe_events_response(), tuple()} |
    {error, any()} |
    {error, describe_events_errors(), tuple()}.
describe_events(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEvents">>, Input, Options).

%% @doc Returns information about events across your organization in
%% Organizations.
%%
%% You can use
%% the`filters' parameter to specify the events that you want to return.
%% Events
%% are returned in a summary form and don't include the affected
%% accounts, detailed
%% description, any additional metadata that depends on the event type, or
%% any affected
%% resources. To retrieve that information, use the following operations:
%%
%% DescribeAffectedAccountsForOrganization:
%% https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeAffectedAccountsForOrganization.html
%%
%% DescribeEventDetailsForOrganization:
%% https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventDetailsForOrganization.html
%%
%% DescribeAffectedEntitiesForOrganization:
%% https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeAffectedEntitiesForOrganization.html
%%
%% If you don't specify a `filter', the
%% `DescribeEventsForOrganizations' returns all events across your
%% organization.
%% Results are sorted by `lastModifiedTime', starting with the most
%% recent event.
%%
%% For more information about the different types of Health events, see
%% Event:
%% https://docs.aws.amazon.com/health/latest/APIReference/API_Event.html.
%%
%% Before you can call this operation, you must first enable Health to work
%% with
%% Organizations. To do this, call the
%% EnableHealthServiceAccessForOrganization:
%% https://docs.aws.amazon.com/health/latest/APIReference/API_EnableHealthServiceAccessForOrganization.html
%% operation from your organization's
%% management account.
%%
%% This API operation uses pagination. Specify the `nextToken' parameter
%% in the next request to return more results.
-spec describe_events_for_organization(aws_client:aws_client(), describe_events_for_organization_request()) ->
    {ok, describe_events_for_organization_response(), tuple()} |
    {error, any()} |
    {error, describe_events_for_organization_errors(), tuple()}.
describe_events_for_organization(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_events_for_organization(Client, Input, []).

-spec describe_events_for_organization(aws_client:aws_client(), describe_events_for_organization_request(), proplists:proplist()) ->
    {ok, describe_events_for_organization_response(), tuple()} |
    {error, any()} |
    {error, describe_events_for_organization_errors(), tuple()}.
describe_events_for_organization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEventsForOrganization">>, Input, Options).

%% @doc This operation provides status information on enabling or disabling
%% Health to work
%% with your organization.
%%
%% To call this operation, you must use the organization's
%% management account.
-spec describe_health_service_status_for_organization(aws_client:aws_client(), #{}) ->
    {ok, describe_health_service_status_for_organization_response(), tuple()} |
    {error, any()}.
describe_health_service_status_for_organization(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_health_service_status_for_organization(Client, Input, []).

-spec describe_health_service_status_for_organization(aws_client:aws_client(), #{}, proplists:proplist()) ->
    {ok, describe_health_service_status_for_organization_response(), tuple()} |
    {error, any()}.
describe_health_service_status_for_organization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeHealthServiceStatusForOrganization">>, Input, Options).

%% @doc Disables Health from working with Organizations.
%%
%% To call this operation, you must sign
%% in to the organization's management account. For more information, see
%% Aggregating
%% Health events:
%% https://docs.aws.amazon.com/health/latest/ug/aggregate-events.html in the
%% Health User Guide.
%%
%% This operation doesn't remove the service-linked role from the
%% management account in your
%% organization. You must use the IAM console, API, or Command Line Interface
%% (CLI) to remove the
%% service-linked role. For more information, see Deleting a Service-Linked
%% Role:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/using-service-linked-roles.html#delete-service-linked-role
%% in the
%% IAM User Guide.
%%
%% You can also disable the organizational feature by using the Organizations
%% DisableAWSServiceAccess:
%% https://docs.aws.amazon.com/organizations/latest/APIReference/API_DisableAWSServiceAccess.html
%% API operation. After you call this operation,
%% Health stops aggregating events for all other Amazon Web Services accounts
%% in your organization.
%% If you call the Health API operations for organizational view, Health
%% returns
%% an error. Health continues to aggregate health events for your
%% Amazon Web Services account.
-spec disable_health_service_access_for_organization(aws_client:aws_client(), #{}) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disable_health_service_access_for_organization_errors(), tuple()}.
disable_health_service_access_for_organization(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_health_service_access_for_organization(Client, Input, []).

-spec disable_health_service_access_for_organization(aws_client:aws_client(), #{}, proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disable_health_service_access_for_organization_errors(), tuple()}.
disable_health_service_access_for_organization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableHealthServiceAccessForOrganization">>, Input, Options).

%% @doc Enables Health to work with Organizations.
%%
%% You can use the organizational view feature
%% to aggregate events from all Amazon Web Services accounts in your
%% organization in a centralized location.
%%
%% This operation also creates a service-linked role for the management
%% account in the
%% organization.
%%
%% To call this operation, you must meet the following requirements:
%%
%% You must have a Business, Enterprise On-Ramp, or Enterprise Support plan
%% from Amazon Web Services Support: http://aws.amazon.com/premiumsupport/ to
%% use the Health API. If you call
%% the Health API from an Amazon Web Services account that doesn't have a
%% Business, Enterprise On-Ramp, or Enterprise Support plan, you receive a
%% `SubscriptionRequiredException'
%% error.
%%
%% You must have permission to call this operation from the
%% organization's
%% management account. For example IAM policies, see Health
%% identity-based policy examples:
%% https://docs.aws.amazon.com/health/latest/ug/security_iam_id-based-policy-examples.html.
%%
%% If you don't have the required support plan, you can instead use the
%% Health console
%% to enable the organizational view feature. For more information, see
%% Aggregating
%% Health events:
%% https://docs.aws.amazon.com/health/latest/ug/aggregate-events.html in the
%% Health User Guide.
-spec enable_health_service_access_for_organization(aws_client:aws_client(), #{}) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, enable_health_service_access_for_organization_errors(), tuple()}.
enable_health_service_access_for_organization(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_health_service_access_for_organization(Client, Input, []).

-spec enable_health_service_access_for_organization(aws_client:aws_client(), #{}, proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, enable_health_service_access_for_organization_errors(), tuple()}.
enable_health_service_access_for_organization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableHealthServiceAccessForOrganization">>, Input, Options).

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
    Client1 = Client#{service => <<"health">>,
                      region => <<"us-east-1">>},
    Host = build_host(<<"health">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"AWSHealth_20160804.", Action/binary>>}
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
