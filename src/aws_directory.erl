%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Directory Service
%%
%% Directory Service is a web service that makes it easy for you to setup and
%% run directories in the
%% Amazon Web Services cloud, or connect your Amazon Web Services resources
%% with an existing self-managed Microsoft Active
%% Directory.
%%
%% This guide provides detailed information about Directory Service
%% operations, data types,
%% parameters, and errors. For information about Directory Services features,
%% see Directory Service: https://aws.amazon.com/directoryservice/ and the
%% Directory Service
%% Administration Guide:
%% http://docs.aws.amazon.com/directoryservice/latest/admin-guide/what_is.html.
%%
%% Amazon Web Services provides SDKs that consist of libraries and sample
%% code for various
%% programming languages and platforms (Java, Ruby, .Net, iOS, Android,
%% etc.). The SDKs
%% provide a convenient way to create programmatic access to Directory
%% Service and other Amazon Web Services
%% services. For more information about the Amazon Web Services SDKs,
%% including how to download and
%% install them, see Tools for Amazon Web
%% Services: http://aws.amazon.com/tools/.
-module(aws_directory).

-export([accept_shared_directory/2,
         accept_shared_directory/3,
         add_ip_routes/2,
         add_ip_routes/3,
         add_region/2,
         add_region/3,
         add_tags_to_resource/2,
         add_tags_to_resource/3,
         cancel_schema_extension/2,
         cancel_schema_extension/3,
         connect_directory/2,
         connect_directory/3,
         create_alias/2,
         create_alias/3,
         create_computer/2,
         create_computer/3,
         create_conditional_forwarder/2,
         create_conditional_forwarder/3,
         create_directory/2,
         create_directory/3,
         create_hybrid_ad/2,
         create_hybrid_ad/3,
         create_log_subscription/2,
         create_log_subscription/3,
         create_microsoft_ad/2,
         create_microsoft_ad/3,
         create_snapshot/2,
         create_snapshot/3,
         create_trust/2,
         create_trust/3,
         delete_ad_assessment/2,
         delete_ad_assessment/3,
         delete_conditional_forwarder/2,
         delete_conditional_forwarder/3,
         delete_directory/2,
         delete_directory/3,
         delete_log_subscription/2,
         delete_log_subscription/3,
         delete_snapshot/2,
         delete_snapshot/3,
         delete_trust/2,
         delete_trust/3,
         deregister_certificate/2,
         deregister_certificate/3,
         deregister_event_topic/2,
         deregister_event_topic/3,
         describe_ad_assessment/2,
         describe_ad_assessment/3,
         describe_certificate/2,
         describe_certificate/3,
         describe_client_authentication_settings/2,
         describe_client_authentication_settings/3,
         describe_conditional_forwarders/2,
         describe_conditional_forwarders/3,
         describe_directories/2,
         describe_directories/3,
         describe_directory_data_access/2,
         describe_directory_data_access/3,
         describe_domain_controllers/2,
         describe_domain_controllers/3,
         describe_event_topics/2,
         describe_event_topics/3,
         describe_hybrid_ad_update/2,
         describe_hybrid_ad_update/3,
         describe_ldaps_settings/2,
         describe_ldaps_settings/3,
         describe_regions/2,
         describe_regions/3,
         describe_settings/2,
         describe_settings/3,
         describe_shared_directories/2,
         describe_shared_directories/3,
         describe_snapshots/2,
         describe_snapshots/3,
         describe_trusts/2,
         describe_trusts/3,
         describe_update_directory/2,
         describe_update_directory/3,
         disable_client_authentication/2,
         disable_client_authentication/3,
         disable_directory_data_access/2,
         disable_directory_data_access/3,
         disable_ldaps/2,
         disable_ldaps/3,
         disable_radius/2,
         disable_radius/3,
         disable_sso/2,
         disable_sso/3,
         enable_client_authentication/2,
         enable_client_authentication/3,
         enable_directory_data_access/2,
         enable_directory_data_access/3,
         enable_ldaps/2,
         enable_ldaps/3,
         enable_radius/2,
         enable_radius/3,
         enable_sso/2,
         enable_sso/3,
         get_directory_limits/2,
         get_directory_limits/3,
         get_snapshot_limits/2,
         get_snapshot_limits/3,
         list_ad_assessments/2,
         list_ad_assessments/3,
         list_certificates/2,
         list_certificates/3,
         list_ip_routes/2,
         list_ip_routes/3,
         list_log_subscriptions/2,
         list_log_subscriptions/3,
         list_schema_extensions/2,
         list_schema_extensions/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         register_certificate/2,
         register_certificate/3,
         register_event_topic/2,
         register_event_topic/3,
         reject_shared_directory/2,
         reject_shared_directory/3,
         remove_ip_routes/2,
         remove_ip_routes/3,
         remove_region/2,
         remove_region/3,
         remove_tags_from_resource/2,
         remove_tags_from_resource/3,
         reset_user_password/2,
         reset_user_password/3,
         restore_from_snapshot/2,
         restore_from_snapshot/3,
         share_directory/2,
         share_directory/3,
         start_ad_assessment/2,
         start_ad_assessment/3,
         start_schema_extension/2,
         start_schema_extension/3,
         unshare_directory/2,
         unshare_directory/3,
         update_conditional_forwarder/2,
         update_conditional_forwarder/3,
         update_directory_setup/2,
         update_directory_setup/3,
         update_hybrid_ad/2,
         update_hybrid_ad/3,
         update_number_of_domain_controllers/2,
         update_number_of_domain_controllers/3,
         update_radius/2,
         update_radius/3,
         update_settings/2,
         update_settings/3,
         update_trust/2,
         update_trust/3,
         verify_trust/2,
         verify_trust/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% enable_radius_result() :: #{

%% }
-type enable_radius_result() :: #{binary() => any()}.

%% Example:
%% list_certificates_result() :: #{
%%   <<"CertificatesInfo">> => list(certificate_info()),
%%   <<"NextToken">> => string()
%% }
-type list_certificates_result() :: #{binary() => any()}.

%% Example:
%% domain_controller() :: #{
%%   <<"AvailabilityZone">> => string(),
%%   <<"DirectoryId">> => string(),
%%   <<"DnsIpAddr">> => string(),
%%   <<"DomainControllerId">> => string(),
%%   <<"LaunchTime">> => non_neg_integer(),
%%   <<"Status">> => list(any()),
%%   <<"StatusLastUpdatedDateTime">> => non_neg_integer(),
%%   <<"StatusReason">> => string(),
%%   <<"SubnetId">> => string(),
%%   <<"VpcId">> => string()
%% }
-type domain_controller() :: #{binary() => any()}.

%% Example:
%% delete_log_subscription_request() :: #{
%%   <<"DirectoryId">> := string()
%% }
-type delete_log_subscription_request() :: #{binary() => any()}.

%% Example:
%% entity_already_exists_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type entity_already_exists_exception() :: #{binary() => any()}.

%% Example:
%% client_authentication_setting_info() :: #{
%%   <<"LastUpdatedDateTime">> => non_neg_integer(),
%%   <<"Status">> => list(any()),
%%   <<"Type">> => list(any())
%% }
-type client_authentication_setting_info() :: #{binary() => any()}.

%% Example:
%% update_value() :: #{
%%   <<"OSUpdateSettings">> => o_s_update_settings()
%% }
-type update_value() :: #{binary() => any()}.

%% Example:
%% update_number_of_domain_controllers_result() :: #{

%% }
-type update_number_of_domain_controllers_result() :: #{binary() => any()}.

%% Example:
%% unshare_target() :: #{
%%   <<"Id">> => string(),
%%   <<"Type">> => list(any())
%% }
-type unshare_target() :: #{binary() => any()}.

%% Example:
%% create_directory_request() :: #{
%%   <<"Description">> => string(),
%%   <<"Name">> := string(),
%%   <<"Password">> := string(),
%%   <<"ShortName">> => string(),
%%   <<"Size">> := list(any()),
%%   <<"Tags">> => list(tag()),
%%   <<"VpcSettings">> => directory_vpc_settings()
%% }
-type create_directory_request() :: #{binary() => any()}.

%% Example:
%% delete_snapshot_request() :: #{
%%   <<"SnapshotId">> := string()
%% }
-type delete_snapshot_request() :: #{binary() => any()}.

%% Example:
%% describe_ldaps_settings_request() :: #{
%%   <<"DirectoryId">> := string(),
%%   <<"Limit">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Type">> => list(any())
%% }
-type describe_ldaps_settings_request() :: #{binary() => any()}.

%% Example:
%% verify_trust_request() :: #{
%%   <<"TrustId">> := string()
%% }
-type verify_trust_request() :: #{binary() => any()}.

%% Example:
%% describe_event_topics_request() :: #{
%%   <<"DirectoryId">> => string(),
%%   <<"TopicNames">> => list(string())
%% }
-type describe_event_topics_request() :: #{binary() => any()}.

%% Example:
%% describe_ldaps_settings_result() :: #{
%%   <<"LDAPSSettingsInfo">> => list(ldaps_setting_info()),
%%   <<"NextToken">> => string()
%% }
-type describe_ldaps_settings_result() :: #{binary() => any()}.

%% Example:
%% update_conditional_forwarder_request() :: #{
%%   <<"DirectoryId">> := string(),
%%   <<"DnsIpAddrs">> := list(string()),
%%   <<"RemoteDomainName">> := string()
%% }
-type update_conditional_forwarder_request() :: #{binary() => any()}.

%% Example:
%% snapshot_limit_exceeded_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type snapshot_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% ip_route() :: #{
%%   <<"CidrIp">> => string(),
%%   <<"Description">> => string()
%% }
-type ip_route() :: #{binary() => any()}.

%% Example:
%% invalid_target_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type invalid_target_exception() :: #{binary() => any()}.

%% Example:
%% get_snapshot_limits_result() :: #{
%%   <<"SnapshotLimits">> => snapshot_limits()
%% }
-type get_snapshot_limits_result() :: #{binary() => any()}.

%% Example:
%% update_hybrid_ad_request() :: #{
%%   <<"DirectoryId">> := string(),
%%   <<"HybridAdministratorAccountUpdate">> => hybrid_administrator_account_update(),
%%   <<"SelfManagedInstancesSettings">> => hybrid_customer_instances_settings()
%% }
-type update_hybrid_ad_request() :: #{binary() => any()}.

%% Example:
%% unshare_directory_request() :: #{
%%   <<"DirectoryId">> := string(),
%%   <<"UnshareTarget">> := unshare_target()
%% }
-type unshare_directory_request() :: #{binary() => any()}.

%% Example:
%% domain_controller_limit_exceeded_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type domain_controller_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% create_directory_result() :: #{
%%   <<"DirectoryId">> => string()
%% }
-type create_directory_result() :: #{binary() => any()}.

%% Example:
%% unsupported_operation_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type unsupported_operation_exception() :: #{binary() => any()}.

%% Example:
%% invalid_ldaps_status_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type invalid_ldaps_status_exception() :: #{binary() => any()}.

%% Example:
%% create_trust_request() :: #{
%%   <<"ConditionalForwarderIpAddrs">> => list(string()),
%%   <<"DirectoryId">> := string(),
%%   <<"RemoteDomainName">> := string(),
%%   <<"SelectiveAuth">> => list(any()),
%%   <<"TrustDirection">> := list(any()),
%%   <<"TrustPassword">> := string(),
%%   <<"TrustType">> => list(any())
%% }
-type create_trust_request() :: #{binary() => any()}.

%% Example:
%% remove_ip_routes_result() :: #{

%% }
-type remove_ip_routes_result() :: #{binary() => any()}.

%% Example:
%% hybrid_update_activities() :: #{
%%   <<"HybridAdministratorAccount">> => list(hybrid_update_info_entry()),
%%   <<"SelfManagedInstances">> => list(hybrid_update_info_entry())
%% }
-type hybrid_update_activities() :: #{binary() => any()}.

%% Example:
%% reject_shared_directory_request() :: #{
%%   <<"SharedDirectoryId">> := string()
%% }
-type reject_shared_directory_request() :: #{binary() => any()}.

%% Example:
%% o_s_update_settings() :: #{
%%   <<"OSVersion">> => list(any())
%% }
-type o_s_update_settings() :: #{binary() => any()}.

%% Example:
%% insufficient_permissions_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type insufficient_permissions_exception() :: #{binary() => any()}.

%% Example:
%% certificate_info() :: #{
%%   <<"CertificateId">> => string(),
%%   <<"CommonName">> => string(),
%%   <<"ExpiryDateTime">> => non_neg_integer(),
%%   <<"State">> => list(any()),
%%   <<"Type">> => list(any())
%% }
-type certificate_info() :: #{binary() => any()}.

%% Example:
%% setting() :: #{
%%   <<"Name">> => string(),
%%   <<"Value">> => string()
%% }
-type setting() :: #{binary() => any()}.

%% Example:
%% create_conditional_forwarder_result() :: #{

%% }
-type create_conditional_forwarder_result() :: #{binary() => any()}.

%% Example:
%% describe_ad_assessment_result() :: #{
%%   <<"Assessment">> => assessment(),
%%   <<"AssessmentReports">> => list(assessment_report())
%% }
-type describe_ad_assessment_result() :: #{binary() => any()}.

%% Example:
%% share_directory_request() :: #{
%%   <<"DirectoryId">> := string(),
%%   <<"ShareMethod">> := list(any()),
%%   <<"ShareNotes">> => string(),
%%   <<"ShareTarget">> := share_target()
%% }
-type share_directory_request() :: #{binary() => any()}.

%% Example:
%% describe_hybrid_ad_update_request() :: #{
%%   <<"DirectoryId">> := string(),
%%   <<"NextToken">> => string(),
%%   <<"UpdateType">> => list(any())
%% }
-type describe_hybrid_ad_update_request() :: #{binary() => any()}.

%% Example:
%% setting_entry() :: #{
%%   <<"AllowedValues">> => string(),
%%   <<"AppliedValue">> => string(),
%%   <<"DataType">> => string(),
%%   <<"LastRequestedDateTime">> => non_neg_integer(),
%%   <<"LastUpdatedDateTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"RequestDetailedStatus">> => map(),
%%   <<"RequestStatus">> => list(any()),
%%   <<"RequestStatusMessage">> => string(),
%%   <<"RequestedValue">> => string(),
%%   <<"Type">> => string()
%% }
-type setting_entry() :: #{binary() => any()}.

%% Example:
%% create_conditional_forwarder_request() :: #{
%%   <<"DirectoryId">> := string(),
%%   <<"DnsIpAddrs">> := list(string()),
%%   <<"RemoteDomainName">> := string()
%% }
-type create_conditional_forwarder_request() :: #{binary() => any()}.

%% Example:
%% create_alias_request() :: #{
%%   <<"Alias">> := string(),
%%   <<"DirectoryId">> := string()
%% }
-type create_alias_request() :: #{binary() => any()}.

%% Example:
%% no_available_certificate_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type no_available_certificate_exception() :: #{binary() => any()}.

%% Example:
%% directory_in_desired_state_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type directory_in_desired_state_exception() :: #{binary() => any()}.

%% Example:
%% region_limit_exceeded_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type region_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% create_snapshot_request() :: #{
%%   <<"DirectoryId">> := string(),
%%   <<"Name">> => string()
%% }
-type create_snapshot_request() :: #{binary() => any()}.

%% Example:
%% register_certificate_result() :: #{
%%   <<"CertificateId">> => string()
%% }
-type register_certificate_result() :: #{binary() => any()}.

%% Example:
%% list_log_subscriptions_request() :: #{
%%   <<"DirectoryId">> => string(),
%%   <<"Limit">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_log_subscriptions_request() :: #{binary() => any()}.

%% Example:
%% directory_already_shared_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type directory_already_shared_exception() :: #{binary() => any()}.

%% Example:
%% disable_client_authentication_result() :: #{

%% }
-type disable_client_authentication_result() :: #{binary() => any()}.

%% Example:
%% unshare_directory_result() :: #{
%%   <<"SharedDirectoryId">> => string()
%% }
-type unshare_directory_result() :: #{binary() => any()}.

%% Example:
%% remove_region_request() :: #{
%%   <<"DirectoryId">> := string()
%% }
-type remove_region_request() :: #{binary() => any()}.

%% Example:
%% update_trust_result() :: #{
%%   <<"RequestId">> => string(),
%%   <<"TrustId">> => string()
%% }
-type update_trust_result() :: #{binary() => any()}.

%% Example:
%% describe_directory_data_access_request() :: #{
%%   <<"DirectoryId">> := string()
%% }
-type describe_directory_data_access_request() :: #{binary() => any()}.

%% Example:
%% ad_assessment_limit_exceeded_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type ad_assessment_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% enable_radius_request() :: #{
%%   <<"DirectoryId">> := string(),
%%   <<"RadiusSettings">> := radius_settings()
%% }
-type enable_radius_request() :: #{binary() => any()}.

%% Example:
%% unsupported_settings_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type unsupported_settings_exception() :: #{binary() => any()}.

