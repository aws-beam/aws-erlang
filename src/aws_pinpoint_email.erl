%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Pinpoint Email Service
%%
%% Welcome to the Amazon Pinpoint Email API Reference.
%%
%% This guide provides
%% information about the Amazon Pinpoint Email API (version 1.0), including
%% supported
%% operations, data types, parameters, and schemas.
%%
%% Amazon Pinpoint: https://aws.amazon.com/pinpoint is an AWS service that
%% you
%% can use to engage with your customers across multiple messaging channels.
%% You can use
%% Amazon Pinpoint to send email, SMS text messages, voice messages, and push
%% notifications. The
%% Amazon Pinpoint Email API provides programmatic access to options that are
%% unique to the
%% email channel and supplement the options provided by the Amazon Pinpoint
%% API.
%%
%% If you're new to Amazon Pinpoint, you might find it helpful to also
%% review the Amazon
%% Pinpoint Developer Guide:
%% https://docs.aws.amazon.com/pinpoint/latest/developerguide/welcome.html.
%% The Amazon Pinpoint Developer
%% Guide provides tutorials, code samples, and procedures that demonstrate
%% how to use Amazon Pinpoint features programmatically and how to integrate
%% Amazon Pinpoint functionality into
%% mobile apps and other types of applications. The guide also provides
%% information about
%% key topics such as Amazon Pinpoint integration with other AWS services and
%% the limits that apply
%% to using the service.
%%
%% The Amazon Pinpoint Email API is available in several AWS Regions and it
%% provides an endpoint
%% for each of these Regions. For a list of all the Regions and endpoints
%% where the API is
%% currently available, see AWS Service Endpoints:
%% https://docs.aws.amazon.com/general/latest/gr/rande.html#pinpoint_region
%% in
%% the Amazon Web Services General Reference. To learn more about AWS
%% Regions, see
%% Managing AWS
%% Regions: https://docs.aws.amazon.com/general/latest/gr/rande-manage.html
%% in the Amazon Web Services General Reference.
%%
%% In each Region, AWS maintains multiple Availability Zones. These
%% Availability Zones
%% are physically isolated from each other, but are united by private,
%% low-latency,
%% high-throughput, and highly redundant network connections. These
%% Availability Zones
%% enable us to provide very high levels of availability and redundancy,
%% while also
%% minimizing latency. To learn more about the number of Availability Zones
%% that are
%% available in each Region, see AWS Global Infrastructure:
%% http://aws.amazon.com/about-aws/global-infrastructure/.
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


%% Example:
%% put_configuration_set_tracking_options_response() :: #{}
-type put_configuration_set_tracking_options_response() :: #{}.


%% Example:
%% tracking_options() :: #{
%%   <<"CustomRedirectDomain">> => string()
%% }
-type tracking_options() :: #{binary() => any()}.


%% Example:
%% get_email_identity_response() :: #{
%%   <<"DkimAttributes">> => dkim_attributes(),
%%   <<"FeedbackForwardingStatus">> => boolean(),
%%   <<"IdentityType">> => list(any()),
%%   <<"MailFromAttributes">> => mail_from_attributes(),
%%   <<"Tags">> => list(tag()),
%%   <<"VerifiedForSendingStatus">> => boolean()
%% }
-type get_email_identity_response() :: #{binary() => any()}.

%% Example:
%% put_email_identity_dkim_attributes_response() :: #{}
-type put_email_identity_dkim_attributes_response() :: #{}.

%% Example:
%% delete_configuration_set_response() :: #{}
-type delete_configuration_set_response() :: #{}.


%% Example:
%% list_deliverability_test_reports_request() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PageSize">> => integer()
%% }
-type list_deliverability_test_reports_request() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"Tags">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% put_account_sending_attributes_request() :: #{
%%   <<"SendingEnabled">> => boolean()
%% }
-type put_account_sending_attributes_request() :: #{binary() => any()}.


%% Example:
%% get_account_response() :: #{
%%   <<"DedicatedIpAutoWarmupEnabled">> => boolean(),
%%   <<"EnforcementStatus">> => string(),
%%   <<"ProductionAccessEnabled">> => boolean(),
%%   <<"SendQuota">> => send_quota(),
%%   <<"SendingEnabled">> => boolean()
%% }
-type get_account_response() :: #{binary() => any()}.

%% Example:
%% get_deliverability_test_report_request() :: #{}
-type get_deliverability_test_report_request() :: #{}.


%% Example:
%% volume_statistics() :: #{
%%   <<"InboxRawCount">> => float(),
%%   <<"ProjectedInbox">> => float(),
%%   <<"ProjectedSpam">> => float(),
%%   <<"SpamRawCount">> => float()
%% }
-type volume_statistics() :: #{binary() => any()}.


%% Example:
%% list_email_identities_response() :: #{
%%   <<"EmailIdentities">> => list(identity_info()),
%%   <<"NextToken">> => string()
%% }
-type list_email_identities_response() :: #{binary() => any()}.

%% Example:
%% create_dedicated_ip_pool_response() :: #{}
-type create_dedicated_ip_pool_response() :: #{}.

%% Example:
%% put_configuration_set_reputation_options_response() :: #{}
-type put_configuration_set_reputation_options_response() :: #{}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% put_email_identity_feedback_attributes_request() :: #{
%%   <<"EmailForwardingEnabled">> => boolean()
%% }
-type put_email_identity_feedback_attributes_request() :: #{binary() => any()}.


%% Example:
%% isp_placement() :: #{
%%   <<"IspName">> => string(),
%%   <<"PlacementStatistics">> => placement_statistics()
%% }
-type isp_placement() :: #{binary() => any()}.


%% Example:
%% list_deliverability_test_reports_response() :: #{
%%   <<"DeliverabilityTestReports">> => list(deliverability_test_report()),
%%   <<"NextToken">> => string()
%% }
-type list_deliverability_test_reports_response() :: #{binary() => any()}.


%% Example:
%% kinesis_firehose_destination() :: #{
%%   <<"DeliveryStreamArn">> => string(),
%%   <<"IamRoleArn">> => string()
%% }
-type kinesis_firehose_destination() :: #{binary() => any()}.


%% Example:
%% already_exists_exception() :: #{
%%   <<"message">> => string()
%% }
-type already_exists_exception() :: #{binary() => any()}.

%% Example:
%% put_account_dedicated_ip_warmup_attributes_response() :: #{}
-type put_account_dedicated_ip_warmup_attributes_response() :: #{}.


%% Example:
%% send_quota() :: #{
%%   <<"Max24HourSend">> => float(),
%%   <<"MaxSendRate">> => float(),
%%   <<"SentLast24Hours">> => float()
%% }
-type send_quota() :: #{binary() => any()}.


%% Example:
%% dkim_attributes() :: #{
%%   <<"SigningEnabled">> => boolean(),
%%   <<"Status">> => list(any()),
%%   <<"Tokens">> => list(string())
%% }
-type dkim_attributes() :: #{binary() => any()}.


%% Example:
%% create_email_identity_response() :: #{
%%   <<"DkimAttributes">> => dkim_attributes(),
%%   <<"IdentityType">> => list(any()),
%%   <<"VerifiedForSendingStatus">> => boolean()
%% }
-type create_email_identity_response() :: #{binary() => any()}.


%% Example:
%% sending_paused_exception() :: #{
%%   <<"message">> => string()
%% }
-type sending_paused_exception() :: #{binary() => any()}.


%% Example:
%% put_deliverability_dashboard_option_request() :: #{
%%   <<"DashboardEnabled">> := boolean(),
%%   <<"SubscribedDomains">> => list(domain_deliverability_tracking_option())
%% }
-type put_deliverability_dashboard_option_request() :: #{binary() => any()}.

%% Example:
%% put_configuration_set_delivery_options_response() :: #{}
-type put_configuration_set_delivery_options_response() :: #{}.


%% Example:
%% account_suspended_exception() :: #{
%%   <<"message">> => string()
%% }
-type account_suspended_exception() :: #{binary() => any()}.


%% Example:
%% email_content() :: #{
%%   <<"Raw">> => raw_message(),
%%   <<"Simple">> => message(),
%%   <<"Template">> => template()
%% }
-type email_content() :: #{binary() => any()}.


%% Example:
%% get_deliverability_dashboard_options_response() :: #{
%%   <<"AccountStatus">> => list(any()),
%%   <<"ActiveSubscribedDomains">> => list(domain_deliverability_tracking_option()),
%%   <<"DashboardEnabled">> => boolean(),
%%   <<"PendingExpirationSubscribedDomains">> => list(domain_deliverability_tracking_option()),
%%   <<"SubscriptionExpiryDate">> => non_neg_integer()
%% }
-type get_deliverability_dashboard_options_response() :: #{binary() => any()}.

%% Example:
%% get_domain_deliverability_campaign_request() :: #{}
-type get_domain_deliverability_campaign_request() :: #{}.

%% Example:
%% delete_configuration_set_event_destination_response() :: #{}
-type delete_configuration_set_event_destination_response() :: #{}.

%% Example:
%% delete_email_identity_request() :: #{}
-type delete_email_identity_request() :: #{}.


%% Example:
%% cloud_watch_dimension_configuration() :: #{
%%   <<"DefaultDimensionValue">> => string(),
%%   <<"DimensionName">> => string(),
%%   <<"DimensionValueSource">> => list(any())
%% }
-type cloud_watch_dimension_configuration() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% too_many_requests_exception() :: #{
%%   <<"message">> => string()
%% }
-type too_many_requests_exception() :: #{binary() => any()}.


%% Example:
%% create_deliverability_test_report_response() :: #{
%%   <<"DeliverabilityTestStatus">> => list(any()),
%%   <<"ReportId">> => string()
%% }
-type create_deliverability_test_report_response() :: #{binary() => any()}.


%% Example:
%% event_destination_definition() :: #{
%%   <<"CloudWatchDestination">> => cloud_watch_destination(),
%%   <<"Enabled">> => boolean(),
%%   <<"KinesisFirehoseDestination">> => kinesis_firehose_destination(),
%%   <<"MatchingEventTypes">> => list(list(any())()),
%%   <<"PinpointDestination">> => pinpoint_destination(),
%%   <<"SnsDestination">> => sns_destination()
%% }
-type event_destination_definition() :: #{binary() => any()}.


