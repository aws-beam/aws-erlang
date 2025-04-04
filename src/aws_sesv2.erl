%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon SES API v2
%%
%% Amazon SES: http://aws.amazon.com/ses is an Amazon Web Services service
%% that
%% you can use to send email messages to your customers.
%%
%% If you're new to Amazon SES API v2, you might find it helpful to
%% review the Amazon Simple Email Service Developer
%% Guide: https://docs.aws.amazon.com/ses/latest/DeveloperGuide/. The Amazon
%% SES Developer Guide provides information
%% and code samples that demonstrate how to use Amazon SES API v2 features
%% programmatically.
-module(aws_sesv2).

-export([batch_get_metric_data/2,
         batch_get_metric_data/3,
         cancel_export_job/3,
         cancel_export_job/4,
         create_configuration_set/2,
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
         create_export_job/2,
         create_export_job/3,
         create_import_job/2,
         create_import_job/3,
         create_multi_region_endpoint/2,
         create_multi_region_endpoint/3,
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
         delete_multi_region_endpoint/3,
         delete_multi_region_endpoint/4,
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
         get_dedicated_ip_pool/2,
         get_dedicated_ip_pool/4,
         get_dedicated_ip_pool/5,
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
         get_export_job/2,
         get_export_job/4,
         get_export_job/5,
         get_import_job/2,
         get_import_job/4,
         get_import_job/5,
         get_message_insights/2,
         get_message_insights/4,
         get_message_insights/5,
         get_multi_region_endpoint/2,
         get_multi_region_endpoint/4,
         get_multi_region_endpoint/5,
         get_suppressed_destination/2,
         get_suppressed_destination/4,
         get_suppressed_destination/5,
         list_configuration_sets/1,
         list_configuration_sets/3,
         list_configuration_sets/4,
         list_contact_lists/1,
         list_contact_lists/3,
         list_contact_lists/4,
         list_contacts/3,
         list_contacts/4,
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
         list_export_jobs/2,
         list_export_jobs/3,
         list_import_jobs/2,
         list_import_jobs/3,
         list_multi_region_endpoints/1,
         list_multi_region_endpoints/3,
         list_multi_region_endpoints/4,
         list_recommendations/2,
         list_recommendations/3,
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
         put_account_vdm_attributes/2,
         put_account_vdm_attributes/3,
         put_configuration_set_archiving_options/3,
         put_configuration_set_archiving_options/4,
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
         put_configuration_set_vdm_options/3,
         put_configuration_set_vdm_options/4,
         put_dedicated_ip_in_pool/3,
         put_dedicated_ip_in_pool/4,
         put_dedicated_ip_pool_scaling_attributes/3,
         put_dedicated_ip_pool_scaling_attributes/4,
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


%% Example:
%% create_custom_verification_email_template_response() :: #{}
-type create_custom_verification_email_template_response() :: #{}.

%% Example:
%% delete_multi_region_endpoint_request() :: #{}
-type delete_multi_region_endpoint_request() :: #{}.

%% Example:
%% put_configuration_set_tracking_options_response() :: #{}
-type put_configuration_set_tracking_options_response() :: #{}.


%% Example:
%% tracking_options() :: #{
%%   <<"CustomRedirectDomain">> => string(),
%%   <<"HttpsPolicy">> => list(any())
%% }
-type tracking_options() :: #{binary() => any()}.


%% Example:
%% create_import_job_response() :: #{
%%   <<"JobId">> => string()
%% }
-type create_import_job_response() :: #{binary() => any()}.


%% Example:
%% get_email_identity_response() :: #{
%%   <<"ConfigurationSetName">> => string(),
%%   <<"DkimAttributes">> => dkim_attributes(),
%%   <<"FeedbackForwardingStatus">> => boolean(),
%%   <<"IdentityType">> => list(any()),
%%   <<"MailFromAttributes">> => mail_from_attributes(),
%%   <<"Policies">> => map(),
%%   <<"Tags">> => list(tag()()),
%%   <<"VerificationInfo">> => verification_info(),
%%   <<"VerificationStatus">> => list(any()),
%%   <<"VerifiedForSendingStatus">> => boolean()
%% }
-type get_email_identity_response() :: #{binary() => any()}.


%% Example:
%% dkim_signing_attributes() :: #{
%%   <<"DomainSigningAttributesOrigin">> => list(any()),
%%   <<"DomainSigningPrivateKey">> => string(),
%%   <<"DomainSigningSelector">> => string(),
%%   <<"NextSigningKeyLength">> => list(any())
%% }
-type dkim_signing_attributes() :: #{binary() => any()}.


%% Example:
%% dashboard_options() :: #{
%%   <<"EngagementMetrics">> => list(any())
%% }
-type dashboard_options() :: #{binary() => any()}.

%% Example:
%% put_email_identity_dkim_attributes_response() :: #{}
-type put_email_identity_dkim_attributes_response() :: #{}.

%% Example:
%% delete_configuration_set_response() :: #{}
-type delete_configuration_set_response() :: #{}.

%% Example:
%% put_account_suppression_attributes_response() :: #{}
-type put_account_suppression_attributes_response() :: #{}.

%% Example:
%% update_email_identity_policy_response() :: #{}
-type update_email_identity_policy_response() :: #{}.


%% Example:
%% put_configuration_set_archiving_options_request() :: #{
%%   <<"ArchiveArn">> => string()
%% }
-type put_configuration_set_archiving_options_request() :: #{binary() => any()}.


%% Example:
%% list_deliverability_test_reports_request() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PageSize">> => integer()
%% }
-type list_deliverability_test_reports_request() :: #{binary() => any()}.

%% Example:
%% get_suppressed_destination_request() :: #{}
-type get_suppressed_destination_request() :: #{}.


%% Example:
%% list_export_jobs_request() :: #{
%%   <<"ExportSourceType">> => list(any()),
%%   <<"JobStatus">> => list(any()),
%%   <<"NextToken">> => string(),
%%   <<"PageSize">> => integer()
%% }
-type list_export_jobs_request() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"Tags">> := list(tag()())
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% create_import_job_request() :: #{
%%   <<"ImportDataSource">> := import_data_source(),
%%   <<"ImportDestination">> := import_destination()
%% }
-type create_import_job_request() :: #{binary() => any()}.


%% Example:
%% suppression_attributes() :: #{
%%   <<"SuppressedReasons">> => list(list(any())())
%% }
-type suppression_attributes() :: #{binary() => any()}.


%% Example:
%% put_account_sending_attributes_request() :: #{
%%   <<"SendingEnabled">> => boolean()
%% }
-type put_account_sending_attributes_request() :: #{binary() => any()}.


%% Example:
%% get_account_response() :: #{
%%   <<"DedicatedIpAutoWarmupEnabled">> => boolean(),
%%   <<"Details">> => account_details(),
%%   <<"EnforcementStatus">> => string(),
%%   <<"ProductionAccessEnabled">> => boolean(),
%%   <<"SendQuota">> => send_quota(),
%%   <<"SendingEnabled">> => boolean(),
%%   <<"SuppressionAttributes">> => suppression_attributes(),
%%   <<"VdmAttributes">> => vdm_attributes()
%% }
-type get_account_response() :: #{binary() => any()}.

%% Example:
%% delete_contact_request() :: #{}
-type delete_contact_request() :: #{}.

%% Example:
%% get_deliverability_test_report_request() :: #{}
-type get_deliverability_test_report_request() :: #{}.


%% Example:
%% get_contact_list_response() :: #{
%%   <<"ContactListName">> => string(),
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"LastUpdatedTimestamp">> => non_neg_integer(),
%%   <<"Tags">> => list(tag()()),
%%   <<"Topics">> => list(topic()())
%% }
-type get_contact_list_response() :: #{binary() => any()}.


%% Example:
%% volume_statistics() :: #{
%%   <<"InboxRawCount">> => float(),
%%   <<"ProjectedInbox">> => float(),
%%   <<"ProjectedSpam">> => float(),
%%   <<"SpamRawCount">> => float()
%% }
-type volume_statistics() :: #{binary() => any()}.

%% Example:
%% delete_contact_list_response() :: #{}
-type delete_contact_list_response() :: #{}.


%% Example:
%% list_email_identities_response() :: #{
%%   <<"EmailIdentities">> => list(identity_info()()),
%%   <<"NextToken">> => string()
%% }
-type list_email_identities_response() :: #{binary() => any()}.


%% Example:
%% update_email_template_request() :: #{
%%   <<"TemplateContent">> := email_template_content()
%% }
-type update_email_template_request() :: #{binary() => any()}.

%% Example:
%% create_dedicated_ip_pool_response() :: #{}
-type create_dedicated_ip_pool_response() :: #{}.

%% Example:
%% put_configuration_set_reputation_options_response() :: #{}
-type put_configuration_set_reputation_options_response() :: #{}.

%% Example:
%% cancel_export_job_response() :: #{}
-type cancel_export_job_response() :: #{}.


%% Example:
%% create_email_identity_policy_request() :: #{
%%   <<"Policy">> := string()
%% }
-type create_email_identity_policy_request() :: #{binary() => any()}.


%% Example:
%% list_contacts_filter() :: #{
%%   <<"FilteredStatus">> => list(any()),
%%   <<"TopicFilter">> => topic_filter()
%% }
-type list_contacts_filter() :: #{binary() => any()}.

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
%% event_details() :: #{
%%   <<"Bounce">> => bounce(),
%%   <<"Complaint">> => complaint()
%% }
-type event_details() :: #{binary() => any()}.


%% Example:
%% email_template_content() :: #{
%%   <<"Html">> => string(),
%%   <<"Subject">> => string(),
%%   <<"Text">> => string()
%% }
-type email_template_content() :: #{binary() => any()}.


%% Example:
%% list_contact_lists_request() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PageSize">> => integer()
%% }
-type list_contact_lists_request() :: #{binary() => any()}.


%% Example:
%% contact_list_destination() :: #{
%%   <<"ContactListImportAction">> => list(any()),
%%   <<"ContactListName">> => string()
%% }
-type contact_list_destination() :: #{binary() => any()}.


%% Example:
%% put_configuration_set_vdm_options_request() :: #{
%%   <<"VdmOptions">> => vdm_options()
%% }
-type put_configuration_set_vdm_options_request() :: #{binary() => any()}.


%% Example:
%% list_deliverability_test_reports_response() :: #{
%%   <<"DeliverabilityTestReports">> => list(deliverability_test_report()()),
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
%% vdm_options() :: #{
%%   <<"DashboardOptions">> => dashboard_options(),
%%   <<"GuardianOptions">> => guardian_options()
%% }
-type vdm_options() :: #{binary() => any()}.


%% Example:
%% already_exists_exception() :: #{
%%   <<"message">> => string()
%% }
-type already_exists_exception() :: #{binary() => any()}.

%% Example:
%% put_account_dedicated_ip_warmup_attributes_response() :: #{}
-type put_account_dedicated_ip_warmup_attributes_response() :: #{}.

%% Example:
%% update_contact_list_response() :: #{}
-type update_contact_list_response() :: #{}.


%% Example:
%% verification_info() :: #{
%%   <<"ErrorType">> => list(any()),
%%   <<"LastCheckedTimestamp">> => non_neg_integer(),
%%   <<"LastSuccessTimestamp">> => non_neg_integer(),
%%   <<"SOARecord">> => s_o_a_record()
%% }
-type verification_info() :: #{binary() => any()}.


%% Example:
%% create_export_job_response() :: #{
%%   <<"JobId">> => string()
%% }
-type create_export_job_response() :: #{binary() => any()}.


%% Example:
%% message_insights_data_source() :: #{
%%   <<"EndDate">> => non_neg_integer(),
%%   <<"Exclude">> => message_insights_filters(),
%%   <<"Include">> => message_insights_filters(),
%%   <<"MaxResults">> => integer(),
%%   <<"StartDate">> => non_neg_integer()
%% }
-type message_insights_data_source() :: #{binary() => any()}.


%% Example:
%% suppressed_destination_summary() :: #{
%%   <<"EmailAddress">> => string(),
%%   <<"LastUpdateTime">> => non_neg_integer(),
%%   <<"Reason">> => list(any())
%% }
-type suppressed_destination_summary() :: #{binary() => any()}.


%% Example:
%% route_details() :: #{
%%   <<"Region">> => string()
%% }
-type route_details() :: #{binary() => any()}.

%% Example:
%% delete_email_identity_policy_response() :: #{}
-type delete_email_identity_policy_response() :: #{}.


%% Example:
%% list_multi_region_endpoints_request() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PageSize">> => integer()
%% }
-type list_multi_region_endpoints_request() :: #{binary() => any()}.


%% Example:
%% send_quota() :: #{
%%   <<"Max24HourSend">> => float(),
%%   <<"MaxSendRate">> => float(),
%%   <<"SentLast24Hours">> => float()
%% }
-type send_quota() :: #{binary() => any()}.


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
%% dkim_attributes() :: #{
%%   <<"CurrentSigningKeyLength">> => list(any()),
%%   <<"LastKeyGenerationTimestamp">> => non_neg_integer(),
%%   <<"NextSigningKeyLength">> => list(any()),
%%   <<"SigningAttributesOrigin">> => list(any()),
%%   <<"SigningEnabled">> => boolean(),
%%   <<"Status">> => list(any()),
%%   <<"Tokens">> => list(string()())
%% }
-type dkim_attributes() :: #{binary() => any()}.


%% Example:
%% get_email_identity_policies_response() :: #{
%%   <<"Policies">> => map()
%% }
-type get_email_identity_policies_response() :: #{binary() => any()}.


%% Example:
%% put_dedicated_ip_pool_scaling_attributes_request() :: #{
%%   <<"ScalingMode">> := list(any())
%% }
-type put_dedicated_ip_pool_scaling_attributes_request() :: #{binary() => any()}.


%% Example:
%% create_email_identity_response() :: #{
%%   <<"DkimAttributes">> => dkim_attributes(),
%%   <<"IdentityType">> => list(any()),
%%   <<"VerifiedForSendingStatus">> => boolean()
%% }
-type create_email_identity_response() :: #{binary() => any()}.


%% Example:
%% list_email_templates_request() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PageSize">> => integer()
%% }
-type list_email_templates_request() :: #{binary() => any()}.


%% Example:
%% test_render_email_template_request() :: #{
%%   <<"TemplateData">> := string()
%% }
-type test_render_email_template_request() :: #{binary() => any()}.


%% Example:
%% sending_paused_exception() :: #{
%%   <<"message">> => string()
%% }
-type sending_paused_exception() :: #{binary() => any()}.


%% Example:
%% put_deliverability_dashboard_option_request() :: #{
%%   <<"DashboardEnabled">> := boolean(),
%%   <<"SubscribedDomains">> => list(domain_deliverability_tracking_option()())
%% }
-type put_deliverability_dashboard_option_request() :: #{binary() => any()}.


%% Example:
%% attachment() :: #{
%%   <<"ContentDescription">> => string(),
%%   <<"ContentDisposition">> => list(any()),
%%   <<"ContentId">> => string(),
%%   <<"ContentTransferEncoding">> => list(any()),
%%   <<"ContentType">> => string(),
%%   <<"FileName">> => string(),
%%   <<"RawContent">> => binary()
%% }
-type attachment() :: #{binary() => any()}.


%% Example:
%% put_account_details_request() :: #{
%%   <<"AdditionalContactEmailAddresses">> => list(string()()),
%%   <<"ContactLanguage">> => list(any()),
%%   <<"MailType">> := list(any()),
%%   <<"ProductionAccessEnabled">> => boolean(),
%%   <<"UseCaseDescription">> => string(),
%%   <<"WebsiteURL">> := string()
%% }
-type put_account_details_request() :: #{binary() => any()}.


%% Example:
%% send_bulk_email_response() :: #{
%%   <<"BulkEmailEntryResults">> => list(bulk_email_entry_result()())
%% }
-type send_bulk_email_response() :: #{binary() => any()}.

%% Example:
%% get_custom_verification_email_template_request() :: #{}
-type get_custom_verification_email_template_request() :: #{}.

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
%%   <<"ActiveSubscribedDomains">> => list(domain_deliverability_tracking_option()()),
%%   <<"DashboardEnabled">> => boolean(),
%%   <<"PendingExpirationSubscribedDomains">> => list(domain_deliverability_tracking_option()()),
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
%% list_multi_region_endpoints_response() :: #{
%%   <<"MultiRegionEndpoints">> => list(multi_region_endpoint()()),
%%   <<"NextToken">> => string()
%% }
-type list_multi_region_endpoints_response() :: #{binary() => any()}.