%% Example:
%% restore_from_snapshot_request() :: #{
%%   <<"SnapshotId">> := string()
%% }
-type restore_from_snapshot_request() :: #{binary() => any()}.

%% Example:
%% computer() :: #{
%%   <<"ComputerAttributes">> => list(attribute()),
%%   <<"ComputerId">> => string(),
%%   <<"ComputerName">> => string()
%% }
-type computer() :: #{binary() => any()}.

%% Example:
%% get_directory_limits_result() :: #{
%%   <<"DirectoryLimits">> => directory_limits()
%% }
-type get_directory_limits_result() :: #{binary() => any()}.

%% Example:
%% verify_trust_result() :: #{
%%   <<"TrustId">> => string()
%% }
-type verify_trust_result() :: #{binary() => any()}.

%% Example:
%% deregister_certificate_request() :: #{
%%   <<"CertificateId">> := string(),
%%   <<"DirectoryId">> := string()
%% }
-type deregister_certificate_request() :: #{binary() => any()}.

%% Example:
%% list_schema_extensions_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"SchemaExtensionsInfo">> => list(schema_extension_info())
%% }
-type list_schema_extensions_result() :: #{binary() => any()}.

%% Example:
%% enable_directory_data_access_request() :: #{
%%   <<"DirectoryId">> := string()
%% }
-type enable_directory_data_access_request() :: #{binary() => any()}.

%% Example:
%% add_tags_to_resource_request() :: #{
%%   <<"ResourceId">> := string(),
%%   <<"Tags">> := list(tag())
%% }
-type add_tags_to_resource_request() :: #{binary() => any()}.

%% Example:
%% describe_ad_assessment_request() :: #{
%%   <<"AssessmentId">> := string()
%% }
-type describe_ad_assessment_request() :: #{binary() => any()}.

%% Example:
%% remove_region_result() :: #{

%% }
-type remove_region_result() :: #{binary() => any()}.

%% Example:
%% disable_sso_request() :: #{
%%   <<"DirectoryId">> := string(),
%%   <<"Password">> => string(),
%%   <<"UserName">> => string()
%% }
-type disable_sso_request() :: #{binary() => any()}.

%% Example:
%% update_info_entry() :: #{
%%   <<"InitiatedBy">> => string(),
%%   <<"LastUpdatedDateTime">> => non_neg_integer(),
%%   <<"NewValue">> => update_value(),
%%   <<"PreviousValue">> => update_value(),
%%   <<"Region">> => string(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"Status">> => list(any()),
%%   <<"StatusReason">> => string()
%% }
-type update_info_entry() :: #{binary() => any()}.

%% Example:
%% add_region_result() :: #{

%% }
-type add_region_result() :: #{binary() => any()}.

%% Example:
%% cancel_schema_extension_result() :: #{

%% }
-type cancel_schema_extension_result() :: #{binary() => any()}.

%% Example:
%% directory_not_shared_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type directory_not_shared_exception() :: #{binary() => any()}.

%% Example:
%% start_ad_assessment_result() :: #{
%%   <<"AssessmentId">> => string()
%% }
-type start_ad_assessment_result() :: #{binary() => any()}.

%% Example:
%% describe_update_directory_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"UpdateActivities">> => list(update_info_entry())
%% }
-type describe_update_directory_result() :: #{binary() => any()}.

%% Example:
%% start_ad_assessment_request() :: #{
%%   <<"AssessmentConfiguration">> => assessment_configuration(),
%%   <<"DirectoryId">> => string()
%% }
-type start_ad_assessment_request() :: #{binary() => any()}.

%% Example:
%% client_cert_auth_settings() :: #{
%%   <<"OCSPUrl">> => string()
%% }
-type client_cert_auth_settings() :: #{binary() => any()}.

%% Example:
%% create_log_subscription_request() :: #{
%%   <<"DirectoryId">> := string(),
%%   <<"LogGroupName">> := string()
%% }
-type create_log_subscription_request() :: #{binary() => any()}.

%% Example:
%% create_computer_result() :: #{
%%   <<"Computer">> => computer()
%% }
-type create_computer_result() :: #{binary() => any()}.

%% Example:
%% describe_trusts_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Trusts">> => list(trust())
%% }
-type describe_trusts_result() :: #{binary() => any()}.

%% Example:
%% list_certificates_request() :: #{
%%   <<"DirectoryId">> := string(),
%%   <<"Limit">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_certificates_request() :: #{binary() => any()}.

%% Example:
%% share_directory_result() :: #{
%%   <<"SharedDirectoryId">> => string()
%% }
-type share_directory_result() :: #{binary() => any()}.

%% Example:
%% create_microsoft_ad_result() :: #{
%%   <<"DirectoryId">> => string()
%% }
-type create_microsoft_ad_result() :: #{binary() => any()}.

%% Example:
%% directory_limits() :: #{
%%   <<"CloudOnlyDirectoriesCurrentCount">> => integer(),
%%   <<"CloudOnlyDirectoriesLimit">> => integer(),
%%   <<"CloudOnlyDirectoriesLimitReached">> => boolean(),
%%   <<"CloudOnlyMicrosoftADCurrentCount">> => integer(),
%%   <<"CloudOnlyMicrosoftADLimit">> => integer(),
%%   <<"CloudOnlyMicrosoftADLimitReached">> => boolean(),
%%   <<"ConnectedDirectoriesCurrentCount">> => integer(),
%%   <<"ConnectedDirectoriesLimit">> => integer(),
%%   <<"ConnectedDirectoriesLimitReached">> => boolean()
%% }
-type directory_limits() :: #{binary() => any()}.

%% Example:
%% owner_directory_description() :: #{
%%   <<"AccountId">> => string(),
%%   <<"DirectoryId">> => string(),
%%   <<"DnsIpAddrs">> => list(string()),
%%   <<"RadiusSettings">> => radius_settings(),
%%   <<"RadiusStatus">> => list(any()),
%%   <<"VpcSettings">> => directory_vpc_settings_description()
%% }
-type owner_directory_description() :: #{binary() => any()}.

%% Example:
%% update_directory_setup_result() :: #{

%% }
-type update_directory_setup_result() :: #{binary() => any()}.

%% Example:
%% describe_directories_request() :: #{
%%   <<"DirectoryIds">> => list(string()),
%%   <<"Limit">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_directories_request() :: #{binary() => any()}.

%% Example:
%% list_ip_routes_request() :: #{
%%   <<"DirectoryId">> := string(),
%%   <<"Limit">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_ip_routes_request() :: #{binary() => any()}.

%% Example:
%% certificate_already_exists_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type certificate_already_exists_exception() :: #{binary() => any()}.

%% Example:
%% hybrid_customer_instances_settings() :: #{
%%   <<"CustomerDnsIps">> => list(string()),
%%   <<"InstanceIds">> => list(string())
%% }
-type hybrid_customer_instances_settings() :: #{binary() => any()}.

%% Example:
%% get_snapshot_limits_request() :: #{
%%   <<"DirectoryId">> := string()
%% }
-type get_snapshot_limits_request() :: #{binary() => any()}.

%% Example:
%% disable_ldaps_result() :: #{

%% }
-type disable_ldaps_result() :: #{binary() => any()}.

%% Example:
%% describe_regions_request() :: #{
%%   <<"DirectoryId">> := string(),
%%   <<"NextToken">> => string(),
%%   <<"RegionName">> => string()
%% }
-type describe_regions_request() :: #{binary() => any()}.

%% Example:
%% enable_ldaps_result() :: #{

%% }
-type enable_ldaps_result() :: #{binary() => any()}.

%% Example:
%% deregister_event_topic_result() :: #{

%% }
-type deregister_event_topic_result() :: #{binary() => any()}.

%% Example:
%% enable_sso_result() :: #{

%% }
-type enable_sso_result() :: #{binary() => any()}.

%% Example:
%% shared_directory() :: #{
%%   <<"CreatedDateTime">> => non_neg_integer(),
%%   <<"LastUpdatedDateTime">> => non_neg_integer(),
%%   <<"OwnerAccountId">> => string(),
%%   <<"OwnerDirectoryId">> => string(),
%%   <<"ShareMethod">> => list(any()),
%%   <<"ShareNotes">> => string(),
%%   <<"ShareStatus">> => list(any()),
%%   <<"SharedAccountId">> => string(),
%%   <<"SharedDirectoryId">> => string()
%% }
-type shared_directory() :: #{binary() => any()}.

%% Example:
%% client_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type client_exception() :: #{binary() => any()}.

%% Example:
%% radius_settings() :: #{
%%   <<"AuthenticationProtocol">> => list(any()),
%%   <<"DisplayLabel">> => string(),
%%   <<"RadiusPort">> => integer(),
%%   <<"RadiusRetries">> => integer(),
%%   <<"RadiusServers">> => list(string()),
%%   <<"RadiusTimeout">> => integer(),
%%   <<"SharedSecret">> => string(),
%%   <<"UseSameUsername">> => boolean()
%% }
-type radius_settings() :: #{binary() => any()}.

%% Example:
%% add_ip_routes_result() :: #{

%% }
-type add_ip_routes_result() :: #{binary() => any()}.

%% Example:
%% disable_ldaps_request() :: #{
%%   <<"DirectoryId">> := string(),
%%   <<"Type">> := list(any())
%% }
-type disable_ldaps_request() :: #{binary() => any()}.

%% Example:
%% describe_event_topics_result() :: #{
%%   <<"EventTopics">> => list(event_topic())
%% }
-type describe_event_topics_result() :: #{binary() => any()}.

%% Example:
%% assessment_validation() :: #{
%%   <<"Category">> => string(),
%%   <<"LastUpdateDateTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"Status">> => string(),
%%   <<"StatusCode">> => string(),
%%   <<"StatusReason">> => string()
%% }
-type assessment_validation() :: #{binary() => any()}.

%% Example:
%% directory_does_not_exist_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type directory_does_not_exist_exception() :: #{binary() => any()}.

%% Example:
%% log_subscription() :: #{
%%   <<"DirectoryId">> => string(),
%%   <<"LogGroupName">> => string(),
%%   <<"SubscriptionCreatedDateTime">> => non_neg_integer()
%% }
-type log_subscription() :: #{binary() => any()}.

%% Example:
%% list_ad_assessments_result() :: #{
%%   <<"Assessments">> => list(assessment_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_ad_assessments_result() :: #{binary() => any()}.

%% Example:
%% incompatible_settings_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type incompatible_settings_exception() :: #{binary() => any()}.

%% Example:
%% enable_directory_data_access_result() :: #{

%% }
-type enable_directory_data_access_result() :: #{binary() => any()}.

%% Example:
%% assessment_configuration() :: #{
%%   <<"CustomerDnsIps">> => list(string()),
%%   <<"DnsName">> => string(),
%%   <<"InstanceIds">> => list(string()),
%%   <<"SecurityGroupIds">> => list(string()),
%%   <<"VpcSettings">> => directory_vpc_settings()
%% }
-type assessment_configuration() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% describe_client_authentication_settings_request() :: #{
%%   <<"DirectoryId">> := string(),
%%   <<"Limit">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Type">> => list(any())
%% }
-type describe_client_authentication_settings_request() :: #{binary() => any()}.

%% Example:
%% deregister_event_topic_request() :: #{
%%   <<"DirectoryId">> := string(),
%%   <<"TopicName">> := string()
%% }
-type deregister_event_topic_request() :: #{binary() => any()}.

%% Example:
%% organizations_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type organizations_exception() :: #{binary() => any()}.

%% Example:
%% delete_conditional_forwarder_result() :: #{

%% }
-type delete_conditional_forwarder_result() :: #{binary() => any()}.

%% Example:
%% directory_vpc_settings() :: #{
%%   <<"SubnetIds">> => list(string()),
%%   <<"VpcId">> => string()
%% }
-type directory_vpc_settings() :: #{binary() => any()}.

%% Example:
%% cancel_schema_extension_request() :: #{
%%   <<"DirectoryId">> := string(),
%%   <<"SchemaExtensionId">> := string()
%% }
-type cancel_schema_extension_request() :: #{binary() => any()}.

%% Example:
%% reset_user_password_result() :: #{

%% }
-type reset_user_password_result() :: #{binary() => any()}.

%% Example:
%% invalid_next_token_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type invalid_next_token_exception() :: #{binary() => any()}.

%% Example:
%% describe_certificate_request() :: #{
%%   <<"CertificateId">> := string(),
%%   <<"DirectoryId">> := string()
%% }
-type describe_certificate_request() :: #{binary() => any()}.

%% Example:
%% enable_client_authentication_request() :: #{
%%   <<"DirectoryId">> := string(),
%%   <<"Type">> := list(any())
%% }
-type enable_client_authentication_request() :: #{binary() => any()}.

%% Example:
%% connect_directory_request() :: #{
%%   <<"ConnectSettings">> := directory_connect_settings(),
%%   <<"Description">> => string(),
%%   <<"Name">> := string(),
%%   <<"Password">> := string(),
%%   <<"ShortName">> => string(),
%%   <<"Size">> := list(any()),
%%   <<"Tags">> => list(tag())
%% }
-type connect_directory_request() :: #{binary() => any()}.

%% Example:
%% directory_vpc_settings_description() :: #{
%%   <<"AvailabilityZones">> => list(string()),
%%   <<"SecurityGroupId">> => string(),
%%   <<"SubnetIds">> => list(string()),
%%   <<"VpcId">> => string()
%% }
-type directory_vpc_settings_description() :: #{binary() => any()}.

%% Example:
%% describe_conditional_forwarders_result() :: #{
%%   <<"ConditionalForwarders">> => list(conditional_forwarder())
%% }
-type describe_conditional_forwarders_result() :: #{binary() => any()}.

%% Example:
%% delete_ad_assessment_result() :: #{
%%   <<"AssessmentId">> => string()
%% }
-type delete_ad_assessment_result() :: #{binary() => any()}.

%% Example:
%% describe_shared_directories_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"SharedDirectories">> => list(shared_directory())
%% }
-type describe_shared_directories_result() :: #{binary() => any()}.

%% Example:
%% describe_client_authentication_settings_result() :: #{
%%   <<"ClientAuthenticationSettingsInfo">> => list(client_authentication_setting_info()),
%%   <<"NextToken">> => string()
%% }
-type describe_client_authentication_settings_result() :: #{binary() => any()}.

%% Example:
%% tag_limit_exceeded_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type tag_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% create_trust_result() :: #{
%%   <<"TrustId">> => string()
%% }
-type create_trust_result() :: #{binary() => any()}.

%% Example:
%% directory_description() :: #{
%%   <<"AccessUrl">> => string(),
%%   <<"Alias">> => string(),
%%   <<"ConnectSettings">> => directory_connect_settings_description(),
%%   <<"Description">> => string(),
%%   <<"DesiredNumberOfDomainControllers">> => integer(),
%%   <<"DirectoryId">> => string(),
%%   <<"DnsIpAddrs">> => list(string()),
%%   <<"Edition">> => list(any()),
%%   <<"HybridSettings">> => hybrid_settings_description(),
%%   <<"LaunchTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"OsVersion">> => list(any()),
%%   <<"OwnerDirectoryDescription">> => owner_directory_description(),
%%   <<"RadiusSettings">> => radius_settings(),
%%   <<"RadiusStatus">> => list(any()),
%%   <<"RegionsInfo">> => regions_info(),
%%   <<"ShareMethod">> => list(any()),
%%   <<"ShareNotes">> => string(),
%%   <<"ShareStatus">> => list(any()),
%%   <<"ShortName">> => string(),
%%   <<"Size">> => list(any()),
%%   <<"SsoEnabled">> => boolean(),
%%   <<"Stage">> => list(any()),
%%   <<"StageLastUpdatedDateTime">> => non_neg_integer(),
%%   <<"StageReason">> => string(),
%%   <<"Type">> => list(any()),
%%   <<"VpcSettings">> => directory_vpc_settings_description()
%% }
-type directory_description() :: #{binary() => any()}.

%% Example:
%% service_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type service_exception() :: #{binary() => any()}.

%% Example:
%% invalid_certificate_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type invalid_certificate_exception() :: #{binary() => any()}.

%% Example:
%% schema_extension_info() :: #{
%%   <<"Description">> => string(),
%%   <<"DirectoryId">> => string(),
%%   <<"EndDateTime">> => non_neg_integer(),
%%   <<"SchemaExtensionId">> => string(),
%%   <<"SchemaExtensionStatus">> => list(any()),
%%   <<"SchemaExtensionStatusReason">> => string(),
%%   <<"StartDateTime">> => non_neg_integer()
%% }
-type schema_extension_info() :: #{binary() => any()}.

%% Example:
%% add_ip_routes_request() :: #{
%%   <<"DirectoryId">> := string(),
%%   <<"IpRoutes">> := list(ip_route()),
%%   <<"UpdateSecurityGroupForDirectoryControllers">> => boolean()
%% }
-type add_ip_routes_request() :: #{binary() => any()}.

%% Example:
%% conditional_forwarder() :: #{
%%   <<"DnsIpAddrs">> => list(string()),
%%   <<"RemoteDomainName">> => string(),
%%   <<"ReplicationScope">> => list(any())
%% }
-type conditional_forwarder() :: #{binary() => any()}.

