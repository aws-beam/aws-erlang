%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon SES Mail Manager API
%%
%% The Amazon SES Mail Manager API contains operations and data types that
%% comprise the Mail Manager feature of Amazon Simple Email Service (SES):
%% http://aws.amazon.com/ses.
%%
%% Mail Manager is a set of Amazon SES email gateway features designed to
%% help you strengthen your organization's email infrastructure, simplify
%% email workflow management, and streamline email compliance control. To
%% learn more, see the Mail Manager chapter:
%% https://docs.aws.amazon.com/ses/latest/dg/eb.html in the Amazon SES
%% Developer Guide.
-module(aws_mailmanager).

-export([create_addon_instance/2,
         create_addon_instance/3,
         create_addon_subscription/2,
         create_addon_subscription/3,
         create_address_list/2,
         create_address_list/3,
         create_address_list_import_job/2,
         create_address_list_import_job/3,
         create_archive/2,
         create_archive/3,
         create_ingress_point/2,
         create_ingress_point/3,
         create_relay/2,
         create_relay/3,
         create_rule_set/2,
         create_rule_set/3,
         create_traffic_policy/2,
         create_traffic_policy/3,
         delete_addon_instance/2,
         delete_addon_instance/3,
         delete_addon_subscription/2,
         delete_addon_subscription/3,
         delete_address_list/2,
         delete_address_list/3,
         delete_archive/2,
         delete_archive/3,
         delete_ingress_point/2,
         delete_ingress_point/3,
         delete_relay/2,
         delete_relay/3,
         delete_rule_set/2,
         delete_rule_set/3,
         delete_traffic_policy/2,
         delete_traffic_policy/3,
         deregister_member_from_address_list/2,
         deregister_member_from_address_list/3,
         get_addon_instance/2,
         get_addon_instance/3,
         get_addon_subscription/2,
         get_addon_subscription/3,
         get_address_list/2,
         get_address_list/3,
         get_address_list_import_job/2,
         get_address_list_import_job/3,
         get_archive/2,
         get_archive/3,
         get_archive_export/2,
         get_archive_export/3,
         get_archive_message/2,
         get_archive_message/3,
         get_archive_message_content/2,
         get_archive_message_content/3,
         get_archive_search/2,
         get_archive_search/3,
         get_archive_search_results/2,
         get_archive_search_results/3,
         get_ingress_point/2,
         get_ingress_point/3,
         get_member_of_address_list/2,
         get_member_of_address_list/3,
         get_relay/2,
         get_relay/3,
         get_rule_set/2,
         get_rule_set/3,
         get_traffic_policy/2,
         get_traffic_policy/3,
         list_addon_instances/2,
         list_addon_instances/3,
         list_addon_subscriptions/2,
         list_addon_subscriptions/3,
         list_address_list_import_jobs/2,
         list_address_list_import_jobs/3,
         list_address_lists/2,
         list_address_lists/3,
         list_archive_exports/2,
         list_archive_exports/3,
         list_archive_searches/2,
         list_archive_searches/3,
         list_archives/2,
         list_archives/3,
         list_ingress_points/2,
         list_ingress_points/3,
         list_members_of_address_list/2,
         list_members_of_address_list/3,
         list_relays/2,
         list_relays/3,
         list_rule_sets/2,
         list_rule_sets/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_traffic_policies/2,
         list_traffic_policies/3,
         register_member_to_address_list/2,
         register_member_to_address_list/3,
         start_address_list_import_job/2,
         start_address_list_import_job/3,
         start_archive_export/2,
         start_archive_export/3,
         start_archive_search/2,
         start_archive_search/3,
         stop_address_list_import_job/2,
         stop_address_list_import_job/3,
         stop_archive_export/2,
         stop_archive_export/3,
         stop_archive_search/2,
         stop_archive_search/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_archive/2,
         update_archive/3,
         update_ingress_point/2,
         update_ingress_point/3,
         update_relay/2,
         update_relay/3,
         update_rule_set/2,
         update_rule_set/3,
         update_traffic_policy/2,
         update_traffic_policy/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% create_addon_instance_response() :: #{
%%   <<"AddonInstanceId">> => string()
%% }
-type create_addon_instance_response() :: #{binary() => any()}.

%% Example:
%% import_data_format() :: #{
%%   <<"ImportDataType">> => list(any())
%% }
-type import_data_format() :: #{binary() => any()}.

%% Example:
%% list_traffic_policies_request() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PageSize">> => integer()
%% }
-type list_traffic_policies_request() :: #{binary() => any()}.

%% Example:
%% ingress_analysis() :: #{
%%   <<"Analyzer">> => string(),
%%   <<"ResultField">> => string()
%% }
-type ingress_analysis() :: #{binary() => any()}.

%% Example:
%% get_archive_message_content_response() :: #{
%%   <<"Body">> => message_body()
%% }
-type get_archive_message_content_response() :: #{binary() => any()}.

%% Example:
%% ingress_point_password_configuration() :: #{
%%   <<"PreviousSmtpPasswordExpiryTimestamp">> => [non_neg_integer()],
%%   <<"PreviousSmtpPasswordVersion">> => [string()],
%%   <<"SmtpPasswordVersion">> => [string()]
%% }
-type ingress_point_password_configuration() :: #{binary() => any()}.

%% Example:
%% get_address_list_import_job_response() :: #{
%%   <<"AddressListId">> => string(),
%%   <<"CompletedTimestamp">> => [non_neg_integer()],
%%   <<"CreatedTimestamp">> => [non_neg_integer()],
%%   <<"Error">> => string(),
%%   <<"FailedItemsCount">> => integer(),
%%   <<"ImportDataFormat">> => import_data_format(),
%%   <<"ImportedItemsCount">> => integer(),
%%   <<"JobId">> => string(),
%%   <<"Name">> => string(),
%%   <<"PreSignedUrl">> => string(),
%%   <<"StartTimestamp">> => [non_neg_integer()],
%%   <<"Status">> => list(any())
%% }
-type get_address_list_import_job_response() :: #{binary() => any()}.

%% Example:
%% start_address_list_import_job_response() :: #{

%% }
-type start_address_list_import_job_response() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"Tags">> := list(tag()())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% get_archive_message_response() :: #{
%%   <<"Envelope">> => envelope(),
%%   <<"MessageDownloadLink">> => string(),
%%   <<"Metadata">> => metadata()
%% }
-type get_archive_message_response() :: #{binary() => any()}.

%% Example:
%% update_relay_response() :: #{

%% }
-type update_relay_response() :: #{binary() => any()}.

%% Example:
%% rule_dmarc_expression() :: #{
%%   <<"Operator">> => list(any()),
%%   <<"Values">> => list(list(any())())
%% }
-type rule_dmarc_expression() :: #{binary() => any()}.

%% Example:
%% drop_action() :: #{

%% }
-type drop_action() :: #{binary() => any()}.

%% Example:
%% update_rule_set_request() :: #{
%%   <<"RuleSetId">> := string(),
%%   <<"RuleSetName">> => string(),
%%   <<"Rules">> => list(rule()())
%% }
-type update_rule_set_request() :: #{binary() => any()}.

%% Example:
%% addon_instance() :: #{
%%   <<"AddonInstanceArn">> => string(),
%%   <<"AddonInstanceId">> => string(),
%%   <<"AddonName">> => string(),
%%   <<"AddonSubscriptionId">> => string(),
%%   <<"CreatedTimestamp">> => [non_neg_integer()]
%% }
-type addon_instance() :: #{binary() => any()}.

%% Example:
%% get_archive_search_results_response() :: #{
%%   <<"Rows">> => list(row()())
%% }
-type get_archive_search_results_response() :: #{binary() => any()}.

%% Example:
%% list_archives_response() :: #{
%%   <<"Archives">> => list(archive()()),
%%   <<"NextToken">> => string()
%% }
-type list_archives_response() :: #{binary() => any()}.

%% Example:
%% stop_archive_search_response() :: #{

%% }
-type stop_archive_search_response() :: #{binary() => any()}.

%% Example:
%% list_ingress_points_request() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PageSize">> => integer()
%% }
-type list_ingress_points_request() :: #{binary() => any()}.

%% Example:
%% create_traffic_policy_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"DefaultAction">> := list(any()),
%%   <<"MaxMessageSizeBytes">> => integer(),
%%   <<"PolicyStatements">> := list(policy_statement()()),
%%   <<"Tags">> => list(tag()()),
%%   <<"TrafficPolicyName">> := string()
%% }
-type create_traffic_policy_request() :: #{binary() => any()}.

%% Example:
%% list_address_lists_request() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PageSize">> => integer()
%% }
-type list_address_lists_request() :: #{binary() => any()}.

%% Example:
%% create_addon_instance_request() :: #{
%%   <<"AddonSubscriptionId">> := string(),
%%   <<"ClientToken">> => string(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_addon_instance_request() :: #{binary() => any()}.

%% Example:
%% update_ingress_point_request() :: #{
%%   <<"IngressPointConfiguration">> => list(),
%%   <<"IngressPointId">> := string(),
%%   <<"IngressPointName">> => string(),
%%   <<"RuleSetId">> => string(),
%%   <<"StatusToUpdate">> => list(any()),
%%   <<"TrafficPolicyId">> => string()
%% }
-type update_ingress_point_request() :: #{binary() => any()}.

%% Example:
%% relay_action() :: #{
%%   <<"ActionFailurePolicy">> => list(any()),
%%   <<"MailFrom">> => list(any()),
%%   <<"Relay">> => string()
%% }
-type relay_action() :: #{binary() => any()}.

%% Example:
%% create_address_list_request() :: #{
%%   <<"AddressListName">> := string(),
%%   <<"ClientToken">> => string(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_address_list_request() :: #{binary() => any()}.

%% Example:
%% rule_number_expression() :: #{
%%   <<"Evaluate">> => list(),
%%   <<"Operator">> => list(any()),
%%   <<"Value">> => [float()]
%% }
-type rule_number_expression() :: #{binary() => any()}.

%% Example:
%% export_status() :: #{
%%   <<"CompletionTimestamp">> => [non_neg_integer()],
%%   <<"ErrorMessage">> => string(),
%%   <<"State">> => list(any()),
%%   <<"SubmissionTimestamp">> => [non_neg_integer()]
%% }
-type export_status() :: #{binary() => any()}.

%% Example:
%% delete_address_list_response() :: #{

%% }
-type delete_address_list_response() :: #{binary() => any()}.

