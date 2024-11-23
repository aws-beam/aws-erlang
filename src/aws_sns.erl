%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Simple Notification Service
%%
%% Amazon Simple Notification Service (Amazon SNS) is a web service that
%% enables you
%% to build distributed web-enabled applications.
%%
%% Applications can use Amazon SNS to easily push
%% real-time notification messages to interested subscribers over multiple
%% delivery
%% protocols. For more information about this product see the Amazon SNS
%% product page: http://aws.amazon.com/sns/. For detailed information about
%% Amazon SNS features
%% and their associated API calls, see the Amazon SNS Developer Guide:
%% https://docs.aws.amazon.com/sns/latest/dg/.
%%
%% For information on the permissions you need to use this API, see Identity
%% and access management in Amazon SNS:
%% https://docs.aws.amazon.com/sns/latest/dg/sns-authentication-and-access-control.html
%% in the Amazon SNS Developer
%% Guide.
%%
%% We also provide SDKs that enable you to access Amazon SNS from your
%% preferred programming
%% language. The SDKs contain functionality that automatically takes care of
%% tasks such as:
%% cryptographically signing your service requests, retrying requests, and
%% handling error
%% responses. For a list of available SDKs, go to Tools for Amazon Web
%% Services: http://aws.amazon.com/tools/.
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


%% Example:
%% set_sms_attributes_response() :: #{

%% }
-type set_sms_attributes_response() :: #{binary() => any()}.

%% Example:
%% create_platform_endpoint_input() :: #{
%%   <<"Attributes">> => map(),
%%   <<"CustomUserData">> => string(),
%%   <<"PlatformApplicationArn">> := string(),
%%   <<"Token">> := string()
%% }
-type create_platform_endpoint_input() :: #{binary() => any()}.

%% Example:
%% kms_disabled_exception() :: #{
%%   <<"message">> => string()
%% }
-type kms_disabled_exception() :: #{binary() => any()}.

%% Example:
%% confirm_subscription_response() :: #{
%%   <<"SubscriptionArn">> => string()
%% }
-type confirm_subscription_response() :: #{binary() => any()}.

%% Example:
%% list_origination_numbers_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PhoneNumbers">> => list(phone_number_information()())
%% }
-type list_origination_numbers_result() :: #{binary() => any()}.

%% Example:
%% phone_number_information() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Iso2CountryCode">> => string(),
%%   <<"NumberCapabilities">> => list(list(any())()),
%%   <<"PhoneNumber">> => string(),
%%   <<"RouteType">> => list(any()),
%%   <<"Status">> => string()
%% }
-type phone_number_information() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"Tags">> := list(tag()())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% platform_application_disabled_exception() :: #{
%%   <<"message">> => string()
%% }
-type platform_application_disabled_exception() :: #{binary() => any()}.

%% Example:
%% unsubscribe_input() :: #{
%%   <<"SubscriptionArn">> := string()
%% }
-type unsubscribe_input() :: #{binary() => any()}.

%% Example:
%% create_topic_input() :: #{
%%   <<"Attributes">> => map(),
%%   <<"DataProtectionPolicy">> => string(),
%%   <<"Name">> := string(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_topic_input() :: #{binary() => any()}.

%% Example:
%% kms_opt_in_required() :: #{
%%   <<"message">> => string()
%% }
-type kms_opt_in_required() :: #{binary() => any()}.

%% Example:
%% delete_sms_sandbox_phone_number_input() :: #{
%%   <<"PhoneNumber">> := string()
%% }
-type delete_sms_sandbox_phone_number_input() :: #{binary() => any()}.

%% Example:
%% list_platform_applications_input() :: #{
%%   <<"NextToken">> => string()
%% }
-type list_platform_applications_input() :: #{binary() => any()}.

%% Example:
%% get_subscription_attributes_response() :: #{
%%   <<"Attributes">> => map()
%% }
-type get_subscription_attributes_response() :: #{binary() => any()}.

%% Example:
%% delete_topic_input() :: #{
%%   <<"TopicArn">> := string()
%% }
-type delete_topic_input() :: #{binary() => any()}.

%% Example:
%% get_topic_attributes_input() :: #{
%%   <<"TopicArn">> := string()
%% }
-type get_topic_attributes_input() :: #{binary() => any()}.

%% Example:
%% platform_application() :: #{
%%   <<"Attributes">> => map(),
%%   <<"PlatformApplicationArn">> => string()
%% }
-type platform_application() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% create_platform_application_response() :: #{
%%   <<"PlatformApplicationArn">> => string()
%% }
-type create_platform_application_response() :: #{binary() => any()}.

%% Example:
%% kms_throttling_exception() :: #{
%%   <<"message">> => string()
%% }
-type kms_throttling_exception() :: #{binary() => any()}.

%% Example:
%% get_endpoint_attributes_input() :: #{
%%   <<"EndpointArn">> := string()
%% }
-type get_endpoint_attributes_input() :: #{binary() => any()}.

%% Example:
%% invalid_batch_entry_id_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_batch_entry_id_exception() :: #{binary() => any()}.

%% Example:
%% list_subscriptions_by_topic_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Subscriptions">> => list(subscription()())
%% }
-type list_subscriptions_by_topic_response() :: #{binary() => any()}.

%% Example:
%% message_attribute_value() :: #{
%%   <<"BinaryValue">> => binary(),
%%   <<"DataType">> => string(),
%%   <<"StringValue">> => string()
%% }
-type message_attribute_value() :: #{binary() => any()}.

%% Example:
%% check_if_phone_number_is_opted_out_input() :: #{
%%   <<"phoneNumber">> := string()
%% }
-type check_if_phone_number_is_opted_out_input() :: #{binary() => any()}.

%% Example:
%% replay_limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type replay_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% list_phone_numbers_opted_out_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"phoneNumbers">> => list(string()())
%% }
-type list_phone_numbers_opted_out_response() :: #{binary() => any()}.

%% Example:
%% opt_in_phone_number_response() :: #{

%% }
-type opt_in_phone_number_response() :: #{binary() => any()}.

%% Example:
%% create_sms_sandbox_phone_number_input() :: #{
%%   <<"LanguageCode">> => list(any()),
%%   <<"PhoneNumber">> := string()
%% }
-type create_sms_sandbox_phone_number_input() :: #{binary() => any()}.

%% Example:
%% create_sms_sandbox_phone_number_result() :: #{

%% }
-type create_sms_sandbox_phone_number_result() :: #{binary() => any()}.

%% Example:
%% user_error_exception() :: #{
%%   <<"message">> => string()
%% }
-type user_error_exception() :: #{binary() => any()}.

%% Example:
%% list_subscriptions_input() :: #{
%%   <<"NextToken">> => string()
%% }
-type list_subscriptions_input() :: #{binary() => any()}.

%% Example:
%% set_topic_attributes_input() :: #{
%%   <<"AttributeName">> := string(),
%%   <<"AttributeValue">> => string(),
%%   <<"TopicArn">> := string()
%% }
-type set_topic_attributes_input() :: #{binary() => any()}.

%% Example:
%% tag_policy_exception() :: #{
%%   <<"message">> => string()
%% }
-type tag_policy_exception() :: #{binary() => any()}.

%% Example:
%% get_platform_application_attributes_input() :: #{
%%   <<"PlatformApplicationArn">> := string()
%% }
-type get_platform_application_attributes_input() :: #{binary() => any()}.

%% Example:
%% list_sms_sandbox_phone_numbers_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PhoneNumbers">> => list(sms_sandbox_phone_number()())
%% }
-type list_sms_sandbox_phone_numbers_result() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"TagKeys">> := list(string()())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% invalid_state_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_state_exception() :: #{binary() => any()}.

%% Example:
%% set_platform_application_attributes_input() :: #{
%%   <<"Attributes">> := map(),
%%   <<"PlatformApplicationArn">> := string()
%% }
-type set_platform_application_attributes_input() :: #{binary() => any()}.

%% Example:
%% batch_result_error_entry() :: #{
%%   <<"Code">> => string(),
%%   <<"Id">> => string(),
%%   <<"Message">> => string(),
%%   <<"SenderFault">> => boolean()
%% }
-type batch_result_error_entry() :: #{binary() => any()}.

%% Example:
%% publish_batch_response() :: #{
%%   <<"Failed">> => list(batch_result_error_entry()()),
%%   <<"Successful">> => list(publish_batch_result_entry()())
%% }
-type publish_batch_response() :: #{binary() => any()}.

%% Example:
%% verify_sms_sandbox_phone_number_input() :: #{
%%   <<"OneTimePassword">> := string(),
%%   <<"PhoneNumber">> := string()
%% }
-type verify_sms_sandbox_phone_number_input() :: #{binary() => any()}.

%% Example:
%% publish_batch_request_entry() :: #{
%%   <<"Id">> => string(),
%%   <<"Message">> => string(),
%%   <<"MessageAttributes">> => map(),
%%   <<"MessageDeduplicationId">> => string(),
%%   <<"MessageGroupId">> => string(),
%%   <<"MessageStructure">> => string(),
%%   <<"Subject">> => string()
%% }
-type publish_batch_request_entry() :: #{binary() => any()}.

