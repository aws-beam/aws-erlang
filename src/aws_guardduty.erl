%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon GuardDuty is a continuous security monitoring service that
%% analyzes and processes
%% the following foundational data sources - VPC flow logs, Amazon Web
%% Services CloudTrail management event logs, CloudTrail S3 data event
%% logs, EKS audit logs, DNS logs, Amazon EBS volume data, runtime activity
%% belonging to container workloads, such
%% as Amazon EKS, Amazon ECS (including Amazon Web Services Fargate), and
%% Amazon EC2 instances.
%%
%% It uses threat intelligence
%% feeds, such as lists of malicious IPs and domains, and machine learning to
%% identify
%% unexpected, potentially unauthorized, and malicious activity within your
%% Amazon Web Services environment.
%% This can include issues like escalations of privileges, uses of exposed
%% credentials, or
%% communication with malicious IPs, domains, or presence of malware on your
%% Amazon EC2 instances
%% and container workloads. For example, GuardDuty can detect compromised EC2
%% instances and
%% container workloads serving malware, or mining bitcoin.
%%
%% GuardDuty also monitors Amazon Web Services account access behavior for
%% signs of compromise, such as
%% unauthorized infrastructure deployments like EC2 instances deployed in a
%% Region that has never
%% been used, or unusual API calls like a password policy change to reduce
%% password strength.
%%
%% GuardDuty informs you about the status of your Amazon Web Services
%% environment by producing security
%% findings that you can view in the GuardDuty console or through Amazon
%% EventBridge. For more
%% information, see the
%% Amazon
%% GuardDuty User Guide:
%% https://docs.aws.amazon.com/guardduty/latest/ug/what-is-guardduty.html
%% .
-module(aws_guardduty).

-export([accept_administrator_invitation/3,
         accept_administrator_invitation/4,
         accept_invitation/3,
         accept_invitation/4,
         archive_findings/3,
         archive_findings/4,
         create_detector/2,
         create_detector/3,
         create_filter/3,
         create_filter/4,
         create_ip_set/3,
         create_ip_set/4,
         create_malware_protection_plan/2,
         create_malware_protection_plan/3,
         create_members/3,
         create_members/4,
         create_publishing_destination/3,
         create_publishing_destination/4,
         create_sample_findings/3,
         create_sample_findings/4,
         create_threat_intel_set/3,
         create_threat_intel_set/4,
         decline_invitations/2,
         decline_invitations/3,
         delete_detector/3,
         delete_detector/4,
         delete_filter/4,
         delete_filter/5,
         delete_invitations/2,
         delete_invitations/3,
         delete_ip_set/4,
         delete_ip_set/5,
         delete_malware_protection_plan/3,
         delete_malware_protection_plan/4,
         delete_members/3,
         delete_members/4,
         delete_publishing_destination/4,
         delete_publishing_destination/5,
         delete_threat_intel_set/4,
         delete_threat_intel_set/5,
         describe_malware_scans/3,
         describe_malware_scans/4,
         describe_organization_configuration/2,
         describe_organization_configuration/4,
         describe_organization_configuration/5,
         describe_publishing_destination/3,
         describe_publishing_destination/5,
         describe_publishing_destination/6,
         disable_organization_admin_account/2,
         disable_organization_admin_account/3,
         disassociate_from_administrator_account/3,
         disassociate_from_administrator_account/4,
         disassociate_from_master_account/3,
         disassociate_from_master_account/4,
         disassociate_members/3,
         disassociate_members/4,
         enable_organization_admin_account/2,
         enable_organization_admin_account/3,
         get_administrator_account/2,
         get_administrator_account/4,
         get_administrator_account/5,
         get_coverage_statistics/3,
         get_coverage_statistics/4,
         get_detector/2,
         get_detector/4,
         get_detector/5,
         get_filter/3,
         get_filter/5,
         get_filter/6,
         get_findings/3,
         get_findings/4,
         get_findings_statistics/3,
         get_findings_statistics/4,
         get_invitations_count/1,
         get_invitations_count/3,
         get_invitations_count/4,
         get_ip_set/3,
         get_ip_set/5,
         get_ip_set/6,
         get_malware_protection_plan/2,
         get_malware_protection_plan/4,
         get_malware_protection_plan/5,
         get_malware_scan_settings/2,
         get_malware_scan_settings/4,
         get_malware_scan_settings/5,
         get_master_account/2,
         get_master_account/4,
         get_master_account/5,
         get_member_detectors/3,
         get_member_detectors/4,
         get_members/3,
         get_members/4,
         get_organization_statistics/1,
         get_organization_statistics/3,
         get_organization_statistics/4,
         get_remaining_free_trial_days/3,
         get_remaining_free_trial_days/4,
         get_threat_intel_set/3,
         get_threat_intel_set/5,
         get_threat_intel_set/6,
         get_usage_statistics/3,
         get_usage_statistics/4,
         invite_members/3,
         invite_members/4,
         list_coverage/3,
         list_coverage/4,
         list_detectors/1,
         list_detectors/3,
         list_detectors/4,
         list_filters/2,
         list_filters/4,
         list_filters/5,
         list_findings/3,
         list_findings/4,
         list_invitations/1,
         list_invitations/3,
         list_invitations/4,
         list_ip_sets/2,
         list_ip_sets/4,
         list_ip_sets/5,
         list_malware_protection_plans/1,
         list_malware_protection_plans/3,
         list_malware_protection_plans/4,
         list_members/2,
         list_members/4,
         list_members/5,
         list_organization_admin_accounts/1,
         list_organization_admin_accounts/3,
         list_organization_admin_accounts/4,
         list_publishing_destinations/2,
         list_publishing_destinations/4,
         list_publishing_destinations/5,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_threat_intel_sets/2,
         list_threat_intel_sets/4,
         list_threat_intel_sets/5,
         start_malware_scan/2,
         start_malware_scan/3,
         start_monitoring_members/3,
         start_monitoring_members/4,
         stop_monitoring_members/3,
         stop_monitoring_members/4,
         tag_resource/3,
         tag_resource/4,
         unarchive_findings/3,
         unarchive_findings/4,
         untag_resource/3,
         untag_resource/4,
         update_detector/3,
         update_detector/4,
         update_filter/4,
         update_filter/5,
         update_findings_feedback/3,
         update_findings_feedback/4,
         update_ip_set/4,
         update_ip_set/5,
         update_malware_protection_plan/3,
         update_malware_protection_plan/4,
         update_malware_scan_settings/3,
         update_malware_scan_settings/4,
         update_member_detectors/3,
         update_member_detectors/4,
         update_organization_configuration/3,
         update_organization_configuration/4,
         update_publishing_destination/4,
         update_publishing_destination/5,
         update_threat_intel_set/4,
         update_threat_intel_set/5]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% organization_kubernetes_configuration() :: #{
%%   <<"AuditLogs">> => organization_kubernetes_audit_logs_configuration()
%% }
-type organization_kubernetes_configuration() :: #{binary() => any()}.


%% Example:
%% resource_data() :: #{
%%   <<"AccessKey">> => access_key(),
%%   <<"Ec2Instance">> => ec2_instance(),
%%   <<"Ec2NetworkInterface">> => ec2_network_interface(),
%%   <<"S3Bucket">> => s3_bucket(),
%%   <<"S3Object">> => s3_object()
%% }
-type resource_data() :: #{binary() => any()}.

%% Example:
%% disassociate_from_master_account_request() :: #{}
-type disassociate_from_master_account_request() :: #{}.


%% Example:
%% cloud_trail_configuration_result() :: #{
%%   <<"Status">> => list(any())
%% }
-type cloud_trail_configuration_result() :: #{binary() => any()}.


%% Example:
%% organization() :: #{
%%   <<"Asn">> => string(),
%%   <<"AsnOrg">> => string(),
%%   <<"Isp">> => string(),
%%   <<"Org">> => string()
%% }
-type organization() :: #{binary() => any()}.


%% Example:
%% instance_details() :: #{
%%   <<"AvailabilityZone">> => string(),
%%   <<"IamInstanceProfile">> => iam_instance_profile(),
%%   <<"ImageDescription">> => string(),
%%   <<"ImageId">> => string(),
%%   <<"InstanceId">> => string(),
%%   <<"InstanceState">> => string(),
%%   <<"InstanceType">> => string(),
%%   <<"LaunchTime">> => string(),
%%   <<"NetworkInterfaces">> => list(network_interface()()),
%%   <<"OutpostArn">> => string(),
%%   <<"Platform">> => string(),
%%   <<"ProductCodes">> => list(product_code()()),
%%   <<"Tags">> => list(tag()())
%% }
-type instance_details() :: #{binary() => any()}.


%% Example:
%% member_data_source_configuration() :: #{
%%   <<"AccountId">> => string(),
%%   <<"DataSources">> => data_source_configurations_result(),
%%   <<"Features">> => list(member_features_configuration_result()())
%% }
-type member_data_source_configuration() :: #{binary() => any()}.


%% Example:
%% data_sources_free_trial() :: #{
%%   <<"CloudTrail">> => data_source_free_trial(),
%%   <<"DnsLogs">> => data_source_free_trial(),
%%   <<"FlowLogs">> => data_source_free_trial(),
%%   <<"Kubernetes">> => kubernetes_data_source_free_trial(),
%%   <<"MalwareProtection">> => malware_protection_data_source_free_trial(),
%%   <<"S3Logs">> => data_source_free_trial()
%% }
-type data_sources_free_trial() :: #{binary() => any()}.


%% Example:
%% get_usage_statistics_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Unit">> => string(),
%%   <<"UsageCriteria">> := usage_criteria(),
%%   <<"UsageStatisticType">> := list(any())
%% }
-type get_usage_statistics_request() :: #{binary() => any()}.


%% Example:
%% usage_data_source_result() :: #{
%%   <<"DataSource">> => list(any()),
%%   <<"Total">> => total()
%% }
-type usage_data_source_result() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"Tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% scan_resource_criteria() :: #{
%%   <<"Exclude">> => map(),
%%   <<"Include">> => map()
%% }
-type scan_resource_criteria() :: #{binary() => any()}.


%% Example:
%% decline_invitations_response() :: #{
%%   <<"UnprocessedAccounts">> => list(unprocessed_account()())
%% }
-type decline_invitations_response() :: #{binary() => any()}.


%% Example:
%% malware_protection_plan_tagging_action() :: #{
%%   <<"Status">> => list(any())
%% }
-type malware_protection_plan_tagging_action() :: #{binary() => any()}.


%% Example:
%% container() :: #{
%%   <<"ContainerRuntime">> => string(),
%%   <<"Id">> => string(),
%%   <<"Image">> => string(),
%%   <<"ImagePrefix">> => string(),
%%   <<"Name">> => string(),
%%   <<"SecurityContext">> => security_context(),
%%   <<"VolumeMounts">> => list(volume_mount()())
%% }
-type container() :: #{binary() => any()}.


%% Example:
%% remote_ip_details() :: #{
%%   <<"City">> => city(),
%%   <<"Country">> => country(),
%%   <<"GeoLocation">> => geo_location(),
%%   <<"IpAddressV4">> => string(),
%%   <<"IpAddressV6">> => string(),
%%   <<"Organization">> => organization()
%% }
-type remote_ip_details() :: #{binary() => any()}.

%% Example:
%% disable_organization_admin_account_response() :: #{}
-type disable_organization_admin_account_response() :: #{}.


%% Example:
%% kubernetes_data_source_free_trial() :: #{
%%   <<"AuditLogs">> => data_source_free_trial()
%% }
-type kubernetes_data_source_free_trial() :: #{binary() => any()}.


%% Example:
%% organization_ebs_volumes_result() :: #{
%%   <<"AutoEnable">> => boolean()
%% }
-type organization_ebs_volumes_result() :: #{binary() => any()}.


%% Example:
%% administrator() :: #{
%%   <<"AccountId">> => string(),
%%   <<"InvitationId">> => string(),
%%   <<"InvitedAt">> => string(),
%%   <<"RelationshipStatus">> => string()
%% }
-type administrator() :: #{binary() => any()}.


%% Example:
%% usage_statistics() :: #{
%%   <<"SumByAccount">> => list(usage_account_result()()),
%%   <<"SumByDataSource">> => list(usage_data_source_result()()),
%%   <<"SumByFeature">> => list(usage_feature_result()()),
%%   <<"SumByResource">> => list(usage_resource_result()()),
%%   <<"TopAccountsByFeature">> => list(usage_top_accounts_result()()),
%%   <<"TopResources">> => list(usage_resource_result()())
%% }
-type usage_statistics() :: #{binary() => any()}.


%% Example:
%% filter_condition() :: #{
%%   <<"EqualsValue">> => string(),
%%   <<"GreaterThan">> => float(),
%%   <<"LessThan">> => float()
%% }
-type filter_condition() :: #{binary() => any()}.


%% Example:
%% get_malware_protection_plan_response() :: #{
%%   <<"Actions">> => malware_protection_plan_actions(),
%%   <<"Arn">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"ProtectedResource">> => create_protected_resource(),
%%   <<"Role">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusReasons">> => list(malware_protection_plan_status_reason()()),
%%   <<"Tags">> => map()
%% }
-type get_malware_protection_plan_response() :: #{binary() => any()}.


%% Example:
%% describe_organization_configuration_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_organization_configuration_request() :: #{binary() => any()}.


%% Example:
%% s3_bucket_detail() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"DefaultServerSideEncryption">> => default_server_side_encryption(),
%%   <<"Name">> => string(),
%%   <<"Owner">> => owner(),
%%   <<"PublicAccess">> => public_access(),
%%   <<"S3ObjectDetails">> => list(s3_object_detail()()),
%%   <<"Tags">> => list(tag()()),
%%   <<"Type">> => string()
%% }
-type s3_bucket_detail() :: #{binary() => any()}.


%% Example:
%% data_source_configurations_result() :: #{
%%   <<"CloudTrail">> => cloud_trail_configuration_result(),
%%   <<"DNSLogs">> => dns_logs_configuration_result(),
%%   <<"FlowLogs">> => flow_logs_configuration_result(),
%%   <<"Kubernetes">> => kubernetes_configuration_result(),
%%   <<"MalwareProtection">> => malware_protection_configuration_result(),
%%   <<"S3Logs">> => s3_logs_configuration_result()
%% }
-type data_source_configurations_result() :: #{binary() => any()}.


%% Example:
%% list_ip_sets_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_ip_sets_request() :: #{binary() => any()}.


%% Example:
%% get_findings_statistics_request() :: #{
%%   <<"FindingCriteria">> => finding_criteria(),
%%   <<"FindingStatisticTypes">> => list(list(any())()),
%%   <<"GroupBy">> => list(any()),
%%   <<"MaxResults">> => integer(),
%%   <<"OrderBy">> => list(any())
%% }
-type get_findings_statistics_request() :: #{binary() => any()}.


%% Example:
%% get_members_response() :: #{
%%   <<"Members">> => list(member()()),
%%   <<"UnprocessedAccounts">> => list(unprocessed_account()())
%% }
-type get_members_response() :: #{binary() => any()}.


%% Example:
%% get_member_detectors_request() :: #{
%%   <<"AccountIds">> := list(string()())
%% }
-type get_member_detectors_request() :: #{binary() => any()}.


%% Example:
%% admin_account() :: #{
%%   <<"AdminAccountId">> => string(),
%%   <<"AdminStatus">> => list(any())
%% }
-type admin_account() :: #{binary() => any()}.


%% Example:
%% sequence() :: #{
%%   <<"Actors">> => list(actor()()),
%%   <<"Description">> => string(),
%%   <<"Endpoints">> => list(network_endpoint()()),
%%   <<"Resources">> => list(resource_v2()()),
%%   <<"SequenceIndicators">> => list(indicator()()),
%%   <<"Signals">> => list(signal()()),
%%   <<"Uid">> => string()
%% }
-type sequence() :: #{binary() => any()}.

%% Example:
%% archive_findings_response() :: #{}
-type archive_findings_response() :: #{}.


%% Example:
%% accept_administrator_invitation_request() :: #{
%%   <<"AdministratorId">> := string(),
%%   <<"InvitationId">> := string()
%% }
-type accept_administrator_invitation_request() :: #{binary() => any()}.


%% Example:
%% scan_condition_pair() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type scan_condition_pair() :: #{binary() => any()}.


%% Example:
%% destination_properties() :: #{
%%   <<"DestinationArn">> => string(),
%%   <<"KmsKeyArn">> => string()
%% }
-type destination_properties() :: #{binary() => any()}.


%% Example:
%% ebs_volume_details() :: #{
%%   <<"ScannedVolumeDetails">> => list(volume_detail()()),
%%   <<"SkippedVolumeDetails">> => list(volume_detail()())
%% }
-type ebs_volume_details() :: #{binary() => any()}.

%% Example:
%% delete_threat_intel_set_response() :: #{}
-type delete_threat_intel_set_response() :: #{}.


%% Example:
%% kubernetes_audit_logs_configuration() :: #{
%%   <<"Enable">> => boolean()
%% }
-type kubernetes_audit_logs_configuration() :: #{binary() => any()}.


%% Example:
%% kubernetes_workload_details() :: #{
%%   <<"Containers">> => list(container()()),
%%   <<"HostIPC">> => boolean(),
%%   <<"HostNetwork">> => boolean(),
%%   <<"HostPID">> => boolean(),
%%   <<"Name">> => string(),
%%   <<"Namespace">> => string(),
%%   <<"ServiceAccountName">> => string(),
%%   <<"Type">> => string(),
%%   <<"Uid">> => string(),
%%   <<"Volumes">> => list(volume()())
%% }
-type kubernetes_workload_details() :: #{binary() => any()}.

%% Example:
%% get_administrator_account_request() :: #{}
-type get_administrator_account_request() :: #{}.


%% Example:
%% process_details() :: #{
%%   <<"Euid">> => integer(),
%%   <<"ExecutablePath">> => string(),
%%   <<"ExecutableSha256">> => string(),
%%   <<"Lineage">> => list(lineage_object()()),
%%   <<"Name">> => string(),
%%   <<"NamespacePid">> => integer(),
%%   <<"ParentUuid">> => string(),
%%   <<"Pid">> => integer(),
%%   <<"Pwd">> => string(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"User">> => string(),
%%   <<"UserId">> => integer(),
%%   <<"Uuid">> => string()
%% }
-type process_details() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% list_publishing_destinations_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_publishing_destinations_request() :: #{binary() => any()}.


%% Example:
%% filter_criteria() :: #{
%%   <<"FilterCriterion">> => list(filter_criterion()())
%% }
-type filter_criteria() :: #{binary() => any()}.


%% Example:
%% filter_criterion() :: #{
%%   <<"CriterionKey">> => list(any()),
%%   <<"FilterCondition">> => filter_condition()
%% }
-type filter_criterion() :: #{binary() => any()}.


%% Example:
%% network_connection_action() :: #{
%%   <<"Blocked">> => boolean(),
%%   <<"ConnectionDirection">> => string(),
%%   <<"LocalIpDetails">> => local_ip_details(),
%%   <<"LocalNetworkInterface">> => string(),
%%   <<"LocalPortDetails">> => local_port_details(),
%%   <<"Protocol">> => string(),
%%   <<"RemoteIpDetails">> => remote_ip_details(),
%%   <<"RemotePortDetails">> => remote_port_details()
%% }
-type network_connection_action() :: #{binary() => any()}.


%% Example:
%% create_malware_protection_plan_response() :: #{
%%   <<"MalwareProtectionPlanId">> => string()
%% }
-type create_malware_protection_plan_response() :: #{binary() => any()}.


%% Example:
%% account_level_permissions() :: #{
%%   <<"BlockPublicAccess">> => block_public_access()
%% }
-type account_level_permissions() :: #{binary() => any()}.


%% Example:
%% coverage_filter_condition() :: #{
%%   <<"Equals">> => list(string()()),
%%   <<"NotEquals">> => list(string()())
%% }
-type coverage_filter_condition() :: #{binary() => any()}.


%% Example:
%% malware_protection_configuration() :: #{
%%   <<"ScanEc2InstanceWithFindings">> => scan_ec2_instance_with_findings()
%% }
-type malware_protection_configuration() :: #{binary() => any()}.


%% Example:
%% local_port_details() :: #{
%%   <<"Port">> => integer(),
%%   <<"PortName">> => string()
%% }
-type local_port_details() :: #{binary() => any()}.


%% Example:
%% start_monitoring_members_response() :: #{
%%   <<"UnprocessedAccounts">> => list(unprocessed_account()())
%% }
-type start_monitoring_members_response() :: #{binary() => any()}.


%% Example:
%% malware_protection_configuration_result() :: #{
%%   <<"ScanEc2InstanceWithFindings">> => scan_ec2_instance_with_findings_result(),
%%   <<"ServiceRole">> => string()
%% }
-type malware_protection_configuration_result() :: #{binary() => any()}.


%% Example:
%% kubernetes_api_call_action() :: #{
%%   <<"Namespace">> => string(),
%%   <<"Parameters">> => string(),
%%   <<"RemoteIpDetails">> => remote_ip_details(),
%%   <<"RequestUri">> => string(),
%%   <<"Resource">> => string(),
%%   <<"ResourceName">> => string(),
%%   <<"SourceIps">> => list(string()()),
%%   <<"StatusCode">> => integer(),
%%   <<"Subresource">> => string(),
%%   <<"UserAgent">> => string(),
%%   <<"Verb">> => string()
%% }
-type kubernetes_api_call_action() :: #{binary() => any()}.


%% Example:
%% detector_feature_configuration_result() :: #{
%%   <<"AdditionalConfiguration">> => list(detector_additional_configuration_result()()),
%%   <<"Name">> => list(any()),
%%   <<"Status">> => list(any()),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type detector_feature_configuration_result() :: #{binary() => any()}.