%% Example:
%% get_archive_search_response() :: #{
%%   <<"ArchiveId">> => string(),
%%   <<"Filters">> => archive_filters(),
%%   <<"FromTimestamp">> => [non_neg_integer()],
%%   <<"MaxResults">> => integer(),
%%   <<"Status">> => search_status(),
%%   <<"ToTimestamp">> => [non_neg_integer()]
%% }
-type get_archive_search_response() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% list_members_of_address_list_request() :: #{
%%   <<"AddressListId">> := string(),
%%   <<"Filter">> => address_filter(),
%%   <<"NextToken">> => string(),
%%   <<"PageSize">> => integer()
%% }
-type list_members_of_address_list_request() :: #{binary() => any()}.

%% Example:
%% get_relay_response() :: #{
%%   <<"Authentication">> => list(),
%%   <<"CreatedTimestamp">> => [non_neg_integer()],
%%   <<"LastModifiedTimestamp">> => [non_neg_integer()],
%%   <<"RelayArn">> => string(),
%%   <<"RelayId">> => string(),
%%   <<"RelayName">> => string(),
%%   <<"ServerName">> => string(),
%%   <<"ServerPort">> => integer()
%% }
-type get_relay_response() :: #{binary() => any()}.

%% Example:
%% s3_action() :: #{
%%   <<"ActionFailurePolicy">> => list(any()),
%%   <<"RoleArn">> => string(),
%%   <<"S3Bucket">> => string(),
%%   <<"S3Prefix">> => string(),
%%   <<"S3SseKmsKeyId">> => string()
%% }
-type s3_action() :: #{binary() => any()}.

%% Example:
%% stop_address_list_import_job_request() :: #{
%%   <<"JobId">> := string()
%% }
-type stop_address_list_import_job_request() :: #{binary() => any()}.

%% Example:
%% list_addon_subscriptions_response() :: #{
%%   <<"AddonSubscriptions">> => list(addon_subscription()()),
%%   <<"NextToken">> => string()
%% }
-type list_addon_subscriptions_response() :: #{binary() => any()}.

%% Example:
%% delete_addon_instance_request() :: #{
%%   <<"AddonInstanceId">> := string()
%% }
-type delete_addon_instance_request() :: #{binary() => any()}.

%% Example:
%% update_traffic_policy_response() :: #{

%% }
-type update_traffic_policy_response() :: #{binary() => any()}.

%% Example:
%% rule_ip_expression() :: #{
%%   <<"Evaluate">> => list(),
%%   <<"Operator">> => list(any()),
%%   <<"Values">> => list(string()())
%% }
-type rule_ip_expression() :: #{binary() => any()}.

%% Example:
%% start_archive_export_request() :: #{
%%   <<"ArchiveId">> := string(),
%%   <<"ExportDestinationConfiguration">> := list(),
%%   <<"Filters">> => archive_filters(),
%%   <<"FromTimestamp">> := [non_neg_integer()],
%%   <<"IncludeMetadata">> => [boolean()],
%%   <<"MaxResults">> => integer(),
%%   <<"ToTimestamp">> := [non_neg_integer()]
%% }
-type start_archive_export_request() :: #{binary() => any()}.

%% Example:
%% relay() :: #{
%%   <<"LastModifiedTimestamp">> => [non_neg_integer()],
%%   <<"RelayId">> => string(),
%%   <<"RelayName">> => string()
%% }
-type relay() :: #{binary() => any()}.

%% Example:
%% list_addon_instances_response() :: #{
%%   <<"AddonInstances">> => list(addon_instance()()),
%%   <<"NextToken">> => string()
%% }
-type list_addon_instances_response() :: #{binary() => any()}.

%% Example:
%% metadata() :: #{
%%   <<"ConfigurationSet">> => [string()],
%%   <<"IngressPointId">> => string(),
%%   <<"RuleSetId">> => string(),
%%   <<"SenderHostname">> => [string()],
%%   <<"SenderIpAddress">> => string(),
%%   <<"SendingMethod">> => [string()],
%%   <<"SendingPool">> => [string()],
%%   <<"SourceArn">> => [string()],
%%   <<"SourceIdentity">> => [string()],
%%   <<"Timestamp">> => [non_neg_integer()],
%%   <<"TlsCipherSuite">> => [string()],
%%   <<"TlsProtocol">> => [string()],
%%   <<"TrafficPolicyId">> => string()
%% }
-type metadata() :: #{binary() => any()}.

%% Example:
%% list_traffic_policies_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"TrafficPolicies">> => list(traffic_policy()())
%% }
-type list_traffic_policies_response() :: #{binary() => any()}.

%% Example:
%% message_body() :: #{
%%   <<"Html">> => [string()],
%%   <<"MessageMalformed">> => [boolean()],
%%   <<"Text">> => [string()]
%% }
-type message_body() :: #{binary() => any()}.

%% Example:
%% get_address_list_import_job_request() :: #{
%%   <<"JobId">> := string()
%% }
-type get_address_list_import_job_request() :: #{binary() => any()}.

%% Example:
%% delete_rule_set_response() :: #{

%% }
-type delete_rule_set_response() :: #{binary() => any()}.

%% Example:
%% get_addon_subscription_request() :: #{
%%   <<"AddonSubscriptionId">> := string()
%% }
-type get_addon_subscription_request() :: #{binary() => any()}.

%% Example:
%% get_archive_search_request() :: #{
%%   <<"SearchId">> := string()
%% }
-type get_archive_search_request() :: #{binary() => any()}.

%% Example:
%% start_archive_export_response() :: #{
%%   <<"ExportId">> => string()
%% }
-type start_archive_export_response() :: #{binary() => any()}.

%% Example:
%% policy_statement() :: #{
%%   <<"Action">> => list(any()),
%%   <<"Conditions">> => list(list()())
%% }
-type policy_statement() :: #{binary() => any()}.

%% Example:
%% traffic_policy() :: #{
%%   <<"DefaultAction">> => list(any()),
%%   <<"TrafficPolicyId">> => string(),
%%   <<"TrafficPolicyName">> => string()
%% }
-type traffic_policy() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"TagKeys">> := list(string()())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% get_ingress_point_response() :: #{
%%   <<"ARecord">> => string(),
%%   <<"CreatedTimestamp">> => [non_neg_integer()],
%%   <<"IngressPointArn">> => string(),
%%   <<"IngressPointAuthConfiguration">> => ingress_point_auth_configuration(),
%%   <<"IngressPointId">> => string(),
%%   <<"IngressPointName">> => string(),
%%   <<"LastUpdatedTimestamp">> => [non_neg_integer()],
%%   <<"NetworkConfiguration">> => list(),
%%   <<"RuleSetId">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"TrafficPolicyId">> => string(),
%%   <<"Type">> => list(any())
%% }
-type get_ingress_point_response() :: #{binary() => any()}.

%% Example:
%% get_address_list_response() :: #{
%%   <<"AddressListArn">> => string(),
%%   <<"AddressListId">> => string(),
%%   <<"AddressListName">> => string(),
%%   <<"CreatedTimestamp">> => [non_neg_integer()],
%%   <<"LastUpdatedTimestamp">> => [non_neg_integer()]
%% }
-type get_address_list_response() :: #{binary() => any()}.

%% Example:
%% get_archive_message_request() :: #{
%%   <<"ArchivedMessageId">> := string()
%% }
-type get_archive_message_request() :: #{binary() => any()}.

%% Example:
%% rule_boolean_expression() :: #{
%%   <<"Evaluate">> => list(),
%%   <<"Operator">> => list(any())
%% }
-type rule_boolean_expression() :: #{binary() => any()}.

%% Example:
%% start_address_list_import_job_request() :: #{
%%   <<"JobId">> := string()
%% }
-type start_address_list_import_job_request() :: #{binary() => any()}.

%% Example:
%% send_action() :: #{
%%   <<"ActionFailurePolicy">> => list(any()),
%%   <<"RoleArn">> => string()
%% }
-type send_action() :: #{binary() => any()}.

%% Example:
%% get_rule_set_response() :: #{
%%   <<"CreatedDate">> => [non_neg_integer()],
%%   <<"LastModificationDate">> => [non_neg_integer()],
%%   <<"RuleSetArn">> => string(),
%%   <<"RuleSetId">> => string(),
%%   <<"RuleSetName">> => string(),
%%   <<"Rules">> => list(rule()())
%% }
-type get_rule_set_response() :: #{binary() => any()}.

%% Example:
%% deliver_to_mailbox_action() :: #{
%%   <<"ActionFailurePolicy">> => list(any()),
%%   <<"MailboxArn">> => string(),
%%   <<"RoleArn">> => string()
%% }
-type deliver_to_mailbox_action() :: #{binary() => any()}.

%% Example:
%% rule_verdict_expression() :: #{
%%   <<"Evaluate">> => list(),
%%   <<"Operator">> => list(any()),
%%   <<"Values">> => list(list(any())())
%% }
-type rule_verdict_expression() :: #{binary() => any()}.

%% Example:
%% get_relay_request() :: #{
%%   <<"RelayId">> := string()
%% }
-type get_relay_request() :: #{binary() => any()}.

%% Example:
%% register_member_to_address_list_response() :: #{

%% }
-type register_member_to_address_list_response() :: #{binary() => any()}.

%% Example:
%% delete_archive_response() :: #{

%% }
-type delete_archive_response() :: #{binary() => any()}.

%% Example:
%% get_addon_instance_response() :: #{
%%   <<"AddonInstanceArn">> => string(),
%%   <<"AddonName">> => string(),
%%   <<"AddonSubscriptionId">> => string(),
%%   <<"CreatedTimestamp">> => [non_neg_integer()]
%% }
-type get_addon_instance_response() :: #{binary() => any()}.

%% Example:
%% ingress_boolean_expression() :: #{
%%   <<"Evaluate">> => list(),
%%   <<"Operator">> => list(any())
%% }
-type ingress_boolean_expression() :: #{binary() => any()}.

%% Example:
%% create_address_list_import_job_request() :: #{
%%   <<"AddressListId">> := string(),
%%   <<"ClientToken">> => string(),
%%   <<"ImportDataFormat">> := import_data_format(),
%%   <<"Name">> := string()
%% }
-type create_address_list_import_job_request() :: #{binary() => any()}.

%% Example:
%% search_summary() :: #{
%%   <<"SearchId">> => string(),
%%   <<"Status">> => search_status()
%% }
-type search_summary() :: #{binary() => any()}.

%% Example:
%% create_archive_request() :: #{
%%   <<"ArchiveName">> := string(),
%%   <<"ClientToken">> => string(),
%%   <<"KmsKeyArn">> => string(),
%%   <<"Retention">> => list(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_archive_request() :: #{binary() => any()}.

%% Example:
%% delete_archive_request() :: #{
%%   <<"ArchiveId">> := string()
%% }
-type delete_archive_request() :: #{binary() => any()}.

