%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc <fullname>Amazon Simple Notification Service</fullname>
%%
%% Amazon Simple Notification Service (Amazon SNS) is a web service that
%% enables you to build distributed web-enabled applications. Applications
%% can use Amazon SNS to easily push real-time notification messages to
%% interested subscribers over multiple delivery protocols. For more
%% information about this product see <a
%% href="http://aws.amazon.com/sns/">https://aws.amazon.com/sns</a>. For
%% detailed information about Amazon SNS features and their associated API
%% calls, see the <a href="https://docs.aws.amazon.com/sns/latest/dg/">Amazon
%% SNS Developer Guide</a>.
%%
%% We also provide SDKs that enable you to access Amazon SNS from your
%% preferred programming language. The SDKs contain functionality that
%% automatically takes care of tasks such as: cryptographically signing your
%% service requests, retrying requests, and handling error responses. For a
%% list of available SDKs, go to <a href="http://aws.amazon.com/tools/">Tools
%% for Amazon Web Services</a>.
-module(aws_sns).

-export([add_permission/2,
         add_permission/3,
         check_if_phone_number_is_opted_out/2,
         check_if_phone_number_is_opted_out/3,
         confirm_subscription/2,
         confirm_subscription/3,
         create_platform_application/2,
         create_platform_application/3,
         create_platform_endpoint/2,
         create_platform_endpoint/3,
         create_topic/2,
         create_topic/3,
         delete_endpoint/2,
         delete_endpoint/3,
         delete_platform_application/2,
         delete_platform_application/3,
         delete_topic/2,
         delete_topic/3,
         get_endpoint_attributes/2,
         get_endpoint_attributes/3,
         get_platform_application_attributes/2,
         get_platform_application_attributes/3,
         get_s_m_s_attributes/2,
         get_s_m_s_attributes/3,
         get_subscription_attributes/2,
         get_subscription_attributes/3,
         get_topic_attributes/2,
         get_topic_attributes/3,
         list_endpoints_by_platform_application/2,
         list_endpoints_by_platform_application/3,
         list_phone_numbers_opted_out/2,
         list_phone_numbers_opted_out/3,
         list_platform_applications/2,
         list_platform_applications/3,
         list_subscriptions/2,
         list_subscriptions/3,
         list_subscriptions_by_topic/2,
         list_subscriptions_by_topic/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_topics/2,
         list_topics/3,
         opt_in_phone_number/2,
         opt_in_phone_number/3,
         publish/2,
         publish/3,
         remove_permission/2,
         remove_permission/3,
         set_endpoint_attributes/2,
         set_endpoint_attributes/3,
         set_platform_application_attributes/2,
         set_platform_application_attributes/3,
         set_s_m_s_attributes/2,
         set_s_m_s_attributes/3,
         set_subscription_attributes/2,
         set_subscription_attributes/3,
         set_topic_attributes/2,
         set_topic_attributes/3,
         subscribe/2,
         subscribe/3,
         tag_resource/2,
         tag_resource/3,
         unsubscribe/2,
         unsubscribe/3,
         untag_resource/2,
         untag_resource/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Adds a statement to a topic's access control policy, granting access
%% for the specified AWS accounts to the specified actions.
add_permission(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_permission(Client, Input, []).
add_permission(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddPermission">>, Input, Options).

%% @doc Accepts a phone number and indicates whether the phone holder has
%% opted out of receiving SMS messages from your account. You cannot send SMS
%% messages to a number that is opted out.
%%
%% To resume sending messages, you can opt in the number by using the
%% <code>OptInPhoneNumber</code> action.
check_if_phone_number_is_opted_out(Client, Input)
  when is_map(Client), is_map(Input) ->
    check_if_phone_number_is_opted_out(Client, Input, []).
check_if_phone_number_is_opted_out(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CheckIfPhoneNumberIsOptedOut">>, Input, Options).

%% @doc Verifies an endpoint owner's intent to receive messages by validating
%% the token sent to the endpoint by an earlier <code>Subscribe</code>
%% action. If the token is valid, the action creates a new subscription and
%% returns its Amazon Resource Name (ARN). This call requires an AWS
%% signature only when the <code>AuthenticateOnUnsubscribe</code> flag is set
%% to "true".
confirm_subscription(Client, Input)
  when is_map(Client), is_map(Input) ->
    confirm_subscription(Client, Input, []).
confirm_subscription(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ConfirmSubscription">>, Input, Options).

%% @doc Creates a platform application object for one of the supported push
%% notification services, such as APNS and GCM (Firebase Cloud Messaging), to
%% which devices and mobile apps may register. You must specify
%% <code>PlatformPrincipal</code> and <code>PlatformCredential</code>
%% attributes when using the <code>CreatePlatformApplication</code> action.
%%
%% <code>PlatformPrincipal</code> and <code>PlatformCredential</code> are
%% received from the notification service.
%%
%% <ul> <li> For <code>ADM</code>, <code>PlatformPrincipal</code> is
%% <code>client id</code> and <code>PlatformCredential</code> is <code>client
%% secret</code>.
%%
%% </li> <li> For <code>Baidu</code>, <code>PlatformPrincipal</code> is
%% <code>API key</code> and <code>PlatformCredential</code> is <code>secret
%% key</code>.
%%
%% </li> <li> For <code>APNS</code> and <code>APNS_SANDBOX</code>,
%% <code>PlatformPrincipal</code> is <code>SSL certificate</code> and
%% <code>PlatformCredential</code> is <code>private key</code>.
%%
%% </li> <li> For <code>GCM</code> (Firebase Cloud Messaging), there is no
%% <code>PlatformPrincipal</code> and the <code>PlatformCredential</code> is
%% <code>API key</code>.
%%
%% </li> <li> For <code>MPNS</code>, <code>PlatformPrincipal</code> is
%% <code>TLS certificate</code> and <code>PlatformCredential</code> is
%% <code>private key</code>.
%%
%% </li> <li> For <code>WNS</code>, <code>PlatformPrincipal</code> is
%% <code>Package Security Identifier</code> and
%% <code>PlatformCredential</code> is <code>secret key</code>.
%%
%% </li> </ul> You can use the returned <code>PlatformApplicationArn</code>
%% as an attribute for the <code>CreatePlatformEndpoint</code> action.
create_platform_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_platform_application(Client, Input, []).
create_platform_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePlatformApplication">>, Input, Options).

%% @doc Creates an endpoint for a device and mobile app on one of the
%% supported push notification services, such as GCM (Firebase Cloud
%% Messaging) and APNS. <code>CreatePlatformEndpoint</code> requires the
%% <code>PlatformApplicationArn</code> that is returned from
%% <code>CreatePlatformApplication</code>. You can use the returned
%% <code>EndpointArn</code> to send a message to a mobile app or by the
%% <code>Subscribe</code> action for subscription to a topic. The
%% <code>CreatePlatformEndpoint</code> action is idempotent, so if the
%% requester already owns an endpoint with the same device token and
%% attributes, that endpoint's ARN is returned without creating a new
%% endpoint. For more information, see <a
%% href="https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using
%% Amazon SNS Mobile Push Notifications</a>.
%%
%% When using <code>CreatePlatformEndpoint</code> with Baidu, two attributes
%% must be provided: ChannelId and UserId. The token field must also contain
%% the ChannelId. For more information, see <a
%% href="https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePushBaiduEndpoint.html">Creating
%% an Amazon SNS Endpoint for Baidu</a>.
create_platform_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_platform_endpoint(Client, Input, []).
create_platform_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePlatformEndpoint">>, Input, Options).

%% @doc Creates a topic to which notifications can be published. Users can
%% create at most 100,000 standard topics (at most 1,000 FIFO topics). For
%% more information, see <a
%% href="http://aws.amazon.com/sns/">https://aws.amazon.com/sns</a>. This
%% action is idempotent, so if the requester already owns a topic with the
%% specified name, that topic's ARN is returned without creating a new topic.
create_topic(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_topic(Client, Input, []).
create_topic(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTopic">>, Input, Options).

%% @doc Deletes the endpoint for a device and mobile app from Amazon SNS.
%% This action is idempotent. For more information, see <a
%% href="https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using
%% Amazon SNS Mobile Push Notifications</a>.
%%
%% When you delete an endpoint that is also subscribed to a topic, then you
%% must also unsubscribe the endpoint from the topic.
delete_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_endpoint(Client, Input, []).
delete_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEndpoint">>, Input, Options).

%% @doc Deletes a platform application object for one of the supported push
%% notification services, such as APNS and GCM (Firebase Cloud Messaging).
%% For more information, see <a
%% href="https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using
%% Amazon SNS Mobile Push Notifications</a>.
delete_platform_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_platform_application(Client, Input, []).
delete_platform_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePlatformApplication">>, Input, Options).

%% @doc Deletes a topic and all its subscriptions. Deleting a topic might
%% prevent some messages previously sent to the topic from being delivered to
%% subscribers. This action is idempotent, so deleting a topic that does not
%% exist does not result in an error.
delete_topic(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_topic(Client, Input, []).
delete_topic(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTopic">>, Input, Options).

%% @doc Retrieves the endpoint attributes for a device on one of the
%% supported push notification services, such as GCM (Firebase Cloud
%% Messaging) and APNS. For more information, see <a
%% href="https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using
%% Amazon SNS Mobile Push Notifications</a>.
get_endpoint_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_endpoint_attributes(Client, Input, []).
get_endpoint_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetEndpointAttributes">>, Input, Options).

%% @doc Retrieves the attributes of the platform application object for the
%% supported push notification services, such as APNS and GCM (Firebase Cloud
%% Messaging). For more information, see <a
%% href="https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using
%% Amazon SNS Mobile Push Notifications</a>.
get_platform_application_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_platform_application_attributes(Client, Input, []).
get_platform_application_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPlatformApplicationAttributes">>, Input, Options).

%% @doc Returns the settings for sending SMS messages from your account.
%%
%% These settings are set with the <code>SetSMSAttributes</code> action.
get_s_m_s_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_s_m_s_attributes(Client, Input, []).
get_s_m_s_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSMSAttributes">>, Input, Options).

%% @doc Returns all of the properties of a subscription.
get_subscription_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_subscription_attributes(Client, Input, []).
get_subscription_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSubscriptionAttributes">>, Input, Options).

%% @doc Returns all of the properties of a topic. Topic properties returned
%% might differ based on the authorization of the user.
get_topic_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_topic_attributes(Client, Input, []).
get_topic_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTopicAttributes">>, Input, Options).

%% @doc Lists the endpoints and endpoint attributes for devices in a
%% supported push notification service, such as GCM (Firebase Cloud
%% Messaging) and APNS. The results for
%% <code>ListEndpointsByPlatformApplication</code> are paginated and return a
%% limited list of endpoints, up to 100. If additional records are available
%% after the first page results, then a NextToken string will be returned. To
%% receive the next page, you call
%% <code>ListEndpointsByPlatformApplication</code> again using the NextToken
%% string received from the previous call. When there are no more records to
%% return, NextToken will be null. For more information, see <a
%% href="https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using
%% Amazon SNS Mobile Push Notifications</a>.
%%
%% This action is throttled at 30 transactions per second (TPS).
list_endpoints_by_platform_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_endpoints_by_platform_application(Client, Input, []).
list_endpoints_by_platform_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEndpointsByPlatformApplication">>, Input, Options).

%% @doc Returns a list of phone numbers that are opted out, meaning you
%% cannot send SMS messages to them.
%%
%% The results for <code>ListPhoneNumbersOptedOut</code> are paginated, and
%% each page returns up to 100 phone numbers. If additional phone numbers are
%% available after the first page of results, then a <code>NextToken</code>
%% string will be returned. To receive the next page, you call
%% <code>ListPhoneNumbersOptedOut</code> again using the
%% <code>NextToken</code> string received from the previous call. When there
%% are no more records to return, <code>NextToken</code> will be null.
list_phone_numbers_opted_out(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_phone_numbers_opted_out(Client, Input, []).
list_phone_numbers_opted_out(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPhoneNumbersOptedOut">>, Input, Options).

%% @doc Lists the platform application objects for the supported push
%% notification services, such as APNS and GCM (Firebase Cloud Messaging).
%% The results for <code>ListPlatformApplications</code> are paginated and
%% return a limited list of applications, up to 100. If additional records
%% are available after the first page results, then a NextToken string will
%% be returned. To receive the next page, you call
%% <code>ListPlatformApplications</code> using the NextToken string received
%% from the previous call. When there are no more records to return,
%% <code>NextToken</code> will be null. For more information, see <a
%% href="https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using
%% Amazon SNS Mobile Push Notifications</a>.
%%
%% This action is throttled at 15 transactions per second (TPS).
list_platform_applications(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_platform_applications(Client, Input, []).
list_platform_applications(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPlatformApplications">>, Input, Options).

%% @doc Returns a list of the requester's subscriptions. Each call returns a
%% limited list of subscriptions, up to 100. If there are more subscriptions,
%% a <code>NextToken</code> is also returned. Use the <code>NextToken</code>
%% parameter in a new <code>ListSubscriptions</code> call to get further
%% results.
%%
%% This action is throttled at 30 transactions per second (TPS).
list_subscriptions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_subscriptions(Client, Input, []).
list_subscriptions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSubscriptions">>, Input, Options).

%% @doc Returns a list of the subscriptions to a specific topic. Each call
%% returns a limited list of subscriptions, up to 100. If there are more
%% subscriptions, a <code>NextToken</code> is also returned. Use the
%% <code>NextToken</code> parameter in a new
%% <code>ListSubscriptionsByTopic</code> call to get further results.
%%
%% This action is throttled at 30 transactions per second (TPS).
list_subscriptions_by_topic(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_subscriptions_by_topic(Client, Input, []).
list_subscriptions_by_topic(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSubscriptionsByTopic">>, Input, Options).

%% @doc List all tags added to the specified Amazon SNS topic. For an
%% overview, see <a
%% href="https://docs.aws.amazon.com/sns/latest/dg/sns-tags.html">Amazon SNS
%% Tags</a> in the <i>Amazon Simple Notification Service Developer Guide</i>.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Returns a list of the requester's topics. Each call returns a limited
%% list of topics, up to 100. If there are more topics, a
%% <code>NextToken</code> is also returned. Use the <code>NextToken</code>
%% parameter in a new <code>ListTopics</code> call to get further results.
%%
%% This action is throttled at 30 transactions per second (TPS).
list_topics(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_topics(Client, Input, []).
list_topics(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTopics">>, Input, Options).

%% @doc Use this request to opt in a phone number that is opted out, which
%% enables you to resume sending SMS messages to the number.
%%
%% You can opt in a phone number only once every 30 days.
opt_in_phone_number(Client, Input)
  when is_map(Client), is_map(Input) ->
    opt_in_phone_number(Client, Input, []).
opt_in_phone_number(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"OptInPhoneNumber">>, Input, Options).

%% @doc Sends a message to an Amazon SNS topic, a text message (SMS message)
%% directly to a phone number, or a message to a mobile platform endpoint
%% (when you specify the <code>TargetArn</code>).
%%
%% If you send a message to a topic, Amazon SNS delivers the message to each
%% endpoint that is subscribed to the topic. The format of the message
%% depends on the notification protocol for each subscribed endpoint.
%%
%% When a <code>messageId</code> is returned, the message has been saved and
%% Amazon SNS will attempt to deliver it shortly.
%%
%% To use the <code>Publish</code> action for sending a message to a mobile
%% endpoint, such as an app on a Kindle device or mobile phone, you must
%% specify the EndpointArn for the TargetArn parameter. The EndpointArn is
%% returned when making a call with the <code>CreatePlatformEndpoint</code>
%% action.
%%
%% For more information about formatting messages, see <a
%% href="https://docs.aws.amazon.com/sns/latest/dg/mobile-push-send-custommessage.html">Send
%% Custom Platform-Specific Payloads in Messages to Mobile Devices</a>.
%%
%% <important> You can publish messages only to topics and endpoints in the
%% same AWS Region.
%%
%% </important>
publish(Client, Input)
  when is_map(Client), is_map(Input) ->
    publish(Client, Input, []).
publish(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"Publish">>, Input, Options).

%% @doc Removes a statement from a topic's access control policy.
remove_permission(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_permission(Client, Input, []).
remove_permission(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemovePermission">>, Input, Options).

%% @doc Sets the attributes for an endpoint for a device on one of the
%% supported push notification services, such as GCM (Firebase Cloud
%% Messaging) and APNS. For more information, see <a
%% href="https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using
%% Amazon SNS Mobile Push Notifications</a>.
set_endpoint_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_endpoint_attributes(Client, Input, []).
set_endpoint_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetEndpointAttributes">>, Input, Options).

%% @doc Sets the attributes of the platform application object for the
%% supported push notification services, such as APNS and GCM (Firebase Cloud
%% Messaging). For more information, see <a
%% href="https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using
%% Amazon SNS Mobile Push Notifications</a>. For information on configuring
%% attributes for message delivery status, see <a
%% href="https://docs.aws.amazon.com/sns/latest/dg/sns-msg-status.html">Using
%% Amazon SNS Application Attributes for Message Delivery Status</a>.
set_platform_application_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_platform_application_attributes(Client, Input, []).
set_platform_application_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetPlatformApplicationAttributes">>, Input, Options).

%% @doc Use this request to set the default settings for sending SMS messages
%% and receiving daily SMS usage reports.
%%
%% You can override some of these settings for a single message when you use
%% the <code>Publish</code> action with the
%% <code>MessageAttributes.entry.N</code> parameter. For more information,
%% see <a
%% href="https://docs.aws.amazon.com/sns/latest/dg/sms_publish-to-phone.html">Sending
%% an SMS Message</a> in the <i>Amazon SNS Developer Guide</i>.
set_s_m_s_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_s_m_s_attributes(Client, Input, []).
set_s_m_s_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetSMSAttributes">>, Input, Options).

%% @doc Allows a subscription owner to set an attribute of the subscription
%% to a new value.
set_subscription_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_subscription_attributes(Client, Input, []).
set_subscription_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetSubscriptionAttributes">>, Input, Options).

%% @doc Allows a topic owner to set an attribute of the topic to a new value.
set_topic_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_topic_attributes(Client, Input, []).
set_topic_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetTopicAttributes">>, Input, Options).

%% @doc Subscribes an endpoint to an Amazon SNS topic. If the endpoint type
%% is HTTP/S or email, or if the endpoint and the topic are not in the same
%% AWS account, the endpoint owner must the <code>ConfirmSubscription</code>
%% action to confirm the subscription.
%%
%% You call the <code>ConfirmSubscription</code> action with the token from
%% the subscription response. Confirmation tokens are valid for three days.
%%
%% This action is throttled at 100 transactions per second (TPS).
subscribe(Client, Input)
  when is_map(Client), is_map(Input) ->
    subscribe(Client, Input, []).
subscribe(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"Subscribe">>, Input, Options).

%% @doc Add tags to the specified Amazon SNS topic. For an overview, see <a
%% href="https://docs.aws.amazon.com/sns/latest/dg/sns-tags.html">Amazon SNS
%% Tags</a> in the <i>Amazon SNS Developer Guide</i>.
%%
%% When you use topic tags, keep the following guidelines in mind:
%%
%% <ul> <li> Adding more than 50 tags to a topic isn't recommended.
%%
%% </li> <li> Tags don't have any semantic meaning. Amazon SNS interprets
%% tags as character strings.
%%
%% </li> <li> Tags are case-sensitive.
%%
%% </li> <li> A new tag with a key identical to that of an existing tag
%% overwrites the existing tag.
%%
%% </li> <li> Tagging actions are limited to 10 TPS per AWS account, per AWS
%% region. If your application requires a higher throughput, file a <a
%% href="https://console.aws.amazon.com/support/home#/case/create?issueType=technical">technical
%% support request</a>.
%%
%% </li> </ul>
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Deletes a subscription. If the subscription requires authentication
%% for deletion, only the owner of the subscription or the topic's owner can
%% unsubscribe, and an AWS signature is required. If the
%% <code>Unsubscribe</code> call does not require authentication and the
%% requester is not the subscription owner, a final cancellation message is
%% delivered to the endpoint, so that the endpoint owner can easily
%% resubscribe to the topic if the <code>Unsubscribe</code> request was
%% unintended.
%%
%% This action is throttled at 100 transactions per second (TPS).
unsubscribe(Client, Input)
  when is_map(Client), is_map(Input) ->
    unsubscribe(Client, Input, []).
unsubscribe(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"Unsubscribe">>, Input, Options).

%% @doc Remove tags from the specified Amazon SNS topic. For an overview, see
%% <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-tags.html">Amazon
%% SNS Tags</a> in the <i>Amazon SNS Developer Guide</i>.
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
request(Client, Action, Input0, Options) ->
    Client1 = Client#{service => <<"sns">>},
    Host = get_host(<<"sns">>, Client1),
    URL = get_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-www-form-urlencoded">>}
    ],
    Input = Input0#{<<"Action">> => Action},
    Payload = uri_string:compose_query(maps:to_list(Input)),
    SignedHeaders = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, SignedHeaders, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    case hackney:body(Client) of
        {ok, <<>>} ->
            {ok, undefined, {200, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = aws_util:decode_xml(Body),
            {ok, Result, {200, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    Error = aws_util:decode_xml(Body),
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
