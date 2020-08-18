%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc <fullname>Amazon Simple Email Service</fullname>
%%
%% This document contains reference information for the <a
%% href="https://aws.amazon.com/ses/">Amazon Simple Email Service</a> (Amazon
%% SES) API, version 2010-12-01. This document is best used in conjunction
%% with the <a
%% href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/Welcome.html">Amazon
%% SES Developer Guide</a>.
%%
%% <note> For a list of Amazon SES endpoints to use in service requests, see
%% <a
%% href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/regions.html">Regions
%% and Amazon SES</a> in the <a
%% href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/Welcome.html">Amazon
%% SES Developer Guide</a>.
%%
%% </note>
-module(aws_email).

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

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a receipt rule set by cloning an existing one. All receipt
%% rules and configurations are copied to the new receipt rule set and are
%% completely independent of the source rule set.
%%
%% For information about setting up rule sets, see the <a
%% href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rule-set.html">Amazon
%% SES Developer Guide</a>.
%%
%% You can execute this operation no more than once per second.
clone_receipt_rule_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    clone_receipt_rule_set(Client, Input, []).
clone_receipt_rule_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CloneReceiptRuleSet">>, Input, Options).

%% @doc Creates a configuration set.
%%
%% Configuration sets enable you to publish email sending events. For
%% information about using configuration sets, see the <a
%% href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon
%% SES Developer Guide</a>.
%%
%% You can execute this operation no more than once per second.
create_configuration_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_configuration_set(Client, Input, []).
create_configuration_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateConfigurationSet">>, Input, Options).

