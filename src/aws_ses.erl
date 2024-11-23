%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Simple Email Service
%%
%% This document contains reference information for the Amazon Simple Email
%% Service: https://aws.amazon.com/ses/ (Amazon SES) API, version
%% 2010-12-01.
%%
%% This document is best used in conjunction with the Amazon SES Developer
%% Guide: https://docs.aws.amazon.com/ses/latest/DeveloperGuide/Welcome.html.
%%
%% For a list of Amazon SES endpoints to use in service requests, see Regions
%% and
%% Amazon SES:
%% https://docs.aws.amazon.com/ses/latest/DeveloperGuide/regions.html in the
%% Amazon SES Developer
%% Guide: https://docs.aws.amazon.com/ses/latest/DeveloperGuide/Welcome.html.
%%
%% This documentation contains reference information related to the
%% following:
%%
%% Amazon SES API Actions:
%% https://docs.aws.amazon.com/ses/latest/APIReference/API_Operations.html
%%
%% Amazon SES
%% API Data Types:
%% https://docs.aws.amazon.com/ses/latest/APIReference/API_Types.html
%%
%% Common
%% Parameters:
%% https://docs.aws.amazon.com/ses/latest/APIReference/CommonParameters.html
%%
%% Common Errors:
%% https://docs.aws.amazon.com/ses/latest/APIReference/CommonErrors.html
-module(aws_ses).

-export([clone_receipt_rule_set/2,
         clone_receipt_rule_set/3,
         create_configuration_set/2,
         create_configuration_set/3,
         create_configuration_set_event_destination/2,
         create_configuration_set_event_destination/3,
         create_configuration_set_tracking_options/2,
         create_configuration_set_tracking_options/3,
         create_custom_verification_email_template/2,
         create_custom_verification_email_template/3,
         create_receipt_filter/2,
         create_receipt_filter/3,
         create_receipt_rule/2,
         create_receipt_rule/3,
         create_receipt_rule_set/2,
         create_receipt_rule_set/3,
         create_template/2,
         create_template/3,
         delete_configuration_set/2,
         delete_configuration_set/3,
         delete_configuration_set_event_destination/2,
         delete_configuration_set_event_destination/3,
         delete_configuration_set_tracking_options/2,
         delete_configuration_set_tracking_options/3,
         delete_custom_verification_email_template/2,
         delete_custom_verification_email_template/3,
         delete_identity/2,
         delete_identity/3,
         delete_identity_policy/2,
         delete_identity_policy/3,
         delete_receipt_filter/2,
         delete_receipt_filter/3,
         delete_receipt_rule/2,
         delete_receipt_rule/3,
         delete_receipt_rule_set/2,
         delete_receipt_rule_set/3,
         delete_template/2,
         delete_template/3,
         delete_verified_email_address/2,
         delete_verified_email_address/3,
         describe_active_receipt_rule_set/2,
         describe_active_receipt_rule_set/3,
         describe_configuration_set/2,
         describe_configuration_set/3,
         describe_receipt_rule/2,
         describe_receipt_rule/3,
         describe_receipt_rule_set/2,
         describe_receipt_rule_set/3,
         get_account_sending_enabled/2,
         get_account_sending_enabled/3,
         get_custom_verification_email_template/2,
         get_custom_verification_email_template/3,
         get_identity_dkim_attributes/2,
         get_identity_dkim_attributes/3,
         get_identity_mail_from_domain_attributes/2,
         get_identity_mail_from_domain_attributes/3,
         get_identity_notification_attributes/2,
         get_identity_notification_attributes/3,
         get_identity_policies/2,
         get_identity_policies/3,
         get_identity_verification_attributes/2,
         get_identity_verification_attributes/3,
         get_send_quota/2,
         get_send_quota/3,
         get_send_statistics/2,
         get_send_statistics/3,
         get_template/2,
         get_template/3,
         list_configuration_sets/2,
         list_configuration_sets/3,
         list_custom_verification_email_templates/2,
         list_custom_verification_email_templates/3,
         list_identities/2,
         list_identities/3,
         list_identity_policies/2,
         list_identity_policies/3,
         list_receipt_filters/2,
         list_receipt_filters/3,
         list_receipt_rule_sets/2,
         list_receipt_rule_sets/3,
         list_templates/2,
         list_templates/3,
         list_verified_email_addresses/2,
         list_verified_email_addresses/3,
         put_configuration_set_delivery_options/2,
         put_configuration_set_delivery_options/3,
         put_identity_policy/2,
         put_identity_policy/3,
         reorder_receipt_rule_set/2,
         reorder_receipt_rule_set/3,
         send_bounce/2,
         send_bounce/3,
         send_bulk_templated_email/2,
         send_bulk_templated_email/3,
         send_custom_verification_email/2,
         send_custom_verification_email/3,
         send_email/2,
         send_email/3,
         send_raw_email/2,
         send_raw_email/3,
         send_templated_email/2,
         send_templated_email/3,
         set_active_receipt_rule_set/2,
         set_active_receipt_rule_set/3,
         set_identity_dkim_enabled/2,
         set_identity_dkim_enabled/3,
         set_identity_feedback_forwarding_enabled/2,
         set_identity_feedback_forwarding_enabled/3,
         set_identity_headers_in_notifications_enabled/2,
         set_identity_headers_in_notifications_enabled/3,
         set_identity_mail_from_domain/2,
         set_identity_mail_from_domain/3,
         set_identity_notification_topic/2,
         set_identity_notification_topic/3,
         set_receipt_rule_position/2,
         set_receipt_rule_position/3,
         test_render_template/2,
         test_render_template/3,
         update_account_sending_enabled/2,
         update_account_sending_enabled/3,
         update_configuration_set_event_destination/2,
         update_configuration_set_event_destination/3,
         update_configuration_set_reputation_metrics_enabled/2,
         update_configuration_set_reputation_metrics_enabled/3,
         update_configuration_set_sending_enabled/2,
         update_configuration_set_sending_enabled/3,
         update_configuration_set_tracking_options/2,
         update_configuration_set_tracking_options/3,
         update_custom_verification_email_template/2,
         update_custom_verification_email_template/3,
         update_receipt_rule/2,
         update_receipt_rule/3,
         update_template/2,
         update_template/3,
         verify_domain_dkim/2,
         verify_domain_dkim/3,
         verify_domain_identity/2,
         verify_domain_identity/3,
         verify_email_address/2,
         verify_email_address/3,
         verify_email_identity/2,
         verify_email_identity/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% list_receipt_rule_sets_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"RuleSets">> => list(receipt_rule_set_metadata()())
%% }
-type list_receipt_rule_sets_response() :: #{binary() => any()}.

%% Example:
%% list_receipt_rule_sets_request() :: #{
%%   <<"NextToken">> => string()
%% }
-type list_receipt_rule_sets_request() :: #{binary() => any()}.

%% Example:
%% describe_configuration_set_request() :: #{
%%   <<"ConfigurationSetAttributeNames">> => list(list(any())()),
%%   <<"ConfigurationSetName">> := string()
%% }
-type describe_configuration_set_request() :: #{binary() => any()}.

%% Example:
%% delete_identity_policy_response() :: #{

%% }
-type delete_identity_policy_response() :: #{binary() => any()}.

%% Example:
%% tracking_options() :: #{
%%   <<"CustomRedirectDomain">> => string()
%% }
-type tracking_options() :: #{binary() => any()}.

%% Example:
%% delete_verified_email_address_request() :: #{
%%   <<"EmailAddress">> := string()
%% }
-type delete_verified_email_address_request() :: #{binary() => any()}.

%% Example:
%% set_identity_feedback_forwarding_enabled_request() :: #{
%%   <<"ForwardingEnabled">> := boolean(),
%%   <<"Identity">> := string()
%% }
-type set_identity_feedback_forwarding_enabled_request() :: #{binary() => any()}.

%% Example:
%% delete_configuration_set_response() :: #{

%% }
-type delete_configuration_set_response() :: #{binary() => any()}.

%% Example:
%% identity_notification_attributes() :: #{
%%   <<"BounceTopic">> => string(),
%%   <<"ComplaintTopic">> => string(),
%%   <<"DeliveryTopic">> => string(),
%%   <<"ForwardingEnabled">> => boolean(),
%%   <<"HeadersInBounceNotificationsEnabled">> => boolean(),
%%   <<"HeadersInComplaintNotificationsEnabled">> => boolean(),
%%   <<"HeadersInDeliveryNotificationsEnabled">> => boolean()
%% }
-type identity_notification_attributes() :: #{binary() => any()}.

%% Example:
%% set_receipt_rule_position_response() :: #{

%% }
-type set_receipt_rule_position_response() :: #{binary() => any()}.

%% Example:
%% put_identity_policy_request() :: #{
%%   <<"Identity">> := string(),
%%   <<"Policy">> := string(),
%%   <<"PolicyName">> := string()
%% }
-type put_identity_policy_request() :: #{binary() => any()}.

%% Example:
%% verify_domain_identity_request() :: #{
%%   <<"Domain">> := string()
%% }
-type verify_domain_identity_request() :: #{binary() => any()}.

%% Example:
%% delete_identity_request() :: #{
%%   <<"Identity">> := string()
%% }
-type delete_identity_request() :: #{binary() => any()}.

%% Example:
%% create_configuration_set_tracking_options_response() :: #{

%% }
-type create_configuration_set_tracking_options_response() :: #{binary() => any()}.

%% Example:
%% connect_action() :: #{
%%   <<"IAMRoleARN">> => string(),
%%   <<"InstanceARN">> => string()
%% }
-type connect_action() :: #{binary() => any()}.

%% Example:
%% create_receipt_rule_set_response() :: #{

%% }
-type create_receipt_rule_set_response() :: #{binary() => any()}.

%% Example:
%% describe_receipt_rule_set_request() :: #{
%%   <<"RuleSetName">> := string()
%% }
-type describe_receipt_rule_set_request() :: #{binary() => any()}.

%% Example:
%% custom_verification_email_invalid_content_exception() :: #{
%%   <<"message">> => string()
%% }
-type custom_verification_email_invalid_content_exception() :: #{binary() => any()}.

%% Example:
%% list_templates_request() :: #{
%%   <<"MaxItems">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_templates_request() :: #{binary() => any()}.

%% Example:
%% rule_set_does_not_exist_exception() :: #{
%%   <<"Name">> => string(),
%%   <<"message">> => string()
%% }
-type rule_set_does_not_exist_exception() :: #{binary() => any()}.

%% Example:
%% list_identities_request() :: #{
%%   <<"IdentityType">> => list(any()),
%%   <<"MaxItems">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_identities_request() :: #{binary() => any()}.

%% Example:
%% identity_dkim_attributes() :: #{
%%   <<"DkimEnabled">> => boolean(),
%%   <<"DkimTokens">> => list(string()()),
%%   <<"DkimVerificationStatus">> => list(any())
%% }
-type identity_dkim_attributes() :: #{binary() => any()}.

%% Example:
%% describe_receipt_rule_request() :: #{
%%   <<"RuleName">> := string(),
%%   <<"RuleSetName">> := string()
%% }
-type describe_receipt_rule_request() :: #{binary() => any()}.

%% Example:
%% verify_domain_dkim_response() :: #{
%%   <<"DkimTokens">> => list(string()())
%% }
-type verify_domain_dkim_response() :: #{binary() => any()}.

%% Example:
%% custom_verification_email_template_does_not_exist_exception() :: #{
%%   <<"CustomVerificationEmailTemplateName">> => string(),
%%   <<"message">> => string()
%% }
-type custom_verification_email_template_does_not_exist_exception() :: #{binary() => any()}.

%% Example:
%% s3_action() :: #{
%%   <<"BucketName">> => string(),
%%   <<"IamRoleArn">> => string(),
%%   <<"KmsKeyArn">> => string(),
%%   <<"ObjectKeyPrefix">> => string(),
%%   <<"TopicArn">> => string()
%% }
-type s3_action() :: #{binary() => any()}.

%% Example:
%% kinesis_firehose_destination() :: #{
%%   <<"DeliveryStreamARN">> => string(),
%%   <<"IAMRoleARN">> => string()
%% }
-type kinesis_firehose_destination() :: #{binary() => any()}.

%% Example:
%% already_exists_exception() :: #{
%%   <<"Name">> => string(),
%%   <<"message">> => string()
%% }
-type already_exists_exception() :: #{binary() => any()}.

%% Example:
%% invalid_cloud_watch_destination_exception() :: #{
%%   <<"ConfigurationSetName">> => string(),
%%   <<"EventDestinationName">> => string(),
%%   <<"message">> => string()
%% }
-type invalid_cloud_watch_destination_exception() :: #{binary() => any()}.

%% Example:
%% describe_receipt_rule_set_response() :: #{
%%   <<"Metadata">> => receipt_rule_set_metadata(),
%%   <<"Rules">> => list(receipt_rule()())
%% }
-type describe_receipt_rule_set_response() :: #{binary() => any()}.

%% Example:
%% list_receipt_filters_response() :: #{
%%   <<"Filters">> => list(receipt_filter()())
%% }
-type list_receipt_filters_response() :: #{binary() => any()}.

%% Example:
%% get_custom_verification_email_template_response() :: #{
%%   <<"FailureRedirectionURL">> => string(),
%%   <<"FromEmailAddress">> => string(),
%%   <<"SuccessRedirectionURL">> => string(),
%%   <<"TemplateContent">> => string(),
%%   <<"TemplateName">> => string(),
%%   <<"TemplateSubject">> => string()
%% }
-type get_custom_verification_email_template_response() :: #{binary() => any()}.

%% Example:
%% send_raw_email_request() :: #{
%%   <<"ConfigurationSetName">> => string(),
%%   <<"Destinations">> => list(string()()),
%%   <<"FromArn">> => string(),
%%   <<"RawMessage">> := raw_message(),
%%   <<"ReturnPathArn">> => string(),
%%   <<"Source">> => string(),
%%   <<"SourceArn">> => string(),
%%   <<"Tags">> => list(message_tag()())
%% }
-type send_raw_email_request() :: #{binary() => any()}.

%% Example:
%% invalid_lambda_function_exception() :: #{
%%   <<"FunctionArn">> => string(),
%%   <<"message">> => string()
%% }
-type invalid_lambda_function_exception() :: #{binary() => any()}.

%% Example:
%% get_identity_mail_from_domain_attributes_request() :: #{
%%   <<"Identities">> := list(string()())
%% }
-type get_identity_mail_from_domain_attributes_request() :: #{binary() => any()}.

%% Example:
%% custom_verification_email_template_already_exists_exception() :: #{
%%   <<"CustomVerificationEmailTemplateName">> => string(),
%%   <<"message">> => string()
%% }
-type custom_verification_email_template_already_exists_exception() :: #{binary() => any()}.

%% Example:
%% verify_domain_identity_response() :: #{
%%   <<"VerificationToken">> => string()
%% }
-type verify_domain_identity_response() :: #{binary() => any()}.

%% Example:
%% create_template_request() :: #{
%%   <<"Template">> := template()
%% }
-type create_template_request() :: #{binary() => any()}.

%% Example:
%% test_render_template_response() :: #{
%%   <<"RenderedTemplate">> => string()
%% }
-type test_render_template_response() :: #{binary() => any()}.

%% Example:
%% describe_configuration_set_response() :: #{
%%   <<"ConfigurationSet">> => configuration_set(),
%%   <<"DeliveryOptions">> => delivery_options(),
%%   <<"EventDestinations">> => list(event_destination()()),
%%   <<"ReputationOptions">> => reputation_options(),
%%   <<"TrackingOptions">> => tracking_options()
%% }
-type describe_configuration_set_response() :: #{binary() => any()}.

%% Example:
%% describe_active_receipt_rule_set_response() :: #{
%%   <<"Metadata">> => receipt_rule_set_metadata(),
%%   <<"Rules">> => list(receipt_rule()())
%% }
-type describe_active_receipt_rule_set_response() :: #{binary() => any()}.

%% Example:
%% get_template_response() :: #{
%%   <<"Template">> => template()
%% }
-type get_template_response() :: #{binary() => any()}.

%% Example:
%% get_identity_verification_attributes_request() :: #{
%%   <<"Identities">> := list(string()())
%% }
-type get_identity_verification_attributes_request() :: #{binary() => any()}.

%% Example:
%% template_metadata() :: #{
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"Name">> => string()
%% }
-type template_metadata() :: #{binary() => any()}.

%% Example:
%% get_custom_verification_email_template_request() :: #{
%%   <<"TemplateName">> := string()
%% }
-type get_custom_verification_email_template_request() :: #{binary() => any()}.

%% Example:
%% invalid_sns_topic_exception() :: #{
%%   <<"Topic">> => string(),
%%   <<"message">> => string()
%% }
-type invalid_sns_topic_exception() :: #{binary() => any()}.

%% Example:
%% put_configuration_set_delivery_options_response() :: #{

%% }
-type put_configuration_set_delivery_options_response() :: #{binary() => any()}.

%% Example:
%% delete_configuration_set_event_destination_response() :: #{

%% }
-type delete_configuration_set_event_destination_response() :: #{binary() => any()}.