%% Example:
%% put_account_vdm_attributes_response() :: #{}
-type put_account_vdm_attributes_response() :: #{}.

%% Example:
%% delete_email_identity_request() :: #{}
-type delete_email_identity_request() :: #{}.


%% Example:
%% s_o_a_record() :: #{
%%   <<"AdminEmail">> => string(),
%%   <<"PrimaryNameServer">> => string(),
%%   <<"SerialNumber">> => float()
%% }
-type s_o_a_record() :: #{binary() => any()}.


%% Example:
%% internal_service_error_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_service_error_exception() :: #{binary() => any()}.


%% Example:
%% cloud_watch_dimension_configuration() :: #{
%%   <<"DefaultDimensionValue">> => string(),
%%   <<"DimensionName">> => string(),
%%   <<"DimensionValueSource">> => list(any())
%% }
-type cloud_watch_dimension_configuration() :: #{binary() => any()}.

%% Example:
%% put_configuration_set_archiving_options_response() :: #{}
-type put_configuration_set_archiving_options_response() :: #{}.

%% Example:
%% delete_custom_verification_email_template_response() :: #{}
-type delete_custom_verification_email_template_response() :: #{}.


%% Example:
%% put_suppressed_destination_request() :: #{
%%   <<"EmailAddress">> := string(),
%%   <<"Reason">> := list(any())
%% }
-type put_suppressed_destination_request() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"TagKeys">> := list(string()())
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
%%   <<"EventBridgeDestination">> => event_bridge_destination(),
%%   <<"KinesisFirehoseDestination">> => kinesis_firehose_destination(),
%%   <<"MatchingEventTypes">> => list(list(any())()),
%%   <<"PinpointDestination">> => pinpoint_destination(),
%%   <<"SnsDestination">> => sns_destination()
%% }
-type event_destination_definition() :: #{binary() => any()}.


%% Example:
%% list_suppressed_destinations_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"SuppressedDestinationSummaries">> => list(suppressed_destination_summary()())
%% }
-type list_suppressed_destinations_response() :: #{binary() => any()}.


%% Example:
%% list_domain_deliverability_campaigns_response() :: #{
%%   <<"DomainDeliverabilityCampaigns">> => list(domain_deliverability_campaign()()),
%%   <<"NextToken">> => string()
%% }
-type list_domain_deliverability_campaigns_response() :: #{binary() => any()}.

%% Example:
%% delete_configuration_set_request() :: #{}
-type delete_configuration_set_request() :: #{}.


%% Example:
%% put_account_suppression_attributes_request() :: #{
%%   <<"SuppressedReasons">> => list(list(any())())
%% }
-type put_account_suppression_attributes_request() :: #{binary() => any()}.


%% Example:
%% send_email_response() :: #{
%%   <<"MessageId">> => string()
%% }
-type send_email_response() :: #{binary() => any()}.


%% Example:
%% list_suppressed_destinations_request() :: #{
%%   <<"EndDate">> => non_neg_integer(),
%%   <<"NextToken">> => string(),
%%   <<"PageSize">> => integer(),
%%   <<"Reasons">> => list(list(any())()),
%%   <<"StartDate">> => non_neg_integer()
%% }
-type list_suppressed_destinations_request() :: #{binary() => any()}.

%% Example:
%% delete_dedicated_ip_pool_request() :: #{}
-type delete_dedicated_ip_pool_request() :: #{}.

%% Example:
%% delete_email_template_request() :: #{}
-type delete_email_template_request() :: #{}.


%% Example:
%% cloud_watch_destination() :: #{
%%   <<"DimensionConfigurations">> => list(cloud_watch_dimension_configuration()())
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
%% put_configuration_set_suppression_options_request() :: #{
%%   <<"SuppressedReasons">> => list(list(any())())
%% }
-type put_configuration_set_suppression_options_request() :: #{binary() => any()}.


%% Example:
%% mail_from_domain_not_verified_exception() :: #{
%%   <<"message">> => string()
%% }
-type mail_from_domain_not_verified_exception() :: #{binary() => any()}.


%% Example:
%% overall_volume() :: #{
%%   <<"DomainIspPlacements">> => list(domain_isp_placement()()),
%%   <<"ReadRatePercent">> => float(),
%%   <<"VolumeStatistics">> => volume_statistics()
%% }
-type overall_volume() :: #{binary() => any()}.

%% Example:
%% get_dedicated_ip_pool_request() :: #{}
-type get_dedicated_ip_pool_request() :: #{}.


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
%% create_email_template_request() :: #{
%%   <<"TemplateContent">> := email_template_content(),
%%   <<"TemplateName">> := string()
%% }
-type create_email_template_request() :: #{binary() => any()}.

%% Example:
%% create_contact_response() :: #{}
-type create_contact_response() :: #{}.


%% Example:
%% dedicated_ip() :: #{
%%   <<"Ip">> => string(),
%%   <<"PoolName">> => string(),
%%   <<"WarmupPercentage">> => integer(),
%%   <<"WarmupStatus">> => list(any())
%% }
-type dedicated_ip() :: #{binary() => any()}.

%% Example:
%% create_email_identity_policy_response() :: #{}
-type create_email_identity_policy_response() :: #{}.


%% Example:
%% email_insights() :: #{
%%   <<"Destination">> => string(),
%%   <<"Events">> => list(insights_event()()),
%%   <<"Isp">> => string()
%% }
-type email_insights() :: #{binary() => any()}.


%% Example:
%% get_blacklist_reports_request() :: #{
%%   <<"BlacklistItemNames">> := list(string()())
%% }
-type get_blacklist_reports_request() :: #{binary() => any()}.

%% Example:
%% put_email_identity_configuration_set_attributes_response() :: #{}
-type put_email_identity_configuration_set_attributes_response() :: #{}.


%% Example:
%% message_insights_filters() :: #{
%%   <<"Destination">> => list(string()()),
%%   <<"FromEmailAddress">> => list(string()()),
%%   <<"Isp">> => list(string()()),
%%   <<"LastDeliveryEvent">> => list(list(any())()),
%%   <<"LastEngagementEvent">> => list(list(any())()),
%%   <<"Subject">> => list(string()())
%% }
-type message_insights_filters() :: #{binary() => any()}.


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
%% list_custom_verification_email_templates_request() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PageSize">> => integer()
%% }
-type list_custom_verification_email_templates_request() :: #{binary() => any()}.


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
%% list_import_jobs_request() :: #{
%%   <<"ImportDestinationType">> => list(any()),
%%   <<"NextToken">> => string(),
%%   <<"PageSize">> => integer()
%% }
-type list_import_jobs_request() :: #{binary() => any()}.

%% Example:
%% delete_suppressed_destination_response() :: #{}
-type delete_suppressed_destination_response() :: #{}.


%% Example:
%% create_email_identity_request() :: #{
%%   <<"ConfigurationSetName">> => string(),
%%   <<"DkimSigningAttributes">> => dkim_signing_attributes(),
%%   <<"EmailIdentity">> := string(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_email_identity_request() :: #{binary() => any()}.


%% Example:
%% inbox_placement_tracking_option() :: #{
%%   <<"Global">> => boolean(),
%%   <<"TrackedIsps">> => list(string()())
%% }
-type inbox_placement_tracking_option() :: #{binary() => any()}.

%% Example:
%% put_configuration_set_suppression_options_response() :: #{}
-type put_configuration_set_suppression_options_response() :: #{}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.

%% Example:
%% get_export_job_request() :: #{}
-type get_export_job_request() :: #{}.


%% Example:
%% message_header() :: #{
%%   <<"Name">> => string(),
%%   <<"Value">> => string()
%% }
-type message_header() :: #{binary() => any()}.


%% Example:
%% batch_get_metric_data_query() :: #{
%%   <<"Dimensions">> => map(),
%%   <<"EndDate">> => non_neg_integer(),
%%   <<"Id">> => string(),
%%   <<"Metric">> => list(any()),
%%   <<"Namespace">> => list(any()),
%%   <<"StartDate">> => non_neg_integer()
%% }
-type batch_get_metric_data_query() :: #{binary() => any()}.

%% Example:
%% get_message_insights_request() :: #{}
-type get_message_insights_request() :: #{}.

%% Example:
%% delete_suppressed_destination_request() :: #{}
-type delete_suppressed_destination_request() :: #{}.


%% Example:
%% export_data_source() :: #{
%%   <<"MessageInsightsDataSource">> => message_insights_data_source(),
%%   <<"MetricsDataSource">> => metrics_data_source()
%% }
-type export_data_source() :: #{binary() => any()}.


%% Example:
%% metric_data_error() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Id">> => string(),
%%   <<"Message">> => string()
%% }
-type metric_data_error() :: #{binary() => any()}.


%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.


%% Example:
%% get_export_job_response() :: #{
%%   <<"CompletedTimestamp">> => non_neg_integer(),
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"ExportDataSource">> => export_data_source(),
%%   <<"ExportDestination">> => export_destination(),
%%   <<"ExportSourceType">> => list(any()),
%%   <<"FailureInfo">> => failure_info(),
%%   <<"JobId">> => string(),
%%   <<"JobStatus">> => list(any()),
%%   <<"Statistics">> => export_statistics()
%% }
-type get_export_job_response() :: #{binary() => any()}.


%% Example:
%% event_destination() :: #{
%%   <<"CloudWatchDestination">> => cloud_watch_destination(),
%%   <<"Enabled">> => boolean(),
%%   <<"EventBridgeDestination">> => event_bridge_destination(),
%%   <<"KinesisFirehoseDestination">> => kinesis_firehose_destination(),
%%   <<"MatchingEventTypes">> => list(list(any())()),
%%   <<"Name">> => string(),
%%   <<"PinpointDestination">> => pinpoint_destination(),
%%   <<"SnsDestination">> => sns_destination()
%% }
-type event_destination() :: #{binary() => any()}.

%% Example:
%% update_contact_response() :: #{}
-type update_contact_response() :: #{}.


%% Example:
%% guardian_attributes() :: #{
%%   <<"OptimizedSharedDelivery">> => list(any())
%% }
-type guardian_attributes() :: #{binary() => any()}.


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
%% suppression_list_destination() :: #{
%%   <<"SuppressionListImportAction">> => list(any())
%% }
-type suppression_list_destination() :: #{binary() => any()}.

%% Example:
%% get_configuration_set_event_destinations_request() :: #{}
-type get_configuration_set_event_destinations_request() :: #{}.


%% Example:
%% multi_region_endpoint() :: #{
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"EndpointId">> => string(),
%%   <<"EndpointName">> => string(),
%%   <<"LastUpdatedTimestamp">> => non_neg_integer(),
%%   <<"Regions">> => list(string()()),
%%   <<"Status">> => list(any())
%% }
-type multi_region_endpoint() :: #{binary() => any()}.

%% Example:
%% put_configuration_set_vdm_options_response() :: #{}
-type put_configuration_set_vdm_options_response() :: #{}.


%% Example:
%% get_domain_statistics_report_request() :: #{
%%   <<"EndDate">> := non_neg_integer(),
%%   <<"StartDate">> := non_neg_integer()
%% }
-type get_domain_statistics_report_request() :: #{binary() => any()}.


%% Example:
%% recommendation() :: #{
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"Impact">> => list(any()),
%%   <<"LastUpdatedTimestamp">> => non_neg_integer(),
%%   <<"ResourceArn">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Type">> => list(any())
%% }
-type recommendation() :: #{binary() => any()}.


%% Example:
%% details() :: #{
%%   <<"RoutesDetails">> => list(route_details()())
%% }
-type details() :: #{binary() => any()}.


%% Example:
%% put_account_dedicated_ip_warmup_attributes_request() :: #{
%%   <<"AutoWarmupEnabled">> => boolean()
%% }
-type put_account_dedicated_ip_warmup_attributes_request() :: #{binary() => any()}.

%% Example:
%% get_import_job_request() :: #{}
-type get_import_job_request() :: #{}.

%% Example:
%% put_dedicated_ip_in_pool_response() :: #{}
-type put_dedicated_ip_in_pool_response() :: #{}.


%% Example:
%% invalid_next_token_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_next_token_exception() :: #{binary() => any()}.


%% Example:
%% topic() :: #{
%%   <<"DefaultSubscriptionStatus">> => list(any()),
%%   <<"Description">> => string(),
%%   <<"DisplayName">> => string(),
%%   <<"TopicName">> => string()
%% }
-type topic() :: #{binary() => any()}.

%% Example:
%% delete_email_template_response() :: #{}
-type delete_email_template_response() :: #{}.


%% Example:
%% account_details() :: #{
%%   <<"AdditionalContactEmailAddresses">> => list(string()()),
%%   <<"ContactLanguage">> => list(any()),
%%   <<"MailType">> => list(any()),
%%   <<"ReviewDetails">> => review_details(),
%%   <<"UseCaseDescription">> => string(),
%%   <<"WebsiteURL">> => string()
%% }
-type account_details() :: #{binary() => any()}.


%% Example:
%% not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type not_found_exception() :: #{binary() => any()}.


%% Example:
%% send_custom_verification_email_response() :: #{
%%   <<"MessageId">> => string()
%% }
-type send_custom_verification_email_response() :: #{binary() => any()}.


%% Example:
%% route() :: #{
%%   <<"Region">> => string()
%% }
-type route() :: #{binary() => any()}.


%% Example:
%% get_multi_region_endpoint_response() :: #{
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"EndpointId">> => string(),
%%   <<"EndpointName">> => string(),
%%   <<"LastUpdatedTimestamp">> => non_neg_integer(),
%%   <<"Routes">> => list(route()()),
%%   <<"Status">> => list(any())
%% }
-type get_multi_region_endpoint_response() :: #{binary() => any()}.


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
%%   <<"SendingEnabled">> => boolean(),
%%   <<"VerificationStatus">> => list(any())
%% }
-type identity_info() :: #{binary() => any()}.


%% Example:
%% metrics_data_source() :: #{
%%   <<"Dimensions">> => map(),
%%   <<"EndDate">> => non_neg_integer(),
%%   <<"Metrics">> => list(export_metric()()),
%%   <<"Namespace">> => list(any()),
%%   <<"StartDate">> => non_neg_integer()
%% }
-type metrics_data_source() :: #{binary() => any()}.


%% Example:
%% list_management_options() :: #{
%%   <<"ContactListName">> => string(),
%%   <<"TopicName">> => string()
%% }
-type list_management_options() :: #{binary() => any()}.


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
%% batch_get_metric_data_request() :: #{
%%   <<"Queries">> := list(batch_get_metric_data_query()())
%% }
-type batch_get_metric_data_request() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => list(tag()())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% list_configuration_sets_response() :: #{
%%   <<"ConfigurationSets">> => list(string()()),
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
%% update_custom_verification_email_template_request() :: #{
%%   <<"FailureRedirectionURL">> := string(),
%%   <<"FromEmailAddress">> := string(),
%%   <<"SuccessRedirectionURL">> := string(),
%%   <<"TemplateContent">> := string(),
%%   <<"TemplateSubject">> := string()
%% }
-type update_custom_verification_email_template_request() :: #{binary() => any()}.


%% Example:
%% get_configuration_set_event_destinations_response() :: #{
%%   <<"EventDestinations">> => list(event_destination()())
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
%% bounce() :: #{
%%   <<"BounceSubType">> => string(),
%%   <<"BounceType">> => list(any()),
%%   <<"DiagnosticCode">> => string()
%% }
-type bounce() :: #{binary() => any()}.


%% Example:
%% get_dedicated_ips_request() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PageSize">> => integer(),
%%   <<"PoolName">> => string()
%% }
-type get_dedicated_ips_request() :: #{binary() => any()}.


%% Example:
%% delete_multi_region_endpoint_response() :: #{
%%   <<"Status">> => list(any())
%% }
-type delete_multi_region_endpoint_response() :: #{binary() => any()}.


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
%% get_message_insights_response() :: #{
%%   <<"EmailTags">> => list(message_tag()()),
%%   <<"FromEmailAddress">> => string(),
%%   <<"Insights">> => list(email_insights()()),
%%   <<"MessageId">> => string(),
%%   <<"Subject">> => string()
%% }
-type get_message_insights_response() :: #{binary() => any()}.