%% Example:
%% deregister_certificate_result() :: #{

%% }
-type deregister_certificate_result() :: #{binary() => any()}.

%% Example:
%% update_settings_request() :: #{
%%   <<"DirectoryId">> := string(),
%%   <<"Settings">> := list(setting())
%% }
-type update_settings_request() :: #{binary() => any()}.

%% Example:
%% update_hybrid_ad_result() :: #{
%%   <<"AssessmentId">> => string(),
%%   <<"DirectoryId">> => string()
%% }
-type update_hybrid_ad_result() :: #{binary() => any()}.

%% Example:
%% register_certificate_request() :: #{
%%   <<"CertificateData">> := string(),
%%   <<"ClientCertAuthSettings">> => client_cert_auth_settings(),
%%   <<"DirectoryId">> := string(),
%%   <<"Type">> => list(any())
%% }
-type register_certificate_request() :: #{binary() => any()}.

%% Example:
%% delete_directory_result() :: #{
%%   <<"DirectoryId">> => string()
%% }
-type delete_directory_result() :: #{binary() => any()}.

%% Example:
%% describe_snapshots_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Snapshots">> => list(snapshot())
%% }
-type describe_snapshots_result() :: #{binary() => any()}.

%% Example:
%% describe_directories_result() :: #{
%%   <<"DirectoryDescriptions">> => list(directory_description()),
%%   <<"NextToken">> => string()
%% }
-type describe_directories_result() :: #{binary() => any()}.

%% Example:
%% update_trust_request() :: #{
%%   <<"SelectiveAuth">> => list(any()),
%%   <<"TrustId">> := string()
%% }
-type update_trust_request() :: #{binary() => any()}.

%% Example:
%% describe_domain_controllers_result() :: #{
%%   <<"DomainControllers">> => list(domain_controller()),
%%   <<"NextToken">> => string()
%% }
-type describe_domain_controllers_result() :: #{binary() => any()}.

%% Example:
%% remove_tags_from_resource_request() :: #{
%%   <<"ResourceId">> := string(),
%%   <<"TagKeys">> := list(string())
%% }
-type remove_tags_from_resource_request() :: #{binary() => any()}.

%% Example:
%% assessment() :: #{
%%   <<"AssessmentId">> => string(),
%%   <<"CustomerDnsIps">> => list(string()),
%%   <<"DirectoryId">> => string(),
%%   <<"DnsName">> => string(),
%%   <<"LastUpdateDateTime">> => non_neg_integer(),
%%   <<"ReportType">> => string(),
%%   <<"SecurityGroupIds">> => list(string()),
%%   <<"SelfManagedInstanceIds">> => list(string()),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"Status">> => string(),
%%   <<"StatusCode">> => string(),
%%   <<"StatusReason">> => string(),
%%   <<"SubnetIds">> => list(string()),
%%   <<"Version">> => string(),
%%   <<"VpcId">> => string()
%% }
-type assessment() :: #{binary() => any()}.

%% Example:
%% connect_directory_result() :: #{
%%   <<"DirectoryId">> => string()
%% }
-type connect_directory_result() :: #{binary() => any()}.

%% Example:
%% describe_update_directory_request() :: #{
%%   <<"DirectoryId">> := string(),
%%   <<"NextToken">> => string(),
%%   <<"RegionName">> => string(),
%%   <<"UpdateType">> := list(any())
%% }
-type describe_update_directory_request() :: #{binary() => any()}.

%% Example:
%% get_directory_limits_request() :: #{

%% }
-type get_directory_limits_request() :: #{binary() => any()}.

%% Example:
%% register_event_topic_result() :: #{

%% }
-type register_event_topic_result() :: #{binary() => any()}.

%% Example:
%% region_description() :: #{
%%   <<"DesiredNumberOfDomainControllers">> => integer(),
%%   <<"DirectoryId">> => string(),
%%   <<"LastUpdatedDateTime">> => non_neg_integer(),
%%   <<"LaunchTime">> => non_neg_integer(),
%%   <<"RegionName">> => string(),
%%   <<"RegionType">> => list(any()),
%%   <<"Status">> => list(any()),
%%   <<"StatusLastUpdatedDateTime">> => non_neg_integer(),
%%   <<"VpcSettings">> => directory_vpc_settings()
%% }
-type region_description() :: #{binary() => any()}.

%% Example:
%% restore_from_snapshot_result() :: #{

%% }
-type restore_from_snapshot_result() :: #{binary() => any()}.

%% Example:
%% delete_ad_assessment_request() :: #{
%%   <<"AssessmentId">> := string()
%% }
-type delete_ad_assessment_request() :: #{binary() => any()}.

%% Example:
%% list_ad_assessments_request() :: #{
%%   <<"DirectoryId">> => string(),
%%   <<"Limit">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_ad_assessments_request() :: #{binary() => any()}.

%% Example:
%% disable_radius_result() :: #{

%% }
-type disable_radius_result() :: #{binary() => any()}.

%% Example:
%% describe_conditional_forwarders_request() :: #{
%%   <<"DirectoryId">> := string(),
%%   <<"RemoteDomainNames">> => list(string())
%% }
-type describe_conditional_forwarders_request() :: #{binary() => any()}.

%% Example:
%% describe_trusts_request() :: #{
%%   <<"DirectoryId">> => string(),
%%   <<"Limit">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"TrustIds">> => list(string())
%% }
-type describe_trusts_request() :: #{binary() => any()}.

%% Example:
%% certificate_in_use_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type certificate_in_use_exception() :: #{binary() => any()}.

%% Example:
%% reset_user_password_request() :: #{
%%   <<"DirectoryId">> := string(),
%%   <<"NewPassword">> := string(),
%%   <<"UserName">> := string()
%% }
-type reset_user_password_request() :: #{binary() => any()}.

%% Example:
%% disable_directory_data_access_request() :: #{
%%   <<"DirectoryId">> := string()
%% }
-type disable_directory_data_access_request() :: #{binary() => any()}.

%% Example:
%% trust() :: #{
%%   <<"CreatedDateTime">> => non_neg_integer(),
%%   <<"DirectoryId">> => string(),
%%   <<"LastUpdatedDateTime">> => non_neg_integer(),
%%   <<"RemoteDomainName">> => string(),
%%   <<"SelectiveAuth">> => list(any()),
%%   <<"StateLastUpdatedDateTime">> => non_neg_integer(),
%%   <<"TrustDirection">> => list(any()),
%%   <<"TrustId">> => string(),
%%   <<"TrustState">> => list(any()),
%%   <<"TrustStateReason">> => string(),
%%   <<"TrustType">> => list(any())
%% }
-type trust() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Tags">> => list(tag())
%% }
-type list_tags_for_resource_result() :: #{binary() => any()}.

%% Example:
%% certificate() :: #{
%%   <<"CertificateId">> => string(),
%%   <<"ClientCertAuthSettings">> => client_cert_auth_settings(),
%%   <<"CommonName">> => string(),
%%   <<"ExpiryDateTime">> => non_neg_integer(),
%%   <<"RegisteredDateTime">> => non_neg_integer(),
%%   <<"State">> => list(any()),
%%   <<"StateReason">> => string(),
%%   <<"Type">> => list(any())
%% }
-type certificate() :: #{binary() => any()}.

%% Example:
%% accept_shared_directory_request() :: #{
%%   <<"SharedDirectoryId">> := string()
%% }
-type accept_shared_directory_request() :: #{binary() => any()}.

%% Example:
%% ldaps_setting_info() :: #{
%%   <<"LDAPSStatus">> => list(any()),
%%   <<"LDAPSStatusReason">> => string(),
%%   <<"LastUpdatedDateTime">> => non_neg_integer()
%% }
-type ldaps_setting_info() :: #{binary() => any()}.

%% Example:
%% hybrid_settings_description() :: #{
%%   <<"SelfManagedDnsIpAddrs">> => list(string()),
%%   <<"SelfManagedInstanceIds">> => list(string())
%% }
-type hybrid_settings_description() :: #{binary() => any()}.

%% Example:
%% delete_snapshot_result() :: #{
%%   <<"SnapshotId">> => string()
%% }
-type delete_snapshot_result() :: #{binary() => any()}.

%% Example:
%% hybrid_administrator_account_update() :: #{
%%   <<"SecretArn">> => string()
%% }
-type hybrid_administrator_account_update() :: #{binary() => any()}.

%% Example:
%% list_ip_routes_result() :: #{
%%   <<"IpRoutesInfo">> => list(ip_route_info()),
%%   <<"NextToken">> => string()
%% }
-type list_ip_routes_result() :: #{binary() => any()}.

%% Example:
%% disable_radius_request() :: #{
%%   <<"DirectoryId">> := string()
%% }
-type disable_radius_request() :: #{binary() => any()}.

%% Example:
%% user_does_not_exist_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type user_does_not_exist_exception() :: #{binary() => any()}.

%% Example:
%% snapshot() :: #{
%%   <<"DirectoryId">> => string(),
%%   <<"Name">> => string(),
%%   <<"SnapshotId">> => string(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"Status">> => list(any()),
%%   <<"Type">> => list(any())
%% }
-type snapshot() :: #{binary() => any()}.

%% Example:
%% ip_route_limit_exceeded_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type ip_route_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% reject_shared_directory_result() :: #{
%%   <<"SharedDirectoryId">> => string()
%% }
-type reject_shared_directory_result() :: #{binary() => any()}.

%% Example:
%% delete_log_subscription_result() :: #{

%% }
-type delete_log_subscription_result() :: #{binary() => any()}.

%% Example:
%% describe_shared_directories_request() :: #{
%%   <<"Limit">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"OwnerDirectoryId">> := string(),
%%   <<"SharedDirectoryIds">> => list(string())
%% }
-type describe_shared_directories_request() :: #{binary() => any()}.

%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% hybrid_update_value() :: #{
%%   <<"DnsIps">> => list(string()),
%%   <<"InstanceIds">> => list(string())
%% }
-type hybrid_update_value() :: #{binary() => any()}.

%% Example:
%% invalid_parameter_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type invalid_parameter_exception() :: #{binary() => any()}.

%% Example:
%% entity_does_not_exist_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type entity_does_not_exist_exception() :: #{binary() => any()}.

%% Example:
%% disable_sso_result() :: #{

%% }
-type disable_sso_result() :: #{binary() => any()}.

%% Example:
%% delete_directory_request() :: #{
%%   <<"DirectoryId">> := string()
%% }
-type delete_directory_request() :: #{binary() => any()}.

%% Example:
%% delete_conditional_forwarder_request() :: #{
%%   <<"DirectoryId">> := string(),
%%   <<"RemoteDomainName">> := string()
%% }
-type delete_conditional_forwarder_request() :: #{binary() => any()}.

%% Example:
%% invalid_client_auth_status_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type invalid_client_auth_status_exception() :: #{binary() => any()}.

%% Example:
%% directory_already_in_region_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type directory_already_in_region_exception() :: #{binary() => any()}.

%% Example:
%% list_log_subscriptions_result() :: #{
%%   <<"LogSubscriptions">> => list(log_subscription()),
%%   <<"NextToken">> => string()
%% }
-type list_log_subscriptions_result() :: #{binary() => any()}.

%% Example:
%% directory_unavailable_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type directory_unavailable_exception() :: #{binary() => any()}.

%% Example:
%% create_snapshot_result() :: #{
%%   <<"SnapshotId">> => string()
%% }
-type create_snapshot_result() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"Limit">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ResourceId">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% update_settings_result() :: #{
%%   <<"DirectoryId">> => string()
%% }
-type update_settings_result() :: #{binary() => any()}.

%% Example:
%% update_number_of_domain_controllers_request() :: #{
%%   <<"DesiredNumber">> := integer(),
%%   <<"DirectoryId">> := string()
%% }
-type update_number_of_domain_controllers_request() :: #{binary() => any()}.

%% Example:
%% describe_settings_result() :: #{
%%   <<"DirectoryId">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"SettingEntries">> => list(setting_entry())
%% }
-type describe_settings_result() :: #{binary() => any()}.

%% Example:
%% register_event_topic_request() :: #{
%%   <<"DirectoryId">> := string(),
%%   <<"TopicName">> := string()
%% }
-type register_event_topic_request() :: #{binary() => any()}.

%% Example:
%% remove_ip_routes_request() :: #{
%%   <<"CidrIps">> := list(string()),
%%   <<"DirectoryId">> := string()
%% }
-type remove_ip_routes_request() :: #{binary() => any()}.

%% Example:
%% enable_sso_request() :: #{
%%   <<"DirectoryId">> := string(),
%%   <<"Password">> => string(),
%%   <<"UserName">> => string()
%% }
-type enable_sso_request() :: #{binary() => any()}.

%% Example:
%% delete_trust_result() :: #{
%%   <<"TrustId">> => string()
%% }
-type delete_trust_result() :: #{binary() => any()}.

%% Example:
%% describe_hybrid_ad_update_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"UpdateActivities">> => hybrid_update_activities()
%% }
-type describe_hybrid_ad_update_result() :: #{binary() => any()}.

%% Example:
%% attribute() :: #{
%%   <<"Name">> => string(),
%%   <<"Value">> => string()
%% }
-type attribute() :: #{binary() => any()}.

%% Example:
%% describe_snapshots_request() :: #{
%%   <<"DirectoryId">> => string(),
%%   <<"Limit">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SnapshotIds">> => list(string())
%% }
-type describe_snapshots_request() :: #{binary() => any()}.

%% Example:
%% create_alias_result() :: #{
%%   <<"Alias">> => string(),
%%   <<"DirectoryId">> => string()
%% }
-type create_alias_result() :: #{binary() => any()}.

%% Example:
%% create_log_subscription_result() :: #{

%% }
-type create_log_subscription_result() :: #{binary() => any()}.

%% Example:
%% describe_directory_data_access_result() :: #{
%%   <<"DataAccessStatus">> => list(any())
%% }
-type describe_directory_data_access_result() :: #{binary() => any()}.

%% Example:
%% directory_limit_exceeded_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type directory_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% start_schema_extension_result() :: #{
%%   <<"SchemaExtensionId">> => string()
%% }
-type start_schema_extension_result() :: #{binary() => any()}.

%% Example:
%% start_schema_extension_request() :: #{
%%   <<"CreateSnapshotBeforeSchemaExtension">> := boolean(),
%%   <<"Description">> := string(),
%%   <<"DirectoryId">> := string(),
%%   <<"LdifContent">> := string()
%% }
-type start_schema_extension_request() :: #{binary() => any()}.

%% Example:
%% remove_tags_from_resource_result() :: #{

%% }
-type remove_tags_from_resource_result() :: #{binary() => any()}.

%% Example:
%% enable_ldaps_request() :: #{
%%   <<"DirectoryId">> := string(),
%%   <<"Type">> := list(any())
%% }
-type enable_ldaps_request() :: #{binary() => any()}.

%% Example:
%% describe_settings_request() :: #{
%%   <<"DirectoryId">> := string(),
%%   <<"NextToken">> => string(),
%%   <<"Status">> => list(any())
%% }
-type describe_settings_request() :: #{binary() => any()}.

%% Example:
%% directory_connect_settings_description() :: #{
%%   <<"AvailabilityZones">> => list(string()),
%%   <<"ConnectIps">> => list(string()),
%%   <<"CustomerUserName">> => string(),
%%   <<"SecurityGroupId">> => string(),
%%   <<"SubnetIds">> => list(string()),
%%   <<"VpcId">> => string()
%% }
-type directory_connect_settings_description() :: #{binary() => any()}.

%% Example:
%% hybrid_update_info_entry() :: #{
%%   <<"AssessmentId">> => string(),
%%   <<"InitiatedBy">> => string(),
%%   <<"LastUpdatedDateTime">> => non_neg_integer(),
%%   <<"NewValue">> => hybrid_update_value(),
%%   <<"PreviousValue">> => hybrid_update_value(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"Status">> => list(any()),
%%   <<"StatusReason">> => string()
%% }
-type hybrid_update_info_entry() :: #{binary() => any()}.

%% Example:
%% certificate_does_not_exist_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type certificate_does_not_exist_exception() :: #{binary() => any()}.

%% Example:
%% list_schema_extensions_request() :: #{
%%   <<"DirectoryId">> := string(),
%%   <<"Limit">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_schema_extensions_request() :: #{binary() => any()}.

%% Example:
%% authentication_failed_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type authentication_failed_exception() :: #{binary() => any()}.

%% Example:
%% share_limit_exceeded_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type share_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% create_microsoft_ad_request() :: #{
%%   <<"Description">> => string(),
%%   <<"Edition">> => list(any()),
%%   <<"Name">> := string(),
%%   <<"Password">> := string(),
%%   <<"ShortName">> => string(),
%%   <<"Tags">> => list(tag()),
%%   <<"VpcSettings">> := directory_vpc_settings()
%% }
-type create_microsoft_ad_request() :: #{binary() => any()}.