%% Example:
%% cloud_watch_dimension_configuration() :: #{
%%   <<"DefaultDimensionValue">> => string(),
%%   <<"DimensionName">> => string(),
%%   <<"DimensionValueSource">> => list(any())
%% }
-type cloud_watch_dimension_configuration() :: #{binary() => any()}.

%% Example:
%% delete_receipt_filter_request() :: #{
%%   <<"FilterName">> := string()
%% }
-type delete_receipt_filter_request() :: #{binary() => any()}.

%% Example:
%% set_identity_mail_from_domain_request() :: #{
%%   <<"BehaviorOnMXFailure">> => list(any()),
%%   <<"Identity">> := string(),
%%   <<"MailFromDomain">> => string()
%% }
-type set_identity_mail_from_domain_request() :: #{binary() => any()}.

%% Example:
%% update_receipt_rule_request() :: #{
%%   <<"Rule">> := receipt_rule(),
%%   <<"RuleSetName">> := string()
%% }
-type update_receipt_rule_request() :: #{binary() => any()}.

%% Example:
%% update_template_request() :: #{
%%   <<"Template">> := template()
%% }
-type update_template_request() :: #{binary() => any()}.

%% Example:
%% reorder_receipt_rule_set_request() :: #{
%%   <<"RuleNames">> := list(string()()),
%%   <<"RuleSetName">> := string()
%% }
-type reorder_receipt_rule_set_request() :: #{binary() => any()}.

%% Example:
%% configuration_set() :: #{
%%   <<"Name">> => string()
%% }
-type configuration_set() :: #{binary() => any()}.

%% Example:
%% bulk_email_destination_status() :: #{
%%   <<"Error">> => string(),
%%   <<"MessageId">> => string(),
%%   <<"Status">> => list(any())
%% }
-type bulk_email_destination_status() :: #{binary() => any()}.

%% Example:
%% delete_configuration_set_request() :: #{
%%   <<"ConfigurationSetName">> := string()
%% }
-type delete_configuration_set_request() :: #{binary() => any()}.

%% Example:
%% set_identity_mail_from_domain_response() :: #{

%% }
-type set_identity_mail_from_domain_response() :: #{binary() => any()}.

%% Example:
%% get_identity_notification_attributes_response() :: #{
%%   <<"NotificationAttributes">> => map()
%% }
-type get_identity_notification_attributes_response() :: #{binary() => any()}.

%% Example:
%% send_email_response() :: #{
%%   <<"MessageId">> => string()
%% }
-type send_email_response() :: #{binary() => any()}.

%% Example:
%% send_raw_email_response() :: #{
%%   <<"MessageId">> => string()
%% }
-type send_raw_email_response() :: #{binary() => any()}.

%% Example:
%% configuration_set_sending_paused_exception() :: #{
%%   <<"ConfigurationSetName">> => string(),
%%   <<"message">> => string()
%% }
-type configuration_set_sending_paused_exception() :: #{binary() => any()}.

%% Example:
%% cloud_watch_destination() :: #{
%%   <<"DimensionConfigurations">> => list(cloud_watch_dimension_configuration()())
%% }
-type cloud_watch_destination() :: #{binary() => any()}.

%% Example:
%% mail_from_domain_not_verified_exception() :: #{
%%   <<"message">> => string()
%% }
-type mail_from_domain_not_verified_exception() :: #{binary() => any()}.

%% Example:
%% invalid_s3_configuration_exception() :: #{
%%   <<"Bucket">> => string(),
%%   <<"message">> => string()
%% }
-type invalid_s3_configuration_exception() :: #{binary() => any()}.

%% Example:
%% verify_domain_dkim_request() :: #{
%%   <<"Domain">> := string()
%% }
-type verify_domain_dkim_request() :: #{binary() => any()}.

%% Example:
%% get_identity_notification_attributes_request() :: #{
%%   <<"Identities">> := list(string()())
%% }
-type get_identity_notification_attributes_request() :: #{binary() => any()}.

%% Example:
%% delete_receipt_filter_response() :: #{

%% }
-type delete_receipt_filter_response() :: #{binary() => any()}.

%% Example:
%% get_identity_dkim_attributes_response() :: #{
%%   <<"DkimAttributes">> => map()
%% }
-type get_identity_dkim_attributes_response() :: #{binary() => any()}.

%% Example:
%% update_configuration_set_tracking_options_request() :: #{
%%   <<"ConfigurationSetName">> := string(),
%%   <<"TrackingOptions">> := tracking_options()
%% }
-type update_configuration_set_tracking_options_request() :: #{binary() => any()}.

%% Example:
%% set_identity_headers_in_notifications_enabled_response() :: #{

%% }
-type set_identity_headers_in_notifications_enabled_response() :: #{binary() => any()}.

%% Example:
%% create_configuration_set_response() :: #{

%% }
-type create_configuration_set_response() :: #{binary() => any()}.

%% Example:
%% message_dsn() :: #{
%%   <<"ArrivalDate">> => non_neg_integer(),
%%   <<"ExtensionFields">> => list(extension_field()()),
%%   <<"ReportingMta">> => string()
%% }
-type message_dsn() :: #{binary() => any()}.

%% Example:
%% list_custom_verification_email_templates_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_custom_verification_email_templates_request() :: #{binary() => any()}.

%% Example:
%% delete_identity_policy_request() :: #{
%%   <<"Identity">> := string(),
%%   <<"PolicyName">> := string()
%% }
-type delete_identity_policy_request() :: #{binary() => any()}.

%% Example:
%% reputation_options() :: #{
%%   <<"LastFreshStart">> => non_neg_integer(),
%%   <<"ReputationMetricsEnabled">> => boolean(),
%%   <<"SendingEnabled">> => boolean()
%% }
-type reputation_options() :: #{binary() => any()}.

%% Example:
%% test_render_template_request() :: #{
%%   <<"TemplateData">> := string(),
%%   <<"TemplateName">> := string()
%% }
-type test_render_template_request() :: #{binary() => any()}.

%% Example:
%% identity_verification_attributes() :: #{
%%   <<"VerificationStatus">> => list(any()),
%%   <<"VerificationToken">> => string()
%% }
-type identity_verification_attributes() :: #{binary() => any()}.

%% Example:
%% set_active_receipt_rule_set_response() :: #{

%% }
-type set_active_receipt_rule_set_response() :: #{binary() => any()}.

%% Example:
%% delete_template_request() :: #{
%%   <<"TemplateName">> := string()
%% }
-type delete_template_request() :: #{binary() => any()}.

%% Example:
%% invalid_policy_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_policy_exception() :: #{binary() => any()}.

%% Example:
%% update_configuration_set_sending_enabled_request() :: #{
%%   <<"ConfigurationSetName">> := string(),
%%   <<"Enabled">> := boolean()
%% }
-type update_configuration_set_sending_enabled_request() :: #{binary() => any()}.

%% Example:
%% create_receipt_rule_set_request() :: #{
%%   <<"RuleSetName">> := string()
%% }
-type create_receipt_rule_set_request() :: #{binary() => any()}.

%% Example:
%% from_email_address_not_verified_exception() :: #{
%%   <<"FromEmailAddress">> => string(),
%%   <<"message">> => string()
%% }
-type from_email_address_not_verified_exception() :: #{binary() => any()}.

%% Example:
%% verify_email_identity_response() :: #{

%% }
-type verify_email_identity_response() :: #{binary() => any()}.

%% Example:
%% lambda_action() :: #{
%%   <<"FunctionArn">> => string(),
%%   <<"InvocationType">> => list(any()),
%%   <<"TopicArn">> => string()
%% }
-type lambda_action() :: #{binary() => any()}.

%% Example:
%% reorder_receipt_rule_set_response() :: #{

%% }
-type reorder_receipt_rule_set_response() :: #{binary() => any()}.

%% Example:
%% describe_receipt_rule_response() :: #{
%%   <<"Rule">> => receipt_rule()
%% }
-type describe_receipt_rule_response() :: #{binary() => any()}.

%% Example:
%% event_destination() :: #{
%%   <<"CloudWatchDestination">> => cloud_watch_destination(),
%%   <<"Enabled">> => boolean(),
%%   <<"KinesisFirehoseDestination">> => kinesis_firehose_destination(),
%%   <<"MatchingEventTypes">> => list(list(any())()),
%%   <<"Name">> => string(),
%%   <<"SNSDestination">> => s_n_s_destination()
%% }
-type event_destination() :: #{binary() => any()}.

%% Example:
%% verify_email_address_request() :: #{
%%   <<"EmailAddress">> := string()
%% }
-type verify_email_address_request() :: #{binary() => any()}.

%% Example:
%% update_configuration_set_event_destination_request() :: #{
%%   <<"ConfigurationSetName">> := string(),
%%   <<"EventDestination">> := event_destination()
%% }
-type update_configuration_set_event_destination_request() :: #{binary() => any()}.

%% Example:
%% get_identity_policies_request() :: #{
%%   <<"Identity">> := string(),
%%   <<"PolicyNames">> := list(string()())
%% }
-type get_identity_policies_request() :: #{binary() => any()}.

%% Example:
%% create_receipt_filter_request() :: #{
%%   <<"Filter">> := receipt_filter()
%% }
-type create_receipt_filter_request() :: #{binary() => any()}.

%% Example:
%% message_tag() :: #{
%%   <<"Name">> => string(),
%%   <<"Value">> => string()
%% }
-type message_tag() :: #{binary() => any()}.

%% Example:
%% cannot_delete_exception() :: #{
%%   <<"Name">> => string(),
%%   <<"message">> => string()
%% }
-type cannot_delete_exception() :: #{binary() => any()}.

%% Example:
%% set_identity_notification_topic_response() :: #{

%% }
-type set_identity_notification_topic_response() :: #{binary() => any()}.

%% Example:
%% invalid_s_n_s_destination_exception() :: #{
%%   <<"ConfigurationSetName">> => string(),
%%   <<"EventDestinationName">> => string(),
%%   <<"message">> => string()
%% }
-type invalid_s_n_s_destination_exception() :: #{binary() => any()}.

%% Example:
%% delete_identity_response() :: #{

%% }
-type delete_identity_response() :: #{binary() => any()}.

%% Example:
%% set_identity_headers_in_notifications_enabled_request() :: #{
%%   <<"Enabled">> := boolean(),
%%   <<"Identity">> := string(),
%%   <<"NotificationType">> := list(any())
%% }
-type set_identity_headers_in_notifications_enabled_request() :: #{binary() => any()}.

%% Example:
%% put_identity_policy_response() :: #{

%% }
-type put_identity_policy_response() :: #{binary() => any()}.

%% Example:
%% delete_receipt_rule_request() :: #{
%%   <<"RuleName">> := string(),
%%   <<"RuleSetName">> := string()
%% }
-type delete_receipt_rule_request() :: #{binary() => any()}.

%% Example:
%% clone_receipt_rule_set_response() :: #{

%% }
-type clone_receipt_rule_set_response() :: #{binary() => any()}.

%% Example:
%% send_custom_verification_email_response() :: #{
%%   <<"MessageId">> => string()
%% }
-type send_custom_verification_email_response() :: #{binary() => any()}.

%% Example:
%% receipt_action() :: #{
%%   <<"AddHeaderAction">> => add_header_action(),
%%   <<"BounceAction">> => bounce_action(),
%%   <<"ConnectAction">> => connect_action(),
%%   <<"LambdaAction">> => lambda_action(),
%%   <<"S3Action">> => s3_action(),
%%   <<"SNSAction">> => s_n_s_action(),
%%   <<"StopAction">> => stop_action(),
%%   <<"WorkmailAction">> => workmail_action()
%% }
-type receipt_action() :: #{binary() => any()}.

%% Example:
%% production_access_not_granted_exception() :: #{
%%   <<"message">> => string()
%% }
-type production_access_not_granted_exception() :: #{binary() => any()}.

%% Example:
%% create_custom_verification_email_template_request() :: #{
%%   <<"FailureRedirectionURL">> := string(),
%%   <<"FromEmailAddress">> := string(),
%%   <<"SuccessRedirectionURL">> := string(),
%%   <<"TemplateContent">> := string(),
%%   <<"TemplateName">> := string(),
%%   <<"TemplateSubject">> := string()
%% }
-type create_custom_verification_email_template_request() :: #{binary() => any()}.

%% Example:
%% list_receipt_filters_request() :: #{

%% }
-type list_receipt_filters_request() :: #{binary() => any()}.

%% Example:
%% s_n_s_destination() :: #{
%%   <<"TopicARN">> => string()
%% }
-type s_n_s_destination() :: #{binary() => any()}.

%% Example:
%% event_destination_already_exists_exception() :: #{
%%   <<"ConfigurationSetName">> => string(),
%%   <<"EventDestinationName">> => string(),
%%   <<"message">> => string()
%% }
-type event_destination_already_exists_exception() :: #{binary() => any()}.

%% Example:
%% list_configuration_sets_response() :: #{
%%   <<"ConfigurationSets">> => list(configuration_set()()),
%%   <<"NextToken">> => string()
%% }
-type list_configuration_sets_response() :: #{binary() => any()}.

%% Example:
%% get_identity_mail_from_domain_attributes_response() :: #{
%%   <<"MailFromDomainAttributes">> => map()
%% }
-type get_identity_mail_from_domain_attributes_response() :: #{binary() => any()}.

%% Example:
%% update_custom_verification_email_template_request() :: #{
%%   <<"FailureRedirectionURL">> => string(),
%%   <<"FromEmailAddress">> => string(),
%%   <<"SuccessRedirectionURL">> => string(),
%%   <<"TemplateContent">> => string(),
%%   <<"TemplateName">> := string(),
%%   <<"TemplateSubject">> => string()
%% }
-type update_custom_verification_email_template_request() :: #{binary() => any()}.

%% Example:
%% create_receipt_rule_request() :: #{
%%   <<"After">> => string(),
%%   <<"Rule">> := receipt_rule(),
%%   <<"RuleSetName">> := string()
%% }
-type create_receipt_rule_request() :: #{binary() => any()}.

%% Example:
%% receipt_ip_filter() :: #{
%%   <<"Cidr">> => string(),
%%   <<"Policy">> => list(any())
%% }
-type receipt_ip_filter() :: #{binary() => any()}.

%% Example:
%% list_configuration_sets_request() :: #{
%%   <<"MaxItems">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_configuration_sets_request() :: #{binary() => any()}.

%% Example:
%% update_receipt_rule_response() :: #{

%% }
-type update_receipt_rule_response() :: #{binary() => any()}.

%% Example:
%% delete_configuration_set_tracking_options_request() :: #{
%%   <<"ConfigurationSetName">> := string()
%% }
-type delete_configuration_set_tracking_options_request() :: #{binary() => any()}.

%% Example:
%% raw_message() :: #{
%%   <<"Data">> => binary()
%% }
-type raw_message() :: #{binary() => any()}.

%% Example:
%% list_custom_verification_email_templates_response() :: #{
%%   <<"CustomVerificationEmailTemplates">> => list(custom_verification_email_template()()),
%%   <<"NextToken">> => string()
%% }
-type list_custom_verification_email_templates_response() :: #{binary() => any()}.

%% Example:
%% send_bulk_templated_email_response() :: #{
%%   <<"Status">> => list(bulk_email_destination_status()())
%% }
-type send_bulk_templated_email_response() :: #{binary() => any()}.

%% Example:
%% set_identity_feedback_forwarding_enabled_response() :: #{

%% }
-type set_identity_feedback_forwarding_enabled_response() :: #{binary() => any()}.

%% Example:
%% delete_custom_verification_email_template_request() :: #{
%%   <<"TemplateName">> := string()
%% }
-type delete_custom_verification_email_template_request() :: #{binary() => any()}.

%% Example:
%% send_bounce_response() :: #{
%%   <<"MessageId">> => string()
%% }
-type send_bounce_response() :: #{binary() => any()}.

%% Example:
%% delete_receipt_rule_set_request() :: #{
%%   <<"RuleSetName">> := string()
%% }
-type delete_receipt_rule_set_request() :: #{binary() => any()}.

%% Example:
%% create_receipt_rule_response() :: #{

%% }
-type create_receipt_rule_response() :: #{binary() => any()}.

%% Example:
%% invalid_tracking_options_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_tracking_options_exception() :: #{binary() => any()}.

%% Example:
%% send_custom_verification_email_request() :: #{
%%   <<"ConfigurationSetName">> => string(),
%%   <<"EmailAddress">> := string(),
%%   <<"TemplateName">> := string()
%% }
-type send_custom_verification_email_request() :: #{binary() => any()}.

%% Example:
%% set_active_receipt_rule_set_request() :: #{
%%   <<"RuleSetName">> => string()
%% }
-type set_active_receipt_rule_set_request() :: #{binary() => any()}.

%% Example:
%% send_bulk_templated_email_request() :: #{
%%   <<"ConfigurationSetName">> => string(),
%%   <<"DefaultTags">> => list(message_tag()()),
%%   <<"DefaultTemplateData">> := string(),
%%   <<"Destinations">> := list(bulk_email_destination()()),
%%   <<"ReplyToAddresses">> => list(string()()),
%%   <<"ReturnPath">> => string(),
%%   <<"ReturnPathArn">> => string(),
%%   <<"Source">> := string(),
%%   <<"SourceArn">> => string(),
%%   <<"Template">> := string(),
%%   <<"TemplateArn">> => string()
%% }
-type send_bulk_templated_email_request() :: #{binary() => any()}.