%% @doc Creates a configuration set event destination.
%%
%% <note> When you create or update an event destination, you must provide
%% one, and only one, destination. The destination can be CloudWatch, Amazon
%% Kinesis Firehose, or Amazon Simple Notification Service (Amazon SNS).
%%
%% </note> An event destination is the AWS service to which Amazon SES
%% publishes the email sending events associated with a configuration set.
%% For information about using configuration sets, see the <a
%% href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon
%% SES Developer Guide</a>.
%%
%% You can execute this operation no more than once per second.
create_configuration_set_event_destination(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_configuration_set_event_destination(Client, Input, []).
create_configuration_set_event_destination(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateConfigurationSetEventDestination">>, Input, Options).

%% @doc Creates an association between a configuration set and a custom
%% domain for open and click event tracking.
%%
%% By default, images and links used for tracking open and click events are
%% hosted on domains operated by Amazon SES. You can configure a subdomain of
%% your own to handle these events. For information about using custom
%% domains, see the <a
%% href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/configure-custom-open-click-domains.html">Amazon
%% SES Developer Guide</a>.
create_configuration_set_tracking_options(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_configuration_set_tracking_options(Client, Input, []).
create_configuration_set_tracking_options(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateConfigurationSetTrackingOptions">>, Input, Options).

%% @doc Creates a new custom verification email template.
%%
%% For more information about custom verification email templates, see <a
%% href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/custom-verification-emails.html">Using
%% Custom Verification Email Templates</a> in the <i>Amazon SES Developer
%% Guide</i>.
%%
%% You can execute this operation no more than once per second.
create_custom_verification_email_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_custom_verification_email_template(Client, Input, []).
create_custom_verification_email_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCustomVerificationEmailTemplate">>, Input, Options).

%% @doc Creates a new IP address filter.
%%
%% For information about setting up IP address filters, see the <a
%% href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-ip-filters.html">Amazon
%% SES Developer Guide</a>.
%%
%% You can execute this operation no more than once per second.
create_receipt_filter(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_receipt_filter(Client, Input, []).
create_receipt_filter(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateReceiptFilter">>, Input, Options).

%% @doc Creates a receipt rule.
%%
%% For information about setting up receipt rules, see the <a
%% href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rules.html">Amazon
%% SES Developer Guide</a>.
%%
%% You can execute this operation no more than once per second.
create_receipt_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_receipt_rule(Client, Input, []).
create_receipt_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateReceiptRule">>, Input, Options).

%% @doc Creates an empty receipt rule set.
%%
%% For information about setting up receipt rule sets, see the <a
%% href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rule-set.html">Amazon
%% SES Developer Guide</a>.
%%
%% You can execute this operation no more than once per second.
create_receipt_rule_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_receipt_rule_set(Client, Input, []).
create_receipt_rule_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateReceiptRuleSet">>, Input, Options).

%% @doc Creates an email template. Email templates enable you to send
%% personalized email to one or more destinations in a single API operation.
%% For more information, see the <a
%% href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html">Amazon
%% SES Developer Guide</a>.
%%
%% You can execute this operation no more than once per second.
create_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_template(Client, Input, []).
create_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTemplate">>, Input, Options).

%% @doc Deletes a configuration set. Configuration sets enable you to publish
%% email sending events. For information about using configuration sets, see
%% the <a
%% href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon
%% SES Developer Guide</a>.
%%
%% You can execute this operation no more than once per second.
delete_configuration_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_configuration_set(Client, Input, []).
delete_configuration_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteConfigurationSet">>, Input, Options).

%% @doc Deletes a configuration set event destination. Configuration set
%% event destinations are associated with configuration sets, which enable
%% you to publish email sending events. For information about using
%% configuration sets, see the <a
%% href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon
%% SES Developer Guide</a>.
%%
%% You can execute this operation no more than once per second.
delete_configuration_set_event_destination(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_configuration_set_event_destination(Client, Input, []).
delete_configuration_set_event_destination(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteConfigurationSetEventDestination">>, Input, Options).

%% @doc Deletes an association between a configuration set and a custom
%% domain for open and click event tracking.
%%
%% By default, images and links used for tracking open and click events are
%% hosted on domains operated by Amazon SES. You can configure a subdomain of
%% your own to handle these events. For information about using custom
%% domains, see the <a
%% href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/configure-custom-open-click-domains.html">Amazon
%% SES Developer Guide</a>.
%%
%% <note> Deleting this kind of association will result in emails sent using
%% the specified configuration set to capture open and click events using the
%% standard, Amazon SES-operated domains.
%%
%% </note>
delete_configuration_set_tracking_options(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_configuration_set_tracking_options(Client, Input, []).
delete_configuration_set_tracking_options(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteConfigurationSetTrackingOptions">>, Input, Options).

%% @doc Deletes an existing custom verification email template.
%%
%% For more information about custom verification email templates, see <a
%% href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/custom-verification-emails.html">Using
%% Custom Verification Email Templates</a> in the <i>Amazon SES Developer
%% Guide</i>.
%%
%% You can execute this operation no more than once per second.
delete_custom_verification_email_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_custom_verification_email_template(Client, Input, []).
delete_custom_verification_email_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCustomVerificationEmailTemplate">>, Input, Options).

%% @doc Deletes the specified identity (an email address or a domain) from
%% the list of verified identities.
%%
%% You can execute this operation no more than once per second.
delete_identity(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_identity(Client, Input, []).
delete_identity(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteIdentity">>, Input, Options).

%% @doc Deletes the specified sending authorization policy for the given
%% identity (an email address or a domain). This API returns successfully
%% even if a policy with the specified name does not exist.
%%
%% <note> This API is for the identity owner only. If you have not verified
%% the identity, this API will return an error.
%%
%% </note> Sending authorization is a feature that enables an identity owner
%% to authorize other senders to use its identities. For information about
%% using sending authorization, see the <a
%% href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon
%% SES Developer Guide</a>.
%%
%% You can execute this operation no more than once per second.
delete_identity_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_identity_policy(Client, Input, []).
delete_identity_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteIdentityPolicy">>, Input, Options).

%% @doc Deletes the specified IP address filter.
%%
%% For information about managing IP address filters, see the <a
%% href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-ip-filters.html">Amazon
%% SES Developer Guide</a>.
%%
%% You can execute this operation no more than once per second.
delete_receipt_filter(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_receipt_filter(Client, Input, []).
delete_receipt_filter(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteReceiptFilter">>, Input, Options).

%% @doc Deletes the specified receipt rule.
%%
%% For information about managing receipt rules, see the <a
%% href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rules.html">Amazon
%% SES Developer Guide</a>.
%%
%% You can execute this operation no more than once per second.
delete_receipt_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_receipt_rule(Client, Input, []).
delete_receipt_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteReceiptRule">>, Input, Options).

%% @doc Deletes the specified receipt rule set and all of the receipt rules
%% it contains.
%%
%% <note> The currently active rule set cannot be deleted.
%%
%% </note> For information about managing receipt rule sets, see the <a
%% href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rule-sets.html">Amazon
%% SES Developer Guide</a>.
%%
%% You can execute this operation no more than once per second.
delete_receipt_rule_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_receipt_rule_set(Client, Input, []).
delete_receipt_rule_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteReceiptRuleSet">>, Input, Options).

%% @doc Deletes an email template.
%%
%% You can execute this operation no more than once per second.
delete_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_template(Client, Input, []).
delete_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTemplate">>, Input, Options).

%% @doc Deprecated. Use the <code>DeleteIdentity</code> operation to delete
%% email addresses and domains.
delete_verified_email_address(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_verified_email_address(Client, Input, []).
delete_verified_email_address(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteVerifiedEmailAddress">>, Input, Options).

%% @doc Returns the metadata and receipt rules for the receipt rule set that
%% is currently active.
%%
%% For information about setting up receipt rule sets, see the <a
%% href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rule-set.html">Amazon
%% SES Developer Guide</a>.
%%
%% You can execute this operation no more than once per second.
describe_active_receipt_rule_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_active_receipt_rule_set(Client, Input, []).
describe_active_receipt_rule_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeActiveReceiptRuleSet">>, Input, Options).

%% @doc Returns the details of the specified configuration set. For
%% information about using configuration sets, see the <a
%% href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon
%% SES Developer Guide</a>.
%%
%% You can execute this operation no more than once per second.
describe_configuration_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_configuration_set(Client, Input, []).
describe_configuration_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeConfigurationSet">>, Input, Options).

%% @doc Returns the details of the specified receipt rule.
%%
%% For information about setting up receipt rules, see the <a
%% href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rules.html">Amazon
%% SES Developer Guide</a>.
%%
%% You can execute this operation no more than once per second.
describe_receipt_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_receipt_rule(Client, Input, []).
describe_receipt_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeReceiptRule">>, Input, Options).

%% @doc Returns the details of the specified receipt rule set.
%%
%% For information about managing receipt rule sets, see the <a
%% href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rule-sets.html">Amazon
%% SES Developer Guide</a>.
%%
%% You can execute this operation no more than once per second.
describe_receipt_rule_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_receipt_rule_set(Client, Input, []).
describe_receipt_rule_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeReceiptRuleSet">>, Input, Options).

%% @doc Returns the email sending status of the Amazon SES account for the
%% current region.
%%
%% You can execute this operation no more than once per second.
get_account_sending_enabled(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_account_sending_enabled(Client, Input, []).
get_account_sending_enabled(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAccountSendingEnabled">>, Input, Options).

%% @doc Returns the custom email verification template for the template name
%% you specify.
%%
%% For more information about custom verification email templates, see <a
%% href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/custom-verification-emails.html">Using
%% Custom Verification Email Templates</a> in the <i>Amazon SES Developer
%% Guide</i>.
%%
%% You can execute this operation no more than once per second.
get_custom_verification_email_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_custom_verification_email_template(Client, Input, []).
get_custom_verification_email_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCustomVerificationEmailTemplate">>, Input, Options).

%% @doc Returns the current status of Easy DKIM signing for an entity. For
%% domain name identities, this operation also returns the DKIM tokens that
%% are required for Easy DKIM signing, and whether Amazon SES has
%% successfully verified that these tokens have been published.
%%
%% This operation takes a list of identities as input and returns the
%% following information for each:
%%
%% <ul> <li> Whether Easy DKIM signing is enabled or disabled.
%%
%% </li> <li> A set of DKIM tokens that represent the identity. If the
%% identity is an email address, the tokens represent the domain of that
%% address.
%%
%% </li> <li> Whether Amazon SES has successfully verified the DKIM tokens
%% published in the domain's DNS. This information is only returned for
%% domain name identities, not for email addresses.
%%
%% </li> </ul> This operation is throttled at one request per second and can
%% only get DKIM attributes for up to 100 identities at a time.
%%
%% For more information about creating DNS records using DKIM tokens, go to
%% the <a
%% href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim-dns-records.html">Amazon
%% SES Developer Guide</a>.
get_identity_dkim_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_identity_dkim_attributes(Client, Input, []).
get_identity_dkim_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetIdentityDkimAttributes">>, Input, Options).

%% @doc Returns the custom MAIL FROM attributes for a list of identities
%% (email addresses : domains).
%%
%% This operation is throttled at one request per second and can only get
%% custom MAIL FROM attributes for up to 100 identities at a time.
get_identity_mail_from_domain_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_identity_mail_from_domain_attributes(Client, Input, []).
get_identity_mail_from_domain_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetIdentityMailFromDomainAttributes">>, Input, Options).

%% @doc Given a list of verified identities (email addresses and/or domains),
%% returns a structure describing identity notification attributes.
%%
%% This operation is throttled at one request per second and can only get
%% notification attributes for up to 100 identities at a time.
%%
%% For more information about using notifications with Amazon SES, see the <a
%% href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications.html">Amazon
%% SES Developer Guide</a>.
get_identity_notification_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_identity_notification_attributes(Client, Input, []).
get_identity_notification_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetIdentityNotificationAttributes">>, Input, Options).

%% @doc Returns the requested sending authorization policies for the given
%% identity (an email address or a domain). The policies are returned as a
%% map of policy names to policy contents. You can retrieve a maximum of 20
%% policies at a time.
%%
%% <note> This API is for the identity owner only. If you have not verified
%% the identity, this API will return an error.
%%
%% </note> Sending authorization is a feature that enables an identity owner
%% to authorize other senders to use its identities. For information about
%% using sending authorization, see the <a
%% href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon
%% SES Developer Guide</a>.
%%
%% You can execute this operation no more than once per second.
get_identity_policies(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_identity_policies(Client, Input, []).
get_identity_policies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetIdentityPolicies">>, Input, Options).

%% @doc Given a list of identities (email addresses and/or domains), returns
%% the verification status and (for domain identities) the verification token
%% for each identity.
%%
%% The verification status of an email address is "Pending" until the email
%% address owner clicks the link within the verification email that Amazon
%% SES sent to that address. If the email address owner clicks the link
%% within 24 hours, the verification status of the email address changes to
%% "Success". If the link is not clicked within 24 hours, the verification
%% status changes to "Failed." In that case, if you still want to verify the
%% email address, you must restart the verification process from the
%% beginning.
%%
%% For domain identities, the domain's verification status is "Pending" as
%% Amazon SES searches for the required TXT record in the DNS settings of the
%% domain. When Amazon SES detects the record, the domain's verification
%% status changes to "Success". If Amazon SES is unable to detect the record
%% within 72 hours, the domain's verification status changes to "Failed." In
%% that case, if you still want to verify the domain, you must restart the
%% verification process from the beginning.
%%
%% This operation is throttled at one request per second and can only get
%% verification attributes for up to 100 identities at a time.
get_identity_verification_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_identity_verification_attributes(Client, Input, []).
get_identity_verification_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetIdentityVerificationAttributes">>, Input, Options).

%% @doc Provides the sending limits for the Amazon SES account.
%%
%% You can execute this operation no more than once per second.
get_send_quota(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_send_quota(Client, Input, []).
get_send_quota(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSendQuota">>, Input, Options).

%% @doc Provides sending statistics for the current AWS Region. The result is
%% a list of data points, representing the last two weeks of sending
%% activity. Each data point in the list contains statistics for a 15-minute
%% period of time.
%%
%% You can execute this operation no more than once per second.
get_send_statistics(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_send_statistics(Client, Input, []).
get_send_statistics(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSendStatistics">>, Input, Options).

%% @doc Displays the template object (which includes the Subject line, HTML
%% part and text part) for the template you specify.
%%
%% You can execute this operation no more than once per second.
get_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_template(Client, Input, []).
get_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTemplate">>, Input, Options).

%% @doc Provides a list of the configuration sets associated with your Amazon
%% SES account in the current AWS Region. For information about using
%% configuration sets, see <a
%% href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Monitoring
%% Your Amazon SES Sending Activity</a> in the <i>Amazon SES Developer
%% Guide.</i>
%%
%% You can execute this operation no more than once per second. This
%% operation will return up to 1,000 configuration sets each time it is run.
%% If your Amazon SES account has more than 1,000 configuration sets, this
%% operation will also return a NextToken element. You can then execute the
%% <code>ListConfigurationSets</code> operation again, passing the
%% <code>NextToken</code> parameter and the value of the NextToken element to
%% retrieve additional results.
list_configuration_sets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_configuration_sets(Client, Input, []).
list_configuration_sets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListConfigurationSets">>, Input, Options).

%% @doc Lists the existing custom verification email templates for your
%% account in the current AWS Region.
%%
%% For more information about custom verification email templates, see <a
%% href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/custom-verification-emails.html">Using
%% Custom Verification Email Templates</a> in the <i>Amazon SES Developer
%% Guide</i>.
%%
%% You can execute this operation no more than once per second.
list_custom_verification_email_templates(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_custom_verification_email_templates(Client, Input, []).
list_custom_verification_email_templates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCustomVerificationEmailTemplates">>, Input, Options).

%% @doc Returns a list containing all of the identities (email addresses and
%% domains) for your AWS account in the current AWS Region, regardless of
%% verification status.
%%
%% You can execute this operation no more than once per second.
list_identities(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_identities(Client, Input, []).
list_identities(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListIdentities">>, Input, Options).

%% @doc Returns a list of sending authorization policies that are attached to
%% the given identity (an email address or a domain). This API returns only a
%% list. If you want the actual policy content, you can use
%% <code>GetIdentityPolicies</code>.
%%
%% <note> This API is for the identity owner only. If you have not verified
%% the identity, this API will return an error.
%%
%% </note> Sending authorization is a feature that enables an identity owner
%% to authorize other senders to use its identities. For information about
%% using sending authorization, see the <a
%% href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon
%% SES Developer Guide</a>.
%%
%% You can execute this operation no more than once per second.
list_identity_policies(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_identity_policies(Client, Input, []).
list_identity_policies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListIdentityPolicies">>, Input, Options).

%% @doc Lists the IP address filters associated with your AWS account in the
%% current AWS Region.
%%
%% For information about managing IP address filters, see the <a
%% href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-ip-filters.html">Amazon
%% SES Developer Guide</a>.
%%
%% You can execute this operation no more than once per second.
list_receipt_filters(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_receipt_filters(Client, Input, []).
list_receipt_filters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListReceiptFilters">>, Input, Options).

%% @doc Lists the receipt rule sets that exist under your AWS account in the
%% current AWS Region. If there are additional receipt rule sets to be
%% retrieved, you will receive a <code>NextToken</code> that you can provide
%% to the next call to <code>ListReceiptRuleSets</code> to retrieve the
%% additional entries.
%%
%% For information about managing receipt rule sets, see the <a
%% href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rule-sets.html">Amazon
%% SES Developer Guide</a>.
%%
%% You can execute this operation no more than once per second.
list_receipt_rule_sets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_receipt_rule_sets(Client, Input, []).
list_receipt_rule_sets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListReceiptRuleSets">>, Input, Options).

%% @doc Lists the email templates present in your Amazon SES account in the
%% current AWS Region.
%%
%% You can execute this operation no more than once per second.
list_templates(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_templates(Client, Input, []).
list_templates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTemplates">>, Input, Options).

%% @doc Deprecated. Use the <code>ListIdentities</code> operation to list the
%% email addresses and domains associated with your account.
list_verified_email_addresses(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_verified_email_addresses(Client, Input, []).
list_verified_email_addresses(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListVerifiedEmailAddresses">>, Input, Options).

%% @doc Adds or updates the delivery options for a configuration set.
put_configuration_set_delivery_options(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_configuration_set_delivery_options(Client, Input, []).
put_configuration_set_delivery_options(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutConfigurationSetDeliveryOptions">>, Input, Options).

%% @doc Adds or updates a sending authorization policy for the specified
%% identity (an email address or a domain).
%%
%% <note> This API is for the identity owner only. If you have not verified
%% the identity, this API will return an error.
%%
%% </note> Sending authorization is a feature that enables an identity owner
%% to authorize other senders to use its identities. For information about
%% using sending authorization, see the <a
%% href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon
%% SES Developer Guide</a>.
%%
%% You can execute this operation no more than once per second.
put_identity_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_identity_policy(Client, Input, []).
put_identity_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutIdentityPolicy">>, Input, Options).

%% @doc Reorders the receipt rules within a receipt rule set.
%%
%% <note> All of the rules in the rule set must be represented in this
%% request. That is, this API will return an error if the reorder request
%% doesn't explicitly position all of the rules.
%%
%% </note> For information about managing receipt rule sets, see the <a
%% href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rule-sets.html">Amazon
%% SES Developer Guide</a>.
%%
%% You can execute this operation no more than once per second.
reorder_receipt_rule_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    reorder_receipt_rule_set(Client, Input, []).
reorder_receipt_rule_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ReorderReceiptRuleSet">>, Input, Options).

%% @doc Generates and sends a bounce message to the sender of an email you
%% received through Amazon SES. You can only use this API on an email up to
%% 24 hours after you receive it.
%%
%% <note> You cannot use this API to send generic bounces for mail that was
%% not received by Amazon SES.
%%
%% </note> For information about receiving email through Amazon SES, see the
%% <a
%% href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email.html">Amazon
%% SES Developer Guide</a>.
%%
%% You can execute this operation no more than once per second.
send_bounce(Client, Input)
  when is_map(Client), is_map(Input) ->
    send_bounce(Client, Input, []).
send_bounce(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SendBounce">>, Input, Options).

%% @doc Composes an email message to multiple destinations. The message body
%% is created using an email template.
%%
%% In order to send email using the <code>SendBulkTemplatedEmail</code>
%% operation, your call to the API must meet the following requirements:
%%
%% <ul> <li> The call must refer to an existing email template. You can
%% create email templates using the <a>CreateTemplate</a> operation.
%%
%% </li> <li> The message must be sent from a verified email address or
%% domain.
%%
%% </li> <li> If your account is still in the Amazon SES sandbox, you may
%% only send to verified addresses or domains, or to email addresses
%% associated with the Amazon SES Mailbox Simulator. For more information,
%% see <a
%% href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html">Verifying
%% Email Addresses and Domains</a> in the <i>Amazon SES Developer Guide.</i>
%%
%% </li> <li> The maximum message size is 10 MB.
%%
%% </li> <li> Each <code>Destination</code> parameter must include at least
%% one recipient email address. The recipient address can be a To: address, a
%% CC: address, or a BCC: address. If a recipient email address is invalid
%% (that is, it is not in the format
%% <i>UserName@[SubDomain.]Domain.TopLevelDomain</i>), the entire message
%% will be rejected, even if the message contains other recipients that are
%% valid.
%%
%% </li> <li> The message may not include more than 50 recipients, across the
%% To:, CC: and BCC: fields. If you need to send an email message to a larger
%% audience, you can divide your recipient list into groups of 50 or fewer,
%% and then call the <code>SendBulkTemplatedEmail</code> operation several
%% times to send the message to each group.
%%
%% </li> <li> The number of destinations you can contact in a single call to
%% the API may be limited by your account's maximum sending rate.
%%
%% </li> </ul>
send_bulk_templated_email(Client, Input)
  when is_map(Client), is_map(Input) ->
    send_bulk_templated_email(Client, Input, []).
send_bulk_templated_email(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SendBulkTemplatedEmail">>, Input, Options).

%% @doc Adds an email address to the list of identities for your Amazon SES
%% account in the current AWS Region and attempts to verify it. As a result
%% of executing this operation, a customized verification email is sent to
%% the specified address.
%%
%% To use this operation, you must first create a custom verification email
%% template. For more information about creating and using custom
%% verification email templates, see <a
%% href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/custom-verification-emails.html">Using
%% Custom Verification Email Templates</a> in the <i>Amazon SES Developer
%% Guide</i>.
%%
%% You can execute this operation no more than once per second.
send_custom_verification_email(Client, Input)
  when is_map(Client), is_map(Input) ->
    send_custom_verification_email(Client, Input, []).
send_custom_verification_email(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SendCustomVerificationEmail">>, Input, Options).

%% @doc Composes an email message and immediately queues it for sending. In
%% order to send email using the <code>SendEmail</code> operation, your
%% message must meet the following requirements:
%%
%% <ul> <li> The message must be sent from a verified email address or
%% domain. If you attempt to send email using a non-verified address or
%% domain, the operation will result in an "Email address not verified"
%% error.
%%
%% </li> <li> If your account is still in the Amazon SES sandbox, you may
%% only send to verified addresses or domains, or to email addresses
%% associated with the Amazon SES Mailbox Simulator. For more information,
%% see <a
%% href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html">Verifying
%% Email Addresses and Domains</a> in the <i>Amazon SES Developer Guide.</i>
%%
%% </li> <li> The maximum message size is 10 MB.
%%
%% </li> <li> The message must include at least one recipient email address.
%% The recipient address can be a To: address, a CC: address, or a BCC:
%% address. If a recipient email address is invalid (that is, it is not in
%% the format <i>UserName@[SubDomain.]Domain.TopLevelDomain</i>), the entire
%% message will be rejected, even if the message contains other recipients
%% that are valid.
%%
%% </li> <li> The message may not include more than 50 recipients, across the
%% To:, CC: and BCC: fields. If you need to send an email message to a larger
%% audience, you can divide your recipient list into groups of 50 or fewer,
%% and then call the <code>SendEmail</code> operation several times to send
%% the message to each group.
%%
%% </li> </ul> <important> For every message that you send, the total number
%% of recipients (including each recipient in the To:, CC: and BCC: fields)
%% is counted against the maximum number of emails you can send in a 24-hour
%% period (your <i>sending quota</i>). For more information about sending
%% quotas in Amazon SES, see <a
%% href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/manage-sending-limits.html">Managing
%% Your Amazon SES Sending Limits</a> in the <i>Amazon SES Developer
%% Guide.</i>
%%
%% </important>
send_email(Client, Input)
  when is_map(Client), is_map(Input) ->
    send_email(Client, Input, []).
send_email(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SendEmail">>, Input, Options).

%% @doc Composes an email message and immediately queues it for sending.
%%
%% This operation is more flexible than the <code>SendEmail</code> API
%% operation. When you use the <code>SendRawEmail</code> operation, you can
%% specify the headers of the message as well as its content. This
%% flexibility is useful, for example, when you want to send a multipart MIME
%% email (such a message that contains both a text and an HTML version). You
%% can also use this operation to send messages that include attachments.
%%
%% The <code>SendRawEmail</code> operation has the following requirements:
%%
%% <ul> <li> You can only send email from <a
%% href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html">verified
%% email addresses or domains</a>. If you try to send email from an address
%% that isn't verified, the operation results in an "Email address not
%% verified" error.
%%
%% </li> <li> If your account is still in the <a
%% href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/request-production-access.html">Amazon
%% SES sandbox</a>, you can only send email to other verified addresses in
%% your account, or to addresses that are associated with the <a
%% href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/mailbox-simulator.html">Amazon
%% SES mailbox simulator</a>.
%%
%% </li> <li> The maximum message size, including attachments, is 10 MB.
%%
%% </li> <li> Each message has to include at least one recipient address. A
%% recipient address includes any address on the To:, CC:, or BCC: lines.
%%
%% </li> <li> If you send a single message to more than one recipient
%% address, and one of the recipient addresses isn't in a valid format (that
%% is, it's not in the format
%% <i>UserName@[SubDomain.]Domain.TopLevelDomain</i>), Amazon SES rejects the
%% entire message, even if the other addresses are valid.
%%
%% </li> <li> Each message can include up to 50 recipient addresses across
%% the To:, CC:, or BCC: lines. If you need to send a single message to more
%% than 50 recipients, you have to split the list of recipient addresses into
%% groups of less than 50 recipients, and send separate messages to each
%% group.
%%
%% </li> <li> Amazon SES allows you to specify 8-bit
%% Content-Transfer-Encoding for MIME message parts. However, if Amazon SES
%% has to modify the contents of your message (for example, if you use open
%% and click tracking), 8-bit content isn't preserved. For this reason, we
%% highly recommend that you encode all content that isn't 7-bit ASCII. For
%% more information, see <a
%% href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-email-raw.html#send-email-mime-encoding">MIME
%% Encoding</a> in the <i>Amazon SES Developer Guide</i>.
%%
%% </li> </ul> Additionally, keep the following considerations in mind when
%% using the <code>SendRawEmail</code> operation:
%%
%% <ul> <li> Although you can customize the message headers when using the
%% <code>SendRawEmail</code> operation, Amazon SES will automatically apply
%% its own <code>Message-ID</code> and <code>Date</code> headers; if you
%% passed these headers when creating the message, they will be overwritten
%% by the values that Amazon SES provides.
%%
%% </li> <li> If you are using sending authorization to send on behalf of
%% another user, <code>SendRawEmail</code> enables you to specify the
%% cross-account identity for the email's Source, From, and Return-Path
%% parameters in one of two ways: you can pass optional parameters
%% <code>SourceArn</code>, <code>FromArn</code>, and/or
%% <code>ReturnPathArn</code> to the API, or you can include the following
%% X-headers in the header of your raw email:
%%
%% <ul> <li> <code>X-SES-SOURCE-ARN</code>
%%
%% </li> <li> <code>X-SES-FROM-ARN</code>
%%
%% </li> <li> <code>X-SES-RETURN-PATH-ARN</code>
%%
%% </li> </ul> <important> Don't include these X-headers in the DKIM
%% signature. Amazon SES removes these before it sends the email.
%%
%% </important> If you only specify the <code>SourceIdentityArn</code>
%% parameter, Amazon SES sets the From and Return-Path addresses to the same
%% identity that you specified.
%%
%% For more information about sending authorization, see the <a
%% href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Using
%% Sending Authorization with Amazon SES</a> in the <i>Amazon SES Developer
%% Guide.</i>
%%
%% </li> <li> For every message that you send, the total number of recipients
%% (including each recipient in the To:, CC: and BCC: fields) is counted
%% against the maximum number of emails you can send in a 24-hour period
%% (your <i>sending quota</i>). For more information about sending quotas in
%% Amazon SES, see <a
%% href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/manage-sending-limits.html">Managing
%% Your Amazon SES Sending Limits</a> in the <i>Amazon SES Developer
%% Guide.</i>
%%
%% </li> </ul>
send_raw_email(Client, Input)
  when is_map(Client), is_map(Input) ->
    send_raw_email(Client, Input, []).
send_raw_email(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SendRawEmail">>, Input, Options).

%% @doc Composes an email message using an email template and immediately
%% queues it for sending.
%%
%% In order to send email using the <code>SendTemplatedEmail</code>
%% operation, your call to the API must meet the following requirements:
%%
%% <ul> <li> The call must refer to an existing email template. You can
%% create email templates using the <a>CreateTemplate</a> operation.
%%
%% </li> <li> The message must be sent from a verified email address or
%% domain.
%%
%% </li> <li> If your account is still in the Amazon SES sandbox, you may
%% only send to verified addresses or domains, or to email addresses
%% associated with the Amazon SES Mailbox Simulator. For more information,
%% see <a
%% href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html">Verifying
%% Email Addresses and Domains</a> in the <i>Amazon SES Developer Guide.</i>
%%
%% </li> <li> The maximum message size is 10 MB.
%%
%% </li> <li> Calls to the <code>SendTemplatedEmail</code> operation may only
%% include one <code>Destination</code> parameter. A destination is a set of
%% recipients who will receive the same version of the email. The
%% <code>Destination</code> parameter can include up to 50 recipients, across
%% the To:, CC: and BCC: fields.
%%
%% </li> <li> The <code>Destination</code> parameter must include at least
%% one recipient email address. The recipient address can be a To: address, a
%% CC: address, or a BCC: address. If a recipient email address is invalid
%% (that is, it is not in the format
%% <i>UserName@[SubDomain.]Domain.TopLevelDomain</i>), the entire message
%% will be rejected, even if the message contains other recipients that are
%% valid.
%%
%% </li> </ul> <important> If your call to the
%% <code>SendTemplatedEmail</code> operation includes all of the required
%% parameters, Amazon SES accepts it and returns a Message ID. However, if
%% Amazon SES can't render the email because the template contains errors, it
%% doesn't send the email. Additionally, because it already accepted the
%% message, Amazon SES doesn't return a message stating that it was unable to
%% send the email.
%%
%% For these reasons, we highly recommend that you set up Amazon SES to send
%% you notifications when Rendering Failure events occur. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html">Sending
%% Personalized Email Using the Amazon SES API</a> in the <i>Amazon Simple
%% Email Service Developer Guide</i>.
%%
%% </important>
send_templated_email(Client, Input)
  when is_map(Client), is_map(Input) ->
    send_templated_email(Client, Input, []).
send_templated_email(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SendTemplatedEmail">>, Input, Options).

%% @doc Sets the specified receipt rule set as the active receipt rule set.
%%
%% <note> To disable your email-receiving through Amazon SES completely, you
%% can call this API with RuleSetName set to null.
%%
%% </note> For information about managing receipt rule sets, see the <a
%% href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rule-sets.html">Amazon
%% SES Developer Guide</a>.
%%
%% You can execute this operation no more than once per second.
set_active_receipt_rule_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_active_receipt_rule_set(Client, Input, []).
set_active_receipt_rule_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetActiveReceiptRuleSet">>, Input, Options).

%% @doc Enables or disables Easy DKIM signing of email sent from an identity.
%% If Easy DKIM signing is enabled for a domain, then Amazon SES uses DKIM to
%% sign all email that it sends from addresses on that domain. If Easy DKIM
%% signing is enabled for an email address, then Amazon SES uses DKIM to sign
%% all email it sends from that address.
%%
%% <note> For email addresses (for example, <code>user@example.com</code>),
%% you can only enable DKIM signing if the corresponding domain (in this
%% case, <code>example.com</code>) has been set up to use Easy DKIM.
%%
%% </note> You can enable DKIM signing for an identity at any time after you
%% start the verification process for the identity, even if the verification
%% process isn't complete.
%%
%% You can execute this operation no more than once per second.
%%
%% For more information about Easy DKIM signing, go to the <a
%% href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html">Amazon
%% SES Developer Guide</a>.
set_identity_dkim_enabled(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_identity_dkim_enabled(Client, Input, []).
set_identity_dkim_enabled(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetIdentityDkimEnabled">>, Input, Options).

%% @doc Given an identity (an email address or a domain), enables or disables
%% whether Amazon SES forwards bounce and complaint notifications as email.
%% Feedback forwarding can only be disabled when Amazon Simple Notification
%% Service (Amazon SNS) topics are specified for both bounces and complaints.
%%
%% <note> Feedback forwarding does not apply to delivery notifications.
%% Delivery notifications are only available through Amazon SNS.
%%
%% </note> You can execute this operation no more than once per second.
%%
%% For more information about using notifications with Amazon SES, see the <a
%% href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications.html">Amazon
%% SES Developer Guide</a>.
set_identity_feedback_forwarding_enabled(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_identity_feedback_forwarding_enabled(Client, Input, []).
set_identity_feedback_forwarding_enabled(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetIdentityFeedbackForwardingEnabled">>, Input, Options).

%% @doc Given an identity (an email address or a domain), sets whether Amazon
%% SES includes the original email headers in the Amazon Simple Notification
%% Service (Amazon SNS) notifications of a specified type.
%%
%% You can execute this operation no more than once per second.
%%
%% For more information about using notifications with Amazon SES, see the <a
%% href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications.html">Amazon
%% SES Developer Guide</a>.
set_identity_headers_in_notifications_enabled(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_identity_headers_in_notifications_enabled(Client, Input, []).
set_identity_headers_in_notifications_enabled(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetIdentityHeadersInNotificationsEnabled">>, Input, Options).

%% @doc Enables or disables the custom MAIL FROM domain setup for a verified
%% identity (an email address or a domain).
%%
%% <important> To send emails using the specified MAIL FROM domain, you must
%% add an MX record to your MAIL FROM domain's DNS settings. If you want your
%% emails to pass Sender Policy Framework (SPF) checks, you must also add or
%% update an SPF record. For more information, see the <a
%% href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/mail-from-set.html">Amazon
%% SES Developer Guide</a>.
%%
%% </important> You can execute this operation no more than once per second.
set_identity_mail_from_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_identity_mail_from_domain(Client, Input, []).
set_identity_mail_from_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetIdentityMailFromDomain">>, Input, Options).

%% @doc Sets an Amazon Simple Notification Service (Amazon SNS) topic to use
%% when delivering notifications. When you use this operation, you specify a
%% verified identity, such as an email address or domain. When you send an
%% email that uses the chosen identity in the Source field, Amazon SES sends
%% notifications to the topic you specified. You can send bounce, complaint,
%% or delivery notifications (or any combination of the three) to the Amazon
%% SNS topic that you specify.
%%
%% You can execute this operation no more than once per second.
%%
%% For more information about feedback notification, see the <a
%% href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications.html">Amazon
%% SES Developer Guide</a>.
set_identity_notification_topic(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_identity_notification_topic(Client, Input, []).
set_identity_notification_topic(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetIdentityNotificationTopic">>, Input, Options).

%% @doc Sets the position of the specified receipt rule in the receipt rule
%% set.
%%
%% For information about managing receipt rules, see the <a
%% href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rules.html">Amazon
%% SES Developer Guide</a>.
%%
%% You can execute this operation no more than once per second.
set_receipt_rule_position(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_receipt_rule_position(Client, Input, []).
set_receipt_rule_position(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetReceiptRulePosition">>, Input, Options).

%% @doc Creates a preview of the MIME content of an email when provided with
%% a template and a set of replacement data.
%%
%% You can execute this operation no more than once per second.
test_render_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    test_render_template(Client, Input, []).
test_render_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TestRenderTemplate">>, Input, Options).

%% @doc Enables or disables email sending across your entire Amazon SES
%% account in the current AWS Region. You can use this operation in
%% conjunction with Amazon CloudWatch alarms to temporarily pause email
%% sending across your Amazon SES account in a given AWS Region when
%% reputation metrics (such as your bounce or complaint rates) reach certain
%% thresholds.
%%
%% You can execute this operation no more than once per second.
update_account_sending_enabled(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_account_sending_enabled(Client, Input, []).
update_account_sending_enabled(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateAccountSendingEnabled">>, Input, Options).

%% @doc Updates the event destination of a configuration set. Event
%% destinations are associated with configuration sets, which enable you to
%% publish email sending events to Amazon CloudWatch, Amazon Kinesis
%% Firehose, or Amazon Simple Notification Service (Amazon SNS). For
%% information about using configuration sets, see <a
%% href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Monitoring
%% Your Amazon SES Sending Activity</a> in the <i>Amazon SES Developer
%% Guide.</i>
%%
%% <note> When you create or update an event destination, you must provide
%% one, and only one, destination. The destination can be Amazon CloudWatch,
%% Amazon Kinesis Firehose, or Amazon Simple Notification Service (Amazon
%% SNS).
%%
%% </note> You can execute this operation no more than once per second.
update_configuration_set_event_destination(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_configuration_set_event_destination(Client, Input, []).
update_configuration_set_event_destination(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateConfigurationSetEventDestination">>, Input, Options).

%% @doc Enables or disables the publishing of reputation metrics for emails
%% sent using a specific configuration set in a given AWS Region. Reputation
%% metrics include bounce and complaint rates. These metrics are published to
%% Amazon CloudWatch. By using CloudWatch, you can create alarms when bounce
%% or complaint rates exceed certain thresholds.
%%
%% You can execute this operation no more than once per second.
update_configuration_set_reputation_metrics_enabled(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_configuration_set_reputation_metrics_enabled(Client, Input, []).
update_configuration_set_reputation_metrics_enabled(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateConfigurationSetReputationMetricsEnabled">>, Input, Options).

%% @doc Enables or disables email sending for messages sent using a specific
%% configuration set in a given AWS Region. You can use this operation in
%% conjunction with Amazon CloudWatch alarms to temporarily pause email
%% sending for a configuration set when the reputation metrics for that
%% configuration set (such as your bounce on complaint rate) exceed certain
%% thresholds.
%%
%% You can execute this operation no more than once per second.
update_configuration_set_sending_enabled(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_configuration_set_sending_enabled(Client, Input, []).
update_configuration_set_sending_enabled(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateConfigurationSetSendingEnabled">>, Input, Options).

%% @doc Modifies an association between a configuration set and a custom
%% domain for open and click event tracking.
%%
%% By default, images and links used for tracking open and click events are
%% hosted on domains operated by Amazon SES. You can configure a subdomain of
%% your own to handle these events. For information about using custom
%% domains, see the <a
%% href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/configure-custom-open-click-domains.html">Amazon
%% SES Developer Guide</a>.
update_configuration_set_tracking_options(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_configuration_set_tracking_options(Client, Input, []).
update_configuration_set_tracking_options(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateConfigurationSetTrackingOptions">>, Input, Options).

%% @doc Updates an existing custom verification email template.
%%
%% For more information about custom verification email templates, see <a
%% href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/custom-verification-emails.html">Using
%% Custom Verification Email Templates</a> in the <i>Amazon SES Developer
%% Guide</i>.
%%
%% You can execute this operation no more than once per second.
update_custom_verification_email_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_custom_verification_email_template(Client, Input, []).
update_custom_verification_email_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateCustomVerificationEmailTemplate">>, Input, Options).

%% @doc Updates a receipt rule.
%%
%% For information about managing receipt rules, see the <a
%% href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rules.html">Amazon
%% SES Developer Guide</a>.
%%
%% You can execute this operation no more than once per second.
update_receipt_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_receipt_rule(Client, Input, []).
update_receipt_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateReceiptRule">>, Input, Options).

%% @doc Updates an email template. Email templates enable you to send
%% personalized email to one or more destinations in a single API operation.
%% For more information, see the <a
%% href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html">Amazon
%% SES Developer Guide</a>.
%%
%% You can execute this operation no more than once per second.
update_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_template(Client, Input, []).
update_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateTemplate">>, Input, Options).

%% @doc Returns a set of DKIM tokens for a domain identity.
%%
%% <important> When you execute the <code>VerifyDomainDkim</code> operation,
%% the domain that you specify is added to the list of identities that are
%% associated with your account. This is true even if you haven't already
%% associated the domain with your account by using the
%% <code>VerifyDomainIdentity</code> operation. However, you can't send email
%% from the domain until you either successfully <a
%% href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-domains.html">verify
%% it</a> or you successfully <a
%% href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html">set
%% up DKIM for it</a>.
%%
%% </important> You use the tokens that are generated by this operation to
%% create CNAME records. When Amazon SES detects that you've added these
%% records to the DNS configuration for a domain, you can start sending email
%% from that domain. You can start sending email even if you haven't added
%% the TXT record provided by the VerifyDomainIdentity operation to the DNS
%% configuration for your domain. All email that you send from the domain is
%% authenticated using DKIM.
%%
%% To create the CNAME records for DKIM authentication, use the following
%% values:
%%
%% <ul> <li> <b>Name</b>: <i>token</i>._domainkey.<i>example.com</i>
%%
%% </li> <li> <b>Type</b>: CNAME
%%
%% </li> <li> <b>Value</b>: <i>token</i>.dkim.amazonses.com
%%
%% </li> </ul> In the preceding example, replace <i>token</i> with one of the
%% tokens that are generated when you execute this operation. Replace
%% <i>example.com</i> with your domain. Repeat this process for each token
%% that's generated by this operation.
%%
%% You can execute this operation no more than once per second.
verify_domain_dkim(Client, Input)
  when is_map(Client), is_map(Input) ->
    verify_domain_dkim(Client, Input, []).
verify_domain_dkim(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"VerifyDomainDkim">>, Input, Options).

%% @doc Adds a domain to the list of identities for your Amazon SES account
%% in the current AWS Region and attempts to verify it. For more information
%% about verifying domains, see <a
%% href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html">Verifying
%% Email Addresses and Domains</a> in the <i>Amazon SES Developer Guide.</i>
%%
%% You can execute this operation no more than once per second.
verify_domain_identity(Client, Input)
  when is_map(Client), is_map(Input) ->
    verify_domain_identity(Client, Input, []).
verify_domain_identity(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"VerifyDomainIdentity">>, Input, Options).

%% @doc Deprecated. Use the <code>VerifyEmailIdentity</code> operation to
%% verify a new email address.
verify_email_address(Client, Input)
  when is_map(Client), is_map(Input) ->
    verify_email_address(Client, Input, []).
verify_email_address(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"VerifyEmailAddress">>, Input, Options).

%% @doc Adds an email address to the list of identities for your Amazon SES
%% account in the current AWS region and attempts to verify it. As a result
%% of executing this operation, a verification email is sent to the specified
%% address.
%%
%% You can execute this operation no more than once per second.
verify_email_identity(Client, Input)
  when is_map(Client), is_map(Input) ->
    verify_email_identity(Client, Input, []).
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
request(Client, Action, Input0, Options) ->
    Client1 = Client#{service => <<"ses">>},
    Host = get_host(<<"email">>, Client1),
    URL = get_url(Host, Client1),
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

get_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
get_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

get_url(Host, Client) ->
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