%% Example:
%% list_domain_deliverability_campaigns_response() :: #{
%%   <<"DomainDeliverabilityCampaigns">> => list(domain_deliverability_campaign()),
%%   <<"NextToken">> => string()
%% }
-type list_domain_deliverability_campaigns_response() :: #{binary() => any()}.

%% Example:
%% delete_configuration_set_request() :: #{}
-type delete_configuration_set_request() :: #{}.


%% Example:
%% send_email_response() :: #{
%%   <<"MessageId">> => string()
%% }
-type send_email_response() :: #{binary() => any()}.

%% Example:
%% delete_dedicated_ip_pool_request() :: #{}
-type delete_dedicated_ip_pool_request() :: #{}.


%% Example:
%% cloud_watch_destination() :: #{
%%   <<"DimensionConfigurations">> => list(cloud_watch_dimension_configuration())
%% }
-type cloud_watch_destination() :: #{binary() => any()}.


%% Example:
%% blacklist_entry() :: #{
%%   <<"Description">> => string(),
%%   <<"ListingTime">> => non_neg_integer(),
%%   <<"RblName">> => string()
%% }
-type blacklist_entry() :: #{binary() => any()}.


%% Example:
%% mail_from_domain_not_verified_exception() :: #{
%%   <<"message">> => string()
%% }
-type mail_from_domain_not_verified_exception() :: #{binary() => any()}.


%% Example:
%% overall_volume() :: #{
%%   <<"DomainIspPlacements">> => list(domain_isp_placement()),
%%   <<"ReadRatePercent">> => float(),
%%   <<"VolumeStatistics">> => volume_statistics()
%% }
-type overall_volume() :: #{binary() => any()}.


%% Example:
%% domain_isp_placement() :: #{
%%   <<"InboxPercentage">> => float(),
%%   <<"InboxRawCount">> => float(),
%%   <<"IspName">> => string(),
%%   <<"SpamPercentage">> => float(),
%%   <<"SpamRawCount">> => float()
%% }
-type domain_isp_placement() :: #{binary() => any()}.


%% Example:
%% dedicated_ip() :: #{
%%   <<"Ip">> => string(),
%%   <<"PoolName">> => string(),
%%   <<"WarmupPercentage">> => integer(),
%%   <<"WarmupStatus">> => list(any())
%% }
-type dedicated_ip() :: #{binary() => any()}.


%% Example:
%% get_blacklist_reports_request() :: #{
%%   <<"BlacklistItemNames">> := list(string())
%% }
-type get_blacklist_reports_request() :: #{binary() => any()}.


%% Example:
%% mail_from_attributes() :: #{
%%   <<"BehaviorOnMxFailure">> => list(any()),
%%   <<"MailFromDomain">> => string(),
%%   <<"MailFromDomainStatus">> => list(any())
%% }
-type mail_from_attributes() :: #{binary() => any()}.

%% Example:
%% create_configuration_set_response() :: #{}
-type create_configuration_set_response() :: #{}.


%% Example:
%% reputation_options() :: #{
%%   <<"LastFreshStart">> => non_neg_integer(),
%%   <<"ReputationMetricsEnabled">> => boolean()
%% }
-type reputation_options() :: #{binary() => any()}.

%% Example:
%% put_deliverability_dashboard_option_response() :: #{}
-type put_deliverability_dashboard_option_response() :: #{}.


%% Example:
%% create_email_identity_request() :: #{
%%   <<"EmailIdentity">> := string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_email_identity_request() :: #{binary() => any()}.


%% Example:
%% inbox_placement_tracking_option() :: #{
%%   <<"Global">> => boolean(),
%%   <<"TrackedIsps">> => list(string())
%% }
-type inbox_placement_tracking_option() :: #{binary() => any()}.


%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.


%% Example:
%% event_destination() :: #{
%%   <<"CloudWatchDestination">> => cloud_watch_destination(),
%%   <<"Enabled">> => boolean(),
%%   <<"KinesisFirehoseDestination">> => kinesis_firehose_destination(),
%%   <<"MatchingEventTypes">> => list(list(any())()),
%%   <<"Name">> => string(),
%%   <<"PinpointDestination">> => pinpoint_destination(),
%%   <<"SnsDestination">> => sns_destination()
%% }
-type event_destination() :: #{binary() => any()}.


%% Example:
%% update_configuration_set_event_destination_request() :: #{
%%   <<"EventDestination">> := event_destination_definition()
%% }
-type update_configuration_set_event_destination_request() :: #{binary() => any()}.


%% Example:
%% message_tag() :: #{
%%   <<"Name">> => string(),
%%   <<"Value">> => string()
%% }
-type message_tag() :: #{binary() => any()}.


%% Example:
%% list_domain_deliverability_campaigns_request() :: #{
%%   <<"EndDate">> := non_neg_integer(),
%%   <<"NextToken">> => string(),
%%   <<"PageSize">> => integer(),
%%   <<"StartDate">> := non_neg_integer()
%% }
-type list_domain_deliverability_campaigns_request() :: #{binary() => any()}.

%% Example:
%% get_configuration_set_event_destinations_request() :: #{}
-type get_configuration_set_event_destinations_request() :: #{}.


%% Example:
%% get_domain_statistics_report_request() :: #{
%%   <<"EndDate">> := non_neg_integer(),
%%   <<"StartDate">> := non_neg_integer()
%% }
-type get_domain_statistics_report_request() :: #{binary() => any()}.


%% Example:
%% put_account_dedicated_ip_warmup_attributes_request() :: #{
%%   <<"AutoWarmupEnabled">> => boolean()
%% }
-type put_account_dedicated_ip_warmup_attributes_request() :: #{binary() => any()}.

%% Example:
%% put_dedicated_ip_in_pool_response() :: #{}
-type put_dedicated_ip_in_pool_response() :: #{}.


%% Example:
%% not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type not_found_exception() :: #{binary() => any()}.


%% Example:
%% placement_statistics() :: #{
%%   <<"DkimPercentage">> => float(),
%%   <<"InboxPercentage">> => float(),
%%   <<"MissingPercentage">> => float(),
%%   <<"SpamPercentage">> => float(),
%%   <<"SpfPercentage">> => float()
%% }
-type placement_statistics() :: #{binary() => any()}.


%% Example:
%% identity_info() :: #{
%%   <<"IdentityName">> => string(),
%%   <<"IdentityType">> => list(any()),
%%   <<"SendingEnabled">> => boolean()
%% }
-type identity_info() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => list(tag())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% list_configuration_sets_response() :: #{
%%   <<"ConfigurationSets">> => list(string()),
%%   <<"NextToken">> => string()
%% }
-type list_configuration_sets_response() :: #{binary() => any()}.


%% Example:
%% list_dedicated_ip_pools_request() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PageSize">> => integer()
%% }
-type list_dedicated_ip_pools_request() :: #{binary() => any()}.


%% Example:
%% get_configuration_set_event_destinations_response() :: #{
%%   <<"EventDestinations">> => list(event_destination())
%% }
-type get_configuration_set_event_destinations_response() :: #{binary() => any()}.


%% Example:
%% get_domain_deliverability_campaign_response() :: #{
%%   <<"DomainDeliverabilityCampaign">> => domain_deliverability_campaign()
%% }
-type get_domain_deliverability_campaign_response() :: #{binary() => any()}.


%% Example:
%% list_configuration_sets_request() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PageSize">> => integer()
%% }
-type list_configuration_sets_request() :: #{binary() => any()}.


%% Example:
%% get_dedicated_ips_request() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PageSize">> => integer(),
%%   <<"PoolName">> => string()
%% }
-type get_dedicated_ips_request() :: #{binary() => any()}.


%% Example:
%% raw_message() :: #{
%%   <<"Data">> => binary()
%% }
-type raw_message() :: #{binary() => any()}.


%% Example:
%% put_dedicated_ip_in_pool_request() :: #{
%%   <<"DestinationPoolName">> := string()
%% }
-type put_dedicated_ip_in_pool_request() :: #{binary() => any()}.


%% Example:
%% put_email_identity_dkim_attributes_request() :: #{
%%   <<"SigningEnabled">> => boolean()
%% }
-type put_email_identity_dkim_attributes_request() :: #{binary() => any()}.

%% Example:
%% put_configuration_set_sending_options_response() :: #{}
-type put_configuration_set_sending_options_response() :: #{}.

%% Example:
%% delete_dedicated_ip_pool_response() :: #{}
-type delete_dedicated_ip_pool_response() :: #{}.


%% Example:
%% put_configuration_set_tracking_options_request() :: #{
%%   <<"CustomRedirectDomain">> => string()
%% }
-type put_configuration_set_tracking_options_request() :: #{binary() => any()}.


%% Example:
%% create_dedicated_ip_pool_request() :: #{
%%   <<"PoolName">> := string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_dedicated_ip_pool_request() :: #{binary() => any()}.


%% Example:
%% get_dedicated_ip_response() :: #{
%%   <<"DedicatedIp">> => dedicated_ip()
%% }
-type get_dedicated_ip_response() :: #{binary() => any()}.

%% Example:
%% delete_configuration_set_event_destination_request() :: #{}
-type delete_configuration_set_event_destination_request() :: #{}.

%% Example:
%% create_configuration_set_event_destination_response() :: #{}
-type create_configuration_set_event_destination_response() :: #{}.


%% Example:
%% put_configuration_set_delivery_options_request() :: #{
%%   <<"SendingPoolName">> => string(),
%%   <<"TlsPolicy">> => list(any())
%% }
-type put_configuration_set_delivery_options_request() :: #{binary() => any()}.


%% Example:
%% put_email_identity_mail_from_attributes_request() :: #{
%%   <<"BehaviorOnMxFailure">> => list(any()),
%%   <<"MailFromDomain">> => string()
%% }
-type put_email_identity_mail_from_attributes_request() :: #{binary() => any()}.

%% Example:
%% delete_email_identity_response() :: #{}
-type delete_email_identity_response() :: #{}.


%% Example:
%% create_deliverability_test_report_request() :: #{
%%   <<"Content">> := email_content(),
%%   <<"FromEmailAddress">> := string(),
%%   <<"ReportName">> => string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_deliverability_test_report_request() :: #{binary() => any()}.


%% Example:
%% daily_volume() :: #{
%%   <<"DomainIspPlacements">> => list(domain_isp_placement()),
%%   <<"StartDate">> => non_neg_integer(),
%%   <<"VolumeStatistics">> => volume_statistics()
%% }
-type daily_volume() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% sending_options() :: #{
%%   <<"SendingEnabled">> => boolean()
%% }
-type sending_options() :: #{binary() => any()}.