%% Example:
%% create_topic_response() :: #{
%%   <<"TopicArn">> => string()
%% }
-type create_topic_response() :: #{binary() => any()}.

%% Example:
%% topic_limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type topic_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% invalid_security_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_security_exception() :: #{binary() => any()}.

%% Example:
%% confirm_subscription_input() :: #{
%%   <<"AuthenticateOnUnsubscribe">> => string(),
%%   <<"Token">> := string(),
%%   <<"TopicArn">> := string()
%% }
-type confirm_subscription_input() :: #{binary() => any()}.

%% Example:
%% create_platform_application_input() :: #{
%%   <<"Attributes">> := map(),
%%   <<"Name">> := string(),
%%   <<"Platform">> := string()
%% }
-type create_platform_application_input() :: #{binary() => any()}.

%% Example:
%% throttled_exception() :: #{
%%   <<"message">> => string()
%% }
-type throttled_exception() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% get_subscription_attributes_input() :: #{
%%   <<"SubscriptionArn">> := string()
%% }
-type get_subscription_attributes_input() :: #{binary() => any()}.

%% Example:
%% subscribe_input() :: #{
%%   <<"Attributes">> => map(),
%%   <<"Endpoint">> => string(),
%%   <<"Protocol">> := string(),
%%   <<"ReturnSubscriptionArn">> => boolean(),
%%   <<"TopicArn">> := string()
%% }
-type subscribe_input() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% opted_out_exception() :: #{
%%   <<"message">> => string()
%% }
-type opted_out_exception() :: #{binary() => any()}.

%% Example:
%% sms_sandbox_phone_number() :: #{
%%   <<"PhoneNumber">> => string(),
%%   <<"Status">> => list(any())
%% }
-type sms_sandbox_phone_number() :: #{binary() => any()}.

%% Example:
%% list_subscriptions_by_topic_input() :: #{
%%   <<"NextToken">> => string(),
%%   <<"TopicArn">> := string()
%% }
-type list_subscriptions_by_topic_input() :: #{binary() => any()}.

%% Example:
%% list_sms_sandbox_phone_numbers_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_sms_sandbox_phone_numbers_input() :: #{binary() => any()}.

%% Example:
%% topic() :: #{
%%   <<"TopicArn">> => string()
%% }
-type topic() :: #{binary() => any()}.

%% Example:
%% invalid_parameter_value_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_parameter_value_exception() :: #{binary() => any()}.

%% Example:
%% not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type not_found_exception() :: #{binary() => any()}.

%% Example:
%% tag_limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type tag_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% get_endpoint_attributes_response() :: #{
%%   <<"Attributes">> => map()
%% }
-type get_endpoint_attributes_response() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => list(tag()())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% get_sms_attributes_input() :: #{
%%   <<"attributes">> => list(string()())
%% }
-type get_sms_attributes_input() :: #{binary() => any()}.

%% Example:
%% list_topics_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Topics">> => list(topic()())
%% }
-type list_topics_response() :: #{binary() => any()}.

%% Example:
%% verification_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"Status">> => string()
%% }
-type verification_exception() :: #{binary() => any()}.

%% Example:
%% endpoint_disabled_exception() :: #{
%%   <<"message">> => string()
%% }
-type endpoint_disabled_exception() :: #{binary() => any()}.

%% Example:
%% remove_permission_input() :: #{
%%   <<"Label">> := string(),
%%   <<"TopicArn">> := string()
%% }
-type remove_permission_input() :: #{binary() => any()}.

%% Example:
%% publish_batch_result_entry() :: #{
%%   <<"Id">> => string(),
%%   <<"MessageId">> => string(),
%%   <<"SequenceNumber">> => string()
%% }
-type publish_batch_result_entry() :: #{binary() => any()}.

%% Example:
%% get_sms_sandbox_account_status_result() :: #{
%%   <<"IsInSandbox">> => boolean()
%% }
-type get_sms_sandbox_account_status_result() :: #{binary() => any()}.

%% Example:
%% empty_batch_request_exception() :: #{
%%   <<"message">> => string()
%% }
-type empty_batch_request_exception() :: #{binary() => any()}.

%% Example:
%% endpoint() :: #{
%%   <<"Attributes">> => map(),
%%   <<"EndpointArn">> => string()
%% }
-type endpoint() :: #{binary() => any()}.

%% Example:
%% kms_access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type kms_access_denied_exception() :: #{binary() => any()}.

%% Example:
%% verify_sms_sandbox_phone_number_result() :: #{

%% }
-type verify_sms_sandbox_phone_number_result() :: #{binary() => any()}.

%% Example:
%% kms_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type kms_not_found_exception() :: #{binary() => any()}.

%% Example:
%% invalid_parameter_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_parameter_exception() :: #{binary() => any()}.

%% Example:
%% batch_entry_ids_not_distinct_exception() :: #{
%%   <<"message">> => string()
%% }
-type batch_entry_ids_not_distinct_exception() :: #{binary() => any()}.

%% Example:
%% set_sms_attributes_input() :: #{
%%   <<"attributes">> := map()
%% }
-type set_sms_attributes_input() :: #{binary() => any()}.

%% Example:
%% list_platform_applications_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PlatformApplications">> => list(platform_application()())
%% }
-type list_platform_applications_response() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% set_subscription_attributes_input() :: #{
%%   <<"AttributeName">> := string(),
%%   <<"AttributeValue">> => string(),
%%   <<"SubscriptionArn">> := string()
%% }
-type set_subscription_attributes_input() :: #{binary() => any()}.

%% Example:
%% delete_endpoint_input() :: #{
%%   <<"EndpointArn">> := string()
%% }
-type delete_endpoint_input() :: #{binary() => any()}.

%% Example:
%% subscribe_response() :: #{
%%   <<"SubscriptionArn">> => string()
%% }
-type subscribe_response() :: #{binary() => any()}.

%% Example:
%% validation_exception() :: #{
%%   <<"Message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"ResourceArn">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% subscription() :: #{
%%   <<"Endpoint">> => string(),
%%   <<"Owner">> => string(),
%%   <<"Protocol">> => string(),
%%   <<"SubscriptionArn">> => string(),
%%   <<"TopicArn">> => string()
%% }
-type subscription() :: #{binary() => any()}.

%% Example:
%% list_phone_numbers_opted_out_input() :: #{
%%   <<"nextToken">> => string()
%% }
-type list_phone_numbers_opted_out_input() :: #{binary() => any()}.

%% Example:
%% list_subscriptions_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Subscriptions">> => list(subscription()())
%% }
-type list_subscriptions_response() :: #{binary() => any()}.

%% Example:
%% publish_response() :: #{
%%   <<"MessageId">> => string(),
%%   <<"SequenceNumber">> => string()
%% }
-type publish_response() :: #{binary() => any()}.

%% Example:
%% authorization_error_exception() :: #{
%%   <<"message">> => string()
%% }
-type authorization_error_exception() :: #{binary() => any()}.

%% Example:
%% check_if_phone_number_is_opted_out_response() :: #{
%%   <<"isOptedOut">> => boolean()
%% }
-type check_if_phone_number_is_opted_out_response() :: #{binary() => any()}.

%% Example:
%% concurrent_access_exception() :: #{
%%   <<"message">> => string()
%% }
-type concurrent_access_exception() :: #{binary() => any()}.

%% Example:
%% add_permission_input() :: #{
%%   <<"AWSAccountId">> := list(string()()),
%%   <<"ActionName">> := list(string()()),
%%   <<"Label">> := string(),
%%   <<"TopicArn">> := string()
%% }
-type add_permission_input() :: #{binary() => any()}.

%% Example:
%% get_data_protection_policy_response() :: #{
%%   <<"DataProtectionPolicy">> => string()
%% }
-type get_data_protection_policy_response() :: #{binary() => any()}.

%% Example:
%% list_origination_numbers_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_origination_numbers_request() :: #{binary() => any()}.

%% Example:
%% set_endpoint_attributes_input() :: #{
%%   <<"Attributes">> := map(),
%%   <<"EndpointArn">> := string()
%% }
-type set_endpoint_attributes_input() :: #{binary() => any()}.

%% Example:
%% publish_input() :: #{
%%   <<"Message">> := string(),
%%   <<"MessageAttributes">> => map(),
%%   <<"MessageDeduplicationId">> => string(),
%%   <<"MessageGroupId">> => string(),
%%   <<"MessageStructure">> => string(),
%%   <<"PhoneNumber">> => string(),
%%   <<"Subject">> => string(),
%%   <<"TargetArn">> => string(),
%%   <<"TopicArn">> => string()
%% }
-type publish_input() :: #{binary() => any()}.

%% Example:
%% filter_policy_limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type filter_policy_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% create_endpoint_response() :: #{
%%   <<"EndpointArn">> => string()
%% }
-type create_endpoint_response() :: #{binary() => any()}.

%% Example:
%% list_endpoints_by_platform_application_response() :: #{
%%   <<"Endpoints">> => list(endpoint()()),
%%   <<"NextToken">> => string()
%% }
-type list_endpoints_by_platform_application_response() :: #{binary() => any()}.

%% Example:
%% get_topic_attributes_response() :: #{
%%   <<"Attributes">> => map()
%% }
-type get_topic_attributes_response() :: #{binary() => any()}.