%% Example:
%% highest_severity_threat_details() :: #{
%%   <<"Count">> => integer(),
%%   <<"Severity">> => string(),
%%   <<"ThreatName">> => string()
%% }
-type highest_severity_threat_details() :: #{binary() => any()}.


%% Example:
%% coverage_filter_criterion() :: #{
%%   <<"CriterionKey">> => list(any()),
%%   <<"FilterCondition">> => coverage_filter_condition()
%% }
-type coverage_filter_criterion() :: #{binary() => any()}.


%% Example:
%% organization_malware_protection_configuration() :: #{
%%   <<"ScanEc2InstanceWithFindings">> => organization_scan_ec2_instance_with_findings()
%% }
-type organization_malware_protection_configuration() :: #{binary() => any()}.


%% Example:
%% public_access_configuration() :: #{
%%   <<"PublicAclAccess">> => list(any()),
%%   <<"PublicAclIgnoreBehavior">> => list(any()),
%%   <<"PublicBucketRestrictBehavior">> => list(any()),
%%   <<"PublicPolicyAccess">> => list(any())
%% }
-type public_access_configuration() :: #{binary() => any()}.


%% Example:
%% rds_db_user_details() :: #{
%%   <<"Application">> => string(),
%%   <<"AuthMethod">> => string(),
%%   <<"Database">> => string(),
%%   <<"Ssl">> => string(),
%%   <<"User">> => string()
%% }
-type rds_db_user_details() :: #{binary() => any()}.


%% Example:
%% scan_ec2_instance_with_findings() :: #{
%%   <<"EbsVolumes">> => boolean()
%% }
-type scan_ec2_instance_with_findings() :: #{binary() => any()}.


%% Example:
%% update_protected_resource() :: #{
%%   <<"S3Bucket">> => update_s3_bucket_resource()
%% }
-type update_protected_resource() :: #{binary() => any()}.


%% Example:
%% invitation() :: #{
%%   <<"AccountId">> => string(),
%%   <<"InvitationId">> => string(),
%%   <<"InvitedAt">> => string(),
%%   <<"RelationshipStatus">> => string()
%% }
-type invitation() :: #{binary() => any()}.

%% Example:
%% disassociate_from_master_account_response() :: #{}
-type disassociate_from_master_account_response() :: #{}.


%% Example:
%% lambda_details() :: #{
%%   <<"Description">> => string(),
%%   <<"FunctionArn">> => string(),
%%   <<"FunctionName">> => string(),
%%   <<"FunctionVersion">> => string(),
%%   <<"LastModifiedAt">> => non_neg_integer(),
%%   <<"RevisionId">> => string(),
%%   <<"Role">> => string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"VpcConfig">> => vpc_config()
%% }
-type lambda_details() :: #{binary() => any()}.


%% Example:
%% rds_limitless_db_details() :: #{
%%   <<"DbClusterIdentifier">> => string(),
%%   <<"DbShardGroupArn">> => string(),
%%   <<"DbShardGroupIdentifier">> => string(),
%%   <<"DbShardGroupResourceId">> => string(),
%%   <<"Engine">> => string(),
%%   <<"EngineVersion">> => string(),
%%   <<"Tags">> => list(tag()())
%% }
-type rds_limitless_db_details() :: #{binary() => any()}.


%% Example:
%% describe_publishing_destination_response() :: #{
%%   <<"DestinationId">> => string(),
%%   <<"DestinationProperties">> => destination_properties(),
%%   <<"DestinationType">> => list(any()),
%%   <<"PublishingFailureStartTimestamp">> => float(),
%%   <<"Status">> => list(any())
%% }
-type describe_publishing_destination_response() :: #{binary() => any()}.


%% Example:
%% describe_malware_scans_request() :: #{
%%   <<"FilterCriteria">> => filter_criteria(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SortCriteria">> => sort_criteria()
%% }
-type describe_malware_scans_request() :: #{binary() => any()}.

%% Example:
%% update_publishing_destination_response() :: #{}
-type update_publishing_destination_response() :: #{}.


%% Example:
%% get_coverage_statistics_response() :: #{
%%   <<"CoverageStatistics">> => coverage_statistics()
%% }
-type get_coverage_statistics_response() :: #{binary() => any()}.


%% Example:
%% network_interface() :: #{
%%   <<"Ipv6Addresses">> => list(string()()),
%%   <<"NetworkInterfaceId">> => string(),
%%   <<"PrivateDnsName">> => string(),
%%   <<"PrivateIpAddress">> => string(),
%%   <<"PrivateIpAddresses">> => list(private_ip_address_details()()),
%%   <<"PublicDnsName">> => string(),
%%   <<"PublicIp">> => string(),
%%   <<"SecurityGroups">> => list(security_group()()),
%%   <<"SubnetId">> => string(),
%%   <<"VpcId">> => string()
%% }
-type network_interface() :: #{binary() => any()}.


%% Example:
%% organization_additional_configuration() :: #{
%%   <<"AutoEnable">> => list(any()),
%%   <<"Name">> => list(any())
%% }
-type organization_additional_configuration() :: #{binary() => any()}.


%% Example:
%% get_filter_response() :: #{
%%   <<"Action">> => list(any()),
%%   <<"Description">> => string(),
%%   <<"FindingCriteria">> => finding_criteria(),
%%   <<"Name">> => string(),
%%   <<"Rank">> => integer(),
%%   <<"Tags">> => map()
%% }
-type get_filter_response() :: #{binary() => any()}.


%% Example:
%% organization_s3_logs_configuration() :: #{
%%   <<"AutoEnable">> => boolean()
%% }
-type organization_s3_logs_configuration() :: #{binary() => any()}.


%% Example:
%% get_findings_statistics_response() :: #{
%%   <<"FindingStatistics">> => finding_statistics(),
%%   <<"NextToken">> => string()
%% }
-type get_findings_statistics_response() :: #{binary() => any()}.


%% Example:
%% remote_port_details() :: #{
%%   <<"Port">> => integer(),
%%   <<"PortName">> => string()
%% }
-type remote_port_details() :: #{binary() => any()}.

%% Example:
%% update_ip_set_response() :: #{}
-type update_ip_set_response() :: #{}.


%% Example:
%% network_geo_location() :: #{
%%   <<"City">> => string(),
%%   <<"Country">> => string(),
%%   <<"Latitude">> => float(),
%%   <<"Longitude">> => float()
%% }
-type network_geo_location() :: #{binary() => any()}.


%% Example:
%% s3_object() :: #{
%%   <<"ETag">> => string(),
%%   <<"Key">> => string(),
%%   <<"VersionId">> => string()
%% }
-type s3_object() :: #{binary() => any()}.


%% Example:
%% list_findings_response() :: #{
%%   <<"FindingIds">> => list(string()()),
%%   <<"NextToken">> => string()
%% }
-type list_findings_response() :: #{binary() => any()}.


%% Example:
%% coverage_sort_criteria() :: #{
%%   <<"AttributeName">> => list(any()),
%%   <<"OrderBy">> => list(any())
%% }
-type coverage_sort_criteria() :: #{binary() => any()}.


%% Example:
%% create_filter_response() :: #{
%%   <<"Name">> => string()
%% }
-type create_filter_response() :: #{binary() => any()}.

%% Example:
%% delete_threat_intel_set_request() :: #{}
-type delete_threat_intel_set_request() :: #{}.


%% Example:
%% update_malware_scan_settings_request() :: #{
%%   <<"EbsSnapshotPreservation">> => list(any()),
%%   <<"ScanResourceCriteria">> => scan_resource_criteria()
%% }
-type update_malware_scan_settings_request() :: #{binary() => any()}.

%% Example:
%% delete_ip_set_request() :: #{}
-type delete_ip_set_request() :: #{}.


%% Example:
%% list_detectors_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_detectors_request() :: #{binary() => any()}.


%% Example:
%% s3_logs_configuration_result() :: #{
%%   <<"Status">> => list(any())
%% }
-type s3_logs_configuration_result() :: #{binary() => any()}.


%% Example:
%% service() :: #{
%%   <<"Action">> => action(),
%%   <<"AdditionalInfo">> => service_additional_info(),
%%   <<"Archived">> => boolean(),
%%   <<"Count">> => integer(),
%%   <<"Detection">> => detection(),
%%   <<"DetectorId">> => string(),
%%   <<"EbsVolumeScanDetails">> => ebs_volume_scan_details(),
%%   <<"EventFirstSeen">> => string(),
%%   <<"EventLastSeen">> => string(),
%%   <<"Evidence">> => evidence(),
%%   <<"FeatureName">> => string(),
%%   <<"MalwareScanDetails">> => malware_scan_details(),
%%   <<"ResourceRole">> => string(),
%%   <<"RuntimeDetails">> => runtime_details(),
%%   <<"ServiceName">> => string(),
%%   <<"UserFeedback">> => string()
%% }
-type service() :: #{binary() => any()}.


%% Example:
%% get_findings_request() :: #{
%%   <<"FindingIds">> := list(string()()),
%%   <<"SortCriteria">> => sort_criteria()
%% }
-type get_findings_request() :: #{binary() => any()}.


%% Example:
%% agent_details() :: #{
%%   <<"Version">> => string()
%% }
-type agent_details() :: #{binary() => any()}.


%% Example:
%% create_publishing_destination_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"DestinationProperties">> := destination_properties(),
%%   <<"DestinationType">> := list(any())
%% }
-type create_publishing_destination_request() :: #{binary() => any()}.


%% Example:
%% account_detail() :: #{
%%   <<"AccountId">> => string(),
%%   <<"Email">> => string()
%% }
-type account_detail() :: #{binary() => any()}.


%% Example:
%% host_path() :: #{
%%   <<"Path">> => string()
%% }
-type host_path() :: #{binary() => any()}.


%% Example:
%% volume_detail() :: #{
%%   <<"DeviceName">> => string(),
%%   <<"EncryptionType">> => string(),
%%   <<"KmsKeyArn">> => string(),
%%   <<"SnapshotArn">> => string(),
%%   <<"VolumeArn">> => string(),
%%   <<"VolumeSizeInGB">> => integer(),
%%   <<"VolumeType">> => string()
%% }
-type volume_detail() :: #{binary() => any()}.


%% Example:
%% public_access() :: #{
%%   <<"EffectivePermission">> => string(),
%%   <<"PermissionConfiguration">> => permission_configuration()
%% }
-type public_access() :: #{binary() => any()}.


%% Example:
%% country() :: #{
%%   <<"CountryCode">> => string(),
%%   <<"CountryName">> => string()
%% }
-type country() :: #{binary() => any()}.


%% Example:
%% total() :: #{
%%   <<"Amount">> => string(),
%%   <<"Unit">> => string()
%% }
-type total() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"TagKeys">> := list(string()())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% detector_feature_configuration() :: #{
%%   <<"AdditionalConfiguration">> => list(detector_additional_configuration()()),
%%   <<"Name">> => list(any()),
%%   <<"Status">> => list(any())
%% }
-type detector_feature_configuration() :: #{binary() => any()}.


%% Example:
%% account_statistics() :: #{
%%   <<"AccountId">> => string(),
%%   <<"LastGeneratedAt">> => non_neg_integer(),
%%   <<"TotalFindings">> => integer()
%% }
-type account_statistics() :: #{binary() => any()}.


%% Example:
%% disable_organization_admin_account_request() :: #{
%%   <<"AdminAccountId">> := string()
%% }
-type disable_organization_admin_account_request() :: #{binary() => any()}.


%% Example:
%% update_ip_set_request() :: #{
%%   <<"Activate">> => boolean(),
%%   <<"Location">> => string(),
%%   <<"Name">> => string()
%% }
-type update_ip_set_request() :: #{binary() => any()}.


%% Example:
%% impersonated_user() :: #{
%%   <<"Groups">> => list(string()()),
%%   <<"Username">> => string()
%% }
-type impersonated_user() :: #{binary() => any()}.

%% Example:
%% delete_publishing_destination_request() :: #{}
-type delete_publishing_destination_request() :: #{}.


%% Example:
%% delete_members_response() :: #{
%%   <<"UnprocessedAccounts">> => list(unprocessed_account()())
%% }
-type delete_members_response() :: #{binary() => any()}.


%% Example:
%% invite_members_request() :: #{
%%   <<"AccountIds">> := list(string()()),
%%   <<"DisableEmailNotification">> => boolean(),
%%   <<"Message">> => string()
%% }
-type invite_members_request() :: #{binary() => any()}.


%% Example:
%% permission_configuration() :: #{
%%   <<"AccountLevelPermissions">> => account_level_permissions(),
%%   <<"BucketLevelPermissions">> => bucket_level_permissions()
%% }
-type permission_configuration() :: #{binary() => any()}.

%% Example:
%% update_threat_intel_set_response() :: #{}
-type update_threat_intel_set_response() :: #{}.


%% Example:
%% network_connection() :: #{
%%   <<"Direction">> => list(any())
%% }
-type network_connection() :: #{binary() => any()}.


%% Example:
%% organization_kubernetes_audit_logs_configuration_result() :: #{
%%   <<"AutoEnable">> => boolean()
%% }
-type organization_kubernetes_audit_logs_configuration_result() :: #{binary() => any()}.


%% Example:
%% member_features_configuration_result() :: #{
%%   <<"AdditionalConfiguration">> => list(member_additional_configuration_result()()),
%%   <<"Name">> => list(any()),
%%   <<"Status">> => list(any()),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type member_features_configuration_result() :: #{binary() => any()}.


%% Example:
%% autonomous_system() :: #{
%%   <<"Name">> => string(),
%%   <<"Number">> => integer()
%% }
-type autonomous_system() :: #{binary() => any()}.


%% Example:
%% kubernetes_audit_logs_configuration_result() :: #{
%%   <<"Status">> => list(any())
%% }
-type kubernetes_audit_logs_configuration_result() :: #{binary() => any()}.


%% Example:
%% list_threat_intel_sets_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ThreatIntelSetIds">> => list(string()())
%% }
-type list_threat_intel_sets_response() :: #{binary() => any()}.


%% Example:
%% observations() :: #{
%%   <<"Text">> => list(string()())
%% }
-type observations() :: #{binary() => any()}.


%% Example:
%% organization_data_source_configurations_result() :: #{
%%   <<"Kubernetes">> => organization_kubernetes_configuration_result(),
%%   <<"MalwareProtection">> => organization_malware_protection_configuration_result(),
%%   <<"S3Logs">> => organization_s3_logs_configuration_result()
%% }
-type organization_data_source_configurations_result() :: #{binary() => any()}.


%% Example:
%% archive_findings_request() :: #{
%%   <<"FindingIds">> := list(string()())
%% }
-type archive_findings_request() :: #{binary() => any()}.


%% Example:
%% scan_ec2_instance_with_findings_result() :: #{
%%   <<"EbsVolumes">> => ebs_volumes_result()
%% }
-type scan_ec2_instance_with_findings_result() :: #{binary() => any()}.

%% Example:
%% disassociate_from_administrator_account_response() :: #{}
-type disassociate_from_administrator_account_response() :: #{}.


%% Example:
%% coverage_resource() :: #{
%%   <<"AccountId">> => string(),
%%   <<"CoverageStatus">> => list(any()),
%%   <<"DetectorId">> => string(),
%%   <<"Issue">> => string(),
%%   <<"ResourceDetails">> => coverage_resource_details(),
%%   <<"ResourceId">> => string(),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type coverage_resource() :: #{binary() => any()}.


%% Example:
%% update_filter_response() :: #{
%%   <<"Name">> => string()
%% }
-type update_filter_response() :: #{binary() => any()}.


%% Example:
%% kubernetes_user_details() :: #{
%%   <<"Groups">> => list(string()()),
%%   <<"ImpersonatedUser">> => impersonated_user(),
%%   <<"SessionName">> => list(string()()),
%%   <<"Uid">> => string(),
%%   <<"Username">> => string()
%% }
-type kubernetes_user_details() :: #{binary() => any()}.


%% Example:
%% threats_detected_item_count() :: #{
%%   <<"Files">> => integer()
%% }
-type threats_detected_item_count() :: #{binary() => any()}.


%% Example:
%% scan_result_details() :: #{
%%   <<"ScanResult">> => list(any())
%% }
-type scan_result_details() :: #{binary() => any()}.


%% Example:
%% resource_v2() :: #{
%%   <<"AccountId">> => string(),
%%   <<"CloudPartition">> => string(),
%%   <<"Data">> => resource_data(),
%%   <<"Name">> => string(),
%%   <<"Region">> => string(),
%%   <<"ResourceType">> => list(any()),
%%   <<"Service">> => string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"Uid">> => string()
%% }
-type resource_v2() :: #{binary() => any()}.


%% Example:
%% describe_organization_configuration_response() :: #{
%%   <<"AutoEnable">> => boolean(),
%%   <<"AutoEnableOrganizationMembers">> => list(any()),
%%   <<"DataSources">> => organization_data_source_configurations_result(),
%%   <<"Features">> => list(organization_feature_configuration_result()()),
%%   <<"MemberAccountLimitReached">> => boolean(),
%%   <<"NextToken">> => string()
%% }
-type describe_organization_configuration_response() :: #{binary() => any()}.


%% Example:
%% start_malware_scan_request() :: #{
%%   <<"ResourceArn">> := string()
%% }
-type start_malware_scan_request() :: #{binary() => any()}.


%% Example:
%% organization_feature_configuration() :: #{
%%   <<"AdditionalConfiguration">> => list(organization_additional_configuration()()),
%%   <<"AutoEnable">> => list(any()),
%%   <<"Name">> => list(any())
%% }
-type organization_feature_configuration() :: #{binary() => any()}.

%% Example:
%% delete_malware_protection_plan_request() :: #{}
-type delete_malware_protection_plan_request() :: #{}.


%% Example:
%% create_detector_response() :: #{
%%   <<"DetectorId">> => string(),
%%   <<"UnprocessedDataSources">> => unprocessed_data_sources_result()
%% }
-type create_detector_response() :: #{binary() => any()}.


%% Example:
%% detector_additional_configuration_result() :: #{
%%   <<"Name">> => list(any()),
%%   <<"Status">> => list(any()),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type detector_additional_configuration_result() :: #{binary() => any()}.


%% Example:
%% unarchive_findings_request() :: #{
%%   <<"FindingIds">> := list(string()())
%% }
-type unarchive_findings_request() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"Type">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"Type">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% dns_request_action() :: #{
%%   <<"Blocked">> => boolean(),
%%   <<"Domain">> => string(),
%%   <<"DomainWithSuffix">> => string(),
%%   <<"Protocol">> => string()
%% }
-type dns_request_action() :: #{binary() => any()}.


%% Example:
%% create_filter_request() :: #{
%%   <<"Action">> => list(any()),
%%   <<"ClientToken">> => string(),
%%   <<"Description">> => string(),
%%   <<"FindingCriteria">> := finding_criteria(),
%%   <<"Name">> := string(),
%%   <<"Rank">> => integer(),
%%   <<"Tags">> => map()
%% }
-type create_filter_request() :: #{binary() => any()}.


%% Example:
%% get_members_request() :: #{
%%   <<"AccountIds">> := list(string()())
%% }
-type get_members_request() :: #{binary() => any()}.


%% Example:
%% service_additional_info() :: #{
%%   <<"Type">> => string(),
%%   <<"Value">> => string()
%% }
-type service_additional_info() :: #{binary() => any()}.

%% Example:
%% delete_publishing_destination_response() :: #{}
-type delete_publishing_destination_response() :: #{}.


%% Example:
%% create_members_request() :: #{
%%   <<"AccountDetails">> := list(account_detail()())
%% }
-type create_members_request() :: #{binary() => any()}.

%% Example:
%% update_detector_response() :: #{}
-type update_detector_response() :: #{}.


%% Example:
%% list_ip_sets_response() :: #{
%%   <<"IpSetIds">> => list(string()()),
%%   <<"NextToken">> => string()
%% }
-type list_ip_sets_response() :: #{binary() => any()}.


%% Example:
%% usage_account_result() :: #{
%%   <<"AccountId">> => string(),
%%   <<"Total">> => total()
%% }
-type usage_account_result() :: #{binary() => any()}.


%% Example:
%% get_organization_statistics_response() :: #{
%%   <<"OrganizationDetails">> => organization_details()
%% }
-type get_organization_statistics_response() :: #{binary() => any()}.


%% Example:
%% container_instance_details() :: #{
%%   <<"CompatibleContainerInstances">> => float(),
%%   <<"CoveredContainerInstances">> => float()
%% }
-type container_instance_details() :: #{binary() => any()}.


%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.


%% Example:
%% organization_scan_ec2_instance_with_findings() :: #{
%%   <<"EbsVolumes">> => organization_ebs_volumes()
%% }
-type organization_scan_ec2_instance_with_findings() :: #{binary() => any()}.


%% Example:
%% s3_bucket() :: #{
%%   <<"AccountPublicAccess">> => public_access_configuration(),
%%   <<"BucketPublicAccess">> => public_access_configuration(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"EffectivePermission">> => string(),
%%   <<"EncryptionKeyArn">> => string(),
%%   <<"EncryptionType">> => string(),
%%   <<"OwnerId">> => string(),
%%   <<"PublicReadAccess">> => list(any()),
%%   <<"PublicWriteAccess">> => list(any()),
%%   <<"S3ObjectUids">> => list(string()())
%% }
-type s3_bucket() :: #{binary() => any()}.


%% Example:
%% master() :: #{
%%   <<"AccountId">> => string(),
%%   <<"InvitationId">> => string(),
%%   <<"InvitedAt">> => string(),
%%   <<"RelationshipStatus">> => string()
%% }
-type master() :: #{binary() => any()}.