%% Example:
%% configuration_set_does_not_exist_exception() :: #{
%%   <<"ConfigurationSetName">> => string(),
%%   <<"message">> => string()
%% }
-type configuration_set_does_not_exist_exception() :: #{binary() => any()}.

%% Example:
%% send_templated_email_response() :: #{
%%   <<"MessageId">> => string()
%% }
-type send_templated_email_response() :: #{binary() => any()}.

%% Example:
%% update_template_response() :: #{

%% }
-type update_template_response() :: #{binary() => any()}.

%% Example:
%% list_identity_policies_request() :: #{
%%   <<"Identity">> := string()
%% }
-type list_identity_policies_request() :: #{binary() => any()}.

%% Example:
%% receipt_filter() :: #{
%%   <<"IpFilter">> => receipt_ip_filter(),
%%   <<"Name">> => string()
%% }
-type receipt_filter() :: #{binary() => any()}.

%% Example:
%% delete_configuration_set_event_destination_request() :: #{
%%   <<"ConfigurationSetName">> := string(),
%%   <<"EventDestinationName">> := string()
%% }
-type delete_configuration_set_event_destination_request() :: #{binary() => any()}.

%% Example:
%% receipt_rule_set_metadata() :: #{
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"Name">> => string()
%% }
-type receipt_rule_set_metadata() :: #{binary() => any()}.

%% Example:
%% create_configuration_set_event_destination_response() :: #{

%% }
-type create_configuration_set_event_destination_response() :: #{binary() => any()}.

%% Example:
%% send_templated_email_request() :: #{
%%   <<"ConfigurationSetName">> => string(),
%%   <<"Destination">> := destination(),
%%   <<"ReplyToAddresses">> => list(string()()),
%%   <<"ReturnPath">> => string(),
%%   <<"ReturnPathArn">> => string(),
%%   <<"Source">> := string(),
%%   <<"SourceArn">> => string(),
%%   <<"Tags">> => list(message_tag()()),
%%   <<"Template">> := string(),
%%   <<"TemplateArn">> => string(),
%%   <<"TemplateData">> := string()
%% }
-type send_templated_email_request() :: #{binary() => any()}.

%% Example:
%% stop_action() :: #{
%%   <<"Scope">> => list(any()),
%%   <<"TopicArn">> => string()
%% }
-type stop_action() :: #{binary() => any()}.

%% Example:
%% put_configuration_set_delivery_options_request() :: #{
%%   <<"ConfigurationSetName">> := string(),
%%   <<"DeliveryOptions">> => delivery_options()
%% }
-type put_configuration_set_delivery_options_request() :: #{binary() => any()}.

%% Example:
%% receipt_rule() :: #{
%%   <<"Actions">> => list(receipt_action()()),
%%   <<"Enabled">> => boolean(),
%%   <<"Name">> => string(),
%%   <<"Recipients">> => list(string()()),
%%   <<"ScanEnabled">> => boolean(),
%%   <<"TlsPolicy">> => list(any())
%% }
-type receipt_rule() :: #{binary() => any()}.

%% Example:
%% account_sending_paused_exception() :: #{
%%   <<"message">> => string()
%% }
-type account_sending_paused_exception() :: #{binary() => any()}.

%% Example:
%% invalid_configuration_set_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_configuration_set_exception() :: #{binary() => any()}.

%% Example:
%% delete_configuration_set_tracking_options_response() :: #{

%% }
-type delete_configuration_set_tracking_options_response() :: #{binary() => any()}.

%% Example:
%% verify_email_identity_request() :: #{
%%   <<"EmailAddress">> := string()
%% }
-type verify_email_identity_request() :: #{binary() => any()}.

%% Example:
%% rule_does_not_exist_exception() :: #{
%%   <<"Name">> => string(),
%%   <<"message">> => string()
%% }
-type rule_does_not_exist_exception() :: #{binary() => any()}.

%% Example:
%% s_n_s_action() :: #{
%%   <<"Encoding">> => list(any()),
%%   <<"TopicArn">> => string()
%% }
-type s_n_s_action() :: #{binary() => any()}.

%% Example:
%% set_identity_notification_topic_request() :: #{
%%   <<"Identity">> := string(),
%%   <<"NotificationType">> := list(any()),
%%   <<"SnsTopic">> => string()
%% }
-type set_identity_notification_topic_request() :: #{binary() => any()}.

%% Example:
%% get_identity_verification_attributes_response() :: #{
%%   <<"VerificationAttributes">> => map()
%% }
-type get_identity_verification_attributes_response() :: #{binary() => any()}.

%% Example:
%% bounced_recipient_info() :: #{
%%   <<"BounceType">> => list(any()),
%%   <<"Recipient">> => string(),
%%   <<"RecipientArn">> => string(),
%%   <<"RecipientDsnFields">> => recipient_dsn_fields()
%% }
-type bounced_recipient_info() :: #{binary() => any()}.

%% Example:
%% list_templates_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"TemplatesMetadata">> => list(template_metadata()())
%% }
-type list_templates_response() :: #{binary() => any()}.

%% Example:
%% invalid_template_exception() :: #{
%%   <<"TemplateName">> => string(),
%%   <<"message">> => string()
%% }
-type invalid_template_exception() :: #{binary() => any()}.

%% Example:
%% get_template_request() :: #{
%%   <<"TemplateName">> := string()
%% }
-type get_template_request() :: #{binary() => any()}.

%% Example:
%% create_configuration_set_tracking_options_request() :: #{
%%   <<"ConfigurationSetName">> := string(),
%%   <<"TrackingOptions">> := tracking_options()
%% }
-type create_configuration_set_tracking_options_request() :: #{binary() => any()}.

%% Example:
%% invalid_rendering_parameter_exception() :: #{
%%   <<"TemplateName">> => string(),
%%   <<"message">> => string()
%% }
-type invalid_rendering_parameter_exception() :: #{binary() => any()}.

%% Example:
%% describe_active_receipt_rule_set_request() :: #{

%% }
-type describe_active_receipt_rule_set_request() :: #{binary() => any()}.

%% Example:
%% update_account_sending_enabled_request() :: #{
%%   <<"Enabled">> => boolean()
%% }
-type update_account_sending_enabled_request() :: #{binary() => any()}.

%% Example:
%% missing_rendering_attribute_exception() :: #{
%%   <<"TemplateName">> => string(),
%%   <<"message">> => string()
%% }
-type missing_rendering_attribute_exception() :: #{binary() => any()}.

%% Example:
%% custom_verification_email_template() :: #{
%%   <<"FailureRedirectionURL">> => string(),
%%   <<"FromEmailAddress">> => string(),
%%   <<"SuccessRedirectionURL">> => string(),
%%   <<"TemplateName">> => string(),
%%   <<"TemplateSubject">> => string()
%% }
-type custom_verification_email_template() :: #{binary() => any()}.

%% Example:
%% event_destination_does_not_exist_exception() :: #{
%%   <<"ConfigurationSetName">> => string(),
%%   <<"EventDestinationName">> => string(),
%%   <<"message">> => string()
%% }
-type event_destination_does_not_exist_exception() :: #{binary() => any()}.

%% Example:
%% destination() :: #{
%%   <<"BccAddresses">> => list(string()()),
%%   <<"CcAddresses">> => list(string()()),
%%   <<"ToAddresses">> => list(string()())
%% }
-type destination() :: #{binary() => any()}.

%% Example:
%% body() :: #{
%%   <<"Html">> => content(),
%%   <<"Text">> => content()
%% }
-type body() :: #{binary() => any()}.

%% Example:
%% delete_receipt_rule_response() :: #{

%% }
-type delete_receipt_rule_response() :: #{binary() => any()}.

%% Example:
%% message_rejected() :: #{
%%   <<"message">> => string()
%% }
-type message_rejected() :: #{binary() => any()}.

%% Example:
%% set_identity_dkim_enabled_request() :: #{
%%   <<"DkimEnabled">> := boolean(),
%%   <<"Identity">> := string()
%% }
-type set_identity_dkim_enabled_request() :: #{binary() => any()}.

%% Example:
%% template_does_not_exist_exception() :: #{
%%   <<"TemplateName">> => string(),
%%   <<"message">> => string()
%% }
-type template_does_not_exist_exception() :: #{binary() => any()}.

%% Example:
%% get_identity_policies_response() :: #{
%%   <<"Policies">> => map()
%% }
-type get_identity_policies_response() :: #{binary() => any()}.

%% Example:
%% create_configuration_set_event_destination_request() :: #{
%%   <<"ConfigurationSetName">> := string(),
%%   <<"EventDestination">> := event_destination()
%% }
-type create_configuration_set_event_destination_request() :: #{binary() => any()}.

%% Example:
%% send_bounce_request() :: #{
%%   <<"BounceSender">> := string(),
%%   <<"BounceSenderArn">> => string(),
%%   <<"BouncedRecipientInfoList">> := list(bounced_recipient_info()()),
%%   <<"Explanation">> => string(),
%%   <<"MessageDsn">> => message_dsn(),
%%   <<"OriginalMessageId">> := string()
%% }
-type send_bounce_request() :: #{binary() => any()}.

%% Example:
%% list_identities_response() :: #{
%%   <<"Identities">> => list(string()()),
%%   <<"NextToken">> => string()
%% }
-type list_identities_response() :: #{binary() => any()}.

%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% recipient_dsn_fields() :: #{
%%   <<"Action">> => list(any()),
%%   <<"DiagnosticCode">> => string(),
%%   <<"ExtensionFields">> => list(extension_field()()),
%%   <<"FinalRecipient">> => string(),
%%   <<"LastAttemptDate">> => non_neg_integer(),
%%   <<"RemoteMta">> => string(),
%%   <<"Status">> => string()
%% }
-type recipient_dsn_fields() :: #{binary() => any()}.

%% Example:
%% delivery_options() :: #{
%%   <<"TlsPolicy">> => list(any())
%% }
-type delivery_options() :: #{binary() => any()}.

%% Example:
%% update_configuration_set_event_destination_response() :: #{

%% }
-type update_configuration_set_event_destination_response() :: #{binary() => any()}.

%% Example:
%% workmail_action() :: #{
%%   <<"OrganizationArn">> => string(),
%%   <<"TopicArn">> => string()
%% }
-type workmail_action() :: #{binary() => any()}.

%% Example:
%% set_receipt_rule_position_request() :: #{
%%   <<"After">> => string(),
%%   <<"RuleName">> := string(),
%%   <<"RuleSetName">> := string()
%% }
-type set_receipt_rule_position_request() :: #{binary() => any()}.

%% Example:
%% tracking_options_already_exists_exception() :: #{
%%   <<"ConfigurationSetName">> => string(),
%%   <<"message">> => string()
%% }
-type tracking_options_already_exists_exception() :: #{binary() => any()}.

%% Example:
%% bulk_email_destination() :: #{
%%   <<"Destination">> => destination(),
%%   <<"ReplacementTags">> => list(message_tag()()),
%%   <<"ReplacementTemplateData">> => string()
%% }
-type bulk_email_destination() :: #{binary() => any()}.

%% Example:
%% list_identity_policies_response() :: #{
%%   <<"PolicyNames">> => list(string()())
%% }
-type list_identity_policies_response() :: #{binary() => any()}.

%% Example:
%% content() :: #{
%%   <<"Charset">> => string(),
%%   <<"Data">> => string()
%% }
-type content() :: #{binary() => any()}.

%% Example:
%% create_template_response() :: #{

%% }
-type create_template_response() :: #{binary() => any()}.

%% Example:
%% delete_template_response() :: #{

%% }
-type delete_template_response() :: #{binary() => any()}.

%% Example:
%% extension_field() :: #{
%%   <<"Name">> => string(),
%%   <<"Value">> => string()
%% }
-type extension_field() :: #{binary() => any()}.

%% Example:
%% template() :: #{
%%   <<"HtmlPart">> => string(),
%%   <<"SubjectPart">> => string(),
%%   <<"TemplateName">> => string(),
%%   <<"TextPart">> => string()
%% }
-type template() :: #{binary() => any()}.

%% Example:
%% send_email_request() :: #{
%%   <<"ConfigurationSetName">> => string(),
%%   <<"Destination">> := destination(),
%%   <<"Message">> := message(),
%%   <<"ReplyToAddresses">> => list(string()()),
%%   <<"ReturnPath">> => string(),
%%   <<"ReturnPathArn">> => string(),
%%   <<"Source">> := string(),
%%   <<"SourceArn">> => string(),
%%   <<"Tags">> => list(message_tag()())
%% }
-type send_email_request() :: #{binary() => any()}.

%% Example:
%% get_account_sending_enabled_response() :: #{
%%   <<"Enabled">> => boolean()
%% }
-type get_account_sending_enabled_response() :: #{binary() => any()}.

%% Example:
%% list_verified_email_addresses_response() :: #{
%%   <<"VerifiedEmailAddresses">> => list(string()())
%% }
-type list_verified_email_addresses_response() :: #{binary() => any()}.

%% Example:
%% get_send_statistics_response() :: #{
%%   <<"SendDataPoints">> => list(send_data_point()())
%% }
-type get_send_statistics_response() :: #{binary() => any()}.

%% Example:
%% invalid_delivery_options_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_delivery_options_exception() :: #{binary() => any()}.

%% Example:
%% delete_receipt_rule_set_response() :: #{

%% }
-type delete_receipt_rule_set_response() :: #{binary() => any()}.

%% Example:
%% send_data_point() :: #{
%%   <<"Bounces">> => float(),
%%   <<"Complaints">> => float(),
%%   <<"DeliveryAttempts">> => float(),
%%   <<"Rejects">> => float(),
%%   <<"Timestamp">> => non_neg_integer()
%% }
-type send_data_point() :: #{binary() => any()}.

%% Example:
%% create_receipt_filter_response() :: #{

%% }
-type create_receipt_filter_response() :: #{binary() => any()}.

%% Example:
%% get_send_quota_response() :: #{
%%   <<"Max24HourSend">> => float(),
%%   <<"MaxSendRate">> => float(),
%%   <<"SentLast24Hours">> => float()
%% }
-type get_send_quota_response() :: #{binary() => any()}.

%% Example:
%% update_configuration_set_tracking_options_response() :: #{

%% }
-type update_configuration_set_tracking_options_response() :: #{binary() => any()}.

%% Example:
%% set_identity_dkim_enabled_response() :: #{

%% }
-type set_identity_dkim_enabled_response() :: #{binary() => any()}.

%% Example:
%% create_configuration_set_request() :: #{
%%   <<"ConfigurationSet">> := configuration_set()
%% }
-type create_configuration_set_request() :: #{binary() => any()}.

%% Example:
%% tracking_options_does_not_exist_exception() :: #{
%%   <<"ConfigurationSetName">> => string(),
%%   <<"message">> => string()
%% }
-type tracking_options_does_not_exist_exception() :: #{binary() => any()}.

%% Example:
%% invalid_firehose_destination_exception() :: #{
%%   <<"ConfigurationSetName">> => string(),
%%   <<"EventDestinationName">> => string(),
%%   <<"message">> => string()
%% }
-type invalid_firehose_destination_exception() :: #{binary() => any()}.

%% Example:
%% bounce_action() :: #{
%%   <<"Message">> => string(),
%%   <<"Sender">> => string(),
%%   <<"SmtpReplyCode">> => string(),
%%   <<"StatusCode">> => string(),
%%   <<"TopicArn">> => string()
%% }
-type bounce_action() :: #{binary() => any()}.

%% Example:
%% clone_receipt_rule_set_request() :: #{
%%   <<"OriginalRuleSetName">> := string(),
%%   <<"RuleSetName">> := string()
%% }
-type clone_receipt_rule_set_request() :: #{binary() => any()}.

%% Example:
%% update_configuration_set_reputation_metrics_enabled_request() :: #{
%%   <<"ConfigurationSetName">> := string(),
%%   <<"Enabled">> := boolean()
%% }
-type update_configuration_set_reputation_metrics_enabled_request() :: #{binary() => any()}.

%% Example:
%% configuration_set_already_exists_exception() :: #{
%%   <<"ConfigurationSetName">> => string(),
%%   <<"message">> => string()
%% }
-type configuration_set_already_exists_exception() :: #{binary() => any()}.

%% Example:
%% add_header_action() :: #{
%%   <<"HeaderName">> => string(),
%%   <<"HeaderValue">> => string()
%% }
-type add_header_action() :: #{binary() => any()}.

%% Example:
%% get_identity_dkim_attributes_request() :: #{
%%   <<"Identities">> := list(string()())
%% }
-type get_identity_dkim_attributes_request() :: #{binary() => any()}.

%% Example:
%% message() :: #{
%%   <<"Body">> => body(),
%%   <<"Subject">> => content()
%% }
-type message() :: #{binary() => any()}.

%% Example:
%% identity_mail_from_domain_attributes() :: #{
%%   <<"BehaviorOnMXFailure">> => list(any()),
%%   <<"MailFromDomain">> => string(),
%%   <<"MailFromDomainStatus">> => list(any())
%% }
-type identity_mail_from_domain_attributes() :: #{binary() => any()}.

