%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc <fullname>AWS Health</fullname>
%%
%% The AWS Health API provides programmatic access to the AWS Health
%% information that is presented in the <a
%% href="https://phd.aws.amazon.com/phd/home#/">AWS Personal Health
%% Dashboard</a>. You can get information about events that affect your AWS
%% resources:
%%
%% <ul> <li> <a>DescribeEvents</a>: Summary information about events.
%%
%% </li> <li> <a>DescribeEventDetails</a>: Detailed information about one or
%% more events.
%%
%% </li> <li> <a>DescribeAffectedEntities</a>: Information about AWS
%% resources that are affected by one or more events.
%%
%% </li> </ul> In addition, these operations provide information about event
%% types and summary counts of events or affected entities:
%%
%% <ul> <li> <a>DescribeEventTypes</a>: Information about the kinds of events
%% that AWS Health tracks.
%%
%% </li> <li> <a>DescribeEventAggregates</a>: A count of the number of events
%% that meet specified criteria.
%%
%% </li> <li> <a>DescribeEntityAggregates</a>: A count of the number of
%% affected entities that meet specified criteria.
%%
%% </li> </ul> AWS Health integrates with AWS Organizations to provide a
%% centralized view of AWS Health events across all accounts in your
%% organization.
%%
%% <ul> <li> <a>DescribeEventsForOrganization</a>: Summary information about
%% events across the organization.
%%
%% </li> <li> <a>DescribeAffectedAccountsForOrganization</a>: List of
%% accounts in your organization impacted by an event.
%%
%% </li> <li> <a>DescribeEventDetailsForOrganization</a>: Detailed
%% information about events in your organization.
%%
%% </li> <li> <a>DescribeAffectedEntitiesForOrganization</a>: Information
%% about AWS resources in your organization that are affected by events.
%%
%% </li> </ul> You can use the following operations to enable or disable AWS
%% Health from working with AWS Organizations.
%%
%% <ul> <li> <a>EnableHealthServiceAccessForOrganization</a>: Enables AWS
%% Health to work with AWS Organizations.
%%
%% </li> <li> <a>DisableHealthServiceAccessForOrganization</a>: Disables AWS
%% Health from working with AWS Organizations.
%%
%% </li> <li> <a>DescribeHealthServiceStatusForOrganization</a>: Status
%% information about enabling or disabling AWS Health from working with AWS
%% Organizations.
%%
%% </li> </ul> The Health API requires a Business or Enterprise support plan
%% from <a href="http://aws.amazon.com/premiumsupport/">AWS Support</a>.
%% Calling the Health API from an account that does not have a Business or
%% Enterprise support plan causes a
%% <code>SubscriptionRequiredException</code>.
%%
%% For authentication of requests, AWS Health uses the <a
%% href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature
%% Version 4 Signing Process</a>.
%%
%% See the <a
%% href="https://docs.aws.amazon.com/health/latest/ug/what-is-aws-health.html">AWS
%% Health User Guide</a> for information about how to use the API.
%%
%% <b>Service Endpoint</b>
%%
%% The HTTP endpoint for the AWS Health API is:
%%
%% <ul> <li> https://health.us-east-1.amazonaws.com
%%
%% </li> </ul>
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
%% Before you can call this operation, you must first enable AWS Health to
%% work with AWS Organizations. To do this, call the
%% <a>EnableHealthServiceAccessForOrganization</a> operation from your
%% organization's master account.
describe_affected_accounts_for_organization(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_affected_accounts_for_organization(Client, Input, []).
describe_affected_accounts_for_organization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAffectedAccountsForOrganization">>, Input, Options).

%% @doc Returns a list of entities that have been affected by the specified
%% events, based on the specified filter criteria. Entities can refer to
%% individual customer resources, groups of customer resources, or any other
%% construct, depending on the AWS service. Events that have impact beyond
%% that of the affected entities, or where the extent of impact is unknown,
%% include at least one entity indicating this.
%%
%% At least one event ARN is required. Results are sorted by the
%% <code>lastUpdatedTime</code> of the entity, starting with the most recent.
describe_affected_entities(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_affected_entities(Client, Input, []).
describe_affected_entities(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAffectedEntities">>, Input, Options).

%% @doc Returns a list of entities that have been affected by one or more
%% events for one or more accounts in your organization in AWS Organizations,
%% based on the filter criteria. Entities can refer to individual customer
%% resources, groups of customer resources, or any other construct, depending
%% on the AWS service.
%%
%% At least one event ARN and account ID are required. Results are sorted by
%% the <code>lastUpdatedTime</code> of the entity, starting with the most
%% recent.
%%
%% Before you can call this operation, you must first enable AWS Health to
%% work with AWS Organizations. To do this, call the
%% <a>EnableHealthServiceAccessForOrganization</a> operation from your
%% organization's master account.
describe_affected_entities_for_organization(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_affected_entities_for_organization(Client, Input, []).
describe_affected_entities_for_organization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAffectedEntitiesForOrganization">>, Input, Options).

%% @doc Returns the number of entities that are affected by each of the
%% specified events. If no events are specified, the counts of all affected
%% entities are returned.
describe_entity_aggregates(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_entity_aggregates(Client, Input, []).
describe_entity_aggregates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEntityAggregates">>, Input, Options).

%% @doc Returns the number of events of each event type (issue, scheduled
%% change, and account notification). If no filter is specified, the counts
%% of all events in each category are returned.
describe_event_aggregates(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_event_aggregates(Client, Input, []).
describe_event_aggregates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEventAggregates">>, Input, Options).

%% @doc Returns detailed information about one or more specified events.
%% Information includes standard event data (region, service, and so on, as
%% returned by <a>DescribeEvents</a>), a detailed event description, and
%% possible additional metadata that depends upon the nature of the event.
%% Affected entities are not included; to retrieve those, use the
%% <a>DescribeAffectedEntities</a> operation.
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
%% one or more accounts in your organization. Information includes standard
%% event data (Region, service, and so on, as returned by
%% <a>DescribeEventsForOrganization</a>, a detailed event description, and
%% possible additional metadata that depends upon the nature of the event.
%% Affected entities are not included; to retrieve those, use the
%% <a>DescribeAffectedEntitiesForOrganization</a> operation.
%%
%% Before you can call this operation, you must first enable AWS Health to
%% work with AWS Organizations. To do this, call the
%% <a>EnableHealthServiceAccessForOrganization</a> operation from your
%% organization's master account.
describe_event_details_for_organization(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_event_details_for_organization(Client, Input, []).
describe_event_details_for_organization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEventDetailsForOrganization">>, Input, Options).

%% @doc Returns the event types that meet the specified filter criteria. If
%% no filter criteria are specified, all event types are returned, in no
%% particular order.
describe_event_types(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_event_types(Client, Input, []).
describe_event_types(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEventTypes">>, Input, Options).

%% @doc Returns information about events that meet the specified filter
%% criteria. Events are returned in a summary form and do not include the
%% detailed description, any additional metadata that depends on the event
%% type, or any affected resources. To retrieve that information, use the
%% <a>DescribeEventDetails</a> and <a>DescribeAffectedEntities</a>
%% operations.
%%
%% If no filter criteria are specified, all events are returned. Results are
%% sorted by <code>lastModifiedTime</code>, starting with the most recent.
describe_events(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_events(Client, Input, []).
describe_events(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEvents">>, Input, Options).

%% @doc Returns information about events across your organization in AWS
%% Organizations, meeting the specified filter criteria. Events are returned
%% in a summary form and do not include the accounts impacted, detailed
%% description, any additional metadata that depends on the event type, or
%% any affected resources. To retrieve that information, use the
%% <a>DescribeAffectedAccountsForOrganization</a>,
%% <a>DescribeEventDetailsForOrganization</a>, and
%% <a>DescribeAffectedEntitiesForOrganization</a> operations.
%%
%% If no filter criteria are specified, all events across your organization
%% are returned. Results are sorted by <code>lastModifiedTime</code>,
%% starting with the most recent.
%%
%% Before you can call this operation, you must first enable Health to work
%% with AWS Organizations. To do this, call the
%% <a>EnableHealthServiceAccessForOrganization</a> operation from your
%% organization's master account.
describe_events_for_organization(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_events_for_organization(Client, Input, []).
describe_events_for_organization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEventsForOrganization">>, Input, Options).

%% @doc This operation provides status information on enabling or disabling
%% AWS Health to work with your organization. To call this operation, you
%% must sign in as an IAM user, assume an IAM role, or sign in as the root
%% user (not recommended) in the organization's master account.
describe_health_service_status_for_organization(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_health_service_status_for_organization(Client, Input, []).
describe_health_service_status_for_organization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeHealthServiceStatusForOrganization">>, Input, Options).

%% @doc Calling this operation disables Health from working with AWS
%% Organizations. This does not remove the Service Linked Role (SLR) from the
%% the master account in your organization. Use the IAM console, API, or AWS
%% CLI to remove the SLR if desired. To call this operation, you must sign in
%% as an IAM user, assume an IAM role, or sign in as the root user (not
%% recommended) in the organization's master account.
disable_health_service_access_for_organization(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_health_service_access_for_organization(Client, Input, []).
disable_health_service_access_for_organization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableHealthServiceAccessForOrganization">>, Input, Options).

%% @doc Calling this operation enables AWS Health to work with AWS
%% Organizations. This applies a Service Linked Role (SLR) to the master
%% account in the organization. To learn more about the steps in this
%% process, visit enabling service access for AWS Health in AWS
%% Organizations. To call this operation, you must sign in as an IAM user,
%% assume an IAM role, or sign in as the root user (not recommended) in the
%% organization's master account.
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
    Error :: {binary(), binary()}.
request(Client, Action, Input, Options) ->
    Client1 = Client#{service => <<"health">>},
    Host = get_host(<<"health">>, Client1),
    URL = get_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, << <<"AWSHealth_20160804.">>/binary, Action/binary>>}
    ],
    Payload = jsx:encode(Input),
    SignedHeaders = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, SignedHeaders, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    case hackney:body(Client) of
        {ok, <<>>} ->
            {ok, undefined, {200, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body, [return_maps]),
            {ok, Result, {200, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body, [return_maps]),
    Exception = maps:get(<<"__type">>, Error, undefined),
    Reason = maps:get(<<"message">>, Error, undefined),
    {error, {Exception, Reason}, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.

get_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
get_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, <<".">>, Region, <<".">>, Endpoint], <<"">>).

get_url(Host, Client) ->
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