%% Example:
%% create_detector_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"DataSources">> => data_source_configurations(),
%%   <<"Enable">> := boolean(),
%%   <<"Features">> => list(detector_feature_configuration()()),
%%   <<"FindingPublishingFrequency">> => list(any()),
%%   <<"Tags">> => map()
%% }
-type create_detector_request() :: #{binary() => any()}.


%% Example:
%% remote_account_details() :: #{
%%   <<"AccountId">> => string(),
%%   <<"Affiliated">> => boolean()
%% }
-type remote_account_details() :: #{binary() => any()}.


%% Example:
%% disassociate_members_request() :: #{
%%   <<"AccountIds">> := list(string()())
%% }
-type disassociate_members_request() :: #{binary() => any()}.


%% Example:
%% get_findings_response() :: #{
%%   <<"Findings">> => list(finding()())
%% }
-type get_findings_response() :: #{binary() => any()}.


%% Example:
%% get_threat_intel_set_response() :: #{
%%   <<"Format">> => list(any()),
%%   <<"Location">> => string(),
%%   <<"Name">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Tags">> => map()
%% }
-type get_threat_intel_set_response() :: #{binary() => any()}.


%% Example:
%% organization_kubernetes_audit_logs_configuration() :: #{
%%   <<"AutoEnable">> => boolean()
%% }
-type organization_kubernetes_audit_logs_configuration() :: #{binary() => any()}.


%% Example:
%% coverage_ec2_instance_details() :: #{
%%   <<"AgentDetails">> => agent_details(),
%%   <<"ClusterArn">> => string(),
%%   <<"InstanceId">> => string(),
%%   <<"InstanceType">> => string(),
%%   <<"ManagementType">> => list(any())
%% }
-type coverage_ec2_instance_details() :: #{binary() => any()}.


%% Example:
%% update_threat_intel_set_request() :: #{
%%   <<"Activate">> => boolean(),
%%   <<"Location">> => string(),
%%   <<"Name">> => string()
%% }
-type update_threat_intel_set_request() :: #{binary() => any()}.


%% Example:
%% bucket_policy() :: #{
%%   <<"AllowsPublicReadAccess">> => boolean(),
%%   <<"AllowsPublicWriteAccess">> => boolean()
%% }
-type bucket_policy() :: #{binary() => any()}.


%% Example:
%% access_key() :: #{
%%   <<"PrincipalId">> => string(),
%%   <<"UserName">> => string(),
%%   <<"UserType">> => string()
%% }
-type access_key() :: #{binary() => any()}.

%% Example:
%% get_malware_protection_plan_request() :: #{}
-type get_malware_protection_plan_request() :: #{}.


%% Example:
%% flow_logs_configuration_result() :: #{
%%   <<"Status">> => list(any())
%% }
-type flow_logs_configuration_result() :: #{binary() => any()}.


%% Example:
%% delete_members_request() :: #{
%%   <<"AccountIds">> := list(string()())
%% }
-type delete_members_request() :: #{binary() => any()}.


%% Example:
%% invite_members_response() :: #{
%%   <<"UnprocessedAccounts">> => list(unprocessed_account()())
%% }
-type invite_members_response() :: #{binary() => any()}.


%% Example:
%% get_malware_scan_settings_response() :: #{
%%   <<"EbsSnapshotPreservation">> => list(any()),
%%   <<"ScanResourceCriteria">> => scan_resource_criteria()
%% }
-type get_malware_scan_settings_response() :: #{binary() => any()}.


%% Example:
%% member_features_configuration() :: #{
%%   <<"AdditionalConfiguration">> => list(member_additional_configuration()()),
%%   <<"Name">> => list(any()),
%%   <<"Status">> => list(any())
%% }
-type member_features_configuration() :: #{binary() => any()}.


%% Example:
%% describe_malware_scans_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Scans">> => list(scan()())
%% }
-type describe_malware_scans_response() :: #{binary() => any()}.


%% Example:
%% ec2_network_interface() :: #{
%%   <<"Ipv6Addresses">> => list(string()()),
%%   <<"PrivateIpAddresses">> => list(private_ip_address_details()()),
%%   <<"PublicIp">> => string(),
%%   <<"SecurityGroups">> => list(security_group()()),
%%   <<"SubNetId">> => string(),
%%   <<"VpcId">> => string()
%% }
-type ec2_network_interface() :: #{binary() => any()}.


%% Example:
%% ecs_task_details() :: #{
%%   <<"Arn">> => string(),
%%   <<"Containers">> => list(container()()),
%%   <<"DefinitionArn">> => string(),
%%   <<"Group">> => string(),
%%   <<"LaunchType">> => string(),
%%   <<"StartedAt">> => non_neg_integer(),
%%   <<"StartedBy">> => string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"TaskCreatedAt">> => non_neg_integer(),
%%   <<"Version">> => string(),
%%   <<"Volumes">> => list(volume()())
%% }
-type ecs_task_details() :: #{binary() => any()}.


%% Example:
%% signal() :: #{
%%   <<"ActorIds">> => list(string()()),
%%   <<"Count">> => integer(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"EndpointIds">> => list(string()()),
%%   <<"FirstSeenAt">> => non_neg_integer(),
%%   <<"LastSeenAt">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"ResourceUids">> => list(string()()),
%%   <<"Severity">> => float(),
%%   <<"SignalIndicators">> => list(indicator()()),
%%   <<"Type">> => list(any()),
%%   <<"Uid">> => string(),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type signal() :: #{binary() => any()}.


%% Example:
%% create_malware_protection_plan_request() :: #{
%%   <<"Actions">> => malware_protection_plan_actions(),
%%   <<"ClientToken">> => string(),
%%   <<"ProtectedResource">> := create_protected_resource(),
%%   <<"Role">> := string(),
%%   <<"Tags">> => map()
%% }
-type create_malware_protection_plan_request() :: #{binary() => any()}.


%% Example:
%% account() :: #{
%%   <<"Name">> => string(),
%%   <<"Uid">> => string()
%% }
-type account() :: #{binary() => any()}.


%% Example:
%% s3_logs_configuration() :: #{
%%   <<"Enable">> => boolean()
%% }
-type s3_logs_configuration() :: #{binary() => any()}.


%% Example:
%% create_publishing_destination_response() :: #{
%%   <<"DestinationId">> => string()
%% }
-type create_publishing_destination_response() :: #{binary() => any()}.

%% Example:
%% delete_detector_response() :: #{}
-type delete_detector_response() :: #{}.

%% Example:
%% describe_publishing_destination_request() :: #{}
-type describe_publishing_destination_request() :: #{}.


%% Example:
%% vpc_config() :: #{
%%   <<"SecurityGroups">> => list(security_group()()),
%%   <<"SubnetIds">> => list(string()()),
%%   <<"VpcId">> => string()
%% }
-type vpc_config() :: #{binary() => any()}.


%% Example:
%% coverage_statistics() :: #{
%%   <<"CountByCoverageStatus">> => map(),
%%   <<"CountByResourceType">> => map()
%% }
-type coverage_statistics() :: #{binary() => any()}.


%% Example:
%% finding() :: #{
%%   <<"AccountId">> => string(),
%%   <<"Arn">> => string(),
%%   <<"AssociatedAttackSequenceArn">> => string(),
%%   <<"Confidence">> => float(),
%%   <<"CreatedAt">> => string(),
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"Partition">> => string(),
%%   <<"Region">> => string(),
%%   <<"Resource">> => resource(),
%%   <<"SchemaVersion">> => string(),
%%   <<"Service">> => service(),
%%   <<"Severity">> => float(),
%%   <<"Title">> => string(),
%%   <<"Type">> => string(),
%%   <<"UpdatedAt">> => string()
%% }
-type finding() :: #{binary() => any()}.


%% Example:
%% coverage_eks_cluster_details() :: #{
%%   <<"AddonDetails">> => addon_details(),
%%   <<"ClusterName">> => string(),
%%   <<"CompatibleNodes">> => float(),
%%   <<"CoveredNodes">> => float(),
%%   <<"ManagementType">> => list(any())
%% }
-type coverage_eks_cluster_details() :: #{binary() => any()}.


%% Example:
%% coverage_resource_details() :: #{
%%   <<"Ec2InstanceDetails">> => coverage_ec2_instance_details(),
%%   <<"EcsClusterDetails">> => coverage_ecs_cluster_details(),
%%   <<"EksClusterDetails">> => coverage_eks_cluster_details(),
%%   <<"ResourceType">> => list(any())
%% }
-type coverage_resource_details() :: #{binary() => any()}.


%% Example:
%% volume_mount() :: #{
%%   <<"MountPath">> => string(),
%%   <<"Name">> => string()
%% }
-type volume_mount() :: #{binary() => any()}.


%% Example:
%% list_malware_protection_plans_request() :: #{
%%   <<"NextToken">> => string()
%% }
-type list_malware_protection_plans_request() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% list_findings_request() :: #{
%%   <<"FindingCriteria">> => finding_criteria(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SortCriteria">> => sort_criteria()
%% }
-type list_findings_request() :: #{binary() => any()}.


%% Example:
%% kubernetes_configuration() :: #{
%%   <<"AuditLogs">> => kubernetes_audit_logs_configuration()
%% }
-type kubernetes_configuration() :: #{binary() => any()}.


%% Example:
%% list_publishing_destinations_response() :: #{
%%   <<"Destinations">> => list(destination()()),
%%   <<"NextToken">> => string()
%% }
-type list_publishing_destinations_response() :: #{binary() => any()}.


%% Example:
%% network_endpoint() :: #{
%%   <<"AutonomousSystem">> => autonomous_system(),
%%   <<"Connection">> => network_connection(),
%%   <<"Domain">> => string(),
%%   <<"Id">> => string(),
%%   <<"Ip">> => string(),
%%   <<"Location">> => network_geo_location(),
%%   <<"Port">> => integer()
%% }
-type network_endpoint() :: #{binary() => any()}.


%% Example:
%% member_additional_configuration() :: #{
%%   <<"Name">> => list(any()),
%%   <<"Status">> => list(any())
%% }
-type member_additional_configuration() :: #{binary() => any()}.

%% Example:
%% get_filter_request() :: #{}
-type get_filter_request() :: #{}.

%% Example:
%% get_threat_intel_set_request() :: #{}
-type get_threat_intel_set_request() :: #{}.


%% Example:
%% trigger_details() :: #{
%%   <<"Description">> => string(),
%%   <<"GuardDutyFindingId">> => string()
%% }
-type trigger_details() :: #{binary() => any()}.


%% Example:
%% update_malware_protection_plan_request() :: #{
%%   <<"Actions">> => malware_protection_plan_actions(),
%%   <<"ProtectedResource">> => update_protected_resource(),
%%   <<"Role">> => string()
%% }
-type update_malware_protection_plan_request() :: #{binary() => any()}.

%% Example:
%% delete_filter_response() :: #{}
-type delete_filter_response() :: #{}.


%% Example:
%% disassociate_members_response() :: #{
%%   <<"UnprocessedAccounts">> => list(unprocessed_account()())
%% }
-type disassociate_members_response() :: #{binary() => any()}.


%% Example:
%% security_group() :: #{
%%   <<"GroupId">> => string(),
%%   <<"GroupName">> => string()
%% }
-type security_group() :: #{binary() => any()}.


%% Example:
%% list_coverage_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Resources">> => list(coverage_resource()())
%% }
-type list_coverage_response() :: #{binary() => any()}.


%% Example:
%% condition() :: #{
%%   <<"Eq">> => list(string()()),
%%   <<"Equals">> => list(string()()),
%%   <<"GreaterThan">> => float(),
%%   <<"GreaterThanOrEqual">> => float(),
%%   <<"Gt">> => integer(),
%%   <<"Gte">> => integer(),
%%   <<"LessThan">> => float(),
%%   <<"LessThanOrEqual">> => float(),
%%   <<"Lt">> => integer(),
%%   <<"Lte">> => integer(),
%%   <<"Neq">> => list(string()()),
%%   <<"NotEquals">> => list(string()())
%% }
-type condition() :: #{binary() => any()}.


%% Example:
%% list_threat_intel_sets_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_threat_intel_sets_request() :: #{binary() => any()}.

%% Example:
%% update_malware_scan_settings_response() :: #{}
-type update_malware_scan_settings_response() :: #{}.

%% Example:
%% update_organization_configuration_response() :: #{}
-type update_organization_configuration_response() :: #{}.


%% Example:
%% lineage_object() :: #{
%%   <<"Euid">> => integer(),
%%   <<"ExecutablePath">> => string(),
%%   <<"Name">> => string(),
%%   <<"NamespacePid">> => integer(),
%%   <<"ParentUuid">> => string(),
%%   <<"Pid">> => integer(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"UserId">> => integer(),
%%   <<"Uuid">> => string()
%% }
-type lineage_object() :: #{binary() => any()}.


%% Example:
%% ec2_instance() :: #{
%%   <<"AvailabilityZone">> => string(),
%%   <<"Ec2NetworkInterfaceUids">> => list(string()()),
%%   <<"IamInstanceProfile">> => iam_instance_profile(),
%%   <<"ImageDescription">> => string(),
%%   <<"InstanceState">> => string(),
%%   <<"InstanceType">> => string(),
%%   <<"OutpostArn">> => string(),
%%   <<"Platform">> => string(),
%%   <<"ProductCodes">> => list(product_code()())
%% }
-type ec2_instance() :: #{binary() => any()}.


%% Example:
%% detection() :: #{
%%   <<"Anomaly">> => anomaly(),
%%   <<"Sequence">> => sequence()
%% }
-type detection() :: #{binary() => any()}.

%% Example:
%% update_findings_feedback_response() :: #{}
-type update_findings_feedback_response() :: #{}.


%% Example:
%% session() :: #{
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"Issuer">> => string(),
%%   <<"MfaStatus">> => list(any()),
%%   <<"Uid">> => string()
%% }
-type session() :: #{binary() => any()}.


%% Example:
%% ebs_volumes_result() :: #{
%%   <<"Reason">> => string(),
%%   <<"Status">> => list(any())
%% }
-type ebs_volumes_result() :: #{binary() => any()}.


%% Example:
%% product_code() :: #{
%%   <<"Code">> => string(),
%%   <<"ProductType">> => string()
%% }
-type product_code() :: #{binary() => any()}.


%% Example:
%% malware_scan_details() :: #{
%%   <<"Threats">> => list(threat()())
%% }
-type malware_scan_details() :: #{binary() => any()}.

%% Example:
%% accept_invitation_response() :: #{}
-type accept_invitation_response() :: #{}.


%% Example:
%% resource_statistics() :: #{
%%   <<"AccountId">> => string(),
%%   <<"LastGeneratedAt">> => non_neg_integer(),
%%   <<"ResourceId">> => string(),
%%   <<"ResourceType">> => string(),
%%   <<"TotalFindings">> => integer()
%% }
-type resource_statistics() :: #{binary() => any()}.


%% Example:
%% create_sample_findings_request() :: #{
%%   <<"FindingTypes">> => list(string()())
%% }
-type create_sample_findings_request() :: #{binary() => any()}.


%% Example:
%% decline_invitations_request() :: #{
%%   <<"AccountIds">> := list(string()())
%% }
-type decline_invitations_request() :: #{binary() => any()}.


%% Example:
%% organization_s3_logs_configuration_result() :: #{
%%   <<"AutoEnable">> => boolean()
%% }
-type organization_s3_logs_configuration_result() :: #{binary() => any()}.


%% Example:
%% account_free_trial_info() :: #{
%%   <<"AccountId">> => string(),
%%   <<"DataSources">> => data_sources_free_trial(),
%%   <<"Features">> => list(free_trial_feature_configuration_result()())
%% }
-type account_free_trial_info() :: #{binary() => any()}.


%% Example:
%% get_master_account_response() :: #{
%%   <<"Master">> => master()
%% }
-type get_master_account_response() :: #{binary() => any()}.


%% Example:
%% unprocessed_data_sources_result() :: #{
%%   <<"MalwareProtection">> => malware_protection_configuration_result()
%% }
-type unprocessed_data_sources_result() :: #{binary() => any()}.


%% Example:
%% get_member_detectors_response() :: #{
%%   <<"MemberDataSourceConfigurations">> => list(member_data_source_configuration()()),
%%   <<"UnprocessedAccounts">> => list(unprocessed_account()())
%% }
-type get_member_detectors_response() :: #{binary() => any()}.


%% Example:
%% finding_type_statistics() :: #{
%%   <<"FindingType">> => string(),
%%   <<"LastGeneratedAt">> => non_neg_integer(),
%%   <<"TotalFindings">> => integer()
%% }
-type finding_type_statistics() :: #{binary() => any()}.


%% Example:
%% aws_api_call_action() :: #{
%%   <<"AffectedResources">> => map(),
%%   <<"Api">> => string(),
%%   <<"CallerType">> => string(),
%%   <<"DomainDetails">> => domain_details(),
%%   <<"ErrorCode">> => string(),
%%   <<"RemoteAccountDetails">> => remote_account_details(),
%%   <<"RemoteIpDetails">> => remote_ip_details(),
%%   <<"ServiceName">> => string(),
%%   <<"UserAgent">> => string()
%% }
-type aws_api_call_action() :: #{binary() => any()}.


%% Example:
%% kubernetes_role_details() :: #{
%%   <<"Kind">> => string(),
%%   <<"Name">> => string(),
%%   <<"Uid">> => string()
%% }
-type kubernetes_role_details() :: #{binary() => any()}.


%% Example:
%% eks_cluster_details() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Status">> => string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"VpcId">> => string()
%% }
-type eks_cluster_details() :: #{binary() => any()}.


%% Example:
%% organization_malware_protection_configuration_result() :: #{
%%   <<"ScanEc2InstanceWithFindings">> => organization_scan_ec2_instance_with_findings_result()
%% }
-type organization_malware_protection_configuration_result() :: #{binary() => any()}.


%% Example:
%% delete_invitations_request() :: #{
%%   <<"AccountIds">> := list(string()())
%% }
-type delete_invitations_request() :: #{binary() => any()}.


%% Example:
%% organization_ebs_volumes() :: #{
%%   <<"AutoEnable">> => boolean()
%% }
-type organization_ebs_volumes() :: #{binary() => any()}.


%% Example:
%% get_detector_response() :: #{
%%   <<"CreatedAt">> => string(),
%%   <<"DataSources">> => data_source_configurations_result(),
%%   <<"Features">> => list(detector_feature_configuration_result()()),
%%   <<"FindingPublishingFrequency">> => list(any()),
%%   <<"ServiceRole">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Tags">> => map(),
%%   <<"UpdatedAt">> => string()
%% }
-type get_detector_response() :: #{binary() => any()}.


%% Example:
%% update_filter_request() :: #{
%%   <<"Action">> => list(any()),
%%   <<"Description">> => string(),
%%   <<"FindingCriteria">> => finding_criteria(),
%%   <<"Rank">> => integer()
%% }
-type update_filter_request() :: #{binary() => any()}.


%% Example:
%% kubernetes_details() :: #{
%%   <<"KubernetesUserDetails">> => kubernetes_user_details(),
%%   <<"KubernetesWorkloadDetails">> => kubernetes_workload_details()
%% }
-type kubernetes_details() :: #{binary() => any()}.


%% Example:
%% anomaly_object() :: #{
%%   <<"Observations">> => observations(),
%%   <<"ProfileSubtype">> => list(any()),
%%   <<"ProfileType">> => list(any())
%% }
-type anomaly_object() :: #{binary() => any()}.


%% Example:
%% scan_file_path() :: #{
%%   <<"FileName">> => string(),
%%   <<"FilePath">> => string(),
%%   <<"Hash">> => string(),
%%   <<"VolumeArn">> => string()
%% }
-type scan_file_path() :: #{binary() => any()}.


%% Example:
%% organization_kubernetes_configuration_result() :: #{
%%   <<"AuditLogs">> => organization_kubernetes_audit_logs_configuration_result()
%% }
-type organization_kubernetes_configuration_result() :: #{binary() => any()}.

%% Example:
%% get_detector_request() :: #{}
-type get_detector_request() :: #{}.


%% Example:
%% malware_protection_plan_actions() :: #{
%%   <<"Tagging">> => malware_protection_plan_tagging_action()
%% }
-type malware_protection_plan_actions() :: #{binary() => any()}.


%% Example:
%% anomaly() :: #{
%%   <<"Profiles">> => map(),
%%   <<"Unusual">> => anomaly_unusual()
%% }
-type anomaly() :: #{binary() => any()}.


%% Example:
%% organization_additional_configuration_result() :: #{
%%   <<"AutoEnable">> => list(any()),
%%   <<"Name">> => list(any())
%% }
-type organization_additional_configuration_result() :: #{binary() => any()}.


%% Example:
%% update_organization_configuration_request() :: #{
%%   <<"AutoEnable">> => boolean(),
%%   <<"AutoEnableOrganizationMembers">> => list(any()),
%%   <<"DataSources">> => organization_data_source_configurations(),
%%   <<"Features">> => list(organization_feature_configuration()())
%% }
-type update_organization_configuration_request() :: #{binary() => any()}.


%% Example:
%% enable_organization_admin_account_request() :: #{
%%   <<"AdminAccountId">> := string()
%% }
-type enable_organization_admin_account_request() :: #{binary() => any()}.


%% Example:
%% addon_details() :: #{
%%   <<"AddonStatus">> => string(),
%%   <<"AddonVersion">> => string()
%% }
-type addon_details() :: #{binary() => any()}.


%% Example:
%% kubernetes_configuration_result() :: #{
%%   <<"AuditLogs">> => kubernetes_audit_logs_configuration_result()
%% }
-type kubernetes_configuration_result() :: #{binary() => any()}.


%% Example:
%% geo_location() :: #{
%%   <<"Lat">> => float(),
%%   <<"Lon">> => float()
%% }
-type geo_location() :: #{binary() => any()}.