%% Example:
%% concurrent_modification_exception() :: #{
%%   <<"message">> => string()
%% }
-type concurrent_modification_exception() :: #{binary() => any()}.


%% Example:
%% get_blacklist_reports_response() :: #{
%%   <<"BlacklistReport">> => map()
%% }
-type get_blacklist_reports_response() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"ResourceArn">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.


%% Example:
%% destination() :: #{
%%   <<"BccAddresses">> => list(string()),
%%   <<"CcAddresses">> => list(string()),
%%   <<"ToAddresses">> => list(string())
%% }
-type destination() :: #{binary() => any()}.


%% Example:
%% body() :: #{
%%   <<"Html">> => content(),
%%   <<"Text">> => content()
%% }
-type body() :: #{binary() => any()}.

%% Example:
%% get_deliverability_dashboard_options_request() :: #{}
-type get_deliverability_dashboard_options_request() :: #{}.


%% Example:
%% get_domain_statistics_report_response() :: #{
%%   <<"DailyVolumes">> => list(daily_volume()),
%%   <<"OverallVolume">> => overall_volume()
%% }
-type get_domain_statistics_report_response() :: #{binary() => any()}.

%% Example:
%% put_account_sending_attributes_response() :: #{}
-type put_account_sending_attributes_response() :: #{}.


%% Example:
%% message_rejected() :: #{
%%   <<"message">> => string()
%% }
-type message_rejected() :: #{binary() => any()}.


%% Example:
%% list_dedicated_ip_pools_response() :: #{
%%   <<"DedicatedIpPools">> => list(string()),
%%   <<"NextToken">> => string()
%% }
-type list_dedicated_ip_pools_response() :: #{binary() => any()}.

%% Example:
%% get_configuration_set_request() :: #{}
-type get_configuration_set_request() :: #{}.

%% Example:
%% put_email_identity_mail_from_attributes_response() :: #{}
-type put_email_identity_mail_from_attributes_response() :: #{}.


%% Example:
%% create_configuration_set_event_destination_request() :: #{
%%   <<"EventDestination">> := event_destination_definition(),
%%   <<"EventDestinationName">> := string()
%% }
-type create_configuration_set_event_destination_request() :: #{binary() => any()}.


%% Example:
%% domain_deliverability_tracking_option() :: #{
%%   <<"Domain">> => string(),
%%   <<"InboxPlacementTrackingOption">> => inbox_placement_tracking_option(),
%%   <<"SubscriptionStartDate">> => non_neg_integer()
%% }
-type domain_deliverability_tracking_option() :: #{binary() => any()}.


%% Example:
%% put_configuration_set_sending_options_request() :: #{
%%   <<"SendingEnabled">> => boolean()
%% }
-type put_configuration_set_sending_options_request() :: #{binary() => any()}.


%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% delivery_options() :: #{
%%   <<"SendingPoolName">> => string(),
%%   <<"TlsPolicy">> => list(any())
%% }
-type delivery_options() :: #{binary() => any()}.

%% Example:
%% update_configuration_set_event_destination_response() :: #{}
-type update_configuration_set_event_destination_response() :: #{}.


%% Example:
%% bad_request_exception() :: #{
%%   <<"message">> => string()
%% }
-type bad_request_exception() :: #{binary() => any()}.


%% Example:
%% content() :: #{
%%   <<"Charset">> => string(),
%%   <<"Data">> => string()
%% }
-type content() :: #{binary() => any()}.


%% Example:
%% get_configuration_set_response() :: #{
%%   <<"ConfigurationSetName">> => string(),
%%   <<"DeliveryOptions">> => delivery_options(),
%%   <<"ReputationOptions">> => reputation_options(),
%%   <<"SendingOptions">> => sending_options(),
%%   <<"Tags">> => list(tag()),
%%   <<"TrackingOptions">> => tracking_options()
%% }
-type get_configuration_set_response() :: #{binary() => any()}.


%% Example:
%% template() :: #{
%%   <<"TemplateArn">> => string(),
%%   <<"TemplateData">> => string()
%% }
-type template() :: #{binary() => any()}.


%% Example:
%% send_email_request() :: #{
%%   <<"ConfigurationSetName">> => string(),
%%   <<"Content">> := email_content(),
%%   <<"Destination">> := destination(),
%%   <<"EmailTags">> => list(message_tag()),
%%   <<"FeedbackForwardingEmailAddress">> => string(),
%%   <<"FromEmailAddress">> => string(),
%%   <<"ReplyToAddresses">> => list(string())
%% }
-type send_email_request() :: #{binary() => any()}.

%% Example:
%% put_dedicated_ip_warmup_attributes_response() :: #{}
-type put_dedicated_ip_warmup_attributes_response() :: #{}.


%% Example:
%% put_dedicated_ip_warmup_attributes_request() :: #{
%%   <<"WarmupPercentage">> := integer()
%% }
-type put_dedicated_ip_warmup_attributes_request() :: #{binary() => any()}.


%% Example:
%% domain_deliverability_campaign() :: #{
%%   <<"CampaignId">> => string(),
%%   <<"DeleteRate">> => float(),
%%   <<"Esps">> => list(string()),
%%   <<"FirstSeenDateTime">> => non_neg_integer(),
%%   <<"FromAddress">> => string(),
%%   <<"ImageUrl">> => string(),
%%   <<"InboxCount">> => float(),
%%   <<"LastSeenDateTime">> => non_neg_integer(),
%%   <<"ProjectedVolume">> => float(),
%%   <<"ReadDeleteRate">> => float(),
%%   <<"ReadRate">> => float(),
%%   <<"SendingIps">> => list(string()),
%%   <<"SpamCount">> => float(),
%%   <<"Subject">> => string()
%% }
-type domain_deliverability_campaign() :: #{binary() => any()}.

%% Example:
%% get_account_request() :: #{}
-type get_account_request() :: #{}.

%% Example:
%% get_dedicated_ip_request() :: #{}
-type get_dedicated_ip_request() :: #{}.


%% Example:
%% list_email_identities_request() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PageSize">> => integer()
%% }
-type list_email_identities_request() :: #{binary() => any()}.


%% Example:
%% put_configuration_set_reputation_options_request() :: #{
%%   <<"ReputationMetricsEnabled">> => boolean()
%% }
-type put_configuration_set_reputation_options_request() :: #{binary() => any()}.


%% Example:
%% create_configuration_set_request() :: #{
%%   <<"ConfigurationSetName">> := string(),
%%   <<"DeliveryOptions">> => delivery_options(),
%%   <<"ReputationOptions">> => reputation_options(),
%%   <<"SendingOptions">> => sending_options(),
%%   <<"Tags">> => list(tag()),
%%   <<"TrackingOptions">> => tracking_options()
%% }
-type create_configuration_set_request() :: #{binary() => any()}.


%% Example:
%% sns_destination() :: #{
%%   <<"TopicArn">> => string()
%% }
-type sns_destination() :: #{binary() => any()}.


%% Example:
%% pinpoint_destination() :: #{
%%   <<"ApplicationArn">> => string()
%% }
-type pinpoint_destination() :: #{binary() => any()}.

%% Example:
%% put_email_identity_feedback_attributes_response() :: #{}
-type put_email_identity_feedback_attributes_response() :: #{}.


%% Example:
%% deliverability_test_report() :: #{
%%   <<"CreateDate">> => non_neg_integer(),
%%   <<"DeliverabilityTestStatus">> => list(any()),
%%   <<"FromEmailAddress">> => string(),
%%   <<"ReportId">> => string(),
%%   <<"ReportName">> => string(),
%%   <<"Subject">> => string()
%% }
-type deliverability_test_report() :: #{binary() => any()}.


%% Example:
%% get_deliverability_test_report_response() :: #{
%%   <<"DeliverabilityTestReport">> => deliverability_test_report(),
%%   <<"IspPlacements">> => list(isp_placement()),
%%   <<"Message">> => string(),
%%   <<"OverallPlacement">> => placement_statistics(),
%%   <<"Tags">> => list(tag())
%% }
-type get_deliverability_test_report_response() :: #{binary() => any()}.

%% Example:
%% get_email_identity_request() :: #{}
-type get_email_identity_request() :: #{}.


%% Example:
%% get_dedicated_ips_response() :: #{
%%   <<"DedicatedIps">> => list(dedicated_ip()),
%%   <<"NextToken">> => string()
%% }
-type get_dedicated_ips_response() :: #{binary() => any()}.


%% Example:
%% message() :: #{
%%   <<"Body">> => body(),
%%   <<"Subject">> => content()
%% }
-type message() :: #{binary() => any()}.

-type create_configuration_set_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    already_exists_exception().

-type create_configuration_set_event_destination_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    already_exists_exception().

-type create_dedicated_ip_pool_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    too_many_requests_exception() | 
    already_exists_exception().

-type create_deliverability_test_report_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    message_rejected() | 
    concurrent_modification_exception() | 
    not_found_exception() | 
    mail_from_domain_not_verified_exception() | 
    too_many_requests_exception() | 
    account_suspended_exception() | 
    sending_paused_exception().

-type create_email_identity_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    too_many_requests_exception().

-type delete_configuration_set_errors() ::
    bad_request_exception() | 
    concurrent_modification_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type delete_configuration_set_event_destination_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type delete_dedicated_ip_pool_errors() ::
    bad_request_exception() | 
    concurrent_modification_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type delete_email_identity_errors() ::
    bad_request_exception() | 
    concurrent_modification_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type get_account_errors() ::
    bad_request_exception() | 
    too_many_requests_exception().

-type get_blacklist_reports_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type get_configuration_set_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type get_configuration_set_event_destinations_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type get_dedicated_ip_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type get_dedicated_ips_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type get_deliverability_dashboard_options_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    too_many_requests_exception().

-type get_deliverability_test_report_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type get_domain_deliverability_campaign_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type get_domain_statistics_report_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type get_email_identity_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type list_configuration_sets_errors() ::
    bad_request_exception() | 
    too_many_requests_exception().

-type list_dedicated_ip_pools_errors() ::
    bad_request_exception() | 
    too_many_requests_exception().

-type list_deliverability_test_reports_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type list_domain_deliverability_campaigns_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type list_email_identities_errors() ::
    bad_request_exception() | 
    too_many_requests_exception().

