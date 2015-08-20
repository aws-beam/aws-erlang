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

-export([delete_delivery_channel/3,
         deliver_config_snapshot/3,
         describe_configuration_recorder_status/3,
         describe_configuration_recorders/3,
         describe_delivery_channel_status/3,
         describe_delivery_channels/3,
         get_resource_config_history/3,
         put_configuration_recorder/3,
         put_delivery_channel/3,
         start_configuration_recorder/3,
         stop_configuration_recorder/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Deletes the specified delivery channel.
%%
%% The delivery channel cannot be deleted if it is the only delivery channel
%% and the configuration recorder is still running. To delete the delivery
%% channel, stop the running configuration recorder using the
%% <a>StopConfigurationRecorder</a> action.
delete_delivery_channel(Client, Input, Options) ->
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
deliver_config_snapshot(Client, Input, Options) ->
  request(Client, <<"DeliverConfigSnapshot">>, Input, Options).

%% @doc Returns the current status of the specified configuration recorder.
%% If a configuration recorder is not specified, this action returns the
%% status of all configuration recorder associated with the account.
%%
%% <note>Currently, you can specify only one configuration recorder per
%% account.</note>
describe_configuration_recorder_status(Client, Input, Options) ->
  request(Client, <<"DescribeConfigurationRecorderStatus">>, Input, Options).

%% @doc Returns the name of one or more specified configuration recorders. If
%% the recorder name is not specified, this action returns the names of all
%% the configuration recorders associated with the account.
%%
%% <note> Currently, you can specify only one configuration recorder per
%% account.
%%
%% </note>
describe_configuration_recorders(Client, Input, Options) ->
  request(Client, <<"DescribeConfigurationRecorders">>, Input, Options).

%% @doc Returns the current status of the specified delivery channel. If a
%% delivery channel is not specified, this action returns the current status
%% of all delivery channels associated with the account.
%%
%% <note>Currently, you can specify only one delivery channel per
%% account.</note>
describe_delivery_channel_status(Client, Input, Options) ->
  request(Client, <<"DescribeDeliveryChannelStatus">>, Input, Options).

%% @doc Returns details about the specified delivery channel. If a delivery
%% channel is not specified, this action returns the details of all delivery
%% channels associated with the account.
%%
%% <note> Currently, you can specify only one delivery channel per account.
%%
%% </note>
describe_delivery_channels(Client, Input, Options) ->
  request(Client, <<"DescribeDeliveryChannels">>, Input, Options).

%% @doc Returns a list of configuration items for the specified resource. The
%% list contains details about each state of the resource during the
%% specified time interval. You can specify a <code>limit</code> on the
%% number of results returned on the page. If a limit is specified, a
%% <code>nextToken</code> is returned as part of the result that you can use
%% to continue this request.
%%
%% <note> Each call to the API is limited to span a duration of seven days.
%% It is likely that the number of records returned is smaller than the
%% specified <code>limit</code>. In such cases, you can make another call,
%% using the <code>nextToken</code> .
%%
%% </note>
get_resource_config_history(Client, Input, Options) ->
  request(Client, <<"GetResourceConfigHistory">>, Input, Options).

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
put_configuration_recorder(Client, Input, Options) ->
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
put_delivery_channel(Client, Input, Options) ->
  request(Client, <<"PutDeliveryChannel">>, Input, Options).

%% @doc Starts recording configurations of the AWS resources you have
%% selected to record in your AWS account.
%%
%% You must have created at least one delivery channel to successfully start
%% the configuration recorder.
start_configuration_recorder(Client, Input, Options) ->
  request(Client, <<"StartConfigurationRecorder">>, Input, Options).

%% @doc Stops recording configurations of the AWS resources you have selected
%% to record in your AWS account.
stop_configuration_recorder(Client, Input, Options) ->
  request(Client, <<"StopConfigurationRecorder">>, Input, Options).

%%====================================================================
%% Internal functions
%%====================================================================

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
    {ok, Body} = hackney:body(Client),
    Result = jsx:decode(Body, [return_maps]),
    {ok, Result, {200, ResponseHeaders, Client}};
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    Reason = maps:get(<<"__type">>, jsx:decode(Body, [return_maps])),
    {error, Reason, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.