-type clone_receipt_rule_set_errors() ::
    limit_exceeded_exception() | 
    already_exists_exception() | 
    rule_set_does_not_exist_exception().

-type create_configuration_set_errors() ::
    configuration_set_already_exists_exception() | 
    limit_exceeded_exception() | 
    invalid_configuration_set_exception().

-type create_configuration_set_event_destination_errors() ::
    invalid_firehose_destination_exception() | 
    limit_exceeded_exception() | 
    configuration_set_does_not_exist_exception() | 
    event_destination_already_exists_exception() | 
    invalid_s_n_s_destination_exception() | 
    invalid_cloud_watch_destination_exception().

-type create_configuration_set_tracking_options_errors() ::
    tracking_options_already_exists_exception() | 
    configuration_set_does_not_exist_exception() | 
    invalid_tracking_options_exception().

-type create_custom_verification_email_template_errors() ::
    limit_exceeded_exception() | 
    from_email_address_not_verified_exception() | 
    custom_verification_email_template_already_exists_exception() | 
    custom_verification_email_invalid_content_exception().

-type create_receipt_filter_errors() ::
    limit_exceeded_exception() | 
    already_exists_exception().

-type create_receipt_rule_errors() ::
    limit_exceeded_exception() | 
    rule_does_not_exist_exception() | 
    invalid_s3_configuration_exception() | 
    invalid_sns_topic_exception() | 
    invalid_lambda_function_exception() | 
    already_exists_exception() | 
    rule_set_does_not_exist_exception().

-type create_receipt_rule_set_errors() ::
    limit_exceeded_exception() | 
    already_exists_exception().

-type create_template_errors() ::
    limit_exceeded_exception() | 
    invalid_template_exception() | 
    already_exists_exception().

-type delete_configuration_set_errors() ::
    configuration_set_does_not_exist_exception().

-type delete_configuration_set_event_destination_errors() ::
    event_destination_does_not_exist_exception() | 
    configuration_set_does_not_exist_exception().

-type delete_configuration_set_tracking_options_errors() ::
    tracking_options_does_not_exist_exception() | 
    configuration_set_does_not_exist_exception().

-type delete_receipt_rule_errors() ::
    rule_set_does_not_exist_exception().

-type delete_receipt_rule_set_errors() ::
    cannot_delete_exception().

-type describe_configuration_set_errors() ::
    configuration_set_does_not_exist_exception().

-type describe_receipt_rule_errors() ::
    rule_does_not_exist_exception() | 
    rule_set_does_not_exist_exception().

-type describe_receipt_rule_set_errors() ::
    rule_set_does_not_exist_exception().

-type get_custom_verification_email_template_errors() ::
    custom_verification_email_template_does_not_exist_exception().

-type get_template_errors() ::
    template_does_not_exist_exception().

-type put_configuration_set_delivery_options_errors() ::
    invalid_delivery_options_exception() | 
    configuration_set_does_not_exist_exception().

-type put_identity_policy_errors() ::
    invalid_policy_exception().

-type reorder_receipt_rule_set_errors() ::
    rule_does_not_exist_exception() | 
    rule_set_does_not_exist_exception().

-type send_bounce_errors() ::
    message_rejected().

-type send_bulk_templated_email_errors() ::
    template_does_not_exist_exception() | 
    message_rejected() | 
    account_sending_paused_exception() | 
    configuration_set_does_not_exist_exception() | 
    mail_from_domain_not_verified_exception() | 
    configuration_set_sending_paused_exception().

-type send_custom_verification_email_errors() ::
    message_rejected() | 
    configuration_set_does_not_exist_exception() | 
    production_access_not_granted_exception() | 
    from_email_address_not_verified_exception() | 
    custom_verification_email_template_does_not_exist_exception().

-type send_email_errors() ::
    message_rejected() | 
    account_sending_paused_exception() | 
    configuration_set_does_not_exist_exception() | 
    mail_from_domain_not_verified_exception() | 
    configuration_set_sending_paused_exception().

-type send_raw_email_errors() ::
    message_rejected() | 
    account_sending_paused_exception() | 
    configuration_set_does_not_exist_exception() | 
    mail_from_domain_not_verified_exception() | 
    configuration_set_sending_paused_exception().

-type send_templated_email_errors() ::
    template_does_not_exist_exception() | 
    message_rejected() | 
    account_sending_paused_exception() | 
    configuration_set_does_not_exist_exception() | 
    mail_from_domain_not_verified_exception() | 
    configuration_set_sending_paused_exception().

-type set_active_receipt_rule_set_errors() ::
    rule_set_does_not_exist_exception().

-type set_receipt_rule_position_errors() ::
    rule_does_not_exist_exception() | 
    rule_set_does_not_exist_exception().

-type test_render_template_errors() ::
    template_does_not_exist_exception() | 
    missing_rendering_attribute_exception() | 
    invalid_rendering_parameter_exception().

-type update_configuration_set_event_destination_errors() ::
    invalid_firehose_destination_exception() | 
    event_destination_does_not_exist_exception() | 
    configuration_set_does_not_exist_exception() | 
    invalid_s_n_s_destination_exception() | 
    invalid_cloud_watch_destination_exception().

-type update_configuration_set_reputation_metrics_enabled_errors() ::
    configuration_set_does_not_exist_exception().

-type update_configuration_set_sending_enabled_errors() ::
    configuration_set_does_not_exist_exception().

-type update_configuration_set_tracking_options_errors() ::
    tracking_options_does_not_exist_exception() | 
    configuration_set_does_not_exist_exception() | 
    invalid_tracking_options_exception().

-type update_custom_verification_email_template_errors() ::
    from_email_address_not_verified_exception() | 
    custom_verification_email_template_does_not_exist_exception() | 
    custom_verification_email_invalid_content_exception().

-type update_receipt_rule_errors() ::
    limit_exceeded_exception() | 
    rule_does_not_exist_exception() | 
    invalid_s3_configuration_exception() | 
    invalid_sns_topic_exception() | 
    invalid_lambda_function_exception() | 
    rule_set_does_not_exist_exception().

-type update_template_errors() ::
    template_does_not_exist_exception() | 
    invalid_template_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a receipt rule set by cloning an existing one.
%%
%% All receipt rules and
%% configurations are copied to the new receipt rule set and are completely
%% independent of
%% the source rule set.
%%
%% For information about setting up rule sets, see the Amazon SES Developer
%% Guide:
%% https://docs.aws.amazon.com/ses/latest/dg/receiving-email-concepts.html#receiving-email-concepts-rules.
%%
%% You can execute this operation no more than once per second.
-spec clone_receipt_rule_set(aws_client:aws_client(), clone_receipt_rule_set_request()) ->
    {ok, clone_receipt_rule_set_response(), tuple()} |
    {error, any()} |
    {error, clone_receipt_rule_set_errors(), tuple()}.
clone_receipt_rule_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    clone_receipt_rule_set(Client, Input, []).

-spec clone_receipt_rule_set(aws_client:aws_client(), clone_receipt_rule_set_request(), proplists:proplist()) ->
    {ok, clone_receipt_rule_set_response(), tuple()} |
    {error, any()} |
    {error, clone_receipt_rule_set_errors(), tuple()}.
clone_receipt_rule_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CloneReceiptRuleSet">>, Input, Options).

%% @doc Creates a configuration set.
%%
%% Configuration sets enable you to publish email sending events. For
%% information about
%% using configuration sets, see the Amazon SES Developer
%% Guide:
%% https://docs.aws.amazon.com/ses/latest/dg/monitor-sending-activity.html.
%%
%% You can execute this operation no more than once per second.
-spec create_configuration_set(aws_client:aws_client(), create_configuration_set_request()) ->
    {ok, create_configuration_set_response(), tuple()} |
    {error, any()} |
    {error, create_configuration_set_errors(), tuple()}.
create_configuration_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_configuration_set(Client, Input, []).

-spec create_configuration_set(aws_client:aws_client(), create_configuration_set_request(), proplists:proplist()) ->
    {ok, create_configuration_set_response(), tuple()} |
    {error, any()} |
    {error, create_configuration_set_errors(), tuple()}.
create_configuration_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateConfigurationSet">>, Input, Options).

%% @doc Creates a configuration set event destination.
%%
%% When you create or update an event destination, you must provide one, and
%% only
%% one, destination. The destination can be CloudWatch, Amazon Kinesis
%% Firehose, or Amazon Simple Notification Service (Amazon SNS).
%%
%% An event destination is the Amazon Web Services service to which Amazon
%% SES publishes the email sending
%% events associated with a configuration set. For information about using
%% configuration
%% sets, see the Amazon SES Developer
%% Guide:
%% https://docs.aws.amazon.com/ses/latest/dg/monitor-sending-activity.html.
%%
%% You can execute this operation no more than once per second.
-spec create_configuration_set_event_destination(aws_client:aws_client(), create_configuration_set_event_destination_request()) ->
    {ok, create_configuration_set_event_destination_response(), tuple()} |
    {error, any()} |
    {error, create_configuration_set_event_destination_errors(), tuple()}.
