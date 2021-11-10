%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Pinpoint Email Service
%%
%% Welcome to the Amazon Pinpoint Email API Reference.
%%
%% This guide provides information about the Amazon Pinpoint Email API
%% (version 1.0), including supported operations, data types, parameters, and
%% schemas.
%%
%% Amazon Pinpoint is an AWS service that you can use to engage with your
%% customers across multiple messaging channels. You can use Amazon Pinpoint
%% to send email, SMS text messages, voice messages, and push notifications.
%% The Amazon Pinpoint Email API provides programmatic access to options that
%% are unique to the email channel and supplement the options provided by the
%% Amazon Pinpoint API.
%%
%% If you're new to Amazon Pinpoint, you might find it helpful to also review
%% the Amazon Pinpoint Developer Guide. The Amazon Pinpoint Developer Guide
%% provides tutorials, code samples, and procedures that demonstrate how to
%% use Amazon Pinpoint features programmatically and how to integrate Amazon
%% Pinpoint functionality into mobile apps and other types of applications.
%% The guide also provides information about key topics such as Amazon
%% Pinpoint integration with other AWS services and the limits that apply to
%% using the service.
%%
%% The Amazon Pinpoint Email API is available in several AWS Regions and it
%% provides an endpoint for each of these Regions. For a list of all the
%% Regions and endpoints where the API is currently available, see AWS
%% Service Endpoints in the Amazon Web Services General Reference. To learn
%% more about AWS Regions, see Managing AWS Regions in the Amazon Web
%% Services General Reference.
%%
%% In each Region, AWS maintains multiple Availability Zones. These
%% Availability Zones are physically isolated from each other, but are united
%% by private, low-latency, high-throughput, and highly redundant network
%% connections. These Availability Zones enable us to provide very high
%% levels of availability and redundancy, while also minimizing latency. To
%% learn more about the number of Availability Zones that are available in
%% each Region, see AWS Global Infrastructure.
-module(aws_pinpoint_email).

