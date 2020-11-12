%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS Health
%%
%% The AWS Health API provides programmatic access to the AWS Health
%% information that appears in the AWS Personal Health Dashboard.
%%
%% You can use the API operations to get information about AWS Health events
%% that affect your AWS services and resources.
%%
%% You must have a Business or Enterprise support plan from AWS Support to
%% use the AWS Health API. If you call the AWS Health API from an AWS account
%% that doesn't have a Business or Enterprise support plan, you receive a
%% `SubscriptionRequiredException` error.
%%
%% AWS Health has a single endpoint: health.us-east-1.amazonaws.com (HTTPS).
%% Use this endpoint to call the AWS Health API operations.
%%
%% For authentication of requests, AWS Health uses the Signature Version 4
%% Signing Process.
%%
%% If your AWS account is part of AWS Organizations, you can use the AWS
%% Health organizational view feature. This feature provides a centralized
%% view of AWS Health events across all accounts in your organization. You
%% can aggregate AWS Health events in real time to identify accounts in your
%% organization that are affected by an operational event or get notified of
%% security vulnerabilities. Use the organizational view API operations to
%% enable this feature and return event information. For more information,
%% see Aggregating AWS Health events in the AWS Health User Guide.
%%
%% When you use the AWS Health API operations to return AWS Health events,
%% see the following recommendations:
%%
%% Use the eventScopeCode parameter to specify whether to return AWS Health
%% events that are public or account-specific.
%%
%% Use pagination to view all events from the response. For example, if you
%% call the `DescribeEventsForOrganization` operation to get all events in
%% your organization, you might receive several page results. Specify the
%% `nextToken` in the next request to return more results.
-module(aws_health).