%% Example:
%% ingress_point() :: #{
%%   <<"ARecord">> => string(),
%%   <<"IngressPointId">> => string(),
%%   <<"IngressPointName">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Type">> => list(any())
%% }
-type ingress_point() :: #{binary() => any()}.

%% Example:
%% delete_addon_instance_response() :: #{

%% }
-type delete_addon_instance_response() :: #{binary() => any()}.

%% Example:
%% public_network_configuration() :: #{
%%   <<"IpType">> => list(any())
%% }
-type public_network_configuration() :: #{binary() => any()}.

%% Example:
%% create_address_list_import_job_response() :: #{
%%   <<"JobId">> => string(),
%%   <<"PreSignedUrl">> => string()
%% }
-type create_address_list_import_job_response() :: #{binary() => any()}.

%% Example:
%% ingress_is_in_address_list() :: #{
%%   <<"AddressLists">> => list(string()()),
%%   <<"Attribute">> => list(any())
%% }
-type ingress_is_in_address_list() :: #{binary() => any()}.

%% Example:
%% sns_action() :: #{
%%   <<"ActionFailurePolicy">> => list(any()),
%%   <<"Encoding">> => list(any()),
%%   <<"PayloadType">> => list(any()),
%%   <<"RoleArn">> => string(),
%%   <<"TopicArn">> => string()
%% }
-type sns_action() :: #{binary() => any()}.

%% Example:
%% list_archives_request() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PageSize">> => integer()
%% }
-type list_archives_request() :: #{binary() => any()}.

%% Example:
%% create_addon_subscription_response() :: #{
%%   <<"AddonSubscriptionId">> => string()
%% }
-type create_addon_subscription_response() :: #{binary() => any()}.

%% Example:
%% get_archive_response() :: #{
%%   <<"ArchiveArn">> => string(),
%%   <<"ArchiveId">> => string(),
%%   <<"ArchiveName">> => string(),
%%   <<"ArchiveState">> => list(any()),
%%   <<"CreatedTimestamp">> => [non_neg_integer()],
%%   <<"KmsKeyArn">> => string(),
%%   <<"LastUpdatedTimestamp">> => [non_neg_integer()],
%%   <<"Retention">> => list()
%% }
-type get_archive_response() :: #{binary() => any()}.

%% Example:
%% get_archive_message_content_request() :: #{
%%   <<"ArchivedMessageId">> := string()
%% }
-type get_archive_message_content_request() :: #{binary() => any()}.

%% Example:
%% archive_string_expression() :: #{
%%   <<"Evaluate">> => list(),
%%   <<"Operator">> => list(any()),
%%   <<"Values">> => list(string()())
%% }
-type archive_string_expression() :: #{binary() => any()}.

%% Example:
%% ingress_ipv4_expression() :: #{
%%   <<"Evaluate">> => list(),
%%   <<"Operator">> => list(any()),
%%   <<"Values">> => list(string()())
%% }
-type ingress_ipv4_expression() :: #{binary() => any()}.

%% Example:
%% list_address_list_import_jobs_request() :: #{
%%   <<"AddressListId">> := string(),
%%   <<"NextToken">> => string(),
%%   <<"PageSize">> => integer()
%% }
-type list_address_list_import_jobs_request() :: #{binary() => any()}.

%% Example:
%% list_relays_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Relays">> => list(relay()())
%% }
-type list_relays_response() :: #{binary() => any()}.

%% Example:
%% private_network_configuration() :: #{
%%   <<"VpcEndpointId">> => string()
%% }
-type private_network_configuration() :: #{binary() => any()}.

%% Example:
%% create_rule_set_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"RuleSetName">> := string(),
%%   <<"Rules">> := list(rule()()),
%%   <<"Tags">> => list(tag()())
%% }
-type create_rule_set_request() :: #{binary() => any()}.

%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% list_addon_subscriptions_request() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PageSize">> => integer()
%% }
-type list_addon_subscriptions_request() :: #{binary() => any()}.

%% Example:
%% envelope() :: #{
%%   <<"From">> => [string()],
%%   <<"Helo">> => [string()],
%%   <<"To">> => list([string()]())
%% }
-type envelope() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% archive_action() :: #{
%%   <<"ActionFailurePolicy">> => list(any()),
%%   <<"TargetArchive">> => string()
%% }
-type archive_action() :: #{binary() => any()}.

%% Example:
%% stop_archive_search_request() :: #{
%%   <<"SearchId">> := string()
%% }
-type stop_archive_search_request() :: #{binary() => any()}.

%% Example:
%% row() :: #{
%%   <<"ArchivedMessageId">> => string(),
%%   <<"Cc">> => [string()],
%%   <<"Date">> => [string()],
%%   <<"Envelope">> => envelope(),
%%   <<"From">> => [string()],
%%   <<"HasAttachments">> => [boolean()],
%%   <<"InReplyTo">> => [string()],
%%   <<"IngressPointId">> => string(),
%%   <<"MessageId">> => [string()],
%%   <<"ReceivedHeaders">> => list([string()]()),
%%   <<"ReceivedTimestamp">> => [non_neg_integer()],
%%   <<"SenderHostname">> => [string()],
%%   <<"SenderIpAddress">> => string(),
%%   <<"SourceArn">> => [string()],
%%   <<"Subject">> => [string()],
%%   <<"To">> => [string()],
%%   <<"XMailer">> => [string()],
%%   <<"XOriginalMailer">> => [string()],
%%   <<"XPriority">> => [string()]
%% }
-type row() :: #{binary() => any()}.

%% Example:
%% create_relay_response() :: #{
%%   <<"RelayId">> => string()
%% }
-type create_relay_response() :: #{binary() => any()}.

%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% delete_ingress_point_request() :: #{
%%   <<"IngressPointId">> := string()
%% }
-type delete_ingress_point_request() :: #{binary() => any()}.

%% Example:
%% saved_address() :: #{
%%   <<"Address">> => string(),
%%   <<"CreatedTimestamp">> => [non_neg_integer()]
%% }
-type saved_address() :: #{binary() => any()}.

%% Example:
%% create_rule_set_response() :: #{
%%   <<"RuleSetId">> => string()
%% }
-type create_rule_set_response() :: #{binary() => any()}.

%% Example:
%% create_traffic_policy_response() :: #{
%%   <<"TrafficPolicyId">> => string()
%% }
-type create_traffic_policy_response() :: #{binary() => any()}.

%% Example:
%% export_summary() :: #{
%%   <<"ExportId">> => string(),
%%   <<"Status">> => export_status()
%% }
-type export_summary() :: #{binary() => any()}.

%% Example:
%% address_filter() :: #{
%%   <<"AddressPrefix">> => string()
%% }
-type address_filter() :: #{binary() => any()}.

%% Example:
%% update_traffic_policy_request() :: #{
%%   <<"DefaultAction">> => list(any()),
%%   <<"MaxMessageSizeBytes">> => integer(),
%%   <<"PolicyStatements">> => list(policy_statement()()),
%%   <<"TrafficPolicyId">> := string(),
%%   <<"TrafficPolicyName">> => string()
%% }
-type update_traffic_policy_request() :: #{binary() => any()}.

%% Example:
%% ingress_ipv6_expression() :: #{
%%   <<"Evaluate">> => list(),
%%   <<"Operator">> => list(any()),
%%   <<"Values">> => list(string()())
%% }
-type ingress_ipv6_expression() :: #{binary() => any()}.

%% Example:
%% delete_address_list_request() :: #{
%%   <<"AddressListId">> := string()
%% }
-type delete_address_list_request() :: #{binary() => any()}.

%% Example:
%% get_address_list_request() :: #{
%%   <<"AddressListId">> := string()
%% }
-type get_address_list_request() :: #{binary() => any()}.

%% Example:
%% update_rule_set_response() :: #{

%% }
-type update_rule_set_response() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => list(tag()())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% deregister_member_from_address_list_request() :: #{
%%   <<"Address">> := string(),
%%   <<"AddressListId">> := string()
%% }
-type deregister_member_from_address_list_request() :: #{binary() => any()}.

%% Example:
%% update_ingress_point_response() :: #{

%% }
-type update_ingress_point_response() :: #{binary() => any()}.

%% Example:
%% get_member_of_address_list_response() :: #{
%%   <<"Address">> => string(),
%%   <<"CreatedTimestamp">> => [non_neg_integer()]
%% }
-type get_member_of_address_list_response() :: #{binary() => any()}.

%% Example:
%% create_ingress_point_response() :: #{
%%   <<"IngressPointId">> => string()
%% }
-type create_ingress_point_response() :: #{binary() => any()}.

%% Example:
%% update_relay_request() :: #{
%%   <<"Authentication">> => list(),
%%   <<"RelayId">> := string(),
%%   <<"RelayName">> => string(),
%%   <<"ServerName">> => string(),
%%   <<"ServerPort">> => integer()
%% }
-type update_relay_request() :: #{binary() => any()}.

%% Example:
%% get_addon_instance_request() :: #{
%%   <<"AddonInstanceId">> := string()
%% }
-type get_addon_instance_request() :: #{binary() => any()}.

%% Example:
%% rule_set() :: #{
%%   <<"LastModificationDate">> => [non_neg_integer()],
%%   <<"RuleSetId">> => string(),
%%   <<"RuleSetName">> => string()
%% }
-type rule_set() :: #{binary() => any()}.

%% Example:
%% rule() :: #{
%%   <<"Actions">> => list(list()()),
%%   <<"Conditions">> => list(list()()),
%%   <<"Name">> => string(),
%%   <<"Unless">> => list(list()())
%% }
-type rule() :: #{binary() => any()}.

%% Example:
%% list_rule_sets_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"RuleSets">> => list(rule_set()())
%% }
-type list_rule_sets_response() :: #{binary() => any()}.

%% Example:
%% delete_traffic_policy_response() :: #{

%% }
-type delete_traffic_policy_response() :: #{binary() => any()}.

%% Example:
%% delete_addon_subscription_response() :: #{

%% }
-type delete_addon_subscription_response() :: #{binary() => any()}.

%% Example:
%% list_archive_searches_request() :: #{
%%   <<"ArchiveId">> := string(),
%%   <<"NextToken">> => string(),
%%   <<"PageSize">> => integer()
%% }
-type list_archive_searches_request() :: #{binary() => any()}.