-export([create_configuration_set/2,
         create_configuration_set/3,
         create_configuration_set_event_destination/3,
         create_configuration_set_event_destination/4,
         create_dedicated_ip_pool/2,
         create_dedicated_ip_pool/3,
         create_deliverability_test_report/2,
         create_deliverability_test_report/3,
         create_email_identity/2,
         create_email_identity/3,
         delete_configuration_set/3,
         delete_configuration_set/4,
         delete_configuration_set_event_destination/4,
         delete_configuration_set_event_destination/5,
         delete_dedicated_ip_pool/3,
         delete_dedicated_ip_pool/4,
         delete_email_identity/3,
         delete_email_identity/4,
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
         list_configuration_sets/1,
         list_configuration_sets/3,
         list_configuration_sets/4,
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
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         put_account_dedicated_ip_warmup_attributes/2,
         put_account_dedicated_ip_warmup_attributes/3,
         put_account_sending_attributes/2,
         put_account_sending_attributes/3,
         put_configuration_set_delivery_options/3,
         put_configuration_set_delivery_options/4,
         put_configuration_set_reputation_options/3,
         put_configuration_set_reputation_options/4,
         put_configuration_set_sending_options/3,
         put_configuration_set_sending_options/4,
         put_configuration_set_tracking_options/3,
         put_configuration_set_tracking_options/4,
         put_dedicated_ip_in_pool/3,
         put_dedicated_ip_in_pool/4,
         put_dedicated_ip_warmup_attributes/3,
         put_dedicated_ip_warmup_attributes/4,
         put_deliverability_dashboard_option/2,
         put_deliverability_dashboard_option/3,
         put_email_identity_dkim_attributes/3,
         put_email_identity_dkim_attributes/4,
         put_email_identity_feedback_attributes/3,
         put_email_identity_feedback_attributes/4,
         put_email_identity_mail_from_attributes/3,
         put_email_identity_mail_from_attributes/4,
         send_email/2,
         send_email/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_configuration_set_event_destination/4,
         update_configuration_set_event_destination/5]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Create a configuration set.
%%
%% Configuration sets are groups of rules that you can apply to the emails
%% you send using Amazon Pinpoint. You apply a configuration set to an email
%% by including a reference to the configuration set in the headers of the
%% email. When you apply a configuration set to an email, all of the rules in
%% that configuration set are applied to the email.
create_configuration_set(Client, Input) ->
    create_configuration_set(Client, Input, []).
create_configuration_set(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/email/configuration-sets"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Create an event destination.
%%
%% In Amazon Pinpoint, events include message sends, deliveries, opens,
%% clicks, bounces, and complaints. Event destinations are places that you
%% can send information about these events to. For example, you can send
%% event data to Amazon SNS to receive notifications when you receive bounces
%% or complaints, or you can use Amazon Kinesis Data Firehose to stream data
%% to Amazon S3 for long-term storage.
%%
%% A single configuration set can include more than one event destination.
create_configuration_set_event_destination(Client, ConfigurationSetName, Input) ->
    create_configuration_set_event_destination(Client, ConfigurationSetName, Input, []).
create_configuration_set_event_destination(Client, ConfigurationSetName, Input0, Options0) ->
    Method = post,
    Path = ["/v1/email/configuration-sets/", aws_util:encode_uri(ConfigurationSetName), "/event-destinations"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Create a new pool of dedicated IP addresses.
%%
%% A pool can include one or more dedicated IP addresses that are associated
%% with your Amazon Pinpoint account. You can associate a pool with a
%% configuration set. When you send an email that uses that configuration
%% set, Amazon Pinpoint sends it using only the IP addresses in the
%% associated pool.
create_dedicated_ip_pool(Client, Input) ->
    create_dedicated_ip_pool(Client, Input, []).
create_dedicated_ip_pool(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/email/dedicated-ip-pools"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Create a new predictive inbox placement test.
%%
%% Predictive inbox placement tests can help you predict how your messages
%% will be handled by various email providers around the world. When you
%% perform a predictive inbox placement test, you provide a sample message
%% that contains the content that you plan to send to your customers. Amazon
%% Pinpoint then sends that message to special email addresses spread across
%% several major email providers. After about 24 hours, the test is complete,
%% and you can use the `GetDeliverabilityTestReport' operation to view the
%% results of the test.
create_deliverability_test_report(Client, Input) ->
    create_deliverability_test_report(Client, Input, []).
create_deliverability_test_report(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/email/deliverability-dashboard/test"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Verifies an email identity for use with Amazon Pinpoint.
%%
%% In Amazon Pinpoint, an identity is an email address or domain that you use
%% when you send email. Before you can use an identity to send email with
%% Amazon Pinpoint, you first have to verify it. By verifying an address, you
%% demonstrate that you're the owner of the address, and that you've given
%% Amazon Pinpoint permission to send email from the address.
%%
%% When you verify an email address, Amazon Pinpoint sends an email to the
%% address. Your email address is verified as soon as you follow the link in
%% the verification email.
%%
%% When you verify a domain, this operation provides a set of DKIM tokens,
%% which you can convert into CNAME tokens. You add these CNAME tokens to the
%% DNS configuration for your domain. Your domain is verified when Amazon
%% Pinpoint detects these records in the DNS configuration for your domain.
%% It usually takes around 72 hours to complete the domain verification
%% process.
create_email_identity(Client, Input) ->
    create_email_identity(Client, Input, []).
create_email_identity(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/email/identities"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Delete an existing configuration set.
%%
%% In Amazon Pinpoint, configuration sets are groups of rules that you can
%% apply to the emails you send. You apply a configuration set to an email by
%% including a reference to the configuration set in the headers of the
%% email. When you apply a configuration set to an email, all of the rules in
%% that configuration set are applied to the email.
delete_configuration_set(Client, ConfigurationSetName, Input) ->
    delete_configuration_set(Client, ConfigurationSetName, Input, []).
delete_configuration_set(Client, ConfigurationSetName, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/email/configuration-sets/", aws_util:encode_uri(ConfigurationSetName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Delete an event destination.
%%
%% In Amazon Pinpoint, events include message sends, deliveries, opens,
%% clicks, bounces, and complaints. Event destinations are places that you
%% can send information about these events to. For example, you can send
%% event data to Amazon SNS to receive notifications when you receive bounces
%% or complaints, or you can use Amazon Kinesis Data Firehose to stream data
%% to Amazon S3 for long-term storage.
delete_configuration_set_event_destination(Client, ConfigurationSetName, EventDestinationName, Input) ->
    delete_configuration_set_event_destination(Client, ConfigurationSetName, EventDestinationName, Input, []).
delete_configuration_set_event_destination(Client, ConfigurationSetName, EventDestinationName, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/email/configuration-sets/", aws_util:encode_uri(ConfigurationSetName), "/event-destinations/", aws_util:encode_uri(EventDestinationName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Delete a dedicated IP pool.
delete_dedicated_ip_pool(Client, PoolName, Input) ->
    delete_dedicated_ip_pool(Client, PoolName, Input, []).
delete_dedicated_ip_pool(Client, PoolName, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/email/dedicated-ip-pools/", aws_util:encode_uri(PoolName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an email identity that you previously verified for use with
%% Amazon Pinpoint.
%%
%% An identity can be either an email address or a domain name.
delete_email_identity(Client, EmailIdentity, Input) ->
    delete_email_identity(Client, EmailIdentity, Input, []).
delete_email_identity(Client, EmailIdentity, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/email/identities/", aws_util:encode_uri(EmailIdentity), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Obtain information about the email-sending status and capabilities of
%% your Amazon Pinpoint account in the current AWS Region.
get_account(Client)
  when is_map(Client) ->
    get_account(Client, #{}, #{}).

get_account(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_account(Client, QueryMap, HeadersMap, []).

get_account(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/email/account"],
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
    Path = ["/v1/email/deliverability-dashboard/blacklist-report"],
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
%% In Amazon Pinpoint, configuration sets are groups of rules that you can
%% apply to the emails you send. You apply a configuration set to an email by
%% including a reference to the configuration set in the headers of the
%% email. When you apply a configuration set to an email, all of the rules in
%% that configuration set are applied to the email.
get_configuration_set(Client, ConfigurationSetName)
  when is_map(Client) ->
    get_configuration_set(Client, ConfigurationSetName, #{}, #{}).

get_configuration_set(Client, ConfigurationSetName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_configuration_set(Client, ConfigurationSetName, QueryMap, HeadersMap, []).

get_configuration_set(Client, ConfigurationSetName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/email/configuration-sets/", aws_util:encode_uri(ConfigurationSetName), ""],
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
%% In Amazon Pinpoint, events include message sends, deliveries, opens,
%% clicks, bounces, and complaints. Event destinations are places that you
%% can send information about these events to. For example, you can send
%% event data to Amazon SNS to receive notifications when you receive bounces
%% or complaints, or you can use Amazon Kinesis Data Firehose to stream data
%% to Amazon S3 for long-term storage.
get_configuration_set_event_destinations(Client, ConfigurationSetName)
  when is_map(Client) ->
    get_configuration_set_event_destinations(Client, ConfigurationSetName, #{}, #{}).

get_configuration_set_event_destinations(Client, ConfigurationSetName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_configuration_set_event_destinations(Client, ConfigurationSetName, QueryMap, HeadersMap, []).

get_configuration_set_event_destinations(Client, ConfigurationSetName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/email/configuration-sets/", aws_util:encode_uri(ConfigurationSetName), "/event-destinations"],
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
    Path = ["/v1/email/dedicated-ips/", aws_util:encode_uri(Ip), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the dedicated IP addresses that are associated with your Amazon
%% Pinpoint account.
get_dedicated_ips(Client)
  when is_map(Client) ->
    get_dedicated_ips(Client, #{}, #{}).

get_dedicated_ips(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_dedicated_ips(Client, QueryMap, HeadersMap, []).

get_dedicated_ips(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/email/dedicated-ips"],
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
%% for your Amazon Pinpoint account.
%%
%% When the Deliverability dashboard is enabled, you gain access to
%% reputation, deliverability, and other metrics for the domains that you use
%% to send email using Amazon Pinpoint. You also gain the ability to perform
%% predictive inbox placement tests.
%%
%% When you use the Deliverability dashboard, you pay a monthly subscription
%% charge, in addition to any other fees that you accrue by using Amazon
%% Pinpoint. For more information about the features and cost of a
%% Deliverability dashboard subscription, see Amazon Pinpoint Pricing.
get_deliverability_dashboard_options(Client)
  when is_map(Client) ->
    get_deliverability_dashboard_options(Client, #{}, #{}).

get_deliverability_dashboard_options(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_deliverability_dashboard_options(Client, QueryMap, HeadersMap, []).

get_deliverability_dashboard_options(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/email/deliverability-dashboard"],
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
    Path = ["/v1/email/deliverability-dashboard/test-reports/", aws_util:encode_uri(ReportId), ""],
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
%% using a domain that the Deliverability dashboard is enabled for
%% (`PutDeliverabilityDashboardOption' operation).
get_domain_deliverability_campaign(Client, CampaignId)
  when is_map(Client) ->
    get_domain_deliverability_campaign(Client, CampaignId, #{}, #{}).

get_domain_deliverability_campaign(Client, CampaignId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_domain_deliverability_campaign(Client, CampaignId, QueryMap, HeadersMap, []).

get_domain_deliverability_campaign(Client, CampaignId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/email/deliverability-dashboard/campaigns/", aws_util:encode_uri(CampaignId), ""],
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
    Path = ["/v1/email/deliverability-dashboard/statistics-report/", aws_util:encode_uri(Domain), ""],
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

%% @doc Provides information about a specific identity associated with your
%% Amazon Pinpoint account, including the identity's verification status, its
%% DKIM authentication status, and its custom Mail-From settings.
get_email_identity(Client, EmailIdentity)
  when is_map(Client) ->
    get_email_identity(Client, EmailIdentity, #{}, #{}).

get_email_identity(Client, EmailIdentity, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_email_identity(Client, EmailIdentity, QueryMap, HeadersMap, []).

get_email_identity(Client, EmailIdentity, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/email/identities/", aws_util:encode_uri(EmailIdentity), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List all of the configuration sets associated with your Amazon
%% Pinpoint account in the current region.
%%
%% In Amazon Pinpoint, configuration sets are groups of rules that you can
%% apply to the emails you send. You apply a configuration set to an email by
%% including a reference to the configuration set in the headers of the
%% email. When you apply a configuration set to an email, all of the rules in
%% that configuration set are applied to the email.
list_configuration_sets(Client)
  when is_map(Client) ->
    list_configuration_sets(Client, #{}, #{}).

list_configuration_sets(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_configuration_sets(Client, QueryMap, HeadersMap, []).

list_configuration_sets(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/email/configuration-sets"],
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

%% @doc List all of the dedicated IP pools that exist in your Amazon Pinpoint
%% account in the current AWS Region.
list_dedicated_ip_pools(Client)
  when is_map(Client) ->
    list_dedicated_ip_pools(Client, #{}, #{}).

list_dedicated_ip_pools(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_dedicated_ip_pools(Client, QueryMap, HeadersMap, []).

list_dedicated_ip_pools(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/email/dedicated-ip-pools"],
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
    Path = ["/v1/email/deliverability-dashboard/test-reports"],
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
%% dashboard (`PutDeliverabilityDashboardOption' operation) for the domain.
list_domain_deliverability_campaigns(Client, SubscribedDomain, EndDate, StartDate)
  when is_map(Client) ->
    list_domain_deliverability_campaigns(Client, SubscribedDomain, EndDate, StartDate, #{}, #{}).

list_domain_deliverability_campaigns(Client, SubscribedDomain, EndDate, StartDate, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_domain_deliverability_campaigns(Client, SubscribedDomain, EndDate, StartDate, QueryMap, HeadersMap, []).

list_domain_deliverability_campaigns(Client, SubscribedDomain, EndDate, StartDate, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/email/deliverability-dashboard/domains/", aws_util:encode_uri(SubscribedDomain), "/campaigns"],
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
%% with your Amazon Pinpoint account.
%%
%% An identity can be either an email address or a domain. This operation
%% returns identities that are verified as well as those that aren't.
list_email_identities(Client)
  when is_map(Client) ->
    list_email_identities(Client, #{}, #{}).

list_email_identities(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_email_identities(Client, QueryMap, HeadersMap, []).

list_email_identities(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/email/identities"],
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

%% @doc Retrieve a list of the tags (keys and values) that are associated
%% with a specified resource.
%%
%% A tag is a label that you optionally define and associate with a resource
%% in Amazon Pinpoint. Each tag consists of a required tag key and an
%% optional associated tag value. A tag key is a general label that acts as a
%% category for more specific tag values. A tag value acts as a descriptor
%% within a tag key.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/email/tags"],
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
    Path = ["/v1/email/account/dedicated-ips/warmup"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Enable or disable the ability of your account to send email.
put_account_sending_attributes(Client, Input) ->
    put_account_sending_attributes(Client, Input, []).
put_account_sending_attributes(Client, Input0, Options0) ->
    Method = put,
    Path = ["/v1/email/account/sending"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Associate a configuration set with a dedicated IP pool.
%%
%% You can use dedicated IP pools to create groups of dedicated IP addresses
%% for sending specific types of email.
put_configuration_set_delivery_options(Client, ConfigurationSetName, Input) ->
    put_configuration_set_delivery_options(Client, ConfigurationSetName, Input, []).
put_configuration_set_delivery_options(Client, ConfigurationSetName, Input0, Options0) ->
    Method = put,
    Path = ["/v1/email/configuration-sets/", aws_util:encode_uri(ConfigurationSetName), "/delivery-options"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Enable or disable collection of reputation metrics for emails that
%% you send using a particular configuration set in a specific AWS Region.
put_configuration_set_reputation_options(Client, ConfigurationSetName, Input) ->
    put_configuration_set_reputation_options(Client, ConfigurationSetName, Input, []).
put_configuration_set_reputation_options(Client, ConfigurationSetName, Input0, Options0) ->
    Method = put,
    Path = ["/v1/email/configuration-sets/", aws_util:encode_uri(ConfigurationSetName), "/reputation-options"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Enable or disable email sending for messages that use a particular
%% configuration set in a specific AWS Region.
put_configuration_set_sending_options(Client, ConfigurationSetName, Input) ->
    put_configuration_set_sending_options(Client, ConfigurationSetName, Input, []).
put_configuration_set_sending_options(Client, ConfigurationSetName, Input0, Options0) ->
    Method = put,
    Path = ["/v1/email/configuration-sets/", aws_util:encode_uri(ConfigurationSetName), "/sending"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Specify a custom domain to use for open and click tracking elements
%% in email that you send using Amazon Pinpoint.
put_configuration_set_tracking_options(Client, ConfigurationSetName, Input) ->
    put_configuration_set_tracking_options(Client, ConfigurationSetName, Input, []).
put_configuration_set_tracking_options(Client, ConfigurationSetName, Input0, Options0) ->
    Method = put,
    Path = ["/v1/email/configuration-sets/", aws_util:encode_uri(ConfigurationSetName), "/tracking-options"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Move a dedicated IP address to an existing dedicated IP pool.
%%
%% The dedicated IP address that you specify must already exist, and must be
%% associated with your Amazon Pinpoint account.
%%
%% The dedicated IP pool you specify must already exist. You can create a new
%% pool by using the `CreateDedicatedIpPool' operation.
put_dedicated_ip_in_pool(Client, Ip, Input) ->
    put_dedicated_ip_in_pool(Client, Ip, Input, []).
put_dedicated_ip_in_pool(Client, Ip, Input0, Options0) ->
    Method = put,
    Path = ["/v1/email/dedicated-ips/", aws_util:encode_uri(Ip), "/pool"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
put_dedicated_ip_warmup_attributes(Client, Ip, Input) ->
    put_dedicated_ip_warmup_attributes(Client, Ip, Input, []).
put_dedicated_ip_warmup_attributes(Client, Ip, Input0, Options0) ->
    Method = put,
    Path = ["/v1/email/dedicated-ips/", aws_util:encode_uri(Ip), "/warmup"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Enable or disable the Deliverability dashboard for your Amazon
%% Pinpoint account.
%%
%% When you enable the Deliverability dashboard, you gain access to
%% reputation, deliverability, and other metrics for the domains that you use
%% to send email using Amazon Pinpoint. You also gain the ability to perform
%% predictive inbox placement tests.
%%
%% When you use the Deliverability dashboard, you pay a monthly subscription
%% charge, in addition to any other fees that you accrue by using Amazon
%% Pinpoint. For more information about the features and cost of a
%% Deliverability dashboard subscription, see Amazon Pinpoint Pricing.
put_deliverability_dashboard_option(Client, Input) ->
    put_deliverability_dashboard_option(Client, Input, []).
put_deliverability_dashboard_option(Client, Input0, Options0) ->
    Method = put,
    Path = ["/v1/email/deliverability-dashboard"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Used to enable or disable DKIM authentication for an email identity.
put_email_identity_dkim_attributes(Client, EmailIdentity, Input) ->
    put_email_identity_dkim_attributes(Client, EmailIdentity, Input, []).
put_email_identity_dkim_attributes(Client, EmailIdentity, Input0, Options0) ->
    Method = put,
    Path = ["/v1/email/identities/", aws_util:encode_uri(EmailIdentity), "/dkim"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Used to enable or disable feedback forwarding for an identity.
%%
%% This setting determines what happens when an identity is used to send an
%% email that results in a bounce or complaint event.
%%
%% When you enable feedback forwarding, Amazon Pinpoint sends you email
%% notifications when bounce or complaint events occur. Amazon Pinpoint sends
%% this notification to the address that you specified in the Return-Path
%% header of the original email.
%%
%% When you disable feedback forwarding, Amazon Pinpoint sends notifications
%% through other mechanisms, such as by notifying an Amazon SNS topic. You're
%% required to have a method of tracking bounces and complaints. If you
%% haven't set up another mechanism for receiving bounce or complaint
%% notifications, Amazon Pinpoint sends an email notification when these
%% events occur (even if this setting is disabled).
put_email_identity_feedback_attributes(Client, EmailIdentity, Input) ->
    put_email_identity_feedback_attributes(Client, EmailIdentity, Input, []).
put_email_identity_feedback_attributes(Client, EmailIdentity, Input0, Options0) ->
    Method = put,
    Path = ["/v1/email/identities/", aws_util:encode_uri(EmailIdentity), "/feedback"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Used to enable or disable the custom Mail-From domain configuration
%% for an email identity.
put_email_identity_mail_from_attributes(Client, EmailIdentity, Input) ->
    put_email_identity_mail_from_attributes(Client, EmailIdentity, Input, []).
put_email_identity_mail_from_attributes(Client, EmailIdentity, Input0, Options0) ->
    Method = put,
    Path = ["/v1/email/identities/", aws_util:encode_uri(EmailIdentity), "/mail-from"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Sends an email message.
%%
%% You can use the Amazon Pinpoint Email API to send two types of messages:
%%
%% <ul> <li> Simple – A standard email message. When you create this type of
%% message, you specify the sender, the recipient, and the message body, and
%% Amazon Pinpoint assembles the message for you.
%%
%% </li> <li> Raw – A raw, MIME-formatted email message. When you send this
%% type of email, you have to specify all of the message headers, as well as
%% the message body. You can use this message type to send messages that
%% contain attachments. The message that you specify has to be a valid MIME
%% message.
%%
%% </li> </ul>
send_email(Client, Input) ->
    send_email(Client, Input, []).
send_email(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/email/outbound-emails"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Add one or more tags (keys and values) to a specified resource.
%%
%% A tag is a label that you optionally define and associate with a resource
%% in Amazon Pinpoint. Tags can help you categorize and manage resources in
%% different ways, such as by purpose, owner, environment, or other criteria.
%% A resource can have as many as 50 tags.
%%
%% Each tag consists of a required tag key and an associated tag value, both
%% of which you define. A tag key is a general label that acts as a category
%% for more specific tag values. A tag value acts as a descriptor within a
%% tag key.
tag_resource(Client, Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/email/tags"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Remove one or more tags (keys and values) from a specified resource.
untag_resource(Client, Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/email/tags"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"ResourceArn">>, <<"ResourceArn">>},
                     {<<"TagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Update the configuration of an event destination for a configuration
%% set.
%%
%% In Amazon Pinpoint, events include message sends, deliveries, opens,
%% clicks, bounces, and complaints. Event destinations are places that you
%% can send information about these events to. For example, you can send
%% event data to Amazon SNS to receive notifications when you receive bounces
%% or complaints, or you can use Amazon Kinesis Data Firehose to stream data
%% to Amazon S3 for long-term storage.
update_configuration_set_event_destination(Client, ConfigurationSetName, EventDestinationName, Input) ->
    update_configuration_set_event_destination(Client, ConfigurationSetName, EventDestinationName, Input, []).
update_configuration_set_event_destination(Client, ConfigurationSetName, EventDestinationName, Input0, Options0) ->
    Method = put,
    Path = ["/v1/email/configuration-sets/", aws_util:encode_uri(ConfigurationSetName), "/event-destinations/", aws_util:encode_uri(EventDestinationName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), atom(), iolist(), list(),
              list(), map() | undefined, list(), pos_integer() | undefined) ->
    {ok, {integer(), list()}} |
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

handle_response({ok, StatusCode, ResponseHeaders}, SuccessStatusCode, _DecodeBody)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= SuccessStatusCode ->
    {ok, {StatusCode, ResponseHeaders}};
handle_response({ok, StatusCode, ResponseHeaders}, _, _DecodeBody) ->
    {error, {StatusCode, ResponseHeaders}};
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
