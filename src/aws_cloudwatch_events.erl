%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon EventBridge helps you to respond to state changes in your AWS
%% resources. When your resources change state, they automatically send
%% events into an event stream. You can create rules that match selected
%% events in the stream and route them to targets to take action. You can
%% also use rules to take action on a predetermined schedule. For example,
%% you can configure rules to:
%%
%% <ul> <li> Automatically invoke an AWS Lambda function to update DNS
%% entries when an event notifies you that Amazon EC2 instance enters the
%% running state.
%%
%% </li> <li> Direct specific API records from AWS CloudTrail to an Amazon
%% Kinesis data stream for detailed analysis of potential security or
%% availability risks.
%%
%% </li> <li> Periodically invoke a built-in target to create a snapshot of
%% an Amazon EBS volume.
%%
%% </li> </ul> For more information about the features of Amazon EventBridge,
%% see the <a
%% href="https://docs.aws.amazon.com/eventbridge/latest/userguide">Amazon
%% EventBridge User Guide</a>.
-module(aws_cloudwatch_events).

-export([activate_event_source/2,
         activate_event_source/3,
         create_event_bus/2,
         create_event_bus/3,
         create_partner_event_source/2,
         create_partner_event_source/3,
         deactivate_event_source/2,
         deactivate_event_source/3,
         delete_event_bus/2,
         delete_event_bus/3,
         delete_partner_event_source/2,
         delete_partner_event_source/3,
         delete_rule/2,
         delete_rule/3,
         describe_event_bus/2,
         describe_event_bus/3,
         describe_event_source/2,
         describe_event_source/3,
         describe_partner_event_source/2,
         describe_partner_event_source/3,
         describe_rule/2,
         describe_rule/3,
         disable_rule/2,
         disable_rule/3,
         enable_rule/2,
         enable_rule/3,
         list_event_buses/2,
         list_event_buses/3,
         list_event_sources/2,
         list_event_sources/3,
         list_partner_event_source_accounts/2,
         list_partner_event_source_accounts/3,
         list_partner_event_sources/2,
         list_partner_event_sources/3,
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
         tag_resource/2,
         tag_resource/3,
         test_event_pattern/2,
         test_event_pattern/3,
         untag_resource/2,
         untag_resource/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Activates a partner event source that has been deactivated. Once
%% activated, your matching event bus will start receiving events from the
%% event source.
activate_event_source(Client, Input)
  when is_map(Client), is_map(Input) ->
    activate_event_source(Client, Input, []).
activate_event_source(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ActivateEventSource">>, Input, Options).

%% @doc Creates a new event bus within your account. This can be a custom
%% event bus which you can use to receive events from your custom
%% applications and services, or it can be a partner event bus which can be
%% matched to a partner event source.
create_event_bus(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_event_bus(Client, Input, []).
create_event_bus(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateEventBus">>, Input, Options).

%% @doc Called by an SaaS partner to create a partner event source. This
%% operation is not used by AWS customers.
%%
%% Each partner event source can be used by one AWS account to create a
%% matching partner event bus in that AWS account. A SaaS partner must create
%% one partner event source for each AWS account that wants to receive those
%% event types.
%%
%% A partner event source creates events based on resources within the SaaS
%% partner's service or application.
%%
%% An AWS account that creates a partner event bus that matches the partner
%% event source can use that event bus to receive events from the partner,
%% and then process them using AWS Events rules and targets.
%%
%% Partner event source names follow this format:
%%
%% <code> <i>partner_name</i>/<i>event_namespace</i>/<i>event_name</i>
%% </code>
%%
%% <i>partner_name</i> is determined during partner registration and
%% identifies the partner to AWS customers. <i>event_namespace</i> is
%% determined by the partner and is a way for the partner to categorize their
%% events. <i>event_name</i> is determined by the partner, and should
%% uniquely identify an event-generating resource within the partner system.
%% The combination of <i>event_namespace</i> and <i>event_name</i> should
%% help AWS customers decide whether to create an event bus to receive these
%% events.
create_partner_event_source(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_partner_event_source(Client, Input, []).
create_partner_event_source(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePartnerEventSource">>, Input, Options).

%% @doc You can use this operation to temporarily stop receiving events from
%% the specified partner event source. The matching event bus is not deleted.
%%
%% When you deactivate a partner event source, the source goes into PENDING
%% state. If it remains in PENDING state for more than two weeks, it is
%% deleted.
%%
%% To activate a deactivated partner event source, use
%% <a>ActivateEventSource</a>.
deactivate_event_source(Client, Input)
  when is_map(Client), is_map(Input) ->
    deactivate_event_source(Client, Input, []).
deactivate_event_source(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeactivateEventSource">>, Input, Options).

%% @doc Deletes the specified custom event bus or partner event bus. All
%% rules associated with this event bus need to be deleted. You can't delete
%% your account's default event bus.
delete_event_bus(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_event_bus(Client, Input, []).
delete_event_bus(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEventBus">>, Input, Options).

%% @doc This operation is used by SaaS partners to delete a partner event
%% source. This operation is not used by AWS customers.
%%
%% When you delete an event source, the status of the corresponding partner
%% event bus in the AWS customer account becomes DELETED.
%%
%% <p/>
delete_partner_event_source(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_partner_event_source(Client, Input, []).
delete_partner_event_source(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePartnerEventSource">>, Input, Options).

%% @doc Deletes the specified rule.
%%
%% Before you can delete the rule, you must remove all targets, using
%% <a>RemoveTargets</a>.
%%
%% When you delete a rule, incoming events might continue to match to the
%% deleted rule. Allow a short period of time for changes to take effect.
%%
%% Managed rules are rules created and managed by another AWS service on your
%% behalf. These rules are created by those other AWS services to support
%% functionality in those services. You can delete these rules using the
%% <code>Force</code> option, but you should do so only if you are sure the
%% other service is not still using that rule.
delete_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_rule(Client, Input, []).
delete_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRule">>, Input, Options).

%% @doc Displays details about an event bus in your account. This can include
%% the external AWS accounts that are permitted to write events to your
%% default event bus, and the associated policy. For custom event buses and
%% partner event buses, it displays the name, ARN, policy, state, and
%% creation time.
%%
%% To enable your account to receive events from other accounts on its
%% default event bus, use <a>PutPermission</a>.
%%
%% For more information about partner event buses, see <a>CreateEventBus</a>.
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
%% partner event source that they have created. AWS customers do not use this
%% operation. Instead, AWS customers can use <a>DescribeEventSource</a> to
%% see details about a partner event source that is shared with them.
describe_partner_event_source(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_partner_event_source(Client, Input, []).
describe_partner_event_source(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePartnerEventSource">>, Input, Options).

%% @doc Describes the specified rule.
%%
%% DescribeRule does not list the targets of a rule. To see the targets
%% associated with a rule, use <a>ListTargetsByRule</a>.
describe_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_rule(Client, Input, []).
describe_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRule">>, Input, Options).

%% @doc Disables the specified rule. A disabled rule won't match any events,
%% and won't self-trigger if it has a schedule expression.
%%
%% When you disable a rule, incoming events might continue to match to the
%% disabled rule. Allow a short period of time for changes to take effect.
disable_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_rule(Client, Input, []).
disable_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableRule">>, Input, Options).

%% @doc Enables the specified rule. If the rule does not exist, the operation
%% fails.
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

%% @doc Lists all the event buses in your account, including the default
%% event bus, custom event buses, and partner event buses.
list_event_buses(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_event_buses(Client, Input, []).
list_event_buses(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEventBuses">>, Input, Options).

%% @doc You can use this to see all the partner event sources that have been
%% shared with your AWS account. For more information about partner event
%% sources, see <a>CreateEventBus</a>.
list_event_sources(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_event_sources(Client, Input, []).
list_event_sources(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEventSources">>, Input, Options).

%% @doc An SaaS partner can use this operation to display the AWS account ID
%% that a particular partner event source name is associated with. This
%% operation is not used by AWS customers.
list_partner_event_source_accounts(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_partner_event_source_accounts(Client, Input, []).
list_partner_event_source_accounts(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPartnerEventSourceAccounts">>, Input, Options).

%% @doc An SaaS partner can use this operation to list all the partner event
%% source names that they have created. This operation is not used by AWS
%% customers.
list_partner_event_sources(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_partner_event_sources(Client, Input, []).
list_partner_event_sources(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPartnerEventSources">>, Input, Options).

%% @doc Lists the rules for the specified target. You can see which of the
%% rules in Amazon EventBridge can invoke a specific target in your account.
list_rule_names_by_target(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_rule_names_by_target(Client, Input, []).
list_rule_names_by_target(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRuleNamesByTarget">>, Input, Options).

%% @doc Lists your Amazon EventBridge rules. You can either list all the
%% rules or you can provide a prefix to match to the rule names.
%%
%% ListRules does not list the targets of a rule. To see the targets
%% associated with a rule, use <a>ListTargetsByRule</a>.
list_rules(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_rules(Client, Input, []).
list_rules(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRules">>, Input, Options).

%% @doc Displays the tags associated with an EventBridge resource. In
%% EventBridge, rules and event buses can be tagged.
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
%% event bus. AWS customers do not use this operation.
put_partner_events(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_partner_events(Client, Input, []).
put_partner_events(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutPartnerEvents">>, Input, Options).

%% @doc Running <code>PutPermission</code> permits the specified AWS account
%% or AWS organization to put events to the specified <i>event bus</i>.
%% Amazon EventBridge (CloudWatch Events) rules in your account are triggered
%% by these events arriving to an event bus in your account.
%%
%% For another account to send events to your account, that external account
%% must have an EventBridge rule with your account's event bus as a target.
%%
%% To enable multiple AWS accounts to put events to your event bus, run
%% <code>PutPermission</code> once for each of these accounts. Or, if all the
%% accounts are members of the same AWS organization, you can run
%% <code>PutPermission</code> once specifying <code>Principal</code> as "*"
%% and specifying the AWS organization ID in <code>Condition</code>, to grant
%% permissions to all accounts in that organization.
%%
%% If you grant permissions using an organization, then accounts in that
%% organization must specify a <code>RoleArn</code> with proper permissions
%% when they use <code>PutTarget</code> to add your account's event bus as a
%% target. For more information, see <a
%% href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-cross-account-event-delivery.html">Sending
%% and Receiving Events Between AWS Accounts</a> in the <i>Amazon EventBridge
%% User Guide</i>.
%%
%% The permission policy on the default event bus cannot exceed 10 KB in
%% size.
put_permission(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_permission(Client, Input, []).
put_permission(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutPermission">>, Input, Options).

%% @doc Creates or updates the specified rule. Rules are enabled by default,
%% or based on value of the state. You can disable a rule using
%% <a>DisableRule</a>.
%%
%% A single rule watches for events from a single event bus. Events generated
%% by AWS services go to your account's default event bus. Events generated
%% by SaaS partner services or applications go to the matching partner event
%% bus. If you have custom applications or services, you can specify whether
%% their events go to your default event bus or a custom event bus that you
%% have created. For more information, see <a>CreateEventBus</a>.
%%
%% If you are updating an existing rule, the rule is replaced with what you
%% specify in this <code>PutRule</code> command. If you omit arguments in
%% <code>PutRule</code>, the old values for those arguments are not kept.
%% Instead, they are replaced with null values.
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
%% use the <code>PutRule</code> operation and assign tags, you must have both
%% the <code>events:PutRule</code> and <code>events:TagResource</code>
%% permissions.
%%
%% If you are updating an existing rule, any tags you specify in the
%% <code>PutRule</code> operation are ignored. To update the tags of an
%% existing rule, use <a>TagResource</a> and <a>UntagResource</a>.
%%
%% Most services in AWS treat : or / as the same character in Amazon Resource
%% Names (ARNs). However, EventBridge uses an exact match in event patterns
%% and rules. Be sure to use the correct ARN characters when creating event
%% patterns so that they match the ARN syntax in the event you want to match.
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
%% your specified limit. For more information, see <a
%% href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/budgets-managing-costs.html">Managing
%% Your Costs with Budgets</a>.
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
%% <ul> <li> EC2 instances
%%
%% </li> <li> SSM Run Command
%%
%% </li> <li> SSM Automation
%%
%% </li> <li> AWS Lambda functions
%%
%% </li> <li> Data streams in Amazon Kinesis Data Streams
%%
%% </li> <li> Data delivery streams in Amazon Kinesis Data Firehose
%%
%% </li> <li> Amazon ECS tasks
%%
%% </li> <li> AWS Step Functions state machines
%%
%% </li> <li> AWS Batch jobs
%%
%% </li> <li> AWS CodeBuild projects
%%
%% </li> <li> Pipelines in AWS CodePipeline
%%
%% </li> <li> Amazon Inspector assessment templates
%%
%% </li> <li> Amazon SNS topics
%%
%% </li> <li> Amazon SQS queues, including FIFO queues
%%
%% </li> <li> The default event bus of another AWS account
%%
%% </li> <li> Amazon API Gateway REST APIs
%%
%% </li> </ul> Creating rules with built-in targets is supported only in the
%% AWS Management Console. The built-in targets are <code>EC2 CreateSnapshot
%% API call</code>, <code>EC2 RebootInstances API call</code>, <code>EC2
%% StopInstances API call</code>, and <code>EC2 TerminateInstances API
%% call</code>.
%%
%% For some target types, <code>PutTargets</code> provides target-specific
%% parameters. If the target is a Kinesis data stream, you can optionally
%% specify which shard the event goes to by using the
%% <code>KinesisParameters</code> argument. To invoke a command on multiple
%% EC2 instances with one rule, you can use the
%% <code>RunCommandParameters</code> field.
%%
%% To be able to make API calls against the resources that you own, Amazon
%% EventBridge (CloudWatch Events) needs the appropriate permissions. For AWS
%% Lambda and Amazon SNS resources, EventBridge relies on resource-based
%% policies. For EC2 instances, Kinesis data streams, AWS Step Functions
%% state machines and API Gateway REST APIs, EventBridge relies on IAM roles
%% that you specify in the <code>RoleARN</code> argument in
%% <code>PutTargets</code>. For more information, see <a
%% href="https://docs.aws.amazon.com/eventbridge/latest/userguide/auth-and-access-control-eventbridge.html">Authentication
%% and Access Control</a> in the <i>Amazon EventBridge User Guide</i>.
%%
%% If another AWS account is in the same region and has granted you
%% permission (using <code>PutPermission</code>), you can send events to that
%% account. Set that account's event bus as a target of the rules in your
%% account. To send the matched events to the other account, specify that
%% account's event bus as the <code>Arn</code> value when you run
%% <code>PutTargets</code>. If your account sends events to another account,
%% your account is charged for each sent event. Each event sent to another
%% account is charged as a custom event. The account receiving the event is
%% not charged. For more information, see <a
%% href="https://aws.amazon.com/eventbridge/pricing/">Amazon EventBridge
%% (CloudWatch Events) Pricing</a>.
%%
%% <note> <code>Input</code>, <code>InputPath</code>, and
%% <code>InputTransformer</code> are not available with
%% <code>PutTarget</code> if the target is an event bus of a different AWS
%% account.
%%
%% </note> If you are setting the event bus of another account as the target,
%% and that account granted permission to your account through an
%% organization instead of directly by the account ID, then you must specify
%% a <code>RoleArn</code> with proper permissions in the <code>Target</code>
%% structure. For more information, see <a
%% href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-cross-account-event-delivery.html">Sending
%% and Receiving Events Between AWS Accounts</a> in the <i>Amazon EventBridge
%% User Guide</i>.
%%
%% For more information about enabling cross-account events, see
%% <a>PutPermission</a>.
%%
%% <b>Input</b>, <b>InputPath</b>, and <b>InputTransformer</b> are mutually
%% exclusive and optional parameters of a target. When a rule is triggered
%% due to a matched event:
%%
%% <ul> <li> If none of the following arguments are specified for a target,
%% then the entire event is passed to the target in JSON format (unless the
%% target is Amazon EC2 Run Command or Amazon ECS task, in which case nothing
%% from the event is passed to the target).
%%
%% </li> <li> If <b>Input</b> is specified in the form of valid JSON, then
%% the matched event is overridden with this constant.
%%
%% </li> <li> If <b>InputPath</b> is specified in the form of JSONPath (for
%% example, <code>$.detail</code>), then only the part of the event specified
%% in the path is passed to the target (for example, only the detail part of
%% the event is passed).
%%
%% </li> <li> If <b>InputTransformer</b> is specified, then one or more
%% specified JSONPaths are extracted from the event and used as values in a
%% template that you specify as the input to the target.
%%
%% </li> </ul> When you specify <code>InputPath</code> or
%% <code>InputTransformer</code>, you must use JSON dot notation, not bracket
%% notation.
%%
%% When you add targets to a rule and the associated rule triggers soon
%% after, new or updated targets might not be immediately invoked. Allow a
%% short period of time for changes to take effect.
%%
%% This action can partially fail if too many requests are made at the same
%% time. If that happens, <code>FailedEntryCount</code> is non-zero in the
%% response and each entry in <code>FailedEntries</code> provides the ID of
%% the failed target and the error code.
put_targets(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_targets(Client, Input, []).
put_targets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutTargets">>, Input, Options).

%% @doc Revokes the permission of another AWS account to be able to put
%% events to the specified event bus. Specify the account to revoke by the
%% <code>StatementId</code> value that you associated with the account when
%% you granted it permission with <code>PutPermission</code>. You can find
%% the <code>StatementId</code> by using <a>DescribeEventBus</a>.
remove_permission(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_permission(Client, Input, []).
remove_permission(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemovePermission">>, Input, Options).

%% @doc Removes the specified targets from the specified rule. When the rule
%% is triggered, those targets are no longer be invoked.
%%
%% When you remove a target, when the associated rule triggers, removed
%% targets might continue to be invoked. Allow a short period of time for
%% changes to take effect.
%%
%% This action can partially fail if too many requests are made at the same
%% time. If that happens, <code>FailedEntryCount</code> is non-zero in the
%% response and each entry in <code>FailedEntries</code> provides the ID of
%% the failed target and the error code.
remove_targets(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_targets(Client, Input, []).
remove_targets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveTargets">>, Input, Options).

%% @doc Assigns one or more tags (key-value pairs) to the specified
%% EventBridge resource. Tags can help you organize and categorize your
%% resources. You can also use them to scope user permissions by granting a
%% user permission to access or change only resources with certain tag
%% values. In EventBridge, rules and event buses can be tagged.
%%
%% Tags don't have any semantic meaning to AWS and are interpreted strictly
%% as strings of characters.
%%
%% You can use the <code>TagResource</code> action with a resource that
%% already has tags. If you specify a new tag key, this tag is appended to
%% the list of tags associated with the resource. If you specify a tag key
%% that is already associated with the resource, the new tag value that you
%% specify replaces the previous value for that tag.
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
%% Most services in AWS treat : or / as the same character in Amazon Resource
%% Names (ARNs). However, EventBridge uses an exact match in event patterns
%% and rules. Be sure to use the correct ARN characters when creating event
%% patterns so that they match the ARN syntax in the event you want to match.
test_event_pattern(Client, Input)
  when is_map(Client), is_map(Input) ->
    test_event_pattern(Client, Input, []).
test_event_pattern(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TestEventPattern">>, Input, Options).

%% @doc Removes one or more tags from the specified EventBridge resource. In
%% Amazon EventBridge (CloudWatch Events, rules and event buses can be
%% tagged.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

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
    Client1 = Client#{service => <<"events">>},
    Host = get_host(<<"events">>, Client1),
    URL = get_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, << <<"AWSEvents.">>/binary, Action/binary>>}
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
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

get_url(Host, Client) ->
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