-type list_tags_for_resource_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type put_account_dedicated_ip_warmup_attributes_errors() ::
    bad_request_exception() | 
    too_many_requests_exception().

-type put_account_sending_attributes_errors() ::
    bad_request_exception() | 
    too_many_requests_exception().

-type put_configuration_set_delivery_options_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type put_configuration_set_reputation_options_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type put_configuration_set_sending_options_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type put_configuration_set_tracking_options_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type put_dedicated_ip_in_pool_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type put_dedicated_ip_warmup_attributes_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type put_deliverability_dashboard_option_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    already_exists_exception().

-type put_email_identity_dkim_attributes_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type put_email_identity_feedback_attributes_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type put_email_identity_mail_from_attributes_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type send_email_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    message_rejected() | 
    not_found_exception() | 
    mail_from_domain_not_verified_exception() | 
    too_many_requests_exception() | 
    account_suspended_exception() | 
    sending_paused_exception().

-type tag_resource_errors() ::
    bad_request_exception() | 
    concurrent_modification_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type untag_resource_errors() ::
    bad_request_exception() | 
    concurrent_modification_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type update_configuration_set_event_destination_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Create a configuration set.
%%
%% Configuration sets are groups of
%% rules that you can apply to the emails you send using Amazon Pinpoint. You
%% apply a configuration
%% set to an email by including a reference to the configuration set in the
%% headers of the
%% email. When you apply a configuration set to an email, all of the rules in
%% that
%% configuration set are applied to the email.
-spec create_configuration_set(aws_client:aws_client(), create_configuration_set_request()) ->
    {ok, create_configuration_set_response(), tuple()} |
    {error, any()} |
    {error, create_configuration_set_errors(), tuple()}.
create_configuration_set(Client, Input) ->
    create_configuration_set(Client, Input, []).

-spec create_configuration_set(aws_client:aws_client(), create_configuration_set_request(), proplists:proplist()) ->
    {ok, create_configuration_set_response(), tuple()} |
    {error, any()} |
    {error, create_configuration_set_errors(), tuple()}.