%% Example:
%% list_topics_input() :: #{
%%   <<"NextToken">> => string()
%% }
-type list_topics_input() :: #{binary() => any()}.

%% Example:
%% put_data_protection_policy_input() :: #{
%%   <<"DataProtectionPolicy">> := string(),
%%   <<"ResourceArn">> := string()
%% }
-type put_data_protection_policy_input() :: #{binary() => any()}.

%% Example:
%% subscription_limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type subscription_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% delete_sms_sandbox_phone_number_result() :: #{

%% }
-type delete_sms_sandbox_phone_number_result() :: #{binary() => any()}.

%% Example:
%% get_sms_attributes_response() :: #{
%%   <<"attributes">> => map()
%% }
-type get_sms_attributes_response() :: #{binary() => any()}.

%% Example:
%% get_sms_sandbox_account_status_input() :: #{

%% }
-type get_sms_sandbox_account_status_input() :: #{binary() => any()}.

%% Example:
%% stale_tag_exception() :: #{
%%   <<"message">> => string()
%% }
-type stale_tag_exception() :: #{binary() => any()}.

%% Example:
%% kms_invalid_state_exception() :: #{
%%   <<"message">> => string()
%% }
-type kms_invalid_state_exception() :: #{binary() => any()}.

%% Example:
%% list_endpoints_by_platform_application_input() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PlatformApplicationArn">> := string()
%% }
-type list_endpoints_by_platform_application_input() :: #{binary() => any()}.

%% Example:
%% opt_in_phone_number_input() :: #{
%%   <<"phoneNumber">> := string()
%% }
-type opt_in_phone_number_input() :: #{binary() => any()}.

%% Example:
%% get_platform_application_attributes_response() :: #{
%%   <<"Attributes">> => map()
%% }
-type get_platform_application_attributes_response() :: #{binary() => any()}.

%% Example:
%% too_many_entries_in_batch_request_exception() :: #{
%%   <<"message">> => string()
%% }
-type too_many_entries_in_batch_request_exception() :: #{binary() => any()}.

%% Example:
%% internal_error_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_error_exception() :: #{binary() => any()}.

%% Example:
%% batch_request_too_long_exception() :: #{
%%   <<"message">> => string()
%% }
-type batch_request_too_long_exception() :: #{binary() => any()}.

%% Example:
%% publish_batch_input() :: #{
%%   <<"PublishBatchRequestEntries">> := list(publish_batch_request_entry()()),
%%   <<"TopicArn">> := string()
%% }
-type publish_batch_input() :: #{binary() => any()}.

%% Example:
%% get_data_protection_policy_input() :: #{
%%   <<"ResourceArn">> := string()
%% }
-type get_data_protection_policy_input() :: #{binary() => any()}.

%% Example:
%% delete_platform_application_input() :: #{
%%   <<"PlatformApplicationArn">> := string()
%% }
-type delete_platform_application_input() :: #{binary() => any()}.

-type add_permission_errors() ::
    internal_error_exception() | 
    authorization_error_exception() | 
    invalid_parameter_exception() | 
    not_found_exception().

-type check_if_phone_number_is_opted_out_errors() ::
    internal_error_exception() | 
    authorization_error_exception() | 
    invalid_parameter_exception() | 
    throttled_exception().

-type confirm_subscription_errors() ::
    internal_error_exception() | 
    subscription_limit_exceeded_exception() | 
    filter_policy_limit_exceeded_exception() | 
    authorization_error_exception() | 
    invalid_parameter_exception() | 
    not_found_exception() | 
    replay_limit_exceeded_exception().

-type create_platform_application_errors() ::
    internal_error_exception() | 
    authorization_error_exception() | 
    invalid_parameter_exception().

-type create_platform_endpoint_errors() ::
    internal_error_exception() | 
    authorization_error_exception() | 
    invalid_parameter_exception() | 
    not_found_exception().

-type create_sms_sandbox_phone_number_errors() ::
    internal_error_exception() | 
    authorization_error_exception() | 
    invalid_parameter_exception() | 
    opted_out_exception() | 
    throttled_exception() | 
    user_error_exception().

-type create_topic_errors() ::
    internal_error_exception() | 
    stale_tag_exception() | 
    concurrent_access_exception() | 
    authorization_error_exception() | 
    invalid_parameter_exception() | 
    tag_limit_exceeded_exception() | 
    invalid_security_exception() | 
    topic_limit_exceeded_exception() | 
    tag_policy_exception().

-type delete_endpoint_errors() ::
    internal_error_exception() | 
    authorization_error_exception() | 
    invalid_parameter_exception().

-type delete_platform_application_errors() ::
    internal_error_exception() | 
    authorization_error_exception() | 
    invalid_parameter_exception().

-type delete_sms_sandbox_phone_number_errors() ::
    internal_error_exception() | 
    authorization_error_exception() | 
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    throttled_exception() | 
    user_error_exception().

-type delete_topic_errors() ::
    internal_error_exception() | 
    stale_tag_exception() | 
    concurrent_access_exception() | 
    authorization_error_exception() | 
    invalid_parameter_exception() | 
    not_found_exception() | 
    invalid_state_exception() | 
    tag_policy_exception().

-type get_data_protection_policy_errors() ::
    internal_error_exception() | 
    authorization_error_exception() | 
    invalid_parameter_exception() | 
    not_found_exception() | 
    invalid_security_exception().

-type get_endpoint_attributes_errors() ::
    internal_error_exception() | 
    authorization_error_exception() | 
    invalid_parameter_exception() | 
    not_found_exception().

-type get_platform_application_attributes_errors() ::
    internal_error_exception() | 
    authorization_error_exception() | 
    invalid_parameter_exception() | 
    not_found_exception().

-type get_sms_attributes_errors() ::
    internal_error_exception() | 
    authorization_error_exception() | 
    invalid_parameter_exception() | 
    throttled_exception().

-type get_sms_sandbox_account_status_errors() ::
    internal_error_exception() | 
    authorization_error_exception() | 
    throttled_exception().

-type get_subscription_attributes_errors() ::
    internal_error_exception() | 
    authorization_error_exception() | 
    invalid_parameter_exception() | 
    not_found_exception().

-type get_topic_attributes_errors() ::
    internal_error_exception() | 
    authorization_error_exception() | 
    invalid_parameter_exception() | 
    not_found_exception() | 
    invalid_security_exception().

-type list_endpoints_by_platform_application_errors() ::
    internal_error_exception() | 
    authorization_error_exception() | 
    invalid_parameter_exception() | 
    not_found_exception().

-type list_origination_numbers_errors() ::
    internal_error_exception() | 
    authorization_error_exception() | 
    validation_exception() | 
    invalid_parameter_exception() | 
    throttled_exception().

-type list_phone_numbers_opted_out_errors() ::
    internal_error_exception() | 
    authorization_error_exception() | 
    invalid_parameter_exception() | 
    throttled_exception().

-type list_platform_applications_errors() ::
    internal_error_exception() | 
    authorization_error_exception() | 
    invalid_parameter_exception().

-type list_sms_sandbox_phone_numbers_errors() ::
    internal_error_exception() | 
    authorization_error_exception() | 
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    throttled_exception().

-type list_subscriptions_errors() ::
    internal_error_exception() | 
    authorization_error_exception() | 
    invalid_parameter_exception().

-type list_subscriptions_by_topic_errors() ::
    internal_error_exception() | 
    authorization_error_exception() | 
    invalid_parameter_exception() | 
    not_found_exception().

-type list_tags_for_resource_errors() ::
    concurrent_access_exception() | 
    authorization_error_exception() | 
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    tag_policy_exception().

-type list_topics_errors() ::
    internal_error_exception() | 
    authorization_error_exception() | 
    invalid_parameter_exception().

-type opt_in_phone_number_errors() ::
    internal_error_exception() | 
    authorization_error_exception() | 
    invalid_parameter_exception() | 
    throttled_exception().

-type publish_errors() ::
    internal_error_exception() | 
    kms_invalid_state_exception() | 
    authorization_error_exception() | 
    validation_exception() | 
    invalid_parameter_exception() | 
    kms_not_found_exception() | 
    kms_access_denied_exception() | 
    endpoint_disabled_exception() | 
    not_found_exception() | 
    invalid_parameter_value_exception() | 
    invalid_security_exception() | 
    kms_throttling_exception() | 
    kms_opt_in_required() | 
    platform_application_disabled_exception() | 
    kms_disabled_exception().

-type publish_batch_errors() ::
    batch_request_too_long_exception() | 
    internal_error_exception() | 
    too_many_entries_in_batch_request_exception() | 
    kms_invalid_state_exception() | 
    authorization_error_exception() | 
    validation_exception() | 
    batch_entry_ids_not_distinct_exception() | 
    invalid_parameter_exception() | 
    kms_not_found_exception() | 
    kms_access_denied_exception() | 
    empty_batch_request_exception() | 
    endpoint_disabled_exception() | 
    not_found_exception() | 
    invalid_parameter_value_exception() | 
    invalid_security_exception() | 
    invalid_batch_entry_id_exception() | 
    kms_throttling_exception() | 
    kms_opt_in_required() | 
    platform_application_disabled_exception() | 
    kms_disabled_exception().

