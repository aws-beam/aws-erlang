%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon EventBridge helps you to respond to state changes in your
%% Amazon Web Services resources.
%%
%% When your resources change state, they automatically send events to an
%% event stream. You can create rules that match selected events in the
%% stream and route them to targets to take action. You can also use rules to
%% take action on a predetermined schedule. For example, you can configure
%% rules to:
%%
%% <ul> <li> Automatically invoke an Lambda function to update DNS entries
%% when an event notifies you that Amazon EC2 instance enters the running
%% state.
%%
%% </li> <li> Direct specific API records from CloudTrail to an Amazon
%% Kinesis data stream for detailed analysis of potential security or
%% availability risks.
%%
%% </li> <li> Periodically invoke a built-in target to create a snapshot of
%% an Amazon EBS volume.
%%
%% </li> </ul> For more information about the features of Amazon EventBridge,
%% see the Amazon EventBridge User Guide.
-module(aws_cloudwatch_events).

-export([activate_event_source/2,
         activate_event_source/3,
         cancel_replay/2,
         cancel_replay/3,
         create_api_destination/2,
         create_api_destination/3,
         create_archive/2,
         create_archive/3,
         create_connection/2,
         create_connection/3,
         create_event_bus/2,
         create_event_bus/3,
         create_partner_event_source/2,
         create_partner_event_source/3,
         deactivate_event_source/2,
         deactivate_event_source/3,
         deauthorize_connection/2,
         deauthorize_connection/3,
         delete_api_destination/2,
         delete_api_destination/3,
         delete_archive/2,
         delete_archive/3,
         delete_connection/2,
         delete_connection/3,
         delete_event_bus/2,
         delete_event_bus/3,
         delete_partner_event_source/2,
         delete_partner_event_source/3,
         delete_rule/2,
         delete_rule/3,
         describe_api_destination/2,
         describe_api_destination/3,
         describe_archive/2,
         describe_archive/3,
         describe_connection/2,
         describe_connection/3,
         describe_event_bus/2,
         describe_event_bus/3,
         describe_event_source/2,
         describe_event_source/3,
         describe_partner_event_source/2,
         describe_partner_event_source/3,
         describe_replay/2,
         describe_replay/3,
         describe_rule/2,
         describe_rule/3,
         disable_rule/2,
         disable_rule/3,
         enable_rule/2,
         enable_rule/3,
         list_api_destinations/2,
         list_api_destinations/3,
         list_archives/2,
         list_archives/3,
         list_connections/2,
         list_connections/3,
         list_event_buses/2,
         list_event_buses/3,
         list_event_sources/2,
         list_event_sources/3,
         list_partner_event_source_accounts/2,
         list_partner_event_source_accounts/3,
         list_partner_event_sources/2,
         list_partner_event_sources/3,
         list_replays/2,
         list_replays/3,
         list_rule_names_by_target/2,
         list_rule_names_by_target/3,
         list_rules/2,
         list_rules/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_targets_by_rule/2,
         list_targets_by_rule/3,
         put_events/2,
         put_events/3,
         put_partner_events/2,
         put_partner_events/3,
         put_permission/2,
         put_permission/3,
         put_rule/2,
         put_rule/3,
         put_targets/2,
         put_targets/3,
         remove_permission/2,
         remove_permission/3,
         remove_targets/2,
         remove_targets/3,
         start_replay/2,
         start_replay/3,
         tag_resource/2,
         tag_resource/3,
         test_event_pattern/2,
         test_event_pattern/3,
         untag_resource/2,
         untag_resource/3,
         update_api_destination/2,
         update_api_destination/3,
         update_archive/2,
         update_archive/3,
         update_connection/2,
         update_connection/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Activates a partner event source that has been deactivated.
%%
%% Once activated, your matching event bus will start receiving events from
%% the event source.
activate_event_source(Client, Input)
  when is_map(Client), is_map(Input) ->
    activate_event_source(Client, Input, []).
activate_event_source(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ActivateEventSource">>, Input, Options).

%% @doc Cancels the specified replay.
cancel_replay(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_replay(Client, Input, []).
cancel_replay(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelReplay">>, Input, Options).

%% @doc Creates an API destination, which is an HTTP invocation endpoint
%% configured as a target for events.
create_api_destination(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_api_destination(Client, Input, []).
create_api_destination(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateApiDestination">>, Input, Options).

%% @doc Creates an archive of events with the specified settings.
%%
%% When you create an archive, incoming events might not immediately start
%% being sent to the archive. Allow a short period of time for changes to
%% take effect. If you do not specify a pattern to filter events sent to the
%% archive, all events are sent to the archive except replayed events.
%% Replayed events are not sent to an archive.
create_archive(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_archive(Client, Input, []).
create_archive(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateArchive">>, Input, Options).

%% @doc Creates a connection.
%%
%% A connection defines the authorization type and credentials to use for
%% authorization with an API destination HTTP endpoint.
create_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_connection(Client, Input, []).
create_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateConnection">>, Input, Options).

%% @doc Creates a new event bus within your account.
%%
%% This can be a custom event bus which you can use to receive events from
%% your custom applications and services, or it can be a partner event bus
%% which can be matched to a partner event source.
create_event_bus(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_event_bus(Client, Input, []).
create_event_bus(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateEventBus">>, Input, Options).

%% @doc Called by an SaaS partner to create a partner event source.
%%
%% This operation is not used by Amazon Web Services customers.
%%
%% Each partner event source can be used by one Amazon Web Services account
%% to create a matching partner event bus in that Amazon Web Services
%% account. A SaaS partner must create one partner event source for each
%% Amazon Web Services account that wants to receive those event types.
%%
%% A partner event source creates events based on resources within the SaaS
%% partner's service or application.
%%
%% An Amazon Web Services account that creates a partner event bus that
%% matches the partner event source can use that event bus to receive events
%% from the partner, and then process them using Amazon Web Services Events
%% rules and targets.
%%
%% Partner event source names follow this format:
%%
%% ` partner_name/event_namespace/event_name '
%%
%% partner_name is determined during partner registration and identifies the
%% partner to Amazon Web Services customers. event_namespace is determined by
%% the partner and is a way for the partner to categorize their events.
%% event_name is determined by the partner, and should uniquely identify an
%% event-generating resource within the partner system. The combination of
%% event_namespace and event_name should help Amazon Web Services customers
%% decide whether to create an event bus to receive these events.
create_partner_event_source(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_partner_event_source(Client, Input, []).
create_partner_event_source(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePartnerEventSource">>, Input, Options).

%% @doc You can use this operation to temporarily stop receiving events from
%% the specified partner event source.
%%
%% The matching event bus is not deleted.
%%
%% When you deactivate a partner event source, the source goes into PENDING
%% state. If it remains in PENDING state for more than two weeks, it is
%% deleted.
%%
%% To activate a deactivated partner event source, use ActivateEventSource.
deactivate_event_source(Client, Input)
  when is_map(Client), is_map(Input) ->
    deactivate_event_source(Client, Input, []).
deactivate_event_source(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeactivateEventSource">>, Input, Options).

%% @doc Removes all authorization parameters from the connection.
%%
%% This lets you remove the secret from the connection so you can reuse it
%% without having to create a new connection.
deauthorize_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    deauthorize_connection(Client, Input, []).
deauthorize_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeauthorizeConnection">>, Input, Options).

%% @doc Deletes the specified API destination.
delete_api_destination(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_api_destination(Client, Input, []).
delete_api_destination(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteApiDestination">>, Input, Options).

%% @doc Deletes the specified archive.
delete_archive(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_archive(Client, Input, []).
delete_archive(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteArchive">>, Input, Options).

%% @doc Deletes a connection.
delete_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_connection(Client, Input, []).
delete_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteConnection">>, Input, Options).

%% @doc Deletes the specified custom event bus or partner event bus.
%%
%% All rules associated with this event bus need to be deleted. You can't
%% delete your account's default event bus.
delete_event_bus(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_event_bus(Client, Input, []).
delete_event_bus(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEventBus">>, Input, Options).

%% @doc This operation is used by SaaS partners to delete a partner event
%% source.
%%
%% This operation is not used by Amazon Web Services customers.
%%
%% When you delete an event source, the status of the corresponding partner
%% event bus in the Amazon Web Services customer account becomes DELETED.
delete_partner_event_source(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_partner_event_source(Client, Input, []).
delete_partner_event_source(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePartnerEventSource">>, Input, Options).

%% @doc Deletes the specified rule.
%%
%% Before you can delete the rule, you must remove all targets, using
%% RemoveTargets.
%%
%% When you delete a rule, incoming events might continue to match to the
%% deleted rule. Allow a short period of time for changes to take effect.
%%
%% If you call delete rule multiple times for the same rule, all calls will
%% succeed. When you call delete rule for a non-existent custom eventbus,
%% `ResourceNotFoundException' is returned.
%%
%% Managed rules are rules created and managed by another Amazon Web Services
%% service on your behalf. These rules are created by those other Amazon Web
%% Services services to support functionality in those services. You can
%% delete these rules using the `Force' option, but you should do so only if
%% you are sure the other service is not still using that rule.
delete_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_rule(Client, Input, []).
delete_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRule">>, Input, Options).

%% @doc Retrieves details about an API destination.
describe_api_destination(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_api_destination(Client, Input, []).
describe_api_destination(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeApiDestination">>, Input, Options).

%% @doc Retrieves details about an archive.
describe_archive(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_archive(Client, Input, []).
describe_archive(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeArchive">>, Input, Options).

%% @doc Retrieves details about a connection.
describe_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_connection(Client, Input, []).
describe_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeConnection">>, Input, Options).

%% @doc Displays details about an event bus in your account.
%%
%% This can include the external Amazon Web Services accounts that are
%% permitted to write events to your default event bus, and the associated
%% policy. For custom event buses and partner event buses, it displays the
%% name, ARN, policy, state, and creation time.
%%
%% To enable your account to receive events from other accounts on its
%% default event bus, use PutPermission.
%%
%% For more information about partner event buses, see CreateEventBus.
describe_event_bus(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_event_bus(Client, Input, []).
describe_event_bus(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEventBus">>, Input, Options).

%% @doc This operation lists details about a partner event source that is
%% shared with your account.
describe_event_source(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_event_source(Client, Input, []).
describe_event_source(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEventSource">>, Input, Options).

%% @doc An SaaS partner can use this operation to list details about a
%% partner event source that they have created.
%%
%% Amazon Web Services customers do not use this operation. Instead, Amazon
%% Web Services customers can use DescribeEventSource to see details about a
%% partner event source that is shared with them.
describe_partner_event_source(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_partner_event_source(Client, Input, []).
describe_partner_event_source(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePartnerEventSource">>, Input, Options).

%% @doc Retrieves details about a replay.
%%
%% Use `DescribeReplay' to determine the progress of a running replay. A
%% replay processes events to replay based on the time in the event, and
%% replays them using 1 minute intervals. If you use `StartReplay' and
%% specify an `EventStartTime' and an `EventEndTime' that covers a 20 minute
%% time range, the events are replayed from the first minute of that 20
%% minute range first. Then the events from the second minute are replayed.
%% You can use `DescribeReplay' to determine the progress of a replay. The
%% value returned for `EventLastReplayedTime' indicates the time within the
%% specified time range associated with the last event replayed.
describe_replay(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_replay(Client, Input, []).
describe_replay(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeReplay">>, Input, Options).

%% @doc Describes the specified rule.
%%
%% DescribeRule does not list the targets of a rule. To see the targets
%% associated with a rule, use ListTargetsByRule.
describe_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_rule(Client, Input, []).
describe_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRule">>, Input, Options).

%% @doc Disables the specified rule.
%%
%% A disabled rule won't match any events, and won't self-trigger if it has a
%% schedule expression.
%%
%% When you disable a rule, incoming events might continue to match to the
%% disabled rule. Allow a short period of time for changes to take effect.
disable_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_rule(Client, Input, []).
disable_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableRule">>, Input, Options).

%% @doc Enables the specified rule.
%%
%% If the rule does not exist, the operation fails.
%%
%% When you enable a rule, incoming events might not immediately start
%% matching to a newly enabled rule. Allow a short period of time for changes
%% to take effect.
enable_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_rule(Client, Input, []).
enable_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableRule">>, Input, Options).

%% @doc Retrieves a list of API destination in the account in the current
%% Region.
list_api_destinations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_api_destinations(Client, Input, []).
list_api_destinations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListApiDestinations">>, Input, Options).

%% @doc Lists your archives.
%%
%% You can either list all the archives or you can provide a prefix to match
%% to the archive names. Filter parameters are exclusive.
list_archives(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_archives(Client, Input, []).
list_archives(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListArchives">>, Input, Options).

%% @doc Retrieves a list of connections from the account.
list_connections(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_connections(Client, Input, []).
list_connections(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListConnections">>, Input, Options).

%% @doc Lists all the event buses in your account, including the default
%% event bus, custom event buses, and partner event buses.
list_event_buses(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_event_buses(Client, Input, []).
list_event_buses(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEventBuses">>, Input, Options).

%% @doc You can use this to see all the partner event sources that have been
%% shared with your Amazon Web Services account.
%%
%% For more information about partner event sources, see CreateEventBus.
list_event_sources(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_event_sources(Client, Input, []).
list_event_sources(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEventSources">>, Input, Options).

%% @doc An SaaS partner can use this operation to display the Amazon Web
%% Services account ID that a particular partner event source name is
%% associated with.
%%
%% This operation is not used by Amazon Web Services customers.
list_partner_event_source_accounts(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_partner_event_source_accounts(Client, Input, []).
list_partner_event_source_accounts(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPartnerEventSourceAccounts">>, Input, Options).

%% @doc An SaaS partner can use this operation to list all the partner event
%% source names that they have created.
%%
%% This operation is not used by Amazon Web Services customers.
list_partner_event_sources(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_partner_event_sources(Client, Input, []).
list_partner_event_sources(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPartnerEventSources">>, Input, Options).

%% @doc Lists your replays.
%%
%% You can either list all the replays or you can provide a prefix to match
%% to the replay names. Filter parameters are exclusive.
list_replays(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_replays(Client, Input, []).
list_replays(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListReplays">>, Input, Options).

%% @doc Lists the rules for the specified target.
%%
%% You can see which of the rules in Amazon EventBridge can invoke a specific
%% target in your account.
list_rule_names_by_target(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_rule_names_by_target(Client, Input, []).
list_rule_names_by_target(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRuleNamesByTarget">>, Input, Options).

%% @doc Lists your Amazon EventBridge rules.
%%
%% You can either list all the rules or you can provide a prefix to match to
%% the rule names.
%%
%% ListRules does not list the targets of a rule. To see the targets
%% associated with a rule, use ListTargetsByRule.
list_rules(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_rules(Client, Input, []).
list_rules(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRules">>, Input, Options).

%% @doc Displays the tags associated with an EventBridge resource.
%%
%% In EventBridge, rules and event buses can be tagged.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Lists the targets assigned to the specified rule.
list_targets_by_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_targets_by_rule(Client, Input, []).
list_targets_by_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTargetsByRule">>, Input, Options).

%% @doc Sends custom events to Amazon EventBridge so that they can be matched
%% to rules.
put_events(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_events(Client, Input, []).
put_events(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutEvents">>, Input, Options).

%% @doc This is used by SaaS partners to write events to a customer's partner
%% event bus.
%%
%% Amazon Web Services customers do not use this operation.
put_partner_events(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_partner_events(Client, Input, []).
put_partner_events(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutPartnerEvents">>, Input, Options).

%% @doc Running `PutPermission' permits the specified Amazon Web Services
%% account or Amazon Web Services organization to put events to the specified
%% event bus.
%%
%% Amazon EventBridge (CloudWatch Events) rules in your account are triggered
%% by these events arriving to an event bus in your account.
%%
%% For another account to send events to your account, that external account
%% must have an EventBridge rule with your account's event bus as a target.
%%
%% To enable multiple Amazon Web Services accounts to put events to your
%% event bus, run `PutPermission' once for each of these accounts. Or, if all
%% the accounts are members of the same Amazon Web Services organization, you
%% can run `PutPermission' once specifying `Principal' as "*" and specifying
%% the Amazon Web Services organization ID in `Condition', to grant
%% permissions to all accounts in that organization.
%%
%% If you grant permissions using an organization, then accounts in that
%% organization must specify a `RoleArn' with proper permissions when they
%% use `PutTarget' to add your account's event bus as a target. For more
%% information, see Sending and Receiving Events Between Amazon Web Services
%% Accounts in the Amazon EventBridge User Guide.
%%
%% The permission policy on the event bus cannot exceed 10 KB in size.
put_permission(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_permission(Client, Input, []).
put_permission(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutPermission">>, Input, Options).

%% @doc Creates or updates the specified rule.
%%
%% Rules are enabled by default, or based on value of the state. You can
%% disable a rule using DisableRule.
%%
%% A single rule watches for events from a single event bus. Events generated
%% by Amazon Web Services services go to your account's default event bus.
%% Events generated by SaaS partner services or applications go to the
%% matching partner event bus. If you have custom applications or services,
%% you can specify whether their events go to your default event bus or a
%% custom event bus that you have created. For more information, see
%% CreateEventBus.
%%
%% If you are updating an existing rule, the rule is replaced with what you
%% specify in this `PutRule' command. If you omit arguments in `PutRule', the
%% old values for those arguments are not kept. Instead, they are replaced
%% with null values.
%%
%% When you create or update a rule, incoming events might not immediately
%% start matching to new or updated rules. Allow a short period of time for
%% changes to take effect.
%%
%% A rule must contain at least an EventPattern or ScheduleExpression. Rules
%% with EventPatterns are triggered when a matching event is observed. Rules
%% with ScheduleExpressions self-trigger based on the given schedule. A rule
%% can have both an EventPattern and a ScheduleExpression, in which case the
%% rule triggers on matching events as well as on a schedule.
%%
%% When you initially create a rule, you can optionally assign one or more
%% tags to the rule. Tags can help you organize and categorize your
%% resources. You can also use them to scope user permissions, by granting a
%% user permission to access or change only rules with certain tag values. To
%% use the `PutRule' operation and assign tags, you must have both the
%% `events:PutRule' and `events:TagResource' permissions.
%%
%% If you are updating an existing rule, any tags you specify in the
%% `PutRule' operation are ignored. To update the tags of an existing rule,
%% use TagResource and UntagResource.
%%
%% Most services in Amazon Web Services treat : or / as the same character in
%% Amazon Resource Names (ARNs). However, EventBridge uses an exact match in
%% event patterns and rules. Be sure to use the correct ARN characters when
%% creating event patterns so that they match the ARN syntax in the event you
%% want to match.
%%
%% In EventBridge, it is possible to create rules that lead to infinite
%% loops, where a rule is fired repeatedly. For example, a rule might detect
%% that ACLs have changed on an S3 bucket, and trigger software to change
%% them to the desired state. If the rule is not written carefully, the
%% subsequent change to the ACLs fires the rule again, creating an infinite
%% loop.
%%
%% To prevent this, write the rules so that the triggered actions do not
%% re-fire the same rule. For example, your rule could fire only if ACLs are
%% found to be in a bad state, instead of after any change.
%%
%% An infinite loop can quickly cause higher than expected charges. We
%% recommend that you use budgeting, which alerts you when charges exceed
%% your specified limit. For more information, see Managing Your Costs with
%% Budgets.
put_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_rule(Client, Input, []).
put_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutRule">>, Input, Options).

%% @doc Adds the specified targets to the specified rule, or updates the
%% targets if they are already associated with the rule.
%%
%% Targets are the resources that are invoked when a rule is triggered.
%%
%% You can configure the following as targets for Events:
%%
%% <ul> <li> API destination
%%
%% </li> <li> Amazon API Gateway REST API endpoints
%%
%% </li> <li> API Gateway
%%
%% </li> <li> Batch job queue
%%
%% </li> <li> CloudWatch Logs group
%%
%% </li> <li> CodeBuild project
%%
%% </li> <li> CodePipeline
%%
%% </li> <li> Amazon EC2 `CreateSnapshot' API call
%%
%% </li> <li> Amazon EC2 `RebootInstances' API call
%%
%% </li> <li> Amazon EC2 `StopInstances' API call
%%
%% </li> <li> Amazon EC2 `TerminateInstances' API call
%%
%% </li> <li> Amazon ECS tasks
%%
%% </li> <li> Event bus in a different Amazon Web Services account or Region.
%%
%% You can use an event bus in the US East (N. Virginia) us-east-1, US West
%% (Oregon) us-west-2, or Europe (Ireland) eu-west-1 Regions as a target for
%% a rule.
%%
%% </li> <li> Firehose delivery stream (Kinesis Data Firehose)
%%
%% </li> <li> Inspector assessment template (Amazon Inspector)
%%
%% </li> <li> Kinesis stream (Kinesis Data Stream)
%%
%% </li> <li> Lambda function
%%
%% </li> <li> Redshift clusters (Data API statement execution)
%%
%% </li> <li> Amazon SNS topic
%%
%% </li> <li> Amazon SQS queues (includes FIFO queues
%%
%% </li> <li> SSM Automation
%%
%% </li> <li> SSM OpsItem
%%
%% </li> <li> SSM Run Command
%%
%% </li> <li> Step Functions state machines
%%
%% </li> </ul> Creating rules with built-in targets is supported only in the
%% Management Console. The built-in targets are `EC2 CreateSnapshot API
%% call', `EC2 RebootInstances API call', `EC2 StopInstances API call', and
%% `EC2 TerminateInstances API call'.
%%
%% For some target types, `PutTargets' provides target-specific parameters.
%% If the target is a Kinesis data stream, you can optionally specify which
%% shard the event goes to by using the `KinesisParameters' argument. To
%% invoke a command on multiple EC2 instances with one rule, you can use the
%% `RunCommandParameters' field.
%%
%% To be able to make API calls against the resources that you own, Amazon
%% EventBridge needs the appropriate permissions. For Lambda and Amazon SNS
%% resources, EventBridge relies on resource-based policies. For EC2
%% instances, Kinesis Data Streams, Step Functions state machines and API
%% Gateway REST APIs, EventBridge relies on IAM roles that you specify in the
%% `RoleARN' argument in `PutTargets'. For more information, see
%% Authentication and Access Control in the Amazon EventBridge User Guide.
%%
%% If another Amazon Web Services account is in the same region and has
%% granted you permission (using `PutPermission'), you can send events to
%% that account. Set that account's event bus as a target of the rules in
%% your account. To send the matched events to the other account, specify
%% that account's event bus as the `Arn' value when you run `PutTargets'. If
%% your account sends events to another account, your account is charged for
%% each sent event. Each event sent to another account is charged as a custom
%% event. The account receiving the event is not charged. For more
%% information, see Amazon EventBridge Pricing.
%%
%% `Input', `InputPath', and `InputTransformer' are not available with
%% `PutTarget' if the target is an event bus of a different Amazon Web
%% Services account.
%%
%% If you are setting the event bus of another account as the target, and
%% that account granted permission to your account through an organization
%% instead of directly by the account ID, then you must specify a `RoleArn'
%% with proper permissions in the `Target' structure. For more information,
%% see Sending and Receiving Events Between Amazon Web Services Accounts in
%% the Amazon EventBridge User Guide.
%%
%% For more information about enabling cross-account events, see
%% PutPermission.
%%
%% Input, InputPath, and InputTransformer are mutually exclusive and optional
%% parameters of a target. When a rule is triggered due to a matched event:
%%
%% <ul> <li> If none of the following arguments are specified for a target,
%% then the entire event is passed to the target in JSON format (unless the
%% target is Amazon EC2 Run Command or Amazon ECS task, in which case nothing
%% from the event is passed to the target).
%%
%% </li> <li> If Input is specified in the form of valid JSON, then the
%% matched event is overridden with this constant.
%%
%% </li> <li> If InputPath is specified in the form of JSONPath (for example,
%% `$.detail'), then only the part of the event specified in the path is
%% passed to the target (for example, only the detail part of the event is
%% passed).
%%
%% </li> <li> If InputTransformer is specified, then one or more specified
%% JSONPaths are extracted from the event and used as values in a template
%% that you specify as the input to the target.
%%
%% </li> </ul> When you specify `InputPath' or `InputTransformer', you must
%% use JSON dot notation, not bracket notation.
%%
%% When you add targets to a rule and the associated rule triggers soon
%% after, new or updated targets might not be immediately invoked. Allow a
%% short period of time for changes to take effect.
%%
%% This action can partially fail if too many requests are made at the same
%% time. If that happens, `FailedEntryCount' is non-zero in the response and
%% each entry in `FailedEntries' provides the ID of the failed target and the
%% error code.
put_targets(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_targets(Client, Input, []).
put_targets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutTargets">>, Input, Options).

%% @doc Revokes the permission of another Amazon Web Services account to be
%% able to put events to the specified event bus.
%%
%% Specify the account to revoke by the `StatementId' value that you
%% associated with the account when you granted it permission with
%% `PutPermission'. You can find the `StatementId' by using DescribeEventBus.
remove_permission(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_permission(Client, Input, []).
remove_permission(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemovePermission">>, Input, Options).

%% @doc Removes the specified targets from the specified rule.
%%
%% When the rule is triggered, those targets are no longer be invoked.
%%
%% When you remove a target, when the associated rule triggers, removed
%% targets might continue to be invoked. Allow a short period of time for
%% changes to take effect.
%%
%% This action can partially fail if too many requests are made at the same
%% time. If that happens, `FailedEntryCount' is non-zero in the response and
%% each entry in `FailedEntries' provides the ID of the failed target and the
%% error code.
remove_targets(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_targets(Client, Input, []).
remove_targets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveTargets">>, Input, Options).

%% @doc Starts the specified replay.
%%
%% Events are not necessarily replayed in the exact same order that they were
%% added to the archive. A replay processes events to replay based on the
%% time in the event, and replays them using 1 minute intervals. If you
%% specify an `EventStartTime' and an `EventEndTime' that covers a 20 minute
%% time range, the events are replayed from the first minute of that 20
%% minute range first. Then the events from the second minute are replayed.
%% You can use `DescribeReplay' to determine the progress of a replay. The
%% value returned for `EventLastReplayedTime' indicates the time within the
%% specified time range associated with the last event replayed.
start_replay(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_replay(Client, Input, []).
start_replay(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartReplay">>, Input, Options).

%% @doc Assigns one or more tags (key-value pairs) to the specified
%% EventBridge resource.
%%
%% Tags can help you organize and categorize your resources. You can also use
%% them to scope user permissions by granting a user permission to access or
%% change only resources with certain tag values. In EventBridge, rules and
%% event buses can be tagged.
%%
%% Tags don't have any semantic meaning to Amazon Web Services and are
%% interpreted strictly as strings of characters.
%%
%% You can use the `TagResource' action with a resource that already has
%% tags. If you specify a new tag key, this tag is appended to the list of
%% tags associated with the resource. If you specify a tag key that is
%% already associated with the resource, the new tag value that you specify
%% replaces the previous value for that tag.
%%
%% You can associate as many as 50 tags with a resource.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Tests whether the specified event pattern matches the provided event.
%%
%% Most services in Amazon Web Services treat : or / as the same character in
%% Amazon Resource Names (ARNs). However, EventBridge uses an exact match in
%% event patterns and rules. Be sure to use the correct ARN characters when
%% creating event patterns so that they match the ARN syntax in the event you
%% want to match.
test_event_pattern(Client, Input)
  when is_map(Client), is_map(Input) ->
    test_event_pattern(Client, Input, []).
test_event_pattern(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TestEventPattern">>, Input, Options).

%% @doc Removes one or more tags from the specified EventBridge resource.
%%
%% In Amazon EventBridge (CloudWatch Events), rules and event buses can be
%% tagged.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Updates an API destination.
update_api_destination(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_api_destination(Client, Input, []).
update_api_destination(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateApiDestination">>, Input, Options).

%% @doc Updates the specified archive.
update_archive(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_archive(Client, Input, []).
update_archive(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateArchive">>, Input, Options).

%% @doc Updates settings for a connection.
update_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_connection(Client, Input, []).
update_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateConnection">>, Input, Options).

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
    Client1 = Client#{service => <<"events">>},
    Host = build_host(<<"events">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"AWSEvents.", Action/binary>>}
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