%% Example:
%% import_job() :: #{
%%   <<"AddressListId">> => string(),
%%   <<"CompletedTimestamp">> => [non_neg_integer()],
%%   <<"CreatedTimestamp">> => [non_neg_integer()],
%%   <<"Error">> => string(),
%%   <<"FailedItemsCount">> => integer(),
%%   <<"ImportDataFormat">> => import_data_format(),
%%   <<"ImportedItemsCount">> => integer(),
%%   <<"JobId">> => string(),
%%   <<"Name">> => string(),
%%   <<"PreSignedUrl">> => string(),
%%   <<"StartTimestamp">> => [non_neg_integer()],
%%   <<"Status">> => list(any())
%% }
-type import_job() :: #{binary() => any()}.

%% Example:
%% list_archive_searches_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Searches">> => list(search_summary()())
%% }
-type list_archive_searches_response() :: #{binary() => any()}.

%% Example:
%% analysis() :: #{
%%   <<"Analyzer">> => string(),
%%   <<"ResultField">> => string()
%% }
-type analysis() :: #{binary() => any()}.

%% Example:
%% delete_addon_subscription_request() :: #{
%%   <<"AddonSubscriptionId">> := string()
%% }
-type delete_addon_subscription_request() :: #{binary() => any()}.

%% Example:
%% archive_boolean_expression() :: #{
%%   <<"Evaluate">> => list(),
%%   <<"Operator">> => list(any())
%% }
-type archive_boolean_expression() :: #{binary() => any()}.

%% Example:
%% list_rule_sets_request() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PageSize">> => integer()
%% }
-type list_rule_sets_request() :: #{binary() => any()}.

%% Example:
%% stop_archive_export_request() :: #{
%%   <<"ExportId">> := string()
%% }
-type stop_archive_export_request() :: #{binary() => any()}.

%% Example:
%% get_traffic_policy_response() :: #{
%%   <<"CreatedTimestamp">> => [non_neg_integer()],
%%   <<"DefaultAction">> => list(any()),
%%   <<"LastUpdatedTimestamp">> => [non_neg_integer()],
%%   <<"MaxMessageSizeBytes">> => integer(),
%%   <<"PolicyStatements">> => list(policy_statement()()),
%%   <<"TrafficPolicyArn">> => string(),
%%   <<"TrafficPolicyId">> => string(),
%%   <<"TrafficPolicyName">> => string()
%% }
-type get_traffic_policy_response() :: #{binary() => any()}.

%% Example:
%% ingress_tls_protocol_expression() :: #{
%%   <<"Evaluate">> => list(),
%%   <<"Operator">> => list(any()),
%%   <<"Value">> => list(any())
%% }
-type ingress_tls_protocol_expression() :: #{binary() => any()}.

%% Example:
%% delete_ingress_point_response() :: #{

%% }
-type delete_ingress_point_response() :: #{binary() => any()}.

%% Example:
%% no_authentication() :: #{

%% }
-type no_authentication() :: #{binary() => any()}.

%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% get_archive_request() :: #{
%%   <<"ArchiveId">> := string()
%% }
-type get_archive_request() :: #{binary() => any()}.

%% Example:
%% list_address_list_import_jobs_response() :: #{
%%   <<"ImportJobs">> => list(import_job()()),
%%   <<"NextToken">> => string()
%% }
-type list_address_list_import_jobs_response() :: #{binary() => any()}.

%% Example:
%% stop_address_list_import_job_response() :: #{

%% }
-type stop_address_list_import_job_response() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% delete_relay_response() :: #{

%% }
-type delete_relay_response() :: #{binary() => any()}.

%% Example:
%% deliver_to_q_business_action() :: #{
%%   <<"ActionFailurePolicy">> => list(any()),
%%   <<"ApplicationId">> => string(),
%%   <<"IndexId">> => string(),
%%   <<"RoleArn">> => string()
%% }
-type deliver_to_q_business_action() :: #{binary() => any()}.

%% Example:
%% register_member_to_address_list_request() :: #{
%%   <<"Address">> := string(),
%%   <<"AddressListId">> := string()
%% }
-type register_member_to_address_list_request() :: #{binary() => any()}.

%% Example:
%% addon_subscription() :: #{
%%   <<"AddonName">> => string(),
%%   <<"AddonSubscriptionArn">> => string(),
%%   <<"AddonSubscriptionId">> => string(),
%%   <<"CreatedTimestamp">> => [non_neg_integer()]
%% }
-type addon_subscription() :: #{binary() => any()}.

%% Example:
%% delete_relay_request() :: #{
%%   <<"RelayId">> := string()
%% }
-type delete_relay_request() :: #{binary() => any()}.

%% Example:
%% replace_recipient_action() :: #{
%%   <<"ReplaceWith">> => list(string()())
%% }
-type replace_recipient_action() :: #{binary() => any()}.

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
%% start_archive_search_request() :: #{
%%   <<"ArchiveId">> := string(),
%%   <<"Filters">> => archive_filters(),
%%   <<"FromTimestamp">> := [non_neg_integer()],
%%   <<"MaxResults">> := integer(),
%%   <<"ToTimestamp">> := [non_neg_integer()]
%% }
-type start_archive_search_request() :: #{binary() => any()}.

%% Example:
%% get_archive_export_response() :: #{
%%   <<"ArchiveId">> => string(),
%%   <<"ExportDestinationConfiguration">> => list(),
%%   <<"Filters">> => archive_filters(),
%%   <<"FromTimestamp">> => [non_neg_integer()],
%%   <<"MaxResults">> => integer(),
%%   <<"Status">> => export_status(),
%%   <<"ToTimestamp">> => [non_neg_integer()]
%% }
-type get_archive_export_response() :: #{binary() => any()}.

%% Example:
%% list_ingress_points_response() :: #{
%%   <<"IngressPoints">> => list(ingress_point()()),
%%   <<"NextToken">> => string()
%% }
-type list_ingress_points_response() :: #{binary() => any()}.

%% Example:
%% create_archive_response() :: #{
%%   <<"ArchiveId">> => string()
%% }
-type create_archive_response() :: #{binary() => any()}.

%% Example:
%% create_ingress_point_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"IngressPointConfiguration">> => list(),
%%   <<"IngressPointName">> := string(),
%%   <<"NetworkConfiguration">> => list(),
%%   <<"RuleSetId">> := string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"TrafficPolicyId">> := string(),
%%   <<"Type">> := list(any())
%% }
-type create_ingress_point_request() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% list_relays_request() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PageSize">> => [integer()]
%% }
-type list_relays_request() :: #{binary() => any()}.

%% Example:
%% rule_is_in_address_list() :: #{
%%   <<"AddressLists">> => list(string()()),
%%   <<"Attribute">> => list(any())
%% }
-type rule_is_in_address_list() :: #{binary() => any()}.

%% Example:
%% ingress_string_expression() :: #{
%%   <<"Evaluate">> => list(),
%%   <<"Operator">> => list(any()),
%%   <<"Values">> => list([string()]())
%% }
-type ingress_string_expression() :: #{binary() => any()}.

%% Example:
%% get_rule_set_request() :: #{
%%   <<"RuleSetId">> := string()
%% }
-type get_rule_set_request() :: #{binary() => any()}.

%% Example:
%% get_addon_subscription_response() :: #{
%%   <<"AddonName">> => string(),
%%   <<"AddonSubscriptionArn">> => string(),
%%   <<"CreatedTimestamp">> => [non_neg_integer()]
%% }
-type get_addon_subscription_response() :: #{binary() => any()}.

%% Example:
%% archive() :: #{
%%   <<"ArchiveId">> => string(),
%%   <<"ArchiveName">> => string(),
%%   <<"ArchiveState">> => list(any()),
%%   <<"LastUpdatedTimestamp">> => [non_neg_integer()]
%% }
-type archive() :: #{binary() => any()}.

%% Example:
%% update_archive_request() :: #{
%%   <<"ArchiveId">> := string(),
%%   <<"ArchiveName">> => string(),
%%   <<"Retention">> => list()
%% }
-type update_archive_request() :: #{binary() => any()}.

%% Example:
%% delete_traffic_policy_request() :: #{
%%   <<"TrafficPolicyId">> := string()
%% }
-type delete_traffic_policy_request() :: #{binary() => any()}.

%% Example:
%% stop_archive_export_response() :: #{

%% }
-type stop_archive_export_response() :: #{binary() => any()}.

%% Example:
%% get_traffic_policy_request() :: #{
%%   <<"TrafficPolicyId">> := string()
%% }
-type get_traffic_policy_request() :: #{binary() => any()}.

%% Example:
%% delete_rule_set_request() :: #{
%%   <<"RuleSetId">> := string()
%% }
-type delete_rule_set_request() :: #{binary() => any()}.

%% Example:
%% create_addon_subscription_request() :: #{
%%   <<"AddonName">> := string(),
%%   <<"ClientToken">> => string(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_addon_subscription_request() :: #{binary() => any()}.

%% Example:
%% list_archive_exports_response() :: #{
%%   <<"Exports">> => list(export_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_archive_exports_response() :: #{binary() => any()}.

%% Example:
%% address_list() :: #{
%%   <<"AddressListArn">> => string(),
%%   <<"AddressListId">> => string(),
%%   <<"AddressListName">> => string(),
%%   <<"CreatedTimestamp">> => [non_neg_integer()],
%%   <<"LastUpdatedTimestamp">> => [non_neg_integer()]
%% }
-type address_list() :: #{binary() => any()}.

%% Example:
%% list_members_of_address_list_response() :: #{
%%   <<"Addresses">> => list(saved_address()()),
%%   <<"NextToken">> => string()
%% }
-type list_members_of_address_list_response() :: #{binary() => any()}.

%% Example:
%% list_archive_exports_request() :: #{
%%   <<"ArchiveId">> := string(),
%%   <<"NextToken">> => string(),
%%   <<"PageSize">> => integer()
%% }
-type list_archive_exports_request() :: #{binary() => any()}.

%% Example:
%% get_archive_search_results_request() :: #{
%%   <<"SearchId">> := string()
%% }
-type get_archive_search_results_request() :: #{binary() => any()}.

%% Example:
%% get_archive_export_request() :: #{
%%   <<"ExportId">> := string()
%% }
-type get_archive_export_request() :: #{binary() => any()}.

%% Example:
%% update_archive_response() :: #{

%% }
-type update_archive_response() :: #{binary() => any()}.

%% Example:
%% search_status() :: #{
%%   <<"CompletionTimestamp">> => [non_neg_integer()],
%%   <<"ErrorMessage">> => string(),
%%   <<"State">> => list(any()),
%%   <<"SubmissionTimestamp">> => [non_neg_integer()]
%% }
-type search_status() :: #{binary() => any()}.