-type put_data_protection_policy_errors() ::
    internal_error_exception() | 
    authorization_error_exception() | 
    invalid_parameter_exception() | 
    not_found_exception() | 
    invalid_security_exception().

-type remove_permission_errors() ::
    internal_error_exception() | 
    authorization_error_exception() | 
    invalid_parameter_exception() | 
    not_found_exception().

-type set_endpoint_attributes_errors() ::
    internal_error_exception() | 
    authorization_error_exception() | 
    invalid_parameter_exception() | 
    not_found_exception().

-type set_platform_application_attributes_errors() ::
    internal_error_exception() | 
    authorization_error_exception() | 
    invalid_parameter_exception() | 
    not_found_exception().

-type set_sms_attributes_errors() ::
    internal_error_exception() | 
    authorization_error_exception() | 
    invalid_parameter_exception() | 
    throttled_exception().

-type set_subscription_attributes_errors() ::
    internal_error_exception() | 
    filter_policy_limit_exceeded_exception() | 
    authorization_error_exception() | 
    invalid_parameter_exception() | 
    not_found_exception() | 
    replay_limit_exceeded_exception().

-type set_topic_attributes_errors() ::
    internal_error_exception() | 
    authorization_error_exception() | 
    invalid_parameter_exception() | 
    not_found_exception() | 
    invalid_security_exception().

-type subscribe_errors() ::
    internal_error_exception() | 
    subscription_limit_exceeded_exception() | 
    filter_policy_limit_exceeded_exception() | 
    authorization_error_exception() | 
    invalid_parameter_exception() | 
    not_found_exception() | 
    invalid_security_exception() | 
    replay_limit_exceeded_exception().

-type tag_resource_errors() ::
    stale_tag_exception() | 
    concurrent_access_exception() | 
    authorization_error_exception() | 
    invalid_parameter_exception() | 
    tag_limit_exceeded_exception() | 
    resource_not_found_exception() | 
    tag_policy_exception().

-type unsubscribe_errors() ::
    internal_error_exception() | 
    authorization_error_exception() | 
    invalid_parameter_exception() | 
    not_found_exception() | 
    invalid_security_exception().

-type untag_resource_errors() ::
    stale_tag_exception() | 
    concurrent_access_exception() | 
    authorization_error_exception() | 
    invalid_parameter_exception() | 
    tag_limit_exceeded_exception() | 
    resource_not_found_exception() | 
    tag_policy_exception().

-type verify_sms_sandbox_phone_number_errors() ::
    internal_error_exception() | 
    authorization_error_exception() | 
    invalid_parameter_exception() | 
    verification_exception() | 
    resource_not_found_exception() | 
    throttled_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Adds a statement to a topic's access control policy, granting
%% access for the specified
%% Amazon Web Services accounts to the specified actions.
%%
%% To remove the ability to change topic permissions, you must deny
%% permissions to
%% the `AddPermission', `RemovePermission', and
%% `SetTopicAttributes' actions in your IAM policy.
-spec add_permission(aws_client:aws_client(), add_permission_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, add_permission_errors(), tuple()}.
add_permission(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_permission(Client, Input, []).

-spec add_permission(aws_client:aws_client(), add_permission_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, add_permission_errors(), tuple()}.
add_permission(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddPermission">>, Input, Options).

%% @doc Accepts a phone number and indicates whether the phone holder has
%% opted out of
%% receiving SMS messages from your Amazon Web Services account.
%%
%% You cannot send SMS messages to a number
%% that is opted out.
%%
%% To resume sending messages, you can opt in the number by using the
%% `OptInPhoneNumber' action.
-spec check_if_phone_number_is_opted_out(aws_client:aws_client(), check_if_phone_number_is_opted_out_input()) ->
    {ok, check_if_phone_number_is_opted_out_response(), tuple()} |
    {error, any()} |
    {error, check_if_phone_number_is_opted_out_errors(), tuple()}.
check_if_phone_number_is_opted_out(Client, Input)
  when is_map(Client), is_map(Input) ->
    check_if_phone_number_is_opted_out(Client, Input, []).

-spec check_if_phone_number_is_opted_out(aws_client:aws_client(), check_if_phone_number_is_opted_out_input(), proplists:proplist()) ->
    {ok, check_if_phone_number_is_opted_out_response(), tuple()} |
    {error, any()} |
    {error, check_if_phone_number_is_opted_out_errors(), tuple()}.