%% Example:
%% list_custom_verification_email_templates_response() :: #{
%%   <<"CustomVerificationEmailTemplates">> => list(custom_verification_email_template_metadata()()),
%%   <<"NextToken">> => string()
%% }
-type list_custom_verification_email_templates_response() :: #{binary() => any()}.


%% Example:
%% put_email_identity_dkim_attributes_request() :: #{
%%   <<"SigningEnabled">> => boolean()
%% }
-type put_email_identity_dkim_attributes_request() :: #{binary() => any()}.

%% Example:
%% delete_custom_verification_email_template_request() :: #{}
-type delete_custom_verification_email_template_request() :: #{}.


%% Example:
%% dashboard_attributes() :: #{
%%   <<"EngagementMetrics">> => list(any())
%% }
-type dashboard_attributes() :: #{binary() => any()}.

%% Example:
%% put_configuration_set_sending_options_response() :: #{}
-type put_configuration_set_sending_options_response() :: #{}.


%% Example:
%% replacement_email_content() :: #{
%%   <<"ReplacementTemplate">> => replacement_template()
%% }
-type replacement_email_content() :: #{binary() => any()}.


%% Example:
%% create_contact_list_request() :: #{
%%   <<"ContactListName">> := string(),
%%   <<"Description">> => string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"Topics">> => list(topic()())
%% }
-type create_contact_list_request() :: #{binary() => any()}.


%% Example:
%% create_multi_region_endpoint_request() :: #{
%%   <<"Details">> := details(),
%%   <<"EndpointName">> := string(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_multi_region_endpoint_request() :: #{binary() => any()}.


%% Example:
%% contact() :: #{
%%   <<"EmailAddress">> => string(),
%%   <<"LastUpdatedTimestamp">> => non_neg_integer(),
%%   <<"TopicDefaultPreferences">> => list(topic_preference()()),
%%   <<"TopicPreferences">> => list(topic_preference()()),
%%   <<"UnsubscribeAll">> => boolean()
%% }
-type contact() :: #{binary() => any()}.


%% Example:
%% export_job_summary() :: #{
%%   <<"CompletedTimestamp">> => non_neg_integer(),
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"ExportSourceType">> => list(any()),
%%   <<"JobId">> => string(),
%%   <<"JobStatus">> => list(any())
%% }
-type export_job_summary() :: #{binary() => any()}.


%% Example:
%% get_suppressed_destination_response() :: #{
%%   <<"SuppressedDestination">> => suppressed_destination()
%% }
-type get_suppressed_destination_response() :: #{binary() => any()}.


%% Example:
%% vdm_attributes() :: #{
%%   <<"DashboardAttributes">> => dashboard_attributes(),
%%   <<"GuardianAttributes">> => guardian_attributes(),
%%   <<"VdmEnabled">> => list(any())
%% }
-type vdm_attributes() :: #{binary() => any()}.


%% Example:
%% export_statistics() :: #{
%%   <<"ExportedRecordsCount">> => integer(),
%%   <<"ProcessedRecordsCount">> => integer()
%% }
-type export_statistics() :: #{binary() => any()}.


%% Example:
%% send_bulk_email_request() :: #{
%%   <<"BulkEmailEntries">> := list(bulk_email_entry()()),
%%   <<"ConfigurationSetName">> => string(),
%%   <<"DefaultContent">> := bulk_email_content(),
%%   <<"DefaultEmailTags">> => list(message_tag()()),
%%   <<"EndpointId">> => string(),
%%   <<"FeedbackForwardingEmailAddress">> => string(),
%%   <<"FeedbackForwardingEmailAddressIdentityArn">> => string(),
%%   <<"FromEmailAddress">> => string(),
%%   <<"FromEmailAddressIdentityArn">> => string(),
%%   <<"ReplyToAddresses">> => list(string()())
%% }
-type send_bulk_email_request() :: #{binary() => any()}.

%% Example:
%% delete_dedicated_ip_pool_response() :: #{}
-type delete_dedicated_ip_pool_response() :: #{}.


%% Example:
%% suppressed_destination() :: #{
%%   <<"Attributes">> => suppressed_destination_attributes(),
%%   <<"EmailAddress">> => string(),
%%   <<"LastUpdateTime">> => non_neg_integer(),
%%   <<"Reason">> => list(any())
%% }
-type suppressed_destination() :: #{binary() => any()}.


%% Example:
%% insights_event() :: #{
%%   <<"Details">> => event_details(),
%%   <<"Timestamp">> => non_neg_integer(),
%%   <<"Type">> => list(any())
%% }
-type insights_event() :: #{binary() => any()}.


%% Example:
%% create_export_job_request() :: #{
%%   <<"ExportDataSource">> := export_data_source(),
%%   <<"ExportDestination">> := export_destination()
%% }
-type create_export_job_request() :: #{binary() => any()}.


%% Example:
%% put_configuration_set_tracking_options_request() :: #{
%%   <<"CustomRedirectDomain">> => string(),
%%   <<"HttpsPolicy">> => list(any())
%% }
-type put_configuration_set_tracking_options_request() :: #{binary() => any()}.


%% Example:
%% create_dedicated_ip_pool_request() :: #{
%%   <<"PoolName">> := string(),
%%   <<"ScalingMode">> => list(any()),
%%   <<"Tags">> => list(tag()())
%% }
-type create_dedicated_ip_pool_request() :: #{binary() => any()}.


%% Example:
%% event_bridge_destination() :: #{
%%   <<"EventBusArn">> => string()
%% }
-type event_bridge_destination() :: #{binary() => any()}.


%% Example:
%% send_custom_verification_email_request() :: #{
%%   <<"ConfigurationSetName">> => string(),
%%   <<"EmailAddress">> := string(),
%%   <<"TemplateName">> := string()
%% }
-type send_custom_verification_email_request() :: #{binary() => any()}.


%% Example:
%% get_dedicated_ip_response() :: #{
%%   <<"DedicatedIp">> => dedicated_ip()
%% }
-type get_dedicated_ip_response() :: #{binary() => any()}.


%% Example:
%% put_email_identity_dkim_signing_attributes_request() :: #{
%%   <<"SigningAttributes">> => dkim_signing_attributes(),
%%   <<"SigningAttributesOrigin">> := list(any())
%% }
-type put_email_identity_dkim_signing_attributes_request() :: #{binary() => any()}.


%% Example:
%% list_import_jobs_response() :: #{
%%   <<"ImportJobs">> => list(import_job_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_import_jobs_response() :: #{binary() => any()}.


%% Example:
%% batch_get_metric_data_response() :: #{
%%   <<"Errors">> => list(metric_data_error()()),
%%   <<"Results">> => list(metric_data_result()())
%% }
-type batch_get_metric_data_response() :: #{binary() => any()}.

%% Example:
%% update_custom_verification_email_template_response() :: #{}
-type update_custom_verification_email_template_response() :: #{}.

%% Example:
%% delete_configuration_set_event_destination_request() :: #{}
-type delete_configuration_set_event_destination_request() :: #{}.

%% Example:
%% put_dedicated_ip_pool_scaling_attributes_response() :: #{}
-type put_dedicated_ip_pool_scaling_attributes_response() :: #{}.

%% Example:
%% get_contact_request() :: #{}
-type get_contact_request() :: #{}.

%% Example:
%% create_configuration_set_event_destination_response() :: #{}
-type create_configuration_set_event_destination_response() :: #{}.


%% Example:
%% import_destination() :: #{
%%   <<"ContactListDestination">> => contact_list_destination(),
%%   <<"SuppressionListDestination">> => suppression_list_destination()
%% }
-type import_destination() :: #{binary() => any()}.


%% Example:
%% list_contacts_request() :: #{
%%   <<"Filter">> => list_contacts_filter(),
%%   <<"NextToken">> => string(),
%%   <<"PageSize">> => integer()
%% }
-type list_contacts_request() :: #{binary() => any()}.


%% Example:
%% bulk_email_content() :: #{
%%   <<"Template">> => template()
%% }
-type bulk_email_content() :: #{binary() => any()}.

%% Example:
%% delete_contact_response() :: #{}
-type delete_contact_response() :: #{}.


%% Example:
%% put_configuration_set_delivery_options_request() :: #{
%%   <<"MaxDeliverySeconds">> => float(),
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
%% dedicated_ip_pool() :: #{
%%   <<"PoolName">> => string(),
%%   <<"ScalingMode">> => list(any())
%% }
-type dedicated_ip_pool() :: #{binary() => any()}.

%% Example:
%% delete_email_identity_response() :: #{}
-type delete_email_identity_response() :: #{}.


%% Example:
%% get_import_job_response() :: #{
%%   <<"CompletedTimestamp">> => non_neg_integer(),
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"FailedRecordsCount">> => integer(),
%%   <<"FailureInfo">> => failure_info(),
%%   <<"ImportDataSource">> => import_data_source(),
%%   <<"ImportDestination">> => import_destination(),
%%   <<"JobId">> => string(),
%%   <<"JobStatus">> => list(any()),
%%   <<"ProcessedRecordsCount">> => integer()
%% }
-type get_import_job_response() :: #{binary() => any()}.


%% Example:
%% create_deliverability_test_report_request() :: #{
%%   <<"Content">> := email_content(),
%%   <<"FromEmailAddress">> := string(),
%%   <<"ReportName">> => string(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_deliverability_test_report_request() :: #{binary() => any()}.


%% Example:
%% topic_preference() :: #{
%%   <<"SubscriptionStatus">> => list(any()),
%%   <<"TopicName">> => string()
%% }
-type topic_preference() :: #{binary() => any()}.


%% Example:
%% list_contacts_response() :: #{
%%   <<"Contacts">> => list(contact()()),
%%   <<"NextToken">> => string()
%% }
-type list_contacts_response() :: #{binary() => any()}.

%% Example:
%% create_contact_list_response() :: #{}
-type create_contact_list_response() :: #{}.


%% Example:
%% archiving_options() :: #{
%%   <<"ArchiveArn">> => string()
%% }
-type archiving_options() :: #{binary() => any()}.


%% Example:
%% suppression_options() :: #{
%%   <<"SuppressedReasons">> => list(list(any())())
%% }
-type suppression_options() :: #{binary() => any()}.


%% Example:
%% daily_volume() :: #{
%%   <<"DomainIspPlacements">> => list(domain_isp_placement()()),
%%   <<"StartDate">> => non_neg_integer(),
%%   <<"VolumeStatistics">> => volume_statistics()
%% }
-type daily_volume() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% import_job_summary() :: #{
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"FailedRecordsCount">> => integer(),
%%   <<"ImportDestination">> => import_destination(),
%%   <<"JobId">> => string(),
%%   <<"JobStatus">> => list(any()),
%%   <<"ProcessedRecordsCount">> => integer()
%% }
-type import_job_summary() :: #{binary() => any()}.


%% Example:
%% create_multi_region_endpoint_response() :: #{
%%   <<"EndpointId">> => string(),
%%   <<"Status">> => list(any())
%% }
-type create_multi_region_endpoint_response() :: #{binary() => any()}.


%% Example:
%% sending_options() :: #{
%%   <<"SendingEnabled">> => boolean()
%% }
-type sending_options() :: #{binary() => any()}.

%% Example:
%% delete_email_identity_policy_request() :: #{}
-type delete_email_identity_policy_request() :: #{}.


%% Example:
%% concurrent_modification_exception() :: #{
%%   <<"message">> => string()
%% }
-type concurrent_modification_exception() :: #{binary() => any()}.


%% Example:
%% list_email_templates_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"TemplatesMetadata">> => list(email_template_metadata()())
%% }
-type list_email_templates_response() :: #{binary() => any()}.


%% Example:
%% get_blacklist_reports_response() :: #{
%%   <<"BlacklistReport">> => map()
%% }
-type get_blacklist_reports_response() :: #{binary() => any()}.


%% Example:
%% update_contact_request() :: #{
%%   <<"AttributesData">> => string(),
%%   <<"TopicPreferences">> => list(topic_preference()()),
%%   <<"UnsubscribeAll">> => boolean()
%% }
-type update_contact_request() :: #{binary() => any()}.


%% Example:
%% put_email_identity_dkim_signing_attributes_response() :: #{
%%   <<"DkimStatus">> => list(any()),
%%   <<"DkimTokens">> => list(string()())
%% }
-type put_email_identity_dkim_signing_attributes_response() :: #{binary() => any()}.

%% Example:
%% cancel_export_job_request() :: #{}
-type cancel_export_job_request() :: #{}.


%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"ResourceArn">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.


%% Example:
%% destination() :: #{
%%   <<"BccAddresses">> => list(string()()),
%%   <<"CcAddresses">> => list(string()()),
%%   <<"ToAddresses">> => list(string()())
%% }
-type destination() :: #{binary() => any()}.

%% Example:
%% get_multi_region_endpoint_request() :: #{}
-type get_multi_region_endpoint_request() :: #{}.


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
%%   <<"DailyVolumes">> => list(daily_volume()()),
%%   <<"OverallVolume">> => overall_volume()
%% }
-type get_domain_statistics_report_response() :: #{binary() => any()}.

%% Example:
%% put_account_sending_attributes_response() :: #{}
-type put_account_sending_attributes_response() :: #{}.

%% Example:
%% get_email_identity_policies_request() :: #{}
-type get_email_identity_policies_request() :: #{}.


%% Example:
%% message_rejected() :: #{
%%   <<"message">> => string()
%% }
-type message_rejected() :: #{binary() => any()}.


%% Example:
%% create_contact_request() :: #{
%%   <<"AttributesData">> => string(),
%%   <<"EmailAddress">> := string(),
%%   <<"TopicPreferences">> => list(topic_preference()()),
%%   <<"UnsubscribeAll">> => boolean()
%% }
-type create_contact_request() :: #{binary() => any()}.


%% Example:
%% contact_list() :: #{
%%   <<"ContactListName">> => string(),
%%   <<"LastUpdatedTimestamp">> => non_neg_integer()
%% }
-type contact_list() :: #{binary() => any()}.


%% Example:
%% guardian_options() :: #{
%%   <<"OptimizedSharedDelivery">> => list(any())
%% }
-type guardian_options() :: #{binary() => any()}.


%% Example:
%% list_dedicated_ip_pools_response() :: #{
%%   <<"DedicatedIpPools">> => list(string()()),
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
%% delete_contact_list_request() :: #{}
-type delete_contact_list_request() :: #{}.


%% Example:
%% put_configuration_set_sending_options_request() :: #{
%%   <<"SendingEnabled">> => boolean()
%% }
-type put_configuration_set_sending_options_request() :: #{binary() => any()}.


%% Example:
%% get_dedicated_ip_pool_response() :: #{
%%   <<"DedicatedIpPool">> => dedicated_ip_pool()
%% }
-type get_dedicated_ip_pool_response() :: #{binary() => any()}.


%% Example:
%% bulk_email_entry_result() :: #{
%%   <<"Error">> => string(),
%%   <<"MessageId">> => string(),
%%   <<"Status">> => list(any())
%% }
-type bulk_email_entry_result() :: #{binary() => any()}.


%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% delivery_options() :: #{
%%   <<"MaxDeliverySeconds">> => float(),
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
%% get_email_template_response() :: #{
%%   <<"TemplateContent">> => email_template_content(),
%%   <<"TemplateName">> => string()
%% }
-type get_email_template_response() :: #{binary() => any()}.


%% Example:
%% content() :: #{
%%   <<"Charset">> => string(),
%%   <<"Data">> => string()
%% }
-type content() :: #{binary() => any()}.


%% Example:
%% update_email_identity_policy_request() :: #{
%%   <<"Policy">> := string()
%% }
-type update_email_identity_policy_request() :: #{binary() => any()}.

%% Example:
%% put_suppressed_destination_response() :: #{}
-type put_suppressed_destination_response() :: #{}.

%% Example:
%% get_email_template_request() :: #{}
-type get_email_template_request() :: #{}.


%% Example:
%% put_account_vdm_attributes_request() :: #{
%%   <<"VdmAttributes">> := vdm_attributes()
%% }
-type put_account_vdm_attributes_request() :: #{binary() => any()}.