-export([describe_affected_accounts_for_organization/2,
         describe_affected_accounts_for_organization/3,
         describe_affected_entities/2,
         describe_affected_entities/3,
         describe_affected_entities_for_organization/2,
         describe_affected_entities_for_organization/3,
         describe_entity_aggregates/2,
         describe_entity_aggregates/3,
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

%%====================================================================
%% API
%%====================================================================

%% @doc Returns a list of accounts in the organization from AWS Organizations
%% that are affected by the provided event.
%%
%% For more information about the different types of AWS Health events, see
%% Event.
%%
%% Before you can call this operation, you must first enable AWS Health to
%% work with AWS Organizations. To do this, call the
%% EnableHealthServiceAccessForOrganization operation from your
%% organization's master account.
%%
%% This API operation uses pagination. Specify the `nextToken` parameter in
%% the next request to return more results.
describe_affected_accounts_for_organization(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_affected_accounts_for_organization(Client, Input, []).
describe_affected_accounts_for_organization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAffectedAccountsForOrganization">>, Input, Options).

%% @doc Returns a list of entities that have been affected by the specified
%% events, based on the specified filter criteria.
%%
%% Entities can refer to individual customer resources, groups of customer
%% resources, or any other construct, depending on the AWS service. Events
%% that have impact beyond that of the affected entities, or where the extent
%% of impact is unknown, include at least one entity indicating this.
%%
%% At least one event ARN is required. Results are sorted by the
%% `lastUpdatedTime` of the entity, starting with the most recent.
%%
%% This API operation uses pagination. Specify the `nextToken` parameter in
%% the next request to return more results.
describe_affected_entities(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_affected_entities(Client, Input, []).
describe_affected_entities(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAffectedEntities">>, Input, Options).

%% @doc Returns a list of entities that have been affected by one or more
%% events for one or more accounts in your organization in AWS Organizations,
%% based on the filter criteria.
%%
%% Entities can refer to individual customer resources, groups of customer
%% resources, or any other construct, depending on the AWS service.
%%
%% At least one event Amazon Resource Name (ARN) and account ID are required.
%% Results are sorted by the `lastUpdatedTime` of the entity, starting with
%% the most recent.
%%
%% Before you can call this operation, you must first enable AWS Health to
%% work with AWS Organizations. To do this, call the
%% EnableHealthServiceAccessForOrganization operation from your
%% organization's master account.
%%
%% This API operation uses pagination. Specify the `nextToken` parameter in
%% the next request to return more results.
describe_affected_entities_for_organization(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_affected_entities_for_organization(Client, Input, []).
describe_affected_entities_for_organization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAffectedEntitiesForOrganization">>, Input, Options).

%% @doc Returns the number of entities that are affected by each of the
%% specified events.
%%
%% If no events are specified, the counts of all affected entities are
%% returned.
describe_entity_aggregates(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_entity_aggregates(Client, Input, []).
describe_entity_aggregates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEntityAggregates">>, Input, Options).

%% @doc Returns the number of events of each event type (issue, scheduled
%% change, and account notification).
%%
%% If no filter is specified, the counts of all events in each category are
%% returned.
%%
%% This API operation uses pagination. Specify the `nextToken` parameter in
%% the next request to return more results.
describe_event_aggregates(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_event_aggregates(Client, Input, []).
describe_event_aggregates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEventAggregates">>, Input, Options).

%% @doc Returns detailed information about one or more specified events.
%%
%% Information includes standard event data (Region, service, and so on, as
%% returned by DescribeEvents), a detailed event description, and possible
%% additional metadata that depends upon the nature of the event. Affected
%% entities are not included. To retrieve those, use the
%% DescribeAffectedEntities operation.
%%
%% If a specified event cannot be retrieved, an error message is returned for
%% that event.
describe_event_details(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_event_details(Client, Input, []).
describe_event_details(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEventDetails">>, Input, Options).

%% @doc Returns detailed information about one or more specified events for
%% one or more accounts in your organization.
%%
%% Information includes standard event data (Region, service, and so on, as
%% returned by DescribeEventsForOrganization), a detailed event description,
%% and possible additional metadata that depends upon the nature of the
%% event. Affected entities are not included; to retrieve those, use the
%% DescribeAffectedEntitiesForOrganization operation.
%%
%% Before you can call this operation, you must first enable AWS Health to
%% work with AWS Organizations. To do this, call the
%% EnableHealthServiceAccessForOrganization operation from your
%% organization's master account.
%%
%% When you call the `DescribeEventDetailsForOrganization` operation, you
%% specify the `organizationEventDetailFilters` object in the request.
%% Depending on the AWS Health event type, note the following differences:
%%
%% <ul> <li> If the event is public, the `awsAccountId` parameter must be
%% empty. If you specify an account ID for a public event, then an error
%% message is returned. That's because the event might apply to all AWS
%% accounts and isn't specific to an account in your organization.
%%
%% </li> <li> If the event is specific to an account, then you must specify
%% the `awsAccountId` parameter in the request. If you don't specify an
%% account ID, an error message returns because the event is specific to an
%% AWS account in your organization.
%%
%% </li> </ul> For more information, see Event.
describe_event_details_for_organization(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_event_details_for_organization(Client, Input, []).
describe_event_details_for_organization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEventDetailsForOrganization">>, Input, Options).

%% @doc Returns the event types that meet the specified filter criteria.
%%
%% If no filter criteria are specified, all event types are returned, in no
%% particular order.
%%
%% This API operation uses pagination. Specify the `nextToken` parameter in
%% the next request to return more results.
describe_event_types(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_event_types(Client, Input, []).
describe_event_types(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEventTypes">>, Input, Options).

%% @doc Returns information about events that meet the specified filter
%% criteria.
%%
%% Events are returned in a summary form and do not include the detailed
%% description, any additional metadata that depends on the event type, or
%% any affected resources. To retrieve that information, use the
%% DescribeEventDetails and DescribeAffectedEntities operations.
%%
%% If no filter criteria are specified, all events are returned. Results are
%% sorted by `lastModifiedTime`, starting with the most recent event.
%%
%% When you call the `DescribeEvents` operation and specify an entity for the
%% `entityValues` parameter, AWS Health might return public events that
%% aren't specific to that resource. For example, if you call
%% `DescribeEvents` and specify an ID for an Amazon Elastic Compute Cloud
%% (Amazon EC2) instance, AWS Health might return events that aren't specific
%% to that resource or service. To get events that are specific to a service,
%% use the `services` parameter in the `filter` object. For more information,
%% see Event.
%%
%% This API operation uses pagination. Specify the `nextToken` parameter in
%% the next request to return more results.
describe_events(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_events(Client, Input, []).
describe_events(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEvents">>, Input, Options).

%% @doc Returns information about events across your organization in AWS
%% Organizations.
%%
%% You can use the`filters` parameter to specify the events that you want to
%% return. Events are returned in a summary form and don't include the
%% affected accounts, detailed description, any additional metadata that
%% depends on the event type, or any affected resources. To retrieve that
%% information, use the following operations:
%%
%% <ul> <li> DescribeAffectedAccountsForOrganization
%%
%% </li> <li> DescribeEventDetailsForOrganization
%%
%% </li> <li> DescribeAffectedEntitiesForOrganization
%%
%% </li> </ul> If you don't specify a `filter`, the
%% `DescribeEventsForOrganizations` returns all events across your
%% organization. Results are sorted by `lastModifiedTime`, starting with the
%% most recent event.
%%
%% For more information about the different types of AWS Health events, see
%% Event.
%%
%% Before you can call this operation, you must first enable AWS Health to
%% work with AWS Organizations. To do this, call the
%% EnableHealthServiceAccessForOrganization operation from your
%% organization's master AWS account.
%%
%% This API operation uses pagination. Specify the `nextToken` parameter in
%% the next request to return more results.
describe_events_for_organization(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_events_for_organization(Client, Input, []).
describe_events_for_organization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEventsForOrganization">>, Input, Options).

%% @doc This operation provides status information on enabling or disabling
%% AWS Health to work with your organization.
%%
%% To call this operation, you must sign in as an IAM user, assume an IAM
%% role, or sign in as the root user (not recommended) in the organization's
%% master account.
describe_health_service_status_for_organization(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_health_service_status_for_organization(Client, Input, []).
describe_health_service_status_for_organization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeHealthServiceStatusForOrganization">>, Input, Options).

%% @doc Disables AWS Health from working with AWS Organizations.
%%
%% To call this operation, you must sign in as an AWS Identity and Access
%% Management (IAM) user, assume an IAM role, or sign in as the root user
%% (not recommended) in the organization's master AWS account. For more
%% information, see Aggregating AWS Health events in the AWS Health User
%% Guide.
%%
%% This operation doesn't remove the service-linked role (SLR) from the AWS
%% master account in your organization. You must use the IAM console, API, or
%% AWS Command Line Interface (AWS CLI) to remove the SLR. For more
%% information, see Deleting a Service-Linked Role in the IAM User Guide.
%%
%% You can also disable the organizational feature by using the Organizations
%% DisableAWSServiceAccess API operation. After you call this operation, AWS
%% Health stops aggregating events for all other AWS accounts in your
%% organization. If you call the AWS Health API operations for organizational
%% view, AWS Health returns an error. AWS Health continues to aggregate
%% health events for your AWS account.
disable_health_service_access_for_organization(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_health_service_access_for_organization(Client, Input, []).
disable_health_service_access_for_organization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableHealthServiceAccessForOrganization">>, Input, Options).

%% @doc Calling this operation enables AWS Health to work with AWS
%% Organizations.
%%
%% This applies a service-linked role (SLR) to the master account in the
%% organization. To call this operation, you must sign in as an IAM user,
%% assume an IAM role, or sign in as the root user (not recommended) in the
%% organization's master account.
%%
%% For more information, see Aggregating AWS Health events in the AWS Health
%% User Guide.
enable_health_service_access_for_organization(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_health_service_access_for_organization(Client, Input, []).
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
request(Client, Action, Input0, Options) ->
    Client1 = Client#{service => <<"health">>},
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
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Client) ->
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