check_if_phone_number_is_opted_out(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CheckIfPhoneNumberIsOptedOut">>, Input, Options).

%% @doc Verifies an endpoint owner's intent to receive messages by
%% validating the token sent
%% to the endpoint by an earlier `Subscribe' action.
%%
%% If the token is valid, the
%% action creates a new subscription and returns its Amazon Resource Name
%% (ARN). This call
%% requires an AWS signature only when the `AuthenticateOnUnsubscribe'
%% flag is
%% set to &quot;true&quot;.
-spec confirm_subscription(aws_client:aws_client(), confirm_subscription_input()) ->
    {ok, confirm_subscription_response(), tuple()} |
    {error, any()} |
    {error, confirm_subscription_errors(), tuple()}.
confirm_subscription(Client, Input)
  when is_map(Client), is_map(Input) ->
    confirm_subscription(Client, Input, []).

-spec confirm_subscription(aws_client:aws_client(), confirm_subscription_input(), proplists:proplist()) ->
    {ok, confirm_subscription_response(), tuple()} |
    {error, any()} |
    {error, confirm_subscription_errors(), tuple()}.
confirm_subscription(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ConfirmSubscription">>, Input, Options).

%% @doc Creates a platform application object for one of the supported push
%% notification
%% services, such as APNS and GCM (Firebase Cloud Messaging), to which
%% devices and mobile
%% apps may register.
%%
%% You must specify `PlatformPrincipal' and
%% `PlatformCredential' attributes when using the
%% `CreatePlatformApplication' action.
%%
%% `PlatformPrincipal' and `PlatformCredential' are received from
%% the notification service.
%%
%% For ADM, `PlatformPrincipal' is `client id' and
%% `PlatformCredential' is `client secret'.
%%
%% For APNS and `APNS_SANDBOX' using certificate credentials,
%% `PlatformPrincipal' is `SSL certificate' and
%% `PlatformCredential' is `private key'.
%%
%% For APNS and `APNS_SANDBOX' using token credentials,
%% `PlatformPrincipal' is `signing key ID' and
%% `PlatformCredential' is `signing key'.
%%
%% For Baidu, `PlatformPrincipal' is `API key' and
%% `PlatformCredential' is `secret key'.
%%
%% For GCM (Firebase Cloud Messaging) using key credentials, there is no
%% `PlatformPrincipal'. The `PlatformCredential' is
%% `API key'.
%%
%% For GCM (Firebase Cloud Messaging) using token credentials, there is no
%% `PlatformPrincipal'. The `PlatformCredential' is a
%% JSON formatted private key file. When using the Amazon Web Services CLI,
%% the file must be in
%% string format and special characters must be ignored. To format the file
%% correctly, Amazon SNS recommends using the following command:
%% ```
%% SERVICE_JSON=`jq @json &lt;&lt;&lt; cat service.json`'''.
%%
%% For MPNS, `PlatformPrincipal' is `TLS certificate' and
%% `PlatformCredential' is `private key'.
%%
%% For WNS, `PlatformPrincipal' is
%% ```
%% Package Security Identifier''' and `PlatformCredential' is
%% ```
%% secret key'''.
%%
%% You can use the returned `PlatformApplicationArn' as an attribute for
%% the
%% `CreatePlatformEndpoint' action.
-spec create_platform_application(aws_client:aws_client(), create_platform_application_input()) ->
    {ok, create_platform_application_response(), tuple()} |
    {error, any()} |
    {error, create_platform_application_errors(), tuple()}.
create_platform_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_platform_application(Client, Input, []).

-spec create_platform_application(aws_client:aws_client(), create_platform_application_input(), proplists:proplist()) ->
    {ok, create_platform_application_response(), tuple()} |
    {error, any()} |
    {error, create_platform_application_errors(), tuple()}.
create_platform_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePlatformApplication">>, Input, Options).

%% @doc Creates an endpoint for a device and mobile app on one of the
%% supported push
%% notification services, such as GCM (Firebase Cloud Messaging) and APNS.
%%
%% `CreatePlatformEndpoint' requires the `PlatformApplicationArn'
%% that is returned from `CreatePlatformApplication'. You can use the
%% returned
%% `EndpointArn' to send a message to a mobile app or by the
%% `Subscribe' action for subscription to a topic. The
%% `CreatePlatformEndpoint' action is idempotent, so if the requester
%% already owns an endpoint with the same device token and attributes, that
%% endpoint's ARN
%% is returned without creating a new endpoint. For more information, see
%% Using Amazon SNS Mobile Push
%% Notifications:
%% https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html.
%%
%% When using `CreatePlatformEndpoint' with Baidu, two attributes must be
%% provided: ChannelId and UserId. The token field must also contain the
%% ChannelId. For
%% more information, see Creating an Amazon SNS Endpoint for
%% Baidu:
%% https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePushBaiduEndpoint.html.
-spec create_platform_endpoint(aws_client:aws_client(), create_platform_endpoint_input()) ->
    {ok, create_endpoint_response(), tuple()} |
    {error, any()} |
    {error, create_platform_endpoint_errors(), tuple()}.
create_platform_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_platform_endpoint(Client, Input, []).

-spec create_platform_endpoint(aws_client:aws_client(), create_platform_endpoint_input(), proplists:proplist()) ->
    {ok, create_endpoint_response(), tuple()} |
    {error, any()} |
    {error, create_platform_endpoint_errors(), tuple()}.
create_platform_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePlatformEndpoint">>, Input, Options).

%% @doc Adds a destination phone number to an Amazon Web Services account in
%% the SMS sandbox and sends a
%% one-time password (OTP) to that phone number.
%%
%% When you start using Amazon SNS to send SMS messages, your Amazon Web
%% Services account is in the
%% SMS sandbox. The SMS sandbox provides a safe environment for
%% you to try Amazon SNS features without risking your reputation as an SMS
%% sender. While your
%% Amazon Web Services account is in the SMS sandbox, you can use all of the
%% features of Amazon SNS. However, you can send
%% SMS messages only to verified destination phone numbers. For more
%% information, including how to
%% move out of the sandbox to send messages without restrictions,
%% see SMS sandbox:
%% https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html in
%% the Amazon SNS Developer Guide.
-spec create_sms_sandbox_phone_number(aws_client:aws_client(), create_sms_sandbox_phone_number_input()) ->
    {ok, create_sms_sandbox_phone_number_result(), tuple()} |
    {error, any()} |
    {error, create_sms_sandbox_phone_number_errors(), tuple()}.
create_sms_sandbox_phone_number(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_sms_sandbox_phone_number(Client, Input, []).

-spec create_sms_sandbox_phone_number(aws_client:aws_client(), create_sms_sandbox_phone_number_input(), proplists:proplist()) ->
    {ok, create_sms_sandbox_phone_number_result(), tuple()} |
    {error, any()} |
    {error, create_sms_sandbox_phone_number_errors(), tuple()}.
create_sms_sandbox_phone_number(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSMSSandboxPhoneNumber">>, Input, Options).

%% @doc Creates a topic to which notifications can be published.
%%
%% Users can create at most
%% 100,000 standard topics (at most 1,000 FIFO topics). For more information,
%% see Creating an Amazon SNS
%% topic: https://docs.aws.amazon.com/sns/latest/dg/sns-create-topic.html in
%% the Amazon SNS Developer Guide. This action is
%% idempotent, so if the requester already owns a topic with the specified
%% name, that
%% topic's ARN is returned without creating a new topic.
-spec create_topic(aws_client:aws_client(), create_topic_input()) ->
    {ok, create_topic_response(), tuple()} |
    {error, any()} |
    {error, create_topic_errors(), tuple()}.
create_topic(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_topic(Client, Input, []).

-spec create_topic(aws_client:aws_client(), create_topic_input(), proplists:proplist()) ->
    {ok, create_topic_response(), tuple()} |
    {error, any()} |
    {error, create_topic_errors(), tuple()}.
create_topic(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTopic">>, Input, Options).

%% @doc Deletes the endpoint for a device and mobile app from Amazon SNS.
%%
%% This action is
%% idempotent. For more information, see Using Amazon SNS Mobile Push
%% Notifications:
%% https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html.
%%
%% When you delete an endpoint that is also subscribed to a topic, then you
%% must also
%% unsubscribe the endpoint from the topic.
-spec delete_endpoint(aws_client:aws_client(), delete_endpoint_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_endpoint_errors(), tuple()}.
delete_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_endpoint(Client, Input, []).

-spec delete_endpoint(aws_client:aws_client(), delete_endpoint_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_endpoint_errors(), tuple()}.
delete_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEndpoint">>, Input, Options).

%% @doc Deletes a platform application object for one of the supported push
%% notification
%% services, such as APNS and GCM (Firebase Cloud Messaging).
%%
%% For more information, see
%% Using Amazon SNS
%% Mobile Push Notifications:
%% https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html.
-spec delete_platform_application(aws_client:aws_client(), delete_platform_application_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_platform_application_errors(), tuple()}.
delete_platform_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_platform_application(Client, Input, []).

-spec delete_platform_application(aws_client:aws_client(), delete_platform_application_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_platform_application_errors(), tuple()}.
delete_platform_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePlatformApplication">>, Input, Options).

%% @doc Deletes an Amazon Web Services account's verified or pending
%% phone number from the SMS
%% sandbox.
%%
%% When you start using Amazon SNS to send SMS messages, your Amazon Web
%% Services account is in the
%% SMS sandbox. The SMS sandbox provides a safe environment for
%% you to try Amazon SNS features without risking your reputation as an SMS
%% sender. While your
%% Amazon Web Services account is in the SMS sandbox, you can use all of the
%% features of Amazon SNS. However, you can send
%% SMS messages only to verified destination phone numbers. For more
%% information, including how to
%% move out of the sandbox to send messages without restrictions,
%% see SMS sandbox:
%% https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html in
%% the Amazon SNS Developer Guide.
-spec delete_sms_sandbox_phone_number(aws_client:aws_client(), delete_sms_sandbox_phone_number_input()) ->
    {ok, delete_sms_sandbox_phone_number_result(), tuple()} |
    {error, any()} |
    {error, delete_sms_sandbox_phone_number_errors(), tuple()}.
delete_sms_sandbox_phone_number(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_sms_sandbox_phone_number(Client, Input, []).

-spec delete_sms_sandbox_phone_number(aws_client:aws_client(), delete_sms_sandbox_phone_number_input(), proplists:proplist()) ->
    {ok, delete_sms_sandbox_phone_number_result(), tuple()} |
    {error, any()} |
    {error, delete_sms_sandbox_phone_number_errors(), tuple()}.
delete_sms_sandbox_phone_number(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSMSSandboxPhoneNumber">>, Input, Options).

%% @doc Deletes a topic and all its subscriptions.
%%
%% Deleting a topic might prevent some
%% messages previously sent to the topic from being delivered to subscribers.
%% This action
%% is idempotent, so deleting a topic that does not exist does not result in
%% an
%% error.
-spec delete_topic(aws_client:aws_client(), delete_topic_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_topic_errors(), tuple()}.
delete_topic(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_topic(Client, Input, []).

-spec delete_topic(aws_client:aws_client(), delete_topic_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_topic_errors(), tuple()}.
delete_topic(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTopic">>, Input, Options).

%% @doc Retrieves the specified inline `DataProtectionPolicy' document
%% that is
%% stored in the specified Amazon SNS topic.
-spec get_data_protection_policy(aws_client:aws_client(), get_data_protection_policy_input()) ->
    {ok, get_data_protection_policy_response(), tuple()} |
    {error, any()} |
    {error, get_data_protection_policy_errors(), tuple()}.
get_data_protection_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_data_protection_policy(Client, Input, []).

-spec get_data_protection_policy(aws_client:aws_client(), get_data_protection_policy_input(), proplists:proplist()) ->
    {ok, get_data_protection_policy_response(), tuple()} |
    {error, any()} |
    {error, get_data_protection_policy_errors(), tuple()}.
get_data_protection_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDataProtectionPolicy">>, Input, Options).

%% @doc Retrieves the endpoint attributes for a device on one of the
%% supported push
%% notification services, such as GCM (Firebase Cloud Messaging) and APNS.
%%
%% For more
%% information, see Using Amazon SNS Mobile Push Notifications:
%% https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html.
-spec get_endpoint_attributes(aws_client:aws_client(), get_endpoint_attributes_input()) ->
    {ok, get_endpoint_attributes_response(), tuple()} |
    {error, any()} |
    {error, get_endpoint_attributes_errors(), tuple()}.
get_endpoint_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_endpoint_attributes(Client, Input, []).

-spec get_endpoint_attributes(aws_client:aws_client(), get_endpoint_attributes_input(), proplists:proplist()) ->
    {ok, get_endpoint_attributes_response(), tuple()} |
    {error, any()} |
    {error, get_endpoint_attributes_errors(), tuple()}.
get_endpoint_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetEndpointAttributes">>, Input, Options).

%% @doc Retrieves the attributes of the platform application object for the
%% supported push
%% notification services, such as APNS and GCM (Firebase Cloud Messaging).
%%
%% For more
%% information, see Using Amazon SNS Mobile Push Notifications:
%% https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html.
-spec get_platform_application_attributes(aws_client:aws_client(), get_platform_application_attributes_input()) ->
    {ok, get_platform_application_attributes_response(), tuple()} |
    {error, any()} |
    {error, get_platform_application_attributes_errors(), tuple()}.
get_platform_application_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_platform_application_attributes(Client, Input, []).

-spec get_platform_application_attributes(aws_client:aws_client(), get_platform_application_attributes_input(), proplists:proplist()) ->
    {ok, get_platform_application_attributes_response(), tuple()} |
    {error, any()} |
    {error, get_platform_application_attributes_errors(), tuple()}.
get_platform_application_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPlatformApplicationAttributes">>, Input, Options).

%% @doc Returns the settings for sending SMS messages from your Amazon Web
%% Services account.
%%
%% These settings are set with the `SetSMSAttributes' action.
-spec get_sms_attributes(aws_client:aws_client(), get_sms_attributes_input()) ->
    {ok, get_sms_attributes_response(), tuple()} |
    {error, any()} |
    {error, get_sms_attributes_errors(), tuple()}.
get_sms_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_sms_attributes(Client, Input, []).

-spec get_sms_attributes(aws_client:aws_client(), get_sms_attributes_input(), proplists:proplist()) ->
    {ok, get_sms_attributes_response(), tuple()} |
    {error, any()} |
    {error, get_sms_attributes_errors(), tuple()}.
get_sms_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSMSAttributes">>, Input, Options).

%% @doc Retrieves the SMS sandbox status for the calling Amazon Web Services
%% account in the target
%% Amazon Web Services Region.
%%
%% When you start using Amazon SNS to send SMS messages, your Amazon Web
%% Services account is in the
%% SMS sandbox. The SMS sandbox provides a safe environment for
%% you to try Amazon SNS features without risking your reputation as an SMS
%% sender. While your
%% Amazon Web Services account is in the SMS sandbox, you can use all of the
%% features of Amazon SNS. However, you can send
%% SMS messages only to verified destination phone numbers. For more
%% information, including how to
%% move out of the sandbox to send messages without restrictions,
%% see SMS sandbox:
%% https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html in
%% the Amazon SNS Developer Guide.
-spec get_sms_sandbox_account_status(aws_client:aws_client(), get_sms_sandbox_account_status_input()) ->
    {ok, get_sms_sandbox_account_status_result(), tuple()} |
    {error, any()} |
    {error, get_sms_sandbox_account_status_errors(), tuple()}.
get_sms_sandbox_account_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_sms_sandbox_account_status(Client, Input, []).

-spec get_sms_sandbox_account_status(aws_client:aws_client(), get_sms_sandbox_account_status_input(), proplists:proplist()) ->
    {ok, get_sms_sandbox_account_status_result(), tuple()} |
    {error, any()} |
    {error, get_sms_sandbox_account_status_errors(), tuple()}.
get_sms_sandbox_account_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSMSSandboxAccountStatus">>, Input, Options).

%% @doc Returns all of the properties of a subscription.
-spec get_subscription_attributes(aws_client:aws_client(), get_subscription_attributes_input()) ->
    {ok, get_subscription_attributes_response(), tuple()} |
    {error, any()} |
    {error, get_subscription_attributes_errors(), tuple()}.
get_subscription_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_subscription_attributes(Client, Input, []).

-spec get_subscription_attributes(aws_client:aws_client(), get_subscription_attributes_input(), proplists:proplist()) ->
    {ok, get_subscription_attributes_response(), tuple()} |
    {error, any()} |
    {error, get_subscription_attributes_errors(), tuple()}.
get_subscription_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSubscriptionAttributes">>, Input, Options).

%% @doc Returns all of the properties of a topic.
%%
%% Topic properties returned might differ based
%% on the authorization of the user.
-spec get_topic_attributes(aws_client:aws_client(), get_topic_attributes_input()) ->
    {ok, get_topic_attributes_response(), tuple()} |
    {error, any()} |
    {error, get_topic_attributes_errors(), tuple()}.
get_topic_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_topic_attributes(Client, Input, []).

-spec get_topic_attributes(aws_client:aws_client(), get_topic_attributes_input(), proplists:proplist()) ->
    {ok, get_topic_attributes_response(), tuple()} |
    {error, any()} |
    {error, get_topic_attributes_errors(), tuple()}.
get_topic_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTopicAttributes">>, Input, Options).

%% @doc Lists the endpoints and endpoint attributes for devices in a
%% supported push
%% notification service, such as GCM (Firebase Cloud Messaging) and APNS.
%%
%% The results for
%% `ListEndpointsByPlatformApplication' are paginated and return a
%% limited
%% list of endpoints, up to 100. If additional records are available after
%% the first page
%% results, then a NextToken string will be returned. To receive the next
%% page, you call
%% `ListEndpointsByPlatformApplication' again using the NextToken string
%% received from the previous call. When there are no more records to return,
%% NextToken
%% will be null. For more information, see Using Amazon SNS Mobile Push
%% Notifications:
%% https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html.
%%
%% This action is throttled at 30 transactions per second (TPS).
-spec list_endpoints_by_platform_application(aws_client:aws_client(), list_endpoints_by_platform_application_input()) ->
    {ok, list_endpoints_by_platform_application_response(), tuple()} |
    {error, any()} |
    {error, list_endpoints_by_platform_application_errors(), tuple()}.
list_endpoints_by_platform_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_endpoints_by_platform_application(Client, Input, []).

-spec list_endpoints_by_platform_application(aws_client:aws_client(), list_endpoints_by_platform_application_input(), proplists:proplist()) ->
    {ok, list_endpoints_by_platform_application_response(), tuple()} |
    {error, any()} |
    {error, list_endpoints_by_platform_application_errors(), tuple()}.
list_endpoints_by_platform_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEndpointsByPlatformApplication">>, Input, Options).

%% @doc Lists the calling Amazon Web Services account's dedicated
%% origination numbers and their metadata.
%%
%% For more information about origination numbers, see Origination numbers:
%% https://docs.aws.amazon.com/sns/latest/dg/channels-sms-originating-identities-origination-numbers.html
%% in the Amazon SNS Developer
%% Guide.
-spec list_origination_numbers(aws_client:aws_client(), list_origination_numbers_request()) ->
    {ok, list_origination_numbers_result(), tuple()} |
    {error, any()} |
    {error, list_origination_numbers_errors(), tuple()}.
list_origination_numbers(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_origination_numbers(Client, Input, []).

-spec list_origination_numbers(aws_client:aws_client(), list_origination_numbers_request(), proplists:proplist()) ->
    {ok, list_origination_numbers_result(), tuple()} |
    {error, any()} |
    {error, list_origination_numbers_errors(), tuple()}.
list_origination_numbers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListOriginationNumbers">>, Input, Options).

%% @doc Returns a list of phone numbers that are opted out, meaning you
%% cannot send SMS
%% messages to them.
%%
%% The results for `ListPhoneNumbersOptedOut' are paginated, and each
%% page
%% returns up to 100 phone numbers. If additional phone numbers are available
%% after the
%% first page of results, then a `NextToken' string will be returned. To
%% receive
%% the next page, you call `ListPhoneNumbersOptedOut' again using the
%% `NextToken' string received from the previous call. When there are no
%% more records to return, `NextToken' will be null.
-spec list_phone_numbers_opted_out(aws_client:aws_client(), list_phone_numbers_opted_out_input()) ->
    {ok, list_phone_numbers_opted_out_response(), tuple()} |
    {error, any()} |
    {error, list_phone_numbers_opted_out_errors(), tuple()}.
list_phone_numbers_opted_out(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_phone_numbers_opted_out(Client, Input, []).

-spec list_phone_numbers_opted_out(aws_client:aws_client(), list_phone_numbers_opted_out_input(), proplists:proplist()) ->
    {ok, list_phone_numbers_opted_out_response(), tuple()} |
    {error, any()} |
    {error, list_phone_numbers_opted_out_errors(), tuple()}.
list_phone_numbers_opted_out(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPhoneNumbersOptedOut">>, Input, Options).

%% @doc Lists the platform application objects for the supported push
%% notification services,
%% such as APNS and GCM (Firebase Cloud Messaging).
%%
%% The results for
%% `ListPlatformApplications' are paginated and return a limited list of
%% applications, up to 100. If additional records are available after the
%% first page
%% results, then a NextToken string will be returned. To receive the next
%% page, you call
%% `ListPlatformApplications' using the NextToken string received from
%% the
%% previous call. When there are no more records to return, `NextToken'
%% will be
%% null. For more information, see Using Amazon SNS Mobile Push
%% Notifications:
%% https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html.
%%
%% This action is throttled at 15 transactions per second (TPS).
-spec list_platform_applications(aws_client:aws_client(), list_platform_applications_input()) ->
    {ok, list_platform_applications_response(), tuple()} |
    {error, any()} |
    {error, list_platform_applications_errors(), tuple()}.
list_platform_applications(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_platform_applications(Client, Input, []).

-spec list_platform_applications(aws_client:aws_client(), list_platform_applications_input(), proplists:proplist()) ->
    {ok, list_platform_applications_response(), tuple()} |
    {error, any()} |
    {error, list_platform_applications_errors(), tuple()}.
list_platform_applications(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPlatformApplications">>, Input, Options).

%% @doc Lists the calling Amazon Web Services account's current verified
%% and pending destination phone
%% numbers in the SMS sandbox.
%%
%% When you start using Amazon SNS to send SMS messages, your Amazon Web
%% Services account is in the
%% SMS sandbox. The SMS sandbox provides a safe environment for
%% you to try Amazon SNS features without risking your reputation as an SMS
%% sender. While your
%% Amazon Web Services account is in the SMS sandbox, you can use all of the
%% features of Amazon SNS. However, you can send
%% SMS messages only to verified destination phone numbers. For more
%% information, including how to
%% move out of the sandbox to send messages without restrictions,
%% see SMS sandbox:
%% https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html in
%% the Amazon SNS Developer Guide.
-spec list_sms_sandbox_phone_numbers(aws_client:aws_client(), list_sms_sandbox_phone_numbers_input()) ->
    {ok, list_sms_sandbox_phone_numbers_result(), tuple()} |
    {error, any()} |
    {error, list_sms_sandbox_phone_numbers_errors(), tuple()}.
list_sms_sandbox_phone_numbers(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_sms_sandbox_phone_numbers(Client, Input, []).

-spec list_sms_sandbox_phone_numbers(aws_client:aws_client(), list_sms_sandbox_phone_numbers_input(), proplists:proplist()) ->
    {ok, list_sms_sandbox_phone_numbers_result(), tuple()} |
    {error, any()} |
    {error, list_sms_sandbox_phone_numbers_errors(), tuple()}.
list_sms_sandbox_phone_numbers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSMSSandboxPhoneNumbers">>, Input, Options).

%% @doc Returns a list of the requester's subscriptions.
%%
%% Each call returns a limited list of
%% subscriptions, up to 100. If there are more subscriptions, a
%% `NextToken' is
%% also returned. Use the `NextToken' parameter in a new
%% `ListSubscriptions' call to get further results.
%%
%% This action is throttled at 30 transactions per second (TPS).
-spec list_subscriptions(aws_client:aws_client(), list_subscriptions_input()) ->
    {ok, list_subscriptions_response(), tuple()} |
    {error, any()} |
    {error, list_subscriptions_errors(), tuple()}.
list_subscriptions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_subscriptions(Client, Input, []).

-spec list_subscriptions(aws_client:aws_client(), list_subscriptions_input(), proplists:proplist()) ->
    {ok, list_subscriptions_response(), tuple()} |
    {error, any()} |
    {error, list_subscriptions_errors(), tuple()}.
list_subscriptions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSubscriptions">>, Input, Options).

%% @doc Returns a list of the subscriptions to a specific topic.
%%
%% Each call returns a limited
%% list of subscriptions, up to 100. If there are more subscriptions, a
%% `NextToken' is also returned. Use the `NextToken' parameter in
%% a new `ListSubscriptionsByTopic' call to get further results.
%%
%% This action is throttled at 30 transactions per second (TPS).
-spec list_subscriptions_by_topic(aws_client:aws_client(), list_subscriptions_by_topic_input()) ->
    {ok, list_subscriptions_by_topic_response(), tuple()} |
    {error, any()} |
    {error, list_subscriptions_by_topic_errors(), tuple()}.
list_subscriptions_by_topic(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_subscriptions_by_topic(Client, Input, []).

-spec list_subscriptions_by_topic(aws_client:aws_client(), list_subscriptions_by_topic_input(), proplists:proplist()) ->
    {ok, list_subscriptions_by_topic_response(), tuple()} |
    {error, any()} |
    {error, list_subscriptions_by_topic_errors(), tuple()}.
list_subscriptions_by_topic(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSubscriptionsByTopic">>, Input, Options).

%% @doc List all tags added to the specified Amazon SNS topic.
%%
%% For an overview, see Amazon SNS Tags:
%% https://docs.aws.amazon.com/sns/latest/dg/sns-tags.html in the
%% Amazon Simple Notification Service Developer Guide.
-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).

-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Returns a list of the requester's topics.
%%
%% Each call returns a limited list of topics,
%% up to 100. If there are more topics, a `NextToken' is also returned.
%% Use the
%% `NextToken' parameter in a new `ListTopics' call to get
%% further results.
%%
%% This action is throttled at 30 transactions per second (TPS).
-spec list_topics(aws_client:aws_client(), list_topics_input()) ->
    {ok, list_topics_response(), tuple()} |
    {error, any()} |
    {error, list_topics_errors(), tuple()}.
list_topics(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_topics(Client, Input, []).

-spec list_topics(aws_client:aws_client(), list_topics_input(), proplists:proplist()) ->
    {ok, list_topics_response(), tuple()} |
    {error, any()} |
    {error, list_topics_errors(), tuple()}.
list_topics(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTopics">>, Input, Options).

%% @doc Use this request to opt in a phone number that is opted out, which
%% enables you to
%% resume sending SMS messages to the number.
%%
%% You can opt in a phone number only once every 30 days.
-spec opt_in_phone_number(aws_client:aws_client(), opt_in_phone_number_input()) ->
    {ok, opt_in_phone_number_response(), tuple()} |
    {error, any()} |
    {error, opt_in_phone_number_errors(), tuple()}.
opt_in_phone_number(Client, Input)
  when is_map(Client), is_map(Input) ->
    opt_in_phone_number(Client, Input, []).

-spec opt_in_phone_number(aws_client:aws_client(), opt_in_phone_number_input(), proplists:proplist()) ->
    {ok, opt_in_phone_number_response(), tuple()} |
    {error, any()} |
    {error, opt_in_phone_number_errors(), tuple()}.
opt_in_phone_number(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"OptInPhoneNumber">>, Input, Options).

%% @doc Sends a message to an Amazon SNS topic, a text message (SMS message)
%% directly to a phone
%% number, or a message to a mobile platform endpoint (when you specify the
%% `TargetArn').
%%
%% If you send a message to a topic, Amazon SNS delivers the message to each
%% endpoint that is
%% subscribed to the topic. The format of the message depends on the
%% notification protocol
%% for each subscribed endpoint.
%%
%% When a `messageId' is returned, the message is saved and Amazon SNS
%% immediately
%% delivers it to subscribers.
%%
%% To use the `Publish' action for publishing a message to a mobile
%% endpoint,
%% such as an app on a Kindle device or mobile phone, you must specify the
%% EndpointArn for
%% the TargetArn parameter. The EndpointArn is returned when making a call
%% with the
%% `CreatePlatformEndpoint' action.
%%
%% For more information about formatting messages, see Send Custom
%% Platform-Specific Payloads in Messages to Mobile Devices:
%% https://docs.aws.amazon.com/sns/latest/dg/mobile-push-send-custommessage.html.
%%
%% You can publish messages only to topics and endpoints in the same
%% Amazon Web Services Region.
-spec publish(aws_client:aws_client(), publish_input()) ->
    {ok, publish_response(), tuple()} |
    {error, any()} |
    {error, publish_errors(), tuple()}.
publish(Client, Input)
  when is_map(Client), is_map(Input) ->
    publish(Client, Input, []).

-spec publish(aws_client:aws_client(), publish_input(), proplists:proplist()) ->
    {ok, publish_response(), tuple()} |
    {error, any()} |
    {error, publish_errors(), tuple()}.
publish(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"Publish">>, Input, Options).

%% @doc Publishes up to ten messages to the specified topic.
%%
%% This is a batch version of
%% `Publish'. For FIFO topics, multiple messages within a single batch
%% are
%% published in the order they are sent, and messages are deduplicated within
%% the batch and
%% across batches for 5 minutes.
%%
%% The result of publishing each message is reported individually in the
%% response.
%% Because the batch request can result in a combination of successful and
%% unsuccessful
%% actions, you should check for batch errors even when the call returns an
%% HTTP status
%% code of `200'.
%%
%% The maximum allowed individual message size and the maximum total payload
%% size (the
%% sum of the individual lengths of all of the batched messages) are both 256
%% KB (262,144
%% bytes).
%%
%% Some actions take lists of parameters. These lists are specified using the
%% `param.n' notation. Values of `n' are integers starting from
%% 1. For example, a parameter list with two elements looks like this:
%%
%% &amp;AttributeName.1=first
%%
%% &amp;AttributeName.2=second
%%
%% If you send a batch message to a topic, Amazon SNS publishes the batch
%% message to each
%% endpoint that is subscribed to the topic. The format of the batch message
%% depends on the
%% notification protocol for each subscribed endpoint.
%%
%% When a `messageId' is returned, the batch message is saved and Amazon
%% SNS
%% immediately delivers the message to subscribers.
-spec publish_batch(aws_client:aws_client(), publish_batch_input()) ->
    {ok, publish_batch_response(), tuple()} |
    {error, any()} |
    {error, publish_batch_errors(), tuple()}.
publish_batch(Client, Input)
  when is_map(Client), is_map(Input) ->
    publish_batch(Client, Input, []).

-spec publish_batch(aws_client:aws_client(), publish_batch_input(), proplists:proplist()) ->
    {ok, publish_batch_response(), tuple()} |
    {error, any()} |
    {error, publish_batch_errors(), tuple()}.
publish_batch(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PublishBatch">>, Input, Options).

%% @doc Adds or updates an inline policy document that is stored in the
%% specified Amazon SNS
%% topic.
-spec put_data_protection_policy(aws_client:aws_client(), put_data_protection_policy_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_data_protection_policy_errors(), tuple()}.
put_data_protection_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_data_protection_policy(Client, Input, []).

-spec put_data_protection_policy(aws_client:aws_client(), put_data_protection_policy_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_data_protection_policy_errors(), tuple()}.
put_data_protection_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutDataProtectionPolicy">>, Input, Options).

%% @doc Removes a statement from a topic's access control policy.
%%
%% To remove the ability to change topic permissions, you must deny
%% permissions to
%% the `AddPermission', `RemovePermission', and
%% `SetTopicAttributes' actions in your IAM policy.
-spec remove_permission(aws_client:aws_client(), remove_permission_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, remove_permission_errors(), tuple()}.
remove_permission(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_permission(Client, Input, []).

-spec remove_permission(aws_client:aws_client(), remove_permission_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, remove_permission_errors(), tuple()}.
remove_permission(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemovePermission">>, Input, Options).

%% @doc Sets the attributes for an endpoint for a device on one of the
%% supported push
%% notification services, such as GCM (Firebase Cloud Messaging) and APNS.
%%
%% For more
%% information, see Using Amazon SNS Mobile Push Notifications:
%% https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html.
-spec set_endpoint_attributes(aws_client:aws_client(), set_endpoint_attributes_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, set_endpoint_attributes_errors(), tuple()}.
set_endpoint_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_endpoint_attributes(Client, Input, []).

-spec set_endpoint_attributes(aws_client:aws_client(), set_endpoint_attributes_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, set_endpoint_attributes_errors(), tuple()}.
set_endpoint_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetEndpointAttributes">>, Input, Options).

%% @doc Sets the attributes of the platform application object for the
%% supported push
%% notification services, such as APNS and GCM (Firebase Cloud Messaging).
%%
%% For more
%% information, see Using Amazon SNS Mobile Push Notifications:
%% https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html. For
%% information on configuring
%% attributes for message delivery status, see Using Amazon SNS Application
%% Attributes for
%% Message Delivery Status:
%% https://docs.aws.amazon.com/sns/latest/dg/sns-msg-status.html.
-spec set_platform_application_attributes(aws_client:aws_client(), set_platform_application_attributes_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, set_platform_application_attributes_errors(), tuple()}.
set_platform_application_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_platform_application_attributes(Client, Input, []).

-spec set_platform_application_attributes(aws_client:aws_client(), set_platform_application_attributes_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, set_platform_application_attributes_errors(), tuple()}.
set_platform_application_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetPlatformApplicationAttributes">>, Input, Options).

%% @doc Use this request to set the default settings for sending SMS messages
%% and receiving
%% daily SMS usage reports.
%%
%% You can override some of these settings for a single message when you use
%% the
%% `Publish' action with the `MessageAttributes.entry.N'
%% parameter. For more information, see Publishing to a mobile phone:
%% https://docs.aws.amazon.com/sns/latest/dg/sms_publish-to-phone.html
%% in the Amazon SNS Developer Guide.
%%
%% To use this operation, you must grant the Amazon SNS service principal
%% (`sns.amazonaws.com') permission to perform the
%% `s3:ListBucket' action.
-spec set_sms_attributes(aws_client:aws_client(), set_sms_attributes_input()) ->
    {ok, set_sms_attributes_response(), tuple()} |
    {error, any()} |
    {error, set_sms_attributes_errors(), tuple()}.
set_sms_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_sms_attributes(Client, Input, []).

-spec set_sms_attributes(aws_client:aws_client(), set_sms_attributes_input(), proplists:proplist()) ->
    {ok, set_sms_attributes_response(), tuple()} |
    {error, any()} |
    {error, set_sms_attributes_errors(), tuple()}.
set_sms_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetSMSAttributes">>, Input, Options).

%% @doc Allows a subscription owner to set an attribute of the subscription
%% to a new
%% value.
-spec set_subscription_attributes(aws_client:aws_client(), set_subscription_attributes_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, set_subscription_attributes_errors(), tuple()}.
set_subscription_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_subscription_attributes(Client, Input, []).

-spec set_subscription_attributes(aws_client:aws_client(), set_subscription_attributes_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, set_subscription_attributes_errors(), tuple()}.
set_subscription_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetSubscriptionAttributes">>, Input, Options).

%% @doc Allows a topic owner to set an attribute of the topic to a new value.
%%
%% To remove the ability to change topic permissions, you must deny
%% permissions to
%% the `AddPermission', `RemovePermission', and
%% `SetTopicAttributes' actions in your IAM policy.
-spec set_topic_attributes(aws_client:aws_client(), set_topic_attributes_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, set_topic_attributes_errors(), tuple()}.
set_topic_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_topic_attributes(Client, Input, []).

-spec set_topic_attributes(aws_client:aws_client(), set_topic_attributes_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, set_topic_attributes_errors(), tuple()}.
set_topic_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetTopicAttributes">>, Input, Options).

%% @doc Subscribes an endpoint to an Amazon SNS topic.
%%
%% If the endpoint type is HTTP/S or email, or
%% if the endpoint and the topic are not in the same Amazon Web Services
%% account, the endpoint owner must
%% run the `ConfirmSubscription' action to confirm the subscription.
%%
%% You call the `ConfirmSubscription' action with the token from the
%% subscription response. Confirmation tokens are valid for two days.
%%
%% This action is throttled at 100 transactions per second (TPS).
-spec subscribe(aws_client:aws_client(), subscribe_input()) ->
    {ok, subscribe_response(), tuple()} |
    {error, any()} |
    {error, subscribe_errors(), tuple()}.
subscribe(Client, Input)
  when is_map(Client), is_map(Input) ->
    subscribe(Client, Input, []).

-spec subscribe(aws_client:aws_client(), subscribe_input(), proplists:proplist()) ->
    {ok, subscribe_response(), tuple()} |
    {error, any()} |
    {error, subscribe_errors(), tuple()}.
subscribe(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"Subscribe">>, Input, Options).

%% @doc Add tags to the specified Amazon SNS topic.
%%
%% For an overview, see Amazon SNS Tags:
%% https://docs.aws.amazon.com/sns/latest/dg/sns-tags.html in the
%% Amazon SNS Developer Guide.
%%
%% When you use topic tags, keep the following guidelines in mind:
%%
%% Adding more than 50 tags to a topic isn't recommended.
%%
%% Tags don't have any semantic meaning. Amazon SNS interprets tags as
%% character
%% strings.
%%
%% Tags are case-sensitive.
%%
%% A new tag with a key identical to that of an existing tag overwrites the
%% existing tag.
%%
%% Tagging actions are limited to 10 TPS per Amazon Web Services account, per
%% Amazon Web Services Region. If
%% your application requires a higher throughput, file a technical support
%% request:
%% https://console.aws.amazon.com/support/home#/case/create?issueType=technical.
-spec tag_resource(aws_client:aws_client(), tag_resource_request()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Deletes a subscription.
%%
%% If the subscription requires authentication for deletion, only
%% the owner of the subscription or the topic's owner can unsubscribe,
%% and an Amazon Web Services
%% signature is required. If the `Unsubscribe' call does not require
%% authentication and the requester is not the subscription owner, a final
%% cancellation
%% message is delivered to the endpoint, so that the endpoint owner can
%% easily resubscribe
%% to the topic if the `Unsubscribe' request was unintended.
%%
%% Amazon SQS queue subscriptions require authentication for deletion. Only
%% the owner of
%% the subscription, or the owner of the topic can unsubscribe using the
%% required Amazon Web Services
%% signature.
%%
%% This action is throttled at 100 transactions per second (TPS).
-spec unsubscribe(aws_client:aws_client(), unsubscribe_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, unsubscribe_errors(), tuple()}.
unsubscribe(Client, Input)
  when is_map(Client), is_map(Input) ->
    unsubscribe(Client, Input, []).

-spec unsubscribe(aws_client:aws_client(), unsubscribe_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, unsubscribe_errors(), tuple()}.
unsubscribe(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"Unsubscribe">>, Input, Options).

%% @doc Remove tags from the specified Amazon SNS topic.
%%
%% For an overview, see Amazon SNS Tags:
%% https://docs.aws.amazon.com/sns/latest/dg/sns-tags.html in the
%% Amazon SNS Developer Guide.
-spec untag_resource(aws_client:aws_client(), untag_resource_request()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).

-spec untag_resource(aws_client:aws_client(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Verifies a destination phone number with a one-time password (OTP)
%% for the calling
%% Amazon Web Services account.
%%
%% When you start using Amazon SNS to send SMS messages, your Amazon Web
%% Services account is in the
%% SMS sandbox. The SMS sandbox provides a safe environment for
%% you to try Amazon SNS features without risking your reputation as an SMS
%% sender. While your
%% Amazon Web Services account is in the SMS sandbox, you can use all of the
%% features of Amazon SNS. However, you can send
%% SMS messages only to verified destination phone numbers. For more
%% information, including how to
%% move out of the sandbox to send messages without restrictions,
%% see SMS sandbox:
%% https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html in
%% the Amazon SNS Developer Guide.
-spec verify_sms_sandbox_phone_number(aws_client:aws_client(), verify_sms_sandbox_phone_number_input()) ->
    {ok, verify_sms_sandbox_phone_number_result(), tuple()} |
    {error, any()} |
    {error, verify_sms_sandbox_phone_number_errors(), tuple()}.
verify_sms_sandbox_phone_number(Client, Input)
  when is_map(Client), is_map(Input) ->
    verify_sms_sandbox_phone_number(Client, Input, []).

-spec verify_sms_sandbox_phone_number(aws_client:aws_client(), verify_sms_sandbox_phone_number_input(), proplists:proplist()) ->
    {ok, verify_sms_sandbox_phone_number_result(), tuple()} |
    {error, any()} |
    {error, verify_sms_sandbox_phone_number_errors(), tuple()}.
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