%% Example:
%% get_configuration_set_response() :: #{
%%   <<"ArchivingOptions">> => archiving_options(),
%%   <<"ConfigurationSetName">> => string(),
%%   <<"DeliveryOptions">> => delivery_options(),
%%   <<"ReputationOptions">> => reputation_options(),
%%   <<"SendingOptions">> => sending_options(),
%%   <<"SuppressionOptions">> => suppression_options(),
%%   <<"Tags">> => list(tag()()),
%%   <<"TrackingOptions">> => tracking_options(),
%%   <<"VdmOptions">> => vdm_options()
%% }
-type get_configuration_set_response() :: #{binary() => any()}.

%% Example:
%% update_email_template_response() :: #{}
-type update_email_template_response() :: #{}.


%% Example:
%% suppressed_destination_attributes() :: #{
%%   <<"FeedbackId">> => string(),
%%   <<"MessageId">> => string()
%% }
-type suppressed_destination_attributes() :: #{binary() => any()}.


%% Example:
%% template() :: #{
%%   <<"Attachments">> => list(attachment()()),
%%   <<"Headers">> => list(message_header()()),
%%   <<"TemplateArn">> => string(),
%%   <<"TemplateContent">> => email_template_content(),
%%   <<"TemplateData">> => string(),
%%   <<"TemplateName">> => string()
%% }
-type template() :: #{binary() => any()}.


%% Example:
%% send_email_request() :: #{
%%   <<"ConfigurationSetName">> => string(),
%%   <<"Content">> := email_content(),
%%   <<"Destination">> => destination(),
%%   <<"EmailTags">> => list(message_tag()()),
%%   <<"EndpointId">> => string(),
%%   <<"FeedbackForwardingEmailAddress">> => string(),
%%   <<"FeedbackForwardingEmailAddressIdentityArn">> => string(),
%%   <<"FromEmailAddress">> => string(),
%%   <<"FromEmailAddressIdentityArn">> => string(),
%%   <<"ListManagementOptions">> => list_management_options(),
%%   <<"ReplyToAddresses">> => list(string()())
%% }
-type send_email_request() :: #{binary() => any()}.

%% Example:
%% get_contact_list_request() :: #{}
-type get_contact_list_request() :: #{}.

%% Example:
%% put_account_details_response() :: #{}
-type put_account_details_response() :: #{}.


%% Example:
%% review_details() :: #{
%%   <<"CaseId">> => string(),
%%   <<"Status">> => list(any())
%% }
-type review_details() :: #{binary() => any()}.

%% Example:
%% put_dedicated_ip_warmup_attributes_response() :: #{}
-type put_dedicated_ip_warmup_attributes_response() :: #{}.


%% Example:
%% list_export_jobs_response() :: #{
%%   <<"ExportJobs">> => list(export_job_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_export_jobs_response() :: #{binary() => any()}.


%% Example:
%% failure_info() :: #{
%%   <<"ErrorMessage">> => string(),
%%   <<"FailedRecordsS3Url">> => string()
%% }
-type failure_info() :: #{binary() => any()}.


%% Example:
%% import_data_source() :: #{
%%   <<"DataFormat">> => list(any()),
%%   <<"S3Url">> => string()
%% }
-type import_data_source() :: #{binary() => any()}.


%% Example:
%% put_dedicated_ip_warmup_attributes_request() :: #{
%%   <<"WarmupPercentage">> := integer()
%% }
-type put_dedicated_ip_warmup_attributes_request() :: #{binary() => any()}.


%% Example:
%% domain_deliverability_campaign() :: #{
%%   <<"CampaignId">> => string(),
%%   <<"DeleteRate">> => float(),
%%   <<"Esps">> => list(string()()),
%%   <<"FirstSeenDateTime">> => non_neg_integer(),
%%   <<"FromAddress">> => string(),
%%   <<"ImageUrl">> => string(),
%%   <<"InboxCount">> => float(),
%%   <<"LastSeenDateTime">> => non_neg_integer(),
%%   <<"ProjectedVolume">> => float(),
%%   <<"ReadDeleteRate">> => float(),
%%   <<"ReadRate">> => float(),
%%   <<"SendingIps">> => list(string()()),
%%   <<"SpamCount">> => float(),
%%   <<"Subject">> => string()
%% }
-type domain_deliverability_campaign() :: #{binary() => any()}.


%% Example:
%% replacement_template() :: #{
%%   <<"ReplacementTemplateData">> => string()
%% }
-type replacement_template() :: #{binary() => any()}.


%% Example:
%% list_recommendations_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Recommendations">> => list(recommendation()())
%% }
-type list_recommendations_response() :: #{binary() => any()}.


%% Example:
%% put_email_identity_configuration_set_attributes_request() :: #{
%%   <<"ConfigurationSetName">> => string()
%% }
-type put_email_identity_configuration_set_attributes_request() :: #{binary() => any()}.

%% Example:
%% get_account_request() :: #{}
-type get_account_request() :: #{}.

%% Example:
%% get_dedicated_ip_request() :: #{}
-type get_dedicated_ip_request() :: #{}.


%% Example:
%% export_destination() :: #{
%%   <<"DataFormat">> => list(any()),
%%   <<"S3Url">> => string()
%% }
-type export_destination() :: #{binary() => any()}.


%% Example:
%% get_contact_response() :: #{
%%   <<"AttributesData">> => string(),
%%   <<"ContactListName">> => string(),
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"EmailAddress">> => string(),
%%   <<"LastUpdatedTimestamp">> => non_neg_integer(),
%%   <<"TopicDefaultPreferences">> => list(topic_preference()()),
%%   <<"TopicPreferences">> => list(topic_preference()()),
%%   <<"UnsubscribeAll">> => boolean()
%% }
-type get_contact_response() :: #{binary() => any()}.


%% Example:
%% list_email_identities_request() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PageSize">> => integer()
%% }
-type list_email_identities_request() :: #{binary() => any()}.


%% Example:
%% complaint() :: #{
%%   <<"ComplaintFeedbackType">> => string(),
%%   <<"ComplaintSubType">> => string()
%% }
-type complaint() :: #{binary() => any()}.


%% Example:
%% put_configuration_set_reputation_options_request() :: #{
%%   <<"ReputationMetricsEnabled">> => boolean()
%% }
-type put_configuration_set_reputation_options_request() :: #{binary() => any()}.


%% Example:
%% bulk_email_entry() :: #{
%%   <<"Destination">> := destination(),
%%   <<"ReplacementEmailContent">> => replacement_email_content(),
%%   <<"ReplacementHeaders">> => list(message_header()()),
%%   <<"ReplacementTags">> => list(message_tag()())
%% }
-type bulk_email_entry() :: #{binary() => any()}.


%% Example:
%% create_configuration_set_request() :: #{
%%   <<"ArchivingOptions">> => archiving_options(),
%%   <<"ConfigurationSetName">> := string(),
%%   <<"DeliveryOptions">> => delivery_options(),
%%   <<"ReputationOptions">> => reputation_options(),
%%   <<"SendingOptions">> => sending_options(),
%%   <<"SuppressionOptions">> => suppression_options(),
%%   <<"Tags">> => list(tag()()),
%%   <<"TrackingOptions">> => tracking_options(),
%%   <<"VdmOptions">> => vdm_options()
%% }
-type create_configuration_set_request() :: #{binary() => any()}.


%% Example:
%% email_template_metadata() :: #{
%%   <<"CreatedTimestamp">> => non_neg_integer(),
%%   <<"TemplateName">> => string()
%% }
-type email_template_metadata() :: #{binary() => any()}.


%% Example:
%% export_metric() :: #{
%%   <<"Aggregation">> => list(any()),
%%   <<"Name">> => list(any())
%% }
-type export_metric() :: #{binary() => any()}.


%% Example:
%% sns_destination() :: #{
%%   <<"TopicArn">> => string()
%% }
-type sns_destination() :: #{binary() => any()}.


%% Example:
%% test_render_email_template_response() :: #{
%%   <<"RenderedTemplate">> => string()
%% }
-type test_render_email_template_response() :: #{binary() => any()}.

%% Example:
%% create_email_template_response() :: #{}
-type create_email_template_response() :: #{}.


%% Example:
%% update_contact_list_request() :: #{
%%   <<"Description">> => string(),
%%   <<"Topics">> => list(topic()())
%% }
-type update_contact_list_request() :: #{binary() => any()}.


%% Example:
%% metric_data_result() :: #{
%%   <<"Id">> => string(),
%%   <<"Timestamps">> => list(non_neg_integer()()),
%%   <<"Values">> => list(float()())
%% }
-type metric_data_result() :: #{binary() => any()}.


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
%%   <<"IspPlacements">> => list(isp_placement()()),
%%   <<"Message">> => string(),
%%   <<"OverallPlacement">> => placement_statistics(),
%%   <<"Tags">> => list(tag()())
%% }
-type get_deliverability_test_report_response() :: #{binary() => any()}.


%% Example:
%% list_recommendations_request() :: #{
%%   <<"Filter">> => map(),
%%   <<"NextToken">> => string(),
%%   <<"PageSize">> => integer()
%% }
-type list_recommendations_request() :: #{binary() => any()}.


%% Example:
%% custom_verification_email_template_metadata() :: #{
%%   <<"FailureRedirectionURL">> => string(),
%%   <<"FromEmailAddress">> => string(),
%%   <<"SuccessRedirectionURL">> => string(),
%%   <<"TemplateName">> => string(),
%%   <<"TemplateSubject">> => string()
%% }
-type custom_verification_email_template_metadata() :: #{binary() => any()}.


%% Example:
%% topic_filter() :: #{
%%   <<"TopicName">> => string(),
%%   <<"UseDefaultIfPreferenceUnavailable">> => boolean()
%% }
-type topic_filter() :: #{binary() => any()}.

%% Example:
%% get_email_identity_request() :: #{}
-type get_email_identity_request() :: #{}.


%% Example:
%% get_dedicated_ips_response() :: #{
%%   <<"DedicatedIps">> => list(dedicated_ip()()),
%%   <<"NextToken">> => string()
%% }
-type get_dedicated_ips_response() :: #{binary() => any()}.


%% Example:
%% list_contact_lists_response() :: #{
%%   <<"ContactLists">> => list(contact_list()()),
%%   <<"NextToken">> => string()
%% }
-type list_contact_lists_response() :: #{binary() => any()}.


%% Example:
%% message() :: #{
%%   <<"Attachments">> => list(attachment()()),
%%   <<"Body">> => body(),
%%   <<"Headers">> => list(message_header()()),
%%   <<"Subject">> => content()
%% }
-type message() :: #{binary() => any()}.

-type batch_get_metric_data_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    internal_service_error_exception().

-type cancel_export_job_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

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

-type create_contact_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    already_exists_exception().

-type create_contact_list_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    too_many_requests_exception() | 
    already_exists_exception().

-type create_custom_verification_email_template_errors() ::
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
    not_found_exception() | 
    too_many_requests_exception() | 
    already_exists_exception().

-type create_email_identity_policy_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    too_many_requests_exception() | 
    already_exists_exception().

-type create_email_template_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    too_many_requests_exception() | 
    already_exists_exception().

-type create_export_job_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type create_import_job_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    too_many_requests_exception().

-type create_multi_region_endpoint_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    too_many_requests_exception() | 
    already_exists_exception().

-type delete_configuration_set_errors() ::
    bad_request_exception() | 
    concurrent_modification_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type delete_configuration_set_event_destination_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type delete_contact_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type delete_contact_list_errors() ::
    bad_request_exception() | 
    concurrent_modification_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type delete_custom_verification_email_template_errors() ::
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

-type delete_email_identity_policy_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type delete_email_template_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type delete_multi_region_endpoint_errors() ::
    bad_request_exception() | 
    concurrent_modification_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type delete_suppressed_destination_errors() ::
    bad_request_exception() | 
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

-type get_contact_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type get_contact_list_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type get_custom_verification_email_template_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type get_dedicated_ip_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type get_dedicated_ip_pool_errors() ::
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

-type get_email_identity_policies_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type get_email_template_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type get_export_job_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type get_import_job_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type get_message_insights_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type get_multi_region_endpoint_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type get_suppressed_destination_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type list_configuration_sets_errors() ::
    bad_request_exception() | 
    too_many_requests_exception().

-type list_contact_lists_errors() ::
    bad_request_exception() | 
    too_many_requests_exception().

-type list_contacts_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type list_custom_verification_email_templates_errors() ::
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

-type list_email_templates_errors() ::
    bad_request_exception() | 
    too_many_requests_exception().

-type list_export_jobs_errors() ::
    bad_request_exception() | 
    too_many_requests_exception().

-type list_import_jobs_errors() ::
    bad_request_exception() | 
    too_many_requests_exception().

-type list_multi_region_endpoints_errors() ::
    bad_request_exception() | 
    too_many_requests_exception().

-type list_recommendations_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type list_suppressed_destinations_errors() ::
    bad_request_exception() | 
    invalid_next_token_exception() | 
    too_many_requests_exception().

-type list_tags_for_resource_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type put_account_dedicated_ip_warmup_attributes_errors() ::
    bad_request_exception() | 
    too_many_requests_exception().

-type put_account_details_errors() ::
    bad_request_exception() | 
    conflict_exception() | 
    too_many_requests_exception().

-type put_account_sending_attributes_errors() ::
    bad_request_exception() | 
    too_many_requests_exception().

-type put_account_suppression_attributes_errors() ::
    bad_request_exception() | 
    too_many_requests_exception().

-type put_account_vdm_attributes_errors() ::
    bad_request_exception() | 
    too_many_requests_exception().

-type put_configuration_set_archiving_options_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
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

-type put_configuration_set_suppression_options_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type put_configuration_set_tracking_options_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type put_configuration_set_vdm_options_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type put_dedicated_ip_in_pool_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type put_dedicated_ip_pool_scaling_attributes_errors() ::
    bad_request_exception() | 
    concurrent_modification_exception() | 
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

-type put_email_identity_configuration_set_attributes_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type put_email_identity_dkim_attributes_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type put_email_identity_dkim_signing_attributes_errors() ::
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

-type put_suppressed_destination_errors() ::
    bad_request_exception() | 
    too_many_requests_exception().

-type send_bulk_email_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    message_rejected() | 
    not_found_exception() | 
    mail_from_domain_not_verified_exception() | 
    too_many_requests_exception() | 
    account_suspended_exception() | 
    sending_paused_exception().

-type send_custom_verification_email_errors() ::
    bad_request_exception() | 
    limit_exceeded_exception() | 
    message_rejected() | 
    not_found_exception() | 
    mail_from_domain_not_verified_exception() | 
    too_many_requests_exception() | 
    sending_paused_exception().

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

-type test_render_email_template_errors() ::
    bad_request_exception() | 
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

-type update_contact_errors() ::
    bad_request_exception() | 
    concurrent_modification_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type update_contact_list_errors() ::
    bad_request_exception() | 
    concurrent_modification_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type update_custom_verification_email_template_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type update_email_identity_policy_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

-type update_email_template_errors() ::
    bad_request_exception() | 
    not_found_exception() | 
    too_many_requests_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Retrieves batches of metric data collected based on your sending
%% activity.
%%
%% You can execute this operation no more than 16 times per second,
%% and with at most 160 queries from the batches per second (cumulative).
-spec batch_get_metric_data(aws_client:aws_client(), batch_get_metric_data_request()) ->
    {ok, batch_get_metric_data_response(), tuple()} |
    {error, any()} |
    {error, batch_get_metric_data_errors(), tuple()}.
batch_get_metric_data(Client, Input) ->
    batch_get_metric_data(Client, Input, []).

-spec batch_get_metric_data(aws_client:aws_client(), batch_get_metric_data_request(), proplists:proplist()) ->
    {ok, batch_get_metric_data_response(), tuple()} |
    {error, any()} |
    {error, batch_get_metric_data_errors(), tuple()}.