%% Example:
%% ingress_point_auth_configuration() :: #{
%%   <<"IngressPointPasswordConfiguration">> => ingress_point_password_configuration(),
%%   <<"SecretArn">> => string()
%% }
-type ingress_point_auth_configuration() :: #{binary() => any()}.

%% Example:
%% deregister_member_from_address_list_response() :: #{

%% }
-type deregister_member_from_address_list_response() :: #{binary() => any()}.

%% Example:
%% list_address_lists_response() :: #{
%%   <<"AddressLists">> => list(address_list()()),
%%   <<"NextToken">> => string()
%% }
-type list_address_lists_response() :: #{binary() => any()}.

%% Example:
%% start_archive_search_response() :: #{
%%   <<"SearchId">> => string()
%% }
-type start_archive_search_response() :: #{binary() => any()}.

%% Example:
%% get_ingress_point_request() :: #{
%%   <<"IngressPointId">> := string()
%% }
-type get_ingress_point_request() :: #{binary() => any()}.

%% Example:
%% list_addon_instances_request() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PageSize">> => integer()
%% }
-type list_addon_instances_request() :: #{binary() => any()}.

%% Example:
%% s3_export_destination_configuration() :: #{
%%   <<"S3Location">> => string()
%% }
-type s3_export_destination_configuration() :: #{binary() => any()}.

%% Example:
%% rule_string_expression() :: #{
%%   <<"Evaluate">> => list(),
%%   <<"Operator">> => list(any()),
%%   <<"Values">> => list(string()())
%% }
-type rule_string_expression() :: #{binary() => any()}.

%% Example:
%% create_relay_request() :: #{
%%   <<"Authentication">> := list(),
%%   <<"ClientToken">> => string(),
%%   <<"RelayName">> := string(),
%%   <<"ServerName">> := string(),
%%   <<"ServerPort">> := integer(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_relay_request() :: #{binary() => any()}.

%% Example:
%% get_member_of_address_list_request() :: #{
%%   <<"Address">> := string(),
%%   <<"AddressListId">> := string()
%% }
-type get_member_of_address_list_request() :: #{binary() => any()}.

%% Example:
%% add_header_action() :: #{
%%   <<"HeaderName">> => string(),
%%   <<"HeaderValue">> => string()
%% }
-type add_header_action() :: #{binary() => any()}.

%% Example:
%% archive_filters() :: #{
%%   <<"Include">> => list(list()()),
%%   <<"Unless">> => list(list()())
%% }
-type archive_filters() :: #{binary() => any()}.

%% Example:
%% create_address_list_response() :: #{
%%   <<"AddressListId">> => string()
%% }
-type create_address_list_response() :: #{binary() => any()}.

-type create_addon_instance_errors() ::
    validation_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_addon_subscription_errors() ::
    validation_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_address_list_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_address_list_import_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type create_archive_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_ingress_point_errors() ::
    validation_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_relay_errors() ::
    validation_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_rule_set_errors() ::
    validation_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_traffic_policy_errors() ::
    validation_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type delete_addon_instance_errors() ::
    validation_exception() | 
    conflict_exception().

-type delete_addon_subscription_errors() ::
    validation_exception() | 
    conflict_exception().

-type delete_address_list_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    conflict_exception().

-type delete_archive_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    conflict_exception().

-type delete_ingress_point_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_relay_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_rule_set_errors() ::
    validation_exception() | 
    conflict_exception().

-type delete_traffic_policy_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type deregister_member_from_address_list_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_addon_instance_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type get_addon_subscription_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type get_address_list_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_address_list_import_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_archive_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_archive_export_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception().

-type get_archive_message_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception().

-type get_archive_message_content_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception().

-type get_archive_search_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception().

-type get_archive_search_results_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    conflict_exception().

-type get_ingress_point_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type get_member_of_address_list_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_relay_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type get_rule_set_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type get_traffic_policy_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type list_addon_instances_errors() ::
    validation_exception().

-type list_addon_subscriptions_errors() ::
    validation_exception().

-type list_address_list_import_jobs_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type list_address_lists_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception().

-type list_archive_exports_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type list_archive_searches_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type list_archives_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception().

-type list_ingress_points_errors() ::
    validation_exception().

-type list_members_of_address_list_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type list_relays_errors() ::
    validation_exception().

-type list_rule_sets_errors() ::
    validation_exception().

-type list_tags_for_resource_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type list_traffic_policies_errors() ::
    validation_exception().

-type register_member_to_address_list_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type start_address_list_import_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type start_archive_export_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type start_archive_search_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type stop_address_list_import_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type stop_archive_export_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception().

-type stop_archive_search_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception().

-type tag_resource_errors() ::
    validation_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type untag_resource_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_archive_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_ingress_point_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_relay_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_rule_set_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_traffic_policy_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates an Add On instance for the subscription indicated in the
%% request.
%%
%% The resulting Amazon Resource Name (ARN) can be used in a conditional
%% statement for a rule set or traffic policy.
-spec create_addon_instance(aws_client:aws_client(), create_addon_instance_request()) ->
    {ok, create_addon_instance_response(), tuple()} |
    {error, any()} |
    {error, create_addon_instance_errors(), tuple()}.
create_addon_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_addon_instance(Client, Input, []).

-spec create_addon_instance(aws_client:aws_client(), create_addon_instance_request(), proplists:proplist()) ->
    {ok, create_addon_instance_response(), tuple()} |
    {error, any()} |
    {error, create_addon_instance_errors(), tuple()}.
create_addon_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAddonInstance">>, Input, Options).

%% @doc Creates a subscription for an Add On representing the acceptance of
%% its terms of use and additional pricing.
%%
%% The subscription can then be used to create an instance for use in rule
%% sets or traffic policies.
-spec create_addon_subscription(aws_client:aws_client(), create_addon_subscription_request()) ->
    {ok, create_addon_subscription_response(), tuple()} |
    {error, any()} |
    {error, create_addon_subscription_errors(), tuple()}.
