%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Simple Notification Service
%%
%% Amazon Simple Notification Service (Amazon SNS) is a web service that
%% enables you to build distributed web-enabled applications.
%%
%% Applications can use Amazon SNS to easily push real-time notification
%% messages to interested subscribers over multiple delivery protocols. For
%% more information about this product see the Amazon SNS product page. For
%% detailed information about Amazon SNS features and their associated API
%% calls, see the Amazon SNS Developer Guide.
%%
%% For information on the permissions you need to use this API, see Identity
%% and access management in Amazon SNS in the Amazon SNS Developer Guide.
%%
%% We also provide SDKs that enable you to access Amazon SNS from your
%% preferred programming language. The SDKs contain functionality that
%% automatically takes care of tasks such as: cryptographically signing your
%% service requests, retrying requests, and handling error responses. For a
%% list of available SDKs, go to Tools for Amazon Web Services.
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
         create_sms_sandbox_phone_number/2,
         create_sms_sandbox_phone_number/3,
         create_topic/2,
         create_topic/3,
         delete_endpoint/2,
         delete_endpoint/3,
         delete_platform_application/2,
         delete_platform_application/3,
         delete_sms_sandbox_phone_number/2,
         delete_sms_sandbox_phone_number/3,
         delete_topic/2,
         delete_topic/3,
         get_data_protection_policy/2,
         get_data_protection_policy/3,
         get_endpoint_attributes/2,
         get_endpoint_attributes/3,
         get_platform_application_attributes/2,
         get_platform_application_attributes/3,
         get_sms_attributes/2,
         get_sms_attributes/3,
         get_sms_sandbox_account_status/2,
         get_sms_sandbox_account_status/3,
         get_subscription_attributes/2,
         get_subscription_attributes/3,
         get_topic_attributes/2,
         get_topic_attributes/3,
         list_endpoints_by_platform_application/2,
         list_endpoints_by_platform_application/3,
         list_origination_numbers/2,
         list_origination_numbers/3,
         list_phone_numbers_opted_out/2,
         list_phone_numbers_opted_out/3,
         list_platform_applications/2,
         list_platform_applications/3,
         list_sms_sandbox_phone_numbers/2,
         list_sms_sandbox_phone_numbers/3,
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
         publish_batch/2,
         publish_batch/3,
         put_data_protection_policy/2,
         put_data_protection_policy/3,
         remove_permission/2,
         remove_permission/3,
         set_endpoint_attributes/2,
         set_endpoint_attributes/3,
         set_platform_application_attributes/2,
         set_platform_application_attributes/3,
         set_sms_attributes/2,
         set_sms_attributes/3,
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
         untag_resource/3,
         verify_sms_sandbox_phone_number/2,
         verify_sms_sandbox_phone_number/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Adds a statement to a topic's access control policy, granting
%% access for the specified Amazon Web Services accounts to the specified
%% actions.
%%
%% To remove the ability to change topic permissions, you must deny
%% permissions to the `AddPermission', `RemovePermission', and
%% `SetTopicAttributes' actions in your IAM policy.
add_permission(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_permission(Client, Input, []).
add_permission(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddPermission">>, Input, Options).

%% @doc Accepts a phone number and indicates whether the phone holder has
%% opted out of receiving SMS messages from your Amazon Web Services account.
%%
%% You cannot send SMS messages to a number that is opted out.
%%
%% To resume sending messages, you can opt in the number by using the
%% `OptInPhoneNumber' action.
check_if_phone_number_is_opted_out(Client, Input)
  when is_map(Client), is_map(Input) ->
    check_if_phone_number_is_opted_out(Client, Input, []).
