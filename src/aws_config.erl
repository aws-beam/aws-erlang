%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/jkakar/aws-codegen for more details.

%% @doc <fullname>AWS Config</fullname>
%%
%% AWS Config provides a way to keep track of the configurations of all the
%% AWS resources associated with your AWS account. You can use AWS Config to
%% get the current and historical configurations of each AWS resource and
%% also to get information about the relationship between the resources. An
%% AWS resource can be an Amazon Compute Cloud (Amazon EC2) instance, an
%% Elastic Block Store (EBS) volume, an Elastic network Interface (ENI), or a
%% security group. For a complete list of resources currently supported by
%% AWS Config, see <a
%% href="http://docs.aws.amazon.com/config/latest/developerguide/resource-config-reference.html#supported-resources">Supported
%% AWS Resources</a>.
%%
%% You can access and manage AWS Config through the AWS Management Console,
%% the AWS Command Line Interface (AWS CLI), the AWS Config API, or the AWS
%% SDKs for AWS Config
%%
%% This reference guide contains documentation for the AWS Config API and the
%% AWS CLI commands that you can use to manage AWS Config.
%%
%% The AWS Config API uses the Signature Version 4 protocol for signing
%% requests. For more information about how to sign a request with this
%% protocol, see <a
%% href="http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature
%% Version 4 Signing Process</a>.
%%
%% For detailed information about AWS Config features and their associated
%% actions or commands, as well as how to work with AWS Management Console,
%% see <a
%% href="http://docs.aws.amazon.com/config/latest/developerguide/WhatIsConfig.html">What
%% Is AWS Config?</a> in the <i>AWS Config Developer Guide</i>.
-module(aws_config).