%% Example:
%% describe_regions_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"RegionsDescription">> => list(region_description())
%% }
-type describe_regions_result() :: #{binary() => any()}.

%% Example:
%% enable_client_authentication_result() :: #{

%% }
-type enable_client_authentication_result() :: #{binary() => any()}.

%% Example:
%% assessment_report() :: #{
%%   <<"DomainControllerIp">> => string(),
%%   <<"Validations">> => list(assessment_validation())
%% }
-type assessment_report() :: #{binary() => any()}.

%% Example:
%% create_hybrid_ad_result() :: #{
%%   <<"DirectoryId">> => string()
%% }
-type create_hybrid_ad_result() :: #{binary() => any()}.

%% Example:
%% add_tags_to_resource_result() :: #{

%% }
-type add_tags_to_resource_result() :: #{binary() => any()}.

%% Example:
%% disable_directory_data_access_result() :: #{

%% }
-type disable_directory_data_access_result() :: #{binary() => any()}.

%% Example:
%% ip_route_info() :: #{
%%   <<"AddedDateTime">> => non_neg_integer(),
%%   <<"CidrIp">> => string(),
%%   <<"Description">> => string(),
%%   <<"DirectoryId">> => string(),
%%   <<"IpRouteStatusMsg">> => list(any()),
%%   <<"IpRouteStatusReason">> => string()
%% }
-type ip_route_info() :: #{binary() => any()}.

%% Example:
%% regions_info() :: #{
%%   <<"AdditionalRegions">> => list(string()),
%%   <<"PrimaryRegion">> => string()
%% }
-type regions_info() :: #{binary() => any()}.

%% Example:
%% snapshot_limits() :: #{
%%   <<"ManualSnapshotsCurrentCount">> => integer(),
%%   <<"ManualSnapshotsLimit">> => integer(),
%%   <<"ManualSnapshotsLimitReached">> => boolean()
%% }
-type snapshot_limits() :: #{binary() => any()}.

%% Example:
%% delete_trust_request() :: #{
%%   <<"DeleteAssociatedConditionalForwarder">> => boolean(),
%%   <<"TrustId">> := string()
%% }
-type delete_trust_request() :: #{binary() => any()}.

%% Example:
%% accept_shared_directory_result() :: #{
%%   <<"SharedDirectory">> => shared_directory()
%% }
-type accept_shared_directory_result() :: #{binary() => any()}.

%% Example:
%% create_computer_request() :: #{
%%   <<"ComputerAttributes">> => list(attribute()),
%%   <<"ComputerName">> := string(),
%%   <<"DirectoryId">> := string(),
%%   <<"OrganizationalUnitDistinguishedName">> => string(),
%%   <<"Password">> := string()
%% }
-type create_computer_request() :: #{binary() => any()}.

%% Example:
%% update_conditional_forwarder_result() :: #{

%% }
-type update_conditional_forwarder_result() :: #{binary() => any()}.

%% Example:
%% describe_certificate_result() :: #{
%%   <<"Certificate">> => certificate()
%% }
-type describe_certificate_result() :: #{binary() => any()}.

%% Example:
%% event_topic() :: #{
%%   <<"CreatedDateTime">> => non_neg_integer(),
%%   <<"DirectoryId">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"TopicArn">> => string(),
%%   <<"TopicName">> => string()
%% }
-type event_topic() :: #{binary() => any()}.

%% Example:
%% directory_connect_settings() :: #{
%%   <<"CustomerDnsIps">> => list(string()),
%%   <<"CustomerUserName">> => string(),
%%   <<"SubnetIds">> => list(string()),
%%   <<"VpcId">> => string()
%% }
-type directory_connect_settings() :: #{binary() => any()}.

%% Example:
%% invalid_password_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type invalid_password_exception() :: #{binary() => any()}.

%% Example:
%% disable_client_authentication_request() :: #{
%%   <<"DirectoryId">> := string(),
%%   <<"Type">> := list(any())
%% }
-type disable_client_authentication_request() :: #{binary() => any()}.

%% Example:
%% describe_domain_controllers_request() :: #{
%%   <<"DirectoryId">> := string(),
%%   <<"DomainControllerIds">> => list(string()),
%%   <<"Limit">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_domain_controllers_request() :: #{binary() => any()}.

%% Example:
%% update_directory_setup_request() :: #{
%%   <<"CreateSnapshotBeforeUpdate">> => boolean(),
%%   <<"DirectoryId">> := string(),
%%   <<"OSUpdateSettings">> => o_s_update_settings(),
%%   <<"UpdateType">> := list(any())
%% }
-type update_directory_setup_request() :: #{binary() => any()}.

%% Example:
%% share_target() :: #{
%%   <<"Id">> => string(),
%%   <<"Type">> => list(any())
%% }
-type share_target() :: #{binary() => any()}.

%% Example:
%% assessment_summary() :: #{
%%   <<"AssessmentId">> => string(),
%%   <<"CustomerDnsIps">> => list(string()),
%%   <<"DirectoryId">> => string(),
%%   <<"DnsName">> => string(),
%%   <<"LastUpdateDateTime">> => non_neg_integer(),
%%   <<"ReportType">> => string(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"Status">> => string()
%% }
-type assessment_summary() :: #{binary() => any()}.

%% Example:
%% update_radius_result() :: #{

%% }
-type update_radius_result() :: #{binary() => any()}.

%% Example:
%% add_region_request() :: #{
%%   <<"DirectoryId">> := string(),
%%   <<"RegionName">> := string(),
%%   <<"VPCSettings">> := directory_vpc_settings()
%% }
-type add_region_request() :: #{binary() => any()}.

%% Example:
%% certificate_limit_exceeded_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type certificate_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% update_radius_request() :: #{
%%   <<"DirectoryId">> := string(),
%%   <<"RadiusSettings">> := radius_settings()
%% }
-type update_radius_request() :: #{binary() => any()}.

%% Example:
%% create_hybrid_ad_request() :: #{
%%   <<"AssessmentId">> := string(),
%%   <<"SecretArn">> := string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_hybrid_ad_request() :: #{binary() => any()}.

-type accept_shared_directory_errors() ::
    entity_does_not_exist_exception() | 
    invalid_parameter_exception() | 
    service_exception() | 
    client_exception() | 
    directory_already_shared_exception().

-type add_ip_routes_errors() ::
    directory_unavailable_exception() | 
    entity_does_not_exist_exception() | 
    invalid_parameter_exception() | 
    ip_route_limit_exceeded_exception() | 
    service_exception() | 
    client_exception() | 
    entity_already_exists_exception().

-type add_region_errors() ::
    directory_unavailable_exception() | 
    directory_already_in_region_exception() | 
    entity_does_not_exist_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    service_exception() | 
    directory_does_not_exist_exception() | 
    client_exception() | 
    region_limit_exceeded_exception() | 
    unsupported_operation_exception().

-type add_tags_to_resource_errors() ::
    entity_does_not_exist_exception() | 
    invalid_parameter_exception() | 
    service_exception() | 
    tag_limit_exceeded_exception() | 
    client_exception().

-type cancel_schema_extension_errors() ::
    entity_does_not_exist_exception() | 
    service_exception() | 
    client_exception().

-type connect_directory_errors() ::
    directory_limit_exceeded_exception() | 
    invalid_parameter_exception() | 
    service_exception() | 
    client_exception().

-type create_alias_errors() ::
    entity_does_not_exist_exception() | 
    invalid_parameter_exception() | 
    service_exception() | 
    client_exception() | 
    entity_already_exists_exception().

-type create_computer_errors() ::
    authentication_failed_exception() | 
    directory_unavailable_exception() | 
    entity_does_not_exist_exception() | 
    invalid_parameter_exception() | 
    service_exception() | 
    client_exception() | 
    unsupported_operation_exception() | 
    entity_already_exists_exception().

-type create_conditional_forwarder_errors() ::
    directory_unavailable_exception() | 
    entity_does_not_exist_exception() | 
    invalid_parameter_exception() | 
    service_exception() | 
    client_exception() | 
    unsupported_operation_exception() | 
    entity_already_exists_exception().

-type create_directory_errors() ::
    directory_limit_exceeded_exception() | 
    invalid_parameter_exception() | 
    service_exception() | 
    client_exception().

-type create_hybrid_ad_errors() ::
    directory_limit_exceeded_exception() | 
    entity_does_not_exist_exception() | 
    invalid_parameter_exception() | 
    service_exception() | 
    client_exception() | 
    ad_assessment_limit_exceeded_exception() | 
    unsupported_operation_exception().

-type create_log_subscription_errors() ::
    entity_does_not_exist_exception() | 
    service_exception() | 
    client_exception() | 
    insufficient_permissions_exception() | 
    unsupported_operation_exception() | 
    entity_already_exists_exception().

-type create_microsoft_ad_errors() ::
    directory_limit_exceeded_exception() | 
    invalid_parameter_exception() | 
    service_exception() | 
    client_exception() | 
    unsupported_operation_exception().

-type create_snapshot_errors() ::
    entity_does_not_exist_exception() | 
    invalid_parameter_exception() | 
    service_exception() | 
    client_exception() | 
    snapshot_limit_exceeded_exception().

-type create_trust_errors() ::
    entity_does_not_exist_exception() | 
    invalid_parameter_exception() | 
    service_exception() | 
    client_exception() | 
    unsupported_operation_exception() | 
    entity_already_exists_exception().

-type delete_ad_assessment_errors() ::
    entity_does_not_exist_exception() | 
    invalid_parameter_exception() | 
    service_exception() | 
    client_exception() | 
    unsupported_operation_exception().

-type delete_conditional_forwarder_errors() ::
    directory_unavailable_exception() | 
    entity_does_not_exist_exception() | 
    invalid_parameter_exception() | 
    service_exception() | 
    client_exception() | 
    unsupported_operation_exception().

-type delete_directory_errors() ::
    entity_does_not_exist_exception() | 
    service_exception() | 
    client_exception().

-type delete_log_subscription_errors() ::
    entity_does_not_exist_exception() | 
    service_exception() | 
    client_exception() | 
    unsupported_operation_exception().

-type delete_snapshot_errors() ::
    entity_does_not_exist_exception() | 
    invalid_parameter_exception() | 
    service_exception() | 
    client_exception().

-type delete_trust_errors() ::
    entity_does_not_exist_exception() | 
    invalid_parameter_exception() | 
    service_exception() | 
    client_exception() | 
    unsupported_operation_exception().

-type deregister_certificate_errors() ::
    certificate_does_not_exist_exception() | 
    directory_unavailable_exception() | 
    invalid_parameter_exception() | 
    certificate_in_use_exception() | 
    service_exception() | 
    directory_does_not_exist_exception() | 
    client_exception() | 
    unsupported_operation_exception().

-type deregister_event_topic_errors() ::
    entity_does_not_exist_exception() | 
    invalid_parameter_exception() | 
    service_exception() | 
    client_exception().

-type describe_ad_assessment_errors() ::
    entity_does_not_exist_exception() | 
    invalid_parameter_exception() | 
    service_exception() | 
    client_exception() | 
    unsupported_operation_exception().

-type describe_certificate_errors() ::
    certificate_does_not_exist_exception() | 
    invalid_parameter_exception() | 
    service_exception() | 
    directory_does_not_exist_exception() | 
    client_exception() | 
    unsupported_operation_exception().

-type describe_client_authentication_settings_errors() ::
    invalid_parameter_exception() | 
    access_denied_exception() | 
    service_exception() | 
    directory_does_not_exist_exception() | 
    client_exception() | 
    unsupported_operation_exception().

-type describe_conditional_forwarders_errors() ::
    directory_unavailable_exception() | 
    entity_does_not_exist_exception() | 
    invalid_parameter_exception() | 
    service_exception() | 
    client_exception() | 
    unsupported_operation_exception().

-type describe_directories_errors() ::
    entity_does_not_exist_exception() | 
    invalid_parameter_exception() | 
    service_exception() | 
    invalid_next_token_exception() | 
    client_exception().

-type describe_directory_data_access_errors() ::
    access_denied_exception() | 
    service_exception() | 
    directory_does_not_exist_exception() | 
    client_exception() | 
    unsupported_operation_exception().

-type describe_domain_controllers_errors() ::
    entity_does_not_exist_exception() | 
    invalid_parameter_exception() | 
    service_exception() | 
    invalid_next_token_exception() | 
    client_exception() | 
    unsupported_operation_exception().

-type describe_event_topics_errors() ::
    entity_does_not_exist_exception() | 
    invalid_parameter_exception() | 
    service_exception() | 
    client_exception().

-type describe_hybrid_ad_update_errors() ::
    invalid_parameter_exception() | 
    service_exception() | 
    invalid_next_token_exception() | 
    directory_does_not_exist_exception() | 
    client_exception() | 
    unsupported_operation_exception().

-type describe_ldaps_settings_errors() ::
    invalid_parameter_exception() | 
    service_exception() | 
    invalid_next_token_exception() | 
    directory_does_not_exist_exception() | 
    client_exception() | 
    unsupported_operation_exception().

-type describe_regions_errors() ::
    invalid_parameter_exception() | 
    access_denied_exception() | 
    service_exception() | 
    invalid_next_token_exception() | 
    directory_does_not_exist_exception() | 
    client_exception() | 
    unsupported_operation_exception().

-type describe_settings_errors() ::
    invalid_parameter_exception() | 
    service_exception() | 
    invalid_next_token_exception() | 
    directory_does_not_exist_exception() | 
    client_exception() | 
    unsupported_operation_exception().

-type describe_shared_directories_errors() ::
    entity_does_not_exist_exception() | 
    invalid_parameter_exception() | 
    service_exception() | 
    invalid_next_token_exception() | 
    client_exception() | 
    unsupported_operation_exception().

-type describe_snapshots_errors() ::
    entity_does_not_exist_exception() | 
    invalid_parameter_exception() | 
    service_exception() | 
    invalid_next_token_exception() | 
    client_exception().

-type describe_trusts_errors() ::
    entity_does_not_exist_exception() | 
    invalid_parameter_exception() | 
    service_exception() | 
    invalid_next_token_exception() | 
    client_exception() | 
    unsupported_operation_exception().

-type describe_update_directory_errors() ::
    invalid_parameter_exception() | 
    access_denied_exception() | 
    service_exception() | 
    invalid_next_token_exception() | 
    directory_does_not_exist_exception() | 
    client_exception().

-type disable_client_authentication_errors() ::
    invalid_client_auth_status_exception() | 
    access_denied_exception() | 
    service_exception() | 
    directory_does_not_exist_exception() | 
    client_exception() | 
    unsupported_operation_exception().

-type disable_directory_data_access_errors() ::
    directory_unavailable_exception() | 
    access_denied_exception() | 
    service_exception() | 
    directory_does_not_exist_exception() | 
    client_exception() | 
    directory_in_desired_state_exception() | 
    unsupported_operation_exception().

-type disable_ldaps_errors() ::
    directory_unavailable_exception() | 
    invalid_parameter_exception() | 
    service_exception() | 
    directory_does_not_exist_exception() | 
    client_exception() | 
    invalid_ldaps_status_exception() | 
    unsupported_operation_exception().

-type disable_radius_errors() ::
    entity_does_not_exist_exception() | 
    service_exception() | 
    client_exception().

-type disable_sso_errors() ::
    authentication_failed_exception() | 
    entity_does_not_exist_exception() | 
    service_exception() | 
    client_exception() | 
    insufficient_permissions_exception().

-type enable_client_authentication_errors() ::
    invalid_client_auth_status_exception() | 
    access_denied_exception() | 
    service_exception() | 
    directory_does_not_exist_exception() | 
    client_exception() | 
    no_available_certificate_exception() | 
    unsupported_operation_exception().

-type enable_directory_data_access_errors() ::
    directory_unavailable_exception() | 
    access_denied_exception() | 
    service_exception() | 
    directory_does_not_exist_exception() | 
    client_exception() | 
    directory_in_desired_state_exception() | 
    unsupported_operation_exception().

-type enable_ldaps_errors() ::
    directory_unavailable_exception() | 
    invalid_parameter_exception() | 
    service_exception() | 
    directory_does_not_exist_exception() | 
    client_exception() | 
    no_available_certificate_exception() | 
    invalid_ldaps_status_exception() | 
    unsupported_operation_exception().

-type enable_radius_errors() ::
    entity_does_not_exist_exception() | 
    invalid_parameter_exception() | 
    service_exception() | 
    client_exception() | 
    entity_already_exists_exception().

-type enable_sso_errors() ::
    authentication_failed_exception() | 
    entity_does_not_exist_exception() | 
    service_exception() | 
    client_exception() | 
    insufficient_permissions_exception().

-type get_directory_limits_errors() ::
    entity_does_not_exist_exception() | 
    service_exception() | 
    client_exception().

-type get_snapshot_limits_errors() ::
    entity_does_not_exist_exception() | 
    service_exception() | 
    client_exception().

-type list_ad_assessments_errors() ::
    invalid_parameter_exception() | 
    service_exception() | 
    directory_does_not_exist_exception() | 
    client_exception() | 
    unsupported_operation_exception().