create_addon_subscription(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_addon_subscription(Client, Input, []).

-spec create_addon_subscription(aws_client:aws_client(), create_addon_subscription_request(), proplists:proplist()) ->
    {ok, create_addon_subscription_response(), tuple()} |
    {error, any()} |
    {error, create_addon_subscription_errors(), tuple()}.
create_addon_subscription(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAddonSubscription">>, Input, Options).

%% @doc Creates a new address list.
-spec create_address_list(aws_client:aws_client(), create_address_list_request()) ->
    {ok, create_address_list_response(), tuple()} |
    {error, any()} |
    {error, create_address_list_errors(), tuple()}.
create_address_list(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_address_list(Client, Input, []).

-spec create_address_list(aws_client:aws_client(), create_address_list_request(), proplists:proplist()) ->
    {ok, create_address_list_response(), tuple()} |
    {error, any()} |
    {error, create_address_list_errors(), tuple()}.
create_address_list(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAddressList">>, Input, Options).

%% @doc Creates an import job for an address list.
-spec create_address_list_import_job(aws_client:aws_client(), create_address_list_import_job_request()) ->
    {ok, create_address_list_import_job_response(), tuple()} |
    {error, any()} |
    {error, create_address_list_import_job_errors(), tuple()}.
create_address_list_import_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_address_list_import_job(Client, Input, []).

-spec create_address_list_import_job(aws_client:aws_client(), create_address_list_import_job_request(), proplists:proplist()) ->
    {ok, create_address_list_import_job_response(), tuple()} |
    {error, any()} |
    {error, create_address_list_import_job_errors(), tuple()}.
create_address_list_import_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAddressListImportJob">>, Input, Options).

%% @doc Creates a new email archive resource for storing and retaining
%% emails.
-spec create_archive(aws_client:aws_client(), create_archive_request()) ->
    {ok, create_archive_response(), tuple()} |
    {error, any()} |
    {error, create_archive_errors(), tuple()}.
create_archive(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_archive(Client, Input, []).

-spec create_archive(aws_client:aws_client(), create_archive_request(), proplists:proplist()) ->
    {ok, create_archive_response(), tuple()} |
    {error, any()} |
    {error, create_archive_errors(), tuple()}.
create_archive(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateArchive">>, Input, Options).

%% @doc Provision a new ingress endpoint resource.
-spec create_ingress_point(aws_client:aws_client(), create_ingress_point_request()) ->
    {ok, create_ingress_point_response(), tuple()} |
    {error, any()} |
    {error, create_ingress_point_errors(), tuple()}.
create_ingress_point(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_ingress_point(Client, Input, []).

-spec create_ingress_point(aws_client:aws_client(), create_ingress_point_request(), proplists:proplist()) ->
    {ok, create_ingress_point_response(), tuple()} |
    {error, any()} |
    {error, create_ingress_point_errors(), tuple()}.
create_ingress_point(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateIngressPoint">>, Input, Options).

%% @doc Creates a relay resource which can be used in rules to relay incoming
%% emails to defined relay destinations.
-spec create_relay(aws_client:aws_client(), create_relay_request()) ->
    {ok, create_relay_response(), tuple()} |
    {error, any()} |
    {error, create_relay_errors(), tuple()}.
create_relay(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_relay(Client, Input, []).

-spec create_relay(aws_client:aws_client(), create_relay_request(), proplists:proplist()) ->
    {ok, create_relay_response(), tuple()} |
    {error, any()} |
    {error, create_relay_errors(), tuple()}.
create_relay(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateRelay">>, Input, Options).

%% @doc Provision a new rule set.
-spec create_rule_set(aws_client:aws_client(), create_rule_set_request()) ->
    {ok, create_rule_set_response(), tuple()} |
    {error, any()} |
    {error, create_rule_set_errors(), tuple()}.
create_rule_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_rule_set(Client, Input, []).

-spec create_rule_set(aws_client:aws_client(), create_rule_set_request(), proplists:proplist()) ->
    {ok, create_rule_set_response(), tuple()} |
    {error, any()} |
    {error, create_rule_set_errors(), tuple()}.
create_rule_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateRuleSet">>, Input, Options).

%% @doc Provision a new traffic policy resource.
-spec create_traffic_policy(aws_client:aws_client(), create_traffic_policy_request()) ->
    {ok, create_traffic_policy_response(), tuple()} |
    {error, any()} |
    {error, create_traffic_policy_errors(), tuple()}.
create_traffic_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_traffic_policy(Client, Input, []).

-spec create_traffic_policy(aws_client:aws_client(), create_traffic_policy_request(), proplists:proplist()) ->
    {ok, create_traffic_policy_response(), tuple()} |
    {error, any()} |
    {error, create_traffic_policy_errors(), tuple()}.
create_traffic_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTrafficPolicy">>, Input, Options).

%% @doc Deletes an Add On instance.
-spec delete_addon_instance(aws_client:aws_client(), delete_addon_instance_request()) ->
    {ok, delete_addon_instance_response(), tuple()} |
    {error, any()} |
    {error, delete_addon_instance_errors(), tuple()}.
delete_addon_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_addon_instance(Client, Input, []).

-spec delete_addon_instance(aws_client:aws_client(), delete_addon_instance_request(), proplists:proplist()) ->
    {ok, delete_addon_instance_response(), tuple()} |
    {error, any()} |
    {error, delete_addon_instance_errors(), tuple()}.
delete_addon_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAddonInstance">>, Input, Options).

%% @doc Deletes an Add On subscription.
-spec delete_addon_subscription(aws_client:aws_client(), delete_addon_subscription_request()) ->
    {ok, delete_addon_subscription_response(), tuple()} |
    {error, any()} |
    {error, delete_addon_subscription_errors(), tuple()}.
delete_addon_subscription(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_addon_subscription(Client, Input, []).

-spec delete_addon_subscription(aws_client:aws_client(), delete_addon_subscription_request(), proplists:proplist()) ->
    {ok, delete_addon_subscription_response(), tuple()} |
    {error, any()} |
    {error, delete_addon_subscription_errors(), tuple()}.
delete_addon_subscription(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAddonSubscription">>, Input, Options).

%% @doc Deletes an address list.
-spec delete_address_list(aws_client:aws_client(), delete_address_list_request()) ->
    {ok, delete_address_list_response(), tuple()} |
    {error, any()} |
    {error, delete_address_list_errors(), tuple()}.
delete_address_list(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_address_list(Client, Input, []).

-spec delete_address_list(aws_client:aws_client(), delete_address_list_request(), proplists:proplist()) ->
    {ok, delete_address_list_response(), tuple()} |
    {error, any()} |
    {error, delete_address_list_errors(), tuple()}.
delete_address_list(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAddressList">>, Input, Options).

%% @doc Initiates deletion of an email archive.
%%
%% This changes the archive state to pending deletion. In this state, no new
%% emails can be added, and existing archived emails become inaccessible
%% (search, export, download). The archive and all of its contents will be
%% permanently deleted 30 days after entering the pending deletion state,
%% regardless of the configured retention period.
-spec delete_archive(aws_client:aws_client(), delete_archive_request()) ->
    {ok, delete_archive_response(), tuple()} |
    {error, any()} |
    {error, delete_archive_errors(), tuple()}.
delete_archive(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_archive(Client, Input, []).

-spec delete_archive(aws_client:aws_client(), delete_archive_request(), proplists:proplist()) ->
    {ok, delete_archive_response(), tuple()} |
    {error, any()} |
    {error, delete_archive_errors(), tuple()}.
delete_archive(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteArchive">>, Input, Options).

%% @doc Delete an ingress endpoint resource.
-spec delete_ingress_point(aws_client:aws_client(), delete_ingress_point_request()) ->
    {ok, delete_ingress_point_response(), tuple()} |
    {error, any()} |
    {error, delete_ingress_point_errors(), tuple()}.
delete_ingress_point(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_ingress_point(Client, Input, []).

-spec delete_ingress_point(aws_client:aws_client(), delete_ingress_point_request(), proplists:proplist()) ->
    {ok, delete_ingress_point_response(), tuple()} |
    {error, any()} |
    {error, delete_ingress_point_errors(), tuple()}.
delete_ingress_point(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteIngressPoint">>, Input, Options).

%% @doc Deletes an existing relay resource.
-spec delete_relay(aws_client:aws_client(), delete_relay_request()) ->
    {ok, delete_relay_response(), tuple()} |
    {error, any()} |
    {error, delete_relay_errors(), tuple()}.
delete_relay(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_relay(Client, Input, []).

-spec delete_relay(aws_client:aws_client(), delete_relay_request(), proplists:proplist()) ->
    {ok, delete_relay_response(), tuple()} |
    {error, any()} |
    {error, delete_relay_errors(), tuple()}.
delete_relay(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRelay">>, Input, Options).

%% @doc Delete a rule set.
-spec delete_rule_set(aws_client:aws_client(), delete_rule_set_request()) ->
    {ok, delete_rule_set_response(), tuple()} |
    {error, any()} |
    {error, delete_rule_set_errors(), tuple()}.
delete_rule_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_rule_set(Client, Input, []).

-spec delete_rule_set(aws_client:aws_client(), delete_rule_set_request(), proplists:proplist()) ->
    {ok, delete_rule_set_response(), tuple()} |
    {error, any()} |
    {error, delete_rule_set_errors(), tuple()}.
delete_rule_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRuleSet">>, Input, Options).

%% @doc Delete a traffic policy resource.
-spec delete_traffic_policy(aws_client:aws_client(), delete_traffic_policy_request()) ->
    {ok, delete_traffic_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_traffic_policy_errors(), tuple()}.
delete_traffic_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_traffic_policy(Client, Input, []).

-spec delete_traffic_policy(aws_client:aws_client(), delete_traffic_policy_request(), proplists:proplist()) ->
    {ok, delete_traffic_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_traffic_policy_errors(), tuple()}.
delete_traffic_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTrafficPolicy">>, Input, Options).

%% @doc Removes a member from an address list.
-spec deregister_member_from_address_list(aws_client:aws_client(), deregister_member_from_address_list_request()) ->
    {ok, deregister_member_from_address_list_response(), tuple()} |
    {error, any()} |
    {error, deregister_member_from_address_list_errors(), tuple()}.
deregister_member_from_address_list(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_member_from_address_list(Client, Input, []).

-spec deregister_member_from_address_list(aws_client:aws_client(), deregister_member_from_address_list_request(), proplists:proplist()) ->
    {ok, deregister_member_from_address_list_response(), tuple()} |
    {error, any()} |
    {error, deregister_member_from_address_list_errors(), tuple()}.
deregister_member_from_address_list(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterMemberFromAddressList">>, Input, Options).

%% @doc Gets detailed information about an Add On instance.
-spec get_addon_instance(aws_client:aws_client(), get_addon_instance_request()) ->
    {ok, get_addon_instance_response(), tuple()} |
    {error, any()} |
    {error, get_addon_instance_errors(), tuple()}.
get_addon_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_addon_instance(Client, Input, []).

-spec get_addon_instance(aws_client:aws_client(), get_addon_instance_request(), proplists:proplist()) ->
    {ok, get_addon_instance_response(), tuple()} |
    {error, any()} |
    {error, get_addon_instance_errors(), tuple()}.
get_addon_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAddonInstance">>, Input, Options).

%% @doc Gets detailed information about an Add On subscription.
-spec get_addon_subscription(aws_client:aws_client(), get_addon_subscription_request()) ->
    {ok, get_addon_subscription_response(), tuple()} |
    {error, any()} |
    {error, get_addon_subscription_errors(), tuple()}.
get_addon_subscription(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_addon_subscription(Client, Input, []).

-spec get_addon_subscription(aws_client:aws_client(), get_addon_subscription_request(), proplists:proplist()) ->
    {ok, get_addon_subscription_response(), tuple()} |
    {error, any()} |
    {error, get_addon_subscription_errors(), tuple()}.
get_addon_subscription(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAddonSubscription">>, Input, Options).

%% @doc Fetch attributes of an address list.
-spec get_address_list(aws_client:aws_client(), get_address_list_request()) ->
    {ok, get_address_list_response(), tuple()} |
    {error, any()} |
    {error, get_address_list_errors(), tuple()}.
get_address_list(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_address_list(Client, Input, []).

-spec get_address_list(aws_client:aws_client(), get_address_list_request(), proplists:proplist()) ->
    {ok, get_address_list_response(), tuple()} |
    {error, any()} |
    {error, get_address_list_errors(), tuple()}.
get_address_list(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAddressList">>, Input, Options).

%% @doc Fetch attributes of an import job.
-spec get_address_list_import_job(aws_client:aws_client(), get_address_list_import_job_request()) ->
    {ok, get_address_list_import_job_response(), tuple()} |
    {error, any()} |
    {error, get_address_list_import_job_errors(), tuple()}.
get_address_list_import_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_address_list_import_job(Client, Input, []).

-spec get_address_list_import_job(aws_client:aws_client(), get_address_list_import_job_request(), proplists:proplist()) ->
    {ok, get_address_list_import_job_response(), tuple()} |
    {error, any()} |
    {error, get_address_list_import_job_errors(), tuple()}.
get_address_list_import_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAddressListImportJob">>, Input, Options).

%% @doc Retrieves the full details and current state of a specified email
%% archive.
-spec get_archive(aws_client:aws_client(), get_archive_request()) ->
    {ok, get_archive_response(), tuple()} |
    {error, any()} |
    {error, get_archive_errors(), tuple()}.
get_archive(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_archive(Client, Input, []).

-spec get_archive(aws_client:aws_client(), get_archive_request(), proplists:proplist()) ->
    {ok, get_archive_response(), tuple()} |
    {error, any()} |
    {error, get_archive_errors(), tuple()}.
get_archive(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetArchive">>, Input, Options).

%% @doc Retrieves the details and current status of a specific email archive
%% export job.
-spec get_archive_export(aws_client:aws_client(), get_archive_export_request()) ->
    {ok, get_archive_export_response(), tuple()} |
    {error, any()} |
    {error, get_archive_export_errors(), tuple()}.
get_archive_export(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_archive_export(Client, Input, []).

-spec get_archive_export(aws_client:aws_client(), get_archive_export_request(), proplists:proplist()) ->
    {ok, get_archive_export_response(), tuple()} |
    {error, any()} |
    {error, get_archive_export_errors(), tuple()}.
get_archive_export(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetArchiveExport">>, Input, Options).

%% @doc Returns a pre-signed URL that provides temporary download access to
%% the specific email message stored in the archive.
-spec get_archive_message(aws_client:aws_client(), get_archive_message_request()) ->
    {ok, get_archive_message_response(), tuple()} |
    {error, any()} |
    {error, get_archive_message_errors(), tuple()}.
get_archive_message(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_archive_message(Client, Input, []).

-spec get_archive_message(aws_client:aws_client(), get_archive_message_request(), proplists:proplist()) ->
    {ok, get_archive_message_response(), tuple()} |
    {error, any()} |
    {error, get_archive_message_errors(), tuple()}.
get_archive_message(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetArchiveMessage">>, Input, Options).

%% @doc Returns the textual content of a specific email message stored in the
%% archive.
%%
%% Attachments are not included.
-spec get_archive_message_content(aws_client:aws_client(), get_archive_message_content_request()) ->
    {ok, get_archive_message_content_response(), tuple()} |
    {error, any()} |
    {error, get_archive_message_content_errors(), tuple()}.
get_archive_message_content(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_archive_message_content(Client, Input, []).

-spec get_archive_message_content(aws_client:aws_client(), get_archive_message_content_request(), proplists:proplist()) ->
    {ok, get_archive_message_content_response(), tuple()} |
    {error, any()} |
    {error, get_archive_message_content_errors(), tuple()}.
get_archive_message_content(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetArchiveMessageContent">>, Input, Options).

%% @doc Retrieves the details and current status of a specific email archive
%% search job.
-spec get_archive_search(aws_client:aws_client(), get_archive_search_request()) ->
    {ok, get_archive_search_response(), tuple()} |
    {error, any()} |
    {error, get_archive_search_errors(), tuple()}.
get_archive_search(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_archive_search(Client, Input, []).

-spec get_archive_search(aws_client:aws_client(), get_archive_search_request(), proplists:proplist()) ->
    {ok, get_archive_search_response(), tuple()} |
    {error, any()} |
    {error, get_archive_search_errors(), tuple()}.
get_archive_search(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetArchiveSearch">>, Input, Options).

%% @doc Returns the results of a completed email archive search job.
-spec get_archive_search_results(aws_client:aws_client(), get_archive_search_results_request()) ->
    {ok, get_archive_search_results_response(), tuple()} |
    {error, any()} |
    {error, get_archive_search_results_errors(), tuple()}.
get_archive_search_results(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_archive_search_results(Client, Input, []).

-spec get_archive_search_results(aws_client:aws_client(), get_archive_search_results_request(), proplists:proplist()) ->
    {ok, get_archive_search_results_response(), tuple()} |
    {error, any()} |
    {error, get_archive_search_results_errors(), tuple()}.
get_archive_search_results(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetArchiveSearchResults">>, Input, Options).

%% @doc Fetch ingress endpoint resource attributes.
-spec get_ingress_point(aws_client:aws_client(), get_ingress_point_request()) ->
    {ok, get_ingress_point_response(), tuple()} |
    {error, any()} |
    {error, get_ingress_point_errors(), tuple()}.
get_ingress_point(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_ingress_point(Client, Input, []).

-spec get_ingress_point(aws_client:aws_client(), get_ingress_point_request(), proplists:proplist()) ->
    {ok, get_ingress_point_response(), tuple()} |
    {error, any()} |
    {error, get_ingress_point_errors(), tuple()}.
get_ingress_point(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetIngressPoint">>, Input, Options).

%% @doc Fetch attributes of a member in an address list.
-spec get_member_of_address_list(aws_client:aws_client(), get_member_of_address_list_request()) ->
    {ok, get_member_of_address_list_response(), tuple()} |
    {error, any()} |
    {error, get_member_of_address_list_errors(), tuple()}.
get_member_of_address_list(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_member_of_address_list(Client, Input, []).

-spec get_member_of_address_list(aws_client:aws_client(), get_member_of_address_list_request(), proplists:proplist()) ->
    {ok, get_member_of_address_list_response(), tuple()} |
    {error, any()} |
    {error, get_member_of_address_list_errors(), tuple()}.
get_member_of_address_list(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetMemberOfAddressList">>, Input, Options).

%% @doc Fetch the relay resource and it's attributes.
-spec get_relay(aws_client:aws_client(), get_relay_request()) ->
    {ok, get_relay_response(), tuple()} |
    {error, any()} |
    {error, get_relay_errors(), tuple()}.
get_relay(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_relay(Client, Input, []).

-spec get_relay(aws_client:aws_client(), get_relay_request(), proplists:proplist()) ->
    {ok, get_relay_response(), tuple()} |
    {error, any()} |
    {error, get_relay_errors(), tuple()}.
get_relay(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRelay">>, Input, Options).

%% @doc Fetch attributes of a rule set.
-spec get_rule_set(aws_client:aws_client(), get_rule_set_request()) ->
    {ok, get_rule_set_response(), tuple()} |
    {error, any()} |
    {error, get_rule_set_errors(), tuple()}.
get_rule_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_rule_set(Client, Input, []).

-spec get_rule_set(aws_client:aws_client(), get_rule_set_request(), proplists:proplist()) ->
    {ok, get_rule_set_response(), tuple()} |
    {error, any()} |
    {error, get_rule_set_errors(), tuple()}.
get_rule_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRuleSet">>, Input, Options).

%% @doc Fetch attributes of a traffic policy resource.
-spec get_traffic_policy(aws_client:aws_client(), get_traffic_policy_request()) ->
    {ok, get_traffic_policy_response(), tuple()} |
    {error, any()} |
    {error, get_traffic_policy_errors(), tuple()}.
get_traffic_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_traffic_policy(Client, Input, []).

-spec get_traffic_policy(aws_client:aws_client(), get_traffic_policy_request(), proplists:proplist()) ->
    {ok, get_traffic_policy_response(), tuple()} |
    {error, any()} |
    {error, get_traffic_policy_errors(), tuple()}.
get_traffic_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTrafficPolicy">>, Input, Options).

%% @doc Lists all Add On instances in your account.
-spec list_addon_instances(aws_client:aws_client(), list_addon_instances_request()) ->
    {ok, list_addon_instances_response(), tuple()} |
    {error, any()} |
    {error, list_addon_instances_errors(), tuple()}.
list_addon_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_addon_instances(Client, Input, []).

-spec list_addon_instances(aws_client:aws_client(), list_addon_instances_request(), proplists:proplist()) ->
    {ok, list_addon_instances_response(), tuple()} |
    {error, any()} |
    {error, list_addon_instances_errors(), tuple()}.
list_addon_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAddonInstances">>, Input, Options).

%% @doc Lists all Add On subscriptions in your account.
-spec list_addon_subscriptions(aws_client:aws_client(), list_addon_subscriptions_request()) ->
    {ok, list_addon_subscriptions_response(), tuple()} |
    {error, any()} |
    {error, list_addon_subscriptions_errors(), tuple()}.
list_addon_subscriptions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_addon_subscriptions(Client, Input, []).

-spec list_addon_subscriptions(aws_client:aws_client(), list_addon_subscriptions_request(), proplists:proplist()) ->
    {ok, list_addon_subscriptions_response(), tuple()} |
    {error, any()} |
    {error, list_addon_subscriptions_errors(), tuple()}.
list_addon_subscriptions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAddonSubscriptions">>, Input, Options).

%% @doc Lists jobs for an address list.
-spec list_address_list_import_jobs(aws_client:aws_client(), list_address_list_import_jobs_request()) ->
    {ok, list_address_list_import_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_address_list_import_jobs_errors(), tuple()}.
list_address_list_import_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_address_list_import_jobs(Client, Input, []).

-spec list_address_list_import_jobs(aws_client:aws_client(), list_address_list_import_jobs_request(), proplists:proplist()) ->
    {ok, list_address_list_import_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_address_list_import_jobs_errors(), tuple()}.
list_address_list_import_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAddressListImportJobs">>, Input, Options).

%% @doc Lists address lists for this account.
-spec list_address_lists(aws_client:aws_client(), list_address_lists_request()) ->
    {ok, list_address_lists_response(), tuple()} |
    {error, any()} |
    {error, list_address_lists_errors(), tuple()}.
list_address_lists(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_address_lists(Client, Input, []).

-spec list_address_lists(aws_client:aws_client(), list_address_lists_request(), proplists:proplist()) ->
    {ok, list_address_lists_response(), tuple()} |
    {error, any()} |
    {error, list_address_lists_errors(), tuple()}.
list_address_lists(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAddressLists">>, Input, Options).

%% @doc Returns a list of email archive export jobs.
-spec list_archive_exports(aws_client:aws_client(), list_archive_exports_request()) ->
    {ok, list_archive_exports_response(), tuple()} |
    {error, any()} |
    {error, list_archive_exports_errors(), tuple()}.
list_archive_exports(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_archive_exports(Client, Input, []).

-spec list_archive_exports(aws_client:aws_client(), list_archive_exports_request(), proplists:proplist()) ->
    {ok, list_archive_exports_response(), tuple()} |
    {error, any()} |
    {error, list_archive_exports_errors(), tuple()}.
list_archive_exports(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListArchiveExports">>, Input, Options).

%% @doc Returns a list of email archive search jobs.
-spec list_archive_searches(aws_client:aws_client(), list_archive_searches_request()) ->
    {ok, list_archive_searches_response(), tuple()} |
    {error, any()} |
    {error, list_archive_searches_errors(), tuple()}.
list_archive_searches(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_archive_searches(Client, Input, []).

-spec list_archive_searches(aws_client:aws_client(), list_archive_searches_request(), proplists:proplist()) ->
    {ok, list_archive_searches_response(), tuple()} |
    {error, any()} |
    {error, list_archive_searches_errors(), tuple()}.
list_archive_searches(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListArchiveSearches">>, Input, Options).

%% @doc Returns a list of all email archives in your account.
-spec list_archives(aws_client:aws_client(), list_archives_request()) ->
    {ok, list_archives_response(), tuple()} |
    {error, any()} |
    {error, list_archives_errors(), tuple()}.
list_archives(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_archives(Client, Input, []).

-spec list_archives(aws_client:aws_client(), list_archives_request(), proplists:proplist()) ->
    {ok, list_archives_response(), tuple()} |
    {error, any()} |
    {error, list_archives_errors(), tuple()}.
list_archives(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListArchives">>, Input, Options).

%% @doc List all ingress endpoint resources.
-spec list_ingress_points(aws_client:aws_client(), list_ingress_points_request()) ->
    {ok, list_ingress_points_response(), tuple()} |
    {error, any()} |
    {error, list_ingress_points_errors(), tuple()}.
list_ingress_points(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_ingress_points(Client, Input, []).

-spec list_ingress_points(aws_client:aws_client(), list_ingress_points_request(), proplists:proplist()) ->
    {ok, list_ingress_points_response(), tuple()} |
    {error, any()} |
    {error, list_ingress_points_errors(), tuple()}.
list_ingress_points(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListIngressPoints">>, Input, Options).

%% @doc Lists members of an address list.
-spec list_members_of_address_list(aws_client:aws_client(), list_members_of_address_list_request()) ->
    {ok, list_members_of_address_list_response(), tuple()} |
    {error, any()} |
    {error, list_members_of_address_list_errors(), tuple()}.
list_members_of_address_list(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_members_of_address_list(Client, Input, []).

-spec list_members_of_address_list(aws_client:aws_client(), list_members_of_address_list_request(), proplists:proplist()) ->
    {ok, list_members_of_address_list_response(), tuple()} |
    {error, any()} |
    {error, list_members_of_address_list_errors(), tuple()}.
list_members_of_address_list(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListMembersOfAddressList">>, Input, Options).

%% @doc Lists all the existing relay resources.
-spec list_relays(aws_client:aws_client(), list_relays_request()) ->
    {ok, list_relays_response(), tuple()} |
    {error, any()} |
    {error, list_relays_errors(), tuple()}.
list_relays(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_relays(Client, Input, []).

-spec list_relays(aws_client:aws_client(), list_relays_request(), proplists:proplist()) ->
    {ok, list_relays_response(), tuple()} |
    {error, any()} |
    {error, list_relays_errors(), tuple()}.
list_relays(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRelays">>, Input, Options).

%% @doc List rule sets for this account.
-spec list_rule_sets(aws_client:aws_client(), list_rule_sets_request()) ->
    {ok, list_rule_sets_response(), tuple()} |
    {error, any()} |
    {error, list_rule_sets_errors(), tuple()}.
list_rule_sets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_rule_sets(Client, Input, []).

-spec list_rule_sets(aws_client:aws_client(), list_rule_sets_request(), proplists:proplist()) ->
    {ok, list_rule_sets_response(), tuple()} |
    {error, any()} |
    {error, list_rule_sets_errors(), tuple()}.
list_rule_sets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRuleSets">>, Input, Options).

%% @doc Retrieves the list of tags (keys and values) assigned to the
%% resource.
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

%% @doc List traffic policy resources.
-spec list_traffic_policies(aws_client:aws_client(), list_traffic_policies_request()) ->
    {ok, list_traffic_policies_response(), tuple()} |
    {error, any()} |
    {error, list_traffic_policies_errors(), tuple()}.
list_traffic_policies(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_traffic_policies(Client, Input, []).

-spec list_traffic_policies(aws_client:aws_client(), list_traffic_policies_request(), proplists:proplist()) ->
    {ok, list_traffic_policies_response(), tuple()} |
    {error, any()} |
    {error, list_traffic_policies_errors(), tuple()}.
list_traffic_policies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTrafficPolicies">>, Input, Options).

%% @doc Adds a member to an address list.
-spec register_member_to_address_list(aws_client:aws_client(), register_member_to_address_list_request()) ->
    {ok, register_member_to_address_list_response(), tuple()} |
    {error, any()} |
    {error, register_member_to_address_list_errors(), tuple()}.
register_member_to_address_list(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_member_to_address_list(Client, Input, []).

-spec register_member_to_address_list(aws_client:aws_client(), register_member_to_address_list_request(), proplists:proplist()) ->
    {ok, register_member_to_address_list_response(), tuple()} |
    {error, any()} |
    {error, register_member_to_address_list_errors(), tuple()}.
register_member_to_address_list(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterMemberToAddressList">>, Input, Options).

%% @doc Starts an import job for an address list.
-spec start_address_list_import_job(aws_client:aws_client(), start_address_list_import_job_request()) ->
    {ok, start_address_list_import_job_response(), tuple()} |
    {error, any()} |
    {error, start_address_list_import_job_errors(), tuple()}.
start_address_list_import_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_address_list_import_job(Client, Input, []).

-spec start_address_list_import_job(aws_client:aws_client(), start_address_list_import_job_request(), proplists:proplist()) ->
    {ok, start_address_list_import_job_response(), tuple()} |
    {error, any()} |
    {error, start_address_list_import_job_errors(), tuple()}.
start_address_list_import_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartAddressListImportJob">>, Input, Options).

%% @doc Initiates an export of emails from the specified archive.
-spec start_archive_export(aws_client:aws_client(), start_archive_export_request()) ->
    {ok, start_archive_export_response(), tuple()} |
    {error, any()} |
    {error, start_archive_export_errors(), tuple()}.
start_archive_export(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_archive_export(Client, Input, []).

-spec start_archive_export(aws_client:aws_client(), start_archive_export_request(), proplists:proplist()) ->
    {ok, start_archive_export_response(), tuple()} |
    {error, any()} |
    {error, start_archive_export_errors(), tuple()}.
start_archive_export(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartArchiveExport">>, Input, Options).

%% @doc Initiates a search across emails in the specified archive.
-spec start_archive_search(aws_client:aws_client(), start_archive_search_request()) ->
    {ok, start_archive_search_response(), tuple()} |
    {error, any()} |
    {error, start_archive_search_errors(), tuple()}.
start_archive_search(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_archive_search(Client, Input, []).

-spec start_archive_search(aws_client:aws_client(), start_archive_search_request(), proplists:proplist()) ->
    {ok, start_archive_search_response(), tuple()} |
    {error, any()} |
    {error, start_archive_search_errors(), tuple()}.
start_archive_search(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartArchiveSearch">>, Input, Options).

%% @doc Stops an ongoing import job for an address list.
-spec stop_address_list_import_job(aws_client:aws_client(), stop_address_list_import_job_request()) ->
    {ok, stop_address_list_import_job_response(), tuple()} |
    {error, any()} |
    {error, stop_address_list_import_job_errors(), tuple()}.
stop_address_list_import_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_address_list_import_job(Client, Input, []).

-spec stop_address_list_import_job(aws_client:aws_client(), stop_address_list_import_job_request(), proplists:proplist()) ->
    {ok, stop_address_list_import_job_response(), tuple()} |
    {error, any()} |
    {error, stop_address_list_import_job_errors(), tuple()}.
stop_address_list_import_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopAddressListImportJob">>, Input, Options).

%% @doc Stops an in-progress export of emails from an archive.
-spec stop_archive_export(aws_client:aws_client(), stop_archive_export_request()) ->
    {ok, stop_archive_export_response(), tuple()} |
    {error, any()} |
    {error, stop_archive_export_errors(), tuple()}.
stop_archive_export(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_archive_export(Client, Input, []).

-spec stop_archive_export(aws_client:aws_client(), stop_archive_export_request(), proplists:proplist()) ->
    {ok, stop_archive_export_response(), tuple()} |
    {error, any()} |
    {error, stop_archive_export_errors(), tuple()}.
stop_archive_export(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopArchiveExport">>, Input, Options).

%% @doc Stops an in-progress archive search job.
-spec stop_archive_search(aws_client:aws_client(), stop_archive_search_request()) ->
    {ok, stop_archive_search_response(), tuple()} |
    {error, any()} |
    {error, stop_archive_search_errors(), tuple()}.
stop_archive_search(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_archive_search(Client, Input, []).

-spec stop_archive_search(aws_client:aws_client(), stop_archive_search_request(), proplists:proplist()) ->
    {ok, stop_archive_search_response(), tuple()} |
    {error, any()} |
    {error, stop_archive_search_errors(), tuple()}.
stop_archive_search(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopArchiveSearch">>, Input, Options).

%% @doc Adds one or more tags (keys and values) to a specified resource.
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

%% @doc Remove one or more tags (keys and values) from a specified resource.
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

%% @doc Updates the attributes of an existing email archive.
-spec update_archive(aws_client:aws_client(), update_archive_request()) ->
    {ok, update_archive_response(), tuple()} |
    {error, any()} |
    {error, update_archive_errors(), tuple()}.
update_archive(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_archive(Client, Input, []).

-spec update_archive(aws_client:aws_client(), update_archive_request(), proplists:proplist()) ->
    {ok, update_archive_response(), tuple()} |
    {error, any()} |
    {error, update_archive_errors(), tuple()}.
update_archive(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateArchive">>, Input, Options).

%% @doc Update attributes of a provisioned ingress endpoint resource.
-spec update_ingress_point(aws_client:aws_client(), update_ingress_point_request()) ->
    {ok, update_ingress_point_response(), tuple()} |
    {error, any()} |
    {error, update_ingress_point_errors(), tuple()}.
update_ingress_point(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_ingress_point(Client, Input, []).

-spec update_ingress_point(aws_client:aws_client(), update_ingress_point_request(), proplists:proplist()) ->
    {ok, update_ingress_point_response(), tuple()} |
    {error, any()} |
    {error, update_ingress_point_errors(), tuple()}.
update_ingress_point(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateIngressPoint">>, Input, Options).

%% @doc Updates the attributes of an existing relay resource.
-spec update_relay(aws_client:aws_client(), update_relay_request()) ->
    {ok, update_relay_response(), tuple()} |
    {error, any()} |
    {error, update_relay_errors(), tuple()}.
update_relay(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_relay(Client, Input, []).

-spec update_relay(aws_client:aws_client(), update_relay_request(), proplists:proplist()) ->
    {ok, update_relay_response(), tuple()} |
    {error, any()} |
    {error, update_relay_errors(), tuple()}.
update_relay(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateRelay">>, Input, Options).

%% @doc Update attributes of an already provisioned rule set.
-spec update_rule_set(aws_client:aws_client(), update_rule_set_request()) ->
    {ok, update_rule_set_response(), tuple()} |
    {error, any()} |
    {error, update_rule_set_errors(), tuple()}.
update_rule_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_rule_set(Client, Input, []).

-spec update_rule_set(aws_client:aws_client(), update_rule_set_request(), proplists:proplist()) ->
    {ok, update_rule_set_response(), tuple()} |
    {error, any()} |
    {error, update_rule_set_errors(), tuple()}.
update_rule_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateRuleSet">>, Input, Options).

%% @doc Update attributes of an already provisioned traffic policy resource.
-spec update_traffic_policy(aws_client:aws_client(), update_traffic_policy_request()) ->
    {ok, update_traffic_policy_response(), tuple()} |
    {error, any()} |
    {error, update_traffic_policy_errors(), tuple()}.
update_traffic_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_traffic_policy(Client, Input, []).

-spec update_traffic_policy(aws_client:aws_client(), update_traffic_policy_request(), proplists:proplist()) ->
    {ok, update_traffic_policy_response(), tuple()} |
    {error, any()} |
    {error, update_traffic_policy_errors(), tuple()}.
update_traffic_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateTrafficPolicy">>, Input, Options).

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
    Host = build_host(<<"mail-manager">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
        {<<"X-Amz-Target">>, <<"MailManagerSvc.", Action/binary>>}
    ],

    Input = Input0,

    Payload = jsx:encode(Input),
    SignedHeaders = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, SignedHeaders, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    case hackney:body(Client) of
        {ok, <<>>} ->
            {ok, undefined, {200, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body),
            {ok, Result, {200, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
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