create_configuration_set_event_destination(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_configuration_set_event_destination(Client, Input, []).

-spec create_configuration_set_event_destination(aws_client:aws_client(), create_configuration_set_event_destination_request(), proplists:proplist()) ->
    {ok, create_configuration_set_event_destination_response(), tuple()} |
    {error, any()} |
    {error, create_configuration_set_event_destination_errors(), tuple()}.
create_configuration_set_event_destination(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateConfigurationSetEventDestination">>, Input, Options).

%% @doc Creates an association between a configuration set and a custom
%% domain for open and
%% click event tracking.
%%
%% By default, images and links used for tracking open and click events are
%% hosted on
%% domains operated by Amazon SES. You can configure a subdomain of your own
%% to handle these
%% events. For information about using custom domains, see the Amazon SES
%% Developer Guide:
%% https://docs.aws.amazon.com/ses/latest/dg/configure-custom-open-click-domains.html.
-spec create_configuration_set_tracking_options(aws_client:aws_client(), create_configuration_set_tracking_options_request()) ->
    {ok, create_configuration_set_tracking_options_response(), tuple()} |
    {error, any()} |
    {error, create_configuration_set_tracking_options_errors(), tuple()}.
create_configuration_set_tracking_options(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_configuration_set_tracking_options(Client, Input, []).

-spec create_configuration_set_tracking_options(aws_client:aws_client(), create_configuration_set_tracking_options_request(), proplists:proplist()) ->
    {ok, create_configuration_set_tracking_options_response(), tuple()} |
    {error, any()} |
    {error, create_configuration_set_tracking_options_errors(), tuple()}.
create_configuration_set_tracking_options(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateConfigurationSetTrackingOptions">>, Input, Options).

%% @doc Creates a new custom verification email template.
%%
%% For more information about custom verification email templates, see Using
%% Custom Verification Email Templates:
%% https://docs.aws.amazon.com/ses/latest/dg/creating-identities.html#send-email-verify-address-custom
%% in the Amazon SES Developer
%% Guide.
%%
%% You can execute this operation no more than once per second.
-spec create_custom_verification_email_template(aws_client:aws_client(), create_custom_verification_email_template_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, create_custom_verification_email_template_errors(), tuple()}.
create_custom_verification_email_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_custom_verification_email_template(Client, Input, []).

-spec create_custom_verification_email_template(aws_client:aws_client(), create_custom_verification_email_template_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, create_custom_verification_email_template_errors(), tuple()}.
create_custom_verification_email_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCustomVerificationEmailTemplate">>, Input, Options).

%% @doc Creates a new IP address filter.
%%
%% For information about setting up IP address filters, see the Amazon SES
%% Developer Guide:
%% https://docs.aws.amazon.com/ses/latest/dg/receiving-email-ip-filtering-console-walkthrough.html.
%%
%% You can execute this operation no more than once per second.
-spec create_receipt_filter(aws_client:aws_client(), create_receipt_filter_request()) ->
    {ok, create_receipt_filter_response(), tuple()} |
    {error, any()} |
    {error, create_receipt_filter_errors(), tuple()}.
create_receipt_filter(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_receipt_filter(Client, Input, []).

-spec create_receipt_filter(aws_client:aws_client(), create_receipt_filter_request(), proplists:proplist()) ->
    {ok, create_receipt_filter_response(), tuple()} |
    {error, any()} |
    {error, create_receipt_filter_errors(), tuple()}.
create_receipt_filter(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateReceiptFilter">>, Input, Options).

%% @doc Creates a receipt rule.
%%
%% For information about setting up receipt rules, see the Amazon SES
%% Developer Guide:
%% https://docs.aws.amazon.com/ses/latest/dg/receiving-email-receipt-rules-console-walkthrough.html.
%%
%% You can execute this operation no more than once per second.
-spec create_receipt_rule(aws_client:aws_client(), create_receipt_rule_request()) ->
    {ok, create_receipt_rule_response(), tuple()} |
    {error, any()} |
    {error, create_receipt_rule_errors(), tuple()}.
create_receipt_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_receipt_rule(Client, Input, []).

-spec create_receipt_rule(aws_client:aws_client(), create_receipt_rule_request(), proplists:proplist()) ->
    {ok, create_receipt_rule_response(), tuple()} |
    {error, any()} |
    {error, create_receipt_rule_errors(), tuple()}.
create_receipt_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateReceiptRule">>, Input, Options).

%% @doc Creates an empty receipt rule set.
%%
%% For information about setting up receipt rule sets, see the Amazon SES
%% Developer Guide:
%% https://docs.aws.amazon.com/ses/latest/dg/receiving-email-concepts.html#receiving-email-concepts-rules.
%%
%% You can execute this operation no more than once per second.
-spec create_receipt_rule_set(aws_client:aws_client(), create_receipt_rule_set_request()) ->
    {ok, create_receipt_rule_set_response(), tuple()} |
    {error, any()} |
    {error, create_receipt_rule_set_errors(), tuple()}.
create_receipt_rule_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_receipt_rule_set(Client, Input, []).

-spec create_receipt_rule_set(aws_client:aws_client(), create_receipt_rule_set_request(), proplists:proplist()) ->
    {ok, create_receipt_rule_set_response(), tuple()} |
    {error, any()} |
    {error, create_receipt_rule_set_errors(), tuple()}.
create_receipt_rule_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateReceiptRuleSet">>, Input, Options).

%% @doc Creates an email template.
%%
%% Email templates enable you to send personalized email to
%% one or more destinations in a single operation. For more information, see
%% the Amazon SES
%% Developer Guide:
%% https://docs.aws.amazon.com/ses/latest/dg/send-personalized-email-api.html.
%%
%% You can execute this operation no more than once per second.
-spec create_template(aws_client:aws_client(), create_template_request()) ->
    {ok, create_template_response(), tuple()} |
    {error, any()} |
    {error, create_template_errors(), tuple()}.
create_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_template(Client, Input, []).

-spec create_template(aws_client:aws_client(), create_template_request(), proplists:proplist()) ->
    {ok, create_template_response(), tuple()} |
    {error, any()} |
    {error, create_template_errors(), tuple()}.
create_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTemplate">>, Input, Options).

%% @doc Deletes a configuration set.
%%
%% Configuration sets enable you to publish email sending
%% events. For information about using configuration sets, see the Amazon SES
%% Developer Guide:
%% https://docs.aws.amazon.com/ses/latest/dg/monitor-sending-activity.html.
%%
%% You can execute this operation no more than once per second.
-spec delete_configuration_set(aws_client:aws_client(), delete_configuration_set_request()) ->
    {ok, delete_configuration_set_response(), tuple()} |
    {error, any()} |
    {error, delete_configuration_set_errors(), tuple()}.
delete_configuration_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_configuration_set(Client, Input, []).

-spec delete_configuration_set(aws_client:aws_client(), delete_configuration_set_request(), proplists:proplist()) ->
    {ok, delete_configuration_set_response(), tuple()} |
    {error, any()} |
    {error, delete_configuration_set_errors(), tuple()}.
delete_configuration_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteConfigurationSet">>, Input, Options).

%% @doc Deletes a configuration set event destination.
%%
%% Configuration set event destinations
%% are associated with configuration sets, which enable you to publish email
%% sending
%% events. For information about using configuration sets, see the Amazon SES
%% Developer Guide:
%% https://docs.aws.amazon.com/ses/latest/dg/monitor-sending-activity.html.
%%
%% You can execute this operation no more than once per second.
-spec delete_configuration_set_event_destination(aws_client:aws_client(), delete_configuration_set_event_destination_request()) ->
    {ok, delete_configuration_set_event_destination_response(), tuple()} |
    {error, any()} |
    {error, delete_configuration_set_event_destination_errors(), tuple()}.
delete_configuration_set_event_destination(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_configuration_set_event_destination(Client, Input, []).

-spec delete_configuration_set_event_destination(aws_client:aws_client(), delete_configuration_set_event_destination_request(), proplists:proplist()) ->
    {ok, delete_configuration_set_event_destination_response(), tuple()} |
    {error, any()} |
    {error, delete_configuration_set_event_destination_errors(), tuple()}.
delete_configuration_set_event_destination(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteConfigurationSetEventDestination">>, Input, Options).

%% @doc Deletes an association between a configuration set and a custom
%% domain for open and
%% click event tracking.
%%
%% By default, images and links used for tracking open and click events are
%% hosted on
%% domains operated by Amazon SES. You can configure a subdomain of your own
%% to handle these
%% events. For information about using custom domains, see the Amazon SES
%% Developer Guide:
%% https://docs.aws.amazon.com/ses/latest/dg/configure-custom-open-click-domains.html.
%%
%% Deleting this kind of association results in emails sent using the
%% specified
%% configuration set to capture open and click events using the standard,
%% Amazon SES-operated domains.
-spec delete_configuration_set_tracking_options(aws_client:aws_client(), delete_configuration_set_tracking_options_request()) ->
    {ok, delete_configuration_set_tracking_options_response(), tuple()} |
    {error, any()} |
    {error, delete_configuration_set_tracking_options_errors(), tuple()}.
delete_configuration_set_tracking_options(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_configuration_set_tracking_options(Client, Input, []).

-spec delete_configuration_set_tracking_options(aws_client:aws_client(), delete_configuration_set_tracking_options_request(), proplists:proplist()) ->
    {ok, delete_configuration_set_tracking_options_response(), tuple()} |
    {error, any()} |
    {error, delete_configuration_set_tracking_options_errors(), tuple()}.
delete_configuration_set_tracking_options(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteConfigurationSetTrackingOptions">>, Input, Options).

%% @doc Deletes an existing custom verification email template.
%%
%% For more information about custom verification email templates, see Using
%% Custom Verification Email Templates:
%% https://docs.aws.amazon.com/ses/latest/dg/creating-identities.html#send-email-verify-address-custom
%% in the Amazon SES Developer
%% Guide.
%%
%% You can execute this operation no more than once per second.
-spec delete_custom_verification_email_template(aws_client:aws_client(), delete_custom_verification_email_template_request()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
delete_custom_verification_email_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_custom_verification_email_template(Client, Input, []).

-spec delete_custom_verification_email_template(aws_client:aws_client(), delete_custom_verification_email_template_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
delete_custom_verification_email_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCustomVerificationEmailTemplate">>, Input, Options).

%% @doc Deletes the specified identity (an email address or a domain) from
%% the list of
%% verified identities.
%%
%% You can execute this operation no more than once per second.
-spec delete_identity(aws_client:aws_client(), delete_identity_request()) ->
    {ok, delete_identity_response(), tuple()} |
    {error, any()}.
delete_identity(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_identity(Client, Input, []).

-spec delete_identity(aws_client:aws_client(), delete_identity_request(), proplists:proplist()) ->
    {ok, delete_identity_response(), tuple()} |
    {error, any()}.
delete_identity(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteIdentity">>, Input, Options).

%% @doc Deletes the specified sending authorization policy for the given
%% identity (an email
%% address or a domain).
%%
%% This operation returns successfully even if a policy with the
%% specified name does not exist.
%%
%% This operation is for the identity owner only. If you have not verified
%% the
%% identity, it returns an error.
%%
%% Sending authorization is a feature that enables an identity owner to
%% authorize other
%% senders to use its identities. For information about using sending
%% authorization, see
%% the Amazon SES
%% Developer Guide:
%% https://docs.aws.amazon.com/ses/latest/dg/sending-authorization.html.
%%
%% You can execute this operation no more than once per second.
-spec delete_identity_policy(aws_client:aws_client(), delete_identity_policy_request()) ->
    {ok, delete_identity_policy_response(), tuple()} |
    {error, any()}.
delete_identity_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_identity_policy(Client, Input, []).

-spec delete_identity_policy(aws_client:aws_client(), delete_identity_policy_request(), proplists:proplist()) ->
    {ok, delete_identity_policy_response(), tuple()} |
    {error, any()}.
delete_identity_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteIdentityPolicy">>, Input, Options).

%% @doc Deletes the specified IP address filter.
%%
%% For information about managing IP address filters, see the Amazon SES
%% Developer Guide:
%% https://docs.aws.amazon.com/ses/latest/dg/receiving-email-ip-filtering-console-walkthrough.html.
%%
%% You can execute this operation no more than once per second.
-spec delete_receipt_filter(aws_client:aws_client(), delete_receipt_filter_request()) ->
    {ok, delete_receipt_filter_response(), tuple()} |
    {error, any()}.
delete_receipt_filter(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_receipt_filter(Client, Input, []).

-spec delete_receipt_filter(aws_client:aws_client(), delete_receipt_filter_request(), proplists:proplist()) ->
    {ok, delete_receipt_filter_response(), tuple()} |
    {error, any()}.
delete_receipt_filter(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteReceiptFilter">>, Input, Options).

%% @doc Deletes the specified receipt rule.
%%
%% For information about managing receipt rules, see the Amazon SES
%% Developer Guide:
%% https://docs.aws.amazon.com/ses/latest/dg/receiving-email-receipt-rules-console-walkthrough.html.
%%
%% You can execute this operation no more than once per second.
-spec delete_receipt_rule(aws_client:aws_client(), delete_receipt_rule_request()) ->
    {ok, delete_receipt_rule_response(), tuple()} |
    {error, any()} |
    {error, delete_receipt_rule_errors(), tuple()}.
delete_receipt_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_receipt_rule(Client, Input, []).

-spec delete_receipt_rule(aws_client:aws_client(), delete_receipt_rule_request(), proplists:proplist()) ->
    {ok, delete_receipt_rule_response(), tuple()} |
    {error, any()} |
    {error, delete_receipt_rule_errors(), tuple()}.
delete_receipt_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteReceiptRule">>, Input, Options).

%% @doc Deletes the specified receipt rule set and all of the receipt rules
%% it
%% contains.
%%
%% The currently active rule set cannot be deleted.
%%
%% For information about managing receipt rule sets, see the Amazon SES
%% Developer Guide:
%% https://docs.aws.amazon.com/ses/latest/dg/receiving-email-receipt-rules-console-walkthrough.html.
%%
%% You can execute this operation no more than once per second.
-spec delete_receipt_rule_set(aws_client:aws_client(), delete_receipt_rule_set_request()) ->
    {ok, delete_receipt_rule_set_response(), tuple()} |
    {error, any()} |
    {error, delete_receipt_rule_set_errors(), tuple()}.
delete_receipt_rule_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_receipt_rule_set(Client, Input, []).

-spec delete_receipt_rule_set(aws_client:aws_client(), delete_receipt_rule_set_request(), proplists:proplist()) ->
    {ok, delete_receipt_rule_set_response(), tuple()} |
    {error, any()} |
    {error, delete_receipt_rule_set_errors(), tuple()}.
delete_receipt_rule_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteReceiptRuleSet">>, Input, Options).

%% @doc Deletes an email template.
%%
%% You can execute this operation no more than once per second.
-spec delete_template(aws_client:aws_client(), delete_template_request()) ->
    {ok, delete_template_response(), tuple()} |
    {error, any()}.
delete_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_template(Client, Input, []).

-spec delete_template(aws_client:aws_client(), delete_template_request(), proplists:proplist()) ->
    {ok, delete_template_response(), tuple()} |
    {error, any()}.
delete_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTemplate">>, Input, Options).

%% @doc Deprecated.
%%
%% Use the `DeleteIdentity' operation to delete email addresses
%% and domains.
-spec delete_verified_email_address(aws_client:aws_client(), delete_verified_email_address_request()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
delete_verified_email_address(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_verified_email_address(Client, Input, []).

-spec delete_verified_email_address(aws_client:aws_client(), delete_verified_email_address_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
delete_verified_email_address(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteVerifiedEmailAddress">>, Input, Options).

%% @doc Returns the metadata and receipt rules for the receipt rule set that
%% is currently
%% active.
%%
%% For information about setting up receipt rule sets, see the Amazon SES
%% Developer Guide:
%% https://docs.aws.amazon.com/ses/latest/dg/receiving-email-concepts.html#receiving-email-concepts-rules.
%%
%% You can execute this operation no more than once per second.
-spec describe_active_receipt_rule_set(aws_client:aws_client(), describe_active_receipt_rule_set_request()) ->
    {ok, describe_active_receipt_rule_set_response(), tuple()} |
    {error, any()}.
describe_active_receipt_rule_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_active_receipt_rule_set(Client, Input, []).

-spec describe_active_receipt_rule_set(aws_client:aws_client(), describe_active_receipt_rule_set_request(), proplists:proplist()) ->
    {ok, describe_active_receipt_rule_set_response(), tuple()} |
    {error, any()}.
describe_active_receipt_rule_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeActiveReceiptRuleSet">>, Input, Options).

%% @doc Returns the details of the specified configuration set.
%%
%% For information about using
%% configuration sets, see the Amazon SES Developer
%% Guide:
%% https://docs.aws.amazon.com/ses/latest/dg/monitor-sending-activity.html.
%%
%% You can execute this operation no more than once per second.
-spec describe_configuration_set(aws_client:aws_client(), describe_configuration_set_request()) ->
    {ok, describe_configuration_set_response(), tuple()} |
    {error, any()} |
    {error, describe_configuration_set_errors(), tuple()}.
describe_configuration_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_configuration_set(Client, Input, []).

-spec describe_configuration_set(aws_client:aws_client(), describe_configuration_set_request(), proplists:proplist()) ->
    {ok, describe_configuration_set_response(), tuple()} |
    {error, any()} |
    {error, describe_configuration_set_errors(), tuple()}.
describe_configuration_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeConfigurationSet">>, Input, Options).

%% @doc Returns the details of the specified receipt rule.
%%
%% For information about setting up receipt rules, see the Amazon SES
%% Developer Guide:
%% https://docs.aws.amazon.com/ses/latest/dg/receiving-email-receipt-rules-console-walkthrough.html.
%%
%% You can execute this operation no more than once per second.
-spec describe_receipt_rule(aws_client:aws_client(), describe_receipt_rule_request()) ->
    {ok, describe_receipt_rule_response(), tuple()} |
    {error, any()} |
    {error, describe_receipt_rule_errors(), tuple()}.
describe_receipt_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_receipt_rule(Client, Input, []).

-spec describe_receipt_rule(aws_client:aws_client(), describe_receipt_rule_request(), proplists:proplist()) ->
    {ok, describe_receipt_rule_response(), tuple()} |
    {error, any()} |
    {error, describe_receipt_rule_errors(), tuple()}.
describe_receipt_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeReceiptRule">>, Input, Options).

%% @doc Returns the details of the specified receipt rule set.
%%
%% For information about managing receipt rule sets, see the Amazon SES
%% Developer Guide:
%% https://docs.aws.amazon.com/ses/latest/dg/receiving-email-receipt-rules-console-walkthrough.html.
%%
%% You can execute this operation no more than once per second.
-spec describe_receipt_rule_set(aws_client:aws_client(), describe_receipt_rule_set_request()) ->
    {ok, describe_receipt_rule_set_response(), tuple()} |
    {error, any()} |
    {error, describe_receipt_rule_set_errors(), tuple()}.
describe_receipt_rule_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_receipt_rule_set(Client, Input, []).

-spec describe_receipt_rule_set(aws_client:aws_client(), describe_receipt_rule_set_request(), proplists:proplist()) ->
    {ok, describe_receipt_rule_set_response(), tuple()} |
    {error, any()} |
    {error, describe_receipt_rule_set_errors(), tuple()}.
describe_receipt_rule_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeReceiptRuleSet">>, Input, Options).

%% @doc Returns the email sending status of the Amazon SES account for the
%% current Region.
%%
%% You can execute this operation no more than once per second.
-spec get_account_sending_enabled(aws_client:aws_client(), #{}) ->
    {ok, get_account_sending_enabled_response(), tuple()} |
    {error, any()}.
get_account_sending_enabled(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_account_sending_enabled(Client, Input, []).

-spec get_account_sending_enabled(aws_client:aws_client(), #{}, proplists:proplist()) ->
    {ok, get_account_sending_enabled_response(), tuple()} |
    {error, any()}.
get_account_sending_enabled(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAccountSendingEnabled">>, Input, Options).

%% @doc Returns the custom email verification template for the template name
%% you
%% specify.
%%
%% For more information about custom verification email templates, see Using
%% Custom Verification Email Templates:
%% https://docs.aws.amazon.com/ses/latest/dg/creating-identities.html#send-email-verify-address-custom
%% in the Amazon SES Developer
%% Guide.
%%
%% You can execute this operation no more than once per second.
-spec get_custom_verification_email_template(aws_client:aws_client(), get_custom_verification_email_template_request()) ->
    {ok, get_custom_verification_email_template_response(), tuple()} |
    {error, any()} |
    {error, get_custom_verification_email_template_errors(), tuple()}.
get_custom_verification_email_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_custom_verification_email_template(Client, Input, []).

-spec get_custom_verification_email_template(aws_client:aws_client(), get_custom_verification_email_template_request(), proplists:proplist()) ->
    {ok, get_custom_verification_email_template_response(), tuple()} |
    {error, any()} |
    {error, get_custom_verification_email_template_errors(), tuple()}.
get_custom_verification_email_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCustomVerificationEmailTemplate">>, Input, Options).

%% @doc Returns the current status of Easy DKIM signing for an entity.
%%
%% For domain name
%% identities, this operation also returns the DKIM tokens that are required
%% for Easy DKIM
%% signing, and whether Amazon SES has successfully verified that these
%% tokens have been
%% published.
%%
%% This operation takes a list of identities as input and returns the
%% following
%% information for each:
%%
%% Whether Easy DKIM signing is enabled or disabled.
%%
%% A set of DKIM tokens that represent the identity. If the identity is an
%% email
%% address, the tokens represent the domain of that address.
%%
%% Whether Amazon SES has successfully verified the DKIM tokens published in
%% the
%% domain's DNS. This information is only returned for domain name
%% identities, not
%% for email addresses.
%%
%% This operation is throttled at one request per second and can only get
%% DKIM attributes
%% for up to 100 identities at a time.
%%
%% For more information about creating DNS records using DKIM tokens, go to
%% the Amazon SES
%% Developer Guide:
%% https://docs.aws.amazon.com/ses/latest/dg/send-email-authentication-dkim-easy-managing.html.
-spec get_identity_dkim_attributes(aws_client:aws_client(), get_identity_dkim_attributes_request()) ->
    {ok, get_identity_dkim_attributes_response(), tuple()} |
    {error, any()}.
get_identity_dkim_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_identity_dkim_attributes(Client, Input, []).

-spec get_identity_dkim_attributes(aws_client:aws_client(), get_identity_dkim_attributes_request(), proplists:proplist()) ->
    {ok, get_identity_dkim_attributes_response(), tuple()} |
    {error, any()}.
get_identity_dkim_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetIdentityDkimAttributes">>, Input, Options).

%% @doc Returns the custom MAIL FROM attributes for a list of identities
%% (email addresses :
%% domains).
%%
%% This operation is throttled at one request per second and can only get
%% custom MAIL
%% FROM attributes for up to 100 identities at a time.
-spec get_identity_mail_from_domain_attributes(aws_client:aws_client(), get_identity_mail_from_domain_attributes_request()) ->
    {ok, get_identity_mail_from_domain_attributes_response(), tuple()} |
    {error, any()}.
get_identity_mail_from_domain_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_identity_mail_from_domain_attributes(Client, Input, []).

-spec get_identity_mail_from_domain_attributes(aws_client:aws_client(), get_identity_mail_from_domain_attributes_request(), proplists:proplist()) ->
    {ok, get_identity_mail_from_domain_attributes_response(), tuple()} |
    {error, any()}.
get_identity_mail_from_domain_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetIdentityMailFromDomainAttributes">>, Input, Options).

%% @doc Given a list of verified identities (email addresses and/or domains),
%% returns a
%% structure describing identity notification attributes.
%%
%% This operation is throttled at one request per second and can only get
%% notification
%% attributes for up to 100 identities at a time.
%%
%% For more information about using notifications with Amazon SES, see the
%% Amazon SES
%% Developer Guide:
%% https://docs.aws.amazon.com/ses/latest/dg/monitor-sending-activity-using-notifications.html.
-spec get_identity_notification_attributes(aws_client:aws_client(), get_identity_notification_attributes_request()) ->
    {ok, get_identity_notification_attributes_response(), tuple()} |
    {error, any()}.
get_identity_notification_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_identity_notification_attributes(Client, Input, []).

-spec get_identity_notification_attributes(aws_client:aws_client(), get_identity_notification_attributes_request(), proplists:proplist()) ->
    {ok, get_identity_notification_attributes_response(), tuple()} |
    {error, any()}.
get_identity_notification_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetIdentityNotificationAttributes">>, Input, Options).

%% @doc Returns the requested sending authorization policies for the given
%% identity (an email
%% address or a domain).
%%
%% The policies are returned as a map of policy names to policy
%% contents. You can retrieve a maximum of 20 policies at a time.
%%
%% This operation is for the identity owner only. If you have not verified
%% the
%% identity, it returns an error.
%%
%% Sending authorization is a feature that enables an identity owner to
%% authorize other
%% senders to use its identities. For information about using sending
%% authorization, see
%% the Amazon SES
%% Developer Guide:
%% https://docs.aws.amazon.com/ses/latest/dg/sending-authorization.html.
%%
%% You can execute this operation no more than once per second.
-spec get_identity_policies(aws_client:aws_client(), get_identity_policies_request()) ->
    {ok, get_identity_policies_response(), tuple()} |
    {error, any()}.
get_identity_policies(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_identity_policies(Client, Input, []).

-spec get_identity_policies(aws_client:aws_client(), get_identity_policies_request(), proplists:proplist()) ->
    {ok, get_identity_policies_response(), tuple()} |
    {error, any()}.
get_identity_policies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetIdentityPolicies">>, Input, Options).

%% @doc Given a list of identities (email addresses and/or domains), returns
%% the verification
%% status and (for domain identities) the verification token for each
%% identity.
%%
%% The verification status of an email address is &quot;Pending&quot; until
%% the email address owner
%% clicks the link within the verification email that Amazon SES sent to that
%% address. If the
%% email address owner clicks the link within 24 hours, the verification
%% status of the
%% email address changes to &quot;Success&quot;. If the link is not clicked
%% within 24 hours, the
%% verification status changes to &quot;Failed.&quot; In that case, to verify
%% the email address, you
%% must restart the verification process from the beginning.
%%
%% For domain identities, the domain's verification status is
%% &quot;Pending&quot; as Amazon SES searches
%% for the required TXT record in the DNS settings of the domain. When Amazon
%% SES detects the
%% record, the domain's verification status changes to
%% &quot;Success&quot;. If Amazon SES is unable to
%% detect the record within 72 hours, the domain's verification status
%% changes to &quot;Failed.&quot;
%% In that case, to verify the domain, you must restart the verification
%% process from the
%% beginning.
%%
%% This operation is throttled at one request per second and can only get
%% verification
%% attributes for up to 100 identities at a time.
-spec get_identity_verification_attributes(aws_client:aws_client(), get_identity_verification_attributes_request()) ->
    {ok, get_identity_verification_attributes_response(), tuple()} |
    {error, any()}.
get_identity_verification_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_identity_verification_attributes(Client, Input, []).

-spec get_identity_verification_attributes(aws_client:aws_client(), get_identity_verification_attributes_request(), proplists:proplist()) ->
    {ok, get_identity_verification_attributes_response(), tuple()} |
    {error, any()}.
get_identity_verification_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetIdentityVerificationAttributes">>, Input, Options).

%% @doc Provides the sending limits for the Amazon SES account.
%%
%% You can execute this operation no more than once per second.
-spec get_send_quota(aws_client:aws_client(), #{}) ->
    {ok, get_send_quota_response(), tuple()} |
    {error, any()}.
get_send_quota(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_send_quota(Client, Input, []).

-spec get_send_quota(aws_client:aws_client(), #{}, proplists:proplist()) ->
    {ok, get_send_quota_response(), tuple()} |
    {error, any()}.
get_send_quota(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSendQuota">>, Input, Options).

%% @doc Provides sending statistics for the current Amazon Web Services
%% Region.
%%
%% The result is a list of data
%% points, representing the last two weeks of sending activity. Each data
%% point in the list
%% contains statistics for a 15-minute period of time.
%%
%% You can execute this operation no more than once per second.
-spec get_send_statistics(aws_client:aws_client(), #{}) ->
    {ok, get_send_statistics_response(), tuple()} |
    {error, any()}.
get_send_statistics(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_send_statistics(Client, Input, []).

-spec get_send_statistics(aws_client:aws_client(), #{}, proplists:proplist()) ->
    {ok, get_send_statistics_response(), tuple()} |
    {error, any()}.
get_send_statistics(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSendStatistics">>, Input, Options).

%% @doc Displays the template object (which includes the Subject line, HTML
%% part and text
%% part) for the template you specify.
%%
%% You can execute this operation no more than once per second.
-spec get_template(aws_client:aws_client(), get_template_request()) ->
    {ok, get_template_response(), tuple()} |
    {error, any()} |
    {error, get_template_errors(), tuple()}.
get_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_template(Client, Input, []).

-spec get_template(aws_client:aws_client(), get_template_request(), proplists:proplist()) ->
    {ok, get_template_response(), tuple()} |
    {error, any()} |
    {error, get_template_errors(), tuple()}.
get_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTemplate">>, Input, Options).

%% @doc Provides a list of the configuration sets associated with your Amazon
%% SES account in the
%% current Amazon Web Services Region.
%%
%% For information about using configuration sets, see Monitoring
%% Your Amazon SES Sending Activity:
%% https://docs.aws.amazon.com/ses/latest/dg/monitor-sending-activity.html in
%% the Amazon SES Developer
%% Guide.
%%
%% You can execute this operation no more than once per second. This
%% operation returns up
%% to 1,000 configuration sets each time it is run. If your Amazon SES
%% account has more than
%% 1,000 configuration sets, this operation also returns `NextToken'. You
%% can
%% then execute the `ListConfigurationSets' operation again, passing the
%% `NextToken' parameter and the value of the NextToken element to
%% retrieve
%% additional results.
-spec list_configuration_sets(aws_client:aws_client(), list_configuration_sets_request()) ->
    {ok, list_configuration_sets_response(), tuple()} |
    {error, any()}.
list_configuration_sets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_configuration_sets(Client, Input, []).

-spec list_configuration_sets(aws_client:aws_client(), list_configuration_sets_request(), proplists:proplist()) ->
    {ok, list_configuration_sets_response(), tuple()} |
    {error, any()}.
list_configuration_sets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListConfigurationSets">>, Input, Options).

%% @doc Lists the existing custom verification email templates for your
%% account in the current
%% Amazon Web Services Region.
%%
%% For more information about custom verification email templates, see Using
%% Custom Verification Email Templates:
%% https://docs.aws.amazon.com/ses/latest/dg/creating-identities.html#send-email-verify-address-custom
%% in the Amazon SES Developer
%% Guide.
%%
%% You can execute this operation no more than once per second.
-spec list_custom_verification_email_templates(aws_client:aws_client(), list_custom_verification_email_templates_request()) ->
    {ok, list_custom_verification_email_templates_response(), tuple()} |
    {error, any()}.
list_custom_verification_email_templates(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_custom_verification_email_templates(Client, Input, []).

-spec list_custom_verification_email_templates(aws_client:aws_client(), list_custom_verification_email_templates_request(), proplists:proplist()) ->
    {ok, list_custom_verification_email_templates_response(), tuple()} |
    {error, any()}.
list_custom_verification_email_templates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCustomVerificationEmailTemplates">>, Input, Options).

%% @doc Returns a list containing all of the identities (email addresses and
%% domains) for your
%% Amazon Web Services account in the current Amazon Web Services Region,
%% regardless of verification status.
%%
%% You can execute this operation no more than once per second.
%%
%% It's recommended that for successive pagination calls of this API, you
%% continue to
%% the use the same parameter/value pairs as used in the original call, e.g.,
%% if you
%% used `IdentityType=Domain' in the the original call and received a
%% `NextToken' in the response, you should continue providing the
%% `IdentityType=Domain' parameter for further `NextToken'
%% calls; however, if you didn't provide the `IdentityType' parameter
%% in the
%% original call, then continue to not provide it for successive pagination
%% calls.
%% Using this protocol will ensure consistent results.
-spec list_identities(aws_client:aws_client(), list_identities_request()) ->
    {ok, list_identities_response(), tuple()} |
    {error, any()}.
list_identities(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_identities(Client, Input, []).

-spec list_identities(aws_client:aws_client(), list_identities_request(), proplists:proplist()) ->
    {ok, list_identities_response(), tuple()} |
    {error, any()}.
list_identities(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListIdentities">>, Input, Options).

%% @doc Returns a list of sending authorization policies that are attached to
%% the given
%% identity (an email address or a domain).
%%
%% This operation returns only a list. To get the
%% actual policy content, use `GetIdentityPolicies'.
%%
%% This operation is for the identity owner only. If you have not verified
%% the
%% identity, it returns an error.
%%
%% Sending authorization is a feature that enables an identity owner to
%% authorize other
%% senders to use its identities. For information about using sending
%% authorization, see
%% the Amazon SES
%% Developer Guide:
%% https://docs.aws.amazon.com/ses/latest/dg/sending-authorization.html.
%%
%% You can execute this operation no more than once per second.
-spec list_identity_policies(aws_client:aws_client(), list_identity_policies_request()) ->
    {ok, list_identity_policies_response(), tuple()} |
    {error, any()}.
list_identity_policies(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_identity_policies(Client, Input, []).

-spec list_identity_policies(aws_client:aws_client(), list_identity_policies_request(), proplists:proplist()) ->
    {ok, list_identity_policies_response(), tuple()} |
    {error, any()}.
list_identity_policies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListIdentityPolicies">>, Input, Options).

%% @doc Lists the IP address filters associated with your Amazon Web Services
%% account in the current
%% Amazon Web Services Region.
%%
%% For information about managing IP address filters, see the Amazon SES
%% Developer Guide:
%% https://docs.aws.amazon.com/ses/latest/dg/receiving-email-ip-filtering-console-walkthrough.html.
%%
%% You can execute this operation no more than once per second.
-spec list_receipt_filters(aws_client:aws_client(), list_receipt_filters_request()) ->
    {ok, list_receipt_filters_response(), tuple()} |
    {error, any()}.
list_receipt_filters(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_receipt_filters(Client, Input, []).

-spec list_receipt_filters(aws_client:aws_client(), list_receipt_filters_request(), proplists:proplist()) ->
    {ok, list_receipt_filters_response(), tuple()} |
    {error, any()}.
list_receipt_filters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListReceiptFilters">>, Input, Options).

%% @doc Lists the receipt rule sets that exist under your Amazon Web Services
%% account in the current
%% Amazon Web Services Region.
%%
%% If there are additional receipt rule sets to be retrieved, you receive a
%% `NextToken' that you can provide to the next call to
%% `ListReceiptRuleSets' to retrieve the additional entries.
%%
%% For information about managing receipt rule sets, see the Amazon SES
%% Developer Guide:
%% https://docs.aws.amazon.com/ses/latest/dg/receiving-email-receipt-rules-console-walkthrough.html.
%%
%% You can execute this operation no more than once per second.
-spec list_receipt_rule_sets(aws_client:aws_client(), list_receipt_rule_sets_request()) ->
    {ok, list_receipt_rule_sets_response(), tuple()} |
    {error, any()}.
list_receipt_rule_sets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_receipt_rule_sets(Client, Input, []).

-spec list_receipt_rule_sets(aws_client:aws_client(), list_receipt_rule_sets_request(), proplists:proplist()) ->
    {ok, list_receipt_rule_sets_response(), tuple()} |
    {error, any()}.
list_receipt_rule_sets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListReceiptRuleSets">>, Input, Options).

%% @doc Lists the email templates present in your Amazon SES account in the
%% current
%% Amazon Web Services Region.
%%
%% You can execute this operation no more than once per second.
-spec list_templates(aws_client:aws_client(), list_templates_request()) ->
    {ok, list_templates_response(), tuple()} |
    {error, any()}.
list_templates(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_templates(Client, Input, []).

-spec list_templates(aws_client:aws_client(), list_templates_request(), proplists:proplist()) ->
    {ok, list_templates_response(), tuple()} |
    {error, any()}.
list_templates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTemplates">>, Input, Options).

%% @doc Deprecated.
%%
%% Use the `ListIdentities' operation to list the email addresses
%% and domains associated with your account.
-spec list_verified_email_addresses(aws_client:aws_client(), #{}) ->
    {ok, list_verified_email_addresses_response(), tuple()} |
    {error, any()}.
list_verified_email_addresses(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_verified_email_addresses(Client, Input, []).

-spec list_verified_email_addresses(aws_client:aws_client(), #{}, proplists:proplist()) ->
    {ok, list_verified_email_addresses_response(), tuple()} |
    {error, any()}.
list_verified_email_addresses(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListVerifiedEmailAddresses">>, Input, Options).

%% @doc Adds or updates the delivery options for a configuration set.
-spec put_configuration_set_delivery_options(aws_client:aws_client(), put_configuration_set_delivery_options_request()) ->
    {ok, put_configuration_set_delivery_options_response(), tuple()} |
    {error, any()} |
    {error, put_configuration_set_delivery_options_errors(), tuple()}.
put_configuration_set_delivery_options(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_configuration_set_delivery_options(Client, Input, []).

-spec put_configuration_set_delivery_options(aws_client:aws_client(), put_configuration_set_delivery_options_request(), proplists:proplist()) ->
    {ok, put_configuration_set_delivery_options_response(), tuple()} |
    {error, any()} |
    {error, put_configuration_set_delivery_options_errors(), tuple()}.
put_configuration_set_delivery_options(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutConfigurationSetDeliveryOptions">>, Input, Options).

%% @doc Adds or updates a sending authorization policy for the specified
%% identity (an email
%% address or a domain).
%%
%% This operation is for the identity owner only. If you have not verified
%% the
%% identity, it returns an error.
%%
%% Sending authorization is a feature that enables an identity owner to
%% authorize other
%% senders to use its identities. For information about using sending
%% authorization, see
%% the Amazon SES
%% Developer Guide:
%% https://docs.aws.amazon.com/ses/latest/dg/sending-authorization.html.
%%
%% You can execute this operation no more than once per second.
-spec put_identity_policy(aws_client:aws_client(), put_identity_policy_request()) ->
    {ok, put_identity_policy_response(), tuple()} |
    {error, any()} |
    {error, put_identity_policy_errors(), tuple()}.
put_identity_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_identity_policy(Client, Input, []).

-spec put_identity_policy(aws_client:aws_client(), put_identity_policy_request(), proplists:proplist()) ->
    {ok, put_identity_policy_response(), tuple()} |
    {error, any()} |
    {error, put_identity_policy_errors(), tuple()}.
put_identity_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutIdentityPolicy">>, Input, Options).

%% @doc Reorders the receipt rules within a receipt rule set.
%%
%% All of the rules in the rule set must be represented in this request. That
%% is, it
%% is error if the reorder request doesn't explicitly position all of the
%% rules.
%%
%% For information about managing receipt rule sets, see the Amazon SES
%% Developer Guide:
%% https://docs.aws.amazon.com/ses/latest/dg/receiving-email-receipt-rules-console-walkthrough.html.
%%
%% You can execute this operation no more than once per second.
-spec reorder_receipt_rule_set(aws_client:aws_client(), reorder_receipt_rule_set_request()) ->
    {ok, reorder_receipt_rule_set_response(), tuple()} |
    {error, any()} |
    {error, reorder_receipt_rule_set_errors(), tuple()}.
reorder_receipt_rule_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    reorder_receipt_rule_set(Client, Input, []).

-spec reorder_receipt_rule_set(aws_client:aws_client(), reorder_receipt_rule_set_request(), proplists:proplist()) ->
    {ok, reorder_receipt_rule_set_response(), tuple()} |
    {error, any()} |
    {error, reorder_receipt_rule_set_errors(), tuple()}.
reorder_receipt_rule_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ReorderReceiptRuleSet">>, Input, Options).

%% @doc Generates and sends a bounce message to the sender of an email you
%% received through
%% Amazon SES.
%%
%% You can only use this operation on an email up to 24 hours after you
%% receive
%% it.
%%
%% You cannot use this operation to send generic bounces for mail that was
%% not
%% received by Amazon SES.
%%
%% For information about receiving email through Amazon SES, see the Amazon
%% SES Developer
%% Guide: https://docs.aws.amazon.com/ses/latest/dg/receiving-email.html.
%%
%% You can execute this operation no more than once per second.
-spec send_bounce(aws_client:aws_client(), send_bounce_request()) ->
    {ok, send_bounce_response(), tuple()} |
    {error, any()} |
    {error, send_bounce_errors(), tuple()}.
send_bounce(Client, Input)
  when is_map(Client), is_map(Input) ->
    send_bounce(Client, Input, []).

-spec send_bounce(aws_client:aws_client(), send_bounce_request(), proplists:proplist()) ->
    {ok, send_bounce_response(), tuple()} |
    {error, any()} |
    {error, send_bounce_errors(), tuple()}.
send_bounce(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SendBounce">>, Input, Options).

%% @doc Composes an email message to multiple destinations.
%%
%% The message body is created using
%% an email template.
%%
%% To send email using this operation, your call must meet the following
%% requirements:
%%
%% The call must refer to an existing email template. You can create email
%% templates using `CreateTemplate'.
%%
%% The message must be sent from a verified email address or domain.
%%
%% If your account is still in the Amazon SES sandbox, you may send only to
%% verified
%% addresses or domains, or to email addresses associated with the Amazon SES
%% Mailbox
%% Simulator. For more information, see Verifying Email
%% Addresses and Domains:
%% https://docs.aws.amazon.com/ses/latest/dg/verify-addresses-and-domains.html
%% in the Amazon SES Developer
%% Guide.
%%
%% The maximum message size is 10 MB.
%%
%% Each `Destination' parameter must include at least one recipient
%% email address. The recipient address can be a To: address, a CC: address,
%% or a
%% BCC: address. If a recipient email address is invalid (that is, it is not
%% in the
%% format UserName@[SubDomain.]Domain.TopLevelDomain), the
%% entire message is rejected, even if the message contains other recipients
%% that
%% are valid.
%%
%% The message may not include more than 50 recipients, across the To:, CC:
%% and
%% BCC: fields. If you need to send an email message to a larger audience,
%% you can
%% divide your recipient list into groups of 50 or fewer, and then call the
%% `SendBulkTemplatedEmail' operation several times to send the
%% message to each group.
%%
%% The number of destinations you can contact in a single call can be limited
%% by
%% your account's maximum sending rate.
-spec send_bulk_templated_email(aws_client:aws_client(), send_bulk_templated_email_request()) ->
    {ok, send_bulk_templated_email_response(), tuple()} |
    {error, any()} |
    {error, send_bulk_templated_email_errors(), tuple()}.
send_bulk_templated_email(Client, Input)
  when is_map(Client), is_map(Input) ->
    send_bulk_templated_email(Client, Input, []).

-spec send_bulk_templated_email(aws_client:aws_client(), send_bulk_templated_email_request(), proplists:proplist()) ->
    {ok, send_bulk_templated_email_response(), tuple()} |
    {error, any()} |
    {error, send_bulk_templated_email_errors(), tuple()}.
send_bulk_templated_email(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SendBulkTemplatedEmail">>, Input, Options).

%% @doc Adds an email address to the list of identities for your Amazon SES
%% account in the current
%% Amazon Web Services Region and attempts to verify it.
%%
%% As a result of executing this operation, a
%% customized verification email is sent to the specified address.
%%
%% To use this operation, you must first create a custom verification email
%% template. For
%% more information about creating and using custom verification email
%% templates, see
%% Using
%% Custom Verification Email Templates:
%% https://docs.aws.amazon.com/ses/latest/dg/creating-identities.html#send-email-verify-address-custom
%% in the Amazon SES Developer
%% Guide.
%%
%% You can execute this operation no more than once per second.
-spec send_custom_verification_email(aws_client:aws_client(), send_custom_verification_email_request()) ->
    {ok, send_custom_verification_email_response(), tuple()} |
    {error, any()} |
    {error, send_custom_verification_email_errors(), tuple()}.
send_custom_verification_email(Client, Input)
  when is_map(Client), is_map(Input) ->
    send_custom_verification_email(Client, Input, []).

-spec send_custom_verification_email(aws_client:aws_client(), send_custom_verification_email_request(), proplists:proplist()) ->
    {ok, send_custom_verification_email_response(), tuple()} |
    {error, any()} |
    {error, send_custom_verification_email_errors(), tuple()}.
send_custom_verification_email(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SendCustomVerificationEmail">>, Input, Options).

%% @doc Composes an email message and immediately queues it for sending.
%%
%% To send email using
%% this operation, your message must meet the following requirements:
%%
%% The message must be sent from a verified email address or domain. If you
%% attempt to send email using a non-verified address or domain, the
%% operation
%% results in an &quot;Email address not verified&quot; error.
%%
%% If your account is still in the Amazon SES sandbox, you may only send to
%% verified
%% addresses or domains, or to email addresses associated with the Amazon SES
%% Mailbox
%% Simulator. For more information, see Verifying Email
%% Addresses and Domains:
%% https://docs.aws.amazon.com/ses/latest/dg/verify-addresses-and-domains.html
%% in the Amazon SES Developer
%% Guide.
%%
%% The maximum message size is 10 MB.
%%
%% The message must include at least one recipient email address. The
%% recipient
%% address can be a To: address, a CC: address, or a BCC: address. If a
%% recipient
%% email address is invalid (that is, it is not in the format
%% UserName@[SubDomain.]Domain.TopLevelDomain), the entire
%% message is rejected, even if the message contains other recipients that
%% are
%% valid.
%%
%% The message may not include more than 50 recipients, across the To:, CC:
%% and
%% BCC: fields. If you need to send an email message to a larger audience,
%% you can
%% divide your recipient list into groups of 50 or fewer, and then call the
%% `SendEmail' operation several times to send the message to each
%% group.
%%
%% For every message that you send, the total number of recipients (including
%% each
%% recipient in the To:, CC: and BCC: fields) is counted against the maximum
%% number of
%% emails you can send in a 24-hour period (your sending quota).
%% For more information about sending quotas in Amazon SES, see Managing Your
%% Amazon SES Sending
%% Limits:
%% https://docs.aws.amazon.com/ses/latest/dg/manage-sending-quotas.html in
%% the Amazon SES Developer Guide.
-spec send_email(aws_client:aws_client(), send_email_request()) ->
    {ok, send_email_response(), tuple()} |
    {error, any()} |
    {error, send_email_errors(), tuple()}.
send_email(Client, Input)
  when is_map(Client), is_map(Input) ->
    send_email(Client, Input, []).

-spec send_email(aws_client:aws_client(), send_email_request(), proplists:proplist()) ->
    {ok, send_email_response(), tuple()} |
    {error, any()} |
    {error, send_email_errors(), tuple()}.
send_email(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SendEmail">>, Input, Options).

%% @doc Composes an email message and immediately queues it for sending.
%%
%% This operation is more flexible than the `SendEmail' operation. When
%% you
%% use the `SendRawEmail' operation, you can specify the headers of the
%% message
%% as well as its content. This flexibility is useful, for example, when you
%% need to send a
%% multipart MIME email (such a message that contains both a text and an HTML
%% version). You
%% can also use this operation to send messages that include attachments.
%%
%% The `SendRawEmail' operation has the following requirements:
%%
%% You can only send email from verified email addresses or domains:
%% https://docs.aws.amazon.com/ses/latest/dg/verify-addresses-and-domains.html.
%% If you try to send email from
%% an address that isn't verified, the operation results in an
%% &quot;Email address not
%% verified&quot; error.
%%
%% If your account is still in the Amazon SES sandbox:
%% https://docs.aws.amazon.com/ses/latest/dg/request-production-access.html,
%% you can only send email to other verified addresses
%% in your account, or to addresses that are associated with the Amazon SES
%% mailbox simulator:
%% https://docs.aws.amazon.com/ses/latest/dg/send-an-email-from-console.html.
%%
%% The maximum message size, including attachments, is 10 MB.
%%
%% Each message has to include at least one recipient address. A recipient
%% address includes any address on the To:, CC:, or BCC: lines.
%%
%% If you send a single message to more than one recipient address, and one
%% of
%% the recipient addresses isn't in a valid format (that is, it's not
%% in the format
%% UserName@[SubDomain.]Domain.TopLevelDomain), Amazon SES
%% rejects the entire message, even if the other addresses are valid.
%%
%% Each message can include up to 50 recipient addresses across the To:, CC:,
%% or
%% BCC: lines. If you need to send a single message to more than 50
%% recipients, you
%% have to split the list of recipient addresses into groups of less than 50
%% recipients, and send separate messages to each group.
%%
%% Amazon SES allows you to specify 8-bit Content-Transfer-Encoding for MIME
%% message
%% parts. However, if Amazon SES has to modify the contents of your message
%% (for
%% example, if you use open and click tracking), 8-bit content isn't
%% preserved. For
%% this reason, we highly recommend that you encode all content that
%% isn't 7-bit
%% ASCII. For more information, see MIME Encoding:
%% https://docs.aws.amazon.com/ses/latest/dg/send-email-raw.html#send-email-mime-encoding
%% in the Amazon SES Developer
%% Guide.
%%
%% Additionally, keep the following considerations in mind when using the
%% `SendRawEmail' operation:
%%
%% Although you can customize the message headers when using the
%% `SendRawEmail' operation, Amazon SES automatically applies its own
%% `Message-ID' and `Date' headers; if you passed these
%% headers when creating the message, they are overwritten by the values that
%% Amazon SES
%% provides.
%%
%% If you are using sending authorization to send on behalf of another user,
%% `SendRawEmail' enables you to specify the cross-account identity
%% for the email's Source, From, and Return-Path parameters in one of two
%% ways: you
%% can pass optional parameters `SourceArn', `FromArn',
%% and/or `ReturnPathArn', or you can include the following X-headers in
%% the header of your raw email:
%%
%% `X-SES-SOURCE-ARN'
%%
%% `X-SES-FROM-ARN'
%%
%% `X-SES-RETURN-PATH-ARN'
%%
%% Don't include these X-headers in the DKIM signature. Amazon SES
%% removes these
%% before it sends the email.
%%
%% If you only specify the `SourceIdentityArn' parameter, Amazon SES sets
%% the From and Return-Path addresses to the same identity that you
%% specified.
%%
%% For more information about sending authorization, see the Using
%% Sending Authorization with Amazon SES:
%% https://docs.aws.amazon.com/ses/latest/dg/sending-authorization.html in
%% the Amazon SES Developer
%% Guide.
%%
%% For every message that you send, the total number of recipients (including
%% each recipient in the To:, CC: and BCC: fields) is counted against the
%% maximum
%% number of emails you can send in a 24-hour period (your sending
%% quota). For more information about sending quotas in Amazon SES, see
%% Managing Your Amazon SES Sending Limits:
%% https://docs.aws.amazon.com/ses/latest/dg/manage-sending-quotas.html in
%% the Amazon SES Developer
%% Guide.
-spec send_raw_email(aws_client:aws_client(), send_raw_email_request()) ->
    {ok, send_raw_email_response(), tuple()} |
    {error, any()} |
    {error, send_raw_email_errors(), tuple()}.
send_raw_email(Client, Input)
  when is_map(Client), is_map(Input) ->
    send_raw_email(Client, Input, []).

-spec send_raw_email(aws_client:aws_client(), send_raw_email_request(), proplists:proplist()) ->
    {ok, send_raw_email_response(), tuple()} |
    {error, any()} |
    {error, send_raw_email_errors(), tuple()}.
send_raw_email(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SendRawEmail">>, Input, Options).

%% @doc Composes an email message using an email template and immediately
%% queues it for
%% sending.
%%
%% To send email using this operation, your call must meet the following
%% requirements:
%%
%% The call must refer to an existing email template. You can create email
%% templates using the `CreateTemplate' operation.
%%
%% The message must be sent from a verified email address or domain.
%%
%% If your account is still in the Amazon SES sandbox, you may only send to
%% verified
%% addresses or domains, or to email addresses associated with the Amazon SES
%% Mailbox
%% Simulator. For more information, see Verifying Email
%% Addresses and Domains:
%% https://docs.aws.amazon.com/ses/latest/dg/verify-addresses-and-domains.html
%% in the Amazon SES Developer
%% Guide.
%%
%% The maximum message size is 10 MB.
%%
%% Calls to the `SendTemplatedEmail' operation may only include one
%% `Destination' parameter. A destination is a set of recipients
%% that receives the same version of the email. The `Destination'
%% parameter can include up to 50 recipients, across the To:, CC: and BCC:
%% fields.
%%
%% The `Destination' parameter must include at least one recipient
%% email address. The recipient address can be a To: address, a CC: address,
%% or a
%% BCC: address. If a recipient email address is invalid (that is, it is not
%% in the
%% format UserName@[SubDomain.]Domain.TopLevelDomain), the
%% entire message is rejected, even if the message contains other recipients
%% that
%% are valid.
%%
%% If your call to the `SendTemplatedEmail' operation includes all of the
%% required parameters, Amazon SES accepts it and returns a Message ID.
%% However, if Amazon SES
%% can't render the email because the template contains errors, it
%% doesn't send the
%% email. Additionally, because it already accepted the message, Amazon SES
%% doesn't return a
%% message stating that it was unable to send the email.
%%
%% For these reasons, we highly recommend that you set up Amazon SES to send
%% you
%% notifications when Rendering Failure events occur. For more information,
%% see Sending Personalized Email Using the Amazon SES API:
%% https://docs.aws.amazon.com/ses/latest/dg/send-personalized-email-api.html
%% in the
%% Amazon Simple Email Service Developer Guide.
-spec send_templated_email(aws_client:aws_client(), send_templated_email_request()) ->
    {ok, send_templated_email_response(), tuple()} |
    {error, any()} |
    {error, send_templated_email_errors(), tuple()}.
send_templated_email(Client, Input)
  when is_map(Client), is_map(Input) ->
    send_templated_email(Client, Input, []).

-spec send_templated_email(aws_client:aws_client(), send_templated_email_request(), proplists:proplist()) ->
    {ok, send_templated_email_response(), tuple()} |
    {error, any()} |
    {error, send_templated_email_errors(), tuple()}.
send_templated_email(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SendTemplatedEmail">>, Input, Options).

%% @doc Sets the specified receipt rule set as the active receipt rule set.
%%
%% To disable your email-receiving through Amazon SES completely, you can
%% call this
%% operation with `RuleSetName' set to null.
%%
%% For information about managing receipt rule sets, see the Amazon SES
%% Developer Guide:
%% https://docs.aws.amazon.com/ses/latest/dg/receiving-email-receipt-rules-console-walkthrough.html.
%%
%% You can execute this operation no more than once per second.
-spec set_active_receipt_rule_set(aws_client:aws_client(), set_active_receipt_rule_set_request()) ->
    {ok, set_active_receipt_rule_set_response(), tuple()} |
    {error, any()} |
    {error, set_active_receipt_rule_set_errors(), tuple()}.
set_active_receipt_rule_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_active_receipt_rule_set(Client, Input, []).

-spec set_active_receipt_rule_set(aws_client:aws_client(), set_active_receipt_rule_set_request(), proplists:proplist()) ->
    {ok, set_active_receipt_rule_set_response(), tuple()} |
    {error, any()} |
    {error, set_active_receipt_rule_set_errors(), tuple()}.
set_active_receipt_rule_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetActiveReceiptRuleSet">>, Input, Options).

%% @doc Enables or disables Easy DKIM signing of email sent from an identity.
%%
%% If Easy DKIM
%% signing is enabled for a domain, then Amazon SES uses DKIM to sign all
%% email that it sends
%% from addresses on that domain. If Easy DKIM signing is enabled for an
%% email address,
%% then Amazon SES uses DKIM to sign all email it sends from that address.
%%
%% For email addresses (for example, `user@example.com'), you can only
%% enable DKIM signing if the corresponding domain (in this case,
%% `example.com') has been set up to use Easy DKIM.
%%
%% You can enable DKIM signing for an identity at any time after you start
%% the
%% verification process for the identity, even if the verification process
%% isn't complete.
%%
%% You can execute this operation no more than once per second.
%%
%% For more information about Easy DKIM signing, go to the Amazon SES
%% Developer
%% Guide:
%% https://docs.aws.amazon.com/ses/latest/dg/send-email-authentication-dkim-easy.html.
-spec set_identity_dkim_enabled(aws_client:aws_client(), set_identity_dkim_enabled_request()) ->
    {ok, set_identity_dkim_enabled_response(), tuple()} |
    {error, any()}.
set_identity_dkim_enabled(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_identity_dkim_enabled(Client, Input, []).

-spec set_identity_dkim_enabled(aws_client:aws_client(), set_identity_dkim_enabled_request(), proplists:proplist()) ->
    {ok, set_identity_dkim_enabled_response(), tuple()} |
    {error, any()}.
set_identity_dkim_enabled(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetIdentityDkimEnabled">>, Input, Options).

%% @doc Given an identity (an email address or a domain), enables or disables
%% whether Amazon SES
%% forwards bounce and complaint notifications as email.
%%
%% Feedback forwarding can only be
%% disabled when Amazon Simple Notification Service (Amazon SNS) topics are
%% specified for both bounces and
%% complaints.
%%
%% Feedback forwarding does not apply to delivery notifications. Delivery
%% notifications are only available through Amazon SNS.
%%
%% You can execute this operation no more than once per second.
%%
%% For more information about using notifications with Amazon SES, see the
%% Amazon SES
%% Developer Guide:
%% https://docs.aws.amazon.com/ses/latest/dg/monitor-sending-activity-using-notifications.html.
-spec set_identity_feedback_forwarding_enabled(aws_client:aws_client(), set_identity_feedback_forwarding_enabled_request()) ->
    {ok, set_identity_feedback_forwarding_enabled_response(), tuple()} |
    {error, any()}.
set_identity_feedback_forwarding_enabled(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_identity_feedback_forwarding_enabled(Client, Input, []).

-spec set_identity_feedback_forwarding_enabled(aws_client:aws_client(), set_identity_feedback_forwarding_enabled_request(), proplists:proplist()) ->
    {ok, set_identity_feedback_forwarding_enabled_response(), tuple()} |
    {error, any()}.
set_identity_feedback_forwarding_enabled(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetIdentityFeedbackForwardingEnabled">>, Input, Options).

%% @doc Given an identity (an email address or a domain), sets whether Amazon
%% SES includes the
%% original email headers in the Amazon Simple Notification Service (Amazon
%% SNS) notifications of a specified
%% type.
%%
%% You can execute this operation no more than once per second.
%%
%% For more information about using notifications with Amazon SES, see the
%% Amazon SES
%% Developer Guide:
%% https://docs.aws.amazon.com/ses/latest/dg/monitor-sending-activity-using-notifications.html.
-spec set_identity_headers_in_notifications_enabled(aws_client:aws_client(), set_identity_headers_in_notifications_enabled_request()) ->
    {ok, set_identity_headers_in_notifications_enabled_response(), tuple()} |
    {error, any()}.
set_identity_headers_in_notifications_enabled(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_identity_headers_in_notifications_enabled(Client, Input, []).

-spec set_identity_headers_in_notifications_enabled(aws_client:aws_client(), set_identity_headers_in_notifications_enabled_request(), proplists:proplist()) ->
    {ok, set_identity_headers_in_notifications_enabled_response(), tuple()} |
    {error, any()}.
set_identity_headers_in_notifications_enabled(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetIdentityHeadersInNotificationsEnabled">>, Input, Options).

%% @doc Enables or disables the custom MAIL FROM domain setup for a verified
%% identity (an
%% email address or a domain).
%%
%% To send emails using the specified MAIL FROM domain, you must add an MX
%% record to
%% your MAIL FROM domain's DNS settings. To ensure that your emails pass
%% Sender Policy
%% Framework (SPF) checks, you must also add or update an SPF record. For
%% more
%% information, see the Amazon SES Developer Guide:
%% https://docs.aws.amazon.com/ses/latest/dg/mail-from.html.
%%
%% You can execute this operation no more than once per second.
-spec set_identity_mail_from_domain(aws_client:aws_client(), set_identity_mail_from_domain_request()) ->
    {ok, set_identity_mail_from_domain_response(), tuple()} |
    {error, any()}.
set_identity_mail_from_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_identity_mail_from_domain(Client, Input, []).

-spec set_identity_mail_from_domain(aws_client:aws_client(), set_identity_mail_from_domain_request(), proplists:proplist()) ->
    {ok, set_identity_mail_from_domain_response(), tuple()} |
    {error, any()}.
set_identity_mail_from_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetIdentityMailFromDomain">>, Input, Options).

%% @doc Sets an Amazon Simple Notification Service (Amazon SNS) topic to use
%% when delivering notifications.
%%
%% When you use
%% this operation, you specify a verified identity, such as an email address
%% or domain.
%% When you send an email that uses the chosen identity in the Source field,
%% Amazon SES sends
%% notifications to the topic you specified. You can send bounce, complaint,
%% or delivery
%% notifications (or any combination of the three) to the Amazon SNS topic
%% that you
%% specify.
%%
%% You can execute this operation no more than once per second.
%%
%% For more information about feedback notification, see the Amazon SES
%% Developer Guide:
%% https://docs.aws.amazon.com/ses/latest/dg/monitor-sending-activity-using-notifications.html.
-spec set_identity_notification_topic(aws_client:aws_client(), set_identity_notification_topic_request()) ->
    {ok, set_identity_notification_topic_response(), tuple()} |
    {error, any()}.
set_identity_notification_topic(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_identity_notification_topic(Client, Input, []).

-spec set_identity_notification_topic(aws_client:aws_client(), set_identity_notification_topic_request(), proplists:proplist()) ->
    {ok, set_identity_notification_topic_response(), tuple()} |
    {error, any()}.
set_identity_notification_topic(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetIdentityNotificationTopic">>, Input, Options).

%% @doc Sets the position of the specified receipt rule in the receipt rule
%% set.
%%
%% For information about managing receipt rules, see the Amazon SES
%% Developer Guide:
%% https://docs.aws.amazon.com/ses/latest/dg/receiving-email-receipt-rules-console-walkthrough.html.
%%
%% You can execute this operation no more than once per second.
-spec set_receipt_rule_position(aws_client:aws_client(), set_receipt_rule_position_request()) ->
    {ok, set_receipt_rule_position_response(), tuple()} |
    {error, any()} |
    {error, set_receipt_rule_position_errors(), tuple()}.
set_receipt_rule_position(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_receipt_rule_position(Client, Input, []).

-spec set_receipt_rule_position(aws_client:aws_client(), set_receipt_rule_position_request(), proplists:proplist()) ->
    {ok, set_receipt_rule_position_response(), tuple()} |
    {error, any()} |
    {error, set_receipt_rule_position_errors(), tuple()}.
set_receipt_rule_position(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetReceiptRulePosition">>, Input, Options).

%% @doc Creates a preview of the MIME content of an email when provided with
%% a template and a
%% set of replacement data.
%%
%% You can execute this operation no more than once per second.
-spec test_render_template(aws_client:aws_client(), test_render_template_request()) ->
    {ok, test_render_template_response(), tuple()} |
    {error, any()} |
    {error, test_render_template_errors(), tuple()}.
test_render_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    test_render_template(Client, Input, []).

-spec test_render_template(aws_client:aws_client(), test_render_template_request(), proplists:proplist()) ->
    {ok, test_render_template_response(), tuple()} |
    {error, any()} |
    {error, test_render_template_errors(), tuple()}.
test_render_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TestRenderTemplate">>, Input, Options).

%% @doc Enables or disables email sending across your entire Amazon SES
%% account in the current
%% Amazon Web Services Region.
%%
%% You can use this operation in conjunction with Amazon CloudWatch alarms to
%% temporarily pause email sending across your Amazon SES account in a given
%% Amazon Web Services Region when
%% reputation metrics (such as your bounce or complaint rates) reach certain
%% thresholds.
%%
%% You can execute this operation no more than once per second.
-spec update_account_sending_enabled(aws_client:aws_client(), update_account_sending_enabled_request()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
update_account_sending_enabled(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_account_sending_enabled(Client, Input, []).

-spec update_account_sending_enabled(aws_client:aws_client(), update_account_sending_enabled_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
update_account_sending_enabled(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateAccountSendingEnabled">>, Input, Options).

%% @doc Updates the event destination of a configuration set.
%%
%% Event destinations are
%% associated with configuration sets, which enable you to publish email
%% sending events to
%% Amazon CloudWatch, Amazon Kinesis Firehose, or Amazon Simple Notification
%% Service (Amazon SNS). For information about using configuration sets,
%% see Monitoring Your Amazon SES Sending Activity:
%% https://docs.aws.amazon.com/ses/latest/dg/monitor-sending-activity.html in
%% the Amazon SES Developer
%% Guide.
%%
%% When you create or update an event destination, you must provide one, and
%% only
%% one, destination. The destination can be Amazon CloudWatch, Amazon Kinesis
%% Firehose, or Amazon Simple Notification Service
%% (Amazon SNS).
%%
%% You can execute this operation no more than once per second.
-spec update_configuration_set_event_destination(aws_client:aws_client(), update_configuration_set_event_destination_request()) ->
    {ok, update_configuration_set_event_destination_response(), tuple()} |
    {error, any()} |
    {error, update_configuration_set_event_destination_errors(), tuple()}.
update_configuration_set_event_destination(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_configuration_set_event_destination(Client, Input, []).

-spec update_configuration_set_event_destination(aws_client:aws_client(), update_configuration_set_event_destination_request(), proplists:proplist()) ->
    {ok, update_configuration_set_event_destination_response(), tuple()} |
    {error, any()} |
    {error, update_configuration_set_event_destination_errors(), tuple()}.
update_configuration_set_event_destination(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateConfigurationSetEventDestination">>, Input, Options).

%% @doc Enables or disables the publishing of reputation metrics for emails
%% sent using a
%% specific configuration set in a given Amazon Web Services Region.
%%
%% Reputation metrics include bounce
%% and complaint rates. These metrics are published to Amazon CloudWatch. By
%% using CloudWatch, you can
%% create alarms when bounce or complaint rates exceed certain thresholds.
%%
%% You can execute this operation no more than once per second.
-spec update_configuration_set_reputation_metrics_enabled(aws_client:aws_client(), update_configuration_set_reputation_metrics_enabled_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_configuration_set_reputation_metrics_enabled_errors(), tuple()}.
update_configuration_set_reputation_metrics_enabled(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_configuration_set_reputation_metrics_enabled(Client, Input, []).

-spec update_configuration_set_reputation_metrics_enabled(aws_client:aws_client(), update_configuration_set_reputation_metrics_enabled_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_configuration_set_reputation_metrics_enabled_errors(), tuple()}.
update_configuration_set_reputation_metrics_enabled(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateConfigurationSetReputationMetricsEnabled">>, Input, Options).

%% @doc Enables or disables email sending for messages sent using a specific
%% configuration set
%% in a given Amazon Web Services Region.
%%
%% You can use this operation in conjunction with Amazon CloudWatch alarms
%% to temporarily pause email sending for a configuration set when the
%% reputation metrics
%% for that configuration set (such as your bounce on complaint rate) exceed
%% certain
%% thresholds.
%%
%% You can execute this operation no more than once per second.
-spec update_configuration_set_sending_enabled(aws_client:aws_client(), update_configuration_set_sending_enabled_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_configuration_set_sending_enabled_errors(), tuple()}.
update_configuration_set_sending_enabled(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_configuration_set_sending_enabled(Client, Input, []).

-spec update_configuration_set_sending_enabled(aws_client:aws_client(), update_configuration_set_sending_enabled_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_configuration_set_sending_enabled_errors(), tuple()}.
update_configuration_set_sending_enabled(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateConfigurationSetSendingEnabled">>, Input, Options).

%% @doc Modifies an association between a configuration set and a custom
%% domain for open and
%% click event tracking.
%%
%% By default, images and links used for tracking open and click events are
%% hosted on
%% domains operated by Amazon SES. You can configure a subdomain of your own
%% to handle these
%% events. For information about using custom domains, see the Amazon SES
%% Developer Guide:
%% https://docs.aws.amazon.com/ses/latest/dg/configure-custom-open-click-domains.html.
-spec update_configuration_set_tracking_options(aws_client:aws_client(), update_configuration_set_tracking_options_request()) ->
    {ok, update_configuration_set_tracking_options_response(), tuple()} |
    {error, any()} |
    {error, update_configuration_set_tracking_options_errors(), tuple()}.
update_configuration_set_tracking_options(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_configuration_set_tracking_options(Client, Input, []).

-spec update_configuration_set_tracking_options(aws_client:aws_client(), update_configuration_set_tracking_options_request(), proplists:proplist()) ->
    {ok, update_configuration_set_tracking_options_response(), tuple()} |
    {error, any()} |
    {error, update_configuration_set_tracking_options_errors(), tuple()}.
update_configuration_set_tracking_options(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateConfigurationSetTrackingOptions">>, Input, Options).

%% @doc Updates an existing custom verification email template.
%%
%% For more information about custom verification email templates, see Using
%% Custom Verification Email Templates:
%% https://docs.aws.amazon.com/ses/latest/dg/creating-identities.html#send-email-verify-address-custom
%% in the Amazon SES Developer
%% Guide.
%%
%% You can execute this operation no more than once per second.
-spec update_custom_verification_email_template(aws_client:aws_client(), update_custom_verification_email_template_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_custom_verification_email_template_errors(), tuple()}.
update_custom_verification_email_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_custom_verification_email_template(Client, Input, []).

-spec update_custom_verification_email_template(aws_client:aws_client(), update_custom_verification_email_template_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_custom_verification_email_template_errors(), tuple()}.
update_custom_verification_email_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateCustomVerificationEmailTemplate">>, Input, Options).

%% @doc Updates a receipt rule.
%%
%% For information about managing receipt rules, see the Amazon SES
%% Developer Guide:
%% https://docs.aws.amazon.com/ses/latest/dg/receiving-email-receipt-rules-console-walkthrough.html.
%%
%% You can execute this operation no more than once per second.
-spec update_receipt_rule(aws_client:aws_client(), update_receipt_rule_request()) ->
    {ok, update_receipt_rule_response(), tuple()} |
    {error, any()} |
    {error, update_receipt_rule_errors(), tuple()}.
update_receipt_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_receipt_rule(Client, Input, []).

-spec update_receipt_rule(aws_client:aws_client(), update_receipt_rule_request(), proplists:proplist()) ->
    {ok, update_receipt_rule_response(), tuple()} |
    {error, any()} |
    {error, update_receipt_rule_errors(), tuple()}.
update_receipt_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateReceiptRule">>, Input, Options).

%% @doc Updates an email template.
%%
%% Email templates enable you to send personalized email to
%% one or more destinations in a single operation. For more information, see
%% the Amazon SES
%% Developer Guide:
%% https://docs.aws.amazon.com/ses/latest/dg/send-personalized-email-api.html.
%%
%% You can execute this operation no more than once per second.
-spec update_template(aws_client:aws_client(), update_template_request()) ->
    {ok, update_template_response(), tuple()} |
    {error, any()} |
    {error, update_template_errors(), tuple()}.
update_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_template(Client, Input, []).

-spec update_template(aws_client:aws_client(), update_template_request(), proplists:proplist()) ->
    {ok, update_template_response(), tuple()} |
    {error, any()} |
    {error, update_template_errors(), tuple()}.
update_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateTemplate">>, Input, Options).

%% @doc Returns a set of DKIM tokens for a domain identity.
%%
%% When you execute the `VerifyDomainDkim' operation, the domain that you
%% specify is added to the list of identities that are associated with your
%% account.
%% This is true even if you haven't already associated the domain with
%% your account by
%% using the `VerifyDomainIdentity' operation. However, you can't
%% send email
%% from the domain until you either successfully verify
%% it:
%% https://docs.aws.amazon.com/ses/latest/dg/creating-identities.html#verify-domain-procedure
%% or you successfully set up DKIM for
%% it:
%% https://docs.aws.amazon.com/ses/latest/dg/send-email-authentication-dkim-easy.html.
%%
%% You use the tokens that are generated by this operation to create CNAME
%% records. When
%% Amazon SES detects that you've added these records to the DNS
%% configuration for a domain, you
%% can start sending email from that domain. You can start sending email even
%% if you
%% haven't added the TXT record provided by the VerifyDomainIdentity
%% operation to the DNS
%% configuration for your domain. All email that you send from the domain is
%% authenticated
%% using DKIM.
%%
%% To create the CNAME records for DKIM authentication, use the following
%% values:
%%
%% Name:
%% token._domainkey.example.com
%%
%% Type: CNAME
%%
%% Value:
%% token.dkim.amazonses.com
%%
%% In the preceding example, replace token with one of the tokens
%% that are generated when you execute this operation. Replace
%% example.com with your domain. Repeat this process for each
%% token that's generated by this operation.
%%
%% You can execute this operation no more than once per second.
-spec verify_domain_dkim(aws_client:aws_client(), verify_domain_dkim_request()) ->
    {ok, verify_domain_dkim_response(), tuple()} |
    {error, any()}.
verify_domain_dkim(Client, Input)
  when is_map(Client), is_map(Input) ->
    verify_domain_dkim(Client, Input, []).

-spec verify_domain_dkim(aws_client:aws_client(), verify_domain_dkim_request(), proplists:proplist()) ->
    {ok, verify_domain_dkim_response(), tuple()} |
    {error, any()}.
verify_domain_dkim(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"VerifyDomainDkim">>, Input, Options).

%% @doc Adds a domain to the list of identities for your Amazon SES account
%% in the current
%% Amazon Web Services Region and attempts to verify it.
%%
%% For more information about verifying domains,
%% see Verifying Email Addresses and Domains:
%% https://docs.aws.amazon.com/ses/latest/dg/verify-addresses-and-domains.html
%% in the Amazon SES Developer
%% Guide.
%%
%% You can execute this operation no more than once per second.
-spec verify_domain_identity(aws_client:aws_client(), verify_domain_identity_request()) ->
    {ok, verify_domain_identity_response(), tuple()} |
    {error, any()}.
verify_domain_identity(Client, Input)
  when is_map(Client), is_map(Input) ->
    verify_domain_identity(Client, Input, []).

-spec verify_domain_identity(aws_client:aws_client(), verify_domain_identity_request(), proplists:proplist()) ->
    {ok, verify_domain_identity_response(), tuple()} |
    {error, any()}.
verify_domain_identity(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"VerifyDomainIdentity">>, Input, Options).

%% @doc Deprecated.
%%
%% Use the `VerifyEmailIdentity' operation to verify a new email
%% address.
-spec verify_email_address(aws_client:aws_client(), verify_email_address_request()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
verify_email_address(Client, Input)
  when is_map(Client), is_map(Input) ->
    verify_email_address(Client, Input, []).

-spec verify_email_address(aws_client:aws_client(), verify_email_address_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
verify_email_address(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"VerifyEmailAddress">>, Input, Options).

%% @doc Adds an email address to the list of identities for your Amazon SES
%% account in the current
%% Amazon Web Services Region and attempts to verify it.
%%
%% As a result of executing this operation, a
%% verification email is sent to the specified address.
%%
%% You can execute this operation no more than once per second.
-spec verify_email_identity(aws_client:aws_client(), verify_email_identity_request()) ->
    {ok, verify_email_identity_response(), tuple()} |
    {error, any()}.
verify_email_identity(Client, Input)
  when is_map(Client), is_map(Input) ->
    verify_email_identity(Client, Input, []).

-spec verify_email_identity(aws_client:aws_client(), verify_email_identity_request(), proplists:proplist()) ->
    {ok, verify_email_identity_response(), tuple()} |
    {error, any()}.
verify_email_identity(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"VerifyEmailIdentity">>, Input, Options).

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
    Client1 = Client#{service => <<"ses">>},
    Host = build_host(<<"email">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-www-form-urlencoded">>}
    ],

    Input = Input0#{ <<"Action">> => Action
                   , <<"Version">> => <<"2010-12-01">>
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