-type list_certificates_errors() ::
    invalid_parameter_exception() | 
    service_exception() | 
    invalid_next_token_exception() | 
    directory_does_not_exist_exception() | 
    client_exception() | 
    unsupported_operation_exception().

-type list_ip_routes_errors() ::
    entity_does_not_exist_exception() | 
    invalid_parameter_exception() | 
    service_exception() | 
    invalid_next_token_exception() | 
    client_exception().

-type list_log_subscriptions_errors() ::
    entity_does_not_exist_exception() | 
    service_exception() | 
    invalid_next_token_exception() | 
    client_exception().

-type list_schema_extensions_errors() ::
    entity_does_not_exist_exception() | 
    service_exception() | 
    invalid_next_token_exception() | 
    client_exception().

-type list_tags_for_resource_errors() ::
    entity_does_not_exist_exception() | 
    invalid_parameter_exception() | 
    service_exception() | 
    invalid_next_token_exception() | 
    client_exception().

-type register_certificate_errors() ::
    certificate_limit_exceeded_exception() | 
    directory_unavailable_exception() | 
    invalid_parameter_exception() | 
    invalid_certificate_exception() | 
    service_exception() | 
    directory_does_not_exist_exception() | 
    client_exception() | 
    certificate_already_exists_exception() | 
    unsupported_operation_exception().

-type register_event_topic_errors() ::
    entity_does_not_exist_exception() | 
    invalid_parameter_exception() | 
    service_exception() | 
    client_exception().

-type reject_shared_directory_errors() ::
    entity_does_not_exist_exception() | 
    invalid_parameter_exception() | 
    service_exception() | 
    client_exception() | 
    directory_already_shared_exception().

-type remove_ip_routes_errors() ::
    directory_unavailable_exception() | 
    entity_does_not_exist_exception() | 
    invalid_parameter_exception() | 
    service_exception() | 
    client_exception().

-type remove_region_errors() ::
    directory_unavailable_exception() | 
    access_denied_exception() | 
    service_exception() | 
    directory_does_not_exist_exception() | 
    client_exception() | 
    unsupported_operation_exception().

-type remove_tags_from_resource_errors() ::
    entity_does_not_exist_exception() | 
    invalid_parameter_exception() | 
    service_exception() | 
    client_exception().

-type reset_user_password_errors() ::
    invalid_password_exception() | 
    directory_unavailable_exception() | 
    entity_does_not_exist_exception() | 
    user_does_not_exist_exception() | 
    service_exception() | 
    client_exception() | 
    unsupported_operation_exception().

-type restore_from_snapshot_errors() ::
    entity_does_not_exist_exception() | 
    invalid_parameter_exception() | 
    service_exception() | 
    client_exception().

-type share_directory_errors() ::
    share_limit_exceeded_exception() | 
    entity_does_not_exist_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    service_exception() | 
    organizations_exception() | 
    client_exception() | 
    directory_already_shared_exception() | 
    unsupported_operation_exception() | 
    invalid_target_exception().

-type start_ad_assessment_errors() ::
    invalid_parameter_exception() | 
    service_exception() | 
    directory_does_not_exist_exception() | 
    client_exception() | 
    ad_assessment_limit_exceeded_exception() | 
    unsupported_operation_exception().

-type start_schema_extension_errors() ::
    directory_unavailable_exception() | 
    entity_does_not_exist_exception() | 
    invalid_parameter_exception() | 
    service_exception() | 
    client_exception() | 
    snapshot_limit_exceeded_exception().

-type unshare_directory_errors() ::
    entity_does_not_exist_exception() | 
    service_exception() | 
    client_exception() | 
    directory_not_shared_exception() | 
    invalid_target_exception().

-type update_conditional_forwarder_errors() ::
    directory_unavailable_exception() | 
    entity_does_not_exist_exception() | 
    invalid_parameter_exception() | 
    service_exception() | 
    client_exception() | 
    unsupported_operation_exception().

-type update_directory_setup_errors() ::
    directory_unavailable_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    service_exception() | 
    directory_does_not_exist_exception() | 
    client_exception() | 
    directory_in_desired_state_exception() | 
    unsupported_operation_exception() | 
    snapshot_limit_exceeded_exception().

-type update_hybrid_ad_errors() ::
    invalid_parameter_exception() | 
    service_exception() | 
    directory_does_not_exist_exception() | 
    client_exception() | 
    ad_assessment_limit_exceeded_exception() | 
    unsupported_operation_exception().

-type update_number_of_domain_controllers_errors() ::
    directory_unavailable_exception() | 
    entity_does_not_exist_exception() | 
    invalid_parameter_exception() | 
    service_exception() | 
    client_exception() | 
    unsupported_operation_exception() | 
    domain_controller_limit_exceeded_exception().

-type update_radius_errors() ::
    entity_does_not_exist_exception() | 
    invalid_parameter_exception() | 
    service_exception() | 
    client_exception().

-type update_settings_errors() ::
    directory_unavailable_exception() | 
    invalid_parameter_exception() | 
    service_exception() | 
    incompatible_settings_exception() | 
    directory_does_not_exist_exception() | 
    client_exception() | 
    unsupported_settings_exception() | 
    unsupported_operation_exception().

-type update_trust_errors() ::
    entity_does_not_exist_exception() | 
    invalid_parameter_exception() | 
    service_exception() | 
    client_exception().

-type verify_trust_errors() ::
    entity_does_not_exist_exception() | 
    invalid_parameter_exception() | 
    service_exception() | 
    client_exception() | 
    unsupported_operation_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Accepts a directory sharing request that was sent from the directory
%% owner account.
-spec accept_shared_directory(aws_client:aws_client(), accept_shared_directory_request()) ->
    {ok, accept_shared_directory_result(), tuple()} |
    {error, any()} |
    {error, accept_shared_directory_errors(), tuple()}.
accept_shared_directory(Client, Input)
  when is_map(Client), is_map(Input) ->
    accept_shared_directory(Client, Input, []).

-spec accept_shared_directory(aws_client:aws_client(), accept_shared_directory_request(), proplists:proplist()) ->
    {ok, accept_shared_directory_result(), tuple()} |
    {error, any()} |
    {error, accept_shared_directory_errors(), tuple()}.