%% Example:
%% action() :: #{
%%   <<"ActionType">> => string(),
%%   <<"AwsApiCallAction">> => aws_api_call_action(),
%%   <<"DnsRequestAction">> => dns_request_action(),
%%   <<"KubernetesApiCallAction">> => kubernetes_api_call_action(),
%%   <<"KubernetesPermissionCheckedDetails">> => kubernetes_permission_checked_details(),
%%   <<"KubernetesRoleBindingDetails">> => kubernetes_role_binding_details(),
%%   <<"KubernetesRoleDetails">> => kubernetes_role_details(),
%%   <<"NetworkConnectionAction">> => network_connection_action(),
%%   <<"PortProbeAction">> => port_probe_action(),
%%   <<"RdsLoginAttemptAction">> => rds_login_attempt_action()
%% }
-type action() :: #{binary() => any()}.


%% Example:
%% threat_intelligence_detail() :: #{
%%   <<"ThreatFileSha256">> => string(),
%%   <<"ThreatListName">> => string(),
%%   <<"ThreatNames">> => list(string()())
%% }
-type threat_intelligence_detail() :: #{binary() => any()}.


%% Example:
%% create_threat_intel_set_request() :: #{
%%   <<"Activate">> := boolean(),
%%   <<"ClientToken">> => string(),
%%   <<"Format">> := list(any()),
%%   <<"Location">> := string(),
%%   <<"Name">> := string(),
%%   <<"Tags">> => map()
%% }
-type create_threat_intel_set_request() :: #{binary() => any()}.


%% Example:
%% login_attribute() :: #{
%%   <<"Application">> => string(),
%%   <<"FailedLoginAttempts">> => integer(),
%%   <<"SuccessfulLoginAttempts">> => integer(),
%%   <<"User">> => string()
%% }
-type login_attribute() :: #{binary() => any()}.


%% Example:
%% malware_protection_plan_summary() :: #{
%%   <<"MalwareProtectionPlanId">> => string()
%% }
-type malware_protection_plan_summary() :: #{binary() => any()}.


%% Example:
%% update_member_detectors_request() :: #{
%%   <<"AccountIds">> := list(string()()),
%%   <<"DataSources">> => data_source_configurations(),
%%   <<"Features">> => list(member_features_configuration()())
%% }
-type update_member_detectors_request() :: #{binary() => any()}.


%% Example:
%% member_additional_configuration_result() :: #{
%%   <<"Name">> => list(any()),
%%   <<"Status">> => list(any()),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type member_additional_configuration_result() :: #{binary() => any()}.


%% Example:
%% delete_invitations_response() :: #{
%%   <<"UnprocessedAccounts">> => list(unprocessed_account()())
%% }
-type delete_invitations_response() :: #{binary() => any()}.


%% Example:
%% port_probe_action() :: #{
%%   <<"Blocked">> => boolean(),
%%   <<"PortProbeDetails">> => list(port_probe_detail()())
%% }
-type port_probe_action() :: #{binary() => any()}.


%% Example:
%% list_organization_admin_accounts_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_organization_admin_accounts_request() :: #{binary() => any()}.


%% Example:
%% sort_criteria() :: #{
%%   <<"AttributeName">> => string(),
%%   <<"OrderBy">> => list(any())
%% }
-type sort_criteria() :: #{binary() => any()}.


%% Example:
%% threat() :: #{
%%   <<"ItemPaths">> => list(item_path()()),
%%   <<"Name">> => string(),
%%   <<"Source">> => string()
%% }
-type threat() :: #{binary() => any()}.


%% Example:
%% create_ip_set_request() :: #{
%%   <<"Activate">> := boolean(),
%%   <<"ClientToken">> => string(),
%%   <<"Format">> := list(any()),
%%   <<"Location">> := string(),
%%   <<"Name">> := string(),
%%   <<"Tags">> => map()
%% }
-type create_ip_set_request() :: #{binary() => any()}.


%% Example:
%% volume() :: #{
%%   <<"HostPath">> => host_path(),
%%   <<"Name">> => string()
%% }
-type volume() :: #{binary() => any()}.


%% Example:
%% create_protected_resource() :: #{
%%   <<"S3Bucket">> => create_s3_bucket_resource()
%% }
-type create_protected_resource() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"Type">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% usage_top_account_result() :: #{
%%   <<"AccountId">> => string(),
%%   <<"Total">> => total()
%% }
-type usage_top_account_result() :: #{binary() => any()}.

%% Example:
%% get_invitations_count_request() :: #{}
-type get_invitations_count_request() :: #{}.


%% Example:
%% list_malware_protection_plans_response() :: #{
%%   <<"MalwareProtectionPlans">> => list(malware_protection_plan_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_malware_protection_plans_response() :: #{binary() => any()}.


%% Example:
%% get_ip_set_response() :: #{
%%   <<"Format">> => list(any()),
%%   <<"Location">> => string(),
%%   <<"Name">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Tags">> => map()
%% }
-type get_ip_set_response() :: #{binary() => any()}.


%% Example:
%% city() :: #{
%%   <<"CityName">> => string()
%% }
-type city() :: #{binary() => any()}.


%% Example:
%% item_path() :: #{
%%   <<"Hash">> => string(),
%%   <<"NestedItemPath">> => string()
%% }
-type item_path() :: #{binary() => any()}.


%% Example:
%% accept_invitation_request() :: #{
%%   <<"InvitationId">> := string(),
%%   <<"MasterId">> := string()
%% }
-type accept_invitation_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% severity_statistics() :: #{
%%   <<"LastGeneratedAt">> => non_neg_integer(),
%%   <<"Severity">> => float(),
%%   <<"TotalFindings">> => integer()
%% }
-type severity_statistics() :: #{binary() => any()}.


%% Example:
%% anomaly_unusual() :: #{
%%   <<"Behavior">> => map()
%% }
-type anomaly_unusual() :: #{binary() => any()}.


%% Example:
%% list_members_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"OnlyAssociated">> => string()
%% }
-type list_members_request() :: #{binary() => any()}.


%% Example:
%% fargate_details() :: #{
%%   <<"Issues">> => list(string()()),
%%   <<"ManagementType">> => list(any())
%% }
-type fargate_details() :: #{binary() => any()}.


%% Example:
%% malware_protection_plan_status_reason() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string()
%% }
-type malware_protection_plan_status_reason() :: #{binary() => any()}.


%% Example:
%% list_members_response() :: #{
%%   <<"Members">> => list(member()()),
%%   <<"NextToken">> => string()
%% }
-type list_members_response() :: #{binary() => any()}.


%% Example:
%% block_public_access() :: #{
%%   <<"BlockPublicAcls">> => boolean(),
%%   <<"BlockPublicPolicy">> => boolean(),
%%   <<"IgnorePublicAcls">> => boolean(),
%%   <<"RestrictPublicBuckets">> => boolean()
%% }
-type block_public_access() :: #{binary() => any()}.


%% Example:
%% list_detectors_response() :: #{
%%   <<"DetectorIds">> => list(string()()),
%%   <<"NextToken">> => string()
%% }
-type list_detectors_response() :: #{binary() => any()}.


%% Example:
%% free_trial_feature_configuration_result() :: #{
%%   <<"FreeTrialDaysRemaining">> => integer(),
%%   <<"Name">> => list(any())
%% }
-type free_trial_feature_configuration_result() :: #{binary() => any()}.


%% Example:
%% organization_feature_statistics() :: #{
%%   <<"AdditionalConfiguration">> => list(organization_feature_statistics_additional_configuration()()),
%%   <<"EnabledAccountsCount">> => integer(),
%%   <<"Name">> => list(any())
%% }
-type organization_feature_statistics() :: #{binary() => any()}.


%% Example:
%% local_ip_details() :: #{
%%   <<"IpAddressV4">> => string(),
%%   <<"IpAddressV6">> => string()
%% }
-type local_ip_details() :: #{binary() => any()}.


%% Example:
%% get_remaining_free_trial_days_request() :: #{
%%   <<"AccountIds">> => list(string()())
%% }
-type get_remaining_free_trial_days_request() :: #{binary() => any()}.


%% Example:
%% scanned_item_count() :: #{
%%   <<"Files">> => integer(),
%%   <<"TotalGb">> => integer(),
%%   <<"Volumes">> => integer()
%% }
-type scanned_item_count() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.

%% Example:
%% get_master_account_request() :: #{}
-type get_master_account_request() :: #{}.


%% Example:
%% organization_feature_configuration_result() :: #{
%%   <<"AdditionalConfiguration">> => list(organization_additional_configuration_result()()),
%%   <<"AutoEnable">> => list(any()),
%%   <<"Name">> => list(any())
%% }
-type organization_feature_configuration_result() :: #{binary() => any()}.


%% Example:
%% list_coverage_request() :: #{
%%   <<"FilterCriteria">> => coverage_filter_criteria(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SortCriteria">> => coverage_sort_criteria()
%% }
-type list_coverage_request() :: #{binary() => any()}.


%% Example:
%% get_remaining_free_trial_days_response() :: #{
%%   <<"Accounts">> => list(account_free_trial_info()()),
%%   <<"UnprocessedAccounts">> => list(unprocessed_account()())
%% }
-type get_remaining_free_trial_days_response() :: #{binary() => any()}.


%% Example:
%% destination() :: #{
%%   <<"DestinationId">> => string(),
%%   <<"DestinationType">> => list(any()),
%%   <<"Status">> => list(any())
%% }
-type destination() :: #{binary() => any()}.


%% Example:
%% internal_server_error_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"Type">> => string()
%% }
-type internal_server_error_exception() :: #{binary() => any()}.


%% Example:
%% private_ip_address_details() :: #{
%%   <<"PrivateDnsName">> => string(),
%%   <<"PrivateIpAddress">> => string()
%% }
-type private_ip_address_details() :: #{binary() => any()}.


%% Example:
%% get_invitations_count_response() :: #{
%%   <<"InvitationsCount">> => integer()
%% }
-type get_invitations_count_response() :: #{binary() => any()}.


%% Example:
%% runtime_context() :: #{
%%   <<"AddressFamily">> => string(),
%%   <<"CommandLineExample">> => string(),
%%   <<"FileSystemType">> => string(),
%%   <<"Flags">> => list(string()()),
%%   <<"IanaProtocolNumber">> => integer(),
%%   <<"LdPreloadValue">> => string(),
%%   <<"LibraryPath">> => string(),
%%   <<"MemoryRegions">> => list(string()()),
%%   <<"ModifiedAt">> => non_neg_integer(),
%%   <<"ModifyingProcess">> => process_details(),
%%   <<"ModuleFilePath">> => string(),
%%   <<"ModuleName">> => string(),
%%   <<"ModuleSha256">> => string(),
%%   <<"MountSource">> => string(),
%%   <<"MountTarget">> => string(),
%%   <<"ReleaseAgentPath">> => string(),
%%   <<"RuncBinaryPath">> => string(),
%%   <<"ScriptPath">> => string(),
%%   <<"ServiceName">> => string(),
%%   <<"ShellHistoryFilePath">> => string(),
%%   <<"SocketPath">> => string(),
%%   <<"TargetProcess">> => process_details(),
%%   <<"ThreatFilePath">> => string(),
%%   <<"ToolCategory">> => string(),
%%   <<"ToolName">> => string()
%% }
-type runtime_context() :: #{binary() => any()}.


%% Example:
%% evidence() :: #{
%%   <<"ThreatIntelligenceDetails">> => list(threat_intelligence_detail()())
%% }
-type evidence() :: #{binary() => any()}.


%% Example:
%% scan_threat_name() :: #{
%%   <<"FilePaths">> => list(scan_file_path()()),
%%   <<"ItemCount">> => integer(),
%%   <<"Name">> => string(),
%%   <<"Severity">> => string()
%% }
-type scan_threat_name() :: #{binary() => any()}.


%% Example:
%% usage_resource_result() :: #{
%%   <<"Resource">> => string(),
%%   <<"Total">> => total()
%% }
-type usage_resource_result() :: #{binary() => any()}.


%% Example:
%% coverage_filter_criteria() :: #{
%%   <<"FilterCriterion">> => list(coverage_filter_criterion()())
%% }
-type coverage_filter_criteria() :: #{binary() => any()}.


%% Example:
%% create_threat_intel_set_response() :: #{
%%   <<"ThreatIntelSetId">> => string()
%% }
-type create_threat_intel_set_response() :: #{binary() => any()}.


%% Example:
%% user() :: #{
%%   <<"Account">> => account(),
%%   <<"CredentialUid">> => string(),
%%   <<"Name">> => string(),
%%   <<"Type">> => string(),
%%   <<"Uid">> => string()
%% }
-type user() :: #{binary() => any()}.


%% Example:
%% coverage_ecs_cluster_details() :: #{
%%   <<"ClusterName">> => string(),
%%   <<"ContainerInstanceDetails">> => container_instance_details(),
%%   <<"FargateDetails">> => fargate_details()
%% }
-type coverage_ecs_cluster_details() :: #{binary() => any()}.


%% Example:
%% list_invitations_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_invitations_request() :: #{binary() => any()}.


%% Example:
%% finding_criteria() :: #{
%%   <<"Criterion">> => map()
%% }
-type finding_criteria() :: #{binary() => any()}.


%% Example:
%% scan_detections() :: #{
%%   <<"HighestSeverityThreatDetails">> => highest_severity_threat_details(),
%%   <<"ScannedItemCount">> => scanned_item_count(),
%%   <<"ThreatDetectedByName">> => threat_detected_by_name(),
%%   <<"ThreatsDetectedItemCount">> => threats_detected_item_count()
%% }
-type scan_detections() :: #{binary() => any()}.


%% Example:
%% kubernetes_permission_checked_details() :: #{
%%   <<"Allowed">> => boolean(),
%%   <<"Namespace">> => string(),
%%   <<"Resource">> => string(),
%%   <<"Verb">> => string()
%% }
-type kubernetes_permission_checked_details() :: #{binary() => any()}.


%% Example:
%% start_monitoring_members_request() :: #{
%%   <<"AccountIds">> := list(string()())
%% }
-type start_monitoring_members_request() :: #{binary() => any()}.

%% Example:
%% create_sample_findings_response() :: #{}
-type create_sample_findings_response() :: #{}.


%% Example:
%% update_findings_feedback_request() :: #{
%%   <<"Comments">> => string(),
%%   <<"Feedback">> := list(any()),
%%   <<"FindingIds">> := list(string()())
%% }
-type update_findings_feedback_request() :: #{binary() => any()}.


%% Example:
%% create_s3_bucket_resource() :: #{
%%   <<"BucketName">> => string(),
%%   <<"ObjectPrefixes">> => list(string()())
%% }
-type create_s3_bucket_resource() :: #{binary() => any()}.


%% Example:
%% rds_login_attempt_action() :: #{
%%   <<"LoginAttributes">> => list(login_attribute()()),
%%   <<"RemoteIpDetails">> => remote_ip_details()
%% }
-type rds_login_attempt_action() :: #{binary() => any()}.


%% Example:
%% actor() :: #{
%%   <<"Id">> => string(),
%%   <<"Session">> => session(),
%%   <<"User">> => user()
%% }
-type actor() :: #{binary() => any()}.


%% Example:
%% member() :: #{
%%   <<"AccountId">> => string(),
%%   <<"AdministratorId">> => string(),
%%   <<"DetectorId">> => string(),
%%   <<"Email">> => string(),
%%   <<"InvitedAt">> => string(),
%%   <<"MasterId">> => string(),
%%   <<"RelationshipStatus">> => string(),
%%   <<"UpdatedAt">> => string()
%% }
-type member() :: #{binary() => any()}.

%% Example:
%% get_ip_set_request() :: #{}
-type get_ip_set_request() :: #{}.


%% Example:
%% usage_feature_result() :: #{
%%   <<"Feature">> => list(any()),
%%   <<"Total">> => total()
%% }
-type usage_feature_result() :: #{binary() => any()}.

%% Example:
%% enable_organization_admin_account_response() :: #{}
-type enable_organization_admin_account_response() :: #{}.


%% Example:
%% finding_statistics() :: #{
%%   <<"CountBySeverity">> => map(),
%%   <<"GroupedByAccount">> => list(account_statistics()()),
%%   <<"GroupedByDate">> => list(date_statistics()()),
%%   <<"GroupedByFindingType">> => list(finding_type_statistics()()),
%%   <<"GroupedByResource">> => list(resource_statistics()()),
%%   <<"GroupedBySeverity">> => list(severity_statistics()())
%% }
-type finding_statistics() :: #{binary() => any()}.


%% Example:
%% organization_scan_ec2_instance_with_findings_result() :: #{
%%   <<"EbsVolumes">> => organization_ebs_volumes_result()
%% }
-type organization_scan_ec2_instance_with_findings_result() :: #{binary() => any()}.


%% Example:
%% ecs_cluster_details() :: #{
%%   <<"ActiveServicesCount">> => integer(),
%%   <<"Arn">> => string(),
%%   <<"Name">> => string(),
%%   <<"RegisteredContainerInstancesCount">> => integer(),
%%   <<"RunningTasksCount">> => integer(),
%%   <<"Status">> => string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"TaskDetails">> => ecs_task_details()
%% }
-type ecs_cluster_details() :: #{binary() => any()}.


%% Example:
%% scan() :: #{
%%   <<"AccountId">> => string(),
%%   <<"AdminDetectorId">> => string(),
%%   <<"AttachedVolumes">> => list(volume_detail()()),
%%   <<"DetectorId">> => string(),
%%   <<"FailureReason">> => string(),
%%   <<"FileCount">> => float(),
%%   <<"ResourceDetails">> => resource_details(),
%%   <<"ScanEndTime">> => non_neg_integer(),
%%   <<"ScanId">> => string(),
%%   <<"ScanResultDetails">> => scan_result_details(),
%%   <<"ScanStartTime">> => non_neg_integer(),
%%   <<"ScanStatus">> => list(any()),
%%   <<"ScanType">> => list(any()),
%%   <<"TotalBytes">> => float(),
%%   <<"TriggerDetails">> => trigger_details()
%% }
-type scan() :: #{binary() => any()}.


%% Example:
%% bad_request_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"Type">> => string()
%% }
-type bad_request_exception() :: #{binary() => any()}.

%% Example:
%% get_malware_scan_settings_request() :: #{}
-type get_malware_scan_settings_request() :: #{}.


%% Example:
%% organization_statistics() :: #{
%%   <<"ActiveAccountsCount">> => integer(),
%%   <<"CountByFeature">> => list(organization_feature_statistics()()),
%%   <<"EnabledAccountsCount">> => integer(),
%%   <<"MemberAccountsCount">> => integer(),
%%   <<"TotalAccountsCount">> => integer()
%% }
-type organization_statistics() :: #{binary() => any()}.


%% Example:
%% domain_details() :: #{
%%   <<"Domain">> => string()
%% }
-type domain_details() :: #{binary() => any()}.


%% Example:
%% kubernetes_role_binding_details() :: #{
%%   <<"Kind">> => string(),
%%   <<"Name">> => string(),
%%   <<"RoleRefKind">> => string(),
%%   <<"RoleRefName">> => string(),
%%   <<"Uid">> => string()
%% }
-type kubernetes_role_binding_details() :: #{binary() => any()}.


%% Example:
%% malware_protection_data_source_free_trial() :: #{
%%   <<"ScanEc2InstanceWithFindings">> => data_source_free_trial()
%% }
-type malware_protection_data_source_free_trial() :: #{binary() => any()}.


%% Example:
%% ebs_volume_scan_details() :: #{
%%   <<"ScanCompletedAt">> => non_neg_integer(),
%%   <<"ScanDetections">> => scan_detections(),
%%   <<"ScanId">> => string(),
%%   <<"ScanStartedAt">> => non_neg_integer(),
%%   <<"ScanType">> => list(any()),
%%   <<"Sources">> => list(string()()),
%%   <<"TriggerFindingId">> => string()
%% }
-type ebs_volume_scan_details() :: #{binary() => any()}.


%% Example:
%% organization_data_source_configurations() :: #{
%%   <<"Kubernetes">> => organization_kubernetes_configuration(),
%%   <<"MalwareProtection">> => organization_malware_protection_configuration(),
%%   <<"S3Logs">> => organization_s3_logs_configuration()
%% }
-type organization_data_source_configurations() :: #{binary() => any()}.


%% Example:
%% unprocessed_account() :: #{
%%   <<"AccountId">> => string(),
%%   <<"Result">> => string()
%% }
-type unprocessed_account() :: #{binary() => any()}.


%% Example:
%% update_member_detectors_response() :: #{
%%   <<"UnprocessedAccounts">> => list(unprocessed_account()())
%% }
-type update_member_detectors_response() :: #{binary() => any()}.


%% Example:
%% resource_details() :: #{
%%   <<"InstanceArn">> => string()
%% }
-type resource_details() :: #{binary() => any()}.


%% Example:
%% dns_logs_configuration_result() :: #{
%%   <<"Status">> => list(any())
%% }
-type dns_logs_configuration_result() :: #{binary() => any()}.


%% Example:
%% update_publishing_destination_request() :: #{
%%   <<"DestinationProperties">> => destination_properties()
%% }
-type update_publishing_destination_request() :: #{binary() => any()}.

%% Example:
%% accept_administrator_invitation_response() :: #{}
-type accept_administrator_invitation_response() :: #{}.


%% Example:
%% create_ip_set_response() :: #{
%%   <<"IpSetId">> => string()
%% }
-type create_ip_set_response() :: #{binary() => any()}.


%% Example:
%% stop_monitoring_members_request() :: #{
%%   <<"AccountIds">> := list(string()())
%% }
-type stop_monitoring_members_request() :: #{binary() => any()}.