check_if_phone_number_is_opted_out(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CheckIfPhoneNumberIsOptedOut">>, Input, Options).

%% @doc Verifies an endpoint owner's intent to receive messages by
%% validating the token sent to the endpoint by an earlier `Subscribe'
%% action.
%%
%% If the token is valid, the action creates a new subscription and returns
%% its Amazon Resource Name (ARN). This call requires an AWS signature only
%% when the `AuthenticateOnUnsubscribe' flag is set to &quot;true&quot;.
confirm_subscription(Client, Input)
  when is_map(Client), is_map(Input) ->
    confirm_subscription(Client, Input, []).
confirm_subscription(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ConfirmSubscription">>, Input, Options).

%% @doc Creates a platform application object for one of the supported push
%% notification services, such as APNS and GCM (Firebase Cloud Messaging), to
%% which devices and mobile apps may register.
%%
%% You must specify `PlatformPrincipal' and `PlatformCredential'
%% attributes when using the `CreatePlatformApplication' action.
%%
%% `PlatformPrincipal' and `PlatformCredential' are received from the
%% notification service.
%%
%% <ul> <li> For `ADM', `PlatformPrincipal' is `client id' and
%% `PlatformCredential' is `client secret'.
%%
%% </li> <li> For `Baidu', `PlatformPrincipal' is `API key' and
%% `PlatformCredential' is `secret key'.
%%
%% </li> <li> For `APNS' and `APNS_SANDBOX' using certificate
%% credentials, `PlatformPrincipal' is `SSL certificate' and
%% `PlatformCredential' is `private key'.
%%
%% </li> <li> For `APNS' and `APNS_SANDBOX' using token credentials,
%% `PlatformPrincipal' is `signing key ID' and
%% `PlatformCredential' is `signing key'.
%%
%% </li> <li> For `GCM' (Firebase Cloud Messaging), there is no
%% `PlatformPrincipal' and the `PlatformCredential' is `API key'.
%%
%% </li> <li> For `MPNS', `PlatformPrincipal' is `TLS
%% certificate' and `PlatformCredential' is `private key'.
%%
%% </li> <li> For `WNS', `PlatformPrincipal' is `Package Security
%% Identifier' and `PlatformCredential' is `secret key'.
%%
%% </li> </ul> You can use the returned `PlatformApplicationArn' as an
%% attribute for the `CreatePlatformEndpoint' action.
create_platform_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_platform_application(Client, Input, []).
create_platform_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePlatformApplication">>, Input, Options).

%% @doc Creates an endpoint for a device and mobile app on one of the
%% supported push notification services, such as GCM (Firebase Cloud
%% Messaging) and APNS.
%%
%% `CreatePlatformEndpoint' requires the `PlatformApplicationArn'
%% that is returned from `CreatePlatformApplication'. You can use the
%% returned `EndpointArn' to send a message to a mobile app or by the
%% `Subscribe' action for subscription to a topic. The
%% `CreatePlatformEndpoint' action is idempotent, so if the requester
%% already owns an endpoint with the same device token and attributes, that
%% endpoint's ARN is returned without creating a new endpoint. For more
%% information, see Using Amazon SNS Mobile Push Notifications.
%%
%% When using `CreatePlatformEndpoint' with Baidu, two attributes must be
%% provided: ChannelId and UserId. The token field must also contain the
%% ChannelId. For more information, see Creating an Amazon SNS Endpoint for
%% Baidu.
create_platform_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_platform_endpoint(Client, Input, []).
create_platform_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePlatformEndpoint">>, Input, Options).

%% @doc Adds a destination phone number to an Amazon Web Services account in
%% the SMS sandbox and sends a one-time password (OTP) to that phone number.
%%
%% When you start using Amazon SNS to send SMS messages, your Amazon Web
%% Services account is in the SMS sandbox. The SMS sandbox provides a safe
%% environment for you to try Amazon SNS features without risking your
%% reputation as an SMS sender. While your Amazon Web Services account is in
%% the SMS sandbox, you can use all of the features of Amazon SNS. However,
%% you can send SMS messages only to verified destination phone numbers. For
%% more information, including how to move out of the sandbox to send
%% messages without restrictions, see SMS sandbox in the Amazon SNS Developer
%% Guide.
create_sms_sandbox_phone_number(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_sms_sandbox_phone_number(Client, Input, []).
create_sms_sandbox_phone_number(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSMSSandboxPhoneNumber">>, Input, Options).

%% @doc Creates a topic to which notifications can be published.
%%
%% Users can create at most 100,000 standard topics (at most 1,000 FIFO
%% topics). For more information, see Creating an Amazon SNS topic in the
%% Amazon SNS Developer Guide. This action is idempotent, so if the requester
%% already owns a topic with the specified name, that topic's ARN is
%% returned without creating a new topic.
create_topic(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_topic(Client, Input, []).
create_topic(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTopic">>, Input, Options).

%% @doc Deletes the endpoint for a device and mobile app from Amazon SNS.
%%
%% This action is idempotent. For more information, see Using Amazon SNS
%% Mobile Push Notifications.
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
%%
%% For more information, see Using Amazon SNS Mobile Push Notifications.
delete_platform_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_platform_application(Client, Input, []).
delete_platform_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePlatformApplication">>, Input, Options).

%% @doc Deletes an Amazon Web Services account's verified or pending
%% phone number from the SMS sandbox.
%%
%% When you start using Amazon SNS to send SMS messages, your Amazon Web
%% Services account is in the SMS sandbox. The SMS sandbox provides a safe
%% environment for you to try Amazon SNS features without risking your
%% reputation as an SMS sender. While your Amazon Web Services account is in
%% the SMS sandbox, you can use all of the features of Amazon SNS. However,
%% you can send SMS messages only to verified destination phone numbers. For
%% more information, including how to move out of the sandbox to send
%% messages without restrictions, see SMS sandbox in the Amazon SNS Developer
%% Guide.
delete_sms_sandbox_phone_number(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_sms_sandbox_phone_number(Client, Input, []).
delete_sms_sandbox_phone_number(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSMSSandboxPhoneNumber">>, Input, Options).

%% @doc Deletes a topic and all its subscriptions.
%%
%% Deleting a topic might prevent some messages previously sent to the topic
%% from being delivered to subscribers. This action is idempotent, so
%% deleting a topic that does not exist does not result in an error.
delete_topic(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_topic(Client, Input, []).
delete_topic(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTopic">>, Input, Options).

%% @doc Retrieves the specified inline `DataProtectionPolicy' document
%% that is stored in the specified Amazon SNS topic.
get_data_protection_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_data_protection_policy(Client, Input, []).
get_data_protection_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDataProtectionPolicy">>, Input, Options).

%% @doc Retrieves the endpoint attributes for a device on one of the
%% supported push notification services, such as GCM (Firebase Cloud
%% Messaging) and APNS.
%%
%% For more information, see Using Amazon SNS Mobile Push Notifications.
get_endpoint_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_endpoint_attributes(Client, Input, []).
get_endpoint_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetEndpointAttributes">>, Input, Options).

%% @doc Retrieves the attributes of the platform application object for the
%% supported push notification services, such as APNS and GCM (Firebase Cloud
%% Messaging).
%%
%% For more information, see Using Amazon SNS Mobile Push Notifications.
get_platform_application_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_platform_application_attributes(Client, Input, []).
get_platform_application_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPlatformApplicationAttributes">>, Input, Options).

%% @doc Returns the settings for sending SMS messages from your Amazon Web
%% Services account.
%%
%% These settings are set with the `SetSMSAttributes' action.
get_sms_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_sms_attributes(Client, Input, []).
get_sms_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSMSAttributes">>, Input, Options).

%% @doc Retrieves the SMS sandbox status for the calling Amazon Web Services
%% account in the target Amazon Web Services Region.
%%
%% When you start using Amazon SNS to send SMS messages, your Amazon Web
%% Services account is in the SMS sandbox. The SMS sandbox provides a safe
%% environment for you to try Amazon SNS features without risking your
%% reputation as an SMS sender. While your Amazon Web Services account is in
%% the SMS sandbox, you can use all of the features of Amazon SNS. However,
%% you can send SMS messages only to verified destination phone numbers. For
%% more information, including how to move out of the sandbox to send
%% messages without restrictions, see SMS sandbox in the Amazon SNS Developer
%% Guide.
get_sms_sandbox_account_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_sms_sandbox_account_status(Client, Input, []).
get_sms_sandbox_account_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSMSSandboxAccountStatus">>, Input, Options).

%% @doc Returns all of the properties of a subscription.
get_subscription_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_subscription_attributes(Client, Input, []).
get_subscription_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSubscriptionAttributes">>, Input, Options).

%% @doc Returns all of the properties of a topic.
%%
%% Topic properties returned might differ based on the authorization of the
%% user.
get_topic_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_topic_attributes(Client, Input, []).
get_topic_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTopicAttributes">>, Input, Options).

%% @doc Lists the endpoints and endpoint attributes for devices in a
%% supported push notification service, such as GCM (Firebase Cloud
%% Messaging) and APNS.
%%
%% The results for `ListEndpointsByPlatformApplication' are paginated and
%% return a limited list of endpoints, up to 100. If additional records are
%% available after the first page results, then a NextToken string will be
%% returned. To receive the next page, you call
%% `ListEndpointsByPlatformApplication' again using the NextToken string
%% received from the previous call. When there are no more records to return,
%% NextToken will be null. For more information, see Using Amazon SNS Mobile
%% Push Notifications.
%%
%% This action is throttled at 30 transactions per second (TPS).
list_endpoints_by_platform_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_endpoints_by_platform_application(Client, Input, []).
list_endpoints_by_platform_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEndpointsByPlatformApplication">>, Input, Options).

%% @doc Lists the calling Amazon Web Services account's dedicated
%% origination numbers and their metadata.
%%
%% For more information about origination numbers, see Origination numbers in
%% the Amazon SNS Developer Guide.
list_origination_numbers(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_origination_numbers(Client, Input, []).
list_origination_numbers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListOriginationNumbers">>, Input, Options).

%% @doc Returns a list of phone numbers that are opted out, meaning you
%% cannot send SMS messages to them.
%%
%% The results for `ListPhoneNumbersOptedOut' are paginated, and each
%% page returns up to 100 phone numbers. If additional phone numbers are
%% available after the first page of results, then a `NextToken' string
%% will be returned. To receive the next page, you call
%% `ListPhoneNumbersOptedOut' again using the `NextToken' string
%% received from the previous call. When there are no more records to return,
%% `NextToken' will be null.
list_phone_numbers_opted_out(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_phone_numbers_opted_out(Client, Input, []).
list_phone_numbers_opted_out(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPhoneNumbersOptedOut">>, Input, Options).

%% @doc Lists the platform application objects for the supported push
%% notification services, such as APNS and GCM (Firebase Cloud Messaging).
%%
%% The results for `ListPlatformApplications' are paginated and return a
%% limited list of applications, up to 100. If additional records are
%% available after the first page results, then a NextToken string will be
%% returned. To receive the next page, you call
%% `ListPlatformApplications' using the NextToken string received from
%% the previous call. When there are no more records to return,
%% `NextToken' will be null. For more information, see Using Amazon SNS
%% Mobile Push Notifications.
%%
%% This action is throttled at 15 transactions per second (TPS).
list_platform_applications(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_platform_applications(Client, Input, []).
list_platform_applications(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPlatformApplications">>, Input, Options).

%% @doc Lists the calling Amazon Web Services account's current verified
%% and pending destination phone numbers in the SMS sandbox.
%%
%% When you start using Amazon SNS to send SMS messages, your Amazon Web
%% Services account is in the SMS sandbox. The SMS sandbox provides a safe
%% environment for you to try Amazon SNS features without risking your
%% reputation as an SMS sender. While your Amazon Web Services account is in
%% the SMS sandbox, you can use all of the features of Amazon SNS. However,
%% you can send SMS messages only to verified destination phone numbers. For
%% more information, including how to move out of the sandbox to send
%% messages without restrictions, see SMS sandbox in the Amazon SNS Developer
%% Guide.
list_sms_sandbox_phone_numbers(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_sms_sandbox_phone_numbers(Client, Input, []).
list_sms_sandbox_phone_numbers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSMSSandboxPhoneNumbers">>, Input, Options).

%% @doc Returns a list of the requester's subscriptions.
%%
%% Each call returns a limited list of subscriptions, up to 100. If there are
%% more subscriptions, a `NextToken' is also returned. Use the
%% `NextToken' parameter in a new `ListSubscriptions' call to get
%% further results.
%%
%% This action is throttled at 30 transactions per second (TPS).
list_subscriptions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_subscriptions(Client, Input, []).
list_subscriptions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSubscriptions">>, Input, Options).

%% @doc Returns a list of the subscriptions to a specific topic.
%%
%% Each call returns a limited list of subscriptions, up to 100. If there are
%% more subscriptions, a `NextToken' is also returned. Use the
%% `NextToken' parameter in a new `ListSubscriptionsByTopic' call to
%% get further results.
%%
%% This action is throttled at 30 transactions per second (TPS).
list_subscriptions_by_topic(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_subscriptions_by_topic(Client, Input, []).
list_subscriptions_by_topic(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSubscriptionsByTopic">>, Input, Options).

%% @doc List all tags added to the specified Amazon SNS topic.
%%
%% For an overview, see Amazon SNS Tags in the Amazon Simple Notification
%% Service Developer Guide.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Returns a list of the requester's topics.
%%
%% Each call returns a limited list of topics, up to 100. If there are more
%% topics, a `NextToken' is also returned. Use the `NextToken'
%% parameter in a new `ListTopics' call to get further results.
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
%% (when you specify the `TargetArn').
%%
%% If you send a message to a topic, Amazon SNS delivers the message to each
%% endpoint that is subscribed to the topic. The format of the message
%% depends on the notification protocol for each subscribed endpoint.
%%
%% When a `messageId' is returned, the message is saved and Amazon SNS
%% immediately delivers it to subscribers.
%%
%% To use the `Publish' action for publishing a message to a mobile
%% endpoint, such as an app on a Kindle device or mobile phone, you must
%% specify the EndpointArn for the TargetArn parameter. The EndpointArn is
%% returned when making a call with the `CreatePlatformEndpoint' action.
%%
%% For more information about formatting messages, see Send Custom
%% Platform-Specific Payloads in Messages to Mobile Devices.
%%
%% You can publish messages only to topics and endpoints in the same Amazon
%% Web Services Region.
publish(Client, Input)
  when is_map(Client), is_map(Input) ->
    publish(Client, Input, []).
publish(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"Publish">>, Input, Options).

%% @doc Publishes up to ten messages to the specified topic.
%%
%% This is a batch version of `Publish'. For FIFO topics, multiple
%% messages within a single batch are published in the order they are sent,
%% and messages are deduplicated within the batch and across batches for 5
%% minutes.
%%
%% The result of publishing each message is reported individually in the
%% response. Because the batch request can result in a combination of
%% successful and unsuccessful actions, you should check for batch errors
%% even when the call returns an HTTP status code of `200'.
%%
%% The maximum allowed individual message size and the maximum total payload
%% size (the sum of the individual lengths of all of the batched messages)
%% are both 256 KB (262,144 bytes).
%%
%% Some actions take lists of parameters. These lists are specified using the
%% `param.n' notation. Values of `n' are integers starting from 1.
%% For example, a parameter list with two elements looks like this:
%%
%% &amp;AttributeName.1=first
%%
%% &amp;AttributeName.2=second
%%
%% If you send a batch message to a topic, Amazon SNS publishes the batch
%% message to each endpoint that is subscribed to the topic. The format of
%% the batch message depends on the notification protocol for each subscribed
%% endpoint.
%%
%% When a `messageId' is returned, the batch message is saved and Amazon
%% SNS immediately delivers the message to subscribers.
publish_batch(Client, Input)
  when is_map(Client), is_map(Input) ->
    publish_batch(Client, Input, []).
publish_batch(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PublishBatch">>, Input, Options).

%% @doc Adds or updates an inline policy document that is stored in the
%% specified Amazon SNS topic.
put_data_protection_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_data_protection_policy(Client, Input, []).
put_data_protection_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutDataProtectionPolicy">>, Input, Options).

%% @doc Removes a statement from a topic's access control policy.
%%
%% To remove the ability to change topic permissions, you must deny
%% permissions to the `AddPermission', `RemovePermission', and
%% `SetTopicAttributes' actions in your IAM policy.
remove_permission(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_permission(Client, Input, []).
remove_permission(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemovePermission">>, Input, Options).

%% @doc Sets the attributes for an endpoint for a device on one of the
%% supported push notification services, such as GCM (Firebase Cloud
%% Messaging) and APNS.
%%
%% For more information, see Using Amazon SNS Mobile Push Notifications.
set_endpoint_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_endpoint_attributes(Client, Input, []).
set_endpoint_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetEndpointAttributes">>, Input, Options).

%% @doc Sets the attributes of the platform application object for the
%% supported push notification services, such as APNS and GCM (Firebase Cloud
%% Messaging).
%%
%% For more information, see Using Amazon SNS Mobile Push Notifications. For
%% information on configuring attributes for message delivery status, see
%% Using Amazon SNS Application Attributes for Message Delivery Status.
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
%% the `Publish' action with the `MessageAttributes.entry.N'
%% parameter. For more information, see Publishing to a mobile phone in the
%% Amazon SNS Developer Guide.
%%
%% To use this operation, you must grant the Amazon SNS service principal
%% (`sns.amazonaws.com') permission to perform the `s3:ListBucket'
%% action.
set_sms_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_sms_attributes(Client, Input, []).
set_sms_attributes(Client, Input, Options)
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
%%
%% To remove the ability to change topic permissions, you must deny
%% permissions to the `AddPermission', `RemovePermission', and
%% `SetTopicAttributes' actions in your IAM policy.
set_topic_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_topic_attributes(Client, Input, []).
set_topic_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetTopicAttributes">>, Input, Options).

%% @doc Subscribes an endpoint to an Amazon SNS topic.
%%
%% If the endpoint type is HTTP/S or email, or if the endpoint and the topic
%% are not in the same Amazon Web Services account, the endpoint owner must
%% run the `ConfirmSubscription' action to confirm the subscription.
%%
%% You call the `ConfirmSubscription' action with the token from the
%% subscription response. Confirmation tokens are valid for three days.
%%
%% This action is throttled at 100 transactions per second (TPS).
subscribe(Client, Input)
  when is_map(Client), is_map(Input) ->
    subscribe(Client, Input, []).
subscribe(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"Subscribe">>, Input, Options).

%% @doc Add tags to the specified Amazon SNS topic.
%%
%% For an overview, see Amazon SNS Tags in the Amazon SNS Developer Guide.
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
%% </li> <li> Tagging actions are limited to 10 TPS per Amazon Web Services
%% account, per Amazon Web Services Region. If your application requires a
%% higher throughput, file a technical support request.
%%
%% </li> </ul>
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Deletes a subscription.
%%
%% If the subscription requires authentication for deletion, only the owner
%% of the subscription or the topic's owner can unsubscribe, and an
%% Amazon Web Services signature is required. If the `Unsubscribe' call
%% does not require authentication and the requester is not the subscription
%% owner, a final cancellation message is delivered to the endpoint, so that
%% the endpoint owner can easily resubscribe to the topic if the
%% `Unsubscribe' request was unintended.
%%
%% Amazon SQS queue subscriptions require authentication for deletion. Only
%% the owner of the subscription, or the owner of the topic can unsubscribe
%% using the required Amazon Web Services signature.
%%
%% This action is throttled at 100 transactions per second (TPS).
unsubscribe(Client, Input)
  when is_map(Client), is_map(Input) ->
    unsubscribe(Client, Input, []).
unsubscribe(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"Unsubscribe">>, Input, Options).

%% @doc Remove tags from the specified Amazon SNS topic.
%%
%% For an overview, see Amazon SNS Tags in the Amazon SNS Developer Guide.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Verifies a destination phone number with a one-time password (OTP)
%% for the calling Amazon Web Services account.
%%
%% When you start using Amazon SNS to send SMS messages, your Amazon Web
%% Services account is in the SMS sandbox. The SMS sandbox provides a safe
%% environment for you to try Amazon SNS features without risking your
%% reputation as an SMS sender. While your Amazon Web Services account is in
%% the SMS sandbox, you can use all of the features of Amazon SNS. However,
%% you can send SMS messages only to verified destination phone numbers. For
%% more information, including how to move out of the sandbox to send
%% messages without restrictions, see SMS sandbox in the Amazon SNS Developer
%% Guide.
verify_sms_sandbox_phone_number(Client, Input)
  when is_map(Client), is_map(Input) ->
    verify_sms_sandbox_phone_number(Client, Input, []).
verify_sms_sandbox_phone_number(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"VerifySMSSandboxPhoneNumber">>, Input, Options).

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
    Client1 = Client#{service => <<"sns">>},
    Host = build_host(<<"sns">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-www-form-urlencoded">>}
    ],

    Input = Input0#{ <<"Action">> => Action
                   , <<"Version">> => <<"2010-03-31">>
                   },

    Payload = aws_util:encode_query(Input),
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
    Proto = aws_client:proto(Client),
    Port = aws_client:port(Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