-export([delete_config_rule/2,
         delete_config_rule/3,
         delete_delivery_channel/2,
         delete_delivery_channel/3,
         deliver_config_snapshot/2,
         deliver_config_snapshot/3,
         describe_compliance_by_config_rule/2,
         describe_compliance_by_config_rule/3,
         describe_compliance_by_resource/2,
         describe_compliance_by_resource/3,
         describe_config_rule_evaluation_status/2,
         describe_config_rule_evaluation_status/3,
         describe_config_rules/2,
         describe_config_rules/3,
         describe_configuration_recorder_status/2,
         describe_configuration_recorder_status/3,
         describe_configuration_recorders/2,
         describe_configuration_recorders/3,
         describe_delivery_channel_status/2,
         describe_delivery_channel_status/3,
         describe_delivery_channels/2,
         describe_delivery_channels/3,
         get_compliance_details_by_config_rule/2,
         get_compliance_details_by_config_rule/3,
         get_compliance_details_by_resource/2,
         get_compliance_details_by_resource/3,
         get_compliance_summary_by_config_rule/2,
         get_compliance_summary_by_config_rule/3,
         get_compliance_summary_by_resource_type/2,
         get_compliance_summary_by_resource_type/3,
         get_resource_config_history/2,
         get_resource_config_history/3,
         list_discovered_resources/2,
         list_discovered_resources/3,
         put_config_rule/2,
         put_config_rule/3,
         put_configuration_recorder/2,
         put_configuration_recorder/3,
         put_delivery_channel/2,
         put_delivery_channel/3,
         put_evaluations/2,
         put_evaluations/3,
         start_configuration_recorder/2,
         start_configuration_recorder/3,
         stop_configuration_recorder/2,
         stop_configuration_recorder/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Deletes the specified AWS Config rule and all of its evaluation
%% results.
%%
%% AWS Config sets the state of a rule to <code>DELETING</code> until the
%% deletion is complete. You cannot update a rule while it is in this state.
%% If you make a <code>PutConfigRule</code> request for the rule, you will
%% receive a <code>ResourceInUseException</code>.
%%
%% You can check the state of a rule by using the
%% <code>DescribeConfigRules</code> request.
delete_config_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_config_rule(Client, Input, []).
delete_config_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteConfigRule">>, Input, Options).

%% @doc Deletes the specified delivery channel.
%%
%% The delivery channel cannot be deleted if it is the only delivery channel
%% and the configuration recorder is still running. To delete the delivery
%% channel, stop the running configuration recorder using the
%% <a>StopConfigurationRecorder</a> action.
delete_delivery_channel(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_delivery_channel(Client, Input, []).
delete_delivery_channel(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDeliveryChannel">>, Input, Options).

%% @doc Schedules delivery of a configuration snapshot to the Amazon S3
%% bucket in the specified delivery channel. After the delivery has started,
%% AWS Config sends following notifications using an Amazon SNS topic that
%% you have specified.
%%
%% <ul> <li>Notification of starting the delivery.</li> <li>Notification of
%% delivery completed, if the delivery was successfully completed.</li>
%% <li>Notification of delivery failure, if the delivery failed to
%% complete.</li> </ul>
deliver_config_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    deliver_config_snapshot(Client, Input, []).
deliver_config_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeliverConfigSnapshot">>, Input, Options).

%% @doc Indicates whether the specified AWS Config rules are compliant. If a
%% rule is noncompliant, this action returns the number of AWS resources that
%% do not comply with the rule.
%%
%% A rule is compliant if all of the evaluated resources comply with it, and
%% it is noncompliant if any of these resources do not comply.
%%
%% If AWS Config has no current evaluation results for the rule, it returns
%% <code>InsufficientData</code>. This result might indicate one of the
%% following conditions: <ul> <li>AWS Config has never invoked an evaluation
%% for the rule. To check whether it has, use the
%% <code>DescribeConfigRuleEvaluationStatus</code> action to get the
%% <code>LastSuccessfulInvocationTime</code> and
%% <code>LastFailedInvocationTime</code>.</li> <li>The rule's AWS Lambda
%% function is failing to send evaluation results to AWS Config. Verify that
%% the role that you assigned to your configuration recorder includes the
%% <code>config:PutEvaluations</code> permission. If the rule is a customer
%% managed rule, verify that the AWS Lambda execution role includes the
%% <code>config:PutEvaluations</code> permission.</li> <li>The rule's AWS
%% Lambda function has returned <code>NOT_APPLICABLE</code> for all
%% evaluation results. This can occur if the resources were deleted or
%% removed from the rule's scope.</li></ul>
describe_compliance_by_config_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_compliance_by_config_rule(Client, Input, []).
describe_compliance_by_config_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeComplianceByConfigRule">>, Input, Options).

%% @doc Indicates whether the specified AWS resources are compliant. If a
%% resource is noncompliant, this action returns the number of AWS Config
%% rules that the resource does not comply with.
%%
%% A resource is compliant if it complies with all the AWS Config rules that
%% evaluate it. It is noncompliant if it does not comply with one or more of
%% these rules.
%%
%% If AWS Config has no current evaluation results for the resource, it
%% returns <code>InsufficientData</code>. This result might indicate one of
%% the following conditions about the rules that evaluate the resource: <ul>
%% <li>AWS Config has never invoked an evaluation for the rule. To check
%% whether it has, use the <code>DescribeConfigRuleEvaluationStatus</code>
%% action to get the <code>LastSuccessfulInvocationTime</code> and
%% <code>LastFailedInvocationTime</code>.</li> <li>The rule's AWS Lambda
%% function is failing to send evaluation results to AWS Config. Verify that
%% the role that you assigned to your configuration recorder includes the
%% <code>config:PutEvaluations</code> permission. If the rule is a customer
%% managed rule, verify that the AWS Lambda execution role includes the
%% <code>config:PutEvaluations</code> permission.</li> <li>The rule's AWS
%% Lambda function has returned <code>NOT_APPLICABLE</code> for all
%% evaluation results. This can occur if the resources were deleted or
%% removed from the rule's scope.</li></ul>
describe_compliance_by_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_compliance_by_resource(Client, Input, []).
describe_compliance_by_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeComplianceByResource">>, Input, Options).

%% @doc Returns status information for each of your AWS managed Config rules.
%% The status includes information such as the last time AWS Config invoked
%% the rule, the last time AWS Config failed to invoke the rule, and the
%% related error for the last failure.
describe_config_rule_evaluation_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_config_rule_evaluation_status(Client, Input, []).
describe_config_rule_evaluation_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeConfigRuleEvaluationStatus">>, Input, Options).

%% @doc Returns details about your AWS Config rules.
describe_config_rules(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_config_rules(Client, Input, []).
describe_config_rules(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeConfigRules">>, Input, Options).

%% @doc Returns the current status of the specified configuration recorder.
%% If a configuration recorder is not specified, this action returns the
%% status of all configuration recorder associated with the account.
%%
%% <note>Currently, you can specify only one configuration recorder per
%% account.</note>
describe_configuration_recorder_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_configuration_recorder_status(Client, Input, []).
describe_configuration_recorder_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeConfigurationRecorderStatus">>, Input, Options).

%% @doc Returns the name of one or more specified configuration recorders. If
%% the recorder name is not specified, this action returns the names of all
%% the configuration recorders associated with the account.
%%
%% <note> Currently, you can specify only one configuration recorder per
%% account.
%%
%% </note>
describe_configuration_recorders(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_configuration_recorders(Client, Input, []).
describe_configuration_recorders(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeConfigurationRecorders">>, Input, Options).

%% @doc Returns the current status of the specified delivery channel. If a
%% delivery channel is not specified, this action returns the current status
%% of all delivery channels associated with the account.
%%
%% <note>Currently, you can specify only one delivery channel per
%% account.</note>
describe_delivery_channel_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_delivery_channel_status(Client, Input, []).
describe_delivery_channel_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDeliveryChannelStatus">>, Input, Options).

%% @doc Returns details about the specified delivery channel. If a delivery
%% channel is not specified, this action returns the details of all delivery
%% channels associated with the account.
%%
%% <note> Currently, you can specify only one delivery channel per account.
%%
%% </note>
describe_delivery_channels(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_delivery_channels(Client, Input, []).
describe_delivery_channels(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDeliveryChannels">>, Input, Options).

%% @doc Returns the evaluation results for the specified AWS Config rule. The
%% results indicate which AWS resources were evaluated by the rule, when each
%% resource was last evaluated, and whether each resource complies with the
%% rule.
get_compliance_details_by_config_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_compliance_details_by_config_rule(Client, Input, []).
get_compliance_details_by_config_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetComplianceDetailsByConfigRule">>, Input, Options).

%% @doc Returns the evaluation results for the specified AWS resource. The
%% results indicate which AWS Config rules were used to evaluate the
%% resource, when each rule was last used, and whether the resource complies
%% with each rule.
get_compliance_details_by_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_compliance_details_by_resource(Client, Input, []).
get_compliance_details_by_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetComplianceDetailsByResource">>, Input, Options).

%% @doc Returns the number of AWS Config rules that are compliant and
%% noncompliant, up to a maximum of 25 for each.
get_compliance_summary_by_config_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_compliance_summary_by_config_rule(Client, Input, []).
get_compliance_summary_by_config_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetComplianceSummaryByConfigRule">>, Input, Options).

%% @doc Returns the number of resources that are compliant and the number
%% that are noncompliant. You can specify one or more resource types to get
%% these numbers for each resource type. The maximum number returned is 100.
get_compliance_summary_by_resource_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_compliance_summary_by_resource_type(Client, Input, []).
get_compliance_summary_by_resource_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetComplianceSummaryByResourceType">>, Input, Options).

%% @doc Returns a list of configuration items for the specified resource. The
%% list contains details about each state of the resource during the
%% specified time interval.
%%
%% The response is paginated, and by default, AWS Config returns a limit of
%% 10 configuration items per page. You can customize this number with the
%% <code>limit</code> parameter. The response includes a
%% <code>nextToken</code> string, and to get the next page of results, run
%% the request again and enter this string for the <code>nextToken</code>
%% parameter.
%%
%% <note> Each call to the API is limited to span a duration of seven days.
%% It is likely that the number of records returned is smaller than the
%% specified <code>limit</code>. In such cases, you can make another call,
%% using the <code>nextToken</code>.
%%
%% </note>
get_resource_config_history(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_resource_config_history(Client, Input, []).
get_resource_config_history(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetResourceConfigHistory">>, Input, Options).

%% @doc Accepts a resource type and returns a list of resource identifiers
%% for the resources of that type. A resource identifier includes the
%% resource type, ID, and (if available) the custom resource name. The
%% results consist of resources that AWS Config has discovered, including
%% those that AWS Config is not currently recording. You can narrow the
%% results to include only resources that have specific resource IDs or a
%% resource name.
%%
%% <note>You can specify either resource IDs or a resource name but not both
%% in the same request.</note> The response is paginated, and by default AWS
%% Config lists 100 resource identifiers on each page. You can customize this
%% number with the <code>limit</code> parameter. The response includes a
%% <code>nextToken</code> string, and to get the next page of results, run
%% the request again and enter this string for the <code>nextToken</code>
%% parameter.
list_discovered_resources(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_discovered_resources(Client, Input, []).
list_discovered_resources(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDiscoveredResources">>, Input, Options).

%% @doc Adds or updates an AWS Config rule for evaluating whether your AWS
%% resources comply with your desired configurations.
%%
%% You can use this action for customer managed Config rules and AWS managed
%% Config rules. A customer managed Config rule is a custom rule that you
%% develop and maintain. An AWS managed Config rule is a customizable,
%% predefined rule that is provided by AWS Config.
%%
%% If you are adding a new customer managed Config rule, you must first
%% create the AWS Lambda function that the rule invokes to evaluate your
%% resources. When you use the <code>PutConfigRule</code> action to add the
%% rule to AWS Config, you must specify the Amazon Resource Name (ARN) that
%% AWS Lambda assigns to the function. Specify the ARN for the
%% <code>SourceIdentifier</code> key. This key is part of the
%% <code>Source</code> object, which is part of the <code>ConfigRule</code>
%% object.
%%
%% If you are adding a new AWS managed Config rule, specify the rule's
%% identifier for the <code>SourceIdentifier</code> key. To reference AWS
%% managed Config rule identifiers, see <a
%% href="http://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_use-managed-rules.html">Using
%% AWS Managed Config Rules</a>.
%%
%% For any new rule that you add, specify the <code>ConfigRuleName</code> in
%% the <code>ConfigRule</code> object. Do not specify the
%% <code>ConfigRuleArn</code> or the <code>ConfigRuleId</code>. These values
%% are generated by AWS Config for new rules.
%%
%% If you are updating a rule that you have added previously, specify the
%% rule's <code>ConfigRuleName</code>, <code>ConfigRuleId</code>, or
%% <code>ConfigRuleArn</code> in the <code>ConfigRule</code> data type that
%% you use in this request.
%%
%% The maximum number of rules that AWS Config supports is 25.
%%
%% For more information about developing and using AWS Config rules, see <a
%% href="http://docs.aws.amazon.com/config/latest/developerguide/evaluate-config.html">Evaluating
%% AWS Resource Configurations with AWS Config</a> in the <i>AWS Config
%% Developer Guide</i>.
%%
%% <p/>
put_config_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_config_rule(Client, Input, []).
put_config_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutConfigRule">>, Input, Options).

%% @doc Creates a new configuration recorder to record the selected resource
%% configurations.
%%
%% You can use this action to change the role <code>roleARN</code> and/or the
%% <code>recordingGroup</code> of an existing recorder. To change the role,
%% call the action on the existing configuration recorder and specify a role.
%%
%% <note> Currently, you can specify only one configuration recorder per
%% account.
%%
%% If <code>ConfigurationRecorder</code> does not have the
%% <b>recordingGroup</b> parameter specified, the default is to record all
%% supported resource types.
%%
%% </note>
put_configuration_recorder(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_configuration_recorder(Client, Input, []).
put_configuration_recorder(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutConfigurationRecorder">>, Input, Options).

%% @doc Creates a new delivery channel object to deliver the configuration
%% information to an Amazon S3 bucket, and to an Amazon SNS topic.
%%
%% You can use this action to change the Amazon S3 bucket or an Amazon SNS
%% topic of the existing delivery channel. To change the Amazon S3 bucket or
%% an Amazon SNS topic, call this action and specify the changed values for
%% the S3 bucket and the SNS topic. If you specify a different value for
%% either the S3 bucket or the SNS topic, this action will keep the existing
%% value for the parameter that is not changed.
%%
%% <note> Currently, you can specify only one delivery channel per account.
%%
%% </note>
put_delivery_channel(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_delivery_channel(Client, Input, []).
put_delivery_channel(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutDeliveryChannel">>, Input, Options).

%% @doc Used by an AWS Lambda function to deliver evaluation results to AWS
%% Config. This action is required in every AWS Lambda function that is
%% invoked by an AWS Config rule.
put_evaluations(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_evaluations(Client, Input, []).
put_evaluations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutEvaluations">>, Input, Options).

%% @doc Starts recording configurations of the AWS resources you have
%% selected to record in your AWS account.
%%
%% You must have created at least one delivery channel to successfully start
%% the configuration recorder.
start_configuration_recorder(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_configuration_recorder(Client, Input, []).
start_configuration_recorder(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartConfigurationRecorder">>, Input, Options).

%% @doc Stops recording configurations of the AWS resources you have selected
%% to record in your AWS account.
stop_configuration_recorder(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_configuration_recorder(Client, Input, []).
stop_configuration_recorder(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopConfigurationRecorder">>, Input, Options).

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
    Client1 = Client#{service => <<"config">>},
    Host = aws_util:binary_join([<<"config.">>,
                                 maps:get(region, Client1),
                                 <<".">>,
                                 maps:get(endpoint, Client1)],
                                <<"">>),
    URL = aws_util:binary_join([<<"https://">>, Host, <<"/">>], <<"">>),
    Headers = [{<<"Host">>, Host},
               {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
               {<<"X-Amz-Target">>, << <<"StarlingDoveService.">>/binary, Action/binary>>}],
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
    #{<<"__type">> := Exception,
      <<"message">> := Reason} = jsx:decode(Body, [return_maps]),
    {error, {Exception, Reason}, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.
