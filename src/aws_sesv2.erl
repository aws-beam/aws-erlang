%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon SES API v2
%%
%% Welcome to the Amazon SES API v2 Reference.
%%
%% This guide provides information about the Amazon SES API v2, including
%% supported operations, data types, parameters, and schemas.
%%
%% Amazon SES is an AWS service that you can use to send email messages to
%% your customers.
%%
%% If you're new to Amazon SES API v2, you might find it helpful to also
%% review the Amazon Simple Email Service Developer Guide. The Amazon SES
%% Developer Guide provides information and code samples that demonstrate how
%% to use Amazon SES API v2 features programmatically.
%%
%% The Amazon SES API v2 is available in several AWS Regions and it provides
%% an endpoint for each of these Regions. For a list of all the Regions and
%% endpoints where the API is currently available, see AWS Service Endpoints
%% in the Amazon Web Services General Reference. To learn more about AWS
%% Regions, see Managing AWS Regions in the Amazon Web Services General
%% Reference.
%%
%% In each Region, AWS maintains multiple Availability Zones. These
%% Availability Zones are physically isolated from each other, but are united
%% by private, low-latency, high-throughput, and highly redundant network
%% connections. These Availability Zones enable us to provide very high
%% levels of availability and redundancy, while also minimizing latency. To
%% learn more about the number of Availability Zones that are available in
%% each Region, see AWS Global Infrastructure.
-module(aws_sesv2).