batch_get_metric_data(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/email/metrics/batch"],
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

%% @doc Cancels an export job.
-spec cancel_export_job(aws_client:aws_client(), binary() | list(), cancel_export_job_request()) ->
    {ok, cancel_export_job_response(), tuple()} |
    {error, any()} |
    {error, cancel_export_job_errors(), tuple()}.
cancel_export_job(Client, JobId, Input) ->
    cancel_export_job(Client, JobId, Input, []).

-spec cancel_export_job(aws_client:aws_client(), binary() | list(), cancel_export_job_request(), proplists:proplist()) ->
    {ok, cancel_export_job_response(), tuple()} |
    {error, any()} |
    {error, cancel_export_job_errors(), tuple()}.
cancel_export_job(Client, JobId, Input0, Options0) ->
    Method = put,
    Path = ["/v2/email/export-jobs/", aws_util:encode_uri(JobId), "/cancel"],
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

%% @doc Create a configuration set.
%%
%% Configuration sets are groups of
%% rules that you can apply to the emails that you send. You apply a
%% configuration set to
%% an email by specifying the name of the configuration set when you call the
%% Amazon SES API v2. When
%% you apply a configuration set to an email, all of the rules in that
%% configuration set
%% are applied to the email.
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
    Path = ["/v2/email/configuration-sets"],
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
%% Events include message sends,
%% deliveries, opens, clicks, bounces, and complaints. Event
%% destinations are places that you can send information about these events
%% to. For example, you can send event data to Amazon EventBridge and
%% associate a rule to send the event
%% to the specified target.
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
    Path = ["/v2/email/configuration-sets/", aws_util:encode_uri(ConfigurationSetName), "/event-destinations"],
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

%% @doc Creates a contact, which is an end-user who is receiving the email,
%% and adds them to a
%% contact list.
-spec create_contact(aws_client:aws_client(), binary() | list(), create_contact_request()) ->
    {ok, create_contact_response(), tuple()} |
    {error, any()} |
    {error, create_contact_errors(), tuple()}.
create_contact(Client, ContactListName, Input) ->
    create_contact(Client, ContactListName, Input, []).

-spec create_contact(aws_client:aws_client(), binary() | list(), create_contact_request(), proplists:proplist()) ->
    {ok, create_contact_response(), tuple()} |
    {error, any()} |
    {error, create_contact_errors(), tuple()}.
create_contact(Client, ContactListName, Input0, Options0) ->
    Method = post,
    Path = ["/v2/email/contact-lists/", aws_util:encode_uri(ContactListName), "/contacts"],
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

%% @doc Creates a contact list.
-spec create_contact_list(aws_client:aws_client(), create_contact_list_request()) ->
    {ok, create_contact_list_response(), tuple()} |
    {error, any()} |
    {error, create_contact_list_errors(), tuple()}.
create_contact_list(Client, Input) ->
    create_contact_list(Client, Input, []).

-spec create_contact_list(aws_client:aws_client(), create_contact_list_request(), proplists:proplist()) ->
    {ok, create_contact_list_response(), tuple()} |
    {error, any()} |
    {error, create_contact_list_errors(), tuple()}.
create_contact_list(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/email/contact-lists"],
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

%% @doc Creates a new custom verification email template.
%%
%% For more information about custom verification email templates, see Using
%% custom verification email templates:
%% https://docs.aws.amazon.com/ses/latest/dg/creating-identities.html#send-email-verify-address-custom
%% in the Amazon SES Developer
%% Guide.
%%
%% You can execute this operation no more than once per second.
-spec create_custom_verification_email_template(aws_client:aws_client(), create_custom_verification_email_template_request()) ->
    {ok, create_custom_verification_email_template_response(), tuple()} |
    {error, any()} |
    {error, create_custom_verification_email_template_errors(), tuple()}.
create_custom_verification_email_template(Client, Input) ->
    create_custom_verification_email_template(Client, Input, []).

-spec create_custom_verification_email_template(aws_client:aws_client(), create_custom_verification_email_template_request(), proplists:proplist()) ->
    {ok, create_custom_verification_email_template_response(), tuple()} |
    {error, any()} |
    {error, create_custom_verification_email_template_errors(), tuple()}.
create_custom_verification_email_template(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/email/custom-verification-email-templates"],
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
%% IP addresses that are associated with your Amazon Web Services account.
%% You can associate a pool with
%% a configuration set. When you send an email that uses that configuration
%% set, the
%% message is sent from one of the addresses in the associated pool.
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
    Path = ["/v2/email/dedicated-ip-pools"],
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
%% customers. Amazon SES
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
    Path = ["/v2/email/deliverability-dashboard/test"],
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

%% @doc Starts the process of verifying an email identity.
%%
%% An identity is
%% an email address or domain that you use when you send email. Before you
%% can use an
%% identity to send email, you first have to verify it. By verifying an
%% identity, you
%% demonstrate that you're the owner of the identity, and that you've
%% given Amazon SES API v2
%% permission to send email from the identity.
%%
%% When you verify an email address, Amazon SES sends an email to the
%% address. Your email
%% address is verified as soon as you follow the link in the verification
%% email.
%%
%% When you verify a domain without specifying the
%% `DkimSigningAttributes'
%% object, this operation provides a set of DKIM tokens. You can convert
%% these tokens into
%% CNAME records, which you then add to the DNS configuration for your
%% domain. Your domain
%% is verified when Amazon SES detects these records in the DNS configuration
%% for your domain.
%% This verification method is known as Easy DKIM:
%% https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html.
%%
%% Alternatively, you can perform the verification process by providing your
%% own
%% public-private key pair. This verification method is known as Bring Your
%% Own DKIM
%% (BYODKIM). To use BYODKIM, your call to the `CreateEmailIdentity'
%% operation
%% has to include the `DkimSigningAttributes' object. When you specify
%% this
%% object, you provide a selector (a component of the DNS record name that
%% identifies the
%% public key to use for DKIM authentication) and a private key.
%%
%% When you verify a domain, this operation provides a set of DKIM tokens,
%% which you can
%% convert into CNAME tokens. You add these CNAME tokens to the DNS
%% configuration for your
%% domain. Your domain is verified when Amazon SES detects these records in
%% the DNS
%% configuration for your domain. For some DNS providers, it can take 72
%% hours or more to
%% complete the domain verification process.
%%
%% Additionally, you can associate an existing configuration set with the
%% email identity that you're verifying.
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
    Path = ["/v2/email/identities"],
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

%% @doc Creates the specified sending authorization policy for the given
%% identity (an email
%% address or a domain).
%%
%% This API is for the identity owner only. If you have not verified the
%% identity,
%% this API will return an error.
%%
%% Sending authorization is a feature that enables an identity owner to
%% authorize other
%% senders to use its identities. For information about using sending
%% authorization, see
%% the Amazon SES Developer
%% Guide:
%% https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html.
%%
%% You can execute this operation no more than once per second.
-spec create_email_identity_policy(aws_client:aws_client(), binary() | list(), binary() | list(), create_email_identity_policy_request()) ->
    {ok, create_email_identity_policy_response(), tuple()} |
    {error, any()} |
    {error, create_email_identity_policy_errors(), tuple()}.
create_email_identity_policy(Client, EmailIdentity, PolicyName, Input) ->
    create_email_identity_policy(Client, EmailIdentity, PolicyName, Input, []).

-spec create_email_identity_policy(aws_client:aws_client(), binary() | list(), binary() | list(), create_email_identity_policy_request(), proplists:proplist()) ->
    {ok, create_email_identity_policy_response(), tuple()} |
    {error, any()} |
    {error, create_email_identity_policy_errors(), tuple()}.
create_email_identity_policy(Client, EmailIdentity, PolicyName, Input0, Options0) ->
    Method = post,
    Path = ["/v2/email/identities/", aws_util:encode_uri(EmailIdentity), "/policies/", aws_util:encode_uri(PolicyName), ""],
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

%% @doc Creates an email template.
%%
%% Email templates enable you to send personalized email to
%% one or more destinations in a single API operation. For more information,
%% see the Amazon SES Developer
%% Guide:
%% https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html.
%%
%% You can execute this operation no more than once per second.
-spec create_email_template(aws_client:aws_client(), create_email_template_request()) ->
    {ok, create_email_template_response(), tuple()} |
    {error, any()} |
    {error, create_email_template_errors(), tuple()}.
create_email_template(Client, Input) ->
    create_email_template(Client, Input, []).

-spec create_email_template(aws_client:aws_client(), create_email_template_request(), proplists:proplist()) ->
    {ok, create_email_template_response(), tuple()} |
    {error, any()} |
    {error, create_email_template_errors(), tuple()}.
create_email_template(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/email/templates"],
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

%% @doc Creates an export job for a data source and destination.
%%
%% You can execute this operation no more than once per second.
-spec create_export_job(aws_client:aws_client(), create_export_job_request()) ->
    {ok, create_export_job_response(), tuple()} |
    {error, any()} |
    {error, create_export_job_errors(), tuple()}.
create_export_job(Client, Input) ->
    create_export_job(Client, Input, []).

-spec create_export_job(aws_client:aws_client(), create_export_job_request(), proplists:proplist()) ->
    {ok, create_export_job_response(), tuple()} |
    {error, any()} |
    {error, create_export_job_errors(), tuple()}.
create_export_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/email/export-jobs"],
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

%% @doc Creates an import job for a data destination.
-spec create_import_job(aws_client:aws_client(), create_import_job_request()) ->
    {ok, create_import_job_response(), tuple()} |
    {error, any()} |
    {error, create_import_job_errors(), tuple()}.
create_import_job(Client, Input) ->
    create_import_job(Client, Input, []).

-spec create_import_job(aws_client:aws_client(), create_import_job_request(), proplists:proplist()) ->
    {ok, create_import_job_response(), tuple()} |
    {error, any()} |
    {error, create_import_job_errors(), tuple()}.
create_import_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/email/import-jobs"],
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

%% @doc Creates a multi-region endpoint (global-endpoint).
%%
%% The primary region is going to be the AWS-Region where the operation is
%% executed.
%% The secondary region has to be provided in request's parameters.
%% From the data flow standpoint there is no difference between primary
%% and secondary regions - sending traffic will be split equally between the
%% two.
%% The primary region is the region where the resource has been created and
%% where it can be managed.
-spec create_multi_region_endpoint(aws_client:aws_client(), create_multi_region_endpoint_request()) ->
    {ok, create_multi_region_endpoint_response(), tuple()} |
    {error, any()} |
    {error, create_multi_region_endpoint_errors(), tuple()}.
create_multi_region_endpoint(Client, Input) ->
    create_multi_region_endpoint(Client, Input, []).

-spec create_multi_region_endpoint(aws_client:aws_client(), create_multi_region_endpoint_request(), proplists:proplist()) ->
    {ok, create_multi_region_endpoint_response(), tuple()} |
    {error, any()} |
    {error, create_multi_region_endpoint_errors(), tuple()}.
create_multi_region_endpoint(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/email/multi-region-endpoints"],
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
%% Configuration sets are groups of rules that you can apply to the
%% emails you send. You apply a configuration set to an email by including a
%% reference to
%% the configuration set in the headers of the email. When you apply a
%% configuration set to
%% an email, all of the rules in that configuration set are applied to the
%% email.
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
    Path = ["/v2/email/configuration-sets/", aws_util:encode_uri(ConfigurationSetName), ""],
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
%% Events include message sends, deliveries, opens, clicks, bounces,
%% and complaints. Event destinations are places that you can send
%% information about these events to. For example, you can send event data to
%% Amazon EventBridge and
%% associate a rule to send the event to the specified target.
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
    Path = ["/v2/email/configuration-sets/", aws_util:encode_uri(ConfigurationSetName), "/event-destinations/", aws_util:encode_uri(EventDestinationName), ""],
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

%% @doc Removes a contact from a contact list.
-spec delete_contact(aws_client:aws_client(), binary() | list(), binary() | list(), delete_contact_request()) ->
    {ok, delete_contact_response(), tuple()} |
    {error, any()} |
    {error, delete_contact_errors(), tuple()}.
delete_contact(Client, ContactListName, EmailAddress, Input) ->
    delete_contact(Client, ContactListName, EmailAddress, Input, []).

-spec delete_contact(aws_client:aws_client(), binary() | list(), binary() | list(), delete_contact_request(), proplists:proplist()) ->
    {ok, delete_contact_response(), tuple()} |
    {error, any()} |
    {error, delete_contact_errors(), tuple()}.
delete_contact(Client, ContactListName, EmailAddress, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/email/contact-lists/", aws_util:encode_uri(ContactListName), "/contacts/", aws_util:encode_uri(EmailAddress), ""],
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

%% @doc Deletes a contact list and all of the contacts on that list.
-spec delete_contact_list(aws_client:aws_client(), binary() | list(), delete_contact_list_request()) ->
    {ok, delete_contact_list_response(), tuple()} |
    {error, any()} |
    {error, delete_contact_list_errors(), tuple()}.
delete_contact_list(Client, ContactListName, Input) ->
    delete_contact_list(Client, ContactListName, Input, []).

-spec delete_contact_list(aws_client:aws_client(), binary() | list(), delete_contact_list_request(), proplists:proplist()) ->
    {ok, delete_contact_list_response(), tuple()} |
    {error, any()} |
    {error, delete_contact_list_errors(), tuple()}.
delete_contact_list(Client, ContactListName, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/email/contact-lists/", aws_util:encode_uri(ContactListName), ""],
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

%% @doc Deletes an existing custom verification email template.
%%
%% For more information about custom verification email templates, see Using
%% custom verification email templates:
%% https://docs.aws.amazon.com/ses/latest/dg/creating-identities.html#send-email-verify-address-custom
%% in the Amazon SES Developer
%% Guide.
%%
%% You can execute this operation no more than once per second.
-spec delete_custom_verification_email_template(aws_client:aws_client(), binary() | list(), delete_custom_verification_email_template_request()) ->
    {ok, delete_custom_verification_email_template_response(), tuple()} |
    {error, any()} |
    {error, delete_custom_verification_email_template_errors(), tuple()}.
delete_custom_verification_email_template(Client, TemplateName, Input) ->
    delete_custom_verification_email_template(Client, TemplateName, Input, []).

-spec delete_custom_verification_email_template(aws_client:aws_client(), binary() | list(), delete_custom_verification_email_template_request(), proplists:proplist()) ->
    {ok, delete_custom_verification_email_template_response(), tuple()} |
    {error, any()} |
    {error, delete_custom_verification_email_template_errors(), tuple()}.
delete_custom_verification_email_template(Client, TemplateName, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/email/custom-verification-email-templates/", aws_util:encode_uri(TemplateName), ""],
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
    Path = ["/v2/email/dedicated-ip-pools/", aws_util:encode_uri(PoolName), ""],
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

%% @doc Deletes an email identity.
%%
%% An identity can be either an email address or a domain
%% name.
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
    Path = ["/v2/email/identities/", aws_util:encode_uri(EmailIdentity), ""],
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

%% @doc Deletes the specified sending authorization policy for the given
%% identity (an email
%% address or a domain).
%%
%% This API returns successfully even if a policy with the specified
%% name does not exist.
%%
%% This API is for the identity owner only. If you have not verified the
%% identity,
%% this API will return an error.
%%
%% Sending authorization is a feature that enables an identity owner to
%% authorize other
%% senders to use its identities. For information about using sending
%% authorization, see
%% the Amazon SES Developer
%% Guide:
%% https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html.
%%
%% You can execute this operation no more than once per second.
-spec delete_email_identity_policy(aws_client:aws_client(), binary() | list(), binary() | list(), delete_email_identity_policy_request()) ->
    {ok, delete_email_identity_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_email_identity_policy_errors(), tuple()}.
delete_email_identity_policy(Client, EmailIdentity, PolicyName, Input) ->
    delete_email_identity_policy(Client, EmailIdentity, PolicyName, Input, []).

-spec delete_email_identity_policy(aws_client:aws_client(), binary() | list(), binary() | list(), delete_email_identity_policy_request(), proplists:proplist()) ->
    {ok, delete_email_identity_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_email_identity_policy_errors(), tuple()}.
delete_email_identity_policy(Client, EmailIdentity, PolicyName, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/email/identities/", aws_util:encode_uri(EmailIdentity), "/policies/", aws_util:encode_uri(PolicyName), ""],
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

%% @doc Deletes an email template.
%%
%% You can execute this operation no more than once per second.
-spec delete_email_template(aws_client:aws_client(), binary() | list(), delete_email_template_request()) ->
    {ok, delete_email_template_response(), tuple()} |
    {error, any()} |
    {error, delete_email_template_errors(), tuple()}.
delete_email_template(Client, TemplateName, Input) ->
    delete_email_template(Client, TemplateName, Input, []).

-spec delete_email_template(aws_client:aws_client(), binary() | list(), delete_email_template_request(), proplists:proplist()) ->
    {ok, delete_email_template_response(), tuple()} |
    {error, any()} |
    {error, delete_email_template_errors(), tuple()}.
delete_email_template(Client, TemplateName, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/email/templates/", aws_util:encode_uri(TemplateName), ""],
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

%% @doc Deletes a multi-region endpoint (global-endpoint).
%%
%% Only multi-region endpoints (global-endpoints) whose primary region is the
%% AWS-Region
%% where operation is executed can be deleted.
-spec delete_multi_region_endpoint(aws_client:aws_client(), binary() | list(), delete_multi_region_endpoint_request()) ->
    {ok, delete_multi_region_endpoint_response(), tuple()} |
    {error, any()} |
    {error, delete_multi_region_endpoint_errors(), tuple()}.
delete_multi_region_endpoint(Client, EndpointName, Input) ->
    delete_multi_region_endpoint(Client, EndpointName, Input, []).

-spec delete_multi_region_endpoint(aws_client:aws_client(), binary() | list(), delete_multi_region_endpoint_request(), proplists:proplist()) ->
    {ok, delete_multi_region_endpoint_response(), tuple()} |
    {error, any()} |
    {error, delete_multi_region_endpoint_errors(), tuple()}.
delete_multi_region_endpoint(Client, EndpointName, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/email/multi-region-endpoints/", aws_util:encode_uri(EndpointName), ""],
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

%% @doc Removes an email address from the suppression list for your account.
-spec delete_suppressed_destination(aws_client:aws_client(), binary() | list(), delete_suppressed_destination_request()) ->
    {ok, delete_suppressed_destination_response(), tuple()} |
    {error, any()} |
    {error, delete_suppressed_destination_errors(), tuple()}.
delete_suppressed_destination(Client, EmailAddress, Input) ->
    delete_suppressed_destination(Client, EmailAddress, Input, []).

-spec delete_suppressed_destination(aws_client:aws_client(), binary() | list(), delete_suppressed_destination_request(), proplists:proplist()) ->
    {ok, delete_suppressed_destination_response(), tuple()} |
    {error, any()} |
    {error, delete_suppressed_destination_errors(), tuple()}.
delete_suppressed_destination(Client, EmailAddress, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/email/suppression/addresses/", aws_util:encode_uri(EmailAddress), ""],
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
%% your Amazon SES
%% account in the current Amazon Web Services Region.
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
    Path = ["/v2/email/account"],
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
    Path = ["/v2/email/deliverability-dashboard/blacklist-report"],
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
%% Configuration sets are groups of rules that you can apply to the
%% emails you send. You apply a configuration set to an email by including a
%% reference to
%% the configuration set in the headers of the email. When you apply a
%% configuration set to
%% an email, all of the rules in that configuration set are applied to the
%% email.
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
    Path = ["/v2/email/configuration-sets/", aws_util:encode_uri(ConfigurationSetName), ""],
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
%% Events include message sends, deliveries, opens, clicks, bounces,
%% and complaints. Event destinations are places that you can send
%% information about these events to. For example, you can send event data to
%% Amazon EventBridge and
%% associate a rule to send the event to the specified target.
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
    Path = ["/v2/email/configuration-sets/", aws_util:encode_uri(ConfigurationSetName), "/event-destinations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a contact from a contact list.
-spec get_contact(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_contact_response(), tuple()} |
    {error, any()} |
    {error, get_contact_errors(), tuple()}.
get_contact(Client, ContactListName, EmailAddress)
  when is_map(Client) ->
    get_contact(Client, ContactListName, EmailAddress, #{}, #{}).

-spec get_contact(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_contact_response(), tuple()} |
    {error, any()} |
    {error, get_contact_errors(), tuple()}.
get_contact(Client, ContactListName, EmailAddress, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_contact(Client, ContactListName, EmailAddress, QueryMap, HeadersMap, []).

-spec get_contact(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_contact_response(), tuple()} |
    {error, any()} |
    {error, get_contact_errors(), tuple()}.
get_contact(Client, ContactListName, EmailAddress, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/email/contact-lists/", aws_util:encode_uri(ContactListName), "/contacts/", aws_util:encode_uri(EmailAddress), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns contact list metadata.
%%
%% It does not return any information about the contacts
%% present in the list.
-spec get_contact_list(aws_client:aws_client(), binary() | list()) ->
    {ok, get_contact_list_response(), tuple()} |
    {error, any()} |
    {error, get_contact_list_errors(), tuple()}.
get_contact_list(Client, ContactListName)
  when is_map(Client) ->
    get_contact_list(Client, ContactListName, #{}, #{}).

-spec get_contact_list(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_contact_list_response(), tuple()} |
    {error, any()} |
    {error, get_contact_list_errors(), tuple()}.
get_contact_list(Client, ContactListName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_contact_list(Client, ContactListName, QueryMap, HeadersMap, []).

-spec get_contact_list(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_contact_list_response(), tuple()} |
    {error, any()} |
    {error, get_contact_list_errors(), tuple()}.
get_contact_list(Client, ContactListName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/email/contact-lists/", aws_util:encode_uri(ContactListName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the custom email verification template for the template name
%% you
%% specify.
%%
%% For more information about custom verification email templates, see Using
%% custom verification email templates:
%% https://docs.aws.amazon.com/ses/latest/dg/creating-identities.html#send-email-verify-address-custom
%% in the Amazon SES Developer
%% Guide.
%%
%% You can execute this operation no more than once per second.
-spec get_custom_verification_email_template(aws_client:aws_client(), binary() | list()) ->
    {ok, get_custom_verification_email_template_response(), tuple()} |
    {error, any()} |
    {error, get_custom_verification_email_template_errors(), tuple()}.
get_custom_verification_email_template(Client, TemplateName)
  when is_map(Client) ->
    get_custom_verification_email_template(Client, TemplateName, #{}, #{}).

-spec get_custom_verification_email_template(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_custom_verification_email_template_response(), tuple()} |
    {error, any()} |
    {error, get_custom_verification_email_template_errors(), tuple()}.
get_custom_verification_email_template(Client, TemplateName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_custom_verification_email_template(Client, TemplateName, QueryMap, HeadersMap, []).

-spec get_custom_verification_email_template(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_custom_verification_email_template_response(), tuple()} |
    {error, any()} |
    {error, get_custom_verification_email_template_errors(), tuple()}.
get_custom_verification_email_template(Client, TemplateName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/email/custom-verification-email-templates/", aws_util:encode_uri(TemplateName), ""],
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
    Path = ["/v2/email/dedicated-ips/", aws_util:encode_uri(Ip), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieve information about the dedicated pool.
-spec get_dedicated_ip_pool(aws_client:aws_client(), binary() | list()) ->
    {ok, get_dedicated_ip_pool_response(), tuple()} |
    {error, any()} |
    {error, get_dedicated_ip_pool_errors(), tuple()}.
get_dedicated_ip_pool(Client, PoolName)
  when is_map(Client) ->
    get_dedicated_ip_pool(Client, PoolName, #{}, #{}).

-spec get_dedicated_ip_pool(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_dedicated_ip_pool_response(), tuple()} |
    {error, any()} |
    {error, get_dedicated_ip_pool_errors(), tuple()}.
get_dedicated_ip_pool(Client, PoolName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_dedicated_ip_pool(Client, PoolName, QueryMap, HeadersMap, []).

-spec get_dedicated_ip_pool(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_dedicated_ip_pool_response(), tuple()} |
    {error, any()} |
    {error, get_dedicated_ip_pool_errors(), tuple()}.
get_dedicated_ip_pool(Client, PoolName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/email/dedicated-ip-pools/", aws_util:encode_uri(PoolName), ""],
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
%% Web Services
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
    Path = ["/v2/email/dedicated-ips"],
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
%% for your account.
%%
%% When
%% the Deliverability dashboard is enabled, you gain access to reputation,
%% deliverability, and other
%% metrics for the domains that you use to send email. You also gain the
%% ability to perform
%% predictive inbox placement tests.
%%
%% When you use the Deliverability dashboard, you pay a monthly subscription
%% charge, in addition
%% to any other fees that you accrue by using Amazon SES and other Amazon Web
%% Services services. For more
%% information about the features and cost of a Deliverability dashboard
%% subscription, see Amazon SES Pricing: http://aws.amazon.com/ses/pricing/.
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
    Path = ["/v2/email/deliverability-dashboard"],
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
    Path = ["/v2/email/deliverability-dashboard/test-reports/", aws_util:encode_uri(ReportId), ""],
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
%% Deliverability dashboard is enabled for.
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
    Path = ["/v2/email/deliverability-dashboard/campaigns/", aws_util:encode_uri(CampaignId), ""],
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
    Path = ["/v2/email/deliverability-dashboard/statistics-report/", aws_util:encode_uri(Domain), ""],
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

%% @doc Provides information about a specific identity, including the
%% identity's verification
%% status, sending authorization policies, its DKIM authentication status,
%% and its custom
%% Mail-From settings.
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
    Path = ["/v2/email/identities/", aws_util:encode_uri(EmailIdentity), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the requested sending authorization policies for the given
%% identity (an email
%% address or a domain).
%%
%% The policies are returned as a map of policy names to policy
%% contents. You can retrieve a maximum of 20 policies at a time.
%%
%% This API is for the identity owner only. If you have not verified the
%% identity,
%% this API will return an error.
%%
%% Sending authorization is a feature that enables an identity owner to
%% authorize other
%% senders to use its identities. For information about using sending
%% authorization, see
%% the Amazon SES Developer
%% Guide:
%% https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html.
%%
%% You can execute this operation no more than once per second.
-spec get_email_identity_policies(aws_client:aws_client(), binary() | list()) ->
    {ok, get_email_identity_policies_response(), tuple()} |
    {error, any()} |
    {error, get_email_identity_policies_errors(), tuple()}.
get_email_identity_policies(Client, EmailIdentity)
  when is_map(Client) ->
    get_email_identity_policies(Client, EmailIdentity, #{}, #{}).

-spec get_email_identity_policies(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_email_identity_policies_response(), tuple()} |
    {error, any()} |
    {error, get_email_identity_policies_errors(), tuple()}.
get_email_identity_policies(Client, EmailIdentity, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_email_identity_policies(Client, EmailIdentity, QueryMap, HeadersMap, []).

-spec get_email_identity_policies(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_email_identity_policies_response(), tuple()} |
    {error, any()} |
    {error, get_email_identity_policies_errors(), tuple()}.
get_email_identity_policies(Client, EmailIdentity, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/email/identities/", aws_util:encode_uri(EmailIdentity), "/policies"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Displays the template object (which includes the subject line, HTML
%% part and text
%% part) for the template you specify.
%%
%% You can execute this operation no more than once per second.
-spec get_email_template(aws_client:aws_client(), binary() | list()) ->
    {ok, get_email_template_response(), tuple()} |
    {error, any()} |
    {error, get_email_template_errors(), tuple()}.
get_email_template(Client, TemplateName)
  when is_map(Client) ->
    get_email_template(Client, TemplateName, #{}, #{}).

-spec get_email_template(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_email_template_response(), tuple()} |
    {error, any()} |
    {error, get_email_template_errors(), tuple()}.
get_email_template(Client, TemplateName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_email_template(Client, TemplateName, QueryMap, HeadersMap, []).

-spec get_email_template(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_email_template_response(), tuple()} |
    {error, any()} |
    {error, get_email_template_errors(), tuple()}.
get_email_template(Client, TemplateName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/email/templates/", aws_util:encode_uri(TemplateName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Provides information about an export job.
-spec get_export_job(aws_client:aws_client(), binary() | list()) ->
    {ok, get_export_job_response(), tuple()} |
    {error, any()} |
    {error, get_export_job_errors(), tuple()}.
get_export_job(Client, JobId)
  when is_map(Client) ->
    get_export_job(Client, JobId, #{}, #{}).

-spec get_export_job(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_export_job_response(), tuple()} |
    {error, any()} |
    {error, get_export_job_errors(), tuple()}.
get_export_job(Client, JobId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_export_job(Client, JobId, QueryMap, HeadersMap, []).

-spec get_export_job(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_export_job_response(), tuple()} |
    {error, any()} |
    {error, get_export_job_errors(), tuple()}.
get_export_job(Client, JobId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/email/export-jobs/", aws_util:encode_uri(JobId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Provides information about an import job.
-spec get_import_job(aws_client:aws_client(), binary() | list()) ->
    {ok, get_import_job_response(), tuple()} |
    {error, any()} |
    {error, get_import_job_errors(), tuple()}.
get_import_job(Client, JobId)
  when is_map(Client) ->
    get_import_job(Client, JobId, #{}, #{}).

-spec get_import_job(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_import_job_response(), tuple()} |
    {error, any()} |
    {error, get_import_job_errors(), tuple()}.
get_import_job(Client, JobId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_import_job(Client, JobId, QueryMap, HeadersMap, []).

-spec get_import_job(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_import_job_response(), tuple()} |
    {error, any()} |
    {error, get_import_job_errors(), tuple()}.
get_import_job(Client, JobId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/email/import-jobs/", aws_util:encode_uri(JobId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Provides information about a specific message, including the from
%% address, the
%% subject, the recipient address, email tags, as well as events associated
%% with the message.
%%
%% You can execute this operation no more than once per second.
-spec get_message_insights(aws_client:aws_client(), binary() | list()) ->
    {ok, get_message_insights_response(), tuple()} |
    {error, any()} |
    {error, get_message_insights_errors(), tuple()}.
get_message_insights(Client, MessageId)
  when is_map(Client) ->
    get_message_insights(Client, MessageId, #{}, #{}).

-spec get_message_insights(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_message_insights_response(), tuple()} |
    {error, any()} |
    {error, get_message_insights_errors(), tuple()}.
get_message_insights(Client, MessageId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_message_insights(Client, MessageId, QueryMap, HeadersMap, []).

-spec get_message_insights(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_message_insights_response(), tuple()} |
    {error, any()} |
    {error, get_message_insights_errors(), tuple()}.
get_message_insights(Client, MessageId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/email/insights/", aws_util:encode_uri(MessageId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Displays the multi-region endpoint (global-endpoint) configuration.
%%
%% Only multi-region endpoints (global-endpoints) whose primary region is the
%% AWS-Region
%% where operation is executed can be displayed.
-spec get_multi_region_endpoint(aws_client:aws_client(), binary() | list()) ->
    {ok, get_multi_region_endpoint_response(), tuple()} |
    {error, any()} |
    {error, get_multi_region_endpoint_errors(), tuple()}.
get_multi_region_endpoint(Client, EndpointName)
  when is_map(Client) ->
    get_multi_region_endpoint(Client, EndpointName, #{}, #{}).

-spec get_multi_region_endpoint(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_multi_region_endpoint_response(), tuple()} |
    {error, any()} |
    {error, get_multi_region_endpoint_errors(), tuple()}.
get_multi_region_endpoint(Client, EndpointName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_multi_region_endpoint(Client, EndpointName, QueryMap, HeadersMap, []).

-spec get_multi_region_endpoint(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_multi_region_endpoint_response(), tuple()} |
    {error, any()} |
    {error, get_multi_region_endpoint_errors(), tuple()}.
get_multi_region_endpoint(Client, EndpointName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/email/multi-region-endpoints/", aws_util:encode_uri(EndpointName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a specific email address that's on
%% the suppression list
%% for your account.
-spec get_suppressed_destination(aws_client:aws_client(), binary() | list()) ->
    {ok, get_suppressed_destination_response(), tuple()} |
    {error, any()} |
    {error, get_suppressed_destination_errors(), tuple()}.
get_suppressed_destination(Client, EmailAddress)
  when is_map(Client) ->
    get_suppressed_destination(Client, EmailAddress, #{}, #{}).

-spec get_suppressed_destination(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_suppressed_destination_response(), tuple()} |
    {error, any()} |
    {error, get_suppressed_destination_errors(), tuple()}.
get_suppressed_destination(Client, EmailAddress, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_suppressed_destination(Client, EmailAddress, QueryMap, HeadersMap, []).

-spec get_suppressed_destination(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_suppressed_destination_response(), tuple()} |
    {error, any()} |
    {error, get_suppressed_destination_errors(), tuple()}.
get_suppressed_destination(Client, EmailAddress, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/email/suppression/addresses/", aws_util:encode_uri(EmailAddress), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List all of the configuration sets associated with your account in
%% the current
%% region.
%%
%% Configuration sets are groups of rules that you can apply to the
%% emails you send. You apply a configuration set to an email by including a
%% reference to
%% the configuration set in the headers of the email. When you apply a
%% configuration set to
%% an email, all of the rules in that configuration set are applied to the
%% email.
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
    Path = ["/v2/email/configuration-sets"],
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

%% @doc Lists all of the contact lists available.
%%
%% If your output includes a &quot;NextToken&quot; field with a string value,
%% this indicates there may be additional
%% contacts on the filtered list - regardless of the number of contacts
%% returned.
-spec list_contact_lists(aws_client:aws_client()) ->
    {ok, list_contact_lists_response(), tuple()} |
    {error, any()} |
    {error, list_contact_lists_errors(), tuple()}.
list_contact_lists(Client)
  when is_map(Client) ->
    list_contact_lists(Client, #{}, #{}).

-spec list_contact_lists(aws_client:aws_client(), map(), map()) ->
    {ok, list_contact_lists_response(), tuple()} |
    {error, any()} |
    {error, list_contact_lists_errors(), tuple()}.
list_contact_lists(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_contact_lists(Client, QueryMap, HeadersMap, []).

-spec list_contact_lists(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_contact_lists_response(), tuple()} |
    {error, any()} |
    {error, list_contact_lists_errors(), tuple()}.
list_contact_lists(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/email/contact-lists"],
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

%% @doc Lists the contacts present in a specific contact list.
-spec list_contacts(aws_client:aws_client(), binary() | list(), list_contacts_request()) ->
    {ok, list_contacts_response(), tuple()} |
    {error, any()} |
    {error, list_contacts_errors(), tuple()}.
list_contacts(Client, ContactListName, Input) ->
    list_contacts(Client, ContactListName, Input, []).

-spec list_contacts(aws_client:aws_client(), binary() | list(), list_contacts_request(), proplists:proplist()) ->
    {ok, list_contacts_response(), tuple()} |
    {error, any()} |
    {error, list_contacts_errors(), tuple()}.
list_contacts(Client, ContactListName, Input0, Options0) ->
    Method = post,
    Path = ["/v2/email/contact-lists/", aws_util:encode_uri(ContactListName), "/contacts/list"],
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

%% @doc Lists the existing custom verification email templates for your
%% account in the current
%% Amazon Web Services Region.
%%
%% For more information about custom verification email templates, see Using
%% custom verification email templates:
%% https://docs.aws.amazon.com/ses/latest/dg/creating-identities.html#send-email-verify-address-custom
%% in the Amazon SES Developer
%% Guide.
%%
%% You can execute this operation no more than once per second.
-spec list_custom_verification_email_templates(aws_client:aws_client()) ->
    {ok, list_custom_verification_email_templates_response(), tuple()} |
    {error, any()} |
    {error, list_custom_verification_email_templates_errors(), tuple()}.
list_custom_verification_email_templates(Client)
  when is_map(Client) ->
    list_custom_verification_email_templates(Client, #{}, #{}).

-spec list_custom_verification_email_templates(aws_client:aws_client(), map(), map()) ->
    {ok, list_custom_verification_email_templates_response(), tuple()} |
    {error, any()} |
    {error, list_custom_verification_email_templates_errors(), tuple()}.
list_custom_verification_email_templates(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_custom_verification_email_templates(Client, QueryMap, HeadersMap, []).

-spec list_custom_verification_email_templates(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_custom_verification_email_templates_response(), tuple()} |
    {error, any()} |
    {error, list_custom_verification_email_templates_errors(), tuple()}.
list_custom_verification_email_templates(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/email/custom-verification-email-templates"],
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

%% @doc List all of the dedicated IP pools that exist in your Amazon Web
%% Services account in the current
%% Region.
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
    Path = ["/v2/email/dedicated-ip-pools"],
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
    Path = ["/v2/email/deliverability-dashboard/test-reports"],
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
%% enabled the Deliverability dashboard for the domain.
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
    Path = ["/v2/email/deliverability-dashboard/domains/", aws_util:encode_uri(SubscribedDomain), "/campaigns"],
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
%% with your Amazon Web Services
%% account.
%%
%% An identity can be either an email address or a domain. This operation
%% returns
%% identities that are verified as well as those that aren't. This
%% operation returns
%% identities that are associated with Amazon SES and Amazon Pinpoint.
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
    Path = ["/v2/email/identities"],
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

%% @doc Lists the email templates present in your Amazon SES account in the
%% current Amazon Web Services
%% Region.
%%
%% You can execute this operation no more than once per second.
-spec list_email_templates(aws_client:aws_client()) ->
    {ok, list_email_templates_response(), tuple()} |
    {error, any()} |
    {error, list_email_templates_errors(), tuple()}.
list_email_templates(Client)
  when is_map(Client) ->
    list_email_templates(Client, #{}, #{}).

-spec list_email_templates(aws_client:aws_client(), map(), map()) ->
    {ok, list_email_templates_response(), tuple()} |
    {error, any()} |
    {error, list_email_templates_errors(), tuple()}.
list_email_templates(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_email_templates(Client, QueryMap, HeadersMap, []).

-spec list_email_templates(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_email_templates_response(), tuple()} |
    {error, any()} |
    {error, list_email_templates_errors(), tuple()}.
list_email_templates(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/email/templates"],
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

%% @doc Lists all of the export jobs.
-spec list_export_jobs(aws_client:aws_client(), list_export_jobs_request()) ->
    {ok, list_export_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_export_jobs_errors(), tuple()}.
list_export_jobs(Client, Input) ->
    list_export_jobs(Client, Input, []).

-spec list_export_jobs(aws_client:aws_client(), list_export_jobs_request(), proplists:proplist()) ->
    {ok, list_export_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_export_jobs_errors(), tuple()}.
list_export_jobs(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/email/list-export-jobs"],
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

%% @doc Lists all of the import jobs.
-spec list_import_jobs(aws_client:aws_client(), list_import_jobs_request()) ->
    {ok, list_import_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_import_jobs_errors(), tuple()}.
list_import_jobs(Client, Input) ->
    list_import_jobs(Client, Input, []).

-spec list_import_jobs(aws_client:aws_client(), list_import_jobs_request(), proplists:proplist()) ->
    {ok, list_import_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_import_jobs_errors(), tuple()}.
list_import_jobs(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/email/import-jobs/list"],
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

%% @doc List the multi-region endpoints (global-endpoints).
%%
%% Only multi-region endpoints (global-endpoints) whose primary region is the
%% AWS-Region
%% where operation is executed will be listed.
-spec list_multi_region_endpoints(aws_client:aws_client()) ->
    {ok, list_multi_region_endpoints_response(), tuple()} |
    {error, any()} |
    {error, list_multi_region_endpoints_errors(), tuple()}.
list_multi_region_endpoints(Client)
  when is_map(Client) ->
    list_multi_region_endpoints(Client, #{}, #{}).

-spec list_multi_region_endpoints(aws_client:aws_client(), map(), map()) ->
    {ok, list_multi_region_endpoints_response(), tuple()} |
    {error, any()} |
    {error, list_multi_region_endpoints_errors(), tuple()}.
list_multi_region_endpoints(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_multi_region_endpoints(Client, QueryMap, HeadersMap, []).

-spec list_multi_region_endpoints(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_multi_region_endpoints_response(), tuple()} |
    {error, any()} |
    {error, list_multi_region_endpoints_errors(), tuple()}.
list_multi_region_endpoints(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/email/multi-region-endpoints"],
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

%% @doc Lists the recommendations present in your Amazon SES account in the
%% current Amazon Web Services Region.
%%
%% You can execute this operation no more than once per second.
-spec list_recommendations(aws_client:aws_client(), list_recommendations_request()) ->
    {ok, list_recommendations_response(), tuple()} |
    {error, any()} |
    {error, list_recommendations_errors(), tuple()}.
list_recommendations(Client, Input) ->
    list_recommendations(Client, Input, []).

-spec list_recommendations(aws_client:aws_client(), list_recommendations_request(), proplists:proplist()) ->
    {ok, list_recommendations_response(), tuple()} |
    {error, any()} |
    {error, list_recommendations_errors(), tuple()}.
list_recommendations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/email/vdm/recommendations"],
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

%% @doc Retrieves a list of email addresses that are on the suppression list
%% for your
%% account.
-spec list_suppressed_destinations(aws_client:aws_client()) ->
    {ok, list_suppressed_destinations_response(), tuple()} |
    {error, any()} |
    {error, list_suppressed_destinations_errors(), tuple()}.
list_suppressed_destinations(Client)
  when is_map(Client) ->
    list_suppressed_destinations(Client, #{}, #{}).

-spec list_suppressed_destinations(aws_client:aws_client(), map(), map()) ->
    {ok, list_suppressed_destinations_response(), tuple()} |
    {error, any()} |
    {error, list_suppressed_destinations_errors(), tuple()}.
list_suppressed_destinations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_suppressed_destinations(Client, QueryMap, HeadersMap, []).

-spec list_suppressed_destinations(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_suppressed_destinations_response(), tuple()} |
    {error, any()} |
    {error, list_suppressed_destinations_errors(), tuple()}.
list_suppressed_destinations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/email/suppression/addresses"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

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
%% with a specified
%% resource.
%%
%% A tag is a label that you optionally define and associate
%% with a resource. Each tag consists of a required tag key and an
%% optional associated tag value. A tag key is a general label that
%% acts as a category for more specific tag values. A tag value acts as a
%% descriptor within
%% a tag key.
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
    Path = ["/v2/email/tags"],
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
    Path = ["/v2/email/account/dedicated-ips/warmup"],
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

%% @doc Update your Amazon SES account details.
-spec put_account_details(aws_client:aws_client(), put_account_details_request()) ->
    {ok, put_account_details_response(), tuple()} |
    {error, any()} |
    {error, put_account_details_errors(), tuple()}.
put_account_details(Client, Input) ->
    put_account_details(Client, Input, []).

-spec put_account_details(aws_client:aws_client(), put_account_details_request(), proplists:proplist()) ->
    {ok, put_account_details_response(), tuple()} |
    {error, any()} |
    {error, put_account_details_errors(), tuple()}.
put_account_details(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/email/account/details"],
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
    Path = ["/v2/email/account/sending"],
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

%% @doc Change the settings for the account-level suppression list.
-spec put_account_suppression_attributes(aws_client:aws_client(), put_account_suppression_attributes_request()) ->
    {ok, put_account_suppression_attributes_response(), tuple()} |
    {error, any()} |
    {error, put_account_suppression_attributes_errors(), tuple()}.
put_account_suppression_attributes(Client, Input) ->
    put_account_suppression_attributes(Client, Input, []).

-spec put_account_suppression_attributes(aws_client:aws_client(), put_account_suppression_attributes_request(), proplists:proplist()) ->
    {ok, put_account_suppression_attributes_response(), tuple()} |
    {error, any()} |
    {error, put_account_suppression_attributes_errors(), tuple()}.
put_account_suppression_attributes(Client, Input0, Options0) ->
    Method = put,
    Path = ["/v2/email/account/suppression"],
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

%% @doc Update your Amazon SES account VDM attributes.
%%
%% You can execute this operation no more than once per second.
-spec put_account_vdm_attributes(aws_client:aws_client(), put_account_vdm_attributes_request()) ->
    {ok, put_account_vdm_attributes_response(), tuple()} |
    {error, any()} |
    {error, put_account_vdm_attributes_errors(), tuple()}.
put_account_vdm_attributes(Client, Input) ->
    put_account_vdm_attributes(Client, Input, []).

-spec put_account_vdm_attributes(aws_client:aws_client(), put_account_vdm_attributes_request(), proplists:proplist()) ->
    {ok, put_account_vdm_attributes_response(), tuple()} |
    {error, any()} |
    {error, put_account_vdm_attributes_errors(), tuple()}.
put_account_vdm_attributes(Client, Input0, Options0) ->
    Method = put,
    Path = ["/v2/email/account/vdm"],
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

%% @doc Associate the configuration set with a MailManager archive.
%%
%% When you send email using the
%% `SendEmail' or `SendBulkEmail' operations the message as it will
%% be given
%% to the receiving SMTP server will be archived, along with the recipient
%% information.
-spec put_configuration_set_archiving_options(aws_client:aws_client(), binary() | list(), put_configuration_set_archiving_options_request()) ->
    {ok, put_configuration_set_archiving_options_response(), tuple()} |
    {error, any()} |
    {error, put_configuration_set_archiving_options_errors(), tuple()}.
put_configuration_set_archiving_options(Client, ConfigurationSetName, Input) ->
    put_configuration_set_archiving_options(Client, ConfigurationSetName, Input, []).

-spec put_configuration_set_archiving_options(aws_client:aws_client(), binary() | list(), put_configuration_set_archiving_options_request(), proplists:proplist()) ->
    {ok, put_configuration_set_archiving_options_response(), tuple()} |
    {error, any()} |
    {error, put_configuration_set_archiving_options_errors(), tuple()}.
put_configuration_set_archiving_options(Client, ConfigurationSetName, Input0, Options0) ->
    Method = put,
    Path = ["/v2/email/configuration-sets/", aws_util:encode_uri(ConfigurationSetName), "/archiving-options"],
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
    Path = ["/v2/email/configuration-sets/", aws_util:encode_uri(ConfigurationSetName), "/delivery-options"],
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
%% particular configuration set in a specific Amazon Web Services Region.
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
    Path = ["/v2/email/configuration-sets/", aws_util:encode_uri(ConfigurationSetName), "/reputation-options"],
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
%% in a specific Amazon Web Services Region.
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
    Path = ["/v2/email/configuration-sets/", aws_util:encode_uri(ConfigurationSetName), "/sending"],
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

%% @doc Specify the account suppression list preferences for a configuration
%% set.
-spec put_configuration_set_suppression_options(aws_client:aws_client(), binary() | list(), put_configuration_set_suppression_options_request()) ->
    {ok, put_configuration_set_suppression_options_response(), tuple()} |
    {error, any()} |
    {error, put_configuration_set_suppression_options_errors(), tuple()}.
put_configuration_set_suppression_options(Client, ConfigurationSetName, Input) ->
    put_configuration_set_suppression_options(Client, ConfigurationSetName, Input, []).

-spec put_configuration_set_suppression_options(aws_client:aws_client(), binary() | list(), put_configuration_set_suppression_options_request(), proplists:proplist()) ->
    {ok, put_configuration_set_suppression_options_response(), tuple()} |
    {error, any()} |
    {error, put_configuration_set_suppression_options_errors(), tuple()}.
put_configuration_set_suppression_options(Client, ConfigurationSetName, Input0, Options0) ->
    Method = put,
    Path = ["/v2/email/configuration-sets/", aws_util:encode_uri(ConfigurationSetName), "/suppression-options"],
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
%% send.
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
    Path = ["/v2/email/configuration-sets/", aws_util:encode_uri(ConfigurationSetName), "/tracking-options"],
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

%% @doc Specify VDM preferences for email that you send using the
%% configuration set.
%%
%% You can execute this operation no more than once per second.
-spec put_configuration_set_vdm_options(aws_client:aws_client(), binary() | list(), put_configuration_set_vdm_options_request()) ->
    {ok, put_configuration_set_vdm_options_response(), tuple()} |
    {error, any()} |
    {error, put_configuration_set_vdm_options_errors(), tuple()}.
put_configuration_set_vdm_options(Client, ConfigurationSetName, Input) ->
    put_configuration_set_vdm_options(Client, ConfigurationSetName, Input, []).

-spec put_configuration_set_vdm_options(aws_client:aws_client(), binary() | list(), put_configuration_set_vdm_options_request(), proplists:proplist()) ->
    {ok, put_configuration_set_vdm_options_response(), tuple()} |
    {error, any()} |
    {error, put_configuration_set_vdm_options_errors(), tuple()}.
put_configuration_set_vdm_options(Client, ConfigurationSetName, Input0, Options0) ->
    Method = put,
    Path = ["/v2/email/configuration-sets/", aws_util:encode_uri(ConfigurationSetName), "/vdm-options"],
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
%% associated with your Amazon Web Services account.
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
    Path = ["/v2/email/dedicated-ips/", aws_util:encode_uri(Ip), "/pool"],
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

%% @doc Used to convert a dedicated IP pool to a different scaling mode.
%%
%% `MANAGED' pools cannot be converted to `STANDARD' scaling mode.
-spec put_dedicated_ip_pool_scaling_attributes(aws_client:aws_client(), binary() | list(), put_dedicated_ip_pool_scaling_attributes_request()) ->
    {ok, put_dedicated_ip_pool_scaling_attributes_response(), tuple()} |
    {error, any()} |
    {error, put_dedicated_ip_pool_scaling_attributes_errors(), tuple()}.
put_dedicated_ip_pool_scaling_attributes(Client, PoolName, Input) ->
    put_dedicated_ip_pool_scaling_attributes(Client, PoolName, Input, []).

-spec put_dedicated_ip_pool_scaling_attributes(aws_client:aws_client(), binary() | list(), put_dedicated_ip_pool_scaling_attributes_request(), proplists:proplist()) ->
    {ok, put_dedicated_ip_pool_scaling_attributes_response(), tuple()} |
    {error, any()} |
    {error, put_dedicated_ip_pool_scaling_attributes_errors(), tuple()}.
put_dedicated_ip_pool_scaling_attributes(Client, PoolName, Input0, Options0) ->
    Method = put,
    Path = ["/v2/email/dedicated-ip-pools/", aws_util:encode_uri(PoolName), "/scaling"],
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
    Path = ["/v2/email/dedicated-ips/", aws_util:encode_uri(Ip), "/warmup"],
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

%% @doc Enable or disable the Deliverability dashboard.
%%
%% When you enable the Deliverability dashboard, you gain
%% access to reputation, deliverability, and other metrics for the domains
%% that you use to
%% send email. You also gain the ability to perform predictive inbox
%% placement tests.
%%
%% When you use the Deliverability dashboard, you pay a monthly subscription
%% charge, in addition
%% to any other fees that you accrue by using Amazon SES and other Amazon Web
%% Services services. For more
%% information about the features and cost of a Deliverability dashboard
%% subscription, see Amazon SES Pricing: http://aws.amazon.com/ses/pricing/.
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
    Path = ["/v2/email/deliverability-dashboard"],
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

%% @doc Used to associate a configuration set with an email identity.
-spec put_email_identity_configuration_set_attributes(aws_client:aws_client(), binary() | list(), put_email_identity_configuration_set_attributes_request()) ->
    {ok, put_email_identity_configuration_set_attributes_response(), tuple()} |
    {error, any()} |
    {error, put_email_identity_configuration_set_attributes_errors(), tuple()}.
put_email_identity_configuration_set_attributes(Client, EmailIdentity, Input) ->
    put_email_identity_configuration_set_attributes(Client, EmailIdentity, Input, []).

-spec put_email_identity_configuration_set_attributes(aws_client:aws_client(), binary() | list(), put_email_identity_configuration_set_attributes_request(), proplists:proplist()) ->
    {ok, put_email_identity_configuration_set_attributes_response(), tuple()} |
    {error, any()} |
    {error, put_email_identity_configuration_set_attributes_errors(), tuple()}.
put_email_identity_configuration_set_attributes(Client, EmailIdentity, Input0, Options0) ->
    Method = put,
    Path = ["/v2/email/identities/", aws_util:encode_uri(EmailIdentity), "/configuration-set"],
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
    Path = ["/v2/email/identities/", aws_util:encode_uri(EmailIdentity), "/dkim"],
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

%% @doc Used to configure or change the DKIM authentication settings for an
%% email domain
%% identity.
%%
%% You can use this operation to do any of the following:
%%
%% Update the signing attributes for an identity that uses Bring Your Own
%% DKIM
%% (BYODKIM).
%%
%% Update the key length that should be used for Easy DKIM.
%%
%% Change from using no DKIM authentication to using Easy DKIM.
%%
%% Change from using no DKIM authentication to using BYODKIM.
%%
%% Change from using Easy DKIM to using BYODKIM.
%%
%% Change from using BYODKIM to using Easy DKIM.
-spec put_email_identity_dkim_signing_attributes(aws_client:aws_client(), binary() | list(), put_email_identity_dkim_signing_attributes_request()) ->
    {ok, put_email_identity_dkim_signing_attributes_response(), tuple()} |
    {error, any()} |
    {error, put_email_identity_dkim_signing_attributes_errors(), tuple()}.
put_email_identity_dkim_signing_attributes(Client, EmailIdentity, Input) ->
    put_email_identity_dkim_signing_attributes(Client, EmailIdentity, Input, []).

-spec put_email_identity_dkim_signing_attributes(aws_client:aws_client(), binary() | list(), put_email_identity_dkim_signing_attributes_request(), proplists:proplist()) ->
    {ok, put_email_identity_dkim_signing_attributes_response(), tuple()} |
    {error, any()} |
    {error, put_email_identity_dkim_signing_attributes_errors(), tuple()}.
put_email_identity_dkim_signing_attributes(Client, EmailIdentity, Input0, Options0) ->
    Method = put,
    Path = ["/v1/email/identities/", aws_util:encode_uri(EmailIdentity), "/dkim/signing"],
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
%% If the value is `true', you receive email notifications when bounce or
%% complaint events occur. These notifications are sent to the address that
%% you specified
%% in the `Return-Path' header of the original email.
%%
%% You're required to have a method of tracking bounces and complaints.
%% If you haven't
%% set up another mechanism for receiving bounce or complaint notifications
%% (for example,
%% by setting up an event destination), you receive an email notification
%% when these events
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
    Path = ["/v2/email/identities/", aws_util:encode_uri(EmailIdentity), "/feedback"],
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
    Path = ["/v2/email/identities/", aws_util:encode_uri(EmailIdentity), "/mail-from"],
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

%% @doc Adds an email address to the suppression list for your account.
-spec put_suppressed_destination(aws_client:aws_client(), put_suppressed_destination_request()) ->
    {ok, put_suppressed_destination_response(), tuple()} |
    {error, any()} |
    {error, put_suppressed_destination_errors(), tuple()}.
put_suppressed_destination(Client, Input) ->
    put_suppressed_destination(Client, Input, []).

-spec put_suppressed_destination(aws_client:aws_client(), put_suppressed_destination_request(), proplists:proplist()) ->
    {ok, put_suppressed_destination_response(), tuple()} |
    {error, any()} |
    {error, put_suppressed_destination_errors(), tuple()}.
put_suppressed_destination(Client, Input0, Options0) ->
    Method = put,
    Path = ["/v2/email/suppression/addresses"],
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

%% @doc Composes an email message to multiple destinations.
-spec send_bulk_email(aws_client:aws_client(), send_bulk_email_request()) ->
    {ok, send_bulk_email_response(), tuple()} |
    {error, any()} |
    {error, send_bulk_email_errors(), tuple()}.
send_bulk_email(Client, Input) ->
    send_bulk_email(Client, Input, []).

-spec send_bulk_email(aws_client:aws_client(), send_bulk_email_request(), proplists:proplist()) ->
    {ok, send_bulk_email_response(), tuple()} |
    {error, any()} |
    {error, send_bulk_email_errors(), tuple()}.
send_bulk_email(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/email/outbound-bulk-emails"],
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

%% @doc Adds an email address to the list of identities for your Amazon SES
%% account in the current
%% Amazon Web Services Region and attempts to verify it.
%%
%% As a result of executing this
%% operation, a customized verification email is sent to the specified
%% address.
%%
%% To use this operation, you must first create a custom verification email
%% template. For
%% more information about creating and using custom verification email
%% templates, see
%% Using
%% custom verification email templates:
%% https://docs.aws.amazon.com/ses/latest/dg/creating-identities.html#send-email-verify-address-custom
%% in the Amazon SES Developer
%% Guide.
%%
%% You can execute this operation no more than once per second.
-spec send_custom_verification_email(aws_client:aws_client(), send_custom_verification_email_request()) ->
    {ok, send_custom_verification_email_response(), tuple()} |
    {error, any()} |
    {error, send_custom_verification_email_errors(), tuple()}.
send_custom_verification_email(Client, Input) ->
    send_custom_verification_email(Client, Input, []).

-spec send_custom_verification_email(aws_client:aws_client(), send_custom_verification_email_request(), proplists:proplist()) ->
    {ok, send_custom_verification_email_response(), tuple()} |
    {error, any()} |
    {error, send_custom_verification_email_errors(), tuple()}.
send_custom_verification_email(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/email/outbound-custom-verification-emails"],
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
%% You can use the Amazon SES API v2 to send the following types of
%% messages:
%%
%% Simple – A standard email message. When
%% you create this type of message, you specify the sender, the recipient,
%% and the
%% message body, and Amazon SES assembles the message for you.
%%
%% Raw – A raw, MIME-formatted email
%% message. When you send this type of email, you have to specify all of the
%% message headers, as well as the message body. You can use this message
%% type to
%% send messages that contain attachments. The message that you specify has
%% to be a
%% valid MIME message.
%%
%% Templated – A message that contains
%% personalization tags. When you send this type of email, Amazon SES API v2
%% automatically
%% replaces the tags with values that you specify.
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
    Path = ["/v2/email/outbound-emails"],
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
%% resource. Tags can help you categorize and manage resources in different
%% ways, such as
%% by purpose, owner, environment, or other criteria. A resource can have as
%% many as 50
%% tags.
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
    Path = ["/v2/email/tags"],
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

%% @doc Creates a preview of the MIME content of an email when provided with
%% a template and a
%% set of replacement data.
%%
%% You can execute this operation no more than once per second.
-spec test_render_email_template(aws_client:aws_client(), binary() | list(), test_render_email_template_request()) ->
    {ok, test_render_email_template_response(), tuple()} |
    {error, any()} |
    {error, test_render_email_template_errors(), tuple()}.
test_render_email_template(Client, TemplateName, Input) ->
    test_render_email_template(Client, TemplateName, Input, []).

-spec test_render_email_template(aws_client:aws_client(), binary() | list(), test_render_email_template_request(), proplists:proplist()) ->
    {ok, test_render_email_template_response(), tuple()} |
    {error, any()} |
    {error, test_render_email_template_errors(), tuple()}.
test_render_email_template(Client, TemplateName, Input0, Options0) ->
    Method = post,
    Path = ["/v2/email/templates/", aws_util:encode_uri(TemplateName), "/render"],
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
    Path = ["/v2/email/tags"],
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
%% Events include message sends, deliveries, opens, clicks, bounces,
%% and complaints. Event destinations are places that you can send
%% information about these events to. For example, you can send event data to
%% Amazon EventBridge and
%% associate a rule to send the event to the specified target.
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
    Path = ["/v2/email/configuration-sets/", aws_util:encode_uri(ConfigurationSetName), "/event-destinations/", aws_util:encode_uri(EventDestinationName), ""],
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

%% @doc Updates a contact's preferences for a list.
%%
%% You must specify all existing topic preferences in the
%% `TopicPreferences' object, not just the ones that need updating;
%% otherwise, all your existing preferences will be removed.
-spec update_contact(aws_client:aws_client(), binary() | list(), binary() | list(), update_contact_request()) ->
    {ok, update_contact_response(), tuple()} |
    {error, any()} |
    {error, update_contact_errors(), tuple()}.
update_contact(Client, ContactListName, EmailAddress, Input) ->
    update_contact(Client, ContactListName, EmailAddress, Input, []).

-spec update_contact(aws_client:aws_client(), binary() | list(), binary() | list(), update_contact_request(), proplists:proplist()) ->
    {ok, update_contact_response(), tuple()} |
    {error, any()} |
    {error, update_contact_errors(), tuple()}.
update_contact(Client, ContactListName, EmailAddress, Input0, Options0) ->
    Method = put,
    Path = ["/v2/email/contact-lists/", aws_util:encode_uri(ContactListName), "/contacts/", aws_util:encode_uri(EmailAddress), ""],
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

%% @doc Updates contact list metadata.
%%
%% This operation does a complete replacement.
-spec update_contact_list(aws_client:aws_client(), binary() | list(), update_contact_list_request()) ->
    {ok, update_contact_list_response(), tuple()} |
    {error, any()} |
    {error, update_contact_list_errors(), tuple()}.
update_contact_list(Client, ContactListName, Input) ->
    update_contact_list(Client, ContactListName, Input, []).

-spec update_contact_list(aws_client:aws_client(), binary() | list(), update_contact_list_request(), proplists:proplist()) ->
    {ok, update_contact_list_response(), tuple()} |
    {error, any()} |
    {error, update_contact_list_errors(), tuple()}.
update_contact_list(Client, ContactListName, Input0, Options0) ->
    Method = put,
    Path = ["/v2/email/contact-lists/", aws_util:encode_uri(ContactListName), ""],
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

%% @doc Updates an existing custom verification email template.
%%
%% For more information about custom verification email templates, see Using
%% custom verification email templates:
%% https://docs.aws.amazon.com/ses/latest/dg/creating-identities.html#send-email-verify-address-custom
%% in the Amazon SES Developer
%% Guide.
%%
%% You can execute this operation no more than once per second.
-spec update_custom_verification_email_template(aws_client:aws_client(), binary() | list(), update_custom_verification_email_template_request()) ->
    {ok, update_custom_verification_email_template_response(), tuple()} |
    {error, any()} |
    {error, update_custom_verification_email_template_errors(), tuple()}.
update_custom_verification_email_template(Client, TemplateName, Input) ->
    update_custom_verification_email_template(Client, TemplateName, Input, []).

-spec update_custom_verification_email_template(aws_client:aws_client(), binary() | list(), update_custom_verification_email_template_request(), proplists:proplist()) ->
    {ok, update_custom_verification_email_template_response(), tuple()} |
    {error, any()} |
    {error, update_custom_verification_email_template_errors(), tuple()}.
update_custom_verification_email_template(Client, TemplateName, Input0, Options0) ->
    Method = put,
    Path = ["/v2/email/custom-verification-email-templates/", aws_util:encode_uri(TemplateName), ""],
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

%% @doc Updates the specified sending authorization policy for the given
%% identity (an email
%% address or a domain).
%%
%% This API returns successfully even if a policy with the specified
%% name does not exist.
%%
%% This API is for the identity owner only. If you have not verified the
%% identity,
%% this API will return an error.
%%
%% Sending authorization is a feature that enables an identity owner to
%% authorize other
%% senders to use its identities. For information about using sending
%% authorization, see
%% the Amazon SES Developer
%% Guide:
%% https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html.
%%
%% You can execute this operation no more than once per second.
-spec update_email_identity_policy(aws_client:aws_client(), binary() | list(), binary() | list(), update_email_identity_policy_request()) ->
    {ok, update_email_identity_policy_response(), tuple()} |
    {error, any()} |
    {error, update_email_identity_policy_errors(), tuple()}.
update_email_identity_policy(Client, EmailIdentity, PolicyName, Input) ->
    update_email_identity_policy(Client, EmailIdentity, PolicyName, Input, []).

-spec update_email_identity_policy(aws_client:aws_client(), binary() | list(), binary() | list(), update_email_identity_policy_request(), proplists:proplist()) ->
    {ok, update_email_identity_policy_response(), tuple()} |
    {error, any()} |
    {error, update_email_identity_policy_errors(), tuple()}.
update_email_identity_policy(Client, EmailIdentity, PolicyName, Input0, Options0) ->
    Method = put,
    Path = ["/v2/email/identities/", aws_util:encode_uri(EmailIdentity), "/policies/", aws_util:encode_uri(PolicyName), ""],
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

%% @doc Updates an email template.
%%
%% Email templates enable you to send personalized email to
%% one or more destinations in a single API operation. For more information,
%% see the Amazon SES Developer
%% Guide:
%% https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html.
%%
%% You can execute this operation no more than once per second.
-spec update_email_template(aws_client:aws_client(), binary() | list(), update_email_template_request()) ->
    {ok, update_email_template_response(), tuple()} |
    {error, any()} |
    {error, update_email_template_errors(), tuple()}.
update_email_template(Client, TemplateName, Input) ->
    update_email_template(Client, TemplateName, Input, []).

-spec update_email_template(aws_client:aws_client(), binary() | list(), update_email_template_request(), proplists:proplist()) ->
    {ok, update_email_template_response(), tuple()} |
    {error, any()} |
    {error, update_email_template_errors(), tuple()}.
update_email_template(Client, TemplateName, Input0, Options0) ->
    Method = put,
    Path = ["/v2/email/templates/", aws_util:encode_uri(TemplateName), ""],
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
