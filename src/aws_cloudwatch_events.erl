%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/jkakar/aws-codegen for more details.

%% @doc Amazon CloudWatch Events helps you to respond to state changes in
%% your AWS resources. When your resources change state they automatically
%% send events into an event stream. You can create rules that match selected
%% events in the stream and route them to targets to take action. You can
%% also use rules to take action on a pre-determined schedule. For example,
%% you can configure rules to:
%%
%% <ul> <li>Automatically invoke an AWS Lambda function to update DNS entries
%% when an event notifies you that Amazon EC2 instance enters the running
%% state.</li> <li>Direct specific API records from CloudTrail to an Amazon
%% Kinesis stream for detailed analysis of potential security or availability
%% risks.</li> <li>Periodically invoke a built-in target to create a snapshot
%% of an Amazon EBS volume.</li> </ul> For more information about Amazon
%% CloudWatch Events features, see the <a
%% href="http://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide">Amazon
%% CloudWatch Developer Guide</a>.
-module(aws_cloudwatch_events).

-export([delete_rule/2,
         delete_rule/3,
         describe_rule/2,
         describe_rule/3,
         disable_rule/2,
         disable_rule/3,
         enable_rule/2,
         enable_rule/3,
         list_rule_names_by_target/2,
         list_rule_names_by_target/3,
         list_rules/2,
         list_rules/3,
         list_targets_by_rule/2,
         list_targets_by_rule/3,
         put_events/2,
         put_events/3,
         put_rule/2,
         put_rule/3,
         put_targets/2,
         put_targets/3,
         remove_targets/2,
         remove_targets/3,
         test_event_pattern/2,
         test_event_pattern/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Deletes a rule. You must remove all targets from a rule using
%% <a>RemoveTargets</a> before you can delete the rule.
%%
%% <b>Note:</b> When you delete a rule, incoming events might still continue
%% to match to the deleted rule. Please allow a short period of time for
%% changes to take effect.
delete_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_rule(Client, Input, []).
delete_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRule">>, Input, Options).

%% @doc Describes the details of the specified rule.
describe_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_rule(Client, Input, []).
describe_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRule">>, Input, Options).

%% @doc Disables a rule. A disabled rule won't match any events, and won't
%% self-trigger if it has a schedule expression.
%%
%% <b>Note:</b> When you disable a rule, incoming events might still continue
%% to match to the disabled rule. Please allow a short period of time for
%% changes to take effect.
disable_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_rule(Client, Input, []).
disable_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableRule">>, Input, Options).

%% @doc Enables a rule. If the rule does not exist, the operation fails.
%%
%% <b>Note:</b> When you enable a rule, incoming events might not immediately
%% start matching to a newly enabled rule. Please allow a short period of
%% time for changes to take effect.
enable_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_rule(Client, Input, []).
enable_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableRule">>, Input, Options).

%% @doc Lists the names of the rules that the given target is put to. You can
%% see which of the rules in Amazon CloudWatch Events can invoke a specific
%% target in your account. If you have more rules in your account than the
%% given limit, the results will be paginated. In that case, use the next
%% token returned in the response and repeat ListRulesByTarget until the
%% NextToken in the response is returned as null.
list_rule_names_by_target(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_rule_names_by_target(Client, Input, []).
list_rule_names_by_target(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRuleNamesByTarget">>, Input, Options).

%% @doc Lists the Amazon CloudWatch Events rules in your account. You can
%% either list all the rules or you can provide a prefix to match to the rule
%% names. If you have more rules in your account than the given limit, the
%% results will be paginated. In that case, use the next token returned in
%% the response and repeat ListRules until the NextToken in the response is
%% returned as null.
list_rules(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_rules(Client, Input, []).
list_rules(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRules">>, Input, Options).

%% @doc Lists of targets assigned to the rule.
list_targets_by_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_targets_by_rule(Client, Input, []).
list_targets_by_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTargetsByRule">>, Input, Options).

%% @doc Sends custom events to Amazon CloudWatch Events so that they can be
%% matched to rules.
put_events(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_events(Client, Input, []).
put_events(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutEvents">>, Input, Options).

%% @doc Creates or updates a rule. Rules are enabled by default, or based on
%% value of the State parameter. You can disable a rule using
%% <a>DisableRule</a>.
%%
%% <b>Note:</b> When you create or update a rule, incoming events might not
%% immediately start matching to new or updated rules. Please allow a short
%% period of time for changes to take effect.
%%
%% A rule must contain at least an EventPattern or ScheduleExpression. Rules
%% with EventPatterns are triggered when a matching event is observed. Rules
%% with ScheduleExpressions self-trigger based on the given schedule. A rule
%% can have both an EventPattern and a ScheduleExpression, in which case the
%% rule will trigger on matching events as well as on a schedule.
%%
%% <b>Note:</b> Most services in AWS treat : or / as the same character in
%% Amazon Resource Names (ARNs). However, CloudWatch Events uses an exact
%% match in event patterns and rules. Be sure to use the correct ARN
%% characters when creating event patterns so that they match the ARN syntax
%% in the event you want to match.
put_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_rule(Client, Input, []).
put_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutRule">>, Input, Options).

%% @doc Adds target(s) to a rule. Targets are the resources that can be
%% invoked when a rule is triggered. For example, AWS Lambda functions,
%% Amazon Kinesis streams, and built-in targets. Updates the target(s) if
%% they are already associated with the role. In other words, if there is
%% already a target with the given target ID, then the target associated with
%% that ID is updated.
%%
%% In order to be able to make API calls against the resources you own,
%% Amazon CloudWatch Events needs the appropriate permissions. For AWS Lambda
%% and Amazon SNS resources, CloudWatch Events relies on resource-based
%% policies. For Amazon Kinesis streams, CloudWatch Events relies on IAM
%% roles. For more information, see <a
%% href="http://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/EventsTargetPermissions.html">Permissions
%% for Sending Events to Targets</a> in the <b><i>Amazon CloudWatch Developer
%% Guide</i></b>.
%%
%% <b>Input</b> and <b>InputPath</b> are mutually-exclusive and optional
%% parameters of a target. When a rule is triggered due to a matched event,
%% if for a target:
%%
%% <ul> <li>Neither <b>Input</b> nor <b>InputPath</b> is specified, then the
%% entire event is passed to the target in JSON form.</li> <li>
%% <b>InputPath</b> is specified in the form of JSONPath (e.g.
%% <b>$.detail</b>), then only the part of the event specified in the path is
%% passed to the target (e.g. only the detail part of the event is passed).
%% </li> <li> <b>Input</b> is specified in the form of a valid JSON, then the
%% matched event is overridden with this constant.</li> </ul> <b>Note:</b>
%% When you add targets to a rule, when the associated rule triggers, new or
%% updated targets might not be immediately invoked. Please allow a short
%% period of time for changes to take effect.
put_targets(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_targets(Client, Input, []).
put_targets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutTargets">>, Input, Options).

%% @doc Removes target(s) from a rule so that when the rule is triggered,
%% those targets will no longer be invoked.
%%
%% <b>Note:</b> When you remove a target, when the associated rule triggers,
%% removed targets might still continue to be invoked. Please allow a short
%% period of time for changes to take effect.
remove_targets(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_targets(Client, Input, []).
remove_targets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveTargets">>, Input, Options).

%% @doc Tests whether an event pattern matches the provided event.
%%
%% <b>Note:</b> Most services in AWS treat : or / as the same character in
%% Amazon Resource Names (ARNs). However, CloudWatch Events uses an exact
%% match in event patterns and rules. Be sure to use the correct ARN
%% characters when creating event patterns so that they match the ARN syntax
%% in the event you want to match.
test_event_pattern(Client, Input)
  when is_map(Client), is_map(Input) ->
    test_event_pattern(Client, Input, []).
test_event_pattern(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TestEventPattern">>, Input, Options).

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
    Headers = [{<<"Host">>, Host},
               {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
               {<<"X-Amz-Target">>, << <<"AWSEvents.">>/binary, Action/binary>>}],
    Payload = jsx:encode(Input),
    Headers1 = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, Headers1, Payload, Options),
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
    aws_util:binary_join([EndpointPrefix,
			  <<".">>,
			  Region,
			  <<".">>,
			  Endpoint],
			 <<"">>).

get_url(Host, Client) ->
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>],
			 <<"">>).