-export([create_configuration_set/2,
         create_configuration_set/3,
         create_configuration_set_event_destination/3,
         create_configuration_set_event_destination/4,
         create_contact/3,
         create_contact/4,
         create_contact_list/2,
         create_contact_list/3,
         create_custom_verification_email_template/2,
         create_custom_verification_email_template/3,
         create_dedicated_ip_pool/2,
         create_dedicated_ip_pool/3,
         create_deliverability_test_report/2,
         create_deliverability_test_report/3,
         create_email_identity/2,
         create_email_identity/3,
         create_email_identity_policy/4,
         create_email_identity_policy/5,
         create_email_template/2,
         create_email_template/3,
         create_import_job/2,
         create_import_job/3,
         delete_configuration_set/3,
         delete_configuration_set/4,
         delete_configuration_set_event_destination/4,
         delete_configuration_set_event_destination/5,
         delete_contact/4,
         delete_contact/5,
         delete_contact_list/3,
         delete_contact_list/4,
         delete_custom_verification_email_template/3,
         delete_custom_verification_email_template/4,
         delete_dedicated_ip_pool/3,
         delete_dedicated_ip_pool/4,
         delete_email_identity/3,
         delete_email_identity/4,
         delete_email_identity_policy/4,
         delete_email_identity_policy/5,
         delete_email_template/3,
         delete_email_template/4,
         delete_suppressed_destination/3,
         delete_suppressed_destination/4,
         get_account/1,
         get_account/3,
         get_account/4,
         get_blacklist_reports/2,
         get_blacklist_reports/4,
         get_blacklist_reports/5,
         get_configuration_set/2,
         get_configuration_set/4,
         get_configuration_set/5,
         get_configuration_set_event_destinations/2,
         get_configuration_set_event_destinations/4,
         get_configuration_set_event_destinations/5,
         get_contact/3,
         get_contact/5,
         get_contact/6,
         get_contact_list/2,
         get_contact_list/4,
         get_contact_list/5,
         get_custom_verification_email_template/2,
         get_custom_verification_email_template/4,
         get_custom_verification_email_template/5,
         get_dedicated_ip/2,
         get_dedicated_ip/4,
         get_dedicated_ip/5,
         get_dedicated_ips/1,
         get_dedicated_ips/3,
         get_dedicated_ips/4,
         get_deliverability_dashboard_options/1,
         get_deliverability_dashboard_options/3,
         get_deliverability_dashboard_options/4,
         get_deliverability_test_report/2,
         get_deliverability_test_report/4,
         get_deliverability_test_report/5,
         get_domain_deliverability_campaign/2,
         get_domain_deliverability_campaign/4,
         get_domain_deliverability_campaign/5,
         get_domain_statistics_report/4,
         get_domain_statistics_report/6,
         get_domain_statistics_report/7,
         get_email_identity/2,
         get_email_identity/4,
         get_email_identity/5,
         get_email_identity_policies/2,
         get_email_identity_policies/4,
         get_email_identity_policies/5,
         get_email_template/2,
         get_email_template/4,
         get_email_template/5,
         get_import_job/2,
         get_import_job/4,
         get_import_job/5,
         get_suppressed_destination/2,
         get_suppressed_destination/4,
         get_suppressed_destination/5,
         list_configuration_sets/1,
         list_configuration_sets/3,
         list_configuration_sets/4,
         list_contact_lists/1,
         list_contact_lists/3,
         list_contact_lists/4,
         list_contacts/2,
         list_contacts/4,
         list_contacts/5,
         list_custom_verification_email_templates/1,
         list_custom_verification_email_templates/3,
         list_custom_verification_email_templates/4,
         list_dedicated_ip_pools/1,
         list_dedicated_ip_pools/3,
         list_dedicated_ip_pools/4,
         list_deliverability_test_reports/1,
         list_deliverability_test_reports/3,
         list_deliverability_test_reports/4,
         list_domain_deliverability_campaigns/4,
         list_domain_deliverability_campaigns/6,
         list_domain_deliverability_campaigns/7,
         list_email_identities/1,
         list_email_identities/3,
         list_email_identities/4,
         list_email_templates/1,
         list_email_templates/3,
         list_email_templates/4,
         list_import_jobs/1,
         list_import_jobs/3,
         list_import_jobs/4,
         list_suppressed_destinations/1,
         list_suppressed_destinations/3,
         list_suppressed_destinations/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         put_account_dedicated_ip_warmup_attributes/2,
         put_account_dedicated_ip_warmup_attributes/3,
         put_account_details/2,
         put_account_details/3,
         put_account_sending_attributes/2,
         put_account_sending_attributes/3,
         put_account_suppression_attributes/2,
         put_account_suppression_attributes/3,
         put_configuration_set_delivery_options/3,
         put_configuration_set_delivery_options/4,
         put_configuration_set_reputation_options/3,
         put_configuration_set_reputation_options/4,
         put_configuration_set_sending_options/3,
         put_configuration_set_sending_options/4,
         put_configuration_set_suppression_options/3,
         put_configuration_set_suppression_options/4,
         put_configuration_set_tracking_options/3,
         put_configuration_set_tracking_options/4,
         put_dedicated_ip_in_pool/3,
         put_dedicated_ip_in_pool/4,
         put_dedicated_ip_warmup_attributes/3,
         put_dedicated_ip_warmup_attributes/4,
         put_deliverability_dashboard_option/2,
         put_deliverability_dashboard_option/3,
         put_email_identity_configuration_set_attributes/3,
         put_email_identity_configuration_set_attributes/4,
         put_email_identity_dkim_attributes/3,
         put_email_identity_dkim_attributes/4,
         put_email_identity_dkim_signing_attributes/3,
         put_email_identity_dkim_signing_attributes/4,
         put_email_identity_feedback_attributes/3,
         put_email_identity_feedback_attributes/4,
         put_email_identity_mail_from_attributes/3,
         put_email_identity_mail_from_attributes/4,
         put_suppressed_destination/2,
         put_suppressed_destination/3,
         send_bulk_email/2,
         send_bulk_email/3,
         send_custom_verification_email/2,
         send_custom_verification_email/3,
         send_email/2,
         send_email/3,
         tag_resource/2,
         tag_resource/3,
         test_render_email_template/3,
         test_render_email_template/4,
         untag_resource/2,
         untag_resource/3,
         update_configuration_set_event_destination/4,
         update_configuration_set_event_destination/5,
         update_contact/4,
         update_contact/5,
         update_contact_list/3,
         update_contact_list/4,
         update_custom_verification_email_template/3,
         update_custom_verification_email_template/4,
         update_email_identity_policy/4,
         update_email_identity_policy/5,
         update_email_template/3,
         update_email_template/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Create a configuration set.
%%
%% Configuration sets are groups of rules that you can apply to the emails
%% that you send. You apply a configuration set to an email by specifying the
%% name of the configuration set when you call the Amazon SES API v2. When
%% you apply a configuration set to an email, all of the rules in that
%% configuration set are applied to the email.
create_configuration_set(Client, Input) ->
    create_configuration_set(Client, Input, []).
create_configuration_set(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/email/configuration-sets"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Create an event destination.
%%
%% Events include message sends, deliveries, opens, clicks, bounces, and
%% complaints. Event destinations are places that you can send information
%% about these events to. For example, you can send event data to Amazon SNS
%% to receive notifications when you receive bounces or complaints, or you
%% can use Amazon Kinesis Data Firehose to stream data to Amazon S3 for
%% long-term storage.
%%
%% A single configuration set can include more than one event destination.
create_configuration_set_event_destination(Client, ConfigurationSetName, Input) ->
    create_configuration_set_event_destination(Client, ConfigurationSetName, Input, []).
create_configuration_set_event_destination(Client, ConfigurationSetName, Input0, Options0) ->
    Method = post,
    Path = ["/v2/email/configuration-sets/", aws_util:encode_uri(ConfigurationSetName), "/event-destinations"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a contact, which is an end-user who is receiving the email,
%% and adds them to a contact list.
create_contact(Client, ContactListName, Input) ->
    create_contact(Client, ContactListName, Input, []).
create_contact(Client, ContactListName, Input0, Options0) ->
    Method = post,
    Path = ["/v2/email/contact-lists/", aws_util:encode_uri(ContactListName), "/contacts"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a contact list.
create_contact_list(Client, Input) ->
    create_contact_list(Client, Input, []).
create_contact_list(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/email/contact-lists"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new custom verification email template.
%%
%% For more information about custom verification email templates, see Using
%% Custom Verification Email Templates in the Amazon SES Developer Guide.
%%
%% You can execute this operation no more than once per second.
create_custom_verification_email_template(Client, Input) ->
    create_custom_verification_email_template(Client, Input, []).
create_custom_verification_email_template(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/email/custom-verification-email-templates"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Create a new pool of dedicated IP addresses.
%%
%% A pool can include one or more dedicated IP addresses that are associated
%% with your AWS account. You can associate a pool with a configuration set.
%% When you send an email that uses that configuration set, the message is
%% sent from one of the addresses in the associated pool.
create_dedicated_ip_pool(Client, Input) ->
    create_dedicated_ip_pool(Client, Input, []).
create_dedicated_ip_pool(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/email/dedicated-ip-pools"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Create a new predictive inbox placement test.
%%
%% Predictive inbox placement tests can help you predict how your messages
%% will be handled by various email providers around the world. When you
%% perform a predictive inbox placement test, you provide a sample message
%% that contains the content that you plan to send to your customers. Amazon
%% SES then sends that message to special email addresses spread across
%% several major email providers. After about 24 hours, the test is complete,
%% and you can use the `GetDeliverabilityTestReport' operation to view the
%% results of the test.
create_deliverability_test_report(Client, Input) ->
    create_deliverability_test_report(Client, Input, []).
create_deliverability_test_report(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/email/deliverability-dashboard/test"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Starts the process of verifying an email identity.
%%
%% An identity is an email address or domain that you use when you send
%% email. Before you can use an identity to send email, you first have to
%% verify it. By verifying an identity, you demonstrate that you're the owner
%% of the identity, and that you've given Amazon SES API v2 permission to
%% send email from the identity.
%%
%% When you verify an email address, Amazon SES sends an email to the
%% address. Your email address is verified as soon as you follow the link in
%% the verification email.
%%
%% When you verify a domain without specifying the `DkimSigningAttributes'
%% object, this operation provides a set of DKIM tokens. You can convert
%% these tokens into CNAME records, which you then add to the DNS
%% configuration for your domain. Your domain is verified when Amazon SES
%% detects these records in the DNS configuration for your domain. This
%% verification method is known as Easy DKIM.
%%
%% Alternatively, you can perform the verification process by providing your
%% own public-private key pair. This verification method is known as Bring
%% Your Own DKIM (BYODKIM). To use BYODKIM, your call to the
%% `CreateEmailIdentity' operation has to include the `DkimSigningAttributes'
%% object. When you specify this object, you provide a selector (a component
%% of the DNS record name that identifies the public key that you want to use
%% for DKIM authentication) and a private key.
%%
%% When you verify a domain, this operation provides a set of DKIM tokens,
%% which you can convert into CNAME tokens. You add these CNAME tokens to the
%% DNS configuration for your domain. Your domain is verified when Amazon SES
%% detects these records in the DNS configuration for your domain. For some
%% DNS providers, it can take 72 hours or more to complete the domain
%% verification process.
%%
%% Additionally, you can associate an existing configuration set with the
%% email identity that you're verifying.
create_email_identity(Client, Input) ->
    create_email_identity(Client, Input, []).
create_email_identity(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/email/identities"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates the specified sending authorization policy for the given
%% identity (an email address or a domain).
%%
%% This API is for the identity owner only. If you have not verified the
%% identity, this API will return an error.
%%
%% Sending authorization is a feature that enables an identity owner to
%% authorize other senders to use its identities. For information about using
%% sending authorization, see the Amazon SES Developer Guide.
%%
%% You can execute this operation no more than once per second.
create_email_identity_policy(Client, EmailIdentity, PolicyName, Input) ->
    create_email_identity_policy(Client, EmailIdentity, PolicyName, Input, []).
create_email_identity_policy(Client, EmailIdentity, PolicyName, Input0, Options0) ->
    Method = post,
    Path = ["/v2/email/identities/", aws_util:encode_uri(EmailIdentity), "/policies/", aws_util:encode_uri(PolicyName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an email template.
%%
%% Email templates enable you to send personalized email to one or more
%% destinations in a single API operation. For more information, see the
%% Amazon SES Developer Guide.
%%
%% You can execute this operation no more than once per second.
create_email_template(Client, Input) ->
    create_email_template(Client, Input, []).
create_email_template(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/email/templates"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an import job for a data destination.
create_import_job(Client, Input) ->
    create_import_job(Client, Input, []).
create_import_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/email/import-jobs"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Delete an existing configuration set.
%%
%% Configuration sets are groups of rules that you can apply to the emails
%% you send. You apply a configuration set to an email by including a
%% reference to the configuration set in the headers of the email. When you
%% apply a configuration set to an email, all of the rules in that
%% configuration set are applied to the email.
delete_configuration_set(Client, ConfigurationSetName, Input) ->
    delete_configuration_set(Client, ConfigurationSetName, Input, []).
delete_configuration_set(Client, ConfigurationSetName, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/email/configuration-sets/", aws_util:encode_uri(ConfigurationSetName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Delete an event destination.
%%
%% Events include message sends, deliveries, opens, clicks, bounces, and
%% complaints. Event destinations are places that you can send information
%% about these events to. For example, you can send event data to Amazon SNS
%% to receive notifications when you receive bounces or complaints, or you
%% can use Amazon Kinesis Data Firehose to stream data to Amazon S3 for
%% long-term storage.
delete_configuration_set_event_destination(Client, ConfigurationSetName, EventDestinationName, Input) ->
    delete_configuration_set_event_destination(Client, ConfigurationSetName, EventDestinationName, Input, []).
delete_configuration_set_event_destination(Client, ConfigurationSetName, EventDestinationName, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/email/configuration-sets/", aws_util:encode_uri(ConfigurationSetName), "/event-destinations/", aws_util:encode_uri(EventDestinationName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Removes a contact from a contact list.
delete_contact(Client, ContactListName, EmailAddress, Input) ->
    delete_contact(Client, ContactListName, EmailAddress, Input, []).
delete_contact(Client, ContactListName, EmailAddress, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/email/contact-lists/", aws_util:encode_uri(ContactListName), "/contacts/", aws_util:encode_uri(EmailAddress), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a contact list and all of the contacts on that list.
delete_contact_list(Client, ContactListName, Input) ->
    delete_contact_list(Client, ContactListName, Input, []).
delete_contact_list(Client, ContactListName, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/email/contact-lists/", aws_util:encode_uri(ContactListName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an existing custom verification email template.
%%
%% For more information about custom verification email templates, see Using
%% Custom Verification Email Templates in the Amazon SES Developer Guide.
%%
%% You can execute this operation no more than once per second.
delete_custom_verification_email_template(Client, TemplateName, Input) ->
    delete_custom_verification_email_template(Client, TemplateName, Input, []).
delete_custom_verification_email_template(Client, TemplateName, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/email/custom-verification-email-templates/", aws_util:encode_uri(TemplateName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Delete a dedicated IP pool.
delete_dedicated_ip_pool(Client, PoolName, Input) ->
    delete_dedicated_ip_pool(Client, PoolName, Input, []).
delete_dedicated_ip_pool(Client, PoolName, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/email/dedicated-ip-pools/", aws_util:encode_uri(PoolName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an email identity.
%%
%% An identity can be either an email address or a domain name.
delete_email_identity(Client, EmailIdentity, Input) ->
    delete_email_identity(Client, EmailIdentity, Input, []).
delete_email_identity(Client, EmailIdentity, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/email/identities/", aws_util:encode_uri(EmailIdentity), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified sending authorization policy for the given
%% identity (an email address or a domain).
%%
%% This API returns successfully even if a policy with the specified name
%% does not exist.
%%
%% This API is for the identity owner only. If you have not verified the
%% identity, this API will return an error.
%%
%% Sending authorization is a feature that enables an identity owner to
%% authorize other senders to use its identities. For information about using
%% sending authorization, see the Amazon SES Developer Guide.
%%
%% You can execute this operation no more than once per second.
delete_email_identity_policy(Client, EmailIdentity, PolicyName, Input) ->
    delete_email_identity_policy(Client, EmailIdentity, PolicyName, Input, []).
delete_email_identity_policy(Client, EmailIdentity, PolicyName, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/email/identities/", aws_util:encode_uri(EmailIdentity), "/policies/", aws_util:encode_uri(PolicyName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an email template.
%%
%% You can execute this operation no more than once per second.
delete_email_template(Client, TemplateName, Input) ->
    delete_email_template(Client, TemplateName, Input, []).
delete_email_template(Client, TemplateName, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/email/templates/", aws_util:encode_uri(TemplateName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Removes an email address from the suppression list for your account.
delete_suppressed_destination(Client, EmailAddress, Input) ->
    delete_suppressed_destination(Client, EmailAddress, Input, []).
delete_suppressed_destination(Client, EmailAddress, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/email/suppression/addresses/", aws_util:encode_uri(EmailAddress), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Obtain information about the email-sending status and capabilities of
%% your Amazon SES account in the current AWS Region.
get_account(Client)
  when is_map(Client) ->
    get_account(Client, #{}, #{}).

get_account(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_account(Client, QueryMap, HeadersMap, []).

get_account(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/email/account"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieve a list of the blacklists that your dedicated IP addresses
%% appear on.
get_blacklist_reports(Client, BlacklistItemNames)
  when is_map(Client) ->
    get_blacklist_reports(Client, BlacklistItemNames, #{}, #{}).

get_blacklist_reports(Client, BlacklistItemNames, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_blacklist_reports(Client, BlacklistItemNames, QueryMap, HeadersMap, []).

get_blacklist_reports(Client, BlacklistItemNames, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/email/deliverability-dashboard/blacklist-report"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"BlacklistItemNames">>, BlacklistItemNames}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get information about an existing configuration set, including the
%% dedicated IP pool that it's associated with, whether or not it's enabled
%% for sending email, and more.
%%
%% Configuration sets are groups of rules that you can apply to the emails
%% you send. You apply a configuration set to an email by including a
%% reference to the configuration set in the headers of the email. When you
%% apply a configuration set to an email, all of the rules in that
%% configuration set are applied to the email.
get_configuration_set(Client, ConfigurationSetName)
  when is_map(Client) ->
    get_configuration_set(Client, ConfigurationSetName, #{}, #{}).

get_configuration_set(Client, ConfigurationSetName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_configuration_set(Client, ConfigurationSetName, QueryMap, HeadersMap, []).

get_configuration_set(Client, ConfigurationSetName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/email/configuration-sets/", aws_util:encode_uri(ConfigurationSetName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieve a list of event destinations that are associated with a
%% configuration set.
%%
%% Events include message sends, deliveries, opens, clicks, bounces, and
%% complaints. Event destinations are places that you can send information
%% about these events to. For example, you can send event data to Amazon SNS
%% to receive notifications when you receive bounces or complaints, or you
%% can use Amazon Kinesis Data Firehose to stream data to Amazon S3 for
%% long-term storage.
get_configuration_set_event_destinations(Client, ConfigurationSetName)
  when is_map(Client) ->
    get_configuration_set_event_destinations(Client, ConfigurationSetName, #{}, #{}).

get_configuration_set_event_destinations(Client, ConfigurationSetName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_configuration_set_event_destinations(Client, ConfigurationSetName, QueryMap, HeadersMap, []).

get_configuration_set_event_destinations(Client, ConfigurationSetName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/email/configuration-sets/", aws_util:encode_uri(ConfigurationSetName), "/event-destinations"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a contact from a contact list.
get_contact(Client, ContactListName, EmailAddress)
  when is_map(Client) ->
    get_contact(Client, ContactListName, EmailAddress, #{}, #{}).

get_contact(Client, ContactListName, EmailAddress, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_contact(Client, ContactListName, EmailAddress, QueryMap, HeadersMap, []).

get_contact(Client, ContactListName, EmailAddress, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/email/contact-lists/", aws_util:encode_uri(ContactListName), "/contacts/", aws_util:encode_uri(EmailAddress), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns contact list metadata.
%%
%% It does not return any information about the contacts present in the list.
get_contact_list(Client, ContactListName)
  when is_map(Client) ->
    get_contact_list(Client, ContactListName, #{}, #{}).

get_contact_list(Client, ContactListName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_contact_list(Client, ContactListName, QueryMap, HeadersMap, []).

get_contact_list(Client, ContactListName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/email/contact-lists/", aws_util:encode_uri(ContactListName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the custom email verification template for the template name
%% you specify.
%%
%% For more information about custom verification email templates, see Using
%% Custom Verification Email Templates in the Amazon SES Developer Guide.
%%
%% You can execute this operation no more than once per second.
get_custom_verification_email_template(Client, TemplateName)
  when is_map(Client) ->
    get_custom_verification_email_template(Client, TemplateName, #{}, #{}).

get_custom_verification_email_template(Client, TemplateName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_custom_verification_email_template(Client, TemplateName, QueryMap, HeadersMap, []).

get_custom_verification_email_template(Client, TemplateName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/email/custom-verification-email-templates/", aws_util:encode_uri(TemplateName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get information about a dedicated IP address, including the name of
%% the dedicated IP pool that it's associated with, as well information about
%% the automatic warm-up process for the address.
get_dedicated_ip(Client, Ip)
  when is_map(Client) ->
    get_dedicated_ip(Client, Ip, #{}, #{}).

get_dedicated_ip(Client, Ip, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_dedicated_ip(Client, Ip, QueryMap, HeadersMap, []).

get_dedicated_ip(Client, Ip, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/email/dedicated-ips/", aws_util:encode_uri(Ip), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the dedicated IP addresses that are associated with your AWS
%% account.
get_dedicated_ips(Client)
  when is_map(Client) ->
    get_dedicated_ips(Client, #{}, #{}).

get_dedicated_ips(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_dedicated_ips(Client, QueryMap, HeadersMap, []).

get_dedicated_ips(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/email/dedicated-ips"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)},
        {<<"PageSize">>, maps:get(<<"PageSize">>, QueryMap, undefined)},
        {<<"PoolName">>, maps:get(<<"PoolName">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieve information about the status of the Deliverability dashboard
%% for your account.
%%
%% When the Deliverability dashboard is enabled, you gain access to
%% reputation, deliverability, and other metrics for the domains that you use
%% to send email. You also gain the ability to perform predictive inbox
%% placement tests.
%%
%% When you use the Deliverability dashboard, you pay a monthly subscription
%% charge, in addition to any other fees that you accrue by using Amazon SES
%% and other AWS services. For more information about the features and cost
%% of a Deliverability dashboard subscription, see Amazon SES Pricing.
get_deliverability_dashboard_options(Client)
  when is_map(Client) ->
    get_deliverability_dashboard_options(Client, #{}, #{}).

get_deliverability_dashboard_options(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_deliverability_dashboard_options(Client, QueryMap, HeadersMap, []).

get_deliverability_dashboard_options(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/email/deliverability-dashboard"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieve the results of a predictive inbox placement test.
get_deliverability_test_report(Client, ReportId)
  when is_map(Client) ->
    get_deliverability_test_report(Client, ReportId, #{}, #{}).

get_deliverability_test_report(Client, ReportId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_deliverability_test_report(Client, ReportId, QueryMap, HeadersMap, []).

get_deliverability_test_report(Client, ReportId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/email/deliverability-dashboard/test-reports/", aws_util:encode_uri(ReportId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieve all the deliverability data for a specific campaign.
%%
%% This data is available for a campaign only if the campaign sent email by
%% using a domain that the Deliverability dashboard is enabled for.
get_domain_deliverability_campaign(Client, CampaignId)
  when is_map(Client) ->
    get_domain_deliverability_campaign(Client, CampaignId, #{}, #{}).

get_domain_deliverability_campaign(Client, CampaignId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_domain_deliverability_campaign(Client, CampaignId, QueryMap, HeadersMap, []).

get_domain_deliverability_campaign(Client, CampaignId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/email/deliverability-dashboard/campaigns/", aws_util:encode_uri(CampaignId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieve inbox placement and engagement rates for the domains that
%% you use to send email.
get_domain_statistics_report(Client, Domain, EndDate, StartDate)
  when is_map(Client) ->
    get_domain_statistics_report(Client, Domain, EndDate, StartDate, #{}, #{}).

get_domain_statistics_report(Client, Domain, EndDate, StartDate, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_domain_statistics_report(Client, Domain, EndDate, StartDate, QueryMap, HeadersMap, []).

get_domain_statistics_report(Client, Domain, EndDate, StartDate, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/email/deliverability-dashboard/statistics-report/", aws_util:encode_uri(Domain), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"EndDate">>, EndDate},
        {<<"StartDate">>, StartDate}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Provides information about a specific identity, including the
%% identity's verification status, sending authorization policies, its DKIM
%% authentication status, and its custom Mail-From settings.
get_email_identity(Client, EmailIdentity)
  when is_map(Client) ->
    get_email_identity(Client, EmailIdentity, #{}, #{}).

get_email_identity(Client, EmailIdentity, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_email_identity(Client, EmailIdentity, QueryMap, HeadersMap, []).

get_email_identity(Client, EmailIdentity, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/email/identities/", aws_util:encode_uri(EmailIdentity), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the requested sending authorization policies for the given
%% identity (an email address or a domain).
%%
%% The policies are returned as a map of policy names to policy contents. You
%% can retrieve a maximum of 20 policies at a time.
%%
%% This API is for the identity owner only. If you have not verified the
%% identity, this API will return an error.
%%
%% Sending authorization is a feature that enables an identity owner to
%% authorize other senders to use its identities. For information about using
%% sending authorization, see the Amazon SES Developer Guide.
%%
%% You can execute this operation no more than once per second.
get_email_identity_policies(Client, EmailIdentity)
  when is_map(Client) ->
    get_email_identity_policies(Client, EmailIdentity, #{}, #{}).

get_email_identity_policies(Client, EmailIdentity, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_email_identity_policies(Client, EmailIdentity, QueryMap, HeadersMap, []).

get_email_identity_policies(Client, EmailIdentity, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/email/identities/", aws_util:encode_uri(EmailIdentity), "/policies"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Displays the template object (which includes the subject line, HTML
%% part and text part) for the template you specify.
%%
%% You can execute this operation no more than once per second.
get_email_template(Client, TemplateName)
  when is_map(Client) ->
    get_email_template(Client, TemplateName, #{}, #{}).

get_email_template(Client, TemplateName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_email_template(Client, TemplateName, QueryMap, HeadersMap, []).

get_email_template(Client, TemplateName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/email/templates/", aws_util:encode_uri(TemplateName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Provides information about an import job.
get_import_job(Client, JobId)
  when is_map(Client) ->
    get_import_job(Client, JobId, #{}, #{}).

get_import_job(Client, JobId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_import_job(Client, JobId, QueryMap, HeadersMap, []).

get_import_job(Client, JobId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/email/import-jobs/", aws_util:encode_uri(JobId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a specific email address that's on the
%% suppression list for your account.
get_suppressed_destination(Client, EmailAddress)
  when is_map(Client) ->
    get_suppressed_destination(Client, EmailAddress, #{}, #{}).

get_suppressed_destination(Client, EmailAddress, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_suppressed_destination(Client, EmailAddress, QueryMap, HeadersMap, []).

get_suppressed_destination(Client, EmailAddress, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/email/suppression/addresses/", aws_util:encode_uri(EmailAddress), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List all of the configuration sets associated with your account in
%% the current region.
%%
%% Configuration sets are groups of rules that you can apply to the emails
%% you send. You apply a configuration set to an email by including a
%% reference to the configuration set in the headers of the email. When you
%% apply a configuration set to an email, all of the rules in that
%% configuration set are applied to the email.
list_configuration_sets(Client)
  when is_map(Client) ->
    list_configuration_sets(Client, #{}, #{}).

list_configuration_sets(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_configuration_sets(Client, QueryMap, HeadersMap, []).

list_configuration_sets(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/email/configuration-sets"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)},
        {<<"PageSize">>, maps:get(<<"PageSize">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all of the contact lists available.
list_contact_lists(Client)
  when is_map(Client) ->
    list_contact_lists(Client, #{}, #{}).

list_contact_lists(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_contact_lists(Client, QueryMap, HeadersMap, []).

list_contact_lists(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/email/contact-lists"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)},
        {<<"PageSize">>, maps:get(<<"PageSize">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the contacts present in a specific contact list.
list_contacts(Client, ContactListName)
  when is_map(Client) ->
    list_contacts(Client, ContactListName, #{}, #{}).

list_contacts(Client, ContactListName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_contacts(Client, ContactListName, QueryMap, HeadersMap, []).

list_contacts(Client, ContactListName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/email/contact-lists/", aws_util:encode_uri(ContactListName), "/contacts"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)},
        {<<"PageSize">>, maps:get(<<"PageSize">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the existing custom verification email templates for your
%% account in the current AWS Region.
%%
%% For more information about custom verification email templates, see Using
%% Custom Verification Email Templates in the Amazon SES Developer Guide.
%%
%% You can execute this operation no more than once per second.
list_custom_verification_email_templates(Client)
  when is_map(Client) ->
    list_custom_verification_email_templates(Client, #{}, #{}).

list_custom_verification_email_templates(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_custom_verification_email_templates(Client, QueryMap, HeadersMap, []).

list_custom_verification_email_templates(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/email/custom-verification-email-templates"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)},
        {<<"PageSize">>, maps:get(<<"PageSize">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List all of the dedicated IP pools that exist in your AWS account in
%% the current Region.
list_dedicated_ip_pools(Client)
  when is_map(Client) ->
    list_dedicated_ip_pools(Client, #{}, #{}).

list_dedicated_ip_pools(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_dedicated_ip_pools(Client, QueryMap, HeadersMap, []).

list_dedicated_ip_pools(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/email/dedicated-ip-pools"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)},
        {<<"PageSize">>, maps:get(<<"PageSize">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Show a list of the predictive inbox placement tests that you've
%% performed, regardless of their statuses.
%%
%% For predictive inbox placement tests that are complete, you can use the
%% `GetDeliverabilityTestReport' operation to view the results.
list_deliverability_test_reports(Client)
  when is_map(Client) ->
    list_deliverability_test_reports(Client, #{}, #{}).

list_deliverability_test_reports(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_deliverability_test_reports(Client, QueryMap, HeadersMap, []).

list_deliverability_test_reports(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/email/deliverability-dashboard/test-reports"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)},
        {<<"PageSize">>, maps:get(<<"PageSize">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieve deliverability data for all the campaigns that used a
%% specific domain to send email during a specified time range.
%%
%% This data is available for a domain only if you enabled the Deliverability
%% dashboard for the domain.
list_domain_deliverability_campaigns(Client, SubscribedDomain, EndDate, StartDate)
  when is_map(Client) ->
    list_domain_deliverability_campaigns(Client, SubscribedDomain, EndDate, StartDate, #{}, #{}).

list_domain_deliverability_campaigns(Client, SubscribedDomain, EndDate, StartDate, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_domain_deliverability_campaigns(Client, SubscribedDomain, EndDate, StartDate, QueryMap, HeadersMap, []).

list_domain_deliverability_campaigns(Client, SubscribedDomain, EndDate, StartDate, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/email/deliverability-dashboard/domains/", aws_util:encode_uri(SubscribedDomain), "/campaigns"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"EndDate">>, EndDate},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)},
        {<<"PageSize">>, maps:get(<<"PageSize">>, QueryMap, undefined)},
        {<<"StartDate">>, StartDate}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of all of the email identities that are associated
%% with your AWS account.
%%
%% An identity can be either an email address or a domain. This operation
%% returns identities that are verified as well as those that aren't. This
%% operation returns identities that are associated with Amazon SES and
%% Amazon Pinpoint.
list_email_identities(Client)
  when is_map(Client) ->
    list_email_identities(Client, #{}, #{}).

list_email_identities(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_email_identities(Client, QueryMap, HeadersMap, []).

list_email_identities(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/email/identities"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)},
        {<<"PageSize">>, maps:get(<<"PageSize">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the email templates present in your Amazon SES account in the
%% current AWS Region.
%%
%% You can execute this operation no more than once per second.
list_email_templates(Client)
  when is_map(Client) ->
    list_email_templates(Client, #{}, #{}).

list_email_templates(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_email_templates(Client, QueryMap, HeadersMap, []).

list_email_templates(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/email/templates"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)},
        {<<"PageSize">>, maps:get(<<"PageSize">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all of the import jobs.
list_import_jobs(Client)
  when is_map(Client) ->
    list_import_jobs(Client, #{}, #{}).

list_import_jobs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_import_jobs(Client, QueryMap, HeadersMap, []).

list_import_jobs(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/email/import-jobs"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)},
        {<<"PageSize">>, maps:get(<<"PageSize">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of email addresses that are on the suppression list
%% for your account.
list_suppressed_destinations(Client)
  when is_map(Client) ->
    list_suppressed_destinations(Client, #{}, #{}).

list_suppressed_destinations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_suppressed_destinations(Client, QueryMap, HeadersMap, []).

list_suppressed_destinations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/email/suppression/addresses"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"EndDate">>, maps:get(<<"EndDate">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)},
        {<<"PageSize">>, maps:get(<<"PageSize">>, QueryMap, undefined)},
        {<<"Reason">>, maps:get(<<"Reason">>, QueryMap, undefined)},
        {<<"StartDate">>, maps:get(<<"StartDate">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieve a list of the tags (keys and values) that are associated
%% with a specified resource.
%%
%% A tag is a label that you optionally define and associate with a resource.
%% Each tag consists of a required tag key and an optional associated tag
%% value. A tag key is a general label that acts as a category for more
%% specific tag values. A tag value acts as a descriptor within a tag key.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/email/tags"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"ResourceArn">>, ResourceArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Enable or disable the automatic warm-up feature for dedicated IP
%% addresses.
put_account_dedicated_ip_warmup_attributes(Client, Input) ->
    put_account_dedicated_ip_warmup_attributes(Client, Input, []).
put_account_dedicated_ip_warmup_attributes(Client, Input0, Options0) ->
    Method = put,
    Path = ["/v2/email/account/dedicated-ips/warmup"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Update your Amazon SES account details.
put_account_details(Client, Input) ->
    put_account_details(Client, Input, []).
put_account_details(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/email/account/details"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Enable or disable the ability of your account to send email.
put_account_sending_attributes(Client, Input) ->
    put_account_sending_attributes(Client, Input, []).
put_account_sending_attributes(Client, Input0, Options0) ->
    Method = put,
    Path = ["/v2/email/account/sending"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Change the settings for the account-level suppression list.
put_account_suppression_attributes(Client, Input) ->
    put_account_suppression_attributes(Client, Input, []).
put_account_suppression_attributes(Client, Input0, Options0) ->
    Method = put,
    Path = ["/v2/email/account/suppression"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Associate a configuration set with a dedicated IP pool.
%%
%% You can use dedicated IP pools to create groups of dedicated IP addresses
%% for sending specific types of email.
put_configuration_set_delivery_options(Client, ConfigurationSetName, Input) ->
    put_configuration_set_delivery_options(Client, ConfigurationSetName, Input, []).
put_configuration_set_delivery_options(Client, ConfigurationSetName, Input0, Options0) ->
    Method = put,
    Path = ["/v2/email/configuration-sets/", aws_util:encode_uri(ConfigurationSetName), "/delivery-options"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Enable or disable collection of reputation metrics for emails that
%% you send using a particular configuration set in a specific AWS Region.
put_configuration_set_reputation_options(Client, ConfigurationSetName, Input) ->
    put_configuration_set_reputation_options(Client, ConfigurationSetName, Input, []).
put_configuration_set_reputation_options(Client, ConfigurationSetName, Input0, Options0) ->
    Method = put,
    Path = ["/v2/email/configuration-sets/", aws_util:encode_uri(ConfigurationSetName), "/reputation-options"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Enable or disable email sending for messages that use a particular
%% configuration set in a specific AWS Region.
put_configuration_set_sending_options(Client, ConfigurationSetName, Input) ->
    put_configuration_set_sending_options(Client, ConfigurationSetName, Input, []).
put_configuration_set_sending_options(Client, ConfigurationSetName, Input0, Options0) ->
    Method = put,
    Path = ["/v2/email/configuration-sets/", aws_util:encode_uri(ConfigurationSetName), "/sending"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Specify the account suppression list preferences for a configuration
%% set.
put_configuration_set_suppression_options(Client, ConfigurationSetName, Input) ->
    put_configuration_set_suppression_options(Client, ConfigurationSetName, Input, []).
put_configuration_set_suppression_options(Client, ConfigurationSetName, Input0, Options0) ->
    Method = put,
    Path = ["/v2/email/configuration-sets/", aws_util:encode_uri(ConfigurationSetName), "/suppression-options"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Specify a custom domain to use for open and click tracking elements
%% in email that you send.
put_configuration_set_tracking_options(Client, ConfigurationSetName, Input) ->
    put_configuration_set_tracking_options(Client, ConfigurationSetName, Input, []).
put_configuration_set_tracking_options(Client, ConfigurationSetName, Input0, Options0) ->
    Method = put,
    Path = ["/v2/email/configuration-sets/", aws_util:encode_uri(ConfigurationSetName), "/tracking-options"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Move a dedicated IP address to an existing dedicated IP pool.
%%
%% The dedicated IP address that you specify must already exist, and must be
%% associated with your AWS account.
%%
%% The dedicated IP pool you specify must already exist. You can create a new
%% pool by using the `CreateDedicatedIpPool' operation.
put_dedicated_ip_in_pool(Client, Ip, Input) ->
    put_dedicated_ip_in_pool(Client, Ip, Input, []).
put_dedicated_ip_in_pool(Client, Ip, Input0, Options0) ->
    Method = put,
    Path = ["/v2/email/dedicated-ips/", aws_util:encode_uri(Ip), "/pool"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc
put_dedicated_ip_warmup_attributes(Client, Ip, Input) ->
    put_dedicated_ip_warmup_attributes(Client, Ip, Input, []).
put_dedicated_ip_warmup_attributes(Client, Ip, Input0, Options0) ->
    Method = put,
    Path = ["/v2/email/dedicated-ips/", aws_util:encode_uri(Ip), "/warmup"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Enable or disable the Deliverability dashboard.
%%
%% When you enable the Deliverability dashboard, you gain access to
%% reputation, deliverability, and other metrics for the domains that you use
%% to send email. You also gain the ability to perform predictive inbox
%% placement tests.
%%
%% When you use the Deliverability dashboard, you pay a monthly subscription
%% charge, in addition to any other fees that you accrue by using Amazon SES
%% and other AWS services. For more information about the features and cost
%% of a Deliverability dashboard subscription, see Amazon SES Pricing.
put_deliverability_dashboard_option(Client, Input) ->
    put_deliverability_dashboard_option(Client, Input, []).
put_deliverability_dashboard_option(Client, Input0, Options0) ->
    Method = put,
    Path = ["/v2/email/deliverability-dashboard"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Used to associate a configuration set with an email identity.
put_email_identity_configuration_set_attributes(Client, EmailIdentity, Input) ->
    put_email_identity_configuration_set_attributes(Client, EmailIdentity, Input, []).
put_email_identity_configuration_set_attributes(Client, EmailIdentity, Input0, Options0) ->
    Method = put,
    Path = ["/v2/email/identities/", aws_util:encode_uri(EmailIdentity), "/configuration-set"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Used to enable or disable DKIM authentication for an email identity.
put_email_identity_dkim_attributes(Client, EmailIdentity, Input) ->
    put_email_identity_dkim_attributes(Client, EmailIdentity, Input, []).
put_email_identity_dkim_attributes(Client, EmailIdentity, Input0, Options0) ->
    Method = put,
    Path = ["/v2/email/identities/", aws_util:encode_uri(EmailIdentity), "/dkim"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Used to configure or change the DKIM authentication settings for an
%% email domain identity.
%%
%% You can use this operation to do any of the following:
%%
%% <ul> <li> Update the signing attributes for an identity that uses Bring
%% Your Own DKIM (BYODKIM).
%%
%% </li> <li> Change from using no DKIM authentication to using Easy DKIM.
%%
%% </li> <li> Change from using no DKIM authentication to using BYODKIM.
%%
%% </li> <li> Change from using Easy DKIM to using BYODKIM.
%%
%% </li> <li> Change from using BYODKIM to using Easy DKIM.
%%
%% </li> </ul>
put_email_identity_dkim_signing_attributes(Client, EmailIdentity, Input) ->
    put_email_identity_dkim_signing_attributes(Client, EmailIdentity, Input, []).
put_email_identity_dkim_signing_attributes(Client, EmailIdentity, Input0, Options0) ->
    Method = put,
    Path = ["/v1/email/identities/", aws_util:encode_uri(EmailIdentity), "/dkim/signing"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Used to enable or disable feedback forwarding for an identity.
%%
%% This setting determines what happens when an identity is used to send an
%% email that results in a bounce or complaint event.
%%
%% If the value is `true', you receive email notifications when bounce or
%% complaint events occur. These notifications are sent to the address that
%% you specified in the `Return-Path' header of the original email.
%%
%% You're required to have a method of tracking bounces and complaints. If
%% you haven't set up another mechanism for receiving bounce or complaint
%% notifications (for example, by setting up an event destination), you
%% receive an email notification when these events occur (even if this
%% setting is disabled).
put_email_identity_feedback_attributes(Client, EmailIdentity, Input) ->
    put_email_identity_feedback_attributes(Client, EmailIdentity, Input, []).
put_email_identity_feedback_attributes(Client, EmailIdentity, Input0, Options0) ->
    Method = put,
    Path = ["/v2/email/identities/", aws_util:encode_uri(EmailIdentity), "/feedback"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Used to enable or disable the custom Mail-From domain configuration
%% for an email identity.
put_email_identity_mail_from_attributes(Client, EmailIdentity, Input) ->
    put_email_identity_mail_from_attributes(Client, EmailIdentity, Input, []).
put_email_identity_mail_from_attributes(Client, EmailIdentity, Input0, Options0) ->
    Method = put,
    Path = ["/v2/email/identities/", aws_util:encode_uri(EmailIdentity), "/mail-from"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Adds an email address to the suppression list for your account.
put_suppressed_destination(Client, Input) ->
    put_suppressed_destination(Client, Input, []).
put_suppressed_destination(Client, Input0, Options0) ->
    Method = put,
    Path = ["/v2/email/suppression/addresses"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Composes an email message to multiple destinations.
send_bulk_email(Client, Input) ->
    send_bulk_email(Client, Input, []).
send_bulk_email(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/email/outbound-bulk-emails"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Adds an email address to the list of identities for your Amazon SES
%% account in the current AWS Region and attempts to verify it.
%%
%% As a result of executing this operation, a customized verification email
%% is sent to the specified address.
%%
%% To use this operation, you must first create a custom verification email
%% template. For more information about creating and using custom
%% verification email templates, see Using Custom Verification Email
%% Templates in the Amazon SES Developer Guide.
%%
%% You can execute this operation no more than once per second.
send_custom_verification_email(Client, Input) ->
    send_custom_verification_email(Client, Input, []).
send_custom_verification_email(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/email/outbound-custom-verification-emails"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Sends an email message.
%%
%% You can use the Amazon SES API v2 to send two types of messages:
%%
%% <ul> <li> Simple – A standard email message. When you create this type of
%% message, you specify the sender, the recipient, and the message body, and
%% Amazon SES assembles the message for you.
%%
%% </li> <li> Raw – A raw, MIME-formatted email message. When you send this
%% type of email, you have to specify all of the message headers, as well as
%% the message body. You can use this message type to send messages that
%% contain attachments. The message that you specify has to be a valid MIME
%% message.
%%
%% </li> <li> Templated – A message that contains personalization tags. When
%% you send this type of email, Amazon SES API v2 automatically replaces the
%% tags with values that you specify.
%%
%% </li> </ul>
send_email(Client, Input) ->
    send_email(Client, Input, []).
send_email(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/email/outbound-emails"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Add one or more tags (keys and values) to a specified resource.
%%
%% A tag is a label that you optionally define and associate with a resource.
%% Tags can help you categorize and manage resources in different ways, such
%% as by purpose, owner, environment, or other criteria. A resource can have
%% as many as 50 tags.
%%
%% Each tag consists of a required tag key and an associated tag value, both
%% of which you define. A tag key is a general label that acts as a category
%% for more specific tag values. A tag value acts as a descriptor within a
%% tag key.
tag_resource(Client, Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/email/tags"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a preview of the MIME content of an email when provided with
%% a template and a set of replacement data.
%%
%% You can execute this operation no more than once per second.
test_render_email_template(Client, TemplateName, Input) ->
    test_render_email_template(Client, TemplateName, Input, []).
test_render_email_template(Client, TemplateName, Input0, Options0) ->
    Method = post,
    Path = ["/v2/email/templates/", aws_util:encode_uri(TemplateName), "/render"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Remove one or more tags (keys and values) from a specified resource.
untag_resource(Client, Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/email/tags"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"ResourceArn">>, <<"ResourceArn">>},
                     {<<"TagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Update the configuration of an event destination for a configuration
%% set.
%%
%% Events include message sends, deliveries, opens, clicks, bounces, and
%% complaints. Event destinations are places that you can send information
%% about these events to. For example, you can send event data to Amazon SNS
%% to receive notifications when you receive bounces or complaints, or you
%% can use Amazon Kinesis Data Firehose to stream data to Amazon S3 for
%% long-term storage.
update_configuration_set_event_destination(Client, ConfigurationSetName, EventDestinationName, Input) ->
    update_configuration_set_event_destination(Client, ConfigurationSetName, EventDestinationName, Input, []).
update_configuration_set_event_destination(Client, ConfigurationSetName, EventDestinationName, Input0, Options0) ->
    Method = put,
    Path = ["/v2/email/configuration-sets/", aws_util:encode_uri(ConfigurationSetName), "/event-destinations/", aws_util:encode_uri(EventDestinationName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a contact's preferences for a list.
%%
%% It is not necessary to specify all existing topic preferences in the
%% TopicPreferences object, just the ones that need updating.
update_contact(Client, ContactListName, EmailAddress, Input) ->
    update_contact(Client, ContactListName, EmailAddress, Input, []).
update_contact(Client, ContactListName, EmailAddress, Input0, Options0) ->
    Method = put,
    Path = ["/v2/email/contact-lists/", aws_util:encode_uri(ContactListName), "/contacts/", aws_util:encode_uri(EmailAddress), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates contact list metadata.
%%
%% This operation does a complete replacement.
update_contact_list(Client, ContactListName, Input) ->
    update_contact_list(Client, ContactListName, Input, []).
update_contact_list(Client, ContactListName, Input0, Options0) ->
    Method = put,
    Path = ["/v2/email/contact-lists/", aws_util:encode_uri(ContactListName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an existing custom verification email template.
%%
%% For more information about custom verification email templates, see Using
%% Custom Verification Email Templates in the Amazon SES Developer Guide.
%%
%% You can execute this operation no more than once per second.
update_custom_verification_email_template(Client, TemplateName, Input) ->
    update_custom_verification_email_template(Client, TemplateName, Input, []).
update_custom_verification_email_template(Client, TemplateName, Input0, Options0) ->
    Method = put,
    Path = ["/v2/email/custom-verification-email-templates/", aws_util:encode_uri(TemplateName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the specified sending authorization policy for the given
%% identity (an email address or a domain).
%%
%% This API returns successfully even if a policy with the specified name
%% does not exist.
%%
%% This API is for the identity owner only. If you have not verified the
%% identity, this API will return an error.
%%
%% Sending authorization is a feature that enables an identity owner to
%% authorize other senders to use its identities. For information about using
%% sending authorization, see the Amazon SES Developer Guide.
%%
%% You can execute this operation no more than once per second.
update_email_identity_policy(Client, EmailIdentity, PolicyName, Input) ->
    update_email_identity_policy(Client, EmailIdentity, PolicyName, Input, []).
update_email_identity_policy(Client, EmailIdentity, PolicyName, Input0, Options0) ->
    Method = put,
    Path = ["/v2/email/identities/", aws_util:encode_uri(EmailIdentity), "/policies/", aws_util:encode_uri(PolicyName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an email template.
%%
%% Email templates enable you to send personalized email to one or more
%% destinations in a single API operation. For more information, see the
%% Amazon SES Developer Guide.
%%
%% You can execute this operation no more than once per second.
update_email_template(Client, TemplateName, Input) ->
    update_email_template(Client, TemplateName, Input, []).
update_email_template(Client, TemplateName, Input0, Options0) ->
    Method = put,
    Path = ["/v2/email/templates/", aws_util:encode_uri(TemplateName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), atom(), iolist(), list(),
              list(), map() | undefined, list(), pos_integer() | undefined) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map(),
    Error :: map().
request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
    Client1 = Client#{service => <<"ses">>},
    Host = build_host(<<"email">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders = [ {<<"Host">>, Host}
                        , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                        ],
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),

    Payload =
      case proplists:get_value(send_body_as_binary, Options) of
        true ->
          maps:get(<<"Body">>, Input, <<"">>);
        false ->
          encode_payload(Input)
      end,

    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    DecodeBody = not proplists:get_value(receive_body_as_binary, Options),
    handle_response(Response, SuccessStatusCode, DecodeBody).

handle_response({ok, StatusCode, ResponseHeaders, Client}, SuccessStatusCode, DecodeBody)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= SuccessStatusCode ->
    case hackney:body(Client) of
        {ok, <<>>} when StatusCode =:= 200;
                        StatusCode =:= SuccessStatusCode ->
            {ok, #{}, {StatusCode, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = case DecodeBody of
                       true -> jsx:decode(Body);
                       false -> #{<<"Body">> => Body}
                     end,
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}, _, _DecodeBody) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}, _, _DecodeBody) ->
  {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Path0, Client) ->
    Proto = maps:get(proto, Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  jsx:encode(Input).