%% Example:
%% organization_feature_statistics_additional_configuration() :: #{
%%   <<"EnabledAccountsCount">> => integer(),
%%   <<"Name">> => list(any())
%% }
-type organization_feature_statistics_additional_configuration() :: #{binary() => any()}.


%% Example:
%% rds_db_instance_details() :: #{
%%   <<"DbClusterIdentifier">> => string(),
%%   <<"DbInstanceArn">> => string(),
%%   <<"DbInstanceIdentifier">> => string(),
%%   <<"Engine">> => string(),
%%   <<"EngineVersion">> => string(),
%%   <<"Tags">> => list(tag()())
%% }
-type rds_db_instance_details() :: #{binary() => any()}.


%% Example:
%% scan_condition() :: #{
%%   <<"MapEquals">> => list(scan_condition_pair()())
%% }
-type scan_condition() :: #{binary() => any()}.


%% Example:
%% threat_detected_by_name() :: #{
%%   <<"ItemCount">> => integer(),
%%   <<"Shortened">> => boolean(),
%%   <<"ThreatNames">> => list(scan_threat_name()()),
%%   <<"UniqueThreatNameCount">> => integer()
%% }
-type threat_detected_by_name() :: #{binary() => any()}.


%% Example:
%% bucket_level_permissions() :: #{
%%   <<"AccessControlList">> => access_control_list(),
%%   <<"BlockPublicAccess">> => block_public_access(),
%%   <<"BucketPolicy">> => bucket_policy()
%% }
-type bucket_level_permissions() :: #{binary() => any()}.


%% Example:
%% list_organization_admin_accounts_response() :: #{
%%   <<"AdminAccounts">> => list(admin_account()()),
%%   <<"NextToken">> => string()
%% }
-type list_organization_admin_accounts_response() :: #{binary() => any()}.


%% Example:
%% usage_top_accounts_result() :: #{
%%   <<"Accounts">> => list(usage_top_account_result()()),
%%   <<"Feature">> => list(any())
%% }
-type usage_top_accounts_result() :: #{binary() => any()}.


%% Example:
%% port_probe_detail() :: #{
%%   <<"LocalIpDetails">> => local_ip_details(),
%%   <<"LocalPortDetails">> => local_port_details(),
%%   <<"RemoteIpDetails">> => remote_ip_details()
%% }
-type port_probe_detail() :: #{binary() => any()}.


%% Example:
%% iam_instance_profile() :: #{
%%   <<"Arn">> => string(),
%%   <<"Id">> => string()
%% }
-type iam_instance_profile() :: #{binary() => any()}.


%% Example:
%% stop_monitoring_members_response() :: #{
%%   <<"UnprocessedAccounts">> => list(unprocessed_account()())
%% }
-type stop_monitoring_members_response() :: #{binary() => any()}.

%% Example:
%% disassociate_from_administrator_account_request() :: #{}
-type disassociate_from_administrator_account_request() :: #{}.


%% Example:
%% update_detector_request() :: #{
%%   <<"DataSources">> => data_source_configurations(),
%%   <<"Enable">> => boolean(),
%%   <<"Features">> => list(detector_feature_configuration()()),
%%   <<"FindingPublishingFrequency">> => list(any())
%% }
-type update_detector_request() :: #{binary() => any()}.


%% Example:
%% security_context() :: #{
%%   <<"AllowPrivilegeEscalation">> => boolean(),
%%   <<"Privileged">> => boolean()
%% }
-type security_context() :: #{binary() => any()}.


%% Example:
%% default_server_side_encryption() :: #{
%%   <<"EncryptionType">> => string(),
%%   <<"KmsMasterKeyArn">> => string()
%% }
-type default_server_side_encryption() :: #{binary() => any()}.


%% Example:
%% date_statistics() :: #{
%%   <<"Date">> => non_neg_integer(),
%%   <<"LastGeneratedAt">> => non_neg_integer(),
%%   <<"Severity">> => float(),
%%   <<"TotalFindings">> => integer()
%% }
-type date_statistics() :: #{binary() => any()}.


%% Example:
%% access_control_list() :: #{
%%   <<"AllowsPublicReadAccess">> => boolean(),
%%   <<"AllowsPublicWriteAccess">> => boolean()
%% }
-type access_control_list() :: #{binary() => any()}.


%% Example:
%% data_source_configurations() :: #{
%%   <<"Kubernetes">> => kubernetes_configuration(),
%%   <<"MalwareProtection">> => malware_protection_configuration(),
%%   <<"S3Logs">> => s3_logs_configuration()
%% }
-type data_source_configurations() :: #{binary() => any()}.


%% Example:
%% get_administrator_account_response() :: #{
%%   <<"Administrator">> => administrator()
%% }
-type get_administrator_account_response() :: #{binary() => any()}.


%% Example:
%% data_source_free_trial() :: #{
%%   <<"FreeTrialDaysRemaining">> => integer()
%% }
-type data_source_free_trial() :: #{binary() => any()}.


%% Example:
%% detector_additional_configuration() :: #{
%%   <<"Name">> => list(any()),
%%   <<"Status">> => list(any())
%% }
-type detector_additional_configuration() :: #{binary() => any()}.


%% Example:
%% list_filters_response() :: #{
%%   <<"FilterNames">> => list(string()()),
%%   <<"NextToken">> => string()
%% }
-type list_filters_response() :: #{binary() => any()}.


%% Example:
%% start_malware_scan_response() :: #{
%%   <<"ScanId">> => string()
%% }
-type start_malware_scan_response() :: #{binary() => any()}.

%% Example:
%% unarchive_findings_response() :: #{}
-type unarchive_findings_response() :: #{}.


%% Example:
%% create_members_response() :: #{
%%   <<"UnprocessedAccounts">> => list(unprocessed_account()())
%% }
-type create_members_response() :: #{binary() => any()}.


%% Example:
%% s3_object_detail() :: #{
%%   <<"ETag">> => string(),
%%   <<"Hash">> => string(),
%%   <<"Key">> => string(),
%%   <<"ObjectArn">> => string(),
%%   <<"VersionId">> => string()
%% }
-type s3_object_detail() :: #{binary() => any()}.


%% Example:
%% access_key_details() :: #{
%%   <<"AccessKeyId">> => string(),
%%   <<"PrincipalId">> => string(),
%%   <<"UserName">> => string(),
%%   <<"UserType">> => string()
%% }
-type access_key_details() :: #{binary() => any()}.

%% Example:
%% delete_filter_request() :: #{}
-type delete_filter_request() :: #{}.


%% Example:
%% owner() :: #{
%%   <<"Id">> => string()
%% }
-type owner() :: #{binary() => any()}.


%% Example:
%% get_coverage_statistics_request() :: #{
%%   <<"FilterCriteria">> => coverage_filter_criteria(),
%%   <<"StatisticsType">> := list(list(any())())
%% }
-type get_coverage_statistics_request() :: #{binary() => any()}.

%% Example:
%% delete_ip_set_response() :: #{}
-type delete_ip_set_response() :: #{}.


%% Example:
%% runtime_details() :: #{
%%   <<"Context">> => runtime_context(),
%%   <<"Process">> => process_details()
%% }
-type runtime_details() :: #{binary() => any()}.


%% Example:
%% usage_criteria() :: #{
%%   <<"AccountIds">> => list(string()()),
%%   <<"DataSources">> => list(list(any())()),
%%   <<"Features">> => list(list(any())()),
%%   <<"Resources">> => list(string()())
%% }
-type usage_criteria() :: #{binary() => any()}.


%% Example:
%% get_usage_statistics_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"UsageStatistics">> => usage_statistics()
%% }
-type get_usage_statistics_response() :: #{binary() => any()}.


%% Example:
%% list_filters_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_filters_request() :: #{binary() => any()}.


%% Example:
%% update_s3_bucket_resource() :: #{
%%   <<"ObjectPrefixes">> => list(string()())
%% }
-type update_s3_bucket_resource() :: #{binary() => any()}.

%% Example:
%% delete_detector_request() :: #{}
-type delete_detector_request() :: #{}.


%% Example:
%% list_invitations_response() :: #{
%%   <<"Invitations">> => list(invitation()()),
%%   <<"NextToken">> => string()
%% }
-type list_invitations_response() :: #{binary() => any()}.


%% Example:
%% resource() :: #{
%%   <<"AccessKeyDetails">> => access_key_details(),
%%   <<"ContainerDetails">> => container(),
%%   <<"EbsVolumeDetails">> => ebs_volume_details(),
%%   <<"EcsClusterDetails">> => ecs_cluster_details(),
%%   <<"EksClusterDetails">> => eks_cluster_details(),
%%   <<"InstanceDetails">> => instance_details(),
%%   <<"KubernetesDetails">> => kubernetes_details(),
%%   <<"LambdaDetails">> => lambda_details(),
%%   <<"RdsDbInstanceDetails">> => rds_db_instance_details(),
%%   <<"RdsDbUserDetails">> => rds_db_user_details(),
%%   <<"RdsLimitlessDbDetails">> => rds_limitless_db_details(),
%%   <<"ResourceType">> => string(),
%%   <<"S3BucketDetails">> => list(s3_bucket_detail()())
%% }
-type resource() :: #{binary() => any()}.


%% Example:
%% indicator() :: #{
%%   <<"Key">> => list(any()),
%%   <<"Title">> => string(),
%%   <<"Values">> => list(string()())
%% }
-type indicator() :: #{binary() => any()}.


%% Example:
%% organization_details() :: #{
%%   <<"OrganizationStatistics">> => organization_statistics(),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type organization_details() :: #{binary() => any()}.

-type accept_administrator_invitation_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type accept_invitation_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type archive_findings_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type create_detector_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type create_filter_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type create_ip_set_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type create_malware_protection_plan_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    access_denied_exception() | 
    conflict_exception().

-type create_members_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type create_publishing_destination_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type create_sample_findings_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type create_threat_intel_set_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type decline_invitations_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type delete_detector_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type delete_filter_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type delete_invitations_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type delete_ip_set_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type delete_malware_protection_plan_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type delete_members_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type delete_publishing_destination_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type delete_threat_intel_set_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type describe_malware_scans_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type describe_organization_configuration_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type describe_publishing_destination_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type disable_organization_admin_account_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type disassociate_from_administrator_account_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type disassociate_from_master_account_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type disassociate_members_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type enable_organization_admin_account_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type get_administrator_account_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type get_coverage_statistics_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type get_detector_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type get_filter_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type get_findings_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type get_findings_statistics_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type get_invitations_count_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type get_ip_set_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type get_malware_protection_plan_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_malware_scan_settings_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type get_master_account_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type get_member_detectors_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type get_members_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type get_organization_statistics_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type get_remaining_free_trial_days_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type get_threat_intel_set_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type get_usage_statistics_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type invite_members_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type list_coverage_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type list_detectors_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type list_filters_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type list_findings_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type list_invitations_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type list_ip_sets_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type list_malware_protection_plans_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    access_denied_exception().

-type list_members_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type list_organization_admin_accounts_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type list_publishing_destinations_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type list_tags_for_resource_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    access_denied_exception().

-type list_threat_intel_sets_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type start_malware_scan_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    conflict_exception().

-type start_monitoring_members_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type stop_monitoring_members_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type tag_resource_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    access_denied_exception().

-type unarchive_findings_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type untag_resource_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    access_denied_exception().

-type update_detector_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type update_filter_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type update_findings_feedback_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type update_ip_set_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type update_malware_protection_plan_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type update_malware_scan_settings_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type update_member_detectors_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type update_organization_configuration_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type update_publishing_destination_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

-type update_threat_intel_set_errors() ::
    bad_request_exception() | 
    internal_server_error_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Accepts the invitation to be a member account and get monitored by a
%% GuardDuty
%% administrator account that sent the invitation.
-spec accept_administrator_invitation(aws_client:aws_client(), binary() | list(), accept_administrator_invitation_request()) ->
    {ok, accept_administrator_invitation_response(), tuple()} |
    {error, any()} |
    {error, accept_administrator_invitation_errors(), tuple()}.
accept_administrator_invitation(Client, DetectorId, Input) ->
    accept_administrator_invitation(Client, DetectorId, Input, []).

-spec accept_administrator_invitation(aws_client:aws_client(), binary() | list(), accept_administrator_invitation_request(), proplists:proplist()) ->
    {ok, accept_administrator_invitation_response(), tuple()} |
    {error, any()} |
    {error, accept_administrator_invitation_errors(), tuple()}.
accept_administrator_invitation(Client, DetectorId, Input0, Options0) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/administrator"],
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

%% @doc Accepts the invitation to be monitored by a GuardDuty administrator
%% account.
-spec accept_invitation(aws_client:aws_client(), binary() | list(), accept_invitation_request()) ->
    {ok, accept_invitation_response(), tuple()} |
    {error, any()} |
    {error, accept_invitation_errors(), tuple()}.
accept_invitation(Client, DetectorId, Input) ->
    accept_invitation(Client, DetectorId, Input, []).

-spec accept_invitation(aws_client:aws_client(), binary() | list(), accept_invitation_request(), proplists:proplist()) ->
    {ok, accept_invitation_response(), tuple()} |
    {error, any()} |
    {error, accept_invitation_errors(), tuple()}.
accept_invitation(Client, DetectorId, Input0, Options0) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/master"],
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

%% @doc Archives GuardDuty findings that are specified by the list of finding
%% IDs.
%%
%% Only the administrator account can archive findings. Member accounts
%% don't have
%% permission to archive findings from their accounts.
-spec archive_findings(aws_client:aws_client(), binary() | list(), archive_findings_request()) ->
    {ok, archive_findings_response(), tuple()} |
    {error, any()} |
    {error, archive_findings_errors(), tuple()}.
archive_findings(Client, DetectorId, Input) ->
    archive_findings(Client, DetectorId, Input, []).

-spec archive_findings(aws_client:aws_client(), binary() | list(), archive_findings_request(), proplists:proplist()) ->
    {ok, archive_findings_response(), tuple()} |
    {error, any()} |
    {error, archive_findings_errors(), tuple()}.
archive_findings(Client, DetectorId, Input0, Options0) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/findings/archive"],
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