create_configuration_set(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/email/configuration-sets"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Create an event destination.
%%
%% In Amazon Pinpoint, events include message
%% sends, deliveries, opens, clicks, bounces, and complaints. Event
%% destinations are places that you can send information about these events
%% to. For example, you can send event data to Amazon SNS to receive
%% notifications when you
%% receive bounces or complaints, or you can use Amazon Kinesis Data Firehose
%% to stream data to Amazon S3 for long-term
%% storage.
%%
%% A single configuration set can include more than one event destination.
-spec create_configuration_set_event_destination(aws_client:aws_client(), binary() | list(), create_configuration_set_event_destination_request()) ->
    {ok, create_configuration_set_event_destination_response(), tuple()} |
    {error, any()} |
    {error, create_configuration_set_event_destination_errors(), tuple()}.
create_configuration_set_event_destination(Client, ConfigurationSetName, Input) ->
    create_configuration_set_event_destination(Client, ConfigurationSetName, Input, []).

-spec create_configuration_set_event_destination(aws_client:aws_client(), binary() | list(), create_configuration_set_event_destination_request(), proplists:proplist()) ->
    {ok, create_configuration_set_event_destination_response(), tuple()} |
    {error, any()} |
    {error, create_configuration_set_event_destination_errors(), tuple()}.
create_configuration_set_event_destination(Client, ConfigurationSetName, Input0, Options0) ->
    Method = post,
    Path = ["/v1/email/configuration-sets/", aws_util:encode_uri(ConfigurationSetName), "/event-destinations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Create a new pool of dedicated IP addresses.
%%
%% A pool can include one or more dedicated
%% IP addresses that are associated with your Amazon Pinpoint account. You
%% can associate a pool with
%% a configuration set. When you send an email that uses that configuration
%% set, Amazon Pinpoint
%% sends it using only the IP addresses in the associated pool.
-spec create_dedicated_ip_pool(aws_client:aws_client(), create_dedicated_ip_pool_request()) ->
    {ok, create_dedicated_ip_pool_response(), tuple()} |
    {error, any()} |
    {error, create_dedicated_ip_pool_errors(), tuple()}.
create_dedicated_ip_pool(Client, Input) ->
    create_dedicated_ip_pool(Client, Input, []).

-spec create_dedicated_ip_pool(aws_client:aws_client(), create_dedicated_ip_pool_request(), proplists:proplist()) ->
    {ok, create_dedicated_ip_pool_response(), tuple()} |
    {error, any()} |
    {error, create_dedicated_ip_pool_errors(), tuple()}.
create_dedicated_ip_pool(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/email/dedicated-ip-pools"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

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
%% will be handled
%% by various email providers around the world. When you perform a predictive
%% inbox placement test, you provide a
%% sample message that contains the content that you plan to send to your
%% customers. Amazon Pinpoint
%% then sends that message to special email addresses spread across several
%% major email
%% providers. After about 24 hours, the test is complete, and you can use the
%% `GetDeliverabilityTestReport' operation to view the results of the
%% test.
-spec create_deliverability_test_report(aws_client:aws_client(), create_deliverability_test_report_request()) ->
    {ok, create_deliverability_test_report_response(), tuple()} |
    {error, any()} |
    {error, create_deliverability_test_report_errors(), tuple()}.
create_deliverability_test_report(Client, Input) ->
    create_deliverability_test_report(Client, Input, []).

-spec create_deliverability_test_report(aws_client:aws_client(), create_deliverability_test_report_request(), proplists:proplist()) ->
    {ok, create_deliverability_test_report_response(), tuple()} |
    {error, any()} |
    {error, create_deliverability_test_report_errors(), tuple()}.
create_deliverability_test_report(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/email/deliverability-dashboard/test"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Verifies an email identity for use with Amazon Pinpoint.
%%
%% In Amazon Pinpoint, an identity is an email
%% address or domain that you use when you send email. Before you can use an
%% identity to
%% send email with Amazon Pinpoint, you first have to verify it. By verifying
%% an address, you
%% demonstrate that you're the owner of the address, and that you've
%% given Amazon Pinpoint permission
%% to send email from the address.
%%
%% When you verify an email address, Amazon Pinpoint sends an email to the
%% address. Your email
%% address is verified as soon as you follow the link in the verification
%% email.
%%
%% When you verify a domain, this operation provides a set of DKIM tokens,
%% which you can
%% convert into CNAME tokens. You add these CNAME tokens to the DNS
%% configuration for your
%% domain. Your domain is verified when Amazon Pinpoint detects these records
%% in the DNS
%% configuration for your domain. It usually takes around 72 hours to
%% complete the domain
%% verification process.
-spec create_email_identity(aws_client:aws_client(), create_email_identity_request()) ->
    {ok, create_email_identity_response(), tuple()} |
    {error, any()} |
    {error, create_email_identity_errors(), tuple()}.
create_email_identity(Client, Input) ->
    create_email_identity(Client, Input, []).

-spec create_email_identity(aws_client:aws_client(), create_email_identity_request(), proplists:proplist()) ->
    {ok, create_email_identity_response(), tuple()} |
    {error, any()} |
    {error, create_email_identity_errors(), tuple()}.
create_email_identity(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/email/identities"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

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
%% including a
%% reference to the configuration set in the headers of the email. When you
%% apply a
%% configuration set to an email, all of the rules in that configuration set
%% are applied to
%% the email.
-spec delete_configuration_set(aws_client:aws_client(), binary() | list(), delete_configuration_set_request()) ->
    {ok, delete_configuration_set_response(), tuple()} |
    {error, any()} |
    {error, delete_configuration_set_errors(), tuple()}.
delete_configuration_set(Client, ConfigurationSetName, Input) ->
    delete_configuration_set(Client, ConfigurationSetName, Input, []).

-spec delete_configuration_set(aws_client:aws_client(), binary() | list(), delete_configuration_set_request(), proplists:proplist()) ->
    {ok, delete_configuration_set_response(), tuple()} |
    {error, any()} |
    {error, delete_configuration_set_errors(), tuple()}.
delete_configuration_set(Client, ConfigurationSetName, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/email/configuration-sets/", aws_util:encode_uri(ConfigurationSetName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

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
%% clicks, bounces, and complaints. Event destinations are places that
%% you can send information about these events to. For example, you can send
%% event data to
%% Amazon SNS to receive notifications when you receive bounces or
%% complaints, or you can use
%% Amazon Kinesis Data Firehose to stream data to Amazon S3 for long-term
%% storage.
-spec delete_configuration_set_event_destination(aws_client:aws_client(), binary() | list(), binary() | list(), delete_configuration_set_event_destination_request()) ->
    {ok, delete_configuration_set_event_destination_response(), tuple()} |
    {error, any()} |
    {error, delete_configuration_set_event_destination_errors(), tuple()}.
delete_configuration_set_event_destination(Client, ConfigurationSetName, EventDestinationName, Input) ->
    delete_configuration_set_event_destination(Client, ConfigurationSetName, EventDestinationName, Input, []).

-spec delete_configuration_set_event_destination(aws_client:aws_client(), binary() | list(), binary() | list(), delete_configuration_set_event_destination_request(), proplists:proplist()) ->
    {ok, delete_configuration_set_event_destination_response(), tuple()} |
    {error, any()} |
    {error, delete_configuration_set_event_destination_errors(), tuple()}.
delete_configuration_set_event_destination(Client, ConfigurationSetName, EventDestinationName, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/email/configuration-sets/", aws_util:encode_uri(ConfigurationSetName), "/event-destinations/", aws_util:encode_uri(EventDestinationName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Delete a dedicated IP pool.
-spec delete_dedicated_ip_pool(aws_client:aws_client(), binary() | list(), delete_dedicated_ip_pool_request()) ->
    {ok, delete_dedicated_ip_pool_response(), tuple()} |
    {error, any()} |
    {error, delete_dedicated_ip_pool_errors(), tuple()}.
delete_dedicated_ip_pool(Client, PoolName, Input) ->
    delete_dedicated_ip_pool(Client, PoolName, Input, []).

-spec delete_dedicated_ip_pool(aws_client:aws_client(), binary() | list(), delete_dedicated_ip_pool_request(), proplists:proplist()) ->
    {ok, delete_dedicated_ip_pool_response(), tuple()} |
    {error, any()} |
    {error, delete_dedicated_ip_pool_errors(), tuple()}.
delete_dedicated_ip_pool(Client, PoolName, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/email/dedicated-ip-pools/", aws_util:encode_uri(PoolName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

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
%% An identity
%% can be either an email address or a domain name.
-spec delete_email_identity(aws_client:aws_client(), binary() | list(), delete_email_identity_request()) ->
    {ok, delete_email_identity_response(), tuple()} |
    {error, any()} |
    {error, delete_email_identity_errors(), tuple()}.
delete_email_identity(Client, EmailIdentity, Input) ->
    delete_email_identity(Client, EmailIdentity, Input, []).

-spec delete_email_identity(aws_client:aws_client(), binary() | list(), delete_email_identity_request(), proplists:proplist()) ->
    {ok, delete_email_identity_response(), tuple()} |
    {error, any()} |
    {error, delete_email_identity_errors(), tuple()}.
delete_email_identity(Client, EmailIdentity, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/email/identities/", aws_util:encode_uri(EmailIdentity), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Obtain information about the email-sending status and capabilities of
%% your Amazon Pinpoint
%% account in the current AWS Region.
-spec get_account(aws_client:aws_client()) ->
    {ok, get_account_response(), tuple()} |
    {error, any()} |
    {error, get_account_errors(), tuple()}.
get_account(Client)
  when is_map(Client) ->
    get_account(Client, #{}, #{}).

-spec get_account(aws_client:aws_client(), map(), map()) ->
    {ok, get_account_response(), tuple()} |
    {error, any()} |
    {error, get_account_errors(), tuple()}.
get_account(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_account(Client, QueryMap, HeadersMap, []).

-spec get_account(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_account_response(), tuple()} |
    {error, any()} |
    {error, get_account_errors(), tuple()}.
get_account(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/email/account"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieve a list of the blacklists that your dedicated IP addresses
%% appear on.
-spec get_blacklist_reports(aws_client:aws_client(), binary() | list()) ->
    {ok, get_blacklist_reports_response(), tuple()} |
    {error, any()} |
    {error, get_blacklist_reports_errors(), tuple()}.
get_blacklist_reports(Client, BlacklistItemNames)
  when is_map(Client) ->
    get_blacklist_reports(Client, BlacklistItemNames, #{}, #{}).

-spec get_blacklist_reports(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_blacklist_reports_response(), tuple()} |
    {error, any()} |
    {error, get_blacklist_reports_errors(), tuple()}.
get_blacklist_reports(Client, BlacklistItemNames, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_blacklist_reports(Client, BlacklistItemNames, QueryMap, HeadersMap, []).

-spec get_blacklist_reports(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_blacklist_reports_response(), tuple()} |
    {error, any()} |
    {error, get_blacklist_reports_errors(), tuple()}.
get_blacklist_reports(Client, BlacklistItemNames, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/email/deliverability-dashboard/blacklist-report"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"BlacklistItemNames">>, BlacklistItemNames}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get information about an existing configuration set, including the
%% dedicated IP pool
%% that it's associated with, whether or not it's enabled for sending
%% email, and
%% more.
%%
%% In Amazon Pinpoint, configuration sets are groups of rules that you can
%% apply to the emails you send. You apply a configuration set to an email by
%% including a
%% reference to the configuration set in the headers of the email. When you
%% apply a
%% configuration set to an email, all of the rules in that configuration set
%% are applied to
%% the email.
-spec get_configuration_set(aws_client:aws_client(), binary() | list()) ->
    {ok, get_configuration_set_response(), tuple()} |
    {error, any()} |
    {error, get_configuration_set_errors(), tuple()}.
get_configuration_set(Client, ConfigurationSetName)
  when is_map(Client) ->
    get_configuration_set(Client, ConfigurationSetName, #{}, #{}).

-spec get_configuration_set(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_configuration_set_response(), tuple()} |
    {error, any()} |
    {error, get_configuration_set_errors(), tuple()}.
get_configuration_set(Client, ConfigurationSetName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_configuration_set(Client, ConfigurationSetName, QueryMap, HeadersMap, []).

-spec get_configuration_set(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_configuration_set_response(), tuple()} |
    {error, any()} |
    {error, get_configuration_set_errors(), tuple()}.
get_configuration_set(Client, ConfigurationSetName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/email/configuration-sets/", aws_util:encode_uri(ConfigurationSetName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieve a list of event destinations that are associated with a
%% configuration
%% set.
%%
%% In Amazon Pinpoint, events include message sends, deliveries, opens,
%% clicks, bounces, and complaints. Event destinations are places that
%% you can send information about these events to. For example, you can send
%% event data to
%% Amazon SNS to receive notifications when you receive bounces or
%% complaints, or you can use
%% Amazon Kinesis Data Firehose to stream data to Amazon S3 for long-term
%% storage.
-spec get_configuration_set_event_destinations(aws_client:aws_client(), binary() | list()) ->
    {ok, get_configuration_set_event_destinations_response(), tuple()} |
    {error, any()} |
    {error, get_configuration_set_event_destinations_errors(), tuple()}.
get_configuration_set_event_destinations(Client, ConfigurationSetName)
  when is_map(Client) ->
    get_configuration_set_event_destinations(Client, ConfigurationSetName, #{}, #{}).

-spec get_configuration_set_event_destinations(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_configuration_set_event_destinations_response(), tuple()} |
    {error, any()} |
    {error, get_configuration_set_event_destinations_errors(), tuple()}.
get_configuration_set_event_destinations(Client, ConfigurationSetName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_configuration_set_event_destinations(Client, ConfigurationSetName, QueryMap, HeadersMap, []).

-spec get_configuration_set_event_destinations(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_configuration_set_event_destinations_response(), tuple()} |
    {error, any()} |
    {error, get_configuration_set_event_destinations_errors(), tuple()}.
get_configuration_set_event_destinations(Client, ConfigurationSetName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/email/configuration-sets/", aws_util:encode_uri(ConfigurationSetName), "/event-destinations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get information about a dedicated IP address, including the name of
%% the dedicated IP
%% pool that it's associated with, as well information about the
%% automatic warm-up process
%% for the address.
-spec get_dedicated_ip(aws_client:aws_client(), binary() | list()) ->
    {ok, get_dedicated_ip_response(), tuple()} |
    {error, any()} |
    {error, get_dedicated_ip_errors(), tuple()}.
get_dedicated_ip(Client, Ip)
  when is_map(Client) ->
    get_dedicated_ip(Client, Ip, #{}, #{}).

-spec get_dedicated_ip(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_dedicated_ip_response(), tuple()} |
    {error, any()} |
    {error, get_dedicated_ip_errors(), tuple()}.
get_dedicated_ip(Client, Ip, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_dedicated_ip(Client, Ip, QueryMap, HeadersMap, []).

-spec get_dedicated_ip(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_dedicated_ip_response(), tuple()} |
    {error, any()} |
    {error, get_dedicated_ip_errors(), tuple()}.
get_dedicated_ip(Client, Ip, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/email/dedicated-ips/", aws_util:encode_uri(Ip), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the dedicated IP addresses that are associated with your Amazon
%% Pinpoint
%% account.
-spec get_dedicated_ips(aws_client:aws_client()) ->
    {ok, get_dedicated_ips_response(), tuple()} |
    {error, any()} |
    {error, get_dedicated_ips_errors(), tuple()}.
get_dedicated_ips(Client)
  when is_map(Client) ->
    get_dedicated_ips(Client, #{}, #{}).

-spec get_dedicated_ips(aws_client:aws_client(), map(), map()) ->
    {ok, get_dedicated_ips_response(), tuple()} |
    {error, any()} |
    {error, get_dedicated_ips_errors(), tuple()}.
get_dedicated_ips(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_dedicated_ips(Client, QueryMap, HeadersMap, []).

-spec get_dedicated_ips(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_dedicated_ips_response(), tuple()} |
    {error, any()} |
    {error, get_dedicated_ips_errors(), tuple()}.
get_dedicated_ips(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/email/dedicated-ips"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

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
%% reputation, deliverability, and
%% other metrics for the domains that you use to send email using Amazon
%% Pinpoint. You also gain the
%% ability to perform predictive inbox placement tests.
%%
%% When you use the Deliverability dashboard, you pay a monthly subscription
%% charge, in addition
%% to any other fees that you accrue by using Amazon Pinpoint. For more
%% information about the
%% features and cost of a Deliverability dashboard subscription, see Amazon
%% Pinpoint Pricing: http://aws.amazon.com/pinpoint/pricing/.
-spec get_deliverability_dashboard_options(aws_client:aws_client()) ->
    {ok, get_deliverability_dashboard_options_response(), tuple()} |
    {error, any()} |
    {error, get_deliverability_dashboard_options_errors(), tuple()}.
get_deliverability_dashboard_options(Client)
  when is_map(Client) ->
    get_deliverability_dashboard_options(Client, #{}, #{}).

-spec get_deliverability_dashboard_options(aws_client:aws_client(), map(), map()) ->
    {ok, get_deliverability_dashboard_options_response(), tuple()} |
    {error, any()} |
    {error, get_deliverability_dashboard_options_errors(), tuple()}.
get_deliverability_dashboard_options(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_deliverability_dashboard_options(Client, QueryMap, HeadersMap, []).

-spec get_deliverability_dashboard_options(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_deliverability_dashboard_options_response(), tuple()} |
    {error, any()} |
    {error, get_deliverability_dashboard_options_errors(), tuple()}.
get_deliverability_dashboard_options(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/email/deliverability-dashboard"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieve the results of a predictive inbox placement test.
-spec get_deliverability_test_report(aws_client:aws_client(), binary() | list()) ->
    {ok, get_deliverability_test_report_response(), tuple()} |
    {error, any()} |
    {error, get_deliverability_test_report_errors(), tuple()}.
get_deliverability_test_report(Client, ReportId)
  when is_map(Client) ->
    get_deliverability_test_report(Client, ReportId, #{}, #{}).

-spec get_deliverability_test_report(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_deliverability_test_report_response(), tuple()} |
    {error, any()} |
    {error, get_deliverability_test_report_errors(), tuple()}.
get_deliverability_test_report(Client, ReportId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_deliverability_test_report(Client, ReportId, QueryMap, HeadersMap, []).

-spec get_deliverability_test_report(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_deliverability_test_report_response(), tuple()} |
    {error, any()} |
    {error, get_deliverability_test_report_errors(), tuple()}.
get_deliverability_test_report(Client, ReportId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/email/deliverability-dashboard/test-reports/", aws_util:encode_uri(ReportId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieve all the deliverability data for a specific campaign.
%%
%% This data is available
%% for a campaign only if the campaign sent email by using a domain that the
%% Deliverability dashboard is enabled for
%% (`PutDeliverabilityDashboardOption'
%% operation).
-spec get_domain_deliverability_campaign(aws_client:aws_client(), binary() | list()) ->
    {ok, get_domain_deliverability_campaign_response(), tuple()} |
    {error, any()} |
    {error, get_domain_deliverability_campaign_errors(), tuple()}.
get_domain_deliverability_campaign(Client, CampaignId)
  when is_map(Client) ->
    get_domain_deliverability_campaign(Client, CampaignId, #{}, #{}).

-spec get_domain_deliverability_campaign(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_domain_deliverability_campaign_response(), tuple()} |
    {error, any()} |
    {error, get_domain_deliverability_campaign_errors(), tuple()}.
get_domain_deliverability_campaign(Client, CampaignId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_domain_deliverability_campaign(Client, CampaignId, QueryMap, HeadersMap, []).

-spec get_domain_deliverability_campaign(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_domain_deliverability_campaign_response(), tuple()} |
    {error, any()} |
    {error, get_domain_deliverability_campaign_errors(), tuple()}.
get_domain_deliverability_campaign(Client, CampaignId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/email/deliverability-dashboard/campaigns/", aws_util:encode_uri(CampaignId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieve inbox placement and engagement rates for the domains that
%% you use to send
%% email.
-spec get_domain_statistics_report(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_domain_statistics_report_response(), tuple()} |
    {error, any()} |
    {error, get_domain_statistics_report_errors(), tuple()}.
get_domain_statistics_report(Client, Domain, EndDate, StartDate)
  when is_map(Client) ->
    get_domain_statistics_report(Client, Domain, EndDate, StartDate, #{}, #{}).

-spec get_domain_statistics_report(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_domain_statistics_report_response(), tuple()} |
    {error, any()} |
    {error, get_domain_statistics_report_errors(), tuple()}.
get_domain_statistics_report(Client, Domain, EndDate, StartDate, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_domain_statistics_report(Client, Domain, EndDate, StartDate, QueryMap, HeadersMap, []).

-spec get_domain_statistics_report(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_domain_statistics_report_response(), tuple()} |
    {error, any()} |
    {error, get_domain_statistics_report_errors(), tuple()}.
get_domain_statistics_report(Client, Domain, EndDate, StartDate, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/email/deliverability-dashboard/statistics-report/", aws_util:encode_uri(Domain), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"EndDate">>, EndDate},
        {<<"StartDate">>, StartDate}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Provides information about a specific identity associated with your
%% Amazon Pinpoint account,
%% including the identity's verification status, its DKIM authentication
%% status, and its
%% custom Mail-From settings.
-spec get_email_identity(aws_client:aws_client(), binary() | list()) ->
    {ok, get_email_identity_response(), tuple()} |
    {error, any()} |
    {error, get_email_identity_errors(), tuple()}.
get_email_identity(Client, EmailIdentity)
  when is_map(Client) ->
    get_email_identity(Client, EmailIdentity, #{}, #{}).

-spec get_email_identity(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_email_identity_response(), tuple()} |
    {error, any()} |
    {error, get_email_identity_errors(), tuple()}.
get_email_identity(Client, EmailIdentity, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_email_identity(Client, EmailIdentity, QueryMap, HeadersMap, []).

-spec get_email_identity(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_email_identity_response(), tuple()} |
    {error, any()} |
    {error, get_email_identity_errors(), tuple()}.
get_email_identity(Client, EmailIdentity, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/email/identities/", aws_util:encode_uri(EmailIdentity), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List all of the configuration sets associated with your Amazon
%% Pinpoint account in the current
%% region.
%%
%% In Amazon Pinpoint, configuration sets are groups of rules that you can
%% apply to the emails you send. You apply a configuration set to an email by
%% including a
%% reference to the configuration set in the headers of the email. When you
%% apply a
%% configuration set to an email, all of the rules in that configuration set
%% are applied to
%% the email.
-spec list_configuration_sets(aws_client:aws_client()) ->
    {ok, list_configuration_sets_response(), tuple()} |
    {error, any()} |
    {error, list_configuration_sets_errors(), tuple()}.
list_configuration_sets(Client)
  when is_map(Client) ->
    list_configuration_sets(Client, #{}, #{}).

-spec list_configuration_sets(aws_client:aws_client(), map(), map()) ->
    {ok, list_configuration_sets_response(), tuple()} |
    {error, any()} |
    {error, list_configuration_sets_errors(), tuple()}.
list_configuration_sets(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_configuration_sets(Client, QueryMap, HeadersMap, []).

-spec list_configuration_sets(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_configuration_sets_response(), tuple()} |
    {error, any()} |
    {error, list_configuration_sets_errors(), tuple()}.
list_configuration_sets(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/email/configuration-sets"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)},
        {<<"PageSize">>, maps:get(<<"PageSize">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List all of the dedicated IP pools that exist in your Amazon Pinpoint
%% account in the current
%% AWS Region.
-spec list_dedicated_ip_pools(aws_client:aws_client()) ->
    {ok, list_dedicated_ip_pools_response(), tuple()} |
    {error, any()} |
    {error, list_dedicated_ip_pools_errors(), tuple()}.
list_dedicated_ip_pools(Client)
  when is_map(Client) ->
    list_dedicated_ip_pools(Client, #{}, #{}).

-spec list_dedicated_ip_pools(aws_client:aws_client(), map(), map()) ->
    {ok, list_dedicated_ip_pools_response(), tuple()} |
    {error, any()} |
    {error, list_dedicated_ip_pools_errors(), tuple()}.
list_dedicated_ip_pools(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_dedicated_ip_pools(Client, QueryMap, HeadersMap, []).

-spec list_dedicated_ip_pools(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_dedicated_ip_pools_response(), tuple()} |
    {error, any()} |
    {error, list_dedicated_ip_pools_errors(), tuple()}.
list_dedicated_ip_pools(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/email/dedicated-ip-pools"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

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
%% For
%% predictive inbox placement tests that are complete, you can use the
%% `GetDeliverabilityTestReport'
%% operation to view the results.
-spec list_deliverability_test_reports(aws_client:aws_client()) ->
    {ok, list_deliverability_test_reports_response(), tuple()} |
    {error, any()} |
    {error, list_deliverability_test_reports_errors(), tuple()}.
list_deliverability_test_reports(Client)
  when is_map(Client) ->
    list_deliverability_test_reports(Client, #{}, #{}).

-spec list_deliverability_test_reports(aws_client:aws_client(), map(), map()) ->
    {ok, list_deliverability_test_reports_response(), tuple()} |
    {error, any()} |
    {error, list_deliverability_test_reports_errors(), tuple()}.
list_deliverability_test_reports(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_deliverability_test_reports(Client, QueryMap, HeadersMap, []).

-spec list_deliverability_test_reports(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_deliverability_test_reports_response(), tuple()} |
    {error, any()} |
    {error, list_deliverability_test_reports_errors(), tuple()}.
list_deliverability_test_reports(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/email/deliverability-dashboard/test-reports"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)},
        {<<"PageSize">>, maps:get(<<"PageSize">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieve deliverability data for all the campaigns that used a
%% specific domain to send
%% email during a specified time range.
%%
%% This data is available for a domain only if you
%% enabled the Deliverability dashboard
%% (`PutDeliverabilityDashboardOption' operation)
%% for the domain.
-spec list_domain_deliverability_campaigns(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, list_domain_deliverability_campaigns_response(), tuple()} |
    {error, any()} |
    {error, list_domain_deliverability_campaigns_errors(), tuple()}.
list_domain_deliverability_campaigns(Client, SubscribedDomain, EndDate, StartDate)
  when is_map(Client) ->
    list_domain_deliverability_campaigns(Client, SubscribedDomain, EndDate, StartDate, #{}, #{}).

-spec list_domain_deliverability_campaigns(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_domain_deliverability_campaigns_response(), tuple()} |
    {error, any()} |
    {error, list_domain_deliverability_campaigns_errors(), tuple()}.
list_domain_deliverability_campaigns(Client, SubscribedDomain, EndDate, StartDate, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_domain_deliverability_campaigns(Client, SubscribedDomain, EndDate, StartDate, QueryMap, HeadersMap, []).

-spec list_domain_deliverability_campaigns(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_domain_deliverability_campaigns_response(), tuple()} |
    {error, any()} |
    {error, list_domain_deliverability_campaigns_errors(), tuple()}.
list_domain_deliverability_campaigns(Client, SubscribedDomain, EndDate, StartDate, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/email/deliverability-dashboard/domains/", aws_util:encode_uri(SubscribedDomain), "/campaigns"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

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
%% with your Amazon Pinpoint
%% account.
%%
%% An identity can be either an email address or a domain. This operation
%% returns
%% identities that are verified as well as those that aren't.
-spec list_email_identities(aws_client:aws_client()) ->
    {ok, list_email_identities_response(), tuple()} |
    {error, any()} |
    {error, list_email_identities_errors(), tuple()}.
list_email_identities(Client)
  when is_map(Client) ->
    list_email_identities(Client, #{}, #{}).

-spec list_email_identities(aws_client:aws_client(), map(), map()) ->
    {ok, list_email_identities_response(), tuple()} |
    {error, any()} |
    {error, list_email_identities_errors(), tuple()}.
list_email_identities(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_email_identities(Client, QueryMap, HeadersMap, []).

-spec list_email_identities(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_email_identities_response(), tuple()} |
    {error, any()} |
    {error, list_email_identities_errors(), tuple()}.
list_email_identities(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/email/identities"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)},
        {<<"PageSize">>, maps:get(<<"PageSize">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieve a list of the tags (keys and values) that are associated
%% with a specified
%% resource.
%%
%% A tag is a label that you optionally define and associate
%% with a resource in Amazon Pinpoint. Each tag consists of a required tag
%% key and an optional associated tag value. A tag key
%% is a general label that acts as a category for more specific tag values. A
%% tag value
%% acts as a descriptor within a tag key.
-spec list_tags_for_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/email/tags"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"ResourceArn">>, ResourceArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Enable or disable the automatic warm-up feature for dedicated IP
%% addresses.
-spec put_account_dedicated_ip_warmup_attributes(aws_client:aws_client(), put_account_dedicated_ip_warmup_attributes_request()) ->
    {ok, put_account_dedicated_ip_warmup_attributes_response(), tuple()} |
    {error, any()} |
    {error, put_account_dedicated_ip_warmup_attributes_errors(), tuple()}.
put_account_dedicated_ip_warmup_attributes(Client, Input) ->
    put_account_dedicated_ip_warmup_attributes(Client, Input, []).

-spec put_account_dedicated_ip_warmup_attributes(aws_client:aws_client(), put_account_dedicated_ip_warmup_attributes_request(), proplists:proplist()) ->
    {ok, put_account_dedicated_ip_warmup_attributes_response(), tuple()} |
    {error, any()} |
    {error, put_account_dedicated_ip_warmup_attributes_errors(), tuple()}.
put_account_dedicated_ip_warmup_attributes(Client, Input0, Options0) ->
    Method = put,
    Path = ["/v1/email/account/dedicated-ips/warmup"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Enable or disable the ability of your account to send email.
-spec put_account_sending_attributes(aws_client:aws_client(), put_account_sending_attributes_request()) ->
    {ok, put_account_sending_attributes_response(), tuple()} |
    {error, any()} |
    {error, put_account_sending_attributes_errors(), tuple()}.
put_account_sending_attributes(Client, Input) ->
    put_account_sending_attributes(Client, Input, []).

-spec put_account_sending_attributes(aws_client:aws_client(), put_account_sending_attributes_request(), proplists:proplist()) ->
    {ok, put_account_sending_attributes_response(), tuple()} |
    {error, any()} |
    {error, put_account_sending_attributes_errors(), tuple()}.
put_account_sending_attributes(Client, Input0, Options0) ->
    Method = put,
    Path = ["/v1/email/account/sending"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Associate a configuration set with a dedicated IP pool.
%%
%% You can use dedicated IP pools
%% to create groups of dedicated IP addresses for sending specific types of
%% email.
-spec put_configuration_set_delivery_options(aws_client:aws_client(), binary() | list(), put_configuration_set_delivery_options_request()) ->
    {ok, put_configuration_set_delivery_options_response(), tuple()} |
    {error, any()} |
    {error, put_configuration_set_delivery_options_errors(), tuple()}.
put_configuration_set_delivery_options(Client, ConfigurationSetName, Input) ->
    put_configuration_set_delivery_options(Client, ConfigurationSetName, Input, []).

-spec put_configuration_set_delivery_options(aws_client:aws_client(), binary() | list(), put_configuration_set_delivery_options_request(), proplists:proplist()) ->
    {ok, put_configuration_set_delivery_options_response(), tuple()} |
    {error, any()} |
    {error, put_configuration_set_delivery_options_errors(), tuple()}.
put_configuration_set_delivery_options(Client, ConfigurationSetName, Input0, Options0) ->
    Method = put,
    Path = ["/v1/email/configuration-sets/", aws_util:encode_uri(ConfigurationSetName), "/delivery-options"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Enable or disable collection of reputation metrics for emails that
%% you send using a
%% particular configuration set in a specific AWS Region.
-spec put_configuration_set_reputation_options(aws_client:aws_client(), binary() | list(), put_configuration_set_reputation_options_request()) ->
    {ok, put_configuration_set_reputation_options_response(), tuple()} |
    {error, any()} |
    {error, put_configuration_set_reputation_options_errors(), tuple()}.
put_configuration_set_reputation_options(Client, ConfigurationSetName, Input) ->
    put_configuration_set_reputation_options(Client, ConfigurationSetName, Input, []).

-spec put_configuration_set_reputation_options(aws_client:aws_client(), binary() | list(), put_configuration_set_reputation_options_request(), proplists:proplist()) ->
    {ok, put_configuration_set_reputation_options_response(), tuple()} |
    {error, any()} |
    {error, put_configuration_set_reputation_options_errors(), tuple()}.
put_configuration_set_reputation_options(Client, ConfigurationSetName, Input0, Options0) ->
    Method = put,
    Path = ["/v1/email/configuration-sets/", aws_util:encode_uri(ConfigurationSetName), "/reputation-options"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Enable or disable email sending for messages that use a particular
%% configuration set
%% in a specific AWS Region.
-spec put_configuration_set_sending_options(aws_client:aws_client(), binary() | list(), put_configuration_set_sending_options_request()) ->
    {ok, put_configuration_set_sending_options_response(), tuple()} |
    {error, any()} |
    {error, put_configuration_set_sending_options_errors(), tuple()}.
put_configuration_set_sending_options(Client, ConfigurationSetName, Input) ->
    put_configuration_set_sending_options(Client, ConfigurationSetName, Input, []).

-spec put_configuration_set_sending_options(aws_client:aws_client(), binary() | list(), put_configuration_set_sending_options_request(), proplists:proplist()) ->
    {ok, put_configuration_set_sending_options_response(), tuple()} |
    {error, any()} |
    {error, put_configuration_set_sending_options_errors(), tuple()}.
put_configuration_set_sending_options(Client, ConfigurationSetName, Input0, Options0) ->
    Method = put,
    Path = ["/v1/email/configuration-sets/", aws_util:encode_uri(ConfigurationSetName), "/sending"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Specify a custom domain to use for open and click tracking elements
%% in email that you
%% send using Amazon Pinpoint.
-spec put_configuration_set_tracking_options(aws_client:aws_client(), binary() | list(), put_configuration_set_tracking_options_request()) ->
    {ok, put_configuration_set_tracking_options_response(), tuple()} |
    {error, any()} |
    {error, put_configuration_set_tracking_options_errors(), tuple()}.
put_configuration_set_tracking_options(Client, ConfigurationSetName, Input) ->
    put_configuration_set_tracking_options(Client, ConfigurationSetName, Input, []).

-spec put_configuration_set_tracking_options(aws_client:aws_client(), binary() | list(), put_configuration_set_tracking_options_request(), proplists:proplist()) ->
    {ok, put_configuration_set_tracking_options_response(), tuple()} |
    {error, any()} |
    {error, put_configuration_set_tracking_options_errors(), tuple()}.
put_configuration_set_tracking_options(Client, ConfigurationSetName, Input0, Options0) ->
    Method = put,
    Path = ["/v1/email/configuration-sets/", aws_util:encode_uri(ConfigurationSetName), "/tracking-options"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

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
%% pool by
%% using the `CreateDedicatedIpPool' operation.
-spec put_dedicated_ip_in_pool(aws_client:aws_client(), binary() | list(), put_dedicated_ip_in_pool_request()) ->
    {ok, put_dedicated_ip_in_pool_response(), tuple()} |
    {error, any()} |
    {error, put_dedicated_ip_in_pool_errors(), tuple()}.
put_dedicated_ip_in_pool(Client, Ip, Input) ->
    put_dedicated_ip_in_pool(Client, Ip, Input, []).

-spec put_dedicated_ip_in_pool(aws_client:aws_client(), binary() | list(), put_dedicated_ip_in_pool_request(), proplists:proplist()) ->
    {ok, put_dedicated_ip_in_pool_response(), tuple()} |
    {error, any()} |
    {error, put_dedicated_ip_in_pool_errors(), tuple()}.
put_dedicated_ip_in_pool(Client, Ip, Input0, Options0) ->
    Method = put,
    Path = ["/v1/email/dedicated-ips/", aws_util:encode_uri(Ip), "/pool"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
-spec put_dedicated_ip_warmup_attributes(aws_client:aws_client(), binary() | list(), put_dedicated_ip_warmup_attributes_request()) ->
    {ok, put_dedicated_ip_warmup_attributes_response(), tuple()} |
    {error, any()} |
    {error, put_dedicated_ip_warmup_attributes_errors(), tuple()}.
put_dedicated_ip_warmup_attributes(Client, Ip, Input) ->
    put_dedicated_ip_warmup_attributes(Client, Ip, Input, []).

-spec put_dedicated_ip_warmup_attributes(aws_client:aws_client(), binary() | list(), put_dedicated_ip_warmup_attributes_request(), proplists:proplist()) ->
    {ok, put_dedicated_ip_warmup_attributes_response(), tuple()} |
    {error, any()} |
    {error, put_dedicated_ip_warmup_attributes_errors(), tuple()}.
put_dedicated_ip_warmup_attributes(Client, Ip, Input0, Options0) ->
    Method = put,
    Path = ["/v1/email/dedicated-ips/", aws_util:encode_uri(Ip), "/warmup"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

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
%% When you enable the
%% Deliverability dashboard, you gain access to reputation, deliverability,
%% and other metrics for
%% the domains that you use to send email using Amazon Pinpoint. You also
%% gain the ability to perform
%% predictive inbox placement tests.
%%
%% When you use the Deliverability dashboard, you pay a monthly subscription
%% charge, in addition
%% to any other fees that you accrue by using Amazon Pinpoint. For more
%% information about the
%% features and cost of a Deliverability dashboard subscription, see Amazon
%% Pinpoint Pricing: http://aws.amazon.com/pinpoint/pricing/.
-spec put_deliverability_dashboard_option(aws_client:aws_client(), put_deliverability_dashboard_option_request()) ->
    {ok, put_deliverability_dashboard_option_response(), tuple()} |
    {error, any()} |
    {error, put_deliverability_dashboard_option_errors(), tuple()}.
put_deliverability_dashboard_option(Client, Input) ->
    put_deliverability_dashboard_option(Client, Input, []).

-spec put_deliverability_dashboard_option(aws_client:aws_client(), put_deliverability_dashboard_option_request(), proplists:proplist()) ->
    {ok, put_deliverability_dashboard_option_response(), tuple()} |
    {error, any()} |
    {error, put_deliverability_dashboard_option_errors(), tuple()}.
put_deliverability_dashboard_option(Client, Input0, Options0) ->
    Method = put,
    Path = ["/v1/email/deliverability-dashboard"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Used to enable or disable DKIM authentication for an email identity.
-spec put_email_identity_dkim_attributes(aws_client:aws_client(), binary() | list(), put_email_identity_dkim_attributes_request()) ->
    {ok, put_email_identity_dkim_attributes_response(), tuple()} |
    {error, any()} |
    {error, put_email_identity_dkim_attributes_errors(), tuple()}.
put_email_identity_dkim_attributes(Client, EmailIdentity, Input) ->
    put_email_identity_dkim_attributes(Client, EmailIdentity, Input, []).

-spec put_email_identity_dkim_attributes(aws_client:aws_client(), binary() | list(), put_email_identity_dkim_attributes_request(), proplists:proplist()) ->
    {ok, put_email_identity_dkim_attributes_response(), tuple()} |
    {error, any()} |
    {error, put_email_identity_dkim_attributes_errors(), tuple()}.
put_email_identity_dkim_attributes(Client, EmailIdentity, Input0, Options0) ->
    Method = put,
    Path = ["/v1/email/identities/", aws_util:encode_uri(EmailIdentity), "/dkim"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Used to enable or disable feedback forwarding for an identity.
%%
%% This setting determines
%% what happens when an identity is used to send an email that results in a
%% bounce or
%% complaint event.
%%
%% When you enable feedback forwarding, Amazon Pinpoint sends you email
%% notifications when bounce
%% or complaint events occur. Amazon Pinpoint sends this notification to the
%% address that you
%% specified in the Return-Path header of the original email.
%%
%% When you disable feedback forwarding, Amazon Pinpoint sends notifications
%% through other
%% mechanisms, such as by notifying an Amazon SNS topic. You're required
%% to have a method of
%% tracking bounces and complaints. If you haven't set up another
%% mechanism for receiving
%% bounce or complaint notifications, Amazon Pinpoint sends an email
%% notification when these events
%% occur (even if this setting is disabled).
-spec put_email_identity_feedback_attributes(aws_client:aws_client(), binary() | list(), put_email_identity_feedback_attributes_request()) ->
    {ok, put_email_identity_feedback_attributes_response(), tuple()} |
    {error, any()} |
    {error, put_email_identity_feedback_attributes_errors(), tuple()}.
put_email_identity_feedback_attributes(Client, EmailIdentity, Input) ->
    put_email_identity_feedback_attributes(Client, EmailIdentity, Input, []).

-spec put_email_identity_feedback_attributes(aws_client:aws_client(), binary() | list(), put_email_identity_feedback_attributes_request(), proplists:proplist()) ->
    {ok, put_email_identity_feedback_attributes_response(), tuple()} |
    {error, any()} |
    {error, put_email_identity_feedback_attributes_errors(), tuple()}.
put_email_identity_feedback_attributes(Client, EmailIdentity, Input0, Options0) ->
    Method = put,
    Path = ["/v1/email/identities/", aws_util:encode_uri(EmailIdentity), "/feedback"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Used to enable or disable the custom Mail-From domain configuration
%% for an email
%% identity.
-spec put_email_identity_mail_from_attributes(aws_client:aws_client(), binary() | list(), put_email_identity_mail_from_attributes_request()) ->
    {ok, put_email_identity_mail_from_attributes_response(), tuple()} |
    {error, any()} |
    {error, put_email_identity_mail_from_attributes_errors(), tuple()}.
put_email_identity_mail_from_attributes(Client, EmailIdentity, Input) ->
    put_email_identity_mail_from_attributes(Client, EmailIdentity, Input, []).

-spec put_email_identity_mail_from_attributes(aws_client:aws_client(), binary() | list(), put_email_identity_mail_from_attributes_request(), proplists:proplist()) ->
    {ok, put_email_identity_mail_from_attributes_response(), tuple()} |
    {error, any()} |
    {error, put_email_identity_mail_from_attributes_errors(), tuple()}.
put_email_identity_mail_from_attributes(Client, EmailIdentity, Input0, Options0) ->
    Method = put,
    Path = ["/v1/email/identities/", aws_util:encode_uri(EmailIdentity), "/mail-from"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Sends an email message.
%%
%% You can use the Amazon Pinpoint Email API to send two types of
%% messages:
%%
%% Simple – A standard email message. When
%% you create this type of message, you specify the sender, the recipient,
%% and the
%% message body, and Amazon Pinpoint assembles the message for you.
%%
%% Raw – A raw, MIME-formatted email
%% message. When you send this type of email, you have to specify all of the
%% message headers, as well as the message body. You can use this message
%% type to
%% send messages that contain attachments. The message that you specify has
%% to be a
%% valid MIME message.
-spec send_email(aws_client:aws_client(), send_email_request()) ->
    {ok, send_email_response(), tuple()} |
    {error, any()} |
    {error, send_email_errors(), tuple()}.
send_email(Client, Input) ->
    send_email(Client, Input, []).

-spec send_email(aws_client:aws_client(), send_email_request(), proplists:proplist()) ->
    {ok, send_email_response(), tuple()} |
    {error, any()} |
    {error, send_email_errors(), tuple()}.
send_email(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/email/outbound-emails"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Add one or more tags (keys and values) to a specified resource.
%%
%% A
%% tag is a label that you optionally define and associate with a
%% resource in Amazon Pinpoint. Tags can help you categorize and manage
%% resources in different ways,
%% such as by purpose, owner, environment, or other criteria. A resource can
%% have as many
%% as 50 tags.
%%
%% Each tag consists of a required tag key and an
%% associated tag value, both of which you define. A tag key is a
%% general label that acts as a category for more specific tag values. A tag
%% value acts as
%% a descriptor within a tag key.
-spec tag_resource(aws_client:aws_client(), tag_resource_request()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/email/tags"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Remove one or more tags (keys and values) from a specified resource.
-spec untag_resource(aws_client:aws_client(), untag_resource_request()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input) ->
    untag_resource(Client, Input, []).

-spec untag_resource(aws_client:aws_client(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/email/tags"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

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
%% clicks, bounces, and complaints. Event destinations are places that
%% you can send information about these events to. For example, you can send
%% event data to
%% Amazon SNS to receive notifications when you receive bounces or
%% complaints, or you can use
%% Amazon Kinesis Data Firehose to stream data to Amazon S3 for long-term
%% storage.
-spec update_configuration_set_event_destination(aws_client:aws_client(), binary() | list(), binary() | list(), update_configuration_set_event_destination_request()) ->
    {ok, update_configuration_set_event_destination_response(), tuple()} |
    {error, any()} |
    {error, update_configuration_set_event_destination_errors(), tuple()}.
update_configuration_set_event_destination(Client, ConfigurationSetName, EventDestinationName, Input) ->
    update_configuration_set_event_destination(Client, ConfigurationSetName, EventDestinationName, Input, []).

-spec update_configuration_set_event_destination(aws_client:aws_client(), binary() | list(), binary() | list(), update_configuration_set_event_destination_request(), proplists:proplist()) ->
    {ok, update_configuration_set_event_destination_response(), tuple()} |
    {error, any()} |
    {error, update_configuration_set_event_destination_errors(), tuple()}.
update_configuration_set_event_destination(Client, ConfigurationSetName, EventDestinationName, Input0, Options0) ->
    Method = put,
    Path = ["/v1/email/configuration-sets/", aws_util:encode_uri(ConfigurationSetName), "/event-destinations/", aws_util:encode_uri(EventDestinationName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

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

-spec proplists_take(any(), proplists:proplist(), any()) -> {any(), proplists:proplist()}.
proplists_take(Key, Proplist, Default) ->
  Value = proplists:get_value(Key, Proplist, Default),
  {Value, proplists:delete(Key, Proplist)}.

-spec request(aws_client:aws_client(), atom(), iolist(), list(),
              list(), map() | undefined, list(), pos_integer() | undefined) ->
    {ok, {integer(), list()}} |
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map(),
    Error :: map().
request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
  RequestFun = fun() -> do_request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) end,
  aws_request:request(RequestFun, Options).

do_request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
    Client1 = Client#{service => <<"ses">>},
    Host = build_host(<<"email">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders1 = [ {<<"Host">>, Host}
                         , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                         ],
    Payload =
      case proplists:get_value(send_body_as_binary, Options) of
        true ->
          maps:get(<<"Body">>, Input, <<"">>);
        false ->
          encode_payload(Input)
      end,
    AdditionalHeaders = case proplists:get_value(append_sha256_content_hash, Options, false) of
                          true ->
                            add_checksum_hash_header(AdditionalHeaders1, Payload);
                          false ->
                            AdditionalHeaders1
                        end,
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),

    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    DecodeBody = not proplists:get_value(receive_body_as_binary, Options),
    handle_response(Response, SuccessStatusCode, DecodeBody).

add_checksum_hash_header(Headers, Body) ->
  [ {<<"X-Amz-CheckSum-SHA256">>, base64:encode(crypto:hash(sha256, Body))}
  | Headers
  ].

handle_response({ok, StatusCode, ResponseHeaders}, SuccessStatusCode, _DecodeBody)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= 206;
       StatusCode =:= SuccessStatusCode ->
    {ok, {StatusCode, ResponseHeaders}};
handle_response({ok, StatusCode, ResponseHeaders}, _, _DecodeBody) ->
    {error, {StatusCode, ResponseHeaders}};
handle_response({ok, StatusCode, ResponseHeaders, Client}, SuccessStatusCode, DecodeBody)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= 206;
       StatusCode =:= SuccessStatusCode ->
    case hackney:body(Client) of
        {ok, <<>>} when StatusCode =:= 200;
                        StatusCode =:= SuccessStatusCode ->
            {ok, #{}, {StatusCode, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = case DecodeBody of
                       true ->
                         try
                           jsx:decode(Body)
                         catch
                           Error:Reason:Stack ->
                             erlang:raise(error, {body_decode_failed, Error, Reason, StatusCode, Body}, Stack)
                         end;
                       false -> #{<<"Body">> => Body}
                     end,
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, _ResponseHeaders, _Client}, _, _DecodeBody)
  when StatusCode =:= 503 ->
  %% Retriable error if retries are enabled
  {error, service_unavailable};
handle_response({ok, StatusCode, ResponseHeaders, Client}, _, _DecodeBody) ->
    {ok, Body} = hackney:body(Client),
    try
      DecodedError = jsx:decode(Body),
      {error, DecodedError, {StatusCode, ResponseHeaders, Client}}
    catch
      Error:Reason:Stack ->
        erlang:raise(error, {body_decode_failed, Error, Reason, StatusCode, Body}, Stack)
    end;
handle_response({error, Reason}, _, _DecodeBody) ->
  {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Path0, Client) ->
    Proto = aws_client:proto(Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = aws_client:port(Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  jsx:encode(Input).