accept_shared_directory(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AcceptSharedDirectory">>, Input, Options).

%% @doc If the DNS server for your self-managed domain uses a publicly
%% addressable IP address,
%% you must add a CIDR address block to correctly route traffic to and from
%% your Microsoft AD
%% on Amazon Web Services.
%%
%% AddIpRoutes adds this address block. You can
%% also use AddIpRoutes to facilitate routing traffic that uses public IP
%% ranges from your Microsoft AD on Amazon Web Services to a peer VPC.
%%
%% Before you call AddIpRoutes, ensure that all of the required
%% permissions have been explicitly granted through a policy. For details
%% about what
%% permissions are required to run the AddIpRoutes operation, see Directory
%% Service API Permissions: Actions, Resources, and Conditions Reference:
%% http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html.
-spec add_ip_routes(aws_client:aws_client(), add_ip_routes_request()) ->
    {ok, add_ip_routes_result(), tuple()} |
    {error, any()} |
    {error, add_ip_routes_errors(), tuple()}.
add_ip_routes(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_ip_routes(Client, Input, []).

-spec add_ip_routes(aws_client:aws_client(), add_ip_routes_request(), proplists:proplist()) ->
    {ok, add_ip_routes_result(), tuple()} |
    {error, any()} |
    {error, add_ip_routes_errors(), tuple()}.
add_ip_routes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddIpRoutes">>, Input, Options).

%% @doc Adds two domain controllers in the specified Region for the specified
%% directory.
-spec add_region(aws_client:aws_client(), add_region_request()) ->
    {ok, add_region_result(), tuple()} |
    {error, any()} |
    {error, add_region_errors(), tuple()}.
add_region(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_region(Client, Input, []).

-spec add_region(aws_client:aws_client(), add_region_request(), proplists:proplist()) ->
    {ok, add_region_result(), tuple()} |
    {error, any()} |
    {error, add_region_errors(), tuple()}.
add_region(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddRegion">>, Input, Options).

%% @doc Adds or overwrites one or more tags for the specified directory.
%%
%% Each directory can
%% have a maximum of 50 tags. Each tag consists of a key and optional value.
%% Tag keys must be
%% unique to each resource.
-spec add_tags_to_resource(aws_client:aws_client(), add_tags_to_resource_request()) ->
    {ok, add_tags_to_resource_result(), tuple()} |
    {error, any()} |
    {error, add_tags_to_resource_errors(), tuple()}.
add_tags_to_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_tags_to_resource(Client, Input, []).

-spec add_tags_to_resource(aws_client:aws_client(), add_tags_to_resource_request(), proplists:proplist()) ->
    {ok, add_tags_to_resource_result(), tuple()} |
    {error, any()} |
    {error, add_tags_to_resource_errors(), tuple()}.
add_tags_to_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddTagsToResource">>, Input, Options).

%% @doc Cancels an in-progress schema extension to a Microsoft AD directory.
%%
%% Once a schema
%% extension has started replicating to all domain controllers, the task can
%% no longer be
%% canceled. A schema extension can be canceled during any of the following
%% states;
%% `Initializing', `CreatingSnapshot', and
%% `UpdatingSchema'.
-spec cancel_schema_extension(aws_client:aws_client(), cancel_schema_extension_request()) ->
    {ok, cancel_schema_extension_result(), tuple()} |
    {error, any()} |
    {error, cancel_schema_extension_errors(), tuple()}.
cancel_schema_extension(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_schema_extension(Client, Input, []).

-spec cancel_schema_extension(aws_client:aws_client(), cancel_schema_extension_request(), proplists:proplist()) ->
    {ok, cancel_schema_extension_result(), tuple()} |
    {error, any()} |
    {error, cancel_schema_extension_errors(), tuple()}.
cancel_schema_extension(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelSchemaExtension">>, Input, Options).

%% @doc Creates an AD Connector to connect to a self-managed directory.
%%
%% Before you call `ConnectDirectory', ensure that all of the required
%% permissions
%% have been explicitly granted through a policy. For details about what
%% permissions are required
%% to run the `ConnectDirectory' operation, see Directory Service API
%% Permissions: Actions, Resources, and Conditions Reference:
%% http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html.
-spec connect_directory(aws_client:aws_client(), connect_directory_request()) ->
    {ok, connect_directory_result(), tuple()} |
    {error, any()} |
    {error, connect_directory_errors(), tuple()}.
connect_directory(Client, Input)
  when is_map(Client), is_map(Input) ->
    connect_directory(Client, Input, []).

-spec connect_directory(aws_client:aws_client(), connect_directory_request(), proplists:proplist()) ->
    {ok, connect_directory_result(), tuple()} |
    {error, any()} |
    {error, connect_directory_errors(), tuple()}.
connect_directory(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ConnectDirectory">>, Input, Options).

%% @doc Creates an alias for a directory and assigns the alias to the
%% directory.
%%
%% The alias is used
%% to construct the access URL for the directory, such as
%% `http://.awsapps.com'.
%%
%% After an alias has been created, it cannot be deleted or reused, so this
%% operation should only be used when absolutely necessary.
-spec create_alias(aws_client:aws_client(), create_alias_request()) ->
    {ok, create_alias_result(), tuple()} |
    {error, any()} |
    {error, create_alias_errors(), tuple()}.
create_alias(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_alias(Client, Input, []).

-spec create_alias(aws_client:aws_client(), create_alias_request(), proplists:proplist()) ->
    {ok, create_alias_result(), tuple()} |
    {error, any()} |
    {error, create_alias_errors(), tuple()}.
create_alias(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAlias">>, Input, Options).

%% @doc Creates an Active Directory computer object in the specified
%% directory.
-spec create_computer(aws_client:aws_client(), create_computer_request()) ->
    {ok, create_computer_result(), tuple()} |
    {error, any()} |
    {error, create_computer_errors(), tuple()}.
create_computer(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_computer(Client, Input, []).

-spec create_computer(aws_client:aws_client(), create_computer_request(), proplists:proplist()) ->
    {ok, create_computer_result(), tuple()} |
    {error, any()} |
    {error, create_computer_errors(), tuple()}.
create_computer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateComputer">>, Input, Options).

%% @doc Creates a conditional forwarder associated with your Amazon Web
%% Services directory.
%%
%% Conditional
%% forwarders are required in order to set up a trust relationship with
%% another domain. The
%% conditional forwarder points to the trusted domain.
-spec create_conditional_forwarder(aws_client:aws_client(), create_conditional_forwarder_request()) ->
    {ok, create_conditional_forwarder_result(), tuple()} |
    {error, any()} |
    {error, create_conditional_forwarder_errors(), tuple()}.
create_conditional_forwarder(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_conditional_forwarder(Client, Input, []).

-spec create_conditional_forwarder(aws_client:aws_client(), create_conditional_forwarder_request(), proplists:proplist()) ->
    {ok, create_conditional_forwarder_result(), tuple()} |
    {error, any()} |
    {error, create_conditional_forwarder_errors(), tuple()}.
create_conditional_forwarder(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateConditionalForwarder">>, Input, Options).

%% @doc Creates a Simple AD directory.
%%
%% For more information, see Simple Active Directory:
%% https://docs.aws.amazon.com/directoryservice/latest/admin-guide/directory_simple_ad.html
%% in the Directory Service Admin Guide.
%%
%% Before you call `CreateDirectory', ensure that all of the required
%% permissions
%% have been explicitly granted through a policy. For details about what
%% permissions are required
%% to run the `CreateDirectory' operation, see Directory Service API
%% Permissions: Actions, Resources, and Conditions Reference:
%% http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html.
-spec create_directory(aws_client:aws_client(), create_directory_request()) ->
    {ok, create_directory_result(), tuple()} |
    {error, any()} |
    {error, create_directory_errors(), tuple()}.
create_directory(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_directory(Client, Input, []).

-spec create_directory(aws_client:aws_client(), create_directory_request(), proplists:proplist()) ->
    {ok, create_directory_result(), tuple()} |
    {error, any()} |
    {error, create_directory_errors(), tuple()}.
create_directory(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDirectory">>, Input, Options).

%% @doc Creates a hybrid directory that connects your self-managed Active
%% Directory (AD)
%% infrastructure and Amazon Web Services.
%%
%% You must have a successful directory assessment using
%% `StartADAssessment' to validate your environment compatibility before
%% you
%% use this operation.
%%
%% Updates are applied asynchronously. Use `DescribeDirectories' to
%% monitor the progress of directory creation.
-spec create_hybrid_ad(aws_client:aws_client(), create_hybrid_ad_request()) ->
    {ok, create_hybrid_ad_result(), tuple()} |
    {error, any()} |
    {error, create_hybrid_ad_errors(), tuple()}.
create_hybrid_ad(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_hybrid_ad(Client, Input, []).

-spec create_hybrid_ad(aws_client:aws_client(), create_hybrid_ad_request(), proplists:proplist()) ->
    {ok, create_hybrid_ad_result(), tuple()} |
    {error, any()} |
    {error, create_hybrid_ad_errors(), tuple()}.
create_hybrid_ad(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateHybridAD">>, Input, Options).

%% @doc Creates a subscription to forward real-time Directory Service domain
%% controller security
%% logs to the specified Amazon CloudWatch log group in your Amazon Web
%% Services account.
-spec create_log_subscription(aws_client:aws_client(), create_log_subscription_request()) ->
    {ok, create_log_subscription_result(), tuple()} |
    {error, any()} |
    {error, create_log_subscription_errors(), tuple()}.
create_log_subscription(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_log_subscription(Client, Input, []).

-spec create_log_subscription(aws_client:aws_client(), create_log_subscription_request(), proplists:proplist()) ->
    {ok, create_log_subscription_result(), tuple()} |
    {error, any()} |
    {error, create_log_subscription_errors(), tuple()}.
create_log_subscription(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLogSubscription">>, Input, Options).

%% @doc Creates a Microsoft AD directory in the Amazon Web Services Cloud.
%%
%% For more information, see Managed Microsoft AD:
%% https://docs.aws.amazon.com/directoryservice/latest/admin-guide/directory_microsoft_ad.html
%% in the Directory Service Admin Guide.
%%
%% Before you call CreateMicrosoftAD, ensure that all of the required
%% permissions have been explicitly granted through a policy. For details
%% about what permissions
%% are required to run the CreateMicrosoftAD operation, see Directory Service
%% API Permissions: Actions, Resources, and Conditions Reference:
%% http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html.
-spec create_microsoft_ad(aws_client:aws_client(), create_microsoft_ad_request()) ->
    {ok, create_microsoft_ad_result(), tuple()} |
    {error, any()} |
    {error, create_microsoft_ad_errors(), tuple()}.
create_microsoft_ad(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_microsoft_ad(Client, Input, []).

-spec create_microsoft_ad(aws_client:aws_client(), create_microsoft_ad_request(), proplists:proplist()) ->
    {ok, create_microsoft_ad_result(), tuple()} |
    {error, any()} |
    {error, create_microsoft_ad_errors(), tuple()}.
create_microsoft_ad(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateMicrosoftAD">>, Input, Options).

%% @doc Creates a snapshot of a Simple AD or Microsoft AD directory in the
%% Amazon Web Services cloud.
%%
%% You cannot take snapshots of AD Connector directories.
-spec create_snapshot(aws_client:aws_client(), create_snapshot_request()) ->
    {ok, create_snapshot_result(), tuple()} |
    {error, any()} |
    {error, create_snapshot_errors(), tuple()}.
create_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_snapshot(Client, Input, []).

-spec create_snapshot(aws_client:aws_client(), create_snapshot_request(), proplists:proplist()) ->
    {ok, create_snapshot_result(), tuple()} |
    {error, any()} |
    {error, create_snapshot_errors(), tuple()}.
create_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSnapshot">>, Input, Options).

%% @doc Directory Service for Microsoft Active Directory allows you to
%% configure trust relationships.
%%
%% For
%% example, you can establish a trust between your Managed Microsoft AD
%% directory, and your existing
%% self-managed Microsoft Active Directory. This would allow you to provide
%% users and groups
%% access to resources in either domain, with a single set of credentials.
%%
%% This action initiates the creation of the Amazon Web Services side of a
%% trust relationship between an
%% Managed Microsoft AD directory and an external domain. You can create
%% either a forest trust or an
%% external trust.
-spec create_trust(aws_client:aws_client(), create_trust_request()) ->
    {ok, create_trust_result(), tuple()} |
    {error, any()} |
    {error, create_trust_errors(), tuple()}.
create_trust(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_trust(Client, Input, []).

-spec create_trust(aws_client:aws_client(), create_trust_request(), proplists:proplist()) ->
    {ok, create_trust_result(), tuple()} |
    {error, any()} |
    {error, create_trust_errors(), tuple()}.
create_trust(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTrust">>, Input, Options).

%% @doc Deletes a directory assessment and all associated data.
%%
%% This operation permanently
%% removes the assessment results, validation reports, and configuration
%% information.
%%
%% You cannot delete system-initiated assessments. You can delete
%% customer-created
%% assessments even if they are in progress.
-spec delete_ad_assessment(aws_client:aws_client(), delete_ad_assessment_request()) ->
    {ok, delete_ad_assessment_result(), tuple()} |
    {error, any()} |
    {error, delete_ad_assessment_errors(), tuple()}.
delete_ad_assessment(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_ad_assessment(Client, Input, []).

-spec delete_ad_assessment(aws_client:aws_client(), delete_ad_assessment_request(), proplists:proplist()) ->
    {ok, delete_ad_assessment_result(), tuple()} |
    {error, any()} |
    {error, delete_ad_assessment_errors(), tuple()}.
delete_ad_assessment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteADAssessment">>, Input, Options).

%% @doc Deletes a conditional forwarder that has been set up for your Amazon
%% Web Services
%% directory.
-spec delete_conditional_forwarder(aws_client:aws_client(), delete_conditional_forwarder_request()) ->
    {ok, delete_conditional_forwarder_result(), tuple()} |
    {error, any()} |
    {error, delete_conditional_forwarder_errors(), tuple()}.
delete_conditional_forwarder(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_conditional_forwarder(Client, Input, []).

-spec delete_conditional_forwarder(aws_client:aws_client(), delete_conditional_forwarder_request(), proplists:proplist()) ->
    {ok, delete_conditional_forwarder_result(), tuple()} |
    {error, any()} |
    {error, delete_conditional_forwarder_errors(), tuple()}.
delete_conditional_forwarder(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteConditionalForwarder">>, Input, Options).

%% @doc Deletes an Directory Service directory.
%%
%% Before you call `DeleteDirectory', ensure that all of the required
%% permissions
%% have been explicitly granted through a policy. For details about what
%% permissions are required
%% to run the `DeleteDirectory' operation, see Directory Service API
%% Permissions: Actions, Resources, and Conditions Reference:
%% http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html.
-spec delete_directory(aws_client:aws_client(), delete_directory_request()) ->
    {ok, delete_directory_result(), tuple()} |
    {error, any()} |
    {error, delete_directory_errors(), tuple()}.
delete_directory(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_directory(Client, Input, []).

-spec delete_directory(aws_client:aws_client(), delete_directory_request(), proplists:proplist()) ->
    {ok, delete_directory_result(), tuple()} |
    {error, any()} |
    {error, delete_directory_errors(), tuple()}.
delete_directory(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDirectory">>, Input, Options).

%% @doc Deletes the specified log subscription.
-spec delete_log_subscription(aws_client:aws_client(), delete_log_subscription_request()) ->
    {ok, delete_log_subscription_result(), tuple()} |
    {error, any()} |
    {error, delete_log_subscription_errors(), tuple()}.
delete_log_subscription(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_log_subscription(Client, Input, []).

-spec delete_log_subscription(aws_client:aws_client(), delete_log_subscription_request(), proplists:proplist()) ->
    {ok, delete_log_subscription_result(), tuple()} |
    {error, any()} |
    {error, delete_log_subscription_errors(), tuple()}.
delete_log_subscription(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLogSubscription">>, Input, Options).

%% @doc Deletes a directory snapshot.
-spec delete_snapshot(aws_client:aws_client(), delete_snapshot_request()) ->
    {ok, delete_snapshot_result(), tuple()} |
    {error, any()} |
    {error, delete_snapshot_errors(), tuple()}.
delete_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_snapshot(Client, Input, []).

-spec delete_snapshot(aws_client:aws_client(), delete_snapshot_request(), proplists:proplist()) ->
    {ok, delete_snapshot_result(), tuple()} |
    {error, any()} |
    {error, delete_snapshot_errors(), tuple()}.
delete_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSnapshot">>, Input, Options).

%% @doc Deletes an existing trust relationship between your Managed Microsoft
%% AD directory and an external
%% domain.
-spec delete_trust(aws_client:aws_client(), delete_trust_request()) ->
    {ok, delete_trust_result(), tuple()} |
    {error, any()} |
    {error, delete_trust_errors(), tuple()}.
delete_trust(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_trust(Client, Input, []).

-spec delete_trust(aws_client:aws_client(), delete_trust_request(), proplists:proplist()) ->
    {ok, delete_trust_result(), tuple()} |
    {error, any()} |
    {error, delete_trust_errors(), tuple()}.
delete_trust(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTrust">>, Input, Options).

%% @doc Deletes from the system the certificate that was registered for
%% secure LDAP or client
%% certificate authentication.
-spec deregister_certificate(aws_client:aws_client(), deregister_certificate_request()) ->
    {ok, deregister_certificate_result(), tuple()} |
    {error, any()} |
    {error, deregister_certificate_errors(), tuple()}.
deregister_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_certificate(Client, Input, []).

-spec deregister_certificate(aws_client:aws_client(), deregister_certificate_request(), proplists:proplist()) ->
    {ok, deregister_certificate_result(), tuple()} |
    {error, any()} |
    {error, deregister_certificate_errors(), tuple()}.
deregister_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterCertificate">>, Input, Options).

%% @doc Removes the specified directory as a publisher to the specified
%% Amazon SNS topic.
-spec deregister_event_topic(aws_client:aws_client(), deregister_event_topic_request()) ->
    {ok, deregister_event_topic_result(), tuple()} |
    {error, any()} |
    {error, deregister_event_topic_errors(), tuple()}.
deregister_event_topic(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_event_topic(Client, Input, []).

-spec deregister_event_topic(aws_client:aws_client(), deregister_event_topic_request(), proplists:proplist()) ->
    {ok, deregister_event_topic_result(), tuple()} |
    {error, any()} |
    {error, deregister_event_topic_errors(), tuple()}.
deregister_event_topic(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterEventTopic">>, Input, Options).

%% @doc Retrieves detailed information about a directory assessment,
%% including its current
%% status, validation results, and configuration details.
%%
%% Use this operation to monitor
%% assessment progress and review results.
-spec describe_ad_assessment(aws_client:aws_client(), describe_ad_assessment_request()) ->
    {ok, describe_ad_assessment_result(), tuple()} |
    {error, any()} |
    {error, describe_ad_assessment_errors(), tuple()}.
describe_ad_assessment(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_ad_assessment(Client, Input, []).

-spec describe_ad_assessment(aws_client:aws_client(), describe_ad_assessment_request(), proplists:proplist()) ->
    {ok, describe_ad_assessment_result(), tuple()} |
    {error, any()} |
    {error, describe_ad_assessment_errors(), tuple()}.
describe_ad_assessment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeADAssessment">>, Input, Options).

%% @doc Displays information about the certificate registered for secure LDAP
%% or client
%% certificate authentication.
-spec describe_certificate(aws_client:aws_client(), describe_certificate_request()) ->
    {ok, describe_certificate_result(), tuple()} |
    {error, any()} |
    {error, describe_certificate_errors(), tuple()}.
describe_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_certificate(Client, Input, []).

-spec describe_certificate(aws_client:aws_client(), describe_certificate_request(), proplists:proplist()) ->
    {ok, describe_certificate_result(), tuple()} |
    {error, any()} |
    {error, describe_certificate_errors(), tuple()}.
describe_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCertificate">>, Input, Options).

%% @doc Retrieves information about the type of client authentication for the
%% specified directory,
%% if the type is specified.
%%
%% If no type is specified, information about all client authentication
%% types that are supported for the specified directory is retrieved.
%% Currently, only
%% `SmartCard' is supported.
-spec describe_client_authentication_settings(aws_client:aws_client(), describe_client_authentication_settings_request()) ->
    {ok, describe_client_authentication_settings_result(), tuple()} |
    {error, any()} |
    {error, describe_client_authentication_settings_errors(), tuple()}.
describe_client_authentication_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_client_authentication_settings(Client, Input, []).

-spec describe_client_authentication_settings(aws_client:aws_client(), describe_client_authentication_settings_request(), proplists:proplist()) ->
    {ok, describe_client_authentication_settings_result(), tuple()} |
    {error, any()} |
    {error, describe_client_authentication_settings_errors(), tuple()}.
describe_client_authentication_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeClientAuthenticationSettings">>, Input, Options).

%% @doc Obtains information about the conditional forwarders for this
%% account.
%%
%% If no input parameters are provided for RemoteDomainNames, this request
%% describes all
%% conditional forwarders for the specified directory ID.
-spec describe_conditional_forwarders(aws_client:aws_client(), describe_conditional_forwarders_request()) ->
    {ok, describe_conditional_forwarders_result(), tuple()} |
    {error, any()} |
    {error, describe_conditional_forwarders_errors(), tuple()}.
describe_conditional_forwarders(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_conditional_forwarders(Client, Input, []).

-spec describe_conditional_forwarders(aws_client:aws_client(), describe_conditional_forwarders_request(), proplists:proplist()) ->
    {ok, describe_conditional_forwarders_result(), tuple()} |
    {error, any()} |
    {error, describe_conditional_forwarders_errors(), tuple()}.
describe_conditional_forwarders(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeConditionalForwarders">>, Input, Options).

%% @doc Obtains information about the directories that belong to this
%% account.
%%
%% You can retrieve information about specific directories by passing the
%% directory
%% identifiers in the `DirectoryIds' parameter. Otherwise, all
%% directories that belong
%% to the current account are returned.
%%
%% This operation supports pagination with the use of the `NextToken'
%% request and
%% response parameters. If more results are available, the
%% `DescribeDirectoriesResult.NextToken' member contains a token that you
%% pass in
%% the next call to `DescribeDirectories' to retrieve the next set of
%% items.
%%
%% You can also specify a maximum number of return results with the
%% `Limit'
%% parameter.
-spec describe_directories(aws_client:aws_client(), describe_directories_request()) ->
    {ok, describe_directories_result(), tuple()} |
    {error, any()} |
    {error, describe_directories_errors(), tuple()}.
describe_directories(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_directories(Client, Input, []).

-spec describe_directories(aws_client:aws_client(), describe_directories_request(), proplists:proplist()) ->
    {ok, describe_directories_result(), tuple()} |
    {error, any()} |
    {error, describe_directories_errors(), tuple()}.
describe_directories(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDirectories">>, Input, Options).

%% @doc Obtains status of directory data access enablement through the
%% Directory Service Data API for the
%% specified directory.
-spec describe_directory_data_access(aws_client:aws_client(), describe_directory_data_access_request()) ->
    {ok, describe_directory_data_access_result(), tuple()} |
    {error, any()} |
    {error, describe_directory_data_access_errors(), tuple()}.
describe_directory_data_access(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_directory_data_access(Client, Input, []).

-spec describe_directory_data_access(aws_client:aws_client(), describe_directory_data_access_request(), proplists:proplist()) ->
    {ok, describe_directory_data_access_result(), tuple()} |
    {error, any()} |
    {error, describe_directory_data_access_errors(), tuple()}.
describe_directory_data_access(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDirectoryDataAccess">>, Input, Options).

%% @doc Provides information about any domain controllers in your directory.
-spec describe_domain_controllers(aws_client:aws_client(), describe_domain_controllers_request()) ->
    {ok, describe_domain_controllers_result(), tuple()} |
    {error, any()} |
    {error, describe_domain_controllers_errors(), tuple()}.
describe_domain_controllers(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_domain_controllers(Client, Input, []).

-spec describe_domain_controllers(aws_client:aws_client(), describe_domain_controllers_request(), proplists:proplist()) ->
    {ok, describe_domain_controllers_result(), tuple()} |
    {error, any()} |
    {error, describe_domain_controllers_errors(), tuple()}.
describe_domain_controllers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDomainControllers">>, Input, Options).

%% @doc Obtains information about which Amazon SNS topics receive status
%% messages from the specified
%% directory.
%%
%% If no input parameters are provided, such as DirectoryId or TopicName,
%% this request
%% describes all of the associations in the account.
-spec describe_event_topics(aws_client:aws_client(), describe_event_topics_request()) ->
    {ok, describe_event_topics_result(), tuple()} |
    {error, any()} |
    {error, describe_event_topics_errors(), tuple()}.
describe_event_topics(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_event_topics(Client, Input, []).

-spec describe_event_topics(aws_client:aws_client(), describe_event_topics_request(), proplists:proplist()) ->
    {ok, describe_event_topics_result(), tuple()} |
    {error, any()} |
    {error, describe_event_topics_errors(), tuple()}.
describe_event_topics(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEventTopics">>, Input, Options).

%% @doc Retrieves information about update activities for a hybrid directory.
%%
%% This operation
%% provides details about configuration changes, administrator account
%% updates, and
%% self-managed instance settings (IDs and DNS IPs).
-spec describe_hybrid_ad_update(aws_client:aws_client(), describe_hybrid_ad_update_request()) ->
    {ok, describe_hybrid_ad_update_result(), tuple()} |
    {error, any()} |
    {error, describe_hybrid_ad_update_errors(), tuple()}.
describe_hybrid_ad_update(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_hybrid_ad_update(Client, Input, []).

-spec describe_hybrid_ad_update(aws_client:aws_client(), describe_hybrid_ad_update_request(), proplists:proplist()) ->
    {ok, describe_hybrid_ad_update_result(), tuple()} |
    {error, any()} |
    {error, describe_hybrid_ad_update_errors(), tuple()}.
describe_hybrid_ad_update(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeHybridADUpdate">>, Input, Options).

%% @doc Describes the status of LDAP security for the specified directory.
-spec describe_ldaps_settings(aws_client:aws_client(), describe_ldaps_settings_request()) ->
    {ok, describe_ldaps_settings_result(), tuple()} |
    {error, any()} |
    {error, describe_ldaps_settings_errors(), tuple()}.
describe_ldaps_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_ldaps_settings(Client, Input, []).

-spec describe_ldaps_settings(aws_client:aws_client(), describe_ldaps_settings_request(), proplists:proplist()) ->
    {ok, describe_ldaps_settings_result(), tuple()} |
    {error, any()} |
    {error, describe_ldaps_settings_errors(), tuple()}.
describe_ldaps_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLDAPSSettings">>, Input, Options).

%% @doc Provides information about the Regions that are configured for
%% multi-Region
%% replication.
-spec describe_regions(aws_client:aws_client(), describe_regions_request()) ->
    {ok, describe_regions_result(), tuple()} |
    {error, any()} |
    {error, describe_regions_errors(), tuple()}.
describe_regions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_regions(Client, Input, []).

-spec describe_regions(aws_client:aws_client(), describe_regions_request(), proplists:proplist()) ->
    {ok, describe_regions_result(), tuple()} |
    {error, any()} |
    {error, describe_regions_errors(), tuple()}.
describe_regions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRegions">>, Input, Options).

%% @doc Retrieves information about the configurable settings for the
%% specified directory.
-spec describe_settings(aws_client:aws_client(), describe_settings_request()) ->
    {ok, describe_settings_result(), tuple()} |
    {error, any()} |
    {error, describe_settings_errors(), tuple()}.
describe_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_settings(Client, Input, []).

-spec describe_settings(aws_client:aws_client(), describe_settings_request(), proplists:proplist()) ->
    {ok, describe_settings_result(), tuple()} |
    {error, any()} |
    {error, describe_settings_errors(), tuple()}.
describe_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSettings">>, Input, Options).

%% @doc Returns the shared directories in your account.
-spec describe_shared_directories(aws_client:aws_client(), describe_shared_directories_request()) ->
    {ok, describe_shared_directories_result(), tuple()} |
    {error, any()} |
    {error, describe_shared_directories_errors(), tuple()}.
describe_shared_directories(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_shared_directories(Client, Input, []).

-spec describe_shared_directories(aws_client:aws_client(), describe_shared_directories_request(), proplists:proplist()) ->
    {ok, describe_shared_directories_result(), tuple()} |
    {error, any()} |
    {error, describe_shared_directories_errors(), tuple()}.
describe_shared_directories(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSharedDirectories">>, Input, Options).

%% @doc Obtains information about the directory snapshots that belong to this
%% account.
%%
%% This operation supports pagination with the use of the NextToken request
%% and
%% response parameters. If more results are available, the
%% DescribeSnapshots.NextToken
%% member contains a token that you pass in the next call to
%% `DescribeSnapshots' to
%% retrieve the next set of items.
%%
%% You can also specify a maximum number of return results with the Limit
%% parameter.
-spec describe_snapshots(aws_client:aws_client(), describe_snapshots_request()) ->
    {ok, describe_snapshots_result(), tuple()} |
    {error, any()} |
    {error, describe_snapshots_errors(), tuple()}.
describe_snapshots(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_snapshots(Client, Input, []).

-spec describe_snapshots(aws_client:aws_client(), describe_snapshots_request(), proplists:proplist()) ->
    {ok, describe_snapshots_result(), tuple()} |
    {error, any()} |
    {error, describe_snapshots_errors(), tuple()}.
describe_snapshots(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSnapshots">>, Input, Options).

%% @doc Obtains information about the trust relationships for this account.
%%
%% If no input parameters are provided, such as DirectoryId or TrustIds, this
%% request
%% describes all the trust relationships belonging to the account.
-spec describe_trusts(aws_client:aws_client(), describe_trusts_request()) ->
    {ok, describe_trusts_result(), tuple()} |
    {error, any()} |
    {error, describe_trusts_errors(), tuple()}.
describe_trusts(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_trusts(Client, Input, []).

-spec describe_trusts(aws_client:aws_client(), describe_trusts_request(), proplists:proplist()) ->
    {ok, describe_trusts_result(), tuple()} |
    {error, any()} |
    {error, describe_trusts_errors(), tuple()}.
describe_trusts(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTrusts">>, Input, Options).

%% @doc Describes the updates of a directory for a particular update type.
-spec describe_update_directory(aws_client:aws_client(), describe_update_directory_request()) ->
    {ok, describe_update_directory_result(), tuple()} |
    {error, any()} |
    {error, describe_update_directory_errors(), tuple()}.
describe_update_directory(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_update_directory(Client, Input, []).

-spec describe_update_directory(aws_client:aws_client(), describe_update_directory_request(), proplists:proplist()) ->
    {ok, describe_update_directory_result(), tuple()} |
    {error, any()} |
    {error, describe_update_directory_errors(), tuple()}.
describe_update_directory(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeUpdateDirectory">>, Input, Options).

%% @doc Disables alternative client authentication methods for the specified
%% directory.
-spec disable_client_authentication(aws_client:aws_client(), disable_client_authentication_request()) ->
    {ok, disable_client_authentication_result(), tuple()} |
    {error, any()} |
    {error, disable_client_authentication_errors(), tuple()}.
disable_client_authentication(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_client_authentication(Client, Input, []).

-spec disable_client_authentication(aws_client:aws_client(), disable_client_authentication_request(), proplists:proplist()) ->
    {ok, disable_client_authentication_result(), tuple()} |
    {error, any()} |
    {error, disable_client_authentication_errors(), tuple()}.
disable_client_authentication(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableClientAuthentication">>, Input, Options).

%% @doc Deactivates access to directory data via the Directory Service Data
%% API for the specified
%% directory.
%%
%% For
%% more information, see Directory Service Data API Reference:
%% https://docs.aws.amazon.com/directoryservicedata/latest/DirectoryServiceDataAPIReference/Welcome.html.
-spec disable_directory_data_access(aws_client:aws_client(), disable_directory_data_access_request()) ->
    {ok, disable_directory_data_access_result(), tuple()} |
    {error, any()} |
    {error, disable_directory_data_access_errors(), tuple()}.
disable_directory_data_access(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_directory_data_access(Client, Input, []).

-spec disable_directory_data_access(aws_client:aws_client(), disable_directory_data_access_request(), proplists:proplist()) ->
    {ok, disable_directory_data_access_result(), tuple()} |
    {error, any()} |
    {error, disable_directory_data_access_errors(), tuple()}.
disable_directory_data_access(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableDirectoryDataAccess">>, Input, Options).

%% @doc Deactivates LDAP secure calls for the specified directory.
-spec disable_ldaps(aws_client:aws_client(), disable_ldaps_request()) ->
    {ok, disable_ldaps_result(), tuple()} |
    {error, any()} |
    {error, disable_ldaps_errors(), tuple()}.
disable_ldaps(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_ldaps(Client, Input, []).

-spec disable_ldaps(aws_client:aws_client(), disable_ldaps_request(), proplists:proplist()) ->
    {ok, disable_ldaps_result(), tuple()} |
    {error, any()} |
    {error, disable_ldaps_errors(), tuple()}.
disable_ldaps(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableLDAPS">>, Input, Options).

%% @doc Disables multi-factor authentication (MFA) with the Remote
%% Authentication Dial In
%% User Service (RADIUS) server for an AD Connector or Microsoft AD
%% directory.
-spec disable_radius(aws_client:aws_client(), disable_radius_request()) ->
    {ok, disable_radius_result(), tuple()} |
    {error, any()} |
    {error, disable_radius_errors(), tuple()}.
disable_radius(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_radius(Client, Input, []).

-spec disable_radius(aws_client:aws_client(), disable_radius_request(), proplists:proplist()) ->
    {ok, disable_radius_result(), tuple()} |
    {error, any()} |
    {error, disable_radius_errors(), tuple()}.
disable_radius(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableRadius">>, Input, Options).

%% @doc Disables single-sign on for a directory.
-spec disable_sso(aws_client:aws_client(), disable_sso_request()) ->
    {ok, disable_sso_result(), tuple()} |
    {error, any()} |
    {error, disable_sso_errors(), tuple()}.
disable_sso(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_sso(Client, Input, []).

-spec disable_sso(aws_client:aws_client(), disable_sso_request(), proplists:proplist()) ->
    {ok, disable_sso_result(), tuple()} |
    {error, any()} |
    {error, disable_sso_errors(), tuple()}.
disable_sso(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableSso">>, Input, Options).

%% @doc Enables alternative client authentication methods for the specified
%% directory.
-spec enable_client_authentication(aws_client:aws_client(), enable_client_authentication_request()) ->
    {ok, enable_client_authentication_result(), tuple()} |
    {error, any()} |
    {error, enable_client_authentication_errors(), tuple()}.
enable_client_authentication(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_client_authentication(Client, Input, []).

-spec enable_client_authentication(aws_client:aws_client(), enable_client_authentication_request(), proplists:proplist()) ->
    {ok, enable_client_authentication_result(), tuple()} |
    {error, any()} |
    {error, enable_client_authentication_errors(), tuple()}.
enable_client_authentication(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableClientAuthentication">>, Input, Options).

%% @doc Enables access to directory data via the Directory Service Data API
%% for the specified directory.
%%
%% For
%% more information, see Directory Service Data API Reference:
%% https://docs.aws.amazon.com/directoryservicedata/latest/DirectoryServiceDataAPIReference/Welcome.html.
-spec enable_directory_data_access(aws_client:aws_client(), enable_directory_data_access_request()) ->
    {ok, enable_directory_data_access_result(), tuple()} |
    {error, any()} |
    {error, enable_directory_data_access_errors(), tuple()}.
enable_directory_data_access(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_directory_data_access(Client, Input, []).

-spec enable_directory_data_access(aws_client:aws_client(), enable_directory_data_access_request(), proplists:proplist()) ->
    {ok, enable_directory_data_access_result(), tuple()} |
    {error, any()} |
    {error, enable_directory_data_access_errors(), tuple()}.
enable_directory_data_access(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableDirectoryDataAccess">>, Input, Options).

%% @doc Activates the switch for the specific directory to always use LDAP
%% secure calls.
-spec enable_ldaps(aws_client:aws_client(), enable_ldaps_request()) ->
    {ok, enable_ldaps_result(), tuple()} |
    {error, any()} |
    {error, enable_ldaps_errors(), tuple()}.
enable_ldaps(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_ldaps(Client, Input, []).

-spec enable_ldaps(aws_client:aws_client(), enable_ldaps_request(), proplists:proplist()) ->
    {ok, enable_ldaps_result(), tuple()} |
    {error, any()} |
    {error, enable_ldaps_errors(), tuple()}.
enable_ldaps(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableLDAPS">>, Input, Options).

%% @doc Enables multi-factor authentication (MFA) with the Remote
%% Authentication Dial In User
%% Service (RADIUS) server for an AD Connector or Microsoft AD directory.
-spec enable_radius(aws_client:aws_client(), enable_radius_request()) ->
    {ok, enable_radius_result(), tuple()} |
    {error, any()} |
    {error, enable_radius_errors(), tuple()}.
enable_radius(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_radius(Client, Input, []).

-spec enable_radius(aws_client:aws_client(), enable_radius_request(), proplists:proplist()) ->
    {ok, enable_radius_result(), tuple()} |
    {error, any()} |
    {error, enable_radius_errors(), tuple()}.
enable_radius(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableRadius">>, Input, Options).

%% @doc Enables single sign-on for a directory.
%%
%% Single sign-on allows users in your directory to
%% access certain Amazon Web Services services from a computer joined to the
%% directory without having to enter
%% their credentials separately.
-spec enable_sso(aws_client:aws_client(), enable_sso_request()) ->
    {ok, enable_sso_result(), tuple()} |
    {error, any()} |
    {error, enable_sso_errors(), tuple()}.
enable_sso(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_sso(Client, Input, []).

-spec enable_sso(aws_client:aws_client(), enable_sso_request(), proplists:proplist()) ->
    {ok, enable_sso_result(), tuple()} |
    {error, any()} |
    {error, enable_sso_errors(), tuple()}.
enable_sso(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableSso">>, Input, Options).

%% @doc Obtains directory limit information for the current Region.
-spec get_directory_limits(aws_client:aws_client(), get_directory_limits_request()) ->
    {ok, get_directory_limits_result(), tuple()} |
    {error, any()} |
    {error, get_directory_limits_errors(), tuple()}.
get_directory_limits(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_directory_limits(Client, Input, []).

-spec get_directory_limits(aws_client:aws_client(), get_directory_limits_request(), proplists:proplist()) ->
    {ok, get_directory_limits_result(), tuple()} |
    {error, any()} |
    {error, get_directory_limits_errors(), tuple()}.
get_directory_limits(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDirectoryLimits">>, Input, Options).

%% @doc Obtains the manual snapshot limits for a directory.
-spec get_snapshot_limits(aws_client:aws_client(), get_snapshot_limits_request()) ->
    {ok, get_snapshot_limits_result(), tuple()} |
    {error, any()} |
    {error, get_snapshot_limits_errors(), tuple()}.
get_snapshot_limits(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_snapshot_limits(Client, Input, []).

-spec get_snapshot_limits(aws_client:aws_client(), get_snapshot_limits_request(), proplists:proplist()) ->
    {ok, get_snapshot_limits_result(), tuple()} |
    {error, any()} |
    {error, get_snapshot_limits_errors(), tuple()}.
get_snapshot_limits(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSnapshotLimits">>, Input, Options).

%% @doc Retrieves a list of directory assessments for the specified directory
%% or all
%% assessments in your account.
%%
%% Use this operation to monitor assessment status and manage
%% multiple assessments.
-spec list_ad_assessments(aws_client:aws_client(), list_ad_assessments_request()) ->
    {ok, list_ad_assessments_result(), tuple()} |
    {error, any()} |
    {error, list_ad_assessments_errors(), tuple()}.
list_ad_assessments(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_ad_assessments(Client, Input, []).

-spec list_ad_assessments(aws_client:aws_client(), list_ad_assessments_request(), proplists:proplist()) ->
    {ok, list_ad_assessments_result(), tuple()} |
    {error, any()} |
    {error, list_ad_assessments_errors(), tuple()}.
list_ad_assessments(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListADAssessments">>, Input, Options).

%% @doc For the specified directory, lists all the certificates registered
%% for a secure LDAP or
%% client certificate authentication.
-spec list_certificates(aws_client:aws_client(), list_certificates_request()) ->
    {ok, list_certificates_result(), tuple()} |
    {error, any()} |
    {error, list_certificates_errors(), tuple()}.
list_certificates(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_certificates(Client, Input, []).

-spec list_certificates(aws_client:aws_client(), list_certificates_request(), proplists:proplist()) ->
    {ok, list_certificates_result(), tuple()} |
    {error, any()} |
    {error, list_certificates_errors(), tuple()}.
list_certificates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCertificates">>, Input, Options).

%% @doc Lists the address blocks that you have added to a directory.
-spec list_ip_routes(aws_client:aws_client(), list_ip_routes_request()) ->
    {ok, list_ip_routes_result(), tuple()} |
    {error, any()} |
    {error, list_ip_routes_errors(), tuple()}.
list_ip_routes(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_ip_routes(Client, Input, []).

-spec list_ip_routes(aws_client:aws_client(), list_ip_routes_request(), proplists:proplist()) ->
    {ok, list_ip_routes_result(), tuple()} |
    {error, any()} |
    {error, list_ip_routes_errors(), tuple()}.
list_ip_routes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListIpRoutes">>, Input, Options).

%% @doc Lists the active log subscriptions for the Amazon Web Services
%% account.
-spec list_log_subscriptions(aws_client:aws_client(), list_log_subscriptions_request()) ->
    {ok, list_log_subscriptions_result(), tuple()} |
    {error, any()} |
    {error, list_log_subscriptions_errors(), tuple()}.
list_log_subscriptions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_log_subscriptions(Client, Input, []).

-spec list_log_subscriptions(aws_client:aws_client(), list_log_subscriptions_request(), proplists:proplist()) ->
    {ok, list_log_subscriptions_result(), tuple()} |
    {error, any()} |
    {error, list_log_subscriptions_errors(), tuple()}.
list_log_subscriptions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListLogSubscriptions">>, Input, Options).

%% @doc Lists all schema extensions applied to a Microsoft AD Directory.
-spec list_schema_extensions(aws_client:aws_client(), list_schema_extensions_request()) ->
    {ok, list_schema_extensions_result(), tuple()} |
    {error, any()} |
    {error, list_schema_extensions_errors(), tuple()}.
list_schema_extensions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_schema_extensions(Client, Input, []).

-spec list_schema_extensions(aws_client:aws_client(), list_schema_extensions_request(), proplists:proplist()) ->
    {ok, list_schema_extensions_result(), tuple()} |
    {error, any()} |
    {error, list_schema_extensions_errors(), tuple()}.
list_schema_extensions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSchemaExtensions">>, Input, Options).

%% @doc Lists all tags on a directory.
-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request()) ->
    {ok, list_tags_for_resource_result(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).

-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request(), proplists:proplist()) ->
    {ok, list_tags_for_resource_result(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Registers a certificate for a secure LDAP or client certificate
%% authentication.
-spec register_certificate(aws_client:aws_client(), register_certificate_request()) ->
    {ok, register_certificate_result(), tuple()} |
    {error, any()} |
    {error, register_certificate_errors(), tuple()}.
register_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_certificate(Client, Input, []).

-spec register_certificate(aws_client:aws_client(), register_certificate_request(), proplists:proplist()) ->
    {ok, register_certificate_result(), tuple()} |
    {error, any()} |
    {error, register_certificate_errors(), tuple()}.
register_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterCertificate">>, Input, Options).

%% @doc Associates a directory with an Amazon SNS topic.
%%
%% This establishes the directory as a
%% publisher to the specified Amazon SNS topic. You can then receive email or
%% text (SMS) messages when
%% the status of your directory changes. You get notified if your directory
%% goes from an Active
%% status to an Impaired or Inoperable status. You also receive a
%% notification when the directory
%% returns to an Active status.
-spec register_event_topic(aws_client:aws_client(), register_event_topic_request()) ->
    {ok, register_event_topic_result(), tuple()} |
    {error, any()} |
    {error, register_event_topic_errors(), tuple()}.
register_event_topic(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_event_topic(Client, Input, []).

-spec register_event_topic(aws_client:aws_client(), register_event_topic_request(), proplists:proplist()) ->
    {ok, register_event_topic_result(), tuple()} |
    {error, any()} |
    {error, register_event_topic_errors(), tuple()}.
register_event_topic(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterEventTopic">>, Input, Options).

%% @doc Rejects a directory sharing request that was sent from the directory
%% owner account.
-spec reject_shared_directory(aws_client:aws_client(), reject_shared_directory_request()) ->
    {ok, reject_shared_directory_result(), tuple()} |
    {error, any()} |
    {error, reject_shared_directory_errors(), tuple()}.
reject_shared_directory(Client, Input)
  when is_map(Client), is_map(Input) ->
    reject_shared_directory(Client, Input, []).

-spec reject_shared_directory(aws_client:aws_client(), reject_shared_directory_request(), proplists:proplist()) ->
    {ok, reject_shared_directory_result(), tuple()} |
    {error, any()} |
    {error, reject_shared_directory_errors(), tuple()}.
reject_shared_directory(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RejectSharedDirectory">>, Input, Options).

%% @doc Removes IP address blocks from a directory.
-spec remove_ip_routes(aws_client:aws_client(), remove_ip_routes_request()) ->
    {ok, remove_ip_routes_result(), tuple()} |
    {error, any()} |
    {error, remove_ip_routes_errors(), tuple()}.
remove_ip_routes(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_ip_routes(Client, Input, []).

-spec remove_ip_routes(aws_client:aws_client(), remove_ip_routes_request(), proplists:proplist()) ->
    {ok, remove_ip_routes_result(), tuple()} |
    {error, any()} |
    {error, remove_ip_routes_errors(), tuple()}.
remove_ip_routes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveIpRoutes">>, Input, Options).

%% @doc Stops all replication and removes the domain controllers from the
%% specified Region.
%%
%% You
%% cannot remove the primary Region with this operation. Instead, use the
%% `DeleteDirectory' API.
-spec remove_region(aws_client:aws_client(), remove_region_request()) ->
    {ok, remove_region_result(), tuple()} |
    {error, any()} |
    {error, remove_region_errors(), tuple()}.
remove_region(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_region(Client, Input, []).

-spec remove_region(aws_client:aws_client(), remove_region_request(), proplists:proplist()) ->
    {ok, remove_region_result(), tuple()} |
    {error, any()} |
    {error, remove_region_errors(), tuple()}.
remove_region(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveRegion">>, Input, Options).

%% @doc Removes tags from a directory.
-spec remove_tags_from_resource(aws_client:aws_client(), remove_tags_from_resource_request()) ->
    {ok, remove_tags_from_resource_result(), tuple()} |
    {error, any()} |
    {error, remove_tags_from_resource_errors(), tuple()}.
remove_tags_from_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_tags_from_resource(Client, Input, []).

-spec remove_tags_from_resource(aws_client:aws_client(), remove_tags_from_resource_request(), proplists:proplist()) ->
    {ok, remove_tags_from_resource_result(), tuple()} |
    {error, any()} |
    {error, remove_tags_from_resource_errors(), tuple()}.
remove_tags_from_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveTagsFromResource">>, Input, Options).

%% @doc Resets the password for any user in your Managed Microsoft AD or
%% Simple AD directory.
%%
%% Disabled
%% users will become enabled and can be authenticated following the API call.
%%
%% You can reset the password for any user in your directory with the
%% following
%% exceptions:
%%
%% For Simple AD, you cannot reset the password for any user that is a member
%% of either
%% the Domain Admins or Enterprise
%% Admins group except for the administrator user.
%%
%% For Managed Microsoft AD, you can only reset the password for a user that
%% is in an OU based
%% off of the NetBIOS name that you typed when you created your directory.
%% For example, you
%% cannot reset the password for a user in the Amazon Web Services
%% Reserved OU. For more information about the OU structure for an Managed
%% Microsoft AD
%% directory, see What Gets Created:
%% https://docs.aws.amazon.com/directoryservice/latest/admin-guide/ms_ad_getting_started_what_gets_created.html
%% in the Directory Service Administration
%% Guide.
-spec reset_user_password(aws_client:aws_client(), reset_user_password_request()) ->
    {ok, reset_user_password_result(), tuple()} |
    {error, any()} |
    {error, reset_user_password_errors(), tuple()}.
reset_user_password(Client, Input)
  when is_map(Client), is_map(Input) ->
    reset_user_password(Client, Input, []).

-spec reset_user_password(aws_client:aws_client(), reset_user_password_request(), proplists:proplist()) ->
    {ok, reset_user_password_result(), tuple()} |
    {error, any()} |
    {error, reset_user_password_errors(), tuple()}.
reset_user_password(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ResetUserPassword">>, Input, Options).

%% @doc Restores a directory using an existing directory snapshot.
%%
%% When you restore a directory from a snapshot, any changes made to the
%% directory after the snapshot date are overwritten.
%%
%% This action returns as soon as the restore operation is initiated. You can
%% monitor the
%% progress of the restore operation by calling the `DescribeDirectories'
%% operation with
%% the directory identifier. When the DirectoryDescription.Stage value
%% changes to
%% `Active', the restore operation is complete.
-spec restore_from_snapshot(aws_client:aws_client(), restore_from_snapshot_request()) ->
    {ok, restore_from_snapshot_result(), tuple()} |
    {error, any()} |
    {error, restore_from_snapshot_errors(), tuple()}.
restore_from_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    restore_from_snapshot(Client, Input, []).

-spec restore_from_snapshot(aws_client:aws_client(), restore_from_snapshot_request(), proplists:proplist()) ->
    {ok, restore_from_snapshot_result(), tuple()} |
    {error, any()} |
    {error, restore_from_snapshot_errors(), tuple()}.
restore_from_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RestoreFromSnapshot">>, Input, Options).

%% @doc Shares a specified directory (`DirectoryId') in your Amazon Web
%% Services account (directory
%% owner) with another Amazon Web Services account (directory consumer).
%%
%% With this operation you can use your
%% directory from any Amazon Web Services account and from any Amazon VPC
%% within an Amazon Web Services Region.
%%
%% When you share your Managed Microsoft AD directory, Directory Service
%% creates a shared directory in the
%% directory consumer account. This shared directory contains the metadata to
%% provide access to
%% the directory within the directory owner account. The shared directory is
%% visible in all VPCs
%% in the directory consumer account.
%%
%% The `ShareMethod' parameter determines whether the specified directory
%% can be
%% shared between Amazon Web Services accounts inside the same Amazon Web
%% Services organization (`ORGANIZATIONS').
%% It also determines whether you can share the directory with any other
%% Amazon Web Services account either
%% inside or outside of the organization (`HANDSHAKE').
%%
%% The `ShareNotes' parameter is only used when `HANDSHAKE' is
%% called,
%% which sends a directory sharing request to the directory consumer.
-spec share_directory(aws_client:aws_client(), share_directory_request()) ->
    {ok, share_directory_result(), tuple()} |
    {error, any()} |
    {error, share_directory_errors(), tuple()}.
share_directory(Client, Input)
  when is_map(Client), is_map(Input) ->
    share_directory(Client, Input, []).

-spec share_directory(aws_client:aws_client(), share_directory_request(), proplists:proplist()) ->
    {ok, share_directory_result(), tuple()} |
    {error, any()} |
    {error, share_directory_errors(), tuple()}.
share_directory(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ShareDirectory">>, Input, Options).

%% @doc Initiates a directory assessment to validate your self-managed AD
%% environment for
%% hybrid domain join.
%%
%% The assessment checks compatibility and connectivity of the
%% self-managed AD environment.
%%
%% A directory assessment is automatically created when you create a hybrid
%% directory.
%% There are two types of assessments: `CUSTOMER' and `SYSTEM'. Your
%% Amazon Web Services account has a limit of 100 `CUSTOMER' directory
%% assessments.
%%
%% The assessment process typically takes 30 minutes or more to complete. The
%% assessment
%% process is asynchronous and you can monitor it with
%% `DescribeADAssessment'.
%%
%% The `InstanceIds' must have a one-to-one correspondence with
%% `CustomerDnsIps', meaning that if the IP address for instance
%% i-10243410
%% is 10.24.34.100 and the IP address for instance i-10243420 is
%% 10.24.34.200, then the
%% input arrays must maintain the same order relationship, either
%% [10.24.34.100,
%% 10.24.34.200] paired with [i-10243410, i-10243420] or [10.24.34.200,
%% 10.24.34.100]
%% paired with [i-10243420, i-10243410].
%%
%% Note: You must provide exactly one `DirectoryId' or
%% `AssessmentConfiguration'.
-spec start_ad_assessment(aws_client:aws_client(), start_ad_assessment_request()) ->
    {ok, start_ad_assessment_result(), tuple()} |
    {error, any()} |
    {error, start_ad_assessment_errors(), tuple()}.
start_ad_assessment(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_ad_assessment(Client, Input, []).

-spec start_ad_assessment(aws_client:aws_client(), start_ad_assessment_request(), proplists:proplist()) ->
    {ok, start_ad_assessment_result(), tuple()} |
    {error, any()} |
    {error, start_ad_assessment_errors(), tuple()}.
start_ad_assessment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartADAssessment">>, Input, Options).

%% @doc Applies a schema extension to a Microsoft AD directory.
-spec start_schema_extension(aws_client:aws_client(), start_schema_extension_request()) ->
    {ok, start_schema_extension_result(), tuple()} |
    {error, any()} |
    {error, start_schema_extension_errors(), tuple()}.
start_schema_extension(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_schema_extension(Client, Input, []).

-spec start_schema_extension(aws_client:aws_client(), start_schema_extension_request(), proplists:proplist()) ->
    {ok, start_schema_extension_result(), tuple()} |
    {error, any()} |
    {error, start_schema_extension_errors(), tuple()}.
start_schema_extension(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartSchemaExtension">>, Input, Options).

%% @doc Stops the directory sharing between the directory owner and consumer
%% accounts.
-spec unshare_directory(aws_client:aws_client(), unshare_directory_request()) ->
    {ok, unshare_directory_result(), tuple()} |
    {error, any()} |
    {error, unshare_directory_errors(), tuple()}.
unshare_directory(Client, Input)
  when is_map(Client), is_map(Input) ->
    unshare_directory(Client, Input, []).

-spec unshare_directory(aws_client:aws_client(), unshare_directory_request(), proplists:proplist()) ->
    {ok, unshare_directory_result(), tuple()} |
    {error, any()} |
    {error, unshare_directory_errors(), tuple()}.
unshare_directory(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UnshareDirectory">>, Input, Options).

%% @doc Updates a conditional forwarder that has been set up for your Amazon
%% Web Services
%% directory.
-spec update_conditional_forwarder(aws_client:aws_client(), update_conditional_forwarder_request()) ->
    {ok, update_conditional_forwarder_result(), tuple()} |
    {error, any()} |
    {error, update_conditional_forwarder_errors(), tuple()}.
update_conditional_forwarder(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_conditional_forwarder(Client, Input, []).

-spec update_conditional_forwarder(aws_client:aws_client(), update_conditional_forwarder_request(), proplists:proplist()) ->
    {ok, update_conditional_forwarder_result(), tuple()} |
    {error, any()} |
    {error, update_conditional_forwarder_errors(), tuple()}.
update_conditional_forwarder(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateConditionalForwarder">>, Input, Options).

%% @doc Updates the directory for a particular update type.
-spec update_directory_setup(aws_client:aws_client(), update_directory_setup_request()) ->
    {ok, update_directory_setup_result(), tuple()} |
    {error, any()} |
    {error, update_directory_setup_errors(), tuple()}.
update_directory_setup(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_directory_setup(Client, Input, []).

-spec update_directory_setup(aws_client:aws_client(), update_directory_setup_request(), proplists:proplist()) ->
    {ok, update_directory_setup_result(), tuple()} |
    {error, any()} |
    {error, update_directory_setup_errors(), tuple()}.
update_directory_setup(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDirectorySetup">>, Input, Options).

%% @doc Updates the configuration of an existing hybrid directory.
%%
%% You can recover hybrid
%% directory administrator account or modify self-managed instance settings.
%%
%% Updates are applied asynchronously. Use `DescribeHybridADUpdate' to
%% monitor the progress of configuration changes.
%%
%% The `InstanceIds' must have a one-to-one correspondence with
%% `CustomerDnsIps', meaning that if the IP address for instance
%% i-10243410
%% is 10.24.34.100 and the IP address for instance i-10243420 is
%% 10.24.34.200, then the
%% input arrays must maintain the same order relationship, either
%% [10.24.34.100,
%% 10.24.34.200] paired with [i-10243410, i-10243420] or [10.24.34.200,
%% 10.24.34.100]
%% paired with [i-10243420, i-10243410].
%%
%% You must provide at least one update to
%% `UpdateHybridADRequest$HybridAdministratorAccountUpdate' or
%% `UpdateHybridADRequest$SelfManagedInstancesSettings'.
-spec update_hybrid_ad(aws_client:aws_client(), update_hybrid_ad_request()) ->
    {ok, update_hybrid_ad_result(), tuple()} |
    {error, any()} |
    {error, update_hybrid_ad_errors(), tuple()}.
update_hybrid_ad(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_hybrid_ad(Client, Input, []).

-spec update_hybrid_ad(aws_client:aws_client(), update_hybrid_ad_request(), proplists:proplist()) ->
    {ok, update_hybrid_ad_result(), tuple()} |
    {error, any()} |
    {error, update_hybrid_ad_errors(), tuple()}.
update_hybrid_ad(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateHybridAD">>, Input, Options).

%% @doc Adds or removes domain controllers to or from the directory.
%%
%% Based on the difference
%% between current value and new value (provided through this API call),
%% domain controllers will
%% be added or removed. It may take up to 45 minutes for any new domain
%% controllers to become
%% fully active once the requested number of domain controllers is updated.
%% During this time, you
%% cannot make another update request.
-spec update_number_of_domain_controllers(aws_client:aws_client(), update_number_of_domain_controllers_request()) ->
    {ok, update_number_of_domain_controllers_result(), tuple()} |
    {error, any()} |
    {error, update_number_of_domain_controllers_errors(), tuple()}.
update_number_of_domain_controllers(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_number_of_domain_controllers(Client, Input, []).

-spec update_number_of_domain_controllers(aws_client:aws_client(), update_number_of_domain_controllers_request(), proplists:proplist()) ->
    {ok, update_number_of_domain_controllers_result(), tuple()} |
    {error, any()} |
    {error, update_number_of_domain_controllers_errors(), tuple()}.
update_number_of_domain_controllers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateNumberOfDomainControllers">>, Input, Options).

%% @doc Updates the Remote Authentication Dial In User Service (RADIUS)
%% server information
%% for an AD Connector or Microsoft AD directory.
-spec update_radius(aws_client:aws_client(), update_radius_request()) ->
    {ok, update_radius_result(), tuple()} |
    {error, any()} |
    {error, update_radius_errors(), tuple()}.
update_radius(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_radius(Client, Input, []).

-spec update_radius(aws_client:aws_client(), update_radius_request(), proplists:proplist()) ->
    {ok, update_radius_result(), tuple()} |
    {error, any()} |
    {error, update_radius_errors(), tuple()}.
update_radius(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateRadius">>, Input, Options).

%% @doc Updates the configurable settings for the specified directory.
-spec update_settings(aws_client:aws_client(), update_settings_request()) ->
    {ok, update_settings_result(), tuple()} |
    {error, any()} |
    {error, update_settings_errors(), tuple()}.
update_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_settings(Client, Input, []).

-spec update_settings(aws_client:aws_client(), update_settings_request(), proplists:proplist()) ->
    {ok, update_settings_result(), tuple()} |
    {error, any()} |
    {error, update_settings_errors(), tuple()}.
update_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateSettings">>, Input, Options).

%% @doc Updates the trust that has been set up between your Managed Microsoft
%% AD directory and an
%% self-managed Active Directory.
-spec update_trust(aws_client:aws_client(), update_trust_request()) ->
    {ok, update_trust_result(), tuple()} |
    {error, any()} |
    {error, update_trust_errors(), tuple()}.
update_trust(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_trust(Client, Input, []).

-spec update_trust(aws_client:aws_client(), update_trust_request(), proplists:proplist()) ->
    {ok, update_trust_result(), tuple()} |
    {error, any()} |
    {error, update_trust_errors(), tuple()}.
update_trust(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateTrust">>, Input, Options).

%% @doc Directory Service for Microsoft Active Directory allows you to
%% configure and verify trust
%% relationships.
%%
%% This action verifies a trust relationship between your Managed Microsoft
%% AD directory and an
%% external domain.
-spec verify_trust(aws_client:aws_client(), verify_trust_request()) ->
    {ok, verify_trust_result(), tuple()} |
    {error, any()} |
    {error, verify_trust_errors(), tuple()}.
verify_trust(Client, Input)
  when is_map(Client), is_map(Input) ->
    verify_trust(Client, Input, []).

-spec verify_trust(aws_client:aws_client(), verify_trust_request(), proplists:proplist()) ->
    {ok, verify_trust_result(), tuple()} |
    {error, any()} |
    {error, verify_trust_errors(), tuple()}.
verify_trust(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"VerifyTrust">>, Input, Options).

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
    Client1 = Client#{service => <<"ds">>},
    Host = build_host(<<"ds">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"DirectoryService_20150416.", Action/binary>>}
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