%% @doc Creates a single GuardDuty detector.
%%
%% A detector is a resource that represents the
%% GuardDuty service. To start using GuardDuty, you must create a detector in
%% each Region where
%% you enable the service. You can have only one detector per account per
%% Region. All data
%% sources are enabled in a new detector by default.
%%
%% When you don't specify any `features', with an
%% exception to `RUNTIME_MONITORING', all the optional features are
%% enabled by default.
%%
%% When you specify some of the `features', any feature that is not
%% specified in the
%% API call gets enabled by default, with an exception to
%% `RUNTIME_MONITORING'.
%%
%% Specifying both EKS Runtime Monitoring (`EKS_RUNTIME_MONITORING')
%% and Runtime Monitoring (`RUNTIME_MONITORING') will cause an error.
%% You can add only one of these two features because Runtime Monitoring
%% already includes the
%% threat detection for Amazon EKS resources. For more information, see
%% Runtime Monitoring:
%% https://docs.aws.amazon.com/guardduty/latest/ug/runtime-monitoring.html.
%%
%% There might be regional differences because some data sources might not be
%% available in all the Amazon Web Services Regions where GuardDuty is
%% presently supported. For more
%% information, see Regions and endpoints:
%% https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html.
-spec create_detector(aws_client:aws_client(), create_detector_request()) ->
    {ok, create_detector_response(), tuple()} |
    {error, any()} |
    {error, create_detector_errors(), tuple()}.
create_detector(Client, Input) ->
    create_detector(Client, Input, []).

-spec create_detector(aws_client:aws_client(), create_detector_request(), proplists:proplist()) ->
    {ok, create_detector_response(), tuple()} |
    {error, any()} |
    {error, create_detector_errors(), tuple()}.
create_detector(Client, Input0, Options0) ->
    Method = post,
    Path = ["/detector"],
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

%% @doc Creates a filter using the specified finding criteria.
%%
%% The maximum number of saved filters
%% per Amazon Web Services account per Region is 100. For more information,
%% see Quotas for GuardDuty:
%% https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_limits.html.
-spec create_filter(aws_client:aws_client(), binary() | list(), create_filter_request()) ->
    {ok, create_filter_response(), tuple()} |
    {error, any()} |
    {error, create_filter_errors(), tuple()}.
create_filter(Client, DetectorId, Input) ->
    create_filter(Client, DetectorId, Input, []).

-spec create_filter(aws_client:aws_client(), binary() | list(), create_filter_request(), proplists:proplist()) ->
    {ok, create_filter_response(), tuple()} |
    {error, any()} |
    {error, create_filter_errors(), tuple()}.
create_filter(Client, DetectorId, Input0, Options0) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/filter"],
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

%% @doc Creates a new IPSet, which is called a trusted IP list in the console
%% user interface.
%%
%% An
%% IPSet is a list of IP addresses that are trusted for secure communication
%% with Amazon Web Services
%% infrastructure and applications. GuardDuty doesn't generate findings
%% for IP addresses that are
%% included in IPSets. Only users from the administrator account can use this
%% operation.
-spec create_ip_set(aws_client:aws_client(), binary() | list(), create_ip_set_request()) ->
    {ok, create_ip_set_response(), tuple()} |
    {error, any()} |
    {error, create_ip_set_errors(), tuple()}.
create_ip_set(Client, DetectorId, Input) ->
    create_ip_set(Client, DetectorId, Input, []).

-spec create_ip_set(aws_client:aws_client(), binary() | list(), create_ip_set_request(), proplists:proplist()) ->
    {ok, create_ip_set_response(), tuple()} |
    {error, any()} |
    {error, create_ip_set_errors(), tuple()}.
create_ip_set(Client, DetectorId, Input0, Options0) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/ipset"],
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

%% @doc Creates a new Malware Protection plan for the protected resource.
%%
%% When you create a Malware Protection plan, the Amazon Web Services service
%% terms for GuardDuty Malware
%% Protection apply. For more information, see Amazon Web Services service
%% terms for GuardDuty Malware Protection:
%% http://aws.amazon.com/service-terms/#87._Amazon_GuardDuty.
-spec create_malware_protection_plan(aws_client:aws_client(), create_malware_protection_plan_request()) ->
    {ok, create_malware_protection_plan_response(), tuple()} |
    {error, any()} |
    {error, create_malware_protection_plan_errors(), tuple()}.
create_malware_protection_plan(Client, Input) ->
    create_malware_protection_plan(Client, Input, []).

-spec create_malware_protection_plan(aws_client:aws_client(), create_malware_protection_plan_request(), proplists:proplist()) ->
    {ok, create_malware_protection_plan_response(), tuple()} |
    {error, any()} |
    {error, create_malware_protection_plan_errors(), tuple()}.
create_malware_protection_plan(Client, Input0, Options0) ->
    Method = post,
    Path = ["/malware-protection-plan"],
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

%% @doc Creates member accounts of the current Amazon Web Services account by
%% specifying a list of Amazon Web Services account
%% IDs.
%%
%% This step is a prerequisite for managing the associated member accounts
%% either by
%% invitation or through an organization.
%%
%% As a delegated administrator, using `CreateMembers' will enable
%% GuardDuty in
%% the added member accounts, with the exception of the
%% organization delegated administrator account. A delegated administrator
%% must enable GuardDuty
%% prior to being added as a member.
%%
%% When you use CreateMembers as an Organizations delegated
%% administrator, GuardDuty applies your organization's auto-enable
%% settings to the member
%% accounts in this request, irrespective of the accounts being new or
%% existing members. For
%% more information about the existing auto-enable settings for your
%% organization, see
%% DescribeOrganizationConfiguration:
%% https://docs.aws.amazon.com/guardduty/latest/APIReference/API_DescribeOrganizationConfiguration.html.
%%
%% If you disassociate a member account that was added by invitation, the
%% member account details
%% obtained from this API, including the associated email addresses, will be
%% retained.
%% This is done so that the delegated administrator can invoke the
%% InviteMembers:
%% https://docs.aws.amazon.com/guardduty/latest/APIReference/API_InviteMembers.html
%% API without the need to invoke the CreateMembers API again. To
%% remove the details associated with a member account, the delegated
%% administrator must invoke the
%% DeleteMembers:
%% https://docs.aws.amazon.com/guardduty/latest/APIReference/API_DeleteMembers.html
%% API.
%%
%% When the member accounts added through Organizations are later
%% disassociated, you (administrator)
%% can't invite them by calling the InviteMembers API. You can create an
%% association with these
%% member accounts again only by calling the CreateMembers API.
-spec create_members(aws_client:aws_client(), binary() | list(), create_members_request()) ->
    {ok, create_members_response(), tuple()} |
    {error, any()} |
    {error, create_members_errors(), tuple()}.
create_members(Client, DetectorId, Input) ->
    create_members(Client, DetectorId, Input, []).

-spec create_members(aws_client:aws_client(), binary() | list(), create_members_request(), proplists:proplist()) ->
    {ok, create_members_response(), tuple()} |
    {error, any()} |
    {error, create_members_errors(), tuple()}.
create_members(Client, DetectorId, Input0, Options0) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/member"],
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

%% @doc Creates a publishing destination where you can export your GuardDuty
%% findings.
%%
%% Before you start exporting the
%% findings, the destination resource must exist.
-spec create_publishing_destination(aws_client:aws_client(), binary() | list(), create_publishing_destination_request()) ->
    {ok, create_publishing_destination_response(), tuple()} |
    {error, any()} |
    {error, create_publishing_destination_errors(), tuple()}.
create_publishing_destination(Client, DetectorId, Input) ->
    create_publishing_destination(Client, DetectorId, Input, []).

-spec create_publishing_destination(aws_client:aws_client(), binary() | list(), create_publishing_destination_request(), proplists:proplist()) ->
    {ok, create_publishing_destination_response(), tuple()} |
    {error, any()} |
    {error, create_publishing_destination_errors(), tuple()}.
create_publishing_destination(Client, DetectorId, Input0, Options0) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/publishingDestination"],
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

%% @doc Generates sample findings of types specified by the list of finding
%% types.
%%
%% If 'NULL' is
%% specified for `findingTypes', the API generates sample findings of all
%% supported
%% finding types.
-spec create_sample_findings(aws_client:aws_client(), binary() | list(), create_sample_findings_request()) ->
    {ok, create_sample_findings_response(), tuple()} |
    {error, any()} |
    {error, create_sample_findings_errors(), tuple()}.
create_sample_findings(Client, DetectorId, Input) ->
    create_sample_findings(Client, DetectorId, Input, []).

-spec create_sample_findings(aws_client:aws_client(), binary() | list(), create_sample_findings_request(), proplists:proplist()) ->
    {ok, create_sample_findings_response(), tuple()} |
    {error, any()} |
    {error, create_sample_findings_errors(), tuple()}.
create_sample_findings(Client, DetectorId, Input0, Options0) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/findings/create"],
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

%% @doc Creates a new ThreatIntelSet.
%%
%% ThreatIntelSets consist of known malicious IP addresses.
%% GuardDuty generates findings based on ThreatIntelSets. Only users of the
%% administrator
%% account can use this operation.
-spec create_threat_intel_set(aws_client:aws_client(), binary() | list(), create_threat_intel_set_request()) ->
    {ok, create_threat_intel_set_response(), tuple()} |
    {error, any()} |
    {error, create_threat_intel_set_errors(), tuple()}.
create_threat_intel_set(Client, DetectorId, Input) ->
    create_threat_intel_set(Client, DetectorId, Input, []).

-spec create_threat_intel_set(aws_client:aws_client(), binary() | list(), create_threat_intel_set_request(), proplists:proplist()) ->
    {ok, create_threat_intel_set_response(), tuple()} |
    {error, any()} |
    {error, create_threat_intel_set_errors(), tuple()}.
create_threat_intel_set(Client, DetectorId, Input0, Options0) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/threatintelset"],
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

%% @doc Declines invitations sent to the current member account by Amazon Web
%% Services accounts specified by
%% their account IDs.
-spec decline_invitations(aws_client:aws_client(), decline_invitations_request()) ->
    {ok, decline_invitations_response(), tuple()} |
    {error, any()} |
    {error, decline_invitations_errors(), tuple()}.
decline_invitations(Client, Input) ->
    decline_invitations(Client, Input, []).

-spec decline_invitations(aws_client:aws_client(), decline_invitations_request(), proplists:proplist()) ->
    {ok, decline_invitations_response(), tuple()} |
    {error, any()} |
    {error, decline_invitations_errors(), tuple()}.
decline_invitations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/invitation/decline"],
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

%% @doc Deletes an Amazon GuardDuty detector that is specified by the
%% detector ID.
-spec delete_detector(aws_client:aws_client(), binary() | list(), delete_detector_request()) ->
    {ok, delete_detector_response(), tuple()} |
    {error, any()} |
    {error, delete_detector_errors(), tuple()}.
delete_detector(Client, DetectorId, Input) ->
    delete_detector(Client, DetectorId, Input, []).

-spec delete_detector(aws_client:aws_client(), binary() | list(), delete_detector_request(), proplists:proplist()) ->
    {ok, delete_detector_response(), tuple()} |
    {error, any()} |
    {error, delete_detector_errors(), tuple()}.
delete_detector(Client, DetectorId, Input0, Options0) ->
    Method = delete,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), ""],
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

%% @doc Deletes the filter specified by the filter name.
-spec delete_filter(aws_client:aws_client(), binary() | list(), binary() | list(), delete_filter_request()) ->
    {ok, delete_filter_response(), tuple()} |
    {error, any()} |
    {error, delete_filter_errors(), tuple()}.
delete_filter(Client, DetectorId, FilterName, Input) ->
    delete_filter(Client, DetectorId, FilterName, Input, []).

-spec delete_filter(aws_client:aws_client(), binary() | list(), binary() | list(), delete_filter_request(), proplists:proplist()) ->
    {ok, delete_filter_response(), tuple()} |
    {error, any()} |
    {error, delete_filter_errors(), tuple()}.
delete_filter(Client, DetectorId, FilterName, Input0, Options0) ->
    Method = delete,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/filter/", aws_util:encode_uri(FilterName), ""],
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

%% @doc Deletes invitations sent to the current member account by Amazon Web
%% Services accounts specified by
%% their account IDs.
-spec delete_invitations(aws_client:aws_client(), delete_invitations_request()) ->
    {ok, delete_invitations_response(), tuple()} |
    {error, any()} |
    {error, delete_invitations_errors(), tuple()}.
delete_invitations(Client, Input) ->
    delete_invitations(Client, Input, []).

-spec delete_invitations(aws_client:aws_client(), delete_invitations_request(), proplists:proplist()) ->
    {ok, delete_invitations_response(), tuple()} |
    {error, any()} |
    {error, delete_invitations_errors(), tuple()}.
delete_invitations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/invitation/delete"],
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

%% @doc Deletes the IPSet specified by the `ipSetId'.
%%
%% IPSets are called trusted IP
%% lists in the console user interface.
-spec delete_ip_set(aws_client:aws_client(), binary() | list(), binary() | list(), delete_ip_set_request()) ->
    {ok, delete_ip_set_response(), tuple()} |
    {error, any()} |
    {error, delete_ip_set_errors(), tuple()}.
delete_ip_set(Client, DetectorId, IpSetId, Input) ->
    delete_ip_set(Client, DetectorId, IpSetId, Input, []).

-spec delete_ip_set(aws_client:aws_client(), binary() | list(), binary() | list(), delete_ip_set_request(), proplists:proplist()) ->
    {ok, delete_ip_set_response(), tuple()} |
    {error, any()} |
    {error, delete_ip_set_errors(), tuple()}.
delete_ip_set(Client, DetectorId, IpSetId, Input0, Options0) ->
    Method = delete,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/ipset/", aws_util:encode_uri(IpSetId), ""],
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

%% @doc Deletes the Malware Protection plan ID associated with the Malware
%% Protection plan resource.
%%
%% Use this API only when you no longer want to protect the resource
%% associated with this
%% Malware Protection plan ID.
-spec delete_malware_protection_plan(aws_client:aws_client(), binary() | list(), delete_malware_protection_plan_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_malware_protection_plan_errors(), tuple()}.
delete_malware_protection_plan(Client, MalwareProtectionPlanId, Input) ->
    delete_malware_protection_plan(Client, MalwareProtectionPlanId, Input, []).

-spec delete_malware_protection_plan(aws_client:aws_client(), binary() | list(), delete_malware_protection_plan_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_malware_protection_plan_errors(), tuple()}.
delete_malware_protection_plan(Client, MalwareProtectionPlanId, Input0, Options0) ->
    Method = delete,
    Path = ["/malware-protection-plan/", aws_util:encode_uri(MalwareProtectionPlanId), ""],
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

%% @doc Deletes GuardDuty member accounts (to the current GuardDuty
%% administrator account)
%% specified by the account IDs.
%%
%% With `autoEnableOrganizationMembers' configuration for your
%% organization set to
%% `ALL', you'll receive an error if you attempt to disable GuardDuty
%% for a member
%% account in your organization.
-spec delete_members(aws_client:aws_client(), binary() | list(), delete_members_request()) ->
    {ok, delete_members_response(), tuple()} |
    {error, any()} |
    {error, delete_members_errors(), tuple()}.
delete_members(Client, DetectorId, Input) ->
    delete_members(Client, DetectorId, Input, []).

-spec delete_members(aws_client:aws_client(), binary() | list(), delete_members_request(), proplists:proplist()) ->
    {ok, delete_members_response(), tuple()} |
    {error, any()} |
    {error, delete_members_errors(), tuple()}.
delete_members(Client, DetectorId, Input0, Options0) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/member/delete"],
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

%% @doc Deletes the publishing definition with the specified
%% `destinationId'.
-spec delete_publishing_destination(aws_client:aws_client(), binary() | list(), binary() | list(), delete_publishing_destination_request()) ->
    {ok, delete_publishing_destination_response(), tuple()} |
    {error, any()} |
    {error, delete_publishing_destination_errors(), tuple()}.
delete_publishing_destination(Client, DestinationId, DetectorId, Input) ->
    delete_publishing_destination(Client, DestinationId, DetectorId, Input, []).

-spec delete_publishing_destination(aws_client:aws_client(), binary() | list(), binary() | list(), delete_publishing_destination_request(), proplists:proplist()) ->
    {ok, delete_publishing_destination_response(), tuple()} |
    {error, any()} |
    {error, delete_publishing_destination_errors(), tuple()}.
delete_publishing_destination(Client, DestinationId, DetectorId, Input0, Options0) ->
    Method = delete,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/publishingDestination/", aws_util:encode_uri(DestinationId), ""],
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

%% @doc Deletes the ThreatIntelSet specified by the ThreatIntelSet ID.
-spec delete_threat_intel_set(aws_client:aws_client(), binary() | list(), binary() | list(), delete_threat_intel_set_request()) ->
    {ok, delete_threat_intel_set_response(), tuple()} |
    {error, any()} |
    {error, delete_threat_intel_set_errors(), tuple()}.
delete_threat_intel_set(Client, DetectorId, ThreatIntelSetId, Input) ->
    delete_threat_intel_set(Client, DetectorId, ThreatIntelSetId, Input, []).

-spec delete_threat_intel_set(aws_client:aws_client(), binary() | list(), binary() | list(), delete_threat_intel_set_request(), proplists:proplist()) ->
    {ok, delete_threat_intel_set_response(), tuple()} |
    {error, any()} |
    {error, delete_threat_intel_set_errors(), tuple()}.
delete_threat_intel_set(Client, DetectorId, ThreatIntelSetId, Input0, Options0) ->
    Method = delete,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/threatintelset/", aws_util:encode_uri(ThreatIntelSetId), ""],
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

%% @doc Returns a list of malware scans.
%%
%% Each member account can view the malware scans for their
%% own accounts. An administrator can view the malware scans for all the
%% member accounts.
%%
%% There might be regional differences because some data sources might not be
%% available in all the Amazon Web Services Regions where GuardDuty is
%% presently supported. For more
%% information, see Regions and endpoints:
%% https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html.
-spec describe_malware_scans(aws_client:aws_client(), binary() | list(), describe_malware_scans_request()) ->
    {ok, describe_malware_scans_response(), tuple()} |
    {error, any()} |
    {error, describe_malware_scans_errors(), tuple()}.
describe_malware_scans(Client, DetectorId, Input) ->
    describe_malware_scans(Client, DetectorId, Input, []).

-spec describe_malware_scans(aws_client:aws_client(), binary() | list(), describe_malware_scans_request(), proplists:proplist()) ->
    {ok, describe_malware_scans_response(), tuple()} |
    {error, any()} |
    {error, describe_malware_scans_errors(), tuple()}.
describe_malware_scans(Client, DetectorId, Input0, Options0) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/malware-scans"],
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

%% @doc Returns information about the account selected as the delegated
%% administrator for
%% GuardDuty.
%%
%% There might be regional differences because some data sources might not be
%% available in all the Amazon Web Services Regions where GuardDuty is
%% presently supported. For more
%% information, see Regions and endpoints:
%% https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html.
-spec describe_organization_configuration(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_organization_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_organization_configuration_errors(), tuple()}.
describe_organization_configuration(Client, DetectorId)
  when is_map(Client) ->
    describe_organization_configuration(Client, DetectorId, #{}, #{}).

-spec describe_organization_configuration(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_organization_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_organization_configuration_errors(), tuple()}.
describe_organization_configuration(Client, DetectorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_organization_configuration(Client, DetectorId, QueryMap, HeadersMap, []).

-spec describe_organization_configuration(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_organization_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_organization_configuration_errors(), tuple()}.
describe_organization_configuration(Client, DetectorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/admin"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about the publishing destination specified by the
%% provided
%% `destinationId'.
-spec describe_publishing_destination(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_publishing_destination_response(), tuple()} |
    {error, any()} |
    {error, describe_publishing_destination_errors(), tuple()}.
describe_publishing_destination(Client, DestinationId, DetectorId)
  when is_map(Client) ->
    describe_publishing_destination(Client, DestinationId, DetectorId, #{}, #{}).

-spec describe_publishing_destination(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_publishing_destination_response(), tuple()} |
    {error, any()} |
    {error, describe_publishing_destination_errors(), tuple()}.
describe_publishing_destination(Client, DestinationId, DetectorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_publishing_destination(Client, DestinationId, DetectorId, QueryMap, HeadersMap, []).

-spec describe_publishing_destination(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_publishing_destination_response(), tuple()} |
    {error, any()} |
    {error, describe_publishing_destination_errors(), tuple()}.
describe_publishing_destination(Client, DestinationId, DetectorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/publishingDestination/", aws_util:encode_uri(DestinationId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Removes the existing GuardDuty delegated
%% administrator of the organization.
%%
%% Only the organization's management account can run this
%% API operation.
-spec disable_organization_admin_account(aws_client:aws_client(), disable_organization_admin_account_request()) ->
    {ok, disable_organization_admin_account_response(), tuple()} |
    {error, any()} |
    {error, disable_organization_admin_account_errors(), tuple()}.
disable_organization_admin_account(Client, Input) ->
    disable_organization_admin_account(Client, Input, []).

-spec disable_organization_admin_account(aws_client:aws_client(), disable_organization_admin_account_request(), proplists:proplist()) ->
    {ok, disable_organization_admin_account_response(), tuple()} |
    {error, any()} |
    {error, disable_organization_admin_account_errors(), tuple()}.
disable_organization_admin_account(Client, Input0, Options0) ->
    Method = post,
    Path = ["/admin/disable"],
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

%% @doc Disassociates the current GuardDuty member account from its
%% administrator account.
%%
%% When you
%% disassociate an invited member from a GuardDuty delegated administrator,
%% the member account details
%% obtained from the CreateMembers:
%% https://docs.aws.amazon.com/guardduty/latest/APIReference/API_CreateMembers.html
%% API, including the associated email addresses, are retained. This is
%% done so that the delegated administrator can invoke the InviteMembers:
%% https://docs.aws.amazon.com/guardduty/latest/APIReference/API_InviteMembers.html
%% API without the need to invoke the CreateMembers API again. To
%% remove the details associated with a member account, the delegated
%% administrator must invoke the
%% DeleteMembers:
%% https://docs.aws.amazon.com/guardduty/latest/APIReference/API_DeleteMembers.html
%% API.
%%
%% With `autoEnableOrganizationMembers' configuration for your
%% organization set to
%% `ALL', you'll receive an error if you attempt to disable GuardDuty
%% in a member
%% account.
-spec disassociate_from_administrator_account(aws_client:aws_client(), binary() | list(), disassociate_from_administrator_account_request()) ->
    {ok, disassociate_from_administrator_account_response(), tuple()} |
    {error, any()} |
    {error, disassociate_from_administrator_account_errors(), tuple()}.
disassociate_from_administrator_account(Client, DetectorId, Input) ->
    disassociate_from_administrator_account(Client, DetectorId, Input, []).

-spec disassociate_from_administrator_account(aws_client:aws_client(), binary() | list(), disassociate_from_administrator_account_request(), proplists:proplist()) ->
    {ok, disassociate_from_administrator_account_response(), tuple()} |
    {error, any()} |
    {error, disassociate_from_administrator_account_errors(), tuple()}.
disassociate_from_administrator_account(Client, DetectorId, Input0, Options0) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/administrator/disassociate"],
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

%% @doc Disassociates the current GuardDuty member account from its
%% administrator account.
%%
%% When you
%% disassociate an invited member from a GuardDuty delegated administrator,
%% the member account details
%% obtained from the CreateMembers:
%% https://docs.aws.amazon.com/guardduty/latest/APIReference/API_CreateMembers.html
%% API, including the associated email addresses, are retained. This is
%% done so that the delegated administrator can invoke the InviteMembers:
%% https://docs.aws.amazon.com/guardduty/latest/APIReference/API_InviteMembers.html
%% API without the need to invoke the CreateMembers API again. To
%% remove the details associated with a member account, the delegated
%% administrator must invoke the
%% DeleteMembers:
%% https://docs.aws.amazon.com/guardduty/latest/APIReference/API_DeleteMembers.html
%% API.
-spec disassociate_from_master_account(aws_client:aws_client(), binary() | list(), disassociate_from_master_account_request()) ->
    {ok, disassociate_from_master_account_response(), tuple()} |
    {error, any()} |
    {error, disassociate_from_master_account_errors(), tuple()}.
disassociate_from_master_account(Client, DetectorId, Input) ->
    disassociate_from_master_account(Client, DetectorId, Input, []).

-spec disassociate_from_master_account(aws_client:aws_client(), binary() | list(), disassociate_from_master_account_request(), proplists:proplist()) ->
    {ok, disassociate_from_master_account_response(), tuple()} |
    {error, any()} |
    {error, disassociate_from_master_account_errors(), tuple()}.
disassociate_from_master_account(Client, DetectorId, Input0, Options0) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/master/disassociate"],
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

%% @doc Disassociates GuardDuty member accounts (from the current
%% administrator account) specified
%% by the account IDs.
%%
%% When you
%% disassociate an invited member from a GuardDuty delegated administrator,
%% the member account details
%% obtained from the CreateMembers:
%% https://docs.aws.amazon.com/guardduty/latest/APIReference/API_CreateMembers.html
%% API, including the associated email addresses, are retained. This is
%% done so that the delegated administrator can invoke the InviteMembers:
%% https://docs.aws.amazon.com/guardduty/latest/APIReference/API_InviteMembers.html
%% API without the need to invoke the CreateMembers API again. To
%% remove the details associated with a member account, the delegated
%% administrator must invoke the
%% DeleteMembers:
%% https://docs.aws.amazon.com/guardduty/latest/APIReference/API_DeleteMembers.html
%% API.
%%
%% With `autoEnableOrganizationMembers' configuration for your
%% organization set to
%% `ALL', you'll receive an error if you attempt to disassociate a
%% member account
%% before removing them from your organization.
%%
%% If you disassociate a member account that was added by invitation, the
%% member account details
%% obtained from this API, including the associated email addresses, will be
%% retained.
%% This is done so that the delegated administrator can invoke the
%% InviteMembers:
%% https://docs.aws.amazon.com/guardduty/latest/APIReference/API_InviteMembers.html
%% API without the need to invoke the CreateMembers API again. To
%% remove the details associated with a member account, the delegated
%% administrator must invoke the
%% DeleteMembers:
%% https://docs.aws.amazon.com/guardduty/latest/APIReference/API_DeleteMembers.html
%% API.
%%
%% When the member accounts added through Organizations are later
%% disassociated, you (administrator)
%% can't invite them by calling the InviteMembers API. You can create an
%% association with these
%% member accounts again only by calling the CreateMembers API.
-spec disassociate_members(aws_client:aws_client(), binary() | list(), disassociate_members_request()) ->
    {ok, disassociate_members_response(), tuple()} |
    {error, any()} |
    {error, disassociate_members_errors(), tuple()}.
disassociate_members(Client, DetectorId, Input) ->
    disassociate_members(Client, DetectorId, Input, []).

-spec disassociate_members(aws_client:aws_client(), binary() | list(), disassociate_members_request(), proplists:proplist()) ->
    {ok, disassociate_members_response(), tuple()} |
    {error, any()} |
    {error, disassociate_members_errors(), tuple()}.
disassociate_members(Client, DetectorId, Input0, Options0) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/member/disassociate"],
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

%% @doc Designates an Amazon Web Services account within the organization as
%% your GuardDuty delegated
%% administrator.
%%
%% Only the organization's management account can run this
%% API operation.
-spec enable_organization_admin_account(aws_client:aws_client(), enable_organization_admin_account_request()) ->
    {ok, enable_organization_admin_account_response(), tuple()} |
    {error, any()} |
    {error, enable_organization_admin_account_errors(), tuple()}.
enable_organization_admin_account(Client, Input) ->
    enable_organization_admin_account(Client, Input, []).

-spec enable_organization_admin_account(aws_client:aws_client(), enable_organization_admin_account_request(), proplists:proplist()) ->
    {ok, enable_organization_admin_account_response(), tuple()} |
    {error, any()} |
    {error, enable_organization_admin_account_errors(), tuple()}.
enable_organization_admin_account(Client, Input0, Options0) ->
    Method = post,
    Path = ["/admin/enable"],
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

%% @doc Provides the details of the GuardDuty administrator account
%% associated with the current
%% GuardDuty member account.
%%
%% If the organization's management account or a delegated administrator
%% runs this API,
%% it will return success (`HTTP 200') but no content.
-spec get_administrator_account(aws_client:aws_client(), binary() | list()) ->
    {ok, get_administrator_account_response(), tuple()} |
    {error, any()} |
    {error, get_administrator_account_errors(), tuple()}.
get_administrator_account(Client, DetectorId)
  when is_map(Client) ->
    get_administrator_account(Client, DetectorId, #{}, #{}).

-spec get_administrator_account(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_administrator_account_response(), tuple()} |
    {error, any()} |
    {error, get_administrator_account_errors(), tuple()}.
get_administrator_account(Client, DetectorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_administrator_account(Client, DetectorId, QueryMap, HeadersMap, []).

-spec get_administrator_account(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_administrator_account_response(), tuple()} |
    {error, any()} |
    {error, get_administrator_account_errors(), tuple()}.
get_administrator_account(Client, DetectorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/administrator"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves aggregated statistics for your account.
%%
%% If you are a GuardDuty administrator, you
%% can retrieve the statistics for all the resources associated with the
%% active member accounts
%% in your organization who have enabled Runtime Monitoring and have the
%% GuardDuty security agent running
%% on their resources.
-spec get_coverage_statistics(aws_client:aws_client(), binary() | list(), get_coverage_statistics_request()) ->
    {ok, get_coverage_statistics_response(), tuple()} |
    {error, any()} |
    {error, get_coverage_statistics_errors(), tuple()}.
get_coverage_statistics(Client, DetectorId, Input) ->
    get_coverage_statistics(Client, DetectorId, Input, []).

-spec get_coverage_statistics(aws_client:aws_client(), binary() | list(), get_coverage_statistics_request(), proplists:proplist()) ->
    {ok, get_coverage_statistics_response(), tuple()} |
    {error, any()} |
    {error, get_coverage_statistics_errors(), tuple()}.
get_coverage_statistics(Client, DetectorId, Input0, Options0) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/coverage/statistics"],
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

%% @doc Retrieves a GuardDuty detector specified by the detectorId.
%%
%% There might be regional differences because some data sources might not be
%% available in all the Amazon Web Services Regions where GuardDuty is
%% presently supported. For more
%% information, see Regions and endpoints:
%% https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html.
-spec get_detector(aws_client:aws_client(), binary() | list()) ->
    {ok, get_detector_response(), tuple()} |
    {error, any()} |
    {error, get_detector_errors(), tuple()}.
get_detector(Client, DetectorId)
  when is_map(Client) ->
    get_detector(Client, DetectorId, #{}, #{}).

-spec get_detector(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_detector_response(), tuple()} |
    {error, any()} |
    {error, get_detector_errors(), tuple()}.
get_detector(Client, DetectorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_detector(Client, DetectorId, QueryMap, HeadersMap, []).

-spec get_detector(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_detector_response(), tuple()} |
    {error, any()} |
    {error, get_detector_errors(), tuple()}.
get_detector(Client, DetectorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/detector/", aws_util:encode_uri(DetectorId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the details of the filter specified by the filter name.
-spec get_filter(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_filter_response(), tuple()} |
    {error, any()} |
    {error, get_filter_errors(), tuple()}.
get_filter(Client, DetectorId, FilterName)
  when is_map(Client) ->
    get_filter(Client, DetectorId, FilterName, #{}, #{}).

-spec get_filter(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_filter_response(), tuple()} |
    {error, any()} |
    {error, get_filter_errors(), tuple()}.
get_filter(Client, DetectorId, FilterName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_filter(Client, DetectorId, FilterName, QueryMap, HeadersMap, []).

-spec get_filter(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_filter_response(), tuple()} |
    {error, any()} |
    {error, get_filter_errors(), tuple()}.
get_filter(Client, DetectorId, FilterName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/filter/", aws_util:encode_uri(FilterName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes Amazon GuardDuty findings specified by finding IDs.
-spec get_findings(aws_client:aws_client(), binary() | list(), get_findings_request()) ->
    {ok, get_findings_response(), tuple()} |
    {error, any()} |
    {error, get_findings_errors(), tuple()}.
get_findings(Client, DetectorId, Input) ->
    get_findings(Client, DetectorId, Input, []).

-spec get_findings(aws_client:aws_client(), binary() | list(), get_findings_request(), proplists:proplist()) ->
    {ok, get_findings_response(), tuple()} |
    {error, any()} |
    {error, get_findings_errors(), tuple()}.
get_findings(Client, DetectorId, Input0, Options0) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/findings/get"],
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

%% @doc Lists GuardDuty findings statistics for the specified detector ID.
%%
%% You must provide either `findingStatisticTypes' or
%% `groupBy' parameter, and not both. You can use the `maxResults'
%% and `orderBy'
%% parameters only when using `groupBy'.
%%
%% There might be regional differences because some flags might not be
%% available in all the Regions where GuardDuty
%% is currently supported. For more information, see Regions and endpoints:
%% https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html.
-spec get_findings_statistics(aws_client:aws_client(), binary() | list(), get_findings_statistics_request()) ->
    {ok, get_findings_statistics_response(), tuple()} |
    {error, any()} |
    {error, get_findings_statistics_errors(), tuple()}.
get_findings_statistics(Client, DetectorId, Input) ->
    get_findings_statistics(Client, DetectorId, Input, []).

-spec get_findings_statistics(aws_client:aws_client(), binary() | list(), get_findings_statistics_request(), proplists:proplist()) ->
    {ok, get_findings_statistics_response(), tuple()} |
    {error, any()} |
    {error, get_findings_statistics_errors(), tuple()}.
get_findings_statistics(Client, DetectorId, Input0, Options0) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/findings/statistics"],
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

%% @doc Returns the count of all GuardDuty membership invitations that were
%% sent to the current
%% member account except the currently accepted invitation.
-spec get_invitations_count(aws_client:aws_client()) ->
    {ok, get_invitations_count_response(), tuple()} |
    {error, any()} |
    {error, get_invitations_count_errors(), tuple()}.
get_invitations_count(Client)
  when is_map(Client) ->
    get_invitations_count(Client, #{}, #{}).

-spec get_invitations_count(aws_client:aws_client(), map(), map()) ->
    {ok, get_invitations_count_response(), tuple()} |
    {error, any()} |
    {error, get_invitations_count_errors(), tuple()}.
get_invitations_count(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_invitations_count(Client, QueryMap, HeadersMap, []).

-spec get_invitations_count(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_invitations_count_response(), tuple()} |
    {error, any()} |
    {error, get_invitations_count_errors(), tuple()}.
get_invitations_count(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/invitation/count"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the IPSet specified by the `ipSetId'.
-spec get_ip_set(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_ip_set_response(), tuple()} |
    {error, any()} |
    {error, get_ip_set_errors(), tuple()}.
get_ip_set(Client, DetectorId, IpSetId)
  when is_map(Client) ->
    get_ip_set(Client, DetectorId, IpSetId, #{}, #{}).

-spec get_ip_set(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_ip_set_response(), tuple()} |
    {error, any()} |
    {error, get_ip_set_errors(), tuple()}.
get_ip_set(Client, DetectorId, IpSetId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_ip_set(Client, DetectorId, IpSetId, QueryMap, HeadersMap, []).

-spec get_ip_set(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_ip_set_response(), tuple()} |
    {error, any()} |
    {error, get_ip_set_errors(), tuple()}.
get_ip_set(Client, DetectorId, IpSetId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/ipset/", aws_util:encode_uri(IpSetId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the Malware Protection plan details associated with a
%% Malware Protection
%% plan ID.
-spec get_malware_protection_plan(aws_client:aws_client(), binary() | list()) ->
    {ok, get_malware_protection_plan_response(), tuple()} |
    {error, any()} |
    {error, get_malware_protection_plan_errors(), tuple()}.
get_malware_protection_plan(Client, MalwareProtectionPlanId)
  when is_map(Client) ->
    get_malware_protection_plan(Client, MalwareProtectionPlanId, #{}, #{}).

-spec get_malware_protection_plan(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_malware_protection_plan_response(), tuple()} |
    {error, any()} |
    {error, get_malware_protection_plan_errors(), tuple()}.
get_malware_protection_plan(Client, MalwareProtectionPlanId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_malware_protection_plan(Client, MalwareProtectionPlanId, QueryMap, HeadersMap, []).

-spec get_malware_protection_plan(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_malware_protection_plan_response(), tuple()} |
    {error, any()} |
    {error, get_malware_protection_plan_errors(), tuple()}.
get_malware_protection_plan(Client, MalwareProtectionPlanId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/malware-protection-plan/", aws_util:encode_uri(MalwareProtectionPlanId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the details of the malware scan settings.
%%
%% There might be regional differences because some data sources might not be
%% available in all the Amazon Web Services Regions where GuardDuty is
%% presently supported. For more
%% information, see Regions and endpoints:
%% https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html.
-spec get_malware_scan_settings(aws_client:aws_client(), binary() | list()) ->
    {ok, get_malware_scan_settings_response(), tuple()} |
    {error, any()} |
    {error, get_malware_scan_settings_errors(), tuple()}.
get_malware_scan_settings(Client, DetectorId)
  when is_map(Client) ->
    get_malware_scan_settings(Client, DetectorId, #{}, #{}).

-spec get_malware_scan_settings(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_malware_scan_settings_response(), tuple()} |
    {error, any()} |
    {error, get_malware_scan_settings_errors(), tuple()}.
get_malware_scan_settings(Client, DetectorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_malware_scan_settings(Client, DetectorId, QueryMap, HeadersMap, []).

-spec get_malware_scan_settings(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_malware_scan_settings_response(), tuple()} |
    {error, any()} |
    {error, get_malware_scan_settings_errors(), tuple()}.
get_malware_scan_settings(Client, DetectorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/malware-scan-settings"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Provides the details for the GuardDuty administrator account
%% associated with the current
%% GuardDuty member account.
-spec get_master_account(aws_client:aws_client(), binary() | list()) ->
    {ok, get_master_account_response(), tuple()} |
    {error, any()} |
    {error, get_master_account_errors(), tuple()}.
get_master_account(Client, DetectorId)
  when is_map(Client) ->
    get_master_account(Client, DetectorId, #{}, #{}).

-spec get_master_account(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_master_account_response(), tuple()} |
    {error, any()} |
    {error, get_master_account_errors(), tuple()}.
get_master_account(Client, DetectorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_master_account(Client, DetectorId, QueryMap, HeadersMap, []).

-spec get_master_account(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_master_account_response(), tuple()} |
    {error, any()} |
    {error, get_master_account_errors(), tuple()}.
get_master_account(Client, DetectorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/master"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes which data sources are enabled for the member account's
%% detector.
%%
%% There might be regional differences because some data sources might not be
%% available in all the Amazon Web Services Regions where GuardDuty is
%% presently supported. For more
%% information, see Regions and endpoints:
%% https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html.
-spec get_member_detectors(aws_client:aws_client(), binary() | list(), get_member_detectors_request()) ->
    {ok, get_member_detectors_response(), tuple()} |
    {error, any()} |
    {error, get_member_detectors_errors(), tuple()}.
get_member_detectors(Client, DetectorId, Input) ->
    get_member_detectors(Client, DetectorId, Input, []).

-spec get_member_detectors(aws_client:aws_client(), binary() | list(), get_member_detectors_request(), proplists:proplist()) ->
    {ok, get_member_detectors_response(), tuple()} |
    {error, any()} |
    {error, get_member_detectors_errors(), tuple()}.
get_member_detectors(Client, DetectorId, Input0, Options0) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/member/detector/get"],
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

%% @doc Retrieves GuardDuty member accounts (of the current GuardDuty
%% administrator account)
%% specified by the account IDs.
-spec get_members(aws_client:aws_client(), binary() | list(), get_members_request()) ->
    {ok, get_members_response(), tuple()} |
    {error, any()} |
    {error, get_members_errors(), tuple()}.
get_members(Client, DetectorId, Input) ->
    get_members(Client, DetectorId, Input, []).

-spec get_members(aws_client:aws_client(), binary() | list(), get_members_request(), proplists:proplist()) ->
    {ok, get_members_response(), tuple()} |
    {error, any()} |
    {error, get_members_errors(), tuple()}.
get_members(Client, DetectorId, Input0, Options0) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/member/get"],
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

%% @doc Retrieves how many active member accounts have
%% each feature enabled within GuardDuty.
%%
%% Only a delegated GuardDuty administrator of an organization can run this
%% API.
%%
%% When you create a new organization, it might take up to 24
%% hours to generate the statistics for the entire organization.
-spec get_organization_statistics(aws_client:aws_client()) ->
    {ok, get_organization_statistics_response(), tuple()} |
    {error, any()} |
    {error, get_organization_statistics_errors(), tuple()}.
get_organization_statistics(Client)
  when is_map(Client) ->
    get_organization_statistics(Client, #{}, #{}).

-spec get_organization_statistics(aws_client:aws_client(), map(), map()) ->
    {ok, get_organization_statistics_response(), tuple()} |
    {error, any()} |
    {error, get_organization_statistics_errors(), tuple()}.
get_organization_statistics(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_organization_statistics(Client, QueryMap, HeadersMap, []).

-spec get_organization_statistics(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_organization_statistics_response(), tuple()} |
    {error, any()} |
    {error, get_organization_statistics_errors(), tuple()}.
get_organization_statistics(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/organization/statistics"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Provides the number of days left for each data source used in the
%% free trial
%% period.
-spec get_remaining_free_trial_days(aws_client:aws_client(), binary() | list(), get_remaining_free_trial_days_request()) ->
    {ok, get_remaining_free_trial_days_response(), tuple()} |
    {error, any()} |
    {error, get_remaining_free_trial_days_errors(), tuple()}.
get_remaining_free_trial_days(Client, DetectorId, Input) ->
    get_remaining_free_trial_days(Client, DetectorId, Input, []).

-spec get_remaining_free_trial_days(aws_client:aws_client(), binary() | list(), get_remaining_free_trial_days_request(), proplists:proplist()) ->
    {ok, get_remaining_free_trial_days_response(), tuple()} |
    {error, any()} |
    {error, get_remaining_free_trial_days_errors(), tuple()}.
get_remaining_free_trial_days(Client, DetectorId, Input0, Options0) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/freeTrial/daysRemaining"],
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

%% @doc Retrieves the ThreatIntelSet that is specified by the ThreatIntelSet
%% ID.
-spec get_threat_intel_set(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_threat_intel_set_response(), tuple()} |
    {error, any()} |
    {error, get_threat_intel_set_errors(), tuple()}.
get_threat_intel_set(Client, DetectorId, ThreatIntelSetId)
  when is_map(Client) ->
    get_threat_intel_set(Client, DetectorId, ThreatIntelSetId, #{}, #{}).

-spec get_threat_intel_set(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_threat_intel_set_response(), tuple()} |
    {error, any()} |
    {error, get_threat_intel_set_errors(), tuple()}.
get_threat_intel_set(Client, DetectorId, ThreatIntelSetId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_threat_intel_set(Client, DetectorId, ThreatIntelSetId, QueryMap, HeadersMap, []).

-spec get_threat_intel_set(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_threat_intel_set_response(), tuple()} |
    {error, any()} |
    {error, get_threat_intel_set_errors(), tuple()}.
get_threat_intel_set(Client, DetectorId, ThreatIntelSetId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/threatintelset/", aws_util:encode_uri(ThreatIntelSetId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists Amazon GuardDuty usage statistics over the last 30 days for the
%% specified detector
%% ID.
%%
%% For newly enabled detectors or data sources, the cost returned will
%% include only the usage
%% so far under 30 days. This may differ from the cost metrics in the
%% console, which project
%% usage over 30 days to provide a monthly cost estimate. For more
%% information, see Understanding How Usage Costs are Calculated:
%% https://docs.aws.amazon.com/guardduty/latest/ug/monitoring_costs.html#usage-calculations.
-spec get_usage_statistics(aws_client:aws_client(), binary() | list(), get_usage_statistics_request()) ->
    {ok, get_usage_statistics_response(), tuple()} |
    {error, any()} |
    {error, get_usage_statistics_errors(), tuple()}.
get_usage_statistics(Client, DetectorId, Input) ->
    get_usage_statistics(Client, DetectorId, Input, []).

-spec get_usage_statistics(aws_client:aws_client(), binary() | list(), get_usage_statistics_request(), proplists:proplist()) ->
    {ok, get_usage_statistics_response(), tuple()} |
    {error, any()} |
    {error, get_usage_statistics_errors(), tuple()}.
get_usage_statistics(Client, DetectorId, Input0, Options0) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/usage/statistics"],
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

%% @doc Invites Amazon Web Services accounts to become members of an
%% organization administered by the Amazon Web Services account
%% that invokes this API.
%%
%% If you are using Amazon Web Services Organizations to manage your
%% GuardDuty environment, this step is not
%% needed. For more information, see Managing accounts with organizations:
%% https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_organizations.html.
%%
%% To invite Amazon Web Services accounts, the first step is
%% to ensure that GuardDuty has been enabled in the potential member
%% accounts. You can now invoke this API
%% to add accounts by invitation. The
%% invited accounts can either accept or decline the invitation from their
%% GuardDuty accounts. Each invited Amazon Web Services account can
%% choose to accept the invitation from only one Amazon Web Services account.
%% For more information, see
%% Managing GuardDuty accounts
%% by invitation:
%% https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_invitations.html.
%%
%% After the invite has been accepted and you choose to disassociate a member
%% account
%% (by using DisassociateMembers:
%% https://docs.aws.amazon.com/guardduty/latest/APIReference/API_DisassociateMembers.html)
%% from your account,
%% the details of the member account obtained by invoking CreateMembers:
%% https://docs.aws.amazon.com/guardduty/latest/APIReference/API_CreateMembers.html,
%% including the
%% associated email addresses, will be retained.
%% This is done so that you can invoke InviteMembers without the need to
%% invoke
%% CreateMembers:
%% https://docs.aws.amazon.com/guardduty/latest/APIReference/API_CreateMembers.html
%% again. To
%% remove the details associated with a member account, you must also invoke
%% DeleteMembers:
%% https://docs.aws.amazon.com/guardduty/latest/APIReference/API_DeleteMembers.html.
%%
%% If you disassociate a member account that was added by invitation, the
%% member account details
%% obtained from this API, including the associated email addresses, will be
%% retained.
%% This is done so that the delegated administrator can invoke the
%% InviteMembers:
%% https://docs.aws.amazon.com/guardduty/latest/APIReference/API_InviteMembers.html
%% API without the need to invoke the CreateMembers API again. To
%% remove the details associated with a member account, the delegated
%% administrator must invoke the
%% DeleteMembers:
%% https://docs.aws.amazon.com/guardduty/latest/APIReference/API_DeleteMembers.html
%% API.
%%
%% When the member accounts added through Organizations are later
%% disassociated, you (administrator)
%% can't invite them by calling the InviteMembers API. You can create an
%% association with these
%% member accounts again only by calling the CreateMembers API.
-spec invite_members(aws_client:aws_client(), binary() | list(), invite_members_request()) ->
    {ok, invite_members_response(), tuple()} |
    {error, any()} |
    {error, invite_members_errors(), tuple()}.
invite_members(Client, DetectorId, Input) ->
    invite_members(Client, DetectorId, Input, []).

-spec invite_members(aws_client:aws_client(), binary() | list(), invite_members_request(), proplists:proplist()) ->
    {ok, invite_members_response(), tuple()} |
    {error, any()} |
    {error, invite_members_errors(), tuple()}.
invite_members(Client, DetectorId, Input0, Options0) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/member/invite"],
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

%% @doc Lists coverage details for your GuardDuty account.
%%
%% If you're a GuardDuty administrator, you can
%% retrieve all resources associated with the active member accounts in your
%% organization.
%%
%% Make sure the accounts have Runtime Monitoring enabled and GuardDuty agent
%% running on
%% their resources.
-spec list_coverage(aws_client:aws_client(), binary() | list(), list_coverage_request()) ->
    {ok, list_coverage_response(), tuple()} |
    {error, any()} |
    {error, list_coverage_errors(), tuple()}.
list_coverage(Client, DetectorId, Input) ->
    list_coverage(Client, DetectorId, Input, []).

-spec list_coverage(aws_client:aws_client(), binary() | list(), list_coverage_request(), proplists:proplist()) ->
    {ok, list_coverage_response(), tuple()} |
    {error, any()} |
    {error, list_coverage_errors(), tuple()}.
list_coverage(Client, DetectorId, Input0, Options0) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/coverage"],
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

%% @doc Lists detectorIds of all the existing Amazon GuardDuty detector
%% resources.
-spec list_detectors(aws_client:aws_client()) ->
    {ok, list_detectors_response(), tuple()} |
    {error, any()} |
    {error, list_detectors_errors(), tuple()}.
list_detectors(Client)
  when is_map(Client) ->
    list_detectors(Client, #{}, #{}).

-spec list_detectors(aws_client:aws_client(), map(), map()) ->
    {ok, list_detectors_response(), tuple()} |
    {error, any()} |
    {error, list_detectors_errors(), tuple()}.
list_detectors(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_detectors(Client, QueryMap, HeadersMap, []).

-spec list_detectors(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_detectors_response(), tuple()} |
    {error, any()} |
    {error, list_detectors_errors(), tuple()}.
list_detectors(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/detector"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a paginated list of the current filters.
-spec list_filters(aws_client:aws_client(), binary() | list()) ->
    {ok, list_filters_response(), tuple()} |
    {error, any()} |
    {error, list_filters_errors(), tuple()}.
list_filters(Client, DetectorId)
  when is_map(Client) ->
    list_filters(Client, DetectorId, #{}, #{}).

-spec list_filters(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_filters_response(), tuple()} |
    {error, any()} |
    {error, list_filters_errors(), tuple()}.
list_filters(Client, DetectorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_filters(Client, DetectorId, QueryMap, HeadersMap, []).

-spec list_filters(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_filters_response(), tuple()} |
    {error, any()} |
    {error, list_filters_errors(), tuple()}.
list_filters(Client, DetectorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/filter"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists GuardDuty findings for the specified detector ID.
%%
%% There might be regional differences because some flags might not be
%% available in all the Regions where GuardDuty
%% is currently supported. For more information, see Regions and endpoints:
%% https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html.
-spec list_findings(aws_client:aws_client(), binary() | list(), list_findings_request()) ->
    {ok, list_findings_response(), tuple()} |
    {error, any()} |
    {error, list_findings_errors(), tuple()}.
list_findings(Client, DetectorId, Input) ->
    list_findings(Client, DetectorId, Input, []).

-spec list_findings(aws_client:aws_client(), binary() | list(), list_findings_request(), proplists:proplist()) ->
    {ok, list_findings_response(), tuple()} |
    {error, any()} |
    {error, list_findings_errors(), tuple()}.
list_findings(Client, DetectorId, Input0, Options0) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/findings"],
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

%% @doc Lists all GuardDuty membership invitations that were sent to the
%% current Amazon Web Services
%% account.
-spec list_invitations(aws_client:aws_client()) ->
    {ok, list_invitations_response(), tuple()} |
    {error, any()} |
    {error, list_invitations_errors(), tuple()}.
list_invitations(Client)
  when is_map(Client) ->
    list_invitations(Client, #{}, #{}).

-spec list_invitations(aws_client:aws_client(), map(), map()) ->
    {ok, list_invitations_response(), tuple()} |
    {error, any()} |
    {error, list_invitations_errors(), tuple()}.
list_invitations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_invitations(Client, QueryMap, HeadersMap, []).

-spec list_invitations(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_invitations_response(), tuple()} |
    {error, any()} |
    {error, list_invitations_errors(), tuple()}.
list_invitations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/invitation"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the IPSets of the GuardDuty service specified by the detector
%% ID.
%%
%% If you use this
%% operation from a member account, the IPSets returned are the IPSets from
%% the associated
%% administrator account.
-spec list_ip_sets(aws_client:aws_client(), binary() | list()) ->
    {ok, list_ip_sets_response(), tuple()} |
    {error, any()} |
    {error, list_ip_sets_errors(), tuple()}.
list_ip_sets(Client, DetectorId)
  when is_map(Client) ->
    list_ip_sets(Client, DetectorId, #{}, #{}).

-spec list_ip_sets(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_ip_sets_response(), tuple()} |
    {error, any()} |
    {error, list_ip_sets_errors(), tuple()}.
list_ip_sets(Client, DetectorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_ip_sets(Client, DetectorId, QueryMap, HeadersMap, []).

-spec list_ip_sets(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_ip_sets_response(), tuple()} |
    {error, any()} |
    {error, list_ip_sets_errors(), tuple()}.
list_ip_sets(Client, DetectorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/ipset"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the Malware Protection plan IDs associated with the protected
%% resources in your Amazon Web Services account.
-spec list_malware_protection_plans(aws_client:aws_client()) ->
    {ok, list_malware_protection_plans_response(), tuple()} |
    {error, any()} |
    {error, list_malware_protection_plans_errors(), tuple()}.
list_malware_protection_plans(Client)
  when is_map(Client) ->
    list_malware_protection_plans(Client, #{}, #{}).

-spec list_malware_protection_plans(aws_client:aws_client(), map(), map()) ->
    {ok, list_malware_protection_plans_response(), tuple()} |
    {error, any()} |
    {error, list_malware_protection_plans_errors(), tuple()}.
list_malware_protection_plans(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_malware_protection_plans(Client, QueryMap, HeadersMap, []).

-spec list_malware_protection_plans(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_malware_protection_plans_response(), tuple()} |
    {error, any()} |
    {error, list_malware_protection_plans_errors(), tuple()}.
list_malware_protection_plans(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/malware-protection-plan"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists details about all member accounts for the current GuardDuty
%% administrator
%% account.
-spec list_members(aws_client:aws_client(), binary() | list()) ->
    {ok, list_members_response(), tuple()} |
    {error, any()} |
    {error, list_members_errors(), tuple()}.
list_members(Client, DetectorId)
  when is_map(Client) ->
    list_members(Client, DetectorId, #{}, #{}).

-spec list_members(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_members_response(), tuple()} |
    {error, any()} |
    {error, list_members_errors(), tuple()}.
list_members(Client, DetectorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_members(Client, DetectorId, QueryMap, HeadersMap, []).

-spec list_members(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_members_response(), tuple()} |
    {error, any()} |
    {error, list_members_errors(), tuple()}.
list_members(Client, DetectorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/member"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"onlyAssociated">>, maps:get(<<"onlyAssociated">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the accounts designated as GuardDuty delegated administrators.
%%
%% Only the organization's management account can run this
%% API operation.
-spec list_organization_admin_accounts(aws_client:aws_client()) ->
    {ok, list_organization_admin_accounts_response(), tuple()} |
    {error, any()} |
    {error, list_organization_admin_accounts_errors(), tuple()}.
list_organization_admin_accounts(Client)
  when is_map(Client) ->
    list_organization_admin_accounts(Client, #{}, #{}).

-spec list_organization_admin_accounts(aws_client:aws_client(), map(), map()) ->
    {ok, list_organization_admin_accounts_response(), tuple()} |
    {error, any()} |
    {error, list_organization_admin_accounts_errors(), tuple()}.
list_organization_admin_accounts(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_organization_admin_accounts(Client, QueryMap, HeadersMap, []).

-spec list_organization_admin_accounts(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_organization_admin_accounts_response(), tuple()} |
    {error, any()} |
    {error, list_organization_admin_accounts_errors(), tuple()}.
list_organization_admin_accounts(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/admin"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of publishing destinations associated with the
%% specified
%% `detectorId'.
-spec list_publishing_destinations(aws_client:aws_client(), binary() | list()) ->
    {ok, list_publishing_destinations_response(), tuple()} |
    {error, any()} |
    {error, list_publishing_destinations_errors(), tuple()}.
list_publishing_destinations(Client, DetectorId)
  when is_map(Client) ->
    list_publishing_destinations(Client, DetectorId, #{}, #{}).

-spec list_publishing_destinations(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_publishing_destinations_response(), tuple()} |
    {error, any()} |
    {error, list_publishing_destinations_errors(), tuple()}.
list_publishing_destinations(Client, DetectorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_publishing_destinations(Client, DetectorId, QueryMap, HeadersMap, []).

-spec list_publishing_destinations(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_publishing_destinations_response(), tuple()} |
    {error, any()} |
    {error, list_publishing_destinations_errors(), tuple()}.
list_publishing_destinations(Client, DetectorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/publishingDestination"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists tags for a resource.
%%
%% Tagging is currently supported for detectors, finding filters,
%% IP sets, threat intel sets, and publishing destination, with a limit of 50
%% tags per resource.
%% When invoked, this
%% operation returns all assigned tags for a given resource.
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
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the ThreatIntelSets of the GuardDuty service specified by the
%% detector ID.
%%
%% If you
%% use this operation from a member account, the ThreatIntelSets associated
%% with the
%% administrator account are returned.
-spec list_threat_intel_sets(aws_client:aws_client(), binary() | list()) ->
    {ok, list_threat_intel_sets_response(), tuple()} |
    {error, any()} |
    {error, list_threat_intel_sets_errors(), tuple()}.
list_threat_intel_sets(Client, DetectorId)
  when is_map(Client) ->
    list_threat_intel_sets(Client, DetectorId, #{}, #{}).

-spec list_threat_intel_sets(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_threat_intel_sets_response(), tuple()} |
    {error, any()} |
    {error, list_threat_intel_sets_errors(), tuple()}.
list_threat_intel_sets(Client, DetectorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_threat_intel_sets(Client, DetectorId, QueryMap, HeadersMap, []).

-spec list_threat_intel_sets(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_threat_intel_sets_response(), tuple()} |
    {error, any()} |
    {error, list_threat_intel_sets_errors(), tuple()}.
list_threat_intel_sets(Client, DetectorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/threatintelset"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Initiates the malware scan.
%%
%% Invoking this API will automatically create the Service-linked role:
%% https://docs.aws.amazon.com/guardduty/latest/ug/slr-permissions-malware-protection.html
%% in
%% the corresponding account.
%%
%% When the malware scan starts, you can use the associated scan ID to track
%% the status of the scan. For more information,
%% see DescribeMalwareScans:
%% https://docs.aws.amazon.com/guardduty/latest/APIReference/API_DescribeMalwareScans.html.
-spec start_malware_scan(aws_client:aws_client(), start_malware_scan_request()) ->
    {ok, start_malware_scan_response(), tuple()} |
    {error, any()} |
    {error, start_malware_scan_errors(), tuple()}.
start_malware_scan(Client, Input) ->
    start_malware_scan(Client, Input, []).

-spec start_malware_scan(aws_client:aws_client(), start_malware_scan_request(), proplists:proplist()) ->
    {ok, start_malware_scan_response(), tuple()} |
    {error, any()} |
    {error, start_malware_scan_errors(), tuple()}.
start_malware_scan(Client, Input0, Options0) ->
    Method = post,
    Path = ["/malware-scan/start"],
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

%% @doc Turns on GuardDuty monitoring of the specified member accounts.
%%
%% Use this operation to
%% restart monitoring of accounts that you stopped monitoring with the
%% StopMonitoringMembers:
%% https://docs.aws.amazon.com/guardduty/latest/APIReference/API_StopMonitoringMembers.html
%% operation.
-spec start_monitoring_members(aws_client:aws_client(), binary() | list(), start_monitoring_members_request()) ->
    {ok, start_monitoring_members_response(), tuple()} |
    {error, any()} |
    {error, start_monitoring_members_errors(), tuple()}.
start_monitoring_members(Client, DetectorId, Input) ->
    start_monitoring_members(Client, DetectorId, Input, []).

-spec start_monitoring_members(aws_client:aws_client(), binary() | list(), start_monitoring_members_request(), proplists:proplist()) ->
    {ok, start_monitoring_members_response(), tuple()} |
    {error, any()} |
    {error, start_monitoring_members_errors(), tuple()}.
start_monitoring_members(Client, DetectorId, Input0, Options0) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/member/start"],
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

%% @doc Stops GuardDuty monitoring for the specified member accounts.
%%
%% Use the
%% `StartMonitoringMembers' operation to restart monitoring for those
%% accounts.
%%
%% With `autoEnableOrganizationMembers' configuration for your
%% organization set to
%% `ALL', you'll receive an error if you attempt to stop monitoring
%% the member
%% accounts in your organization.
-spec stop_monitoring_members(aws_client:aws_client(), binary() | list(), stop_monitoring_members_request()) ->
    {ok, stop_monitoring_members_response(), tuple()} |
    {error, any()} |
    {error, stop_monitoring_members_errors(), tuple()}.
stop_monitoring_members(Client, DetectorId, Input) ->
    stop_monitoring_members(Client, DetectorId, Input, []).

-spec stop_monitoring_members(aws_client:aws_client(), binary() | list(), stop_monitoring_members_request(), proplists:proplist()) ->
    {ok, stop_monitoring_members_response(), tuple()} |
    {error, any()} |
    {error, stop_monitoring_members_errors(), tuple()}.
stop_monitoring_members(Client, DetectorId, Input0, Options0) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/member/stop"],
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

%% @doc Adds tags to a resource.
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 204,
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

%% @doc Unarchives GuardDuty findings specified by the `findingIds'.
-spec unarchive_findings(aws_client:aws_client(), binary() | list(), unarchive_findings_request()) ->
    {ok, unarchive_findings_response(), tuple()} |
    {error, any()} |
    {error, unarchive_findings_errors(), tuple()}.
unarchive_findings(Client, DetectorId, Input) ->
    unarchive_findings(Client, DetectorId, Input, []).

-spec unarchive_findings(aws_client:aws_client(), binary() | list(), unarchive_findings_request(), proplists:proplist()) ->
    {ok, unarchive_findings_response(), tuple()} |
    {error, any()} |
    {error, unarchive_findings_errors(), tuple()}.
unarchive_findings(Client, DetectorId, Input0, Options0) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/findings/unarchive"],
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

%% @doc Removes tags from a resource.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 204,
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
                     {<<"tagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the GuardDuty detector specified by the detector ID.
%%
%% Specifying both EKS Runtime Monitoring (`EKS_RUNTIME_MONITORING')
%% and Runtime Monitoring (`RUNTIME_MONITORING') will cause an error.
%% You can add only one of these two features because Runtime Monitoring
%% already includes the
%% threat detection for Amazon EKS resources. For more information, see
%% Runtime Monitoring:
%% https://docs.aws.amazon.com/guardduty/latest/ug/runtime-monitoring.html.
%%
%% There might be regional differences because some data sources might not be
%% available in all the Amazon Web Services Regions where GuardDuty is
%% presently supported. For more
%% information, see Regions and endpoints:
%% https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html.
-spec update_detector(aws_client:aws_client(), binary() | list(), update_detector_request()) ->
    {ok, update_detector_response(), tuple()} |
    {error, any()} |
    {error, update_detector_errors(), tuple()}.
update_detector(Client, DetectorId, Input) ->
    update_detector(Client, DetectorId, Input, []).

-spec update_detector(aws_client:aws_client(), binary() | list(), update_detector_request(), proplists:proplist()) ->
    {ok, update_detector_response(), tuple()} |
    {error, any()} |
    {error, update_detector_errors(), tuple()}.
update_detector(Client, DetectorId, Input0, Options0) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), ""],
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

%% @doc Updates the filter specified by the filter name.
-spec update_filter(aws_client:aws_client(), binary() | list(), binary() | list(), update_filter_request()) ->
    {ok, update_filter_response(), tuple()} |
    {error, any()} |
    {error, update_filter_errors(), tuple()}.
update_filter(Client, DetectorId, FilterName, Input) ->
    update_filter(Client, DetectorId, FilterName, Input, []).

-spec update_filter(aws_client:aws_client(), binary() | list(), binary() | list(), update_filter_request(), proplists:proplist()) ->
    {ok, update_filter_response(), tuple()} |
    {error, any()} |
    {error, update_filter_errors(), tuple()}.
update_filter(Client, DetectorId, FilterName, Input0, Options0) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/filter/", aws_util:encode_uri(FilterName), ""],
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

%% @doc Marks the specified GuardDuty findings as useful or not useful.
-spec update_findings_feedback(aws_client:aws_client(), binary() | list(), update_findings_feedback_request()) ->
    {ok, update_findings_feedback_response(), tuple()} |
    {error, any()} |
    {error, update_findings_feedback_errors(), tuple()}.
update_findings_feedback(Client, DetectorId, Input) ->
    update_findings_feedback(Client, DetectorId, Input, []).

-spec update_findings_feedback(aws_client:aws_client(), binary() | list(), update_findings_feedback_request(), proplists:proplist()) ->
    {ok, update_findings_feedback_response(), tuple()} |
    {error, any()} |
    {error, update_findings_feedback_errors(), tuple()}.
update_findings_feedback(Client, DetectorId, Input0, Options0) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/findings/feedback"],
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

%% @doc Updates the IPSet specified by the IPSet ID.
-spec update_ip_set(aws_client:aws_client(), binary() | list(), binary() | list(), update_ip_set_request()) ->
    {ok, update_ip_set_response(), tuple()} |
    {error, any()} |
    {error, update_ip_set_errors(), tuple()}.
update_ip_set(Client, DetectorId, IpSetId, Input) ->
    update_ip_set(Client, DetectorId, IpSetId, Input, []).

-spec update_ip_set(aws_client:aws_client(), binary() | list(), binary() | list(), update_ip_set_request(), proplists:proplist()) ->
    {ok, update_ip_set_response(), tuple()} |
    {error, any()} |
    {error, update_ip_set_errors(), tuple()}.
update_ip_set(Client, DetectorId, IpSetId, Input0, Options0) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/ipset/", aws_util:encode_uri(IpSetId), ""],
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

%% @doc Updates an existing Malware Protection plan resource.
-spec update_malware_protection_plan(aws_client:aws_client(), binary() | list(), update_malware_protection_plan_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_malware_protection_plan_errors(), tuple()}.
update_malware_protection_plan(Client, MalwareProtectionPlanId, Input) ->
    update_malware_protection_plan(Client, MalwareProtectionPlanId, Input, []).

-spec update_malware_protection_plan(aws_client:aws_client(), binary() | list(), update_malware_protection_plan_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_malware_protection_plan_errors(), tuple()}.
update_malware_protection_plan(Client, MalwareProtectionPlanId, Input0, Options0) ->
    Method = patch,
    Path = ["/malware-protection-plan/", aws_util:encode_uri(MalwareProtectionPlanId), ""],
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

%% @doc Updates the malware scan settings.
%%
%% There might be regional differences because some data sources might not be
%% available in all the Amazon Web Services Regions where GuardDuty is
%% presently supported. For more
%% information, see Regions and endpoints:
%% https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html.
-spec update_malware_scan_settings(aws_client:aws_client(), binary() | list(), update_malware_scan_settings_request()) ->
    {ok, update_malware_scan_settings_response(), tuple()} |
    {error, any()} |
    {error, update_malware_scan_settings_errors(), tuple()}.
update_malware_scan_settings(Client, DetectorId, Input) ->
    update_malware_scan_settings(Client, DetectorId, Input, []).

-spec update_malware_scan_settings(aws_client:aws_client(), binary() | list(), update_malware_scan_settings_request(), proplists:proplist()) ->
    {ok, update_malware_scan_settings_response(), tuple()} |
    {error, any()} |
    {error, update_malware_scan_settings_errors(), tuple()}.
update_malware_scan_settings(Client, DetectorId, Input0, Options0) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/malware-scan-settings"],
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

%% @doc Contains information on member accounts to be updated.
%%
%% Specifying both EKS Runtime Monitoring (`EKS_RUNTIME_MONITORING')
%% and Runtime Monitoring (`RUNTIME_MONITORING') will cause an error.
%% You can add only one of these two features because Runtime Monitoring
%% already includes the
%% threat detection for Amazon EKS resources. For more information, see
%% Runtime Monitoring:
%% https://docs.aws.amazon.com/guardduty/latest/ug/runtime-monitoring.html.
%%
%% There might be regional differences because some data sources might not be
%% available in all the Amazon Web Services Regions where GuardDuty is
%% presently supported. For more
%% information, see Regions and endpoints:
%% https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html.
-spec update_member_detectors(aws_client:aws_client(), binary() | list(), update_member_detectors_request()) ->
    {ok, update_member_detectors_response(), tuple()} |
    {error, any()} |
    {error, update_member_detectors_errors(), tuple()}.
update_member_detectors(Client, DetectorId, Input) ->
    update_member_detectors(Client, DetectorId, Input, []).

-spec update_member_detectors(aws_client:aws_client(), binary() | list(), update_member_detectors_request(), proplists:proplist()) ->
    {ok, update_member_detectors_response(), tuple()} |
    {error, any()} |
    {error, update_member_detectors_errors(), tuple()}.
update_member_detectors(Client, DetectorId, Input0, Options0) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/member/detector/update"],
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

%% @doc Configures the delegated administrator account with the provided
%% values.
%%
%% You must provide
%% a value for either `autoEnableOrganizationMembers' or
%% `autoEnable', but not both.
%%
%% Specifying both EKS Runtime Monitoring (`EKS_RUNTIME_MONITORING')
%% and Runtime Monitoring (`RUNTIME_MONITORING') will cause an error.
%% You can add only one of these two features because Runtime Monitoring
%% already includes the
%% threat detection for Amazon EKS resources. For more information, see
%% Runtime Monitoring:
%% https://docs.aws.amazon.com/guardduty/latest/ug/runtime-monitoring.html.
%%
%% There might be regional differences because some data sources might not be
%% available in all the Amazon Web Services Regions where GuardDuty is
%% presently supported. For more
%% information, see Regions and endpoints:
%% https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html.
-spec update_organization_configuration(aws_client:aws_client(), binary() | list(), update_organization_configuration_request()) ->
    {ok, update_organization_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_organization_configuration_errors(), tuple()}.
update_organization_configuration(Client, DetectorId, Input) ->
    update_organization_configuration(Client, DetectorId, Input, []).

-spec update_organization_configuration(aws_client:aws_client(), binary() | list(), update_organization_configuration_request(), proplists:proplist()) ->
    {ok, update_organization_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_organization_configuration_errors(), tuple()}.
update_organization_configuration(Client, DetectorId, Input0, Options0) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/admin"],
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

%% @doc Updates information about the publishing destination specified by the
%% `destinationId'.
-spec update_publishing_destination(aws_client:aws_client(), binary() | list(), binary() | list(), update_publishing_destination_request()) ->
    {ok, update_publishing_destination_response(), tuple()} |
    {error, any()} |
    {error, update_publishing_destination_errors(), tuple()}.
update_publishing_destination(Client, DestinationId, DetectorId, Input) ->
    update_publishing_destination(Client, DestinationId, DetectorId, Input, []).

-spec update_publishing_destination(aws_client:aws_client(), binary() | list(), binary() | list(), update_publishing_destination_request(), proplists:proplist()) ->
    {ok, update_publishing_destination_response(), tuple()} |
    {error, any()} |
    {error, update_publishing_destination_errors(), tuple()}.
update_publishing_destination(Client, DestinationId, DetectorId, Input0, Options0) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/publishingDestination/", aws_util:encode_uri(DestinationId), ""],
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

%% @doc Updates the ThreatIntelSet specified by the ThreatIntelSet ID.
-spec update_threat_intel_set(aws_client:aws_client(), binary() | list(), binary() | list(), update_threat_intel_set_request()) ->
    {ok, update_threat_intel_set_response(), tuple()} |
    {error, any()} |
    {error, update_threat_intel_set_errors(), tuple()}.
update_threat_intel_set(Client, DetectorId, ThreatIntelSetId, Input) ->
    update_threat_intel_set(Client, DetectorId, ThreatIntelSetId, Input, []).

-spec update_threat_intel_set(aws_client:aws_client(), binary() | list(), binary() | list(), update_threat_intel_set_request(), proplists:proplist()) ->
    {ok, update_threat_intel_set_response(), tuple()} |
    {error, any()} |
    {error, update_threat_intel_set_errors(), tuple()}.
update_threat_intel_set(Client, DetectorId, ThreatIntelSetId, Input0, Options0) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/threatintelset/", aws_util:encode_uri(ThreatIntelSetId), ""],
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
    Client1 = Client#{service => <<"guardduty">>},
    Host = build_host(<<"guardduty">>, Client1),
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
