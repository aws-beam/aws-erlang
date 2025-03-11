%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Security Hub provides you with a comprehensive view of your security
%% state in Amazon Web Services and helps
%% you assess your Amazon Web Services environment against security industry
%% standards and best practices.
%%
%% Security Hub collects security data across Amazon Web Services accounts,
%% Amazon Web Services services, and
%% supported third-party products and helps you analyze your security trends
%% and identify the highest priority security
%% issues.
%%
%% To help you manage the security state of your organization, Security Hub
%% supports multiple security standards.
%% These include the Amazon Web Services Foundational Security Best Practices
%% (FSBP) standard developed by Amazon Web Services,
%% and external compliance frameworks such as the Center for Internet
%% Security (CIS), the Payment Card Industry Data
%% Security Standard (PCI DSS), and the National Institute of Standards and
%% Technology (NIST). Each standard includes
%% several security controls, each of which represents a security best
%% practice. Security Hub runs checks against
%% security controls and generates control findings to help you assess your
%% compliance against security best practices.
%%
%% In addition to generating control findings, Security Hub also receives
%% findings from other Amazon Web Services services,
%% such as Amazon GuardDuty and Amazon Inspector, and
%% supported third-party products. This gives you a single pane of glass into
%% a variety of security-related issues. You
%% can also send Security Hub findings to other Amazon Web Services services
%% and supported third-party products.
%%
%% Security Hub offers automation features that help you triage and remediate
%% security issues. For example,
%% you can use automation rules to automatically update critical findings
%% when a security check fails. You can also leverage the integration with
%% Amazon EventBridge to trigger automatic responses to specific findings.
%%
%% This guide, the Security Hub API Reference, provides
%% information about the Security Hub API. This includes supported resources,
%% HTTP methods, parameters,
%% and schemas. If you're new to Security Hub, you might find it helpful
%% to also review the
%% Security Hub User Guide
%% :
%% https://docs.aws.amazon.com/securityhub/latest/userguide/what-is-securityhub.html.
%% The
%% user guide explains key concepts and provides procedures
%% that demonstrate how to use Security Hub features. It also provides
%% information about topics such as
%% integrating Security Hub with other Amazon Web Services services.
%%
%% In addition to interacting with Security Hub by making calls to the
%% Security Hub API, you can
%% use a current version of an Amazon Web Services command line tool or SDK.
%% Amazon Web Services provides tools
%% and SDKs that consist of libraries and sample code for various languages
%% and platforms, such as PowerShell,
%% Java, Go, Python, C++, and .NET. These tools and SDKs provide convenient,
%% programmatic access to
%% Security Hub and other Amazon Web Services services . They also handle
%% tasks such as signing requests,
%% managing errors, and retrying requests automatically. For information
%% about installing and using the Amazon Web Services tools
%% and SDKs, see Tools to Build on Amazon Web Services:
%% http://aws.amazon.com/developer/tools/.
%%
%% With the exception of operations that are related to central
%% configuration, Security Hub API requests are executed only in
%% the Amazon Web Services Region that is currently active or in the specific
%% Amazon Web Services Region that you specify in your request. Any
%% configuration or settings change
%% that results from the operation is applied only to that Region. To make
%% the same change in
%% other Regions, call the same API operation in each Region in which you
%% want to apply the change. When you use central configuration,
%% API requests for enabling Security Hub, standards, and controls are
%% executed in the home Region and all linked Regions. For a list of
%% central configuration operations, see the Central configuration
%% terms and concepts:
%% https://docs.aws.amazon.com/securityhub/latest/userguide/central-configuration-intro.html#central-configuration-concepts
%% section of the Security Hub User Guide.
%%
%% The following throttling limits apply to Security Hub API operations.
%%
%% `BatchEnableStandards' - `RateLimit' of 1 request per
%% second. `BurstLimit' of 1 request per second.
%%
%% `GetFindings' - `RateLimit' of 3 requests per second.
%% `BurstLimit' of 6 requests per second.
%%
%% `BatchImportFindings' - `RateLimit' of 10 requests per second.
%% `BurstLimit' of 30 requests per second.
%%
%% `BatchUpdateFindings' - `RateLimit' of 10 requests per second.
%% `BurstLimit' of 30 requests per second.
%%
%% `UpdateStandardsControl' - `RateLimit' of 1 request per
%% second. `BurstLimit' of 5 requests per second.
%%
%% All other operations - `RateLimit' of 10 requests per second.
%% `BurstLimit' of 30 requests per second.
-module(aws_securityhub).

-export([accept_administrator_invitation/2,
         accept_administrator_invitation/3,
         accept_invitation/2,
         accept_invitation/3,
         batch_delete_automation_rules/2,
         batch_delete_automation_rules/3,
         batch_disable_standards/2,
         batch_disable_standards/3,
         batch_enable_standards/2,
         batch_enable_standards/3,
         batch_get_automation_rules/2,
         batch_get_automation_rules/3,
         batch_get_configuration_policy_associations/2,
         batch_get_configuration_policy_associations/3,
         batch_get_security_controls/2,
         batch_get_security_controls/3,
         batch_get_standards_control_associations/2,
         batch_get_standards_control_associations/3,
         batch_import_findings/2,
         batch_import_findings/3,
         batch_update_automation_rules/2,
         batch_update_automation_rules/3,
         batch_update_findings/2,
         batch_update_findings/3,
         batch_update_standards_control_associations/2,
         batch_update_standards_control_associations/3,
         create_action_target/2,
         create_action_target/3,
         create_automation_rule/2,
         create_automation_rule/3,
         create_configuration_policy/2,
         create_configuration_policy/3,
         create_finding_aggregator/2,
         create_finding_aggregator/3,
         create_insight/2,
         create_insight/3,
         create_members/2,
         create_members/3,
         decline_invitations/2,
         decline_invitations/3,
         delete_action_target/3,
         delete_action_target/4,
         delete_configuration_policy/3,
         delete_configuration_policy/4,
         delete_finding_aggregator/3,
         delete_finding_aggregator/4,
         delete_insight/3,
         delete_insight/4,
         delete_invitations/2,
         delete_invitations/3,
         delete_members/2,
         delete_members/3,
         describe_action_targets/2,
         describe_action_targets/3,
         describe_hub/1,
         describe_hub/3,
         describe_hub/4,
         describe_organization_configuration/1,
         describe_organization_configuration/3,
         describe_organization_configuration/4,
         describe_products/1,
         describe_products/3,
         describe_products/4,
         describe_standards/1,
         describe_standards/3,
         describe_standards/4,
         describe_standards_controls/2,
         describe_standards_controls/4,
         describe_standards_controls/5,
         disable_import_findings_for_product/3,
         disable_import_findings_for_product/4,
         disable_organization_admin_account/2,
         disable_organization_admin_account/3,
         disable_security_hub/2,
         disable_security_hub/3,
         disassociate_from_administrator_account/2,
         disassociate_from_administrator_account/3,
         disassociate_from_master_account/2,
         disassociate_from_master_account/3,
         disassociate_members/2,
         disassociate_members/3,
         enable_import_findings_for_product/2,
         enable_import_findings_for_product/3,
         enable_organization_admin_account/2,
         enable_organization_admin_account/3,
         enable_security_hub/2,
         enable_security_hub/3,
         get_administrator_account/1,
         get_administrator_account/3,
         get_administrator_account/4,
         get_configuration_policy/2,
         get_configuration_policy/4,
         get_configuration_policy/5,
         get_configuration_policy_association/2,
         get_configuration_policy_association/3,
         get_enabled_standards/2,
         get_enabled_standards/3,
         get_finding_aggregator/2,
         get_finding_aggregator/4,
         get_finding_aggregator/5,
         get_finding_history/2,
         get_finding_history/3,
         get_findings/2,
         get_findings/3,
         get_insight_results/2,
         get_insight_results/4,
         get_insight_results/5,
         get_insights/2,
         get_insights/3,
         get_invitations_count/1,
         get_invitations_count/3,
         get_invitations_count/4,
         get_master_account/1,
         get_master_account/3,
         get_master_account/4,
         get_members/2,
         get_members/3,
         get_security_control_definition/2,
         get_security_control_definition/4,
         get_security_control_definition/5,
         invite_members/2,
         invite_members/3,
         list_automation_rules/1,
         list_automation_rules/3,
         list_automation_rules/4,
         list_configuration_policies/1,
         list_configuration_policies/3,
         list_configuration_policies/4,
         list_configuration_policy_associations/2,
         list_configuration_policy_associations/3,
         list_enabled_products_for_import/1,
         list_enabled_products_for_import/3,
         list_enabled_products_for_import/4,
         list_finding_aggregators/1,
         list_finding_aggregators/3,
         list_finding_aggregators/4,
         list_invitations/1,
         list_invitations/3,
         list_invitations/4,
         list_members/1,
         list_members/3,
         list_members/4,
         list_organization_admin_accounts/1,
         list_organization_admin_accounts/3,
         list_organization_admin_accounts/4,
         list_security_control_definitions/1,
         list_security_control_definitions/3,
         list_security_control_definitions/4,
         list_standards_control_associations/2,
         list_standards_control_associations/4,
         list_standards_control_associations/5,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         start_configuration_policy_association/2,
         start_configuration_policy_association/3,
         start_configuration_policy_disassociation/2,
         start_configuration_policy_disassociation/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_action_target/3,
         update_action_target/4,
         update_configuration_policy/3,
         update_configuration_policy/4,
         update_finding_aggregator/2,
         update_finding_aggregator/3,
         update_findings/2,
         update_findings/3,
         update_insight/3,
         update_insight/4,
         update_organization_configuration/2,
         update_organization_configuration/3,
         update_security_control/2,
         update_security_control/3,
         update_security_hub_configuration/2,
         update_security_hub_configuration/3,
         update_standards_control/3,
         update_standards_control/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% describe_hub_request() :: #{
%%   <<"HubArn">> => string()
%% }
-type describe_hub_request() :: #{binary() => any()}.


%% Example:
%% aws_api_gateway_method_settings() :: #{
%%   <<"CacheDataEncrypted">> => boolean(),
%%   <<"CacheTtlInSeconds">> => integer(),
%%   <<"CachingEnabled">> => boolean(),
%%   <<"DataTraceEnabled">> => boolean(),
%%   <<"HttpMethod">> => string(),
%%   <<"LoggingLevel">> => string(),
%%   <<"MetricsEnabled">> => boolean(),
%%   <<"RequireAuthorizationForCacheControl">> => boolean(),
%%   <<"ResourcePath">> => string(),
%%   <<"ThrottlingBurstLimit">> => integer(),
%%   <<"ThrottlingRateLimit">> => float(),
%%   <<"UnauthorizedCacheControlHeaderStrategy">> => string()
%% }
-type aws_api_gateway_method_settings() :: #{binary() => any()}.

%% Example:
%% disassociate_from_master_account_request() :: #{}
-type disassociate_from_master_account_request() :: #{}.


%% Example:
%% update_standards_control_request() :: #{
%%   <<"ControlStatus">> => list(any()),
%%   <<"DisabledReason">> => string()
%% }
-type update_standards_control_request() :: #{binary() => any()}.


%% Example:
%% standards_managed_by() :: #{
%%   <<"Company">> => string(),
%%   <<"Product">> => string()
%% }
-type standards_managed_by() :: #{binary() => any()}.


%% Example:
%% aws_open_search_service_domain_cluster_config_zone_awareness_config_details() :: #{
%%   <<"AvailabilityZoneCount">> => integer()
%% }
-type aws_open_search_service_domain_cluster_config_zone_awareness_config_details() :: #{binary() => any()}.


%% Example:
%% aws_security_finding_filters() :: #{
%%   <<"ResourceContainerImageName">> => list(string_filter()()),
%%   <<"ResourceAwsEc2InstanceLaunchedAt">> => list(date_filter()()),
%%   <<"MalwareType">> => list(string_filter()()),
%%   <<"Confidence">> => list(number_filter()()),
%%   <<"ResourceId">> => list(string_filter()()),
%%   <<"ProductName">> => list(string_filter()()),
%%   <<"ResourceContainerLaunchedAt">> => list(date_filter()()),
%%   <<"RecordState">> => list(string_filter()()),
%%   <<"ResourceApplicationArn">> => list(string_filter()()),
%%   <<"FindingProviderFieldsRelatedFindingsId">> => list(string_filter()()),
%%   <<"ProcessPid">> => list(number_filter()()),
%%   <<"ProcessParentPid">> => list(number_filter()()),
%%   <<"ResourceContainerImageId">> => list(string_filter()()),
%%   <<"ComplianceSecurityControlParametersName">> => list(string_filter()()),
%%   <<"ResourceAwsEc2InstanceImageId">> => list(string_filter()()),
%%   <<"ResourceType">> => list(string_filter()()),
%%   <<"CompanyName">> => list(string_filter()()),
%%   <<"NetworkDestinationIpV6">> => list(ip_filter()()),
%%   <<"AwsAccountId">> => list(string_filter()()),
%%   <<"ResourceAwsIamAccessKeyCreatedAt">> => list(date_filter()()),
%%   <<"VulnerabilitiesFixAvailable">> => list(string_filter()()),
%%   <<"ThreatIntelIndicatorSource">> => list(string_filter()()),
%%   <<"GeneratorId">> => list(string_filter()()),
%%   <<"ThreatIntelIndicatorType">> => list(string_filter()()),
%%   <<"Id">> => list(string_filter()()),
%%   <<"ResourceAwsEc2InstanceIamInstanceProfileArn">> => list(string_filter()()),
%%   <<"ComplianceAssociatedStandardsId">> => list(string_filter()()),
%%   <<"RelatedFindingsId">> => list(string_filter()()),
%%   <<"NetworkProtocol">> => list(string_filter()()),
%%   <<"Region">> => list(string_filter()()),
%%   <<"FindingProviderFieldsCriticality">> => list(number_filter()()),
%%   <<"ComplianceSecurityControlParametersValue">> => list(string_filter()()),
%%   <<"ProcessLaunchedAt">> => list(date_filter()()),
%%   <<"ThreatIntelIndicatorLastObservedAt">> => list(date_filter()()),
%%   <<"Keyword">> => list(keyword_filter()()),
%%   <<"ResourceAwsEc2InstanceVpcId">> => list(string_filter()()),
%%   <<"ProductFields">> => list(map_filter()()),
%%   <<"NoteUpdatedAt">> => list(date_filter()()),
%%   <<"FindingProviderFieldsRelatedFindingsProductArn">> => list(string_filter()()),
%%   <<"MalwareState">> => list(string_filter()()),
%%   <<"ComplianceStatus">> => list(string_filter()()),
%%   <<"ProcessTerminatedAt">> => list(date_filter()()),
%%   <<"ResourceAwsS3BucketOwnerId">> => list(string_filter()()),
%%   <<"NoteUpdatedBy">> => list(string_filter()()),
%%   <<"NetworkDirection">> => list(string_filter()()),
%%   <<"ResourceAwsS3BucketOwnerName">> => list(string_filter()()),
%%   <<"ResourceAwsIamAccessKeyStatus">> => list(string_filter()()),
%%   <<"ProcessPath">> => list(string_filter()()),
%%   <<"WorkflowState">> => list(string_filter()()),
%%   <<"ThreatIntelIndicatorCategory">> => list(string_filter()()),
%%   <<"SourceUrl">> => list(string_filter()()),
%%   <<"Criticality">> => list(number_filter()()),
%%   <<"FindingProviderFieldsSeverityOriginal">> => list(string_filter()()),
%%   <<"NetworkSourceDomain">> => list(string_filter()()),
%%   <<"SeverityNormalized">> => list(number_filter()()),
%%   <<"ResourceAwsIamUserUserName">> => list(string_filter()()),
%%   <<"NoteText">> => list(string_filter()()),
%%   <<"ProcessName">> => list(string_filter()()),
%%   <<"SeverityLabel">> => list(string_filter()()),
%%   <<"ResourceAwsEc2InstanceType">> => list(string_filter()()),
%%   <<"FirstObservedAt">> => list(date_filter()()),
%%   <<"ResourceApplicationName">> => list(string_filter()()),
%%   <<"ResourceAwsEc2InstanceIpV4Addresses">> => list(ip_filter()()),
%%   <<"ResourceAwsIamAccessKeyUserName">> => list(string_filter()()),
%%   <<"FindingProviderFieldsTypes">> => list(string_filter()()),
%%   <<"ResourceDetailsOther">> => list(map_filter()()),
%%   <<"Type">> => list(string_filter()()),
%%   <<"Sample">> => list(boolean_filter()()),
%%   <<"RelatedFindingsProductArn">> => list(string_filter()()),
%%   <<"NetworkDestinationIpV4">> => list(ip_filter()()),
%%   <<"NetworkDestinationPort">> => list(number_filter()()),
%%   <<"WorkflowStatus">> => list(string_filter()()),
%%   <<"Title">> => list(string_filter()()),
%%   <<"MalwareName">> => list(string_filter()()),
%%   <<"RecommendationText">> => list(string_filter()()),
%%   <<"UserDefinedFields">> => list(map_filter()()),
%%   <<"ProductArn">> => list(string_filter()()),
%%   <<"ResourceAwsEc2InstanceKeyName">> => list(string_filter()()),
%%   <<"MalwarePath">> => list(string_filter()()),
%%   <<"ResourcePartition">> => list(string_filter()()),
%%   <<"CreatedAt">> => list(date_filter()()),
%%   <<"AwsAccountName">> => list(string_filter()()),
%%   <<"ResourceAwsEc2InstanceIpV6Addresses">> => list(ip_filter()()),
%%   <<"NetworkSourceIpV4">> => list(ip_filter()()),
%%   <<"VulnerabilitiesExploitAvailable">> => list(string_filter()()),
%%   <<"ResourceContainerName">> => list(string_filter()()),
%%   <<"NetworkDestinationDomain">> => list(string_filter()()),
%%   <<"ResourceTags">> => list(map_filter()()),
%%   <<"ComplianceSecurityControlId">> => list(string_filter()()),
%%   <<"ThreatIntelIndicatorValue">> => list(string_filter()()),
%%   <<"ResourceAwsIamAccessKeyPrincipalName">> => list(string_filter()()),
%%   <<"UpdatedAt">> => list(date_filter()()),
%%   <<"FindingProviderFieldsConfidence">> => list(number_filter()()),
%%   <<"FindingProviderFieldsSeverityLabel">> => list(string_filter()()),
%%   <<"NetworkSourceMac">> => list(string_filter()()),
%%   <<"ThreatIntelIndicatorSourceUrl">> => list(string_filter()()),
%%   <<"NetworkSourcePort">> => list(number_filter()()),
%%   <<"NetworkSourceIpV6">> => list(ip_filter()()),
%%   <<"Description">> => list(string_filter()()),
%%   <<"ResourceAwsEc2InstanceSubnetId">> => list(string_filter()()),
%%   <<"LastObservedAt">> => list(date_filter()()),
%%   <<"ResourceRegion">> => list(string_filter()()),
%%   <<"VerificationState">> => list(string_filter()()),
%%   <<"SeverityProduct">> => list(number_filter()())
%% }
-type aws_security_finding_filters() :: #{binary() => any()}.


%% Example:
%% get_finding_aggregator_response() :: #{
%%   <<"FindingAggregationRegion">> => string(),
%%   <<"FindingAggregatorArn">> => string(),
%%   <<"RegionLinkingMode">> => string(),
%%   <<"Regions">> => list(string()())
%% }
-type get_finding_aggregator_response() :: #{binary() => any()}.


%% Example:
%% aws_ecs_cluster_configuration_execute_command_configuration_details() :: #{
%%   <<"KmsKeyId">> => string(),
%%   <<"LogConfiguration">> => aws_ecs_cluster_configuration_execute_command_configuration_log_configuration_details(),
%%   <<"Logging">> => string()
%% }
-type aws_ecs_cluster_configuration_execute_command_configuration_details() :: #{binary() => any()}.


%% Example:
%% aws_ec2_launch_template_data_elastic_gpu_specification_set_details() :: #{
%%   <<"Type">> => string()
%% }
-type aws_ec2_launch_template_data_elastic_gpu_specification_set_details() :: #{binary() => any()}.


%% Example:
%% aws_dynamo_db_table_local_secondary_index() :: #{
%%   <<"IndexArn">> => string(),
%%   <<"IndexName">> => string(),
%%   <<"KeySchema">> => list(aws_dynamo_db_table_key_schema()()),
%%   <<"Projection">> => aws_dynamo_db_table_projection()
%% }
-type aws_dynamo_db_table_local_secondary_index() :: #{binary() => any()}.


%% Example:
%% import_findings_error() :: #{
%%   <<"ErrorCode">> => string(),
%%   <<"ErrorMessage">> => string(),
%%   <<"Id">> => string()
%% }
-type import_findings_error() :: #{binary() => any()}.


%% Example:
%% aws_elasticsearch_domain_elasticsearch_cluster_config_zone_awareness_config_details() :: #{
%%   <<"AvailabilityZoneCount">> => integer()
%% }
-type aws_elasticsearch_domain_elasticsearch_cluster_config_zone_awareness_config_details() :: #{binary() => any()}.


%% Example:
%% rule_group_source() :: #{
%%   <<"RulesSourceList">> => rule_group_source_list_details(),
%%   <<"RulesString">> => string(),
%%   <<"StatefulRules">> => list(rule_group_source_stateful_rules_details()()),
%%   <<"StatelessRulesAndCustomActions">> => rule_group_source_stateless_rules_and_custom_actions_details()
%% }
-type rule_group_source() :: #{binary() => any()}.


%% Example:
%% aws_ec2_client_vpn_endpoint_authentication_options_mutual_authentication_details() :: #{
%%   <<"ClientRootCertificateChain">> => string()
%% }
-type aws_ec2_client_vpn_endpoint_authentication_options_mutual_authentication_details() :: #{binary() => any()}.


%% Example:
%% aws_api_gateway_access_log_settings() :: #{
%%   <<"DestinationArn">> => string(),
%%   <<"Format">> => string()
%% }
-type aws_api_gateway_access_log_settings() :: #{binary() => any()}.


%% Example:
%% aws_redshift_cluster_cluster_node() :: #{
%%   <<"NodeRole">> => string(),
%%   <<"PrivateIpAddress">> => string(),
%%   <<"PublicIpAddress">> => string()
%% }
-type aws_redshift_cluster_cluster_node() :: #{binary() => any()}.


%% Example:
%% aws_redshift_cluster_resize_info() :: #{
%%   <<"AllowCancelResize">> => boolean(),
%%   <<"ResizeType">> => string()
%% }
-type aws_redshift_cluster_resize_info() :: #{binary() => any()}.


%% Example:
%% aws_ecs_task_definition_container_definitions_linux_parameters_capabilities_details() :: #{
%%   <<"Add">> => list(string()()),
%%   <<"Drop">> => list(string()())
%% }
-type aws_ecs_task_definition_container_definitions_linux_parameters_capabilities_details() :: #{binary() => any()}.


%% Example:
%% aws_lambda_function_dead_letter_config() :: #{
%%   <<"TargetArn">> => string()
%% }
-type aws_lambda_function_dead_letter_config() :: #{binary() => any()}.

%% Example:
%% delete_configuration_policy_response() :: #{}
-type delete_configuration_policy_response() :: #{}.


%% Example:
%% boolean_configuration_options() :: #{
%%   <<"DefaultValue">> => boolean()
%% }
-type boolean_configuration_options() :: #{binary() => any()}.


%% Example:
%% record() :: #{
%%   <<"JsonPath">> => string(),
%%   <<"RecordIndex">> => float()
%% }
-type record() :: #{binary() => any()}.


%% Example:
%% aws_route53_hosted_zone_details() :: #{
%%   <<"HostedZone">> => aws_route53_hosted_zone_object_details(),
%%   <<"NameServers">> => list(string()()),
%%   <<"QueryLoggingConfig">> => aws_route53_query_logging_config_details(),
%%   <<"Vpcs">> => list(aws_route53_hosted_zone_vpc_details()())
%% }
-type aws_route53_hosted_zone_details() :: #{binary() => any()}.


%% Example:
%% aws_wafv2_rules_details() :: #{
%%   <<"Action">> => aws_wafv2_rules_action_details(),
%%   <<"Name">> => string(),
%%   <<"OverrideAction">> => string(),
%%   <<"Priority">> => integer(),
%%   <<"VisibilityConfig">> => aws_wafv2_visibility_config_details()
%% }
-type aws_wafv2_rules_details() :: #{binary() => any()}.


%% Example:
%% integer_list_configuration_options() :: #{
%%   <<"DefaultValue">> => list(integer()()),
%%   <<"Max">> => integer(),
%%   <<"MaxItems">> => integer(),
%%   <<"Min">> => integer()
%% }
-type integer_list_configuration_options() :: #{binary() => any()}.


%% Example:
%% aws_iam_user_details() :: #{
%%   <<"AttachedManagedPolicies">> => list(aws_iam_attached_managed_policy()()),
%%   <<"CreateDate">> => string(),
%%   <<"GroupList">> => list(string()()),
%%   <<"Path">> => string(),
%%   <<"PermissionsBoundary">> => aws_iam_permissions_boundary(),
%%   <<"UserId">> => string(),
%%   <<"UserName">> => string(),
%%   <<"UserPolicyList">> => list(aws_iam_user_policy()())
%% }
-type aws_iam_user_details() :: #{binary() => any()}.


%% Example:
%% container_details() :: #{
%%   <<"ContainerRuntime">> => string(),
%%   <<"ImageId">> => string(),
%%   <<"ImageName">> => string(),
%%   <<"LaunchedAt">> => string(),
%%   <<"Name">> => string(),
%%   <<"Privileged">> => boolean(),
%%   <<"VolumeMounts">> => list(volume_mount()())
%% }
-type container_details() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"Tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% aws_iam_instance_profile_role() :: #{
%%   <<"Arn">> => string(),
%%   <<"AssumeRolePolicyDocument">> => string(),
%%   <<"CreateDate">> => string(),
%%   <<"Path">> => string(),
%%   <<"RoleId">> => string(),
%%   <<"RoleName">> => string()
%% }
-type aws_iam_instance_profile_role() :: #{binary() => any()}.


%% Example:
%% aws_rds_db_security_group_details() :: #{
%%   <<"DbSecurityGroupArn">> => string(),
%%   <<"DbSecurityGroupDescription">> => string(),
%%   <<"DbSecurityGroupName">> => string(),
%%   <<"Ec2SecurityGroups">> => list(aws_rds_db_security_group_ec2_security_group()()),
%%   <<"IpRanges">> => list(aws_rds_db_security_group_ip_range()()),
%%   <<"OwnerId">> => string(),
%%   <<"VpcId">> => string()
%% }
-type aws_rds_db_security_group_details() :: #{binary() => any()}.


%% Example:
%% describe_standards_controls_response() :: #{
%%   <<"Controls">> => list(standards_control()()),
%%   <<"NextToken">> => string()
%% }
-type describe_standards_controls_response() :: #{binary() => any()}.


%% Example:
%% aws_ecs_service_placement_constraints_details() :: #{
%%   <<"Expression">> => string(),
%%   <<"Type">> => string()
%% }
-type aws_ecs_service_placement_constraints_details() :: #{binary() => any()}.


%% Example:
%% range() :: #{
%%   <<"End">> => float(),
%%   <<"Start">> => float(),
%%   <<"StartColumn">> => float()
%% }
-type range() :: #{binary() => any()}.


%% Example:
%% aws_rds_db_security_group_ip_range() :: #{
%%   <<"CidrIp">> => string(),
%%   <<"Status">> => string()
%% }
-type aws_rds_db_security_group_ip_range() :: #{binary() => any()}.


%% Example:
%% aws_lambda_layer_version_details() :: #{
%%   <<"CompatibleRuntimes">> => list(string()()),
%%   <<"CreatedDate">> => string(),
%%   <<"Version">> => float()
%% }
-type aws_lambda_layer_version_details() :: #{binary() => any()}.


%% Example:
%% aws_api_gateway_v2_api_details() :: #{
%%   <<"ApiEndpoint">> => string(),
%%   <<"ApiId">> => string(),
%%   <<"ApiKeySelectionExpression">> => string(),
%%   <<"CorsConfiguration">> => aws_cors_configuration(),
%%   <<"CreatedDate">> => string(),
%%   <<"Description">> => string(),
%%   <<"Name">> => string(),
%%   <<"ProtocolType">> => string(),
%%   <<"RouteSelectionExpression">> => string(),
%%   <<"Version">> => string()
%% }
-type aws_api_gateway_v2_api_details() :: #{binary() => any()}.


%% Example:
%% decline_invitations_response() :: #{
%%   <<"UnprocessedAccounts">> => list(result()())
%% }
-type decline_invitations_response() :: #{binary() => any()}.


%% Example:
%% configuration_policy_association_summary() :: #{
%%   <<"AssociationStatus">> => list(any()),
%%   <<"AssociationStatusMessage">> => string(),
%%   <<"AssociationType">> => list(any()),
%%   <<"ConfigurationPolicyId">> => string(),
%%   <<"TargetId">> => string(),
%%   <<"TargetType">> => list(any()),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type configuration_policy_association_summary() :: #{binary() => any()}.


%% Example:
%% aws_redshift_cluster_endpoint() :: #{
%%   <<"Address">> => string(),
%%   <<"Port">> => integer()
%% }
-type aws_redshift_cluster_endpoint() :: #{binary() => any()}.


%% Example:
%% aws_dynamo_db_table_provisioned_throughput_override() :: #{
%%   <<"ReadCapacityUnits">> => integer()
%% }
-type aws_dynamo_db_table_provisioned_throughput_override() :: #{binary() => any()}.


%% Example:
%% firewall_policy_details() :: #{
%%   <<"StatefulRuleGroupReferences">> => list(firewall_policy_stateful_rule_group_references_details()()),
%%   <<"StatelessCustomActions">> => list(firewall_policy_stateless_custom_actions_details()()),
%%   <<"StatelessDefaultActions">> => list(string()()),
%%   <<"StatelessFragmentDefaultActions">> => list(string()()),
%%   <<"StatelessRuleGroupReferences">> => list(firewall_policy_stateless_rule_group_references_details()())
%% }
-type firewall_policy_details() :: #{binary() => any()}.


%% Example:
%% aws_iam_access_key_session_context_attributes() :: #{
%%   <<"CreationDate">> => string(),
%%   <<"MfaAuthenticated">> => boolean()
%% }
-type aws_iam_access_key_session_context_attributes() :: #{binary() => any()}.

%% Example:
%% disable_organization_admin_account_response() :: #{}
-type disable_organization_admin_account_response() :: #{}.


%% Example:
%% aws_cloud_front_distribution_default_cache_behavior() :: #{
%%   <<"ViewerProtocolPolicy">> => string()
%% }
-type aws_cloud_front_distribution_default_cache_behavior() :: #{binary() => any()}.


%% Example:
%% aws_elbv2_load_balancer_attribute() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type aws_elbv2_load_balancer_attribute() :: #{binary() => any()}.


%% Example:
%% security_control() :: #{
%%   <<"Description">> => string(),
%%   <<"LastUpdateReason">> => string(),
%%   <<"Parameters">> => map(),
%%   <<"RemediationUrl">> => string(),
%%   <<"SecurityControlArn">> => string(),
%%   <<"SecurityControlId">> => string(),
%%   <<"SecurityControlStatus">> => list(any()),
%%   <<"SeverityRating">> => list(any()),
%%   <<"Title">> => string(),
%%   <<"UpdateStatus">> => list(any())
%% }
-type security_control() :: #{binary() => any()}.


%% Example:
%% aws_s3_account_public_access_block_details() :: #{
%%   <<"BlockPublicAcls">> => boolean(),
%%   <<"BlockPublicPolicy">> => boolean(),
%%   <<"IgnorePublicAcls">> => boolean(),
%%   <<"RestrictPublicBuckets">> => boolean()
%% }
-type aws_s3_account_public_access_block_details() :: #{binary() => any()}.

%% Example:
%% disable_security_hub_response() :: #{}
-type disable_security_hub_response() :: #{}.


%% Example:
%% classification_status() :: #{
%%   <<"Code">> => string(),
%%   <<"Reason">> => string()
%% }
-type classification_status() :: #{binary() => any()}.


%% Example:
%% vulnerability() :: #{
%%   <<"CodeVulnerabilities">> => list(vulnerability_code_vulnerabilities()()),
%%   <<"Cvss">> => list(cvss()()),
%%   <<"EpssScore">> => float(),
%%   <<"ExploitAvailable">> => list(any()),
%%   <<"FixAvailable">> => list(any()),
%%   <<"Id">> => string(),
%%   <<"LastKnownExploitAt">> => string(),
%%   <<"ReferenceUrls">> => list(string()()),
%%   <<"RelatedVulnerabilities">> => list(string()()),
%%   <<"Vendor">> => vulnerability_vendor(),
%%   <<"VulnerablePackages">> => list(software_package()())
%% }
-type vulnerability() :: #{binary() => any()}.


%% Example:
%% aws_elastic_beanstalk_environment_environment_link() :: #{
%%   <<"EnvironmentName">> => string(),
%%   <<"LinkName">> => string()
%% }
-type aws_elastic_beanstalk_environment_environment_link() :: #{binary() => any()}.


%% Example:
%% aws_ecr_repository_details() :: #{
%%   <<"Arn">> => string(),
%%   <<"ImageScanningConfiguration">> => aws_ecr_repository_image_scanning_configuration_details(),
%%   <<"ImageTagMutability">> => string(),
%%   <<"LifecyclePolicy">> => aws_ecr_repository_lifecycle_policy_details(),
%%   <<"RepositoryName">> => string(),
%%   <<"RepositoryPolicyText">> => string()
%% }
-type aws_ecr_repository_details() :: #{binary() => any()}.


%% Example:
%% network_header() :: #{
%%   <<"Destination">> => network_path_component_details(),
%%   <<"Protocol">> => string(),
%%   <<"Source">> => network_path_component_details()
%% }
-type network_header() :: #{binary() => any()}.


%% Example:
%% get_insights_request() :: #{
%%   <<"InsightArns">> => list(string()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type get_insights_request() :: #{binary() => any()}.


%% Example:
%% availability_zone() :: #{
%%   <<"SubnetId">> => string(),
%%   <<"ZoneName">> => string()
%% }
-type availability_zone() :: #{binary() => any()}.

%% Example:
%% describe_organization_configuration_request() :: #{}
-type describe_organization_configuration_request() :: #{}.


%% Example:
%% aws_guard_duty_detector_data_sources_malware_protection_details() :: #{
%%   <<"ScanEc2InstanceWithFindings">> => aws_guard_duty_detector_data_sources_malware_protection_scan_ec2_instance_with_findings_details(),
%%   <<"ServiceRole">> => string()
%% }
-type aws_guard_duty_detector_data_sources_malware_protection_details() :: #{binary() => any()}.


%% Example:
%% aws_s3_bucket_bucket_lifecycle_configuration_rules_filter_predicate_operands_details() :: #{
%%   <<"Prefix">> => string(),
%%   <<"Tag">> => aws_s3_bucket_bucket_lifecycle_configuration_rules_filter_predicate_operands_tag_details(),
%%   <<"Type">> => string()
%% }
-type aws_s3_bucket_bucket_lifecycle_configuration_rules_filter_predicate_operands_details() :: #{binary() => any()}.


%% Example:
%% aws_open_search_service_domain_cluster_config_details() :: #{
%%   <<"DedicatedMasterCount">> => integer(),
%%   <<"DedicatedMasterEnabled">> => boolean(),
%%   <<"DedicatedMasterType">> => string(),
%%   <<"InstanceCount">> => integer(),
%%   <<"InstanceType">> => string(),
%%   <<"WarmCount">> => integer(),
%%   <<"WarmEnabled">> => boolean(),
%%   <<"WarmType">> => string(),
%%   <<"ZoneAwarenessConfig">> => aws_open_search_service_domain_cluster_config_zone_awareness_config_details(),
%%   <<"ZoneAwarenessEnabled">> => boolean()
%% }
-type aws_open_search_service_domain_cluster_config_details() :: #{binary() => any()}.


%% Example:
%% network_path_component() :: #{
%%   <<"ComponentId">> => string(),
%%   <<"ComponentType">> => string(),
%%   <<"Egress">> => network_header(),
%%   <<"Ingress">> => network_header()
%% }
-type network_path_component() :: #{binary() => any()}.


%% Example:
%% aws_redshift_cluster_cluster_parameter_group() :: #{
%%   <<"ClusterParameterStatusList">> => list(aws_redshift_cluster_cluster_parameter_status()()),
%%   <<"ParameterApplyStatus">> => string(),
%%   <<"ParameterGroupName">> => string()
%% }
-type aws_redshift_cluster_cluster_parameter_group() :: #{binary() => any()}.


%% Example:
%% aws_waf_regional_web_acl_rules_list_action_details() :: #{
%%   <<"Type">> => string()
%% }
-type aws_waf_regional_web_acl_rules_list_action_details() :: #{binary() => any()}.


%% Example:
%% association_state_details() :: #{
%%   <<"State">> => string(),
%%   <<"StatusMessage">> => string()
%% }
-type association_state_details() :: #{binary() => any()}.


%% Example:
%% aws_ec2_launch_template_data_instance_requirements_v_cpu_count_details() :: #{
%%   <<"Max">> => integer(),
%%   <<"Min">> => integer()
%% }
-type aws_ec2_launch_template_data_instance_requirements_v_cpu_count_details() :: #{binary() => any()}.


%% Example:
%% get_members_response() :: #{
%%   <<"Members">> => list(member()()),
%%   <<"UnprocessedAccounts">> => list(result()())
%% }
-type get_members_response() :: #{binary() => any()}.


%% Example:
%% waf_action() :: #{
%%   <<"Type">> => string()
%% }
-type waf_action() :: #{binary() => any()}.


%% Example:
%% status_reason() :: #{
%%   <<"Description">> => string(),
%%   <<"ReasonCode">> => string()
%% }
-type status_reason() :: #{binary() => any()}.


%% Example:
%% action_local_port_details() :: #{
%%   <<"Port">> => integer(),
%%   <<"PortName">> => string()
%% }
-type action_local_port_details() :: #{binary() => any()}.


%% Example:
%% aws_msk_cluster_cluster_info_client_authentication_details() :: #{
%%   <<"Sasl">> => aws_msk_cluster_cluster_info_client_authentication_sasl_details(),
%%   <<"Tls">> => aws_msk_cluster_cluster_info_client_authentication_tls_details(),
%%   <<"Unauthenticated">> => aws_msk_cluster_cluster_info_client_authentication_unauthenticated_details()
%% }
-type aws_msk_cluster_cluster_info_client_authentication_details() :: #{binary() => any()}.


%% Example:
%% waf_excluded_rule() :: #{
%%   <<"RuleId">> => string()
%% }
-type waf_excluded_rule() :: #{binary() => any()}.


%% Example:
%% aws_mount_point() :: #{
%%   <<"ContainerPath">> => string(),
%%   <<"SourceVolume">> => string()
%% }
-type aws_mount_point() :: #{binary() => any()}.


%% Example:
%% rule_group_source_stateless_rule_match_attributes_destination_ports() :: #{
%%   <<"FromPort">> => integer(),
%%   <<"ToPort">> => integer()
%% }
-type rule_group_source_stateless_rule_match_attributes_destination_ports() :: #{binary() => any()}.


%% Example:
%% admin_account() :: #{
%%   <<"AccountId">> => string(),
%%   <<"Status">> => list(any())
%% }
-type admin_account() :: #{binary() => any()}.


%% Example:
%% sequence() :: #{
%%   <<"Actors">> => list(actor()()),
%%   <<"Endpoints">> => list(network_endpoint()()),
%%   <<"SequenceIndicators">> => list(indicator()()),
%%   <<"Signals">> => list(signal()()),
%%   <<"Uid">> => string()
%% }
-type sequence() :: #{binary() => any()}.


%% Example:
%% remediation() :: #{
%%   <<"Recommendation">> => recommendation()
%% }
-type remediation() :: #{binary() => any()}.


%% Example:
%% aws_s3_bucket_bucket_lifecycle_configuration_rules_filter_predicate_details() :: #{
%%   <<"Operands">> => list(aws_s3_bucket_bucket_lifecycle_configuration_rules_filter_predicate_operands_details()()),
%%   <<"Prefix">> => string(),
%%   <<"Tag">> => aws_s3_bucket_bucket_lifecycle_configuration_rules_filter_predicate_tag_details(),
%%   <<"Type">> => string()
%% }
-type aws_s3_bucket_bucket_lifecycle_configuration_rules_filter_predicate_details() :: #{binary() => any()}.


%% Example:
%% aws_certificate_manager_certificate_options() :: #{
%%   <<"CertificateTransparencyLoggingPreference">> => string()
%% }
-type aws_certificate_manager_certificate_options() :: #{binary() => any()}.


%% Example:
%% aws_msk_cluster_cluster_info_details() :: #{
%%   <<"ClientAuthentication">> => aws_msk_cluster_cluster_info_client_authentication_details(),
%%   <<"ClusterName">> => string(),
%%   <<"CurrentVersion">> => string(),
%%   <<"EncryptionInfo">> => aws_msk_cluster_cluster_info_encryption_info_details(),
%%   <<"EnhancedMonitoring">> => string(),
%%   <<"NumberOfBrokerNodes">> => integer()
%% }
-type aws_msk_cluster_cluster_info_details() :: #{binary() => any()}.

%% Example:
%% disable_import_findings_for_product_response() :: #{}
-type disable_import_findings_for_product_response() :: #{}.


%% Example:
%% aws_ecs_task_definition_container_definitions_volumes_from_details() :: #{
%%   <<"ReadOnly">> => boolean(),
%%   <<"SourceContainer">> => string()
%% }
-type aws_ecs_task_definition_container_definitions_volumes_from_details() :: #{binary() => any()}.


%% Example:
%% accept_administrator_invitation_request() :: #{
%%   <<"AdministratorId">> := string(),
%%   <<"InvitationId">> := string()
%% }
-type accept_administrator_invitation_request() :: #{binary() => any()}.


%% Example:
%% rule_group_source_stateful_rules_header_details() :: #{
%%   <<"Destination">> => string(),
%%   <<"DestinationPort">> => string(),
%%   <<"Direction">> => string(),
%%   <<"Protocol">> => string(),
%%   <<"Source">> => string(),
%%   <<"SourcePort">> => string()
%% }
-type rule_group_source_stateful_rules_header_details() :: #{binary() => any()}.


%% Example:
%% batch_update_standards_control_associations_response() :: #{
%%   <<"UnprocessedAssociationUpdates">> => list(unprocessed_standards_control_association_update()())
%% }
-type batch_update_standards_control_associations_response() :: #{binary() => any()}.


%% Example:
%% classification_result() :: #{
%%   <<"AdditionalOccurrences">> => boolean(),
%%   <<"CustomDataIdentifiers">> => custom_data_identifiers_result(),
%%   <<"MimeType">> => string(),
%%   <<"SensitiveData">> => list(sensitive_data_result()()),
%%   <<"SizeClassified">> => float(),
%%   <<"Status">> => classification_status()
%% }
-type classification_result() :: #{binary() => any()}.


%% Example:
%% aws_certificate_manager_certificate_extended_key_usage() :: #{
%%   <<"Name">> => string(),
%%   <<"OId">> => string()
%% }
-type aws_certificate_manager_certificate_extended_key_usage() :: #{binary() => any()}.


%% Example:
%% aws_ecs_task_definition_container_definitions_mount_points_details() :: #{
%%   <<"ContainerPath">> => string(),
%%   <<"ReadOnly">> => boolean(),
%%   <<"SourceVolume">> => string()
%% }
-type aws_ecs_task_definition_container_definitions_mount_points_details() :: #{binary() => any()}.


%% Example:
%% ipv6_cidr_block_association() :: #{
%%   <<"AssociationId">> => string(),
%%   <<"CidrBlockState">> => string(),
%%   <<"Ipv6CidrBlock">> => string()
%% }
-type ipv6_cidr_block_association() :: #{binary() => any()}.


%% Example:
%% severity_update() :: #{
%%   <<"Label">> => list(any()),
%%   <<"Normalized">> => integer(),
%%   <<"Product">> => float()
%% }
-type severity_update() :: #{binary() => any()}.


%% Example:
%% action_remote_port_details() :: #{
%%   <<"Port">> => integer(),
%%   <<"PortName">> => string()
%% }
-type action_remote_port_details() :: #{binary() => any()}.


%% Example:
%% aws_s3_bucket_bucket_lifecycle_configuration_rules_noncurrent_version_transitions_details() :: #{
%%   <<"Days">> => integer(),
%%   <<"StorageClass">> => string()
%% }
-type aws_s3_bucket_bucket_lifecycle_configuration_rules_noncurrent_version_transitions_details() :: #{binary() => any()}.


%% Example:
%% aws_waf_regional_rule_group_details() :: #{
%%   <<"MetricName">> => string(),
%%   <<"Name">> => string(),
%%   <<"RuleGroupId">> => string(),
%%   <<"Rules">> => list(aws_waf_regional_rule_group_rules_details()())
%% }
-type aws_waf_regional_rule_group_details() :: #{binary() => any()}.


%% Example:
%% aws_guard_duty_detector_data_sources_kubernetes_details() :: #{
%%   <<"AuditLogs">> => aws_guard_duty_detector_data_sources_kubernetes_audit_logs_details()
%% }
-type aws_guard_duty_detector_data_sources_kubernetes_details() :: #{binary() => any()}.


%% Example:
%% aws_kinesis_stream_details() :: #{
%%   <<"Arn">> => string(),
%%   <<"Name">> => string(),
%%   <<"RetentionPeriodHours">> => integer(),
%%   <<"ShardCount">> => integer(),
%%   <<"StreamEncryption">> => aws_kinesis_stream_stream_encryption_details()
%% }
-type aws_kinesis_stream_details() :: #{binary() => any()}.


%% Example:
%% aws_ecs_task_volume_host_details() :: #{
%%   <<"SourcePath">> => string()
%% }
-type aws_ecs_task_volume_host_details() :: #{binary() => any()}.


%% Example:
%% aws_auto_scaling_launch_configuration_details() :: #{
%%   <<"AssociatePublicIpAddress">> => boolean(),
%%   <<"BlockDeviceMappings">> => list(aws_auto_scaling_launch_configuration_block_device_mappings_details()()),
%%   <<"ClassicLinkVpcId">> => string(),
%%   <<"ClassicLinkVpcSecurityGroups">> => list(string()()),
%%   <<"CreatedTime">> => string(),
%%   <<"EbsOptimized">> => boolean(),
%%   <<"IamInstanceProfile">> => string(),
%%   <<"ImageId">> => string(),
%%   <<"InstanceMonitoring">> => aws_auto_scaling_launch_configuration_instance_monitoring_details(),
%%   <<"InstanceType">> => string(),
%%   <<"KernelId">> => string(),
%%   <<"KeyName">> => string(),
%%   <<"LaunchConfigurationName">> => string(),
%%   <<"MetadataOptions">> => aws_auto_scaling_launch_configuration_metadata_options(),
%%   <<"PlacementTenancy">> => string(),
%%   <<"RamdiskId">> => string(),
%%   <<"SecurityGroups">> => list(string()()),
%%   <<"SpotPrice">> => string(),
%%   <<"UserData">> => string()
%% }
-type aws_auto_scaling_launch_configuration_details() :: #{binary() => any()}.

%% Example:
%% get_administrator_account_request() :: #{}
-type get_administrator_account_request() :: #{}.


%% Example:
%% process_details() :: #{
%%   <<"LaunchedAt">> => string(),
%%   <<"Name">> => string(),
%%   <<"ParentPid">> => integer(),
%%   <<"Path">> => string(),
%%   <<"Pid">> => integer(),
%%   <<"TerminatedAt">> => string()
%% }
-type process_details() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% aws_auto_scaling_auto_scaling_group_availability_zones_list_details() :: #{
%%   <<"Value">> => string()
%% }
-type aws_auto_scaling_auto_scaling_group_availability_zones_list_details() :: #{binary() => any()}.


%% Example:
%% sensitive_data_result() :: #{
%%   <<"Category">> => string(),
%%   <<"Detections">> => list(sensitive_data_detections()()),
%%   <<"TotalCount">> => float()
%% }
-type sensitive_data_result() :: #{binary() => any()}.

%% Example:
%% update_security_hub_configuration_response() :: #{}
-type update_security_hub_configuration_response() :: #{}.


%% Example:
%% aws_ec2_launch_template_data_block_device_mapping_set_details() :: #{
%%   <<"DeviceName">> => string(),
%%   <<"Ebs">> => aws_ec2_launch_template_data_block_device_mapping_set_ebs_details(),
%%   <<"NoDevice">> => string(),
%%   <<"VirtualName">> => string()
%% }
-type aws_ec2_launch_template_data_block_device_mapping_set_details() :: #{binary() => any()}.


%% Example:
%% aws_cloud_formation_stack_drift_information_details() :: #{
%%   <<"StackDriftStatus">> => string()
%% }
-type aws_cloud_formation_stack_drift_information_details() :: #{binary() => any()}.


%% Example:
%% network_connection_action() :: #{
%%   <<"Blocked">> => boolean(),
%%   <<"ConnectionDirection">> => string(),
%%   <<"LocalPortDetails">> => action_local_port_details(),
%%   <<"Protocol">> => string(),
%%   <<"RemoteIpDetails">> => action_remote_ip_details(),
%%   <<"RemotePortDetails">> => action_remote_port_details()
%% }
-type network_connection_action() :: #{binary() => any()}.


%% Example:
%% aws_s3_bucket_website_configuration_routing_rule_redirect() :: #{
%%   <<"Hostname">> => string(),
%%   <<"HttpRedirectCode">> => string(),
%%   <<"Protocol">> => string(),
%%   <<"ReplaceKeyPrefixWith">> => string(),
%%   <<"ReplaceKeyWith">> => string()
%% }
-type aws_s3_bucket_website_configuration_routing_rule_redirect() :: #{binary() => any()}.


%% Example:
%% create_action_target_response() :: #{
%%   <<"ActionTargetArn">> => string()
%% }
-type create_action_target_response() :: #{binary() => any()}.


%% Example:
%% aws_kinesis_stream_stream_encryption_details() :: #{
%%   <<"EncryptionType">> => string(),
%%   <<"KeyId">> => string()
%% }
-type aws_kinesis_stream_stream_encryption_details() :: #{binary() => any()}.


%% Example:
%% aws_rds_db_snapshot_details() :: #{
%%   <<"AllocatedStorage">> => integer(),
%%   <<"AvailabilityZone">> => string(),
%%   <<"DbInstanceIdentifier">> => string(),
%%   <<"DbSnapshotIdentifier">> => string(),
%%   <<"DbiResourceId">> => string(),
%%   <<"Encrypted">> => boolean(),
%%   <<"Engine">> => string(),
%%   <<"EngineVersion">> => string(),
%%   <<"IamDatabaseAuthenticationEnabled">> => boolean(),
%%   <<"InstanceCreateTime">> => string(),
%%   <<"Iops">> => integer(),
%%   <<"KmsKeyId">> => string(),
%%   <<"LicenseModel">> => string(),
%%   <<"MasterUsername">> => string(),
%%   <<"OptionGroupName">> => string(),
%%   <<"PercentProgress">> => integer(),
%%   <<"Port">> => integer(),
%%   <<"ProcessorFeatures">> => list(aws_rds_db_processor_feature()()),
%%   <<"SnapshotCreateTime">> => string(),
%%   <<"SnapshotType">> => string(),
%%   <<"SourceDbSnapshotIdentifier">> => string(),
%%   <<"SourceRegion">> => string(),
%%   <<"Status">> => string(),
%%   <<"StorageType">> => string(),
%%   <<"TdeCredentialArn">> => string(),
%%   <<"Timezone">> => string(),
%%   <<"VpcId">> => string()
%% }
-type aws_rds_db_snapshot_details() :: #{binary() => any()}.


%% Example:
%% batch_enable_standards_response() :: #{
%%   <<"StandardsSubscriptions">> => list(standards_subscription()())
%% }
-type batch_enable_standards_response() :: #{binary() => any()}.


%% Example:
%% aws_elasticsearch_domain_domain_endpoint_options() :: #{
%%   <<"EnforceHTTPS">> => boolean(),
%%   <<"TLSSecurityPolicy">> => string()
%% }
-type aws_elasticsearch_domain_domain_endpoint_options() :: #{binary() => any()}.


%% Example:
%% compliance() :: #{
%%   <<"AssociatedStandards">> => list(associated_standard()()),
%%   <<"RelatedRequirements">> => list(string()()),
%%   <<"SecurityControlId">> => string(),
%%   <<"SecurityControlParameters">> => list(security_control_parameter()()),
%%   <<"Status">> => list(any()),
%%   <<"StatusReasons">> => list(status_reason()())
%% }
-type compliance() :: #{binary() => any()}.


%% Example:
%% file_paths() :: #{
%%   <<"FileName">> => string(),
%%   <<"FilePath">> => string(),
%%   <<"Hash">> => string(),
%%   <<"ResourceId">> => string()
%% }
-type file_paths() :: #{binary() => any()}.


%% Example:
%% sensitive_data_detections() :: #{
%%   <<"Count">> => float(),
%%   <<"Occurrences">> => occurrences(),
%%   <<"Type">> => string()
%% }
-type sensitive_data_detections() :: #{binary() => any()}.

%% Example:
%% delete_action_target_request() :: #{}
-type delete_action_target_request() :: #{}.


%% Example:
%% aws_ecs_task_details() :: #{
%%   <<"ClusterArn">> => string(),
%%   <<"Containers">> => list(aws_ecs_container_details()()),
%%   <<"CreatedAt">> => string(),
%%   <<"Group">> => string(),
%%   <<"StartedAt">> => string(),
%%   <<"StartedBy">> => string(),
%%   <<"TaskDefinitionArn">> => string(),
%%   <<"Version">> => string(),
%%   <<"Volumes">> => list(aws_ecs_task_volume_details()())
%% }
-type aws_ecs_task_details() :: #{binary() => any()}.


%% Example:
%% resource_in_use_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string()
%% }
-type resource_in_use_exception() :: #{binary() => any()}.


%% Example:
%% aws_rds_db_instance_associated_role() :: #{
%%   <<"FeatureName">> => string(),
%%   <<"RoleArn">> => string(),
%%   <<"Status">> => string()
%% }
-type aws_rds_db_instance_associated_role() :: #{binary() => any()}.


%% Example:
%% create_configuration_policy_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"ConfigurationPolicy">> => list(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type create_configuration_policy_response() :: #{binary() => any()}.


%% Example:
%% aws_s3_access_point_vpc_configuration_details() :: #{
%%   <<"VpcId">> => string()
%% }
-type aws_s3_access_point_vpc_configuration_details() :: #{binary() => any()}.


%% Example:
%% aws_iam_attached_managed_policy() :: #{
%%   <<"PolicyArn">> => string(),
%%   <<"PolicyName">> => string()
%% }
-type aws_iam_attached_managed_policy() :: #{binary() => any()}.


%% Example:
%% aws_sqs_queue_details() :: #{
%%   <<"DeadLetterTargetArn">> => string(),
%%   <<"KmsDataKeyReusePeriodSeconds">> => integer(),
%%   <<"KmsMasterKeyId">> => string(),
%%   <<"QueueName">> => string()
%% }
-type aws_sqs_queue_details() :: #{binary() => any()}.


%% Example:
%% automation_rules_finding_filters() :: #{
%%   <<"Confidence">> => list(number_filter()()),
%%   <<"ResourceId">> => list(string_filter()()),
%%   <<"ProductName">> => list(string_filter()()),
%%   <<"RecordState">> => list(string_filter()()),
%%   <<"ResourceApplicationArn">> => list(string_filter()()),
%%   <<"ResourceType">> => list(string_filter()()),
%%   <<"CompanyName">> => list(string_filter()()),
%%   <<"AwsAccountId">> => list(string_filter()()),
%%   <<"GeneratorId">> => list(string_filter()()),
%%   <<"Id">> => list(string_filter()()),
%%   <<"ComplianceAssociatedStandardsId">> => list(string_filter()()),
%%   <<"RelatedFindingsId">> => list(string_filter()()),
%%   <<"NoteUpdatedAt">> => list(date_filter()()),
%%   <<"ComplianceStatus">> => list(string_filter()()),
%%   <<"NoteUpdatedBy">> => list(string_filter()()),
%%   <<"SourceUrl">> => list(string_filter()()),
%%   <<"Criticality">> => list(number_filter()()),
%%   <<"NoteText">> => list(string_filter()()),
%%   <<"SeverityLabel">> => list(string_filter()()),
%%   <<"FirstObservedAt">> => list(date_filter()()),
%%   <<"ResourceApplicationName">> => list(string_filter()()),
%%   <<"ResourceDetailsOther">> => list(map_filter()()),
%%   <<"Type">> => list(string_filter()()),
%%   <<"RelatedFindingsProductArn">> => list(string_filter()()),
%%   <<"WorkflowStatus">> => list(string_filter()()),
%%   <<"Title">> => list(string_filter()()),
%%   <<"UserDefinedFields">> => list(map_filter()()),
%%   <<"ProductArn">> => list(string_filter()()),
%%   <<"ResourcePartition">> => list(string_filter()()),
%%   <<"CreatedAt">> => list(date_filter()()),
%%   <<"AwsAccountName">> => list(string_filter()()),
%%   <<"ResourceTags">> => list(map_filter()()),
%%   <<"ComplianceSecurityControlId">> => list(string_filter()()),
%%   <<"UpdatedAt">> => list(date_filter()()),
%%   <<"Description">> => list(string_filter()()),
%%   <<"LastObservedAt">> => list(date_filter()()),
%%   <<"ResourceRegion">> => list(string_filter()()),
%%   <<"VerificationState">> => list(string_filter()())
%% }
-type automation_rules_finding_filters() :: #{binary() => any()}.


%% Example:
%% network_autonomous_system() :: #{
%%   <<"Name">> => string(),
%%   <<"Number">> => integer()
%% }
-type network_autonomous_system() :: #{binary() => any()}.


%% Example:
%% aws_ec2_network_interface_private_ip_address_detail() :: #{
%%   <<"PrivateDnsName">> => string(),
%%   <<"PrivateIpAddress">> => string()
%% }
-type aws_ec2_network_interface_private_ip_address_detail() :: #{binary() => any()}.


%% Example:
%% aws_app_sync_graph_ql_api_details() :: #{
%%   <<"AdditionalAuthenticationProviders">> => list(aws_app_sync_graph_ql_api_additional_authentication_providers_details()()),
%%   <<"ApiId">> => string(),
%%   <<"Arn">> => string(),
%%   <<"AuthenticationType">> => string(),
%%   <<"Id">> => string(),
%%   <<"LambdaAuthorizerConfig">> => aws_app_sync_graph_ql_api_lambda_authorizer_config_details(),
%%   <<"LogConfig">> => aws_app_sync_graph_ql_api_log_config_details(),
%%   <<"Name">> => string(),
%%   <<"OpenIdConnectConfig">> => aws_app_sync_graph_ql_api_open_id_connect_config_details(),
%%   <<"UserPoolConfig">> => aws_app_sync_graph_ql_api_user_pool_config_details(),
%%   <<"WafWebAclArn">> => string(),
%%   <<"XrayEnabled">> => boolean()
%% }
-type aws_app_sync_graph_ql_api_details() :: #{binary() => any()}.


%% Example:
%% rule_group_variables_ip_sets_details() :: #{
%%   <<"Definition">> => list(string()())
%% }
-type rule_group_variables_ip_sets_details() :: #{binary() => any()}.


%% Example:
%% batch_update_standards_control_associations_request() :: #{
%%   <<"StandardsControlAssociationUpdates">> := list(standards_control_association_update()())
%% }
-type batch_update_standards_control_associations_request() :: #{binary() => any()}.


%% Example:
%% aws_rds_pending_cloud_watch_logs_exports() :: #{
%%   <<"LogTypesToDisable">> => list(string()()),
%%   <<"LogTypesToEnable">> => list(string()())
%% }
-type aws_rds_pending_cloud_watch_logs_exports() :: #{binary() => any()}.


%% Example:
%% batch_get_configuration_policy_associations_response() :: #{
%%   <<"ConfigurationPolicyAssociations">> => list(configuration_policy_association_summary()()),
%%   <<"UnprocessedConfigurationPolicyAssociations">> => list(unprocessed_configuration_policy_association()())
%% }
-type batch_get_configuration_policy_associations_response() :: #{binary() => any()}.


%% Example:
%% aws_certificate_manager_certificate_domain_validation_option() :: #{
%%   <<"DomainName">> => string(),
%%   <<"ResourceRecord">> => aws_certificate_manager_certificate_resource_record(),
%%   <<"ValidationDomain">> => string(),
%%   <<"ValidationEmails">> => list(string()()),
%%   <<"ValidationMethod">> => string(),
%%   <<"ValidationStatus">> => string()
%% }
-type aws_certificate_manager_certificate_domain_validation_option() :: #{binary() => any()}.


%% Example:
%% organization_configuration() :: #{
%%   <<"ConfigurationType">> => list(any()),
%%   <<"Status">> => list(any()),
%%   <<"StatusMessage">> => string()
%% }
-type organization_configuration() :: #{binary() => any()}.


%% Example:
%% aws_wafv2_web_acl_action_details() :: #{
%%   <<"Allow">> => aws_wafv2_action_allow_details(),
%%   <<"Block">> => aws_wafv2_action_block_details()
%% }
-type aws_wafv2_web_acl_action_details() :: #{binary() => any()}.


%% Example:
%% aws_s3_bucket_bucket_lifecycle_configuration_rules_filter_details() :: #{
%%   <<"Predicate">> => aws_s3_bucket_bucket_lifecycle_configuration_rules_filter_predicate_details()
%% }
-type aws_s3_bucket_bucket_lifecycle_configuration_rules_filter_details() :: #{binary() => any()}.


%% Example:
%% aws_iam_group_details() :: #{
%%   <<"AttachedManagedPolicies">> => list(aws_iam_attached_managed_policy()()),
%%   <<"CreateDate">> => string(),
%%   <<"GroupId">> => string(),
%%   <<"GroupName">> => string(),
%%   <<"GroupPolicyList">> => list(aws_iam_group_policy()()),
%%   <<"Path">> => string()
%% }
-type aws_iam_group_details() :: #{binary() => any()}.

%% Example:
%% update_standards_control_response() :: #{}
-type update_standards_control_response() :: #{}.


%% Example:
%% automation_rules_metadata() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"CreatedBy">> => string(),
%%   <<"Description">> => string(),
%%   <<"IsTerminal">> => boolean(),
%%   <<"RuleArn">> => string(),
%%   <<"RuleName">> => string(),
%%   <<"RuleOrder">> => integer(),
%%   <<"RuleStatus">> => list(any()),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type automation_rules_metadata() :: #{binary() => any()}.


%% Example:
%% aws_step_function_state_machine_logging_configuration_destinations_cloud_watch_logs_log_group_details() :: #{
%%   <<"LogGroupArn">> => string()
%% }
-type aws_step_function_state_machine_logging_configuration_destinations_cloud_watch_logs_log_group_details() :: #{binary() => any()}.


%% Example:
%% aws_rds_db_instance_endpoint() :: #{
%%   <<"Address">> => string(),
%%   <<"HostedZoneId">> => string(),
%%   <<"Port">> => integer()
%% }
-type aws_rds_db_instance_endpoint() :: #{binary() => any()}.


%% Example:
%% aws_rds_event_subscription_details() :: #{
%%   <<"CustSubscriptionId">> => string(),
%%   <<"CustomerAwsId">> => string(),
%%   <<"Enabled">> => boolean(),
%%   <<"EventCategoriesList">> => list(string()()),
%%   <<"EventSubscriptionArn">> => string(),
%%   <<"SnsTopicArn">> => string(),
%%   <<"SourceIdsList">> => list(string()()),
%%   <<"SourceType">> => string(),
%%   <<"Status">> => string(),
%%   <<"SubscriptionCreationTime">> => string()
%% }
-type aws_rds_event_subscription_details() :: #{binary() => any()}.


%% Example:
%% aws_ec2_subnet_details() :: #{
%%   <<"AssignIpv6AddressOnCreation">> => boolean(),
%%   <<"AvailabilityZone">> => string(),
%%   <<"AvailabilityZoneId">> => string(),
%%   <<"AvailableIpAddressCount">> => integer(),
%%   <<"CidrBlock">> => string(),
%%   <<"DefaultForAz">> => boolean(),
%%   <<"Ipv6CidrBlockAssociationSet">> => list(ipv6_cidr_block_association()()),
%%   <<"MapPublicIpOnLaunch">> => boolean(),
%%   <<"OwnerId">> => string(),
%%   <<"State">> => string(),
%%   <<"SubnetArn">> => string(),
%%   <<"SubnetId">> => string(),
%%   <<"VpcId">> => string()
%% }
-type aws_ec2_subnet_details() :: #{binary() => any()}.


%% Example:
%% aws_ec2_launch_template_details() :: #{
%%   <<"DefaultVersionNumber">> => float(),
%%   <<"Id">> => string(),
%%   <<"LatestVersionNumber">> => float(),
%%   <<"LaunchTemplateData">> => aws_ec2_launch_template_data_details(),
%%   <<"LaunchTemplateName">> => string()
%% }
-type aws_ec2_launch_template_details() :: #{binary() => any()}.


%% Example:
%% aws_ec2_launch_template_data_metadata_options_details() :: #{
%%   <<"HttpEndpoint">> => string(),
%%   <<"HttpProtocolIpv6">> => string(),
%%   <<"HttpPutResponseHopLimit">> => integer(),
%%   <<"HttpTokens">> => string(),
%%   <<"InstanceMetadataTags">> => string()
%% }
-type aws_ec2_launch_template_data_metadata_options_details() :: #{binary() => any()}.


%% Example:
%% aws_rds_db_cluster_details() :: #{
%%   <<"PreferredBackupWindow">> => string(),
%%   <<"HttpEndpointEnabled">> => boolean(),
%%   <<"Port">> => integer(),
%%   <<"Engine">> => string(),
%%   <<"ClusterCreateTime">> => string(),
%%   <<"HostedZoneId">> => string(),
%%   <<"DomainMemberships">> => list(aws_rds_db_domain_membership()()),
%%   <<"DbClusterOptionGroupMemberships">> => list(aws_rds_db_cluster_option_group_membership()()),
%%   <<"ActivityStreamStatus">> => string(),
%%   <<"CopyTagsToSnapshot">> => boolean(),
%%   <<"DbClusterIdentifier">> => string(),
%%   <<"CrossAccountClone">> => boolean(),
%%   <<"MasterUsername">> => string(),
%%   <<"EngineVersion">> => string(),
%%   <<"EngineMode">> => string(),
%%   <<"DbClusterParameterGroup">> => string(),
%%   <<"MultiAz">> => boolean(),
%%   <<"IamDatabaseAuthenticationEnabled">> => boolean(),
%%   <<"AvailabilityZones">> => list(string()()),
%%   <<"ReaderEndpoint">> => string(),
%%   <<"BackupRetentionPeriod">> => integer(),
%%   <<"AssociatedRoles">> => list(aws_rds_db_cluster_associated_role()()),
%%   <<"CustomEndpoints">> => list(string()()),
%%   <<"DatabaseName">> => string(),
%%   <<"KmsKeyId">> => string(),
%%   <<"DbClusterResourceId">> => string(),
%%   <<"Endpoint">> => string(),
%%   <<"PreferredMaintenanceWindow">> => string(),
%%   <<"VpcSecurityGroups">> => list(aws_rds_db_instance_vpc_security_group()()),
%%   <<"DbSubnetGroup">> => string(),
%%   <<"AutoMinorVersionUpgrade">> => boolean(),
%%   <<"DbClusterMembers">> => list(aws_rds_db_cluster_member()()),
%%   <<"AllocatedStorage">> => integer(),
%%   <<"Status">> => string(),
%%   <<"EnabledCloudWatchLogsExports">> => list(string()()),
%%   <<"StorageEncrypted">> => boolean(),
%%   <<"ReadReplicaIdentifiers">> => list(string()()),
%%   <<"DeletionProtection">> => boolean()
%% }
-type aws_rds_db_cluster_details() :: #{binary() => any()}.


%% Example:
%% describe_standards_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_standards_request() :: #{binary() => any()}.


%% Example:
%% aws_wafv2_action_block_details() :: #{
%%   <<"CustomResponse">> => aws_wafv2_custom_response_details()
%% }
-type aws_wafv2_action_block_details() :: #{binary() => any()}.


%% Example:
%% invitation() :: #{
%%   <<"AccountId">> => string(),
%%   <<"InvitationId">> => string(),
%%   <<"InvitedAt">> => non_neg_integer(),
%%   <<"MemberStatus">> => string()
%% }
-type invitation() :: #{binary() => any()}.

%% Example:
%% disassociate_from_master_account_response() :: #{}
-type disassociate_from_master_account_response() :: #{}.


%% Example:
%% aws_iam_access_key_details() :: #{
%%   <<"AccessKeyId">> => string(),
%%   <<"AccountId">> => string(),
%%   <<"CreatedAt">> => string(),
%%   <<"PrincipalId">> => string(),
%%   <<"PrincipalName">> => string(),
%%   <<"PrincipalType">> => string(),
%%   <<"SessionContext">> => aws_iam_access_key_session_context(),
%%   <<"Status">> => list(any()),
%%   <<"UserName">> => string()
%% }
-type aws_iam_access_key_details() :: #{binary() => any()}.


%% Example:
%% aws_dynamo_db_table_key_schema() :: #{
%%   <<"AttributeName">> => string(),
%%   <<"KeyType">> => string()
%% }
-type aws_dynamo_db_table_key_schema() :: #{binary() => any()}.


%% Example:
%% related_finding() :: #{
%%   <<"Id">> => string(),
%%   <<"ProductArn">> => string()
%% }
-type related_finding() :: #{binary() => any()}.


%% Example:
%% batch_update_automation_rules_response() :: #{
%%   <<"ProcessedAutomationRules">> => list(string()()),
%%   <<"UnprocessedAutomationRules">> => list(unprocessed_automation_rule()())
%% }
-type batch_update_automation_rules_response() :: #{binary() => any()}.


%% Example:
%% describe_products_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ProductArn">> => string()
%% }
-type describe_products_request() :: #{binary() => any()}.


%% Example:
%% aws_iam_access_key_session_context() :: #{
%%   <<"Attributes">> => aws_iam_access_key_session_context_attributes(),
%%   <<"SessionIssuer">> => aws_iam_access_key_session_context_session_issuer()
%% }
-type aws_iam_access_key_session_context() :: #{binary() => any()}.


%% Example:
%% aws_ecs_task_definition_proxy_configuration_proxy_configuration_properties_details() :: #{
%%   <<"Name">> => string(),
%%   <<"Value">> => string()
%% }
-type aws_ecs_task_definition_proxy_configuration_proxy_configuration_properties_details() :: #{binary() => any()}.


%% Example:
%% aws_ec2_launch_template_data_network_interface_set_details() :: #{
%%   <<"AssociateCarrierIpAddress">> => boolean(),
%%   <<"AssociatePublicIpAddress">> => boolean(),
%%   <<"DeleteOnTermination">> => boolean(),
%%   <<"Description">> => string(),
%%   <<"DeviceIndex">> => integer(),
%%   <<"Groups">> => list(string()()),
%%   <<"InterfaceType">> => string(),
%%   <<"Ipv4PrefixCount">> => integer(),
%%   <<"Ipv4Prefixes">> => list(aws_ec2_launch_template_data_network_interface_set_ipv4_prefixes_details()()),
%%   <<"Ipv6AddressCount">> => integer(),
%%   <<"Ipv6Addresses">> => list(aws_ec2_launch_template_data_network_interface_set_ipv6_addresses_details()()),
%%   <<"Ipv6PrefixCount">> => integer(),
%%   <<"Ipv6Prefixes">> => list(aws_ec2_launch_template_data_network_interface_set_ipv6_prefixes_details()()),
%%   <<"NetworkCardIndex">> => integer(),
%%   <<"NetworkInterfaceId">> => string(),
%%   <<"PrivateIpAddress">> => string(),
%%   <<"PrivateIpAddresses">> => list(aws_ec2_launch_template_data_network_interface_set_private_ip_addresses_details()()),
%%   <<"SecondaryPrivateIpAddressCount">> => integer(),
%%   <<"SubnetId">> => string()
%% }
-type aws_ec2_launch_template_data_network_interface_set_details() :: #{binary() => any()}.


%% Example:
%% aws_rds_db_status_info() :: #{
%%   <<"Message">> => string(),
%%   <<"Normal">> => boolean(),
%%   <<"Status">> => string(),
%%   <<"StatusType">> => string()
%% }
-type aws_rds_db_status_info() :: #{binary() => any()}.


%% Example:
%% aws_backup_recovery_point_details() :: #{
%%   <<"BackupSizeInBytes">> => float(),
%%   <<"BackupVaultArn">> => string(),
%%   <<"BackupVaultName">> => string(),
%%   <<"CalculatedLifecycle">> => aws_backup_recovery_point_calculated_lifecycle_details(),
%%   <<"CompletionDate">> => string(),
%%   <<"CreatedBy">> => aws_backup_recovery_point_created_by_details(),
%%   <<"CreationDate">> => string(),
%%   <<"EncryptionKeyArn">> => string(),
%%   <<"IamRoleArn">> => string(),
%%   <<"IsEncrypted">> => boolean(),
%%   <<"LastRestoreTime">> => string(),
%%   <<"Lifecycle">> => aws_backup_recovery_point_lifecycle_details(),
%%   <<"RecoveryPointArn">> => string(),
%%   <<"ResourceArn">> => string(),
%%   <<"ResourceType">> => string(),
%%   <<"SourceBackupVaultArn">> => string(),
%%   <<"Status">> => string(),
%%   <<"StatusMessage">> => string(),
%%   <<"StorageClass">> => string()
%% }
-type aws_backup_recovery_point_details() :: #{binary() => any()}.


%% Example:
%% aws_cloud_front_distribution_origin_item() :: #{
%%   <<"CustomOriginConfig">> => aws_cloud_front_distribution_origin_custom_origin_config(),
%%   <<"DomainName">> => string(),
%%   <<"Id">> => string(),
%%   <<"OriginPath">> => string(),
%%   <<"S3OriginConfig">> => aws_cloud_front_distribution_origin_s3_origin_config()
%% }
-type aws_cloud_front_distribution_origin_item() :: #{binary() => any()}.


%% Example:
%% aws_ecs_task_definition_container_definitions_health_check_details() :: #{
%%   <<"Command">> => list(string()()),
%%   <<"Interval">> => integer(),
%%   <<"Retries">> => integer(),
%%   <<"StartPeriod">> => integer(),
%%   <<"Timeout">> => integer()
%% }
-type aws_ecs_task_definition_container_definitions_health_check_details() :: #{binary() => any()}.


%% Example:
%% aws_elb_load_balancer_access_log() :: #{
%%   <<"EmitInterval">> => integer(),
%%   <<"Enabled">> => boolean(),
%%   <<"S3BucketName">> => string(),
%%   <<"S3BucketPrefix">> => string()
%% }
-type aws_elb_load_balancer_access_log() :: #{binary() => any()}.


%% Example:
%% list_standards_control_associations_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SecurityControlId">> := string()
%% }
-type list_standards_control_associations_request() :: #{binary() => any()}.


%% Example:
%% aws_ec2_network_acl_association() :: #{
%%   <<"NetworkAclAssociationId">> => string(),
%%   <<"NetworkAclId">> => string(),
%%   <<"SubnetId">> => string()
%% }
-type aws_ec2_network_acl_association() :: #{binary() => any()}.


%% Example:
%% insight_result_value() :: #{
%%   <<"Count">> => integer(),
%%   <<"GroupByAttributeValue">> => string()
%% }
-type insight_result_value() :: #{binary() => any()}.


%% Example:
%% batch_disable_standards_response() :: #{
%%   <<"StandardsSubscriptions">> => list(standards_subscription()())
%% }
-type batch_disable_standards_response() :: #{binary() => any()}.


%% Example:
%% aws_iam_user_policy() :: #{
%%   <<"PolicyName">> => string()
%% }
-type aws_iam_user_policy() :: #{binary() => any()}.


%% Example:
%% aws_security_finding_identifier() :: #{
%%   <<"Id">> => string(),
%%   <<"ProductArn">> => string()
%% }
-type aws_security_finding_identifier() :: #{binary() => any()}.


%% Example:
%% aws_cloud_front_distribution_origin_groups() :: #{
%%   <<"Items">> => list(aws_cloud_front_distribution_origin_group()())
%% }
-type aws_cloud_front_distribution_origin_groups() :: #{binary() => any()}.


%% Example:
%% aws_rds_db_cluster_option_group_membership() :: #{
%%   <<"DbClusterOptionGroupName">> => string(),
%%   <<"Status">> => string()
%% }
-type aws_rds_db_cluster_option_group_membership() :: #{binary() => any()}.


%% Example:
%% aws_ec2_network_acl_details() :: #{
%%   <<"Associations">> => list(aws_ec2_network_acl_association()()),
%%   <<"Entries">> => list(aws_ec2_network_acl_entry()()),
%%   <<"IsDefault">> => boolean(),
%%   <<"NetworkAclId">> => string(),
%%   <<"OwnerId">> => string(),
%%   <<"VpcId">> => string()
%% }
-type aws_ec2_network_acl_details() :: #{binary() => any()}.


%% Example:
%% aws_ec2_instance_network_interfaces_details() :: #{
%%   <<"NetworkInterfaceId">> => string()
%% }
-type aws_ec2_instance_network_interfaces_details() :: #{binary() => any()}.


%% Example:
%% network_geo_location() :: #{
%%   <<"City">> => string(),
%%   <<"Country">> => string(),
%%   <<"Lat">> => float(),
%%   <<"Lon">> => float()
%% }
-type network_geo_location() :: #{binary() => any()}.


%% Example:
%% aws_events_endpoint_replication_config_details() :: #{
%%   <<"State">> => string()
%% }
-type aws_events_endpoint_replication_config_details() :: #{binary() => any()}.


%% Example:
%% aws_cloud_front_distribution_origin_group() :: #{
%%   <<"FailoverCriteria">> => aws_cloud_front_distribution_origin_group_failover()
%% }
-type aws_cloud_front_distribution_origin_group() :: #{binary() => any()}.


%% Example:
%% parameter_definition() :: #{
%%   <<"ConfigurationOptions">> => list(),
%%   <<"Description">> => string()
%% }
-type parameter_definition() :: #{binary() => any()}.


%% Example:
%% aws_dynamo_db_table_global_secondary_index() :: #{
%%   <<"Backfilling">> => boolean(),
%%   <<"IndexArn">> => string(),
%%   <<"IndexName">> => string(),
%%   <<"IndexSizeBytes">> => float(),
%%   <<"IndexStatus">> => string(),
%%   <<"ItemCount">> => integer(),
%%   <<"KeySchema">> => list(aws_dynamo_db_table_key_schema()()),
%%   <<"Projection">> => aws_dynamo_db_table_projection(),
%%   <<"ProvisionedThroughput">> => aws_dynamo_db_table_provisioned_throughput()
%% }
-type aws_dynamo_db_table_global_secondary_index() :: #{binary() => any()}.


%% Example:
%% get_finding_history_request() :: #{
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"FindingIdentifier">> := aws_security_finding_identifier(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"StartTime">> => non_neg_integer()
%% }
-type get_finding_history_request() :: #{binary() => any()}.


%% Example:
%% aws_eks_cluster_details() :: #{
%%   <<"Arn">> => string(),
%%   <<"CertificateAuthorityData">> => string(),
%%   <<"ClusterStatus">> => string(),
%%   <<"Endpoint">> => string(),
%%   <<"Logging">> => aws_eks_cluster_logging_details(),
%%   <<"Name">> => string(),
%%   <<"ResourcesVpcConfig">> => aws_eks_cluster_resources_vpc_config_details(),
%%   <<"RoleArn">> => string(),
%%   <<"Version">> => string()
%% }
-type aws_eks_cluster_details() :: #{binary() => any()}.


%% Example:
%% aws_redshift_cluster_deferred_maintenance_window() :: #{
%%   <<"DeferMaintenanceEndTime">> => string(),
%%   <<"DeferMaintenanceIdentifier">> => string(),
%%   <<"DeferMaintenanceStartTime">> => string()
%% }
-type aws_redshift_cluster_deferred_maintenance_window() :: #{binary() => any()}.


%% Example:
%% aws_ec2_vpc_endpoint_service_details() :: #{
%%   <<"AcceptanceRequired">> => boolean(),
%%   <<"AvailabilityZones">> => list(string()()),
%%   <<"BaseEndpointDnsNames">> => list(string()()),
%%   <<"GatewayLoadBalancerArns">> => list(string()()),
%%   <<"ManagesVpcEndpoints">> => boolean(),
%%   <<"NetworkLoadBalancerArns">> => list(string()()),
%%   <<"PrivateDnsName">> => string(),
%%   <<"ServiceId">> => string(),
%%   <<"ServiceName">> => string(),
%%   <<"ServiceState">> => string(),
%%   <<"ServiceType">> => list(aws_ec2_vpc_endpoint_service_service_type_details()())
%% }
-type aws_ec2_vpc_endpoint_service_details() :: #{binary() => any()}.


%% Example:
%% aws_elb_load_balancer_connection_settings() :: #{
%%   <<"IdleTimeout">> => integer()
%% }
-type aws_elb_load_balancer_connection_settings() :: #{binary() => any()}.

%% Example:
%% delete_finding_aggregator_request() :: #{}
-type delete_finding_aggregator_request() :: #{}.


%% Example:
%% automation_rules_finding_fields_update() :: #{
%%   <<"Confidence">> => integer(),
%%   <<"Criticality">> => integer(),
%%   <<"Note">> => note_update(),
%%   <<"RelatedFindings">> => list(related_finding()()),
%%   <<"Severity">> => severity_update(),
%%   <<"Types">> => list(string()()),
%%   <<"UserDefinedFields">> => map(),
%%   <<"VerificationState">> => list(any()),
%%   <<"Workflow">> => workflow_update()
%% }
-type automation_rules_finding_fields_update() :: #{binary() => any()}.


%% Example:
%% aws_s3_bucket_notification_configuration_filter() :: #{
%%   <<"S3KeyFilter">> => aws_s3_bucket_notification_configuration_s3_key_filter()
%% }
-type aws_s3_bucket_notification_configuration_filter() :: #{binary() => any()}.


%% Example:
%% aws_ecs_service_deployment_configuration_details() :: #{
%%   <<"DeploymentCircuitBreaker">> => aws_ecs_service_deployment_configuration_deployment_circuit_breaker_details(),
%%   <<"MaximumPercent">> => integer(),
%%   <<"MinimumHealthyPercent">> => integer()
%% }
-type aws_ecs_service_deployment_configuration_details() :: #{binary() => any()}.


%% Example:
%% aws_ec2_launch_template_data_enclave_options_details() :: #{
%%   <<"Enabled">> => boolean()
%% }
-type aws_ec2_launch_template_data_enclave_options_details() :: #{binary() => any()}.

%% Example:
%% enable_security_hub_response() :: #{}
-type enable_security_hub_response() :: #{}.


%% Example:
%% stateless_custom_publish_metric_action_dimension() :: #{
%%   <<"Value">> => string()
%% }
-type stateless_custom_publish_metric_action_dimension() :: #{binary() => any()}.


%% Example:
%% aws_redshift_cluster_cluster_security_group() :: #{
%%   <<"ClusterSecurityGroupName">> => string(),
%%   <<"Status">> => string()
%% }
-type aws_redshift_cluster_cluster_security_group() :: #{binary() => any()}.


%% Example:
%% aws_ec2_client_vpn_endpoint_authentication_options_active_directory_details() :: #{
%%   <<"DirectoryId">> => string()
%% }
-type aws_ec2_client_vpn_endpoint_authentication_options_active_directory_details() :: #{binary() => any()}.


%% Example:
%% cell() :: #{
%%   <<"CellReference">> => string(),
%%   <<"Column">> => float(),
%%   <<"ColumnName">> => string(),
%%   <<"Row">> => float()
%% }
-type cell() :: #{binary() => any()}.


%% Example:
%% aws_ec2_launch_template_data_instance_requirements_memory_gi_b_per_v_cpu_details() :: #{
%%   <<"Max">> => float(),
%%   <<"Min">> => float()
%% }
-type aws_ec2_launch_template_data_instance_requirements_memory_gi_b_per_v_cpu_details() :: #{binary() => any()}.


%% Example:
%% aws_backup_backup_vault_notifications_details() :: #{
%%   <<"BackupVaultEvents">> => list(string()()),
%%   <<"SnsTopicArn">> => string()
%% }
-type aws_backup_backup_vault_notifications_details() :: #{binary() => any()}.


%% Example:
%% standards_control_association_id() :: #{
%%   <<"SecurityControlId">> => string(),
%%   <<"StandardsArn">> => string()
%% }
-type standards_control_association_id() :: #{binary() => any()}.


%% Example:
%% aws_s3_bucket_logging_configuration() :: #{
%%   <<"DestinationBucketName">> => string(),
%%   <<"LogFilePrefix">> => string()
%% }
-type aws_s3_bucket_logging_configuration() :: #{binary() => any()}.


%% Example:
%% describe_action_targets_response() :: #{
%%   <<"ActionTargets">> => list(action_target()()),
%%   <<"NextToken">> => string()
%% }
-type describe_action_targets_response() :: #{binary() => any()}.


%% Example:
%% aws_rds_db_option_group_membership() :: #{
%%   <<"OptionGroupName">> => string(),
%%   <<"Status">> => string()
%% }
-type aws_rds_db_option_group_membership() :: #{binary() => any()}.


%% Example:
%% aws_ecs_cluster_configuration_details() :: #{
%%   <<"ExecuteCommandConfiguration">> => aws_ecs_cluster_configuration_execute_command_configuration_details()
%% }
-type aws_ecs_cluster_configuration_details() :: #{binary() => any()}.


%% Example:
%% get_insight_results_response() :: #{
%%   <<"InsightResults">> => insight_results()
%% }
-type get_insight_results_response() :: #{binary() => any()}.


%% Example:
%% aws_s3_bucket_notification_configuration() :: #{
%%   <<"Configurations">> => list(aws_s3_bucket_notification_configuration_detail()())
%% }
-type aws_s3_bucket_notification_configuration() :: #{binary() => any()}.


%% Example:
%% aws_ec2_instance_metadata_options() :: #{
%%   <<"HttpEndpoint">> => string(),
%%   <<"HttpProtocolIpv6">> => string(),
%%   <<"HttpPutResponseHopLimit">> => integer(),
%%   <<"HttpTokens">> => string(),
%%   <<"InstanceMetadataTags">> => string()
%% }
-type aws_ec2_instance_metadata_options() :: #{binary() => any()}.


%% Example:
%% aws_ecs_cluster_configuration_execute_command_configuration_log_configuration_details() :: #{
%%   <<"CloudWatchEncryptionEnabled">> => boolean(),
%%   <<"CloudWatchLogGroupName">> => string(),
%%   <<"S3BucketName">> => string(),
%%   <<"S3EncryptionEnabled">> => boolean(),
%%   <<"S3KeyPrefix">> => string()
%% }
-type aws_ecs_cluster_configuration_execute_command_configuration_log_configuration_details() :: #{binary() => any()}.


%% Example:
%% firewall_policy_stateless_custom_actions_details() :: #{
%%   <<"ActionDefinition">> => stateless_custom_action_definition(),
%%   <<"ActionName">> => string()
%% }
-type firewall_policy_stateless_custom_actions_details() :: #{binary() => any()}.


%% Example:
%% aws_msk_cluster_details() :: #{
%%   <<"ClusterInfo">> => aws_msk_cluster_cluster_info_details()
%% }
-type aws_msk_cluster_details() :: #{binary() => any()}.


%% Example:
%% aws_ec2_launch_template_data_license_set_details() :: #{
%%   <<"LicenseConfigurationArn">> => string()
%% }
-type aws_ec2_launch_template_data_license_set_details() :: #{binary() => any()}.


%% Example:
%% rule_group_source_list_details() :: #{
%%   <<"GeneratedRulesType">> => string(),
%%   <<"TargetTypes">> => list(string()()),
%%   <<"Targets">> => list(string()())
%% }
-type rule_group_source_list_details() :: #{binary() => any()}.


%% Example:
%% aws_redshift_cluster_pending_modified_values() :: #{
%%   <<"AutomatedSnapshotRetentionPeriod">> => integer(),
%%   <<"ClusterIdentifier">> => string(),
%%   <<"ClusterType">> => string(),
%%   <<"ClusterVersion">> => string(),
%%   <<"EncryptionType">> => string(),
%%   <<"EnhancedVpcRouting">> => boolean(),
%%   <<"MaintenanceTrackName">> => string(),
%%   <<"MasterUserPassword">> => string(),
%%   <<"NodeType">> => string(),
%%   <<"NumberOfNodes">> => integer(),
%%   <<"PubliclyAccessible">> => boolean()
%% }
-type aws_redshift_cluster_pending_modified_values() :: #{binary() => any()}.


%% Example:
%% aws_ecs_task_definition_container_definitions_resource_requirements_details() :: #{
%%   <<"Type">> => string(),
%%   <<"Value">> => string()
%% }
-type aws_ecs_task_definition_container_definitions_resource_requirements_details() :: #{binary() => any()}.


%% Example:
%% aws_code_build_project_logs_config_details() :: #{
%%   <<"CloudWatchLogs">> => aws_code_build_project_logs_config_cloud_watch_logs_details(),
%%   <<"S3Logs">> => aws_code_build_project_logs_config_s3_logs_details()
%% }
-type aws_code_build_project_logs_config_details() :: #{binary() => any()}.


%% Example:
%% aws_elb_load_balancer_connection_draining() :: #{
%%   <<"Enabled">> => boolean(),
%%   <<"Timeout">> => integer()
%% }
-type aws_elb_load_balancer_connection_draining() :: #{binary() => any()}.


%% Example:
%% aws_ecs_task_definition_volumes_docker_volume_configuration_details() :: #{
%%   <<"Autoprovision">> => boolean(),
%%   <<"Driver">> => string(),
%%   <<"DriverOpts">> => map(),
%%   <<"Labels">> => map(),
%%   <<"Scope">> => string()
%% }
-type aws_ecs_task_definition_volumes_docker_volume_configuration_details() :: #{binary() => any()}.


%% Example:
%% aws_waf_regional_rule_group_rules_action_details() :: #{
%%   <<"Type">> => string()
%% }
-type aws_waf_regional_rule_group_rules_action_details() :: #{binary() => any()}.


%% Example:
%% update_action_target_request() :: #{
%%   <<"Description">> => string(),
%%   <<"Name">> => string()
%% }
-type update_action_target_request() :: #{binary() => any()}.


%% Example:
%% get_findings_request() :: #{
%%   <<"Filters">> => aws_security_finding_filters(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SortCriteria">> => list(sort_criterion()())
%% }
-type get_findings_request() :: #{binary() => any()}.


%% Example:
%% aws_ec2_launch_template_data_network_interface_set_private_ip_addresses_details() :: #{
%%   <<"Primary">> => boolean(),
%%   <<"PrivateIpAddress">> => string()
%% }
-type aws_ec2_launch_template_data_network_interface_set_private_ip_addresses_details() :: #{binary() => any()}.


%% Example:
%% aws_ec2_vpn_connection_routes_details() :: #{
%%   <<"DestinationCidrBlock">> => string(),
%%   <<"State">> => string()
%% }
-type aws_ec2_vpn_connection_routes_details() :: #{binary() => any()}.


%% Example:
%% aws_app_sync_graph_ql_api_log_config_details() :: #{
%%   <<"CloudWatchLogsRoleArn">> => string(),
%%   <<"ExcludeVerboseContent">> => boolean(),
%%   <<"FieldLogLevel">> => string()
%% }
-type aws_app_sync_graph_ql_api_log_config_details() :: #{binary() => any()}.


%% Example:
%% aws_backup_backup_plan_backup_plan_details() :: #{
%%   <<"AdvancedBackupSettings">> => list(aws_backup_backup_plan_advanced_backup_settings_details()()),
%%   <<"BackupPlanName">> => string(),
%%   <<"BackupPlanRule">> => list(aws_backup_backup_plan_rule_details()())
%% }
-type aws_backup_backup_plan_backup_plan_details() :: #{binary() => any()}.


%% Example:
%% aws_waf_regional_rule_predicate_list_details() :: #{
%%   <<"DataId">> => string(),
%%   <<"Negated">> => boolean(),
%%   <<"Type">> => string()
%% }
-type aws_waf_regional_rule_predicate_list_details() :: #{binary() => any()}.


%% Example:
%% aws_sns_topic_details() :: #{
%%   <<"ApplicationSuccessFeedbackRoleArn">> => string(),
%%   <<"FirehoseFailureFeedbackRoleArn">> => string(),
%%   <<"FirehoseSuccessFeedbackRoleArn">> => string(),
%%   <<"HttpFailureFeedbackRoleArn">> => string(),
%%   <<"HttpSuccessFeedbackRoleArn">> => string(),
%%   <<"KmsMasterKeyId">> => string(),
%%   <<"Owner">> => string(),
%%   <<"SqsFailureFeedbackRoleArn">> => string(),
%%   <<"SqsSuccessFeedbackRoleArn">> => string(),
%%   <<"Subscription">> => list(aws_sns_topic_subscription()()),
%%   <<"TopicName">> => string()
%% }
-type aws_sns_topic_details() :: #{binary() => any()}.


%% Example:
%% country() :: #{
%%   <<"CountryCode">> => string(),
%%   <<"CountryName">> => string()
%% }
-type country() :: #{binary() => any()}.


%% Example:
%% describe_standards_controls_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_standards_controls_request() :: #{binary() => any()}.


%% Example:
%% security_control_definition() :: #{
%%   <<"CurrentRegionAvailability">> => list(any()),
%%   <<"CustomizableProperties">> => list(list(any())()),
%%   <<"Description">> => string(),
%%   <<"ParameterDefinitions">> => map(),
%%   <<"RemediationUrl">> => string(),
%%   <<"SecurityControlId">> => string(),
%%   <<"SeverityRating">> => list(any()),
%%   <<"Title">> => string()
%% }
-type security_control_definition() :: #{binary() => any()}.


%% Example:
%% action_remote_ip_details() :: #{
%%   <<"City">> => city(),
%%   <<"Country">> => country(),
%%   <<"GeoLocation">> => geo_location(),
%%   <<"IpAddressV4">> => string(),
%%   <<"Organization">> => ip_organization_details()
%% }
-type action_remote_ip_details() :: #{binary() => any()}.


%% Example:
%% aws_ec2_transit_gateway_details() :: #{
%%   <<"AmazonSideAsn">> => integer(),
%%   <<"AssociationDefaultRouteTableId">> => string(),
%%   <<"AutoAcceptSharedAttachments">> => string(),
%%   <<"DefaultRouteTableAssociation">> => string(),
%%   <<"DefaultRouteTablePropagation">> => string(),
%%   <<"Description">> => string(),
%%   <<"DnsSupport">> => string(),
%%   <<"Id">> => string(),
%%   <<"MulticastSupport">> => string(),
%%   <<"PropagationDefaultRouteTableId">> => string(),
%%   <<"TransitGatewayCidrBlocks">> => list(string()()),
%%   <<"VpnEcmpSupport">> => string()
%% }
-type aws_ec2_transit_gateway_details() :: #{binary() => any()}.


%% Example:
%% aws_auto_scaling_auto_scaling_group_launch_template_launch_template_specification() :: #{
%%   <<"LaunchTemplateId">> => string(),
%%   <<"LaunchTemplateName">> => string(),
%%   <<"Version">> => string()
%% }
-type aws_auto_scaling_auto_scaling_group_launch_template_launch_template_specification() :: #{binary() => any()}.


%% Example:
%% aws_s3_access_point_details() :: #{
%%   <<"AccessPointArn">> => string(),
%%   <<"Alias">> => string(),
%%   <<"Bucket">> => string(),
%%   <<"BucketAccountId">> => string(),
%%   <<"Name">> => string(),
%%   <<"NetworkOrigin">> => string(),
%%   <<"PublicAccessBlockConfiguration">> => aws_s3_account_public_access_block_details(),
%%   <<"VpcConfiguration">> => aws_s3_access_point_vpc_configuration_details()
%% }
-type aws_s3_access_point_details() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"TagKeys">> := list(string()())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% code_vulnerabilities_file_path() :: #{
%%   <<"EndLine">> => integer(),
%%   <<"FileName">> => string(),
%%   <<"FilePath">> => string(),
%%   <<"StartLine">> => integer()
%% }
-type code_vulnerabilities_file_path() :: #{binary() => any()}.


%% Example:
%% aws_guard_duty_detector_data_sources_flow_logs_details() :: #{
%%   <<"Status">> => string()
%% }
-type aws_guard_duty_detector_data_sources_flow_logs_details() :: #{binary() => any()}.


%% Example:
%% aws_ecr_repository_lifecycle_policy_details() :: #{
%%   <<"LifecyclePolicyText">> => string(),
%%   <<"RegistryId">> => string()
%% }
-type aws_ecr_repository_lifecycle_policy_details() :: #{binary() => any()}.


%% Example:
%% aws_wafv2_web_acl_details() :: #{
%%   <<"Arn">> => string(),
%%   <<"Capacity">> => float(),
%%   <<"CaptchaConfig">> => aws_wafv2_web_acl_captcha_config_details(),
%%   <<"DefaultAction">> => aws_wafv2_web_acl_action_details(),
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"ManagedbyFirewallManager">> => boolean(),
%%   <<"Name">> => string(),
%%   <<"Rules">> => list(aws_wafv2_rules_details()()),
%%   <<"VisibilityConfig">> => aws_wafv2_visibility_config_details()
%% }
-type aws_wafv2_web_acl_details() :: #{binary() => any()}.


%% Example:
%% aws_iam_role_details() :: #{
%%   <<"AssumeRolePolicyDocument">> => string(),
%%   <<"AttachedManagedPolicies">> => list(aws_iam_attached_managed_policy()()),
%%   <<"CreateDate">> => string(),
%%   <<"InstanceProfileList">> => list(aws_iam_instance_profile()()),
%%   <<"MaxSessionDuration">> => integer(),
%%   <<"Path">> => string(),
%%   <<"PermissionsBoundary">> => aws_iam_permissions_boundary(),
%%   <<"RoleId">> => string(),
%%   <<"RoleName">> => string(),
%%   <<"RolePolicyList">> => list(aws_iam_role_policy()())
%% }
-type aws_iam_role_details() :: #{binary() => any()}.


%% Example:
%% aws_elastic_beanstalk_environment_option_setting() :: #{
%%   <<"Namespace">> => string(),
%%   <<"OptionName">> => string(),
%%   <<"ResourceName">> => string(),
%%   <<"Value">> => string()
%% }
-type aws_elastic_beanstalk_environment_option_setting() :: #{binary() => any()}.


%% Example:
%% aws_backup_recovery_point_created_by_details() :: #{
%%   <<"BackupPlanArn">> => string(),
%%   <<"BackupPlanId">> => string(),
%%   <<"BackupPlanVersion">> => string(),
%%   <<"BackupRuleId">> => string()
%% }
-type aws_backup_recovery_point_created_by_details() :: #{binary() => any()}.


%% Example:
%% finding_history_update_source() :: #{
%%   <<"Identity">> => string(),
%%   <<"Type">> => list(any())
%% }
-type finding_history_update_source() :: #{binary() => any()}.


%% Example:
%% disable_organization_admin_account_request() :: #{
%%   <<"AdminAccountId">> := string()
%% }
-type disable_organization_admin_account_request() :: #{binary() => any()}.


%% Example:
%% aws_ec2_eip_details() :: #{
%%   <<"AllocationId">> => string(),
%%   <<"AssociationId">> => string(),
%%   <<"Domain">> => string(),
%%   <<"InstanceId">> => string(),
%%   <<"NetworkBorderGroup">> => string(),
%%   <<"NetworkInterfaceId">> => string(),
%%   <<"NetworkInterfaceOwnerId">> => string(),
%%   <<"PrivateIpAddress">> => string(),
%%   <<"PublicIp">> => string(),
%%   <<"PublicIpv4Pool">> => string()
%% }
-type aws_ec2_eip_details() :: #{binary() => any()}.


%% Example:
%% list_security_control_definitions_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"SecurityControlDefinitions">> => list(security_control_definition()())
%% }
-type list_security_control_definitions_response() :: #{binary() => any()}.


%% Example:
%% batch_update_automation_rules_request() :: #{
%%   <<"UpdateAutomationRulesRequestItems">> := list(update_automation_rules_request_item()())
%% }
-type batch_update_automation_rules_request() :: #{binary() => any()}.


%% Example:
%% aws_ec2_launch_template_data_instance_requirements_total_local_storage_g_b_details() :: #{
%%   <<"Max">> => float(),
%%   <<"Min">> => float()
%% }
-type aws_ec2_launch_template_data_instance_requirements_total_local_storage_g_b_details() :: #{binary() => any()}.


%% Example:
%% unprocessed_standards_control_association() :: #{
%%   <<"ErrorCode">> => list(any()),
%%   <<"ErrorReason">> => string(),
%%   <<"StandardsControlAssociationId">> => standards_control_association_id()
%% }
-type unprocessed_standards_control_association() :: #{binary() => any()}.


%% Example:
%% aws_ec2_client_vpn_endpoint_connection_log_options_details() :: #{
%%   <<"CloudwatchLogGroup">> => string(),
%%   <<"CloudwatchLogStream">> => string(),
%%   <<"Enabled">> => boolean()
%% }
-type aws_ec2_client_vpn_endpoint_connection_log_options_details() :: #{binary() => any()}.


%% Example:
%% rule_group_source_stateless_rule_match_attributes_source_ports() :: #{
%%   <<"FromPort">> => integer(),
%%   <<"ToPort">> => integer()
%% }
-type rule_group_source_stateless_rule_match_attributes_source_ports() :: #{binary() => any()}.


%% Example:
%% delete_members_response() :: #{
%%   <<"UnprocessedAccounts">> => list(result()())
%% }
-type delete_members_response() :: #{binary() => any()}.


%% Example:
%% finding_history_update() :: #{
%%   <<"NewValue">> => string(),
%%   <<"OldValue">> => string(),
%%   <<"UpdatedField">> => string()
%% }
-type finding_history_update() :: #{binary() => any()}.


%% Example:
%% aws_dynamo_db_table_restore_summary() :: #{
%%   <<"RestoreDateTime">> => string(),
%%   <<"RestoreInProgress">> => boolean(),
%%   <<"SourceBackupArn">> => string(),
%%   <<"SourceTableArn">> => string()
%% }
-type aws_dynamo_db_table_restore_summary() :: #{binary() => any()}.


%% Example:
%% parameter_configuration() :: #{
%%   <<"Value">> => list(),
%%   <<"ValueType">> => list(any())
%% }
-type parameter_configuration() :: #{binary() => any()}.


%% Example:
%% invite_members_request() :: #{
%%   <<"AccountIds">> := list(string()())
%% }
-type invite_members_request() :: #{binary() => any()}.


%% Example:
%% insight_results() :: #{
%%   <<"GroupByAttribute">> => string(),
%%   <<"InsightArn">> => string(),
%%   <<"ResultValues">> => list(insight_result_value()())
%% }
-type insight_results() :: #{binary() => any()}.


%% Example:
%% aws_msk_cluster_cluster_info_encryption_info_details() :: #{
%%   <<"EncryptionAtRest">> => aws_msk_cluster_cluster_info_encryption_info_encryption_at_rest_details(),
%%   <<"EncryptionInTransit">> => aws_msk_cluster_cluster_info_encryption_info_encryption_in_transit_details()
%% }
-type aws_msk_cluster_cluster_info_encryption_info_details() :: #{binary() => any()}.


%% Example:
%% aws_ecs_service_details() :: #{
%%   <<"CapacityProviderStrategy">> => list(aws_ecs_service_capacity_provider_strategy_details()()),
%%   <<"Cluster">> => string(),
%%   <<"DeploymentConfiguration">> => aws_ecs_service_deployment_configuration_details(),
%%   <<"DeploymentController">> => aws_ecs_service_deployment_controller_details(),
%%   <<"DesiredCount">> => integer(),
%%   <<"EnableEcsManagedTags">> => boolean(),
%%   <<"EnableExecuteCommand">> => boolean(),
%%   <<"HealthCheckGracePeriodSeconds">> => integer(),
%%   <<"LaunchType">> => string(),
%%   <<"LoadBalancers">> => list(aws_ecs_service_load_balancers_details()()),
%%   <<"Name">> => string(),
%%   <<"NetworkConfiguration">> => aws_ecs_service_network_configuration_details(),
%%   <<"PlacementConstraints">> => list(aws_ecs_service_placement_constraints_details()()),
%%   <<"PlacementStrategies">> => list(aws_ecs_service_placement_strategies_details()()),
%%   <<"PlatformVersion">> => string(),
%%   <<"PropagateTags">> => string(),
%%   <<"Role">> => string(),
%%   <<"SchedulingStrategy">> => string(),
%%   <<"ServiceArn">> => string(),
%%   <<"ServiceName">> => string(),
%%   <<"ServiceRegistries">> => list(aws_ecs_service_service_registries_details()()),
%%   <<"TaskDefinition">> => string()
%% }
-type aws_ecs_service_details() :: #{binary() => any()}.


%% Example:
%% describe_standards_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Standards">> => list(standard()())
%% }
-type describe_standards_response() :: #{binary() => any()}.


%% Example:
%% user_account() :: #{
%%   <<"Name">> => string(),
%%   <<"Uid">> => string()
%% }
-type user_account() :: #{binary() => any()}.


%% Example:
%% ip_organization_details() :: #{
%%   <<"Asn">> => integer(),
%%   <<"AsnOrg">> => string(),
%%   <<"Isp">> => string(),
%%   <<"Org">> => string()
%% }
-type ip_organization_details() :: #{binary() => any()}.


%% Example:
%% aws_cloud_front_distribution_origin_group_failover_status_codes() :: #{
%%   <<"Items">> => list(integer()()),
%%   <<"Quantity">> => integer()
%% }
-type aws_cloud_front_distribution_origin_group_failover_status_codes() :: #{binary() => any()}.


%% Example:
%% rule_group_source_stateless_rule_definition() :: #{
%%   <<"Actions">> => list(string()()),
%%   <<"MatchAttributes">> => rule_group_source_stateless_rule_match_attributes()
%% }
-type rule_group_source_stateless_rule_definition() :: #{binary() => any()}.


%% Example:
%% standards_status_reason() :: #{
%%   <<"StatusReasonCode">> => list(any())
%% }
-type standards_status_reason() :: #{binary() => any()}.


%% Example:
%% aws_cors_configuration() :: #{
%%   <<"AllowCredentials">> => boolean(),
%%   <<"AllowHeaders">> => list(string()()),
%%   <<"AllowMethods">> => list(string()()),
%%   <<"AllowOrigins">> => list(string()()),
%%   <<"ExposeHeaders">> => list(string()()),
%%   <<"MaxAge">> => integer()
%% }
-type aws_cors_configuration() :: #{binary() => any()}.


%% Example:
%% aws_cloud_formation_stack_details() :: #{
%%   <<"Capabilities">> => list(string()()),
%%   <<"CreationTime">> => string(),
%%   <<"Description">> => string(),
%%   <<"DisableRollback">> => boolean(),
%%   <<"DriftInformation">> => aws_cloud_formation_stack_drift_information_details(),
%%   <<"EnableTerminationProtection">> => boolean(),
%%   <<"LastUpdatedTime">> => string(),
%%   <<"NotificationArns">> => list(string()()),
%%   <<"Outputs">> => list(aws_cloud_formation_stack_outputs_details()()),
%%   <<"RoleArn">> => string(),
%%   <<"StackId">> => string(),
%%   <<"StackName">> => string(),
%%   <<"StackStatus">> => string(),
%%   <<"StackStatusReason">> => string(),
%%   <<"TimeoutInMinutes">> => integer()
%% }
-type aws_cloud_formation_stack_details() :: #{binary() => any()}.


%% Example:
%% associated_standard() :: #{
%%   <<"StandardsId">> => string()
%% }
-type associated_standard() :: #{binary() => any()}.


%% Example:
%% aws_redshift_cluster_cluster_snapshot_copy_status() :: #{
%%   <<"DestinationRegion">> => string(),
%%   <<"ManualSnapshotRetentionPeriod">> => integer(),
%%   <<"RetentionPeriod">> => integer(),
%%   <<"SnapshotCopyGrantName">> => string()
%% }
-type aws_redshift_cluster_cluster_snapshot_copy_status() :: #{binary() => any()}.


%% Example:
%% severity() :: #{
%%   <<"Label">> => list(any()),
%%   <<"Normalized">> => integer(),
%%   <<"Original">> => string(),
%%   <<"Product">> => float()
%% }
-type severity() :: #{binary() => any()}.


%% Example:
%% network_connection() :: #{
%%   <<"Direction">> => list(any())
%% }
-type network_connection() :: #{binary() => any()}.


%% Example:
%% aws_redshift_cluster_iam_role() :: #{
%%   <<"ApplyStatus">> => string(),
%%   <<"IamRoleArn">> => string()
%% }
-type aws_redshift_cluster_iam_role() :: #{binary() => any()}.


%% Example:
%% aws_amazon_mq_broker_users_details() :: #{
%%   <<"PendingChange">> => string(),
%%   <<"Username">> => string()
%% }
-type aws_amazon_mq_broker_users_details() :: #{binary() => any()}.


%% Example:
%% aws_s3_bucket_bucket_lifecycle_configuration_rules_details() :: #{
%%   <<"AbortIncompleteMultipartUpload">> => aws_s3_bucket_bucket_lifecycle_configuration_rules_abort_incomplete_multipart_upload_details(),
%%   <<"ExpirationDate">> => string(),
%%   <<"ExpirationInDays">> => integer(),
%%   <<"ExpiredObjectDeleteMarker">> => boolean(),
%%   <<"Filter">> => aws_s3_bucket_bucket_lifecycle_configuration_rules_filter_details(),
%%   <<"ID">> => string(),
%%   <<"NoncurrentVersionExpirationInDays">> => integer(),
%%   <<"NoncurrentVersionTransitions">> => list(aws_s3_bucket_bucket_lifecycle_configuration_rules_noncurrent_version_transitions_details()()),
%%   <<"Prefix">> => string(),
%%   <<"Status">> => string(),
%%   <<"Transitions">> => list(aws_s3_bucket_bucket_lifecycle_configuration_rules_transitions_details()())
%% }
-type aws_s3_bucket_bucket_lifecycle_configuration_rules_details() :: #{binary() => any()}.


%% Example:
%% aws_lambda_function_environment() :: #{
%%   <<"Error">> => aws_lambda_function_environment_error(),
%%   <<"Variables">> => map()
%% }
-type aws_lambda_function_environment() :: #{binary() => any()}.


%% Example:
%% aws_backup_backup_plan_details() :: #{
%%   <<"BackupPlan">> => aws_backup_backup_plan_backup_plan_details(),
%%   <<"BackupPlanArn">> => string(),
%%   <<"BackupPlanId">> => string(),
%%   <<"VersionId">> => string()
%% }
-type aws_backup_backup_plan_details() :: #{binary() => any()}.


%% Example:
%% get_configuration_policy_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"ConfigurationPolicy">> => list(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type get_configuration_policy_response() :: #{binary() => any()}.


%% Example:
%% standard() :: #{
%%   <<"Description">> => string(),
%%   <<"EnabledByDefault">> => boolean(),
%%   <<"Name">> => string(),
%%   <<"StandardsArn">> => string(),
%%   <<"StandardsManagedBy">> => standards_managed_by()
%% }
-type standard() :: #{binary() => any()}.


%% Example:
%% aws_ec2_launch_template_data_hibernation_options_details() :: #{
%%   <<"Configured">> => boolean()
%% }
-type aws_ec2_launch_template_data_hibernation_options_details() :: #{binary() => any()}.


%% Example:
%% batch_delete_automation_rules_request() :: #{
%%   <<"AutomationRulesArns">> := list(string()())
%% }
-type batch_delete_automation_rules_request() :: #{binary() => any()}.


%% Example:
%% aws_elb_load_balancer_health_check() :: #{
%%   <<"HealthyThreshold">> => integer(),
%%   <<"Interval">> => integer(),
%%   <<"Target">> => string(),
%%   <<"Timeout">> => integer(),
%%   <<"UnhealthyThreshold">> => integer()
%% }
-type aws_elb_load_balancer_health_check() :: #{binary() => any()}.


%% Example:
%% aws_waf_regional_web_acl_details() :: #{
%%   <<"DefaultAction">> => string(),
%%   <<"MetricName">> => string(),
%%   <<"Name">> => string(),
%%   <<"RulesList">> => list(aws_waf_regional_web_acl_rules_list_details()()),
%%   <<"WebAclId">> => string()
%% }
-type aws_waf_regional_web_acl_details() :: #{binary() => any()}.


%% Example:
%% batch_get_standards_control_associations_request() :: #{
%%   <<"StandardsControlAssociationIds">> := list(standards_control_association_id()())
%% }
-type batch_get_standards_control_associations_request() :: #{binary() => any()}.


%% Example:
%% aws_elasticsearch_domain_vpc_options() :: #{
%%   <<"AvailabilityZones">> => list(string()()),
%%   <<"SecurityGroupIds">> => list(string()()),
%%   <<"SubnetIds">> => list(string()()),
%%   <<"VPCId">> => string()
%% }
-type aws_elasticsearch_domain_vpc_options() :: #{binary() => any()}.


%% Example:
%% aws_wafv2_custom_http_header() :: #{
%%   <<"Name">> => string(),
%%   <<"Value">> => string()
%% }
-type aws_wafv2_custom_http_header() :: #{binary() => any()}.


%% Example:
%% aws_amazon_mq_broker_logs_details() :: #{
%%   <<"Audit">> => boolean(),
%%   <<"AuditLogGroup">> => string(),
%%   <<"General">> => boolean(),
%%   <<"GeneralLogGroup">> => string(),
%%   <<"Pending">> => aws_amazon_mq_broker_logs_pending_details()
%% }
-type aws_amazon_mq_broker_logs_details() :: #{binary() => any()}.


%% Example:
%% double_configuration_options() :: #{
%%   <<"DefaultValue">> => float(),
%%   <<"Max">> => float(),
%%   <<"Min">> => float()
%% }
-type double_configuration_options() :: #{binary() => any()}.


%% Example:
%% vulnerability_vendor() :: #{
%%   <<"Name">> => string(),
%%   <<"Url">> => string(),
%%   <<"VendorCreatedAt">> => string(),
%%   <<"VendorSeverity">> => string(),
%%   <<"VendorUpdatedAt">> => string()
%% }
-type vulnerability_vendor() :: #{binary() => any()}.


%% Example:
%% aws_eks_cluster_logging_cluster_logging_details() :: #{
%%   <<"Enabled">> => boolean(),
%%   <<"Types">> => list(string()())
%% }
-type aws_eks_cluster_logging_cluster_logging_details() :: #{binary() => any()}.


%% Example:
%% aws_code_build_project_source() :: #{
%%   <<"GitCloneDepth">> => integer(),
%%   <<"InsecureSsl">> => boolean(),
%%   <<"Location">> => string(),
%%   <<"Type">> => string()
%% }
-type aws_code_build_project_source() :: #{binary() => any()}.


%% Example:
%% aws_ec2_launch_template_data_placement_details() :: #{
%%   <<"Affinity">> => string(),
%%   <<"AvailabilityZone">> => string(),
%%   <<"GroupName">> => string(),
%%   <<"HostId">> => string(),
%%   <<"HostResourceGroupArn">> => string(),
%%   <<"PartitionNumber">> => integer(),
%%   <<"SpreadDomain">> => string(),
%%   <<"Tenancy">> => string()
%% }
-type aws_ec2_launch_template_data_placement_details() :: #{binary() => any()}.


%% Example:
%% rule_group_source_stateless_rule_match_attributes_sources() :: #{
%%   <<"AddressDefinition">> => string()
%% }
-type rule_group_source_stateless_rule_match_attributes_sources() :: #{binary() => any()}.


%% Example:
%% aws_ec2_launch_template_data_instance_requirements_accelerator_total_memory_mi_b_details() :: #{
%%   <<"Max">> => integer(),
%%   <<"Min">> => integer()
%% }
-type aws_ec2_launch_template_data_instance_requirements_accelerator_total_memory_mi_b_details() :: #{binary() => any()}.


%% Example:
%% aws_elastic_beanstalk_environment_details() :: #{
%%   <<"ApplicationName">> => string(),
%%   <<"Cname">> => string(),
%%   <<"DateCreated">> => string(),
%%   <<"DateUpdated">> => string(),
%%   <<"Description">> => string(),
%%   <<"EndpointUrl">> => string(),
%%   <<"EnvironmentArn">> => string(),
%%   <<"EnvironmentId">> => string(),
%%   <<"EnvironmentLinks">> => list(aws_elastic_beanstalk_environment_environment_link()()),
%%   <<"EnvironmentName">> => string(),
%%   <<"OptionSettings">> => list(aws_elastic_beanstalk_environment_option_setting()()),
%%   <<"PlatformArn">> => string(),
%%   <<"SolutionStackName">> => string(),
%%   <<"Status">> => string(),
%%   <<"Tier">> => aws_elastic_beanstalk_environment_tier(),
%%   <<"VersionLabel">> => string()
%% }
-type aws_elastic_beanstalk_environment_details() :: #{binary() => any()}.


%% Example:
%% rule_group_source_stateful_rules_details() :: #{
%%   <<"Action">> => string(),
%%   <<"Header">> => rule_group_source_stateful_rules_header_details(),
%%   <<"RuleOptions">> => list(rule_group_source_stateful_rules_options_details()())
%% }
-type rule_group_source_stateful_rules_details() :: #{binary() => any()}.

%% Example:
%% update_insight_response() :: #{}
-type update_insight_response() :: #{}.


%% Example:
%% batch_enable_standards_request() :: #{
%%   <<"StandardsSubscriptionRequests">> := list(standards_subscription_request()())
%% }
-type batch_enable_standards_request() :: #{binary() => any()}.


%% Example:
%% aws_elasticsearch_domain_log_publishing_options() :: #{
%%   <<"AuditLogs">> => aws_elasticsearch_domain_log_publishing_options_log_config(),
%%   <<"IndexSlowLogs">> => aws_elasticsearch_domain_log_publishing_options_log_config(),
%%   <<"SearchSlowLogs">> => aws_elasticsearch_domain_log_publishing_options_log_config()
%% }
-type aws_elasticsearch_domain_log_publishing_options() :: #{binary() => any()}.


%% Example:
%% standards_control_association_summary() :: #{
%%   <<"AssociationStatus">> => list(any()),
%%   <<"RelatedRequirements">> => list(string()()),
%%   <<"SecurityControlArn">> => string(),
%%   <<"SecurityControlId">> => string(),
%%   <<"StandardsArn">> => string(),
%%   <<"StandardsControlDescription">> => string(),
%%   <<"StandardsControlTitle">> => string(),
%%   <<"UpdatedAt">> => non_neg_integer(),
%%   <<"UpdatedReason">> => string()
%% }
-type standards_control_association_summary() :: #{binary() => any()}.


%% Example:
%% aws_ecs_service_network_configuration_details() :: #{
%%   <<"AwsVpcConfiguration">> => aws_ecs_service_network_configuration_aws_vpc_configuration_details()
%% }
-type aws_ecs_service_network_configuration_details() :: #{binary() => any()}.


%% Example:
%% rule_group_source_stateful_rules_options_details() :: #{
%%   <<"Keyword">> => string(),
%%   <<"Settings">> => list(string()())
%% }
-type rule_group_source_stateful_rules_options_details() :: #{binary() => any()}.


%% Example:
%% aws_cloud_front_distribution_logging() :: #{
%%   <<"Bucket">> => string(),
%%   <<"Enabled">> => boolean(),
%%   <<"IncludeCookies">> => boolean(),
%%   <<"Prefix">> => string()
%% }
-type aws_cloud_front_distribution_logging() :: #{binary() => any()}.


%% Example:
%% aws_auto_scaling_launch_configuration_block_device_mappings_ebs_details() :: #{
%%   <<"DeleteOnTermination">> => boolean(),
%%   <<"Encrypted">> => boolean(),
%%   <<"Iops">> => integer(),
%%   <<"SnapshotId">> => string(),
%%   <<"VolumeSize">> => integer(),
%%   <<"VolumeType">> => string()
%% }
-type aws_auto_scaling_launch_configuration_block_device_mappings_ebs_details() :: #{binary() => any()}.


%% Example:
%% aws_rds_db_subnet_group() :: #{
%%   <<"DbSubnetGroupArn">> => string(),
%%   <<"DbSubnetGroupDescription">> => string(),
%%   <<"DbSubnetGroupName">> => string(),
%%   <<"SubnetGroupStatus">> => string(),
%%   <<"Subnets">> => list(aws_rds_db_subnet_group_subnet()()),
%%   <<"VpcId">> => string()
%% }
-type aws_rds_db_subnet_group() :: #{binary() => any()}.


%% Example:
%% data_classification_details() :: #{
%%   <<"DetailedResultsLocation">> => string(),
%%   <<"Result">> => classification_result()
%% }
-type data_classification_details() :: #{binary() => any()}.


%% Example:
%% rule_group_source_stateless_rules_details() :: #{
%%   <<"Priority">> => integer(),
%%   <<"RuleDefinition">> => rule_group_source_stateless_rule_definition()
%% }
-type rule_group_source_stateless_rules_details() :: #{binary() => any()}.


%% Example:
%% aws_ecs_task_definition_volumes_efs_volume_configuration_details() :: #{
%%   <<"AuthorizationConfig">> => aws_ecs_task_definition_volumes_efs_volume_configuration_authorization_config_details(),
%%   <<"FilesystemId">> => string(),
%%   <<"RootDirectory">> => string(),
%%   <<"TransitEncryption">> => string(),
%%   <<"TransitEncryptionPort">> => integer()
%% }
-type aws_ecs_task_definition_volumes_efs_volume_configuration_details() :: #{binary() => any()}.

%% Example:
%% disassociate_from_administrator_account_response() :: #{}
-type disassociate_from_administrator_account_response() :: #{}.


%% Example:
%% aws_s3_bucket_website_configuration_routing_rule_condition() :: #{
%%   <<"HttpErrorCodeReturnedEquals">> => string(),
%%   <<"KeyPrefixEquals">> => string()
%% }
-type aws_s3_bucket_website_configuration_routing_rule_condition() :: #{binary() => any()}.


%% Example:
%% aws_redshift_cluster_hsm_status() :: #{
%%   <<"HsmClientCertificateIdentifier">> => string(),
%%   <<"HsmConfigurationIdentifier">> => string(),
%%   <<"Status">> => string()
%% }
-type aws_redshift_cluster_hsm_status() :: #{binary() => any()}.


%% Example:
%% aws_ec2_launch_template_data_elastic_inference_accelerator_set_details() :: #{
%%   <<"Count">> => integer(),
%%   <<"Type">> => string()
%% }
-type aws_ec2_launch_template_data_elastic_inference_accelerator_set_details() :: #{binary() => any()}.


%% Example:
%% aws_ecs_service_network_configuration_aws_vpc_configuration_details() :: #{
%%   <<"AssignPublicIp">> => string(),
%%   <<"SecurityGroups">> => list(string()()),
%%   <<"Subnets">> => list(string()())
%% }
-type aws_ecs_service_network_configuration_aws_vpc_configuration_details() :: #{binary() => any()}.


%% Example:
%% occurrences() :: #{
%%   <<"Cells">> => list(cell()()),
%%   <<"LineRanges">> => list(range()()),
%%   <<"OffsetRanges">> => list(range()()),
%%   <<"Pages">> => list(page()()),
%%   <<"Records">> => list(record()())
%% }
-type occurrences() :: #{binary() => any()}.


%% Example:
%% aws_waf_regional_rule_details() :: #{
%%   <<"MetricName">> => string(),
%%   <<"Name">> => string(),
%%   <<"PredicateList">> => list(aws_waf_regional_rule_predicate_list_details()()),
%%   <<"RuleId">> => string()
%% }
-type aws_waf_regional_rule_details() :: #{binary() => any()}.


%% Example:
%% aws_ec2_security_group_ip_range() :: #{
%%   <<"CidrIp">> => string()
%% }
-type aws_ec2_security_group_ip_range() :: #{binary() => any()}.


%% Example:
%% aws_waf_web_acl_details() :: #{
%%   <<"DefaultAction">> => string(),
%%   <<"Name">> => string(),
%%   <<"Rules">> => list(aws_waf_web_acl_rule()()),
%%   <<"WebAclId">> => string()
%% }
-type aws_waf_web_acl_details() :: #{binary() => any()}.


%% Example:
%% aws_code_build_project_artifacts_details() :: #{
%%   <<"ArtifactIdentifier">> => string(),
%%   <<"EncryptionDisabled">> => boolean(),
%%   <<"Location">> => string(),
%%   <<"Name">> => string(),
%%   <<"NamespaceType">> => string(),
%%   <<"OverrideArtifactName">> => boolean(),
%%   <<"Packaging">> => string(),
%%   <<"Path">> => string(),
%%   <<"Type">> => string()
%% }
-type aws_code_build_project_artifacts_details() :: #{binary() => any()}.


%% Example:
%% boolean_filter() :: #{
%%   <<"Value">> => boolean()
%% }
-type boolean_filter() :: #{binary() => any()}.

%% Example:
%% start_configuration_policy_disassociation_response() :: #{}
-type start_configuration_policy_disassociation_response() :: #{}.


%% Example:
%% aws_ec2_client_vpn_endpoint_client_connect_options_status_details() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string()
%% }
-type aws_ec2_client_vpn_endpoint_client_connect_options_status_details() :: #{binary() => any()}.


%% Example:
%% describe_organization_configuration_response() :: #{
%%   <<"AutoEnable">> => boolean(),
%%   <<"AutoEnableStandards">> => list(any()),
%%   <<"MemberAccountLimitReached">> => boolean(),
%%   <<"OrganizationConfiguration">> => organization_configuration()
%% }
-type describe_organization_configuration_response() :: #{binary() => any()}.


%% Example:
%% aws_rds_db_cluster_associated_role() :: #{
%%   <<"RoleArn">> => string(),
%%   <<"Status">> => string()
%% }
-type aws_rds_db_cluster_associated_role() :: #{binary() => any()}.


%% Example:
%% aws_backup_backup_plan_rule_copy_actions_details() :: #{
%%   <<"DestinationBackupVaultArn">> => string(),
%%   <<"Lifecycle">> => aws_backup_backup_plan_lifecycle_details()
%% }
-type aws_backup_backup_plan_rule_copy_actions_details() :: #{binary() => any()}.


%% Example:
%% aws_auto_scaling_auto_scaling_group_mixed_instances_policy_launch_template_launch_template_specification() :: #{
%%   <<"LaunchTemplateId">> => string(),
%%   <<"LaunchTemplateName">> => string(),
%%   <<"Version">> => string()
%% }
-type aws_auto_scaling_auto_scaling_group_mixed_instances_policy_launch_template_launch_template_specification() :: #{binary() => any()}.


%% Example:
%% aws_api_gateway_stage_details() :: #{
%%   <<"AccessLogSettings">> => aws_api_gateway_access_log_settings(),
%%   <<"CacheClusterEnabled">> => boolean(),
%%   <<"CacheClusterSize">> => string(),
%%   <<"CacheClusterStatus">> => string(),
%%   <<"CanarySettings">> => aws_api_gateway_canary_settings(),
%%   <<"ClientCertificateId">> => string(),
%%   <<"CreatedDate">> => string(),
%%   <<"DeploymentId">> => string(),
%%   <<"Description">> => string(),
%%   <<"DocumentationVersion">> => string(),
%%   <<"LastUpdatedDate">> => string(),
%%   <<"MethodSettings">> => list(aws_api_gateway_method_settings()()),
%%   <<"StageName">> => string(),
%%   <<"TracingEnabled">> => boolean(),
%%   <<"Variables">> => map(),
%%   <<"WebAclArn">> => string()
%% }
-type aws_api_gateway_stage_details() :: #{binary() => any()}.


%% Example:
%% standards_control() :: #{
%%   <<"ControlId">> => string(),
%%   <<"ControlStatus">> => list(any()),
%%   <<"ControlStatusUpdatedAt">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"DisabledReason">> => string(),
%%   <<"RelatedRequirements">> => list(string()()),
%%   <<"RemediationUrl">> => string(),
%%   <<"SeverityRating">> => list(any()),
%%   <<"StandardsControlArn">> => string(),
%%   <<"Title">> => string()
%% }
-type standards_control() :: #{binary() => any()}.


%% Example:
%% aws_rds_db_domain_membership() :: #{
%%   <<"Domain">> => string(),
%%   <<"Fqdn">> => string(),
%%   <<"IamRoleName">> => string(),
%%   <<"Status">> => string()
%% }
-type aws_rds_db_domain_membership() :: #{binary() => any()}.


%% Example:
%% aws_certificate_manager_certificate_renewal_summary() :: #{
%%   <<"DomainValidationOptions">> => list(aws_certificate_manager_certificate_domain_validation_option()()),
%%   <<"RenewalStatus">> => string(),
%%   <<"RenewalStatusReason">> => string(),
%%   <<"UpdatedAt">> => string()
%% }
-type aws_certificate_manager_certificate_renewal_summary() :: #{binary() => any()}.


%% Example:
%% aws_s3_bucket_bucket_lifecycle_configuration_rules_abort_incomplete_multipart_upload_details() :: #{
%%   <<"DaysAfterInitiation">> => integer()
%% }
-type aws_s3_bucket_bucket_lifecycle_configuration_rules_abort_incomplete_multipart_upload_details() :: #{binary() => any()}.

%% Example:
%% update_security_control_response() :: #{}
-type update_security_control_response() :: #{}.


%% Example:
%% aws_dynamo_db_table_replica() :: #{
%%   <<"GlobalSecondaryIndexes">> => list(aws_dynamo_db_table_replica_global_secondary_index()()),
%%   <<"KmsMasterKeyId">> => string(),
%%   <<"ProvisionedThroughputOverride">> => aws_dynamo_db_table_provisioned_throughput_override(),
%%   <<"RegionName">> => string(),
%%   <<"ReplicaStatus">> => string(),
%%   <<"ReplicaStatusDescription">> => string()
%% }
-type aws_dynamo_db_table_replica() :: #{binary() => any()}.


%% Example:
%% aws_dms_replication_instance_details() :: #{
%%   <<"AllocatedStorage">> => integer(),
%%   <<"AutoMinorVersionUpgrade">> => boolean(),
%%   <<"AvailabilityZone">> => string(),
%%   <<"EngineVersion">> => string(),
%%   <<"KmsKeyId">> => string(),
%%   <<"MultiAZ">> => boolean(),
%%   <<"PreferredMaintenanceWindow">> => string(),
%%   <<"PubliclyAccessible">> => boolean(),
%%   <<"ReplicationInstanceClass">> => string(),
%%   <<"ReplicationInstanceIdentifier">> => string(),
%%   <<"ReplicationSubnetGroup">> => aws_dms_replication_instance_replication_subnet_group_details(),
%%   <<"VpcSecurityGroups">> => list(aws_dms_replication_instance_vpc_security_groups_details()())
%% }
-type aws_dms_replication_instance_details() :: #{binary() => any()}.


%% Example:
%% invalid_access_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string()
%% }
-type invalid_access_exception() :: #{binary() => any()}.


%% Example:
%% aws_elb_lb_cookie_stickiness_policy() :: #{
%%   <<"CookieExpirationPeriod">> => float(),
%%   <<"PolicyName">> => string()
%% }
-type aws_elb_lb_cookie_stickiness_policy() :: #{binary() => any()}.


%% Example:
%% aws_ec2_launch_template_data_network_interface_set_ipv6_prefixes_details() :: #{
%%   <<"Ipv6Prefix">> => string()
%% }
-type aws_ec2_launch_template_data_network_interface_set_ipv6_prefixes_details() :: #{binary() => any()}.


%% Example:
%% aws_ec2_launch_template_data_network_interface_set_ipv4_prefixes_details() :: #{
%%   <<"Ipv4Prefix">> => string()
%% }
-type aws_ec2_launch_template_data_network_interface_set_ipv4_prefixes_details() :: #{binary() => any()}.


%% Example:
%% aws_step_function_state_machine_logging_configuration_destinations_details() :: #{
%%   <<"CloudWatchLogsLogGroup">> => aws_step_function_state_machine_logging_configuration_destinations_cloud_watch_logs_log_group_details()
%% }
-type aws_step_function_state_machine_logging_configuration_destinations_details() :: #{binary() => any()}.


%% Example:
%% aws_elasticsearch_domain_elasticsearch_cluster_config_details() :: #{
%%   <<"DedicatedMasterCount">> => integer(),
%%   <<"DedicatedMasterEnabled">> => boolean(),
%%   <<"DedicatedMasterType">> => string(),
%%   <<"InstanceCount">> => integer(),
%%   <<"InstanceType">> => string(),
%%   <<"ZoneAwarenessConfig">> => aws_elasticsearch_domain_elasticsearch_cluster_config_zone_awareness_config_details(),
%%   <<"ZoneAwarenessEnabled">> => boolean()
%% }
-type aws_elasticsearch_domain_elasticsearch_cluster_config_details() :: #{binary() => any()}.


%% Example:
%% rule_group_source_stateless_rules_and_custom_actions_details() :: #{
%%   <<"CustomActions">> => list(rule_group_source_custom_actions_details()()),
%%   <<"StatelessRules">> => list(rule_group_source_stateless_rules_details()())
%% }
-type rule_group_source_stateless_rules_and_custom_actions_details() :: #{binary() => any()}.


%% Example:
%% aws_s3_bucket_server_side_encryption_rule() :: #{
%%   <<"ApplyServerSideEncryptionByDefault">> => aws_s3_bucket_server_side_encryption_by_default()
%% }
-type aws_s3_bucket_server_side_encryption_rule() :: #{binary() => any()}.


%% Example:
%% configuration_policy_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"ServiceEnabled">> => boolean(),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type configuration_policy_summary() :: #{binary() => any()}.


%% Example:
%% aws_certificate_manager_certificate_details() :: #{
%%   <<"CertificateAuthorityArn">> => string(),
%%   <<"CreatedAt">> => string(),
%%   <<"DomainName">> => string(),
%%   <<"DomainValidationOptions">> => list(aws_certificate_manager_certificate_domain_validation_option()()),
%%   <<"ExtendedKeyUsages">> => list(aws_certificate_manager_certificate_extended_key_usage()()),
%%   <<"FailureReason">> => string(),
%%   <<"ImportedAt">> => string(),
%%   <<"InUseBy">> => list(string()()),
%%   <<"IssuedAt">> => string(),
%%   <<"Issuer">> => string(),
%%   <<"KeyAlgorithm">> => string(),
%%   <<"KeyUsages">> => list(aws_certificate_manager_certificate_key_usage()()),
%%   <<"NotAfter">> => string(),
%%   <<"NotBefore">> => string(),
%%   <<"Options">> => aws_certificate_manager_certificate_options(),
%%   <<"RenewalEligibility">> => string(),
%%   <<"RenewalSummary">> => aws_certificate_manager_certificate_renewal_summary(),
%%   <<"Serial">> => string(),
%%   <<"SignatureAlgorithm">> => string(),
%%   <<"Status">> => string(),
%%   <<"Subject">> => string(),
%%   <<"SubjectAlternativeNames">> => list(string()()),
%%   <<"Type">> => string()
%% }
-type aws_certificate_manager_certificate_details() :: #{binary() => any()}.


%% Example:
%% get_enabled_standards_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"StandardsSubscriptions">> => list(standards_subscription()())
%% }
-type get_enabled_standards_response() :: #{binary() => any()}.


%% Example:
%% aws_route53_hosted_zone_vpc_details() :: #{
%%   <<"Id">> => string(),
%%   <<"Region">> => string()
%% }
-type aws_route53_hosted_zone_vpc_details() :: #{binary() => any()}.


%% Example:
%% aws_iam_instance_profile() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreateDate">> => string(),
%%   <<"InstanceProfileId">> => string(),
%%   <<"InstanceProfileName">> => string(),
%%   <<"Path">> => string(),
%%   <<"Roles">> => list(aws_iam_instance_profile_role()())
%% }
-type aws_iam_instance_profile() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% dns_request_action() :: #{
%%   <<"Blocked">> => boolean(),
%%   <<"Domain">> => string(),
%%   <<"Protocol">> => string()
%% }
-type dns_request_action() :: #{binary() => any()}.


%% Example:
%% security_controls_configuration() :: #{
%%   <<"DisabledSecurityControlIdentifiers">> => list(string()()),
%%   <<"EnabledSecurityControlIdentifiers">> => list(string()()),
%%   <<"SecurityControlCustomParameters">> => list(security_control_custom_parameter()())
%% }
-type security_controls_configuration() :: #{binary() => any()}.


%% Example:
%% aws_guard_duty_detector_data_sources_malware_protection_scan_ec2_instance_with_findings_details() :: #{
%%   <<"EbsVolumes">> => aws_guard_duty_detector_data_sources_malware_protection_scan_ec2_instance_with_findings_ebs_volumes_details()
%% }
-type aws_guard_duty_detector_data_sources_malware_protection_scan_ec2_instance_with_findings_details() :: #{binary() => any()}.


%% Example:
%% update_security_hub_configuration_request() :: #{
%%   <<"AutoEnableControls">> => boolean(),
%%   <<"ControlFindingGenerator">> => list(any())
%% }
-type update_security_hub_configuration_request() :: #{binary() => any()}.


%% Example:
%% get_members_request() :: #{
%%   <<"AccountIds">> := list(string()())
%% }
-type get_members_request() :: #{binary() => any()}.


%% Example:
%% rule_group_variables_port_sets_details() :: #{
%%   <<"Definition">> => list(string()())
%% }
-type rule_group_variables_port_sets_details() :: #{binary() => any()}.


%% Example:
%% aws_ec2_launch_template_data_capacity_reservation_specification_capacity_reservation_target_details() :: #{
%%   <<"CapacityReservationId">> => string(),
%%   <<"CapacityReservationResourceGroupArn">> => string()
%% }
-type aws_ec2_launch_template_data_capacity_reservation_specification_capacity_reservation_target_details() :: #{binary() => any()}.


%% Example:
%% create_members_request() :: #{
%%   <<"AccountDetails">> := list(account_details()())
%% }
-type create_members_request() :: #{binary() => any()}.


%% Example:
%% aws_events_endpoint_routing_config_failover_config_primary_details() :: #{
%%   <<"HealthCheck">> => string()
%% }
-type aws_events_endpoint_routing_config_failover_config_primary_details() :: #{binary() => any()}.


%% Example:
%% aws_elb_load_balancer_policies() :: #{
%%   <<"AppCookieStickinessPolicies">> => list(aws_elb_app_cookie_stickiness_policy()()),
%%   <<"LbCookieStickinessPolicies">> => list(aws_elb_lb_cookie_stickiness_policy()()),
%%   <<"OtherPolicies">> => list(string()())
%% }
-type aws_elb_load_balancer_policies() :: #{binary() => any()}.


%% Example:
%% aws_dynamo_db_table_replica_global_secondary_index() :: #{
%%   <<"IndexName">> => string(),
%%   <<"ProvisionedThroughputOverride">> => aws_dynamo_db_table_provisioned_throughput_override()
%% }
-type aws_dynamo_db_table_replica_global_secondary_index() :: #{binary() => any()}.


%% Example:
%% icmp_type_code() :: #{
%%   <<"Code">> => integer(),
%%   <<"Type">> => integer()
%% }
-type icmp_type_code() :: #{binary() => any()}.


%% Example:
%% aws_backup_recovery_point_lifecycle_details() :: #{
%%   <<"DeleteAfterDays">> => float(),
%%   <<"MoveToColdStorageAfterDays">> => float()
%% }
-type aws_backup_recovery_point_lifecycle_details() :: #{binary() => any()}.


%% Example:
%% aws_ec2_launch_template_data_instance_market_options_details() :: #{
%%   <<"MarketType">> => string(),
%%   <<"SpotOptions">> => aws_ec2_launch_template_data_instance_market_options_spot_options_details()
%% }
-type aws_ec2_launch_template_data_instance_market_options_details() :: #{binary() => any()}.


%% Example:
%% aws_athena_work_group_configuration_result_configuration_encryption_configuration_details() :: #{
%%   <<"EncryptionOption">> => string(),
%%   <<"KmsKey">> => string()
%% }
-type aws_athena_work_group_configuration_result_configuration_encryption_configuration_details() :: #{binary() => any()}.


%% Example:
%% aws_ec2_network_interface_attachment() :: #{
%%   <<"AttachTime">> => string(),
%%   <<"AttachmentId">> => string(),
%%   <<"DeleteOnTermination">> => boolean(),
%%   <<"DeviceIndex">> => integer(),
%%   <<"InstanceId">> => string(),
%%   <<"InstanceOwnerId">> => string(),
%%   <<"Status">> => string()
%% }
-type aws_ec2_network_interface_attachment() :: #{binary() => any()}.


%% Example:
%% rule_group_variables() :: #{
%%   <<"IpSets">> => rule_group_variables_ip_sets_details(),
%%   <<"PortSets">> => rule_group_variables_port_sets_details()
%% }
-type rule_group_variables() :: #{binary() => any()}.


%% Example:
%% aws_iam_access_key_session_context_session_issuer() :: #{
%%   <<"AccountId">> => string(),
%%   <<"Arn">> => string(),
%%   <<"PrincipalId">> => string(),
%%   <<"Type">> => string(),
%%   <<"UserName">> => string()
%% }
-type aws_iam_access_key_session_context_session_issuer() :: #{binary() => any()}.


%% Example:
%% disassociate_members_request() :: #{
%%   <<"AccountIds">> := list(string()())
%% }
-type disassociate_members_request() :: #{binary() => any()}.


%% Example:
%% aws_api_gateway_v2_route_settings() :: #{
%%   <<"DataTraceEnabled">> => boolean(),
%%   <<"DetailedMetricsEnabled">> => boolean(),
%%   <<"LoggingLevel">> => string(),
%%   <<"ThrottlingBurstLimit">> => integer(),
%%   <<"ThrottlingRateLimit">> => float()
%% }
-type aws_api_gateway_v2_route_settings() :: #{binary() => any()}.


%% Example:
%% aws_ec2_volume_details() :: #{
%%   <<"Attachments">> => list(aws_ec2_volume_attachment()()),
%%   <<"CreateTime">> => string(),
%%   <<"DeviceName">> => string(),
%%   <<"Encrypted">> => boolean(),
%%   <<"KmsKeyId">> => string(),
%%   <<"Size">> => integer(),
%%   <<"SnapshotId">> => string(),
%%   <<"Status">> => string(),
%%   <<"VolumeId">> => string(),
%%   <<"VolumeScanStatus">> => string(),
%%   <<"VolumeType">> => string()
%% }
-type aws_ec2_volume_details() :: #{binary() => any()}.


%% Example:
%% get_findings_response() :: #{
%%   <<"Findings">> => list(aws_security_finding()()),
%%   <<"NextToken">> => string()
%% }
-type get_findings_response() :: #{binary() => any()}.


%% Example:
%% aws_ec2_launch_template_data_instance_requirements_network_interface_count_details() :: #{
%%   <<"Max">> => integer(),
%%   <<"Min">> => integer()
%% }
-type aws_ec2_launch_template_data_instance_requirements_network_interface_count_details() :: #{binary() => any()}.


%% Example:
%% aws_waf_rule_group_details() :: #{
%%   <<"MetricName">> => string(),
%%   <<"Name">> => string(),
%%   <<"RuleGroupId">> => string(),
%%   <<"Rules">> => list(aws_waf_rule_group_rules_details()())
%% }
-type aws_waf_rule_group_details() :: #{binary() => any()}.


%% Example:
%% aws_cloud_front_distribution_details() :: #{
%%   <<"CacheBehaviors">> => aws_cloud_front_distribution_cache_behaviors(),
%%   <<"DefaultCacheBehavior">> => aws_cloud_front_distribution_default_cache_behavior(),
%%   <<"DefaultRootObject">> => string(),
%%   <<"DomainName">> => string(),
%%   <<"ETag">> => string(),
%%   <<"LastModifiedTime">> => string(),
%%   <<"Logging">> => aws_cloud_front_distribution_logging(),
%%   <<"OriginGroups">> => aws_cloud_front_distribution_origin_groups(),
%%   <<"Origins">> => aws_cloud_front_distribution_origins(),
%%   <<"Status">> => string(),
%%   <<"ViewerCertificate">> => aws_cloud_front_distribution_viewer_certificate(),
%%   <<"WebAclId">> => string()
%% }
-type aws_cloud_front_distribution_details() :: #{binary() => any()}.


%% Example:
%% aws_cloud_front_distribution_cache_behavior() :: #{
%%   <<"ViewerProtocolPolicy">> => string()
%% }
-type aws_cloud_front_distribution_cache_behavior() :: #{binary() => any()}.


%% Example:
%% aws_ec2_security_group_details() :: #{
%%   <<"GroupId">> => string(),
%%   <<"GroupName">> => string(),
%%   <<"IpPermissions">> => list(aws_ec2_security_group_ip_permission()()),
%%   <<"IpPermissionsEgress">> => list(aws_ec2_security_group_ip_permission()()),
%%   <<"OwnerId">> => string(),
%%   <<"VpcId">> => string()
%% }
-type aws_ec2_security_group_details() :: #{binary() => any()}.


%% Example:
%% aws_ecs_container_details() :: #{
%%   <<"Image">> => string(),
%%   <<"MountPoints">> => list(aws_mount_point()()),
%%   <<"Name">> => string(),
%%   <<"Privileged">> => boolean()
%% }
-type aws_ecs_container_details() :: #{binary() => any()}.


%% Example:
%% aws_ecs_service_service_registries_details() :: #{
%%   <<"ContainerName">> => string(),
%%   <<"ContainerPort">> => integer(),
%%   <<"Port">> => integer(),
%%   <<"RegistryArn">> => string()
%% }
-type aws_ecs_service_service_registries_details() :: #{binary() => any()}.


%% Example:
%% aws_ecs_task_definition_container_definitions_environment_details() :: #{
%%   <<"Name">> => string(),
%%   <<"Value">> => string()
%% }
-type aws_ecs_task_definition_container_definitions_environment_details() :: #{binary() => any()}.


%% Example:
%% vulnerability_code_vulnerabilities() :: #{
%%   <<"Cwes">> => list(string()()),
%%   <<"FilePath">> => code_vulnerabilities_file_path(),
%%   <<"SourceArn">> => string()
%% }
-type vulnerability_code_vulnerabilities() :: #{binary() => any()}.

%% Example:
%% update_action_target_response() :: #{}
-type update_action_target_response() :: #{}.


%% Example:
%% aws_dms_endpoint_details() :: #{
%%   <<"CertificateArn">> => string(),
%%   <<"DatabaseName">> => string(),
%%   <<"EndpointArn">> => string(),
%%   <<"EndpointIdentifier">> => string(),
%%   <<"EndpointType">> => string(),
%%   <<"EngineName">> => string(),
%%   <<"ExternalId">> => string(),
%%   <<"ExtraConnectionAttributes">> => string(),
%%   <<"KmsKeyId">> => string(),
%%   <<"Port">> => integer(),
%%   <<"ServerName">> => string(),
%%   <<"SslMode">> => string(),
%%   <<"Username">> => string()
%% }
-type aws_dms_endpoint_details() :: #{binary() => any()}.


%% Example:
%% recommendation() :: #{
%%   <<"Text">> => string(),
%%   <<"Url">> => string()
%% }
-type recommendation() :: #{binary() => any()}.


%% Example:
%% finding_aggregator() :: #{
%%   <<"FindingAggregatorArn">> => string()
%% }
-type finding_aggregator() :: #{binary() => any()}.


%% Example:
%% delete_members_request() :: #{
%%   <<"AccountIds">> := list(string()())
%% }
-type delete_members_request() :: #{binary() => any()}.


%% Example:
%% aws_guard_duty_detector_data_sources_dns_logs_details() :: #{
%%   <<"Status">> => string()
%% }
-type aws_guard_duty_detector_data_sources_dns_logs_details() :: #{binary() => any()}.


%% Example:
%% invite_members_response() :: #{
%%   <<"UnprocessedAccounts">> => list(result()())
%% }
-type invite_members_response() :: #{binary() => any()}.


%% Example:
%% aws_s3_bucket_notification_configuration_s3_key_filter() :: #{
%%   <<"FilterRules">> => list(aws_s3_bucket_notification_configuration_s3_key_filter_rule()())
%% }
-type aws_s3_bucket_notification_configuration_s3_key_filter() :: #{binary() => any()}.


%% Example:
%% aws_redshift_cluster_vpc_security_group() :: #{
%%   <<"Status">> => string(),
%%   <<"VpcSecurityGroupId">> => string()
%% }
-type aws_redshift_cluster_vpc_security_group() :: #{binary() => any()}.


%% Example:
%% aws_sage_maker_notebook_instance_metadata_service_configuration_details() :: #{
%%   <<"MinimumInstanceMetadataServiceVersion">> => string()
%% }
-type aws_sage_maker_notebook_instance_metadata_service_configuration_details() :: #{binary() => any()}.


%% Example:
%% aws_ec2_vpn_connection_vgw_telemetry_details() :: #{
%%   <<"AcceptedRouteCount">> => integer(),
%%   <<"CertificateArn">> => string(),
%%   <<"LastStatusChange">> => string(),
%%   <<"OutsideIpAddress">> => string(),
%%   <<"Status">> => string(),
%%   <<"StatusMessage">> => string()
%% }
-type aws_ec2_vpn_connection_vgw_telemetry_details() :: #{binary() => any()}.


%% Example:
%% aws_guard_duty_detector_data_sources_kubernetes_audit_logs_details() :: #{
%%   <<"Status">> => string()
%% }
-type aws_guard_duty_detector_data_sources_kubernetes_audit_logs_details() :: #{binary() => any()}.


%% Example:
%% vpc_info_cidr_block_set_details() :: #{
%%   <<"CidrBlock">> => string()
%% }
-type vpc_info_cidr_block_set_details() :: #{binary() => any()}.


%% Example:
%% aws_dynamo_db_table_billing_mode_summary() :: #{
%%   <<"BillingMode">> => string(),
%%   <<"LastUpdateToPayPerRequestDateTime">> => string()
%% }
-type aws_dynamo_db_table_billing_mode_summary() :: #{binary() => any()}.


%% Example:
%% aws_s3_bucket_bucket_lifecycle_configuration_rules_filter_predicate_tag_details() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type aws_s3_bucket_bucket_lifecycle_configuration_rules_filter_predicate_tag_details() :: #{binary() => any()}.


%% Example:
%% signal() :: #{
%%   <<"ActorIds">> => list(string()()),
%%   <<"Count">> => integer(),
%%   <<"CreatedAt">> => float(),
%%   <<"EndpointIds">> => list(string()()),
%%   <<"FirstSeenAt">> => float(),
%%   <<"Id">> => string(),
%%   <<"LastSeenAt">> => float(),
%%   <<"Name">> => string(),
%%   <<"ProductArn">> => string(),
%%   <<"ResourceIds">> => list(string()()),
%%   <<"Severity">> => float(),
%%   <<"SignalIndicators">> => list(indicator()()),
%%   <<"Title">> => string(),
%%   <<"Type">> => string(),
%%   <<"UpdatedAt">> => float()
%% }
-type signal() :: #{binary() => any()}.


%% Example:
%% account_details() :: #{
%%   <<"AccountId">> => string(),
%%   <<"Email">> => string()
%% }
-type account_details() :: #{binary() => any()}.


%% Example:
%% aws_ec2_launch_template_data_instance_requirements_memory_mi_b_details() :: #{
%%   <<"Max">> => integer(),
%%   <<"Min">> => integer()
%% }
-type aws_ec2_launch_template_data_instance_requirements_memory_mi_b_details() :: #{binary() => any()}.


%% Example:
%% aws_wafv2_custom_response_details() :: #{
%%   <<"CustomResponseBodyKey">> => string(),
%%   <<"ResponseCode">> => integer(),
%%   <<"ResponseHeaders">> => list(aws_wafv2_custom_http_header()())
%% }
-type aws_wafv2_custom_response_details() :: #{binary() => any()}.


%% Example:
%% aws_events_endpoint_routing_config_failover_config_secondary_details() :: #{
%%   <<"Route">> => string()
%% }
-type aws_events_endpoint_routing_config_failover_config_secondary_details() :: #{binary() => any()}.


%% Example:
%% aws_waf_rule_group_rules_details() :: #{
%%   <<"Action">> => aws_waf_rule_group_rules_action_details(),
%%   <<"Priority">> => integer(),
%%   <<"RuleId">> => string(),
%%   <<"Type">> => string()
%% }
-type aws_waf_rule_group_rules_details() :: #{binary() => any()}.


%% Example:
%% aws_guard_duty_detector_data_sources_malware_protection_scan_ec2_instance_with_findings_ebs_volumes_details() :: #{
%%   <<"Reason">> => string(),
%%   <<"Status">> => string()
%% }
-type aws_guard_duty_detector_data_sources_malware_protection_scan_ec2_instance_with_findings_ebs_volumes_details() :: #{binary() => any()}.


%% Example:
%% aws_guard_duty_detector_data_sources_cloud_trail_details() :: #{
%%   <<"Status">> => string()
%% }
-type aws_guard_duty_detector_data_sources_cloud_trail_details() :: #{binary() => any()}.


%% Example:
%% aws_cloud_front_distribution_origin_s3_origin_config() :: #{
%%   <<"OriginAccessIdentity">> => string()
%% }
-type aws_cloud_front_distribution_origin_s3_origin_config() :: #{binary() => any()}.


%% Example:
%% batch_get_automation_rules_response() :: #{
%%   <<"Rules">> => list(automation_rules_config()()),
%%   <<"UnprocessedAutomationRules">> => list(unprocessed_automation_rule()())
%% }
-type batch_get_automation_rules_response() :: #{binary() => any()}.


%% Example:
%% load_balancer_state() :: #{
%%   <<"Code">> => string(),
%%   <<"Reason">> => string()
%% }
-type load_balancer_state() :: #{binary() => any()}.


%% Example:
%% string_list_configuration_options() :: #{
%%   <<"DefaultValue">> => list(string()()),
%%   <<"ExpressionDescription">> => string(),
%%   <<"MaxItems">> => integer(),
%%   <<"Re2Expression">> => string()
%% }
-type string_list_configuration_options() :: #{binary() => any()}.


%% Example:
%% aws_event_schemas_registry_details() :: #{
%%   <<"Description">> => string(),
%%   <<"RegistryArn">> => string(),
%%   <<"RegistryName">> => string()
%% }
-type aws_event_schemas_registry_details() :: #{binary() => any()}.


%% Example:
%% aws_rds_db_cluster_snapshot_db_cluster_snapshot_attribute() :: #{
%%   <<"AttributeName">> => string(),
%%   <<"AttributeValues">> => list(string()())
%% }
-type aws_rds_db_cluster_snapshot_db_cluster_snapshot_attribute() :: #{binary() => any()}.


%% Example:
%% batch_get_automation_rules_request() :: #{
%%   <<"AutomationRulesArns">> := list(string()())
%% }
-type batch_get_automation_rules_request() :: #{binary() => any()}.


%% Example:
%% result() :: #{
%%   <<"AccountId">> => string(),
%%   <<"ProcessingResult">> => string()
%% }
-type result() :: #{binary() => any()}.


%% Example:
%% aws_guard_duty_detector_data_sources_details() :: #{
%%   <<"CloudTrail">> => aws_guard_duty_detector_data_sources_cloud_trail_details(),
%%   <<"DnsLogs">> => aws_guard_duty_detector_data_sources_dns_logs_details(),
%%   <<"FlowLogs">> => aws_guard_duty_detector_data_sources_flow_logs_details(),
%%   <<"Kubernetes">> => aws_guard_duty_detector_data_sources_kubernetes_details(),
%%   <<"MalwareProtection">> => aws_guard_duty_detector_data_sources_malware_protection_details(),
%%   <<"S3Logs">> => aws_guard_duty_detector_data_sources_s3_logs_details()
%% }
-type aws_guard_duty_detector_data_sources_details() :: #{binary() => any()}.


%% Example:
%% workflow() :: #{
%%   <<"Status">> => list(any())
%% }
-type workflow() :: #{binary() => any()}.


%% Example:
%% create_insight_response() :: #{
%%   <<"InsightArn">> => string()
%% }
-type create_insight_response() :: #{binary() => any()}.


%% Example:
%% sort_criterion() :: #{
%%   <<"Field">> => string(),
%%   <<"SortOrder">> => list(any())
%% }
-type sort_criterion() :: #{binary() => any()}.


%% Example:
%% automation_rules_config() :: #{
%%   <<"Actions">> => list(automation_rules_action()()),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"CreatedBy">> => string(),
%%   <<"Criteria">> => automation_rules_finding_filters(),
%%   <<"Description">> => string(),
%%   <<"IsTerminal">> => boolean(),
%%   <<"RuleArn">> => string(),
%%   <<"RuleName">> => string(),
%%   <<"RuleOrder">> => integer(),
%%   <<"RuleStatus">> => list(any()),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type automation_rules_config() :: #{binary() => any()}.


%% Example:
%% aws_code_build_project_environment_registry_credential() :: #{
%%   <<"Credential">> => string(),
%%   <<"CredentialProvider">> => string()
%% }
-type aws_code_build_project_environment_registry_credential() :: #{binary() => any()}.


%% Example:
%% aws_backup_backup_plan_rule_details() :: #{
%%   <<"CompletionWindowMinutes">> => float(),
%%   <<"CopyActions">> => list(aws_backup_backup_plan_rule_copy_actions_details()()),
%%   <<"EnableContinuousBackup">> => boolean(),
%%   <<"Lifecycle">> => aws_backup_backup_plan_lifecycle_details(),
%%   <<"RuleId">> => string(),
%%   <<"RuleName">> => string(),
%%   <<"ScheduleExpression">> => string(),
%%   <<"StartWindowMinutes">> => float(),
%%   <<"TargetBackupVault">> => string()
%% }
-type aws_backup_backup_plan_rule_details() :: #{binary() => any()}.


%% Example:
%% keyword_filter() :: #{
%%   <<"Value">> => string()
%% }
-type keyword_filter() :: #{binary() => any()}.


%% Example:
%% product() :: #{
%%   <<"ActivationUrl">> => string(),
%%   <<"Categories">> => list(string()()),
%%   <<"CompanyName">> => string(),
%%   <<"Description">> => string(),
%%   <<"IntegrationTypes">> => list(list(any())()),
%%   <<"MarketplaceUrl">> => string(),
%%   <<"ProductArn">> => string(),
%%   <<"ProductName">> => string(),
%%   <<"ProductSubscriptionResourcePolicy">> => string()
%% }
-type product() :: #{binary() => any()}.


%% Example:
%% aws_route53_query_logging_config_details() :: #{
%%   <<"CloudWatchLogsLogGroupArn">> => cloud_watch_logs_log_group_arn_config_details()
%% }
-type aws_route53_query_logging_config_details() :: #{binary() => any()}.


%% Example:
%% aws_s3_bucket_object_lock_configuration() :: #{
%%   <<"ObjectLockEnabled">> => string(),
%%   <<"Rule">> => aws_s3_bucket_object_lock_configuration_rule_details()
%% }
-type aws_s3_bucket_object_lock_configuration() :: #{binary() => any()}.


%% Example:
%% aws_route53_hosted_zone_object_details() :: #{
%%   <<"Config">> => aws_route53_hosted_zone_config_details(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string()
%% }
-type aws_route53_hosted_zone_object_details() :: #{binary() => any()}.


%% Example:
%% aws_ec2_launch_template_data_capacity_reservation_specification_details() :: #{
%%   <<"CapacityReservationPreference">> => string(),
%%   <<"CapacityReservationTarget">> => aws_ec2_launch_template_data_capacity_reservation_specification_capacity_reservation_target_details()
%% }
-type aws_ec2_launch_template_data_capacity_reservation_specification_details() :: #{binary() => any()}.


%% Example:
%% aws_rds_db_cluster_snapshot_details() :: #{
%%   <<"AllocatedStorage">> => integer(),
%%   <<"AvailabilityZones">> => list(string()()),
%%   <<"ClusterCreateTime">> => string(),
%%   <<"DbClusterIdentifier">> => string(),
%%   <<"DbClusterSnapshotAttributes">> => list(aws_rds_db_cluster_snapshot_db_cluster_snapshot_attribute()()),
%%   <<"DbClusterSnapshotIdentifier">> => string(),
%%   <<"Engine">> => string(),
%%   <<"EngineVersion">> => string(),
%%   <<"IamDatabaseAuthenticationEnabled">> => boolean(),
%%   <<"KmsKeyId">> => string(),
%%   <<"LicenseModel">> => string(),
%%   <<"MasterUsername">> => string(),
%%   <<"PercentProgress">> => integer(),
%%   <<"Port">> => integer(),
%%   <<"SnapshotCreateTime">> => string(),
%%   <<"SnapshotType">> => string(),
%%   <<"Status">> => string(),
%%   <<"StorageEncrypted">> => boolean(),
%%   <<"VpcId">> => string()
%% }
-type aws_rds_db_cluster_snapshot_details() :: #{binary() => any()}.


%% Example:
%% software_package() :: #{
%%   <<"Architecture">> => string(),
%%   <<"Epoch">> => string(),
%%   <<"FilePath">> => string(),
%%   <<"FixedInVersion">> => string(),
%%   <<"Name">> => string(),
%%   <<"PackageManager">> => string(),
%%   <<"Release">> => string(),
%%   <<"Remediation">> => string(),
%%   <<"SourceLayerArn">> => string(),
%%   <<"SourceLayerHash">> => string(),
%%   <<"Version">> => string()
%% }
-type software_package() :: #{binary() => any()}.


%% Example:
%% invalid_input_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string()
%% }
-type invalid_input_exception() :: #{binary() => any()}.


%% Example:
%% port_range_from_to() :: #{
%%   <<"From">> => integer(),
%%   <<"To">> => integer()
%% }
-type port_range_from_to() :: #{binary() => any()}.


%% Example:
%% volume_mount() :: #{
%%   <<"MountPath">> => string(),
%%   <<"Name">> => string()
%% }
-type volume_mount() :: #{binary() => any()}.


%% Example:
%% aws_ec2_launch_template_data_instance_requirements_baseline_ebs_bandwidth_mbps_details() :: #{
%%   <<"Max">> => integer(),
%%   <<"Min">> => integer()
%% }
-type aws_ec2_launch_template_data_instance_requirements_baseline_ebs_bandwidth_mbps_details() :: #{binary() => any()}.


%% Example:
%% aws_redshift_cluster_restore_status() :: #{
%%   <<"CurrentRestoreRateInMegaBytesPerSecond">> => float(),
%%   <<"ElapsedTimeInSeconds">> => float(),
%%   <<"EstimatedTimeToCompletionInSeconds">> => float(),
%%   <<"ProgressInMegaBytes">> => float(),
%%   <<"SnapshotSizeInMegaBytes">> => float(),
%%   <<"Status">> => string()
%% }
-type aws_redshift_cluster_restore_status() :: #{binary() => any()}.


%% Example:
%% start_configuration_policy_disassociation_request() :: #{
%%   <<"ConfigurationPolicyIdentifier">> := string(),
%%   <<"Target">> => list()
%% }
-type start_configuration_policy_disassociation_request() :: #{binary() => any()}.


%% Example:
%% unprocessed_standards_control_association_update() :: #{
%%   <<"ErrorCode">> => list(any()),
%%   <<"ErrorReason">> => string(),
%%   <<"StandardsControlAssociationUpdate">> => standards_control_association_update()
%% }
-type unprocessed_standards_control_association_update() :: #{binary() => any()}.


%% Example:
%% update_finding_aggregator_request() :: #{
%%   <<"FindingAggregatorArn">> := string(),
%%   <<"RegionLinkingMode">> := string(),
%%   <<"Regions">> => list(string()())
%% }
-type update_finding_aggregator_request() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% aws_lambda_function_code() :: #{
%%   <<"S3Bucket">> => string(),
%%   <<"S3Key">> => string(),
%%   <<"S3ObjectVersion">> => string(),
%%   <<"ZipFile">> => string()
%% }
-type aws_lambda_function_code() :: #{binary() => any()}.


%% Example:
%% aws_certificate_manager_certificate_resource_record() :: #{
%%   <<"Name">> => string(),
%%   <<"Type">> => string(),
%%   <<"Value">> => string()
%% }
-type aws_certificate_manager_certificate_resource_record() :: #{binary() => any()}.


%% Example:
%% aws_cloud_front_distribution_origin_ssl_protocols() :: #{
%%   <<"Items">> => list(string()()),
%%   <<"Quantity">> => integer()
%% }
-type aws_cloud_front_distribution_origin_ssl_protocols() :: #{binary() => any()}.


%% Example:
%% date_filter() :: #{
%%   <<"DateRange">> => date_range(),
%%   <<"End">> => string(),
%%   <<"Start">> => string()
%% }
-type date_filter() :: #{binary() => any()}.


%% Example:
%% aws_auto_scaling_auto_scaling_group_mixed_instances_policy_details() :: #{
%%   <<"InstancesDistribution">> => aws_auto_scaling_auto_scaling_group_mixed_instances_policy_instances_distribution_details(),
%%   <<"LaunchTemplate">> => aws_auto_scaling_auto_scaling_group_mixed_instances_policy_launch_template_details()
%% }
-type aws_auto_scaling_auto_scaling_group_mixed_instances_policy_details() :: #{binary() => any()}.


%% Example:
%% aws_ec2_launch_template_data_private_dns_name_options_details() :: #{
%%   <<"EnableResourceNameDnsAAAARecord">> => boolean(),
%%   <<"EnableResourceNameDnsARecord">> => boolean(),
%%   <<"HostnameType">> => string()
%% }
-type aws_ec2_launch_template_data_private_dns_name_options_details() :: #{binary() => any()}.


%% Example:
%% list_configuration_policy_associations_response() :: #{
%%   <<"ConfigurationPolicyAssociationSummaries">> => list(configuration_policy_association_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_configuration_policy_associations_response() :: #{binary() => any()}.


%% Example:
%% aws_ecs_task_definition_container_definitions_linux_parameters_tmpfs_details() :: #{
%%   <<"ContainerPath">> => string(),
%%   <<"MountOptions">> => list(string()()),
%%   <<"Size">> => integer()
%% }
-type aws_ecs_task_definition_container_definitions_linux_parameters_tmpfs_details() :: #{binary() => any()}.


%% Example:
%% aws_sage_maker_notebook_instance_details() :: #{
%%   <<"AcceleratorTypes">> => list(string()()),
%%   <<"AdditionalCodeRepositories">> => list(string()()),
%%   <<"DefaultCodeRepository">> => string(),
%%   <<"DirectInternetAccess">> => string(),
%%   <<"FailureReason">> => string(),
%%   <<"InstanceMetadataServiceConfiguration">> => aws_sage_maker_notebook_instance_metadata_service_configuration_details(),
%%   <<"InstanceType">> => string(),
%%   <<"KmsKeyId">> => string(),
%%   <<"NetworkInterfaceId">> => string(),
%%   <<"NotebookInstanceArn">> => string(),
%%   <<"NotebookInstanceLifecycleConfigName">> => string(),
%%   <<"NotebookInstanceName">> => string(),
%%   <<"NotebookInstanceStatus">> => string(),
%%   <<"PlatformIdentifier">> => string(),
%%   <<"RoleArn">> => string(),
%%   <<"RootAccess">> => string(),
%%   <<"SecurityGroups">> => list(string()()),
%%   <<"SubnetId">> => string(),
%%   <<"Url">> => string(),
%%   <<"VolumeSizeInGB">> => integer()
%% }
-type aws_sage_maker_notebook_instance_details() :: #{binary() => any()}.


%% Example:
%% get_configuration_policy_association_request() :: #{
%%   <<"Target">> := list()
%% }
-type get_configuration_policy_association_request() :: #{binary() => any()}.


%% Example:
%% network_endpoint() :: #{
%%   <<"AutonomousSystem">> => network_autonomous_system(),
%%   <<"Connection">> => network_connection(),
%%   <<"Domain">> => string(),
%%   <<"Id">> => string(),
%%   <<"Ip">> => string(),
%%   <<"Location">> => network_geo_location(),
%%   <<"Port">> => integer()
%% }
-type network_endpoint() :: #{binary() => any()}.


%% Example:
%% aws_cloud_trail_trail_details() :: #{
%%   <<"CloudWatchLogsLogGroupArn">> => string(),
%%   <<"CloudWatchLogsRoleArn">> => string(),
%%   <<"HasCustomEventSelectors">> => boolean(),
%%   <<"HomeRegion">> => string(),
%%   <<"IncludeGlobalServiceEvents">> => boolean(),
%%   <<"IsMultiRegionTrail">> => boolean(),
%%   <<"IsOrganizationTrail">> => boolean(),
%%   <<"KmsKeyId">> => string(),
%%   <<"LogFileValidationEnabled">> => boolean(),
%%   <<"Name">> => string(),
%%   <<"S3BucketName">> => string(),
%%   <<"S3KeyPrefix">> => string(),
%%   <<"SnsTopicArn">> => string(),
%%   <<"SnsTopicName">> => string(),
%%   <<"TrailArn">> => string()
%% }
-type aws_cloud_trail_trail_details() :: #{binary() => any()}.


%% Example:
%% aws_ec2_vpn_connection_options_tunnel_options_details() :: #{
%%   <<"DpdTimeoutSeconds">> => integer(),
%%   <<"IkeVersions">> => list(string()()),
%%   <<"OutsideIpAddress">> => string(),
%%   <<"Phase1DhGroupNumbers">> => list(integer()()),
%%   <<"Phase1EncryptionAlgorithms">> => list(string()()),
%%   <<"Phase1IntegrityAlgorithms">> => list(string()()),
%%   <<"Phase1LifetimeSeconds">> => integer(),
%%   <<"Phase2DhGroupNumbers">> => list(integer()()),
%%   <<"Phase2EncryptionAlgorithms">> => list(string()()),
%%   <<"Phase2IntegrityAlgorithms">> => list(string()()),
%%   <<"Phase2LifetimeSeconds">> => integer(),
%%   <<"PreSharedKey">> => string(),
%%   <<"RekeyFuzzPercentage">> => integer(),
%%   <<"RekeyMarginTimeSeconds">> => integer(),
%%   <<"ReplayWindowSize">> => integer(),
%%   <<"TunnelInsideCidr">> => string()
%% }
-type aws_ec2_vpn_connection_options_tunnel_options_details() :: #{binary() => any()}.


%% Example:
%% aws_ecs_task_definition_container_definitions_system_controls_details() :: #{
%%   <<"Namespace">> => string(),
%%   <<"Value">> => string()
%% }
-type aws_ecs_task_definition_container_definitions_system_controls_details() :: #{binary() => any()}.


%% Example:
%% aws_ec2_security_group_prefix_list_id() :: #{
%%   <<"PrefixListId">> => string()
%% }
-type aws_ec2_security_group_prefix_list_id() :: #{binary() => any()}.


%% Example:
%% aws_ec2_client_vpn_endpoint_details() :: #{
%%   <<"AuthenticationOptions">> => list(aws_ec2_client_vpn_endpoint_authentication_options_details()()),
%%   <<"ClientCidrBlock">> => string(),
%%   <<"ClientConnectOptions">> => aws_ec2_client_vpn_endpoint_client_connect_options_details(),
%%   <<"ClientLoginBannerOptions">> => aws_ec2_client_vpn_endpoint_client_login_banner_options_details(),
%%   <<"ClientVpnEndpointId">> => string(),
%%   <<"ConnectionLogOptions">> => aws_ec2_client_vpn_endpoint_connection_log_options_details(),
%%   <<"Description">> => string(),
%%   <<"DnsServer">> => list(string()()),
%%   <<"SecurityGroupIdSet">> => list(string()()),
%%   <<"SelfServicePortalUrl">> => string(),
%%   <<"ServerCertificateArn">> => string(),
%%   <<"SessionTimeoutHours">> => integer(),
%%   <<"SplitTunnel">> => boolean(),
%%   <<"TransportProtocol">> => string(),
%%   <<"VpcId">> => string(),
%%   <<"VpnPort">> => integer()
%% }
-type aws_ec2_client_vpn_endpoint_details() :: #{binary() => any()}.


%% Example:
%% aws_cloud_front_distribution_origin_group_failover() :: #{
%%   <<"StatusCodes">> => aws_cloud_front_distribution_origin_group_failover_status_codes()
%% }
-type aws_cloud_front_distribution_origin_group_failover() :: #{binary() => any()}.


%% Example:
%% aws_secrets_manager_secret_details() :: #{
%%   <<"Deleted">> => boolean(),
%%   <<"Description">> => string(),
%%   <<"KmsKeyId">> => string(),
%%   <<"Name">> => string(),
%%   <<"RotationEnabled">> => boolean(),
%%   <<"RotationLambdaArn">> => string(),
%%   <<"RotationOccurredWithinFrequency">> => boolean(),
%%   <<"RotationRules">> => aws_secrets_manager_secret_rotation_rules()
%% }
-type aws_secrets_manager_secret_details() :: #{binary() => any()}.


%% Example:
%% aws_network_firewall_rule_group_details() :: #{
%%   <<"Capacity">> => integer(),
%%   <<"Description">> => string(),
%%   <<"RuleGroup">> => rule_group_details(),
%%   <<"RuleGroupArn">> => string(),
%%   <<"RuleGroupId">> => string(),
%%   <<"RuleGroupName">> => string(),
%%   <<"Type">> => string()
%% }
-type aws_network_firewall_rule_group_details() :: #{binary() => any()}.


%% Example:
%% aws_ecs_task_definition_container_definitions_linux_parameters_details() :: #{
%%   <<"Capabilities">> => aws_ecs_task_definition_container_definitions_linux_parameters_capabilities_details(),
%%   <<"Devices">> => list(aws_ecs_task_definition_container_definitions_linux_parameters_devices_details()()),
%%   <<"InitProcessEnabled">> => boolean(),
%%   <<"MaxSwap">> => integer(),
%%   <<"SharedMemorySize">> => integer(),
%%   <<"Swappiness">> => integer(),
%%   <<"Tmpfs">> => list(aws_ecs_task_definition_container_definitions_linux_parameters_tmpfs_details()())
%% }
-type aws_ecs_task_definition_container_definitions_linux_parameters_details() :: #{binary() => any()}.


%% Example:
%% create_finding_aggregator_request() :: #{
%%   <<"RegionLinkingMode">> := string(),
%%   <<"Regions">> => list(string()())
%% }
-type create_finding_aggregator_request() :: #{binary() => any()}.


%% Example:
%% get_finding_history_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Records">> => list(finding_history_record()())
%% }
-type get_finding_history_response() :: #{binary() => any()}.


%% Example:
%% update_automation_rules_request_item() :: #{
%%   <<"Actions">> => list(automation_rules_action()()),
%%   <<"Criteria">> => automation_rules_finding_filters(),
%%   <<"Description">> => string(),
%%   <<"IsTerminal">> => boolean(),
%%   <<"RuleArn">> => string(),
%%   <<"RuleName">> => string(),
%%   <<"RuleOrder">> => integer(),
%%   <<"RuleStatus">> => list(any())
%% }
-type update_automation_rules_request_item() :: #{binary() => any()}.


%% Example:
%% aws_s3_object_details() :: #{
%%   <<"ContentType">> => string(),
%%   <<"ETag">> => string(),
%%   <<"LastModified">> => string(),
%%   <<"SSEKMSKeyId">> => string(),
%%   <<"ServerSideEncryption">> => string(),
%%   <<"VersionId">> => string()
%% }
-type aws_s3_object_details() :: #{binary() => any()}.


%% Example:
%% aws_elasticsearch_domain_encryption_at_rest_options() :: #{
%%   <<"Enabled">> => boolean(),
%%   <<"KmsKeyId">> => string()
%% }
-type aws_elasticsearch_domain_encryption_at_rest_options() :: #{binary() => any()}.


%% Example:
%% aws_code_build_project_logs_config_cloud_watch_logs_details() :: #{
%%   <<"GroupName">> => string(),
%%   <<"Status">> => string(),
%%   <<"StreamName">> => string()
%% }
-type aws_code_build_project_logs_config_cloud_watch_logs_details() :: #{binary() => any()}.

%% Example:
%% disassociate_members_response() :: #{}
-type disassociate_members_response() :: #{}.


%% Example:
%% aws_ecs_task_definition_container_definitions_log_configuration_details() :: #{
%%   <<"LogDriver">> => string(),
%%   <<"Options">> => map(),
%%   <<"SecretOptions">> => list(aws_ecs_task_definition_container_definitions_log_configuration_secret_options_details()())
%% }
-type aws_ecs_task_definition_container_definitions_log_configuration_details() :: #{binary() => any()}.

%% Example:
%% disable_import_findings_for_product_request() :: #{}
-type disable_import_findings_for_product_request() :: #{}.

%% Example:
%% update_organization_configuration_response() :: #{}
-type update_organization_configuration_response() :: #{}.


%% Example:
%% unprocessed_security_control() :: #{
%%   <<"ErrorCode">> => list(any()),
%%   <<"ErrorReason">> => string(),
%%   <<"SecurityControlId">> => string()
%% }
-type unprocessed_security_control() :: #{binary() => any()}.


%% Example:
%% aws_elb_load_balancer_listener_description() :: #{
%%   <<"Listener">> => aws_elb_load_balancer_listener(),
%%   <<"PolicyNames">> => list(string()())
%% }
-type aws_elb_load_balancer_listener_description() :: #{binary() => any()}.


%% Example:
%% action_target() :: #{
%%   <<"ActionTargetArn">> => string(),
%%   <<"Description">> => string(),
%%   <<"Name">> => string()
%% }
-type action_target() :: #{binary() => any()}.


%% Example:
%% aws_ec2_volume_attachment() :: #{
%%   <<"AttachTime">> => string(),
%%   <<"DeleteOnTermination">> => boolean(),
%%   <<"InstanceId">> => string(),
%%   <<"Status">> => string()
%% }
-type aws_ec2_volume_attachment() :: #{binary() => any()}.


%% Example:
%% batch_update_findings_request() :: #{
%%   <<"Confidence">> => integer(),
%%   <<"Criticality">> => integer(),
%%   <<"FindingIdentifiers">> := list(aws_security_finding_identifier()()),
%%   <<"Note">> => note_update(),
%%   <<"RelatedFindings">> => list(related_finding()()),
%%   <<"Severity">> => severity_update(),
%%   <<"Types">> => list(string()()),
%%   <<"UserDefinedFields">> => map(),
%%   <<"VerificationState">> => list(any()),
%%   <<"Workflow">> => workflow_update()
%% }
-type batch_update_findings_request() :: #{binary() => any()}.


%% Example:
%% generator_details() :: #{
%%   <<"Description">> => string(),
%%   <<"Labels">> => list(string()()),
%%   <<"Name">> => string()
%% }
-type generator_details() :: #{binary() => any()}.


%% Example:
%% detection() :: #{
%%   <<"Sequence">> => sequence()
%% }
-type detection() :: #{binary() => any()}.


%% Example:
%% aws_elb_app_cookie_stickiness_policy() :: #{
%%   <<"CookieName">> => string(),
%%   <<"PolicyName">> => string()
%% }
-type aws_elb_app_cookie_stickiness_policy() :: #{binary() => any()}.


%% Example:
%% vpc_info_ipv6_cidr_block_set_details() :: #{
%%   <<"Ipv6CidrBlock">> => string()
%% }
-type vpc_info_ipv6_cidr_block_set_details() :: #{binary() => any()}.


%% Example:
%% create_automation_rule_request() :: #{
%%   <<"Actions">> := list(automation_rules_action()()),
%%   <<"Criteria">> := automation_rules_finding_filters(),
%%   <<"Description">> := string(),
%%   <<"IsTerminal">> => boolean(),
%%   <<"RuleName">> := string(),
%%   <<"RuleOrder">> := integer(),
%%   <<"RuleStatus">> => list(any()),
%%   <<"Tags">> => map()
%% }
-type create_automation_rule_request() :: #{binary() => any()}.


%% Example:
%% aws_ec2_vpc_peering_connection_status_details() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string()
%% }
-type aws_ec2_vpc_peering_connection_status_details() :: #{binary() => any()}.


%% Example:
%% aws_step_function_state_machine_details() :: #{
%%   <<"Label">> => string(),
%%   <<"LoggingConfiguration">> => aws_step_function_state_machine_logging_configuration_details(),
%%   <<"Name">> => string(),
%%   <<"RoleArn">> => string(),
%%   <<"StateMachineArn">> => string(),
%%   <<"Status">> => string(),
%%   <<"TracingConfiguration">> => aws_step_function_state_machine_tracing_configuration_details(),
%%   <<"Type">> => string()
%% }
-type aws_step_function_state_machine_details() :: #{binary() => any()}.


%% Example:
%% rule_group_source_stateless_rule_match_attributes_destinations() :: #{
%%   <<"AddressDefinition">> => string()
%% }
-type rule_group_source_stateless_rule_match_attributes_destinations() :: #{binary() => any()}.


%% Example:
%% get_insights_response() :: #{
%%   <<"Insights">> => list(insight()()),
%%   <<"NextToken">> => string()
%% }
-type get_insights_response() :: #{binary() => any()}.


%% Example:
%% aws_auto_scaling_launch_configuration_metadata_options() :: #{
%%   <<"HttpEndpoint">> => string(),
%%   <<"HttpPutResponseHopLimit">> => integer(),
%%   <<"HttpTokens">> => string()
%% }
-type aws_auto_scaling_launch_configuration_metadata_options() :: #{binary() => any()}.


%% Example:
%% waf_override_action() :: #{
%%   <<"Type">> => string()
%% }
-type waf_override_action() :: #{binary() => any()}.


%% Example:
%% aws_api_gateway_rest_api_details() :: #{
%%   <<"ApiKeySource">> => string(),
%%   <<"BinaryMediaTypes">> => list(string()()),
%%   <<"CreatedDate">> => string(),
%%   <<"Description">> => string(),
%%   <<"EndpointConfiguration">> => aws_api_gateway_endpoint_configuration(),
%%   <<"Id">> => string(),
%%   <<"MinimumCompressionSize">> => integer(),
%%   <<"Name">> => string(),
%%   <<"Version">> => string()
%% }
-type aws_api_gateway_rest_api_details() :: #{binary() => any()}.


%% Example:
%% aws_iam_group_policy() :: #{
%%   <<"PolicyName">> => string()
%% }
-type aws_iam_group_policy() :: #{binary() => any()}.


%% Example:
%% aws_waf_rate_based_rule_match_predicate() :: #{
%%   <<"DataId">> => string(),
%%   <<"Negated">> => boolean(),
%%   <<"Type">> => string()
%% }
-type aws_waf_rate_based_rule_match_predicate() :: #{binary() => any()}.


%% Example:
%% actor_user() :: #{
%%   <<"Account">> => user_account(),
%%   <<"CredentialUid">> => string(),
%%   <<"Name">> => string(),
%%   <<"Type">> => string(),
%%   <<"Uid">> => string()
%% }
-type actor_user() :: #{binary() => any()}.


%% Example:
%% aws_eks_cluster_logging_details() :: #{
%%   <<"ClusterLogging">> => list(aws_eks_cluster_logging_cluster_logging_details()())
%% }
-type aws_eks_cluster_logging_details() :: #{binary() => any()}.


%% Example:
%% aws_waf_regional_rule_group_rules_details() :: #{
%%   <<"Action">> => aws_waf_regional_rule_group_rules_action_details(),
%%   <<"Priority">> => integer(),
%%   <<"RuleId">> => string(),
%%   <<"Type">> => string()
%% }
-type aws_waf_regional_rule_group_rules_details() :: #{binary() => any()}.


%% Example:
%% standards_control_association_detail() :: #{
%%   <<"AssociationStatus">> => list(any()),
%%   <<"RelatedRequirements">> => list(string()()),
%%   <<"SecurityControlArn">> => string(),
%%   <<"SecurityControlId">> => string(),
%%   <<"StandardsArn">> => string(),
%%   <<"StandardsControlArns">> => list(string()()),
%%   <<"StandardsControlDescription">> => string(),
%%   <<"StandardsControlTitle">> => string(),
%%   <<"UpdatedAt">> => non_neg_integer(),
%%   <<"UpdatedReason">> => string()
%% }
-type standards_control_association_detail() :: #{binary() => any()}.


%% Example:
%% aws_efs_access_point_root_directory_creation_info_details() :: #{
%%   <<"OwnerGid">> => string(),
%%   <<"OwnerUid">> => string(),
%%   <<"Permissions">> => string()
%% }
-type aws_efs_access_point_root_directory_creation_info_details() :: #{binary() => any()}.

%% Example:
%% accept_invitation_response() :: #{}
-type accept_invitation_response() :: #{}.


%% Example:
%% decline_invitations_request() :: #{
%%   <<"AccountIds">> := list(string()())
%% }
-type decline_invitations_request() :: #{binary() => any()}.


%% Example:
%% aws_code_build_project_vpc_config() :: #{
%%   <<"SecurityGroupIds">> => list(string()()),
%%   <<"Subnets">> => list(string()()),
%%   <<"VpcId">> => string()
%% }
-type aws_code_build_project_vpc_config() :: #{binary() => any()}.


%% Example:
%% aws_rds_db_cluster_member() :: #{
%%   <<"DbClusterParameterGroupStatus">> => string(),
%%   <<"DbInstanceIdentifier">> => string(),
%%   <<"IsClusterWriter">> => boolean(),
%%   <<"PromotionTier">> => integer()
%% }
-type aws_rds_db_cluster_member() :: #{binary() => any()}.


%% Example:
%% create_action_target_request() :: #{
%%   <<"Description">> := string(),
%%   <<"Id">> := string(),
%%   <<"Name">> := string()
%% }
-type create_action_target_request() :: #{binary() => any()}.


%% Example:
%% aws_ecs_service_placement_strategies_details() :: #{
%%   <<"Field">> => string(),
%%   <<"Type">> => string()
%% }
-type aws_ecs_service_placement_strategies_details() :: #{binary() => any()}.


%% Example:
%% aws_waf_rate_based_rule_details() :: #{
%%   <<"MatchPredicates">> => list(aws_waf_rate_based_rule_match_predicate()()),
%%   <<"MetricName">> => string(),
%%   <<"Name">> => string(),
%%   <<"RateKey">> => string(),
%%   <<"RateLimit">> => float(),
%%   <<"RuleId">> => string()
%% }
-type aws_waf_rate_based_rule_details() :: #{binary() => any()}.


%% Example:
%% get_master_account_response() :: #{
%%   <<"Master">> => invitation()
%% }
-type get_master_account_response() :: #{binary() => any()}.


%% Example:
%% list_automation_rules_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_automation_rules_request() :: #{binary() => any()}.


%% Example:
%% aws_step_function_state_machine_tracing_configuration_details() :: #{
%%   <<"Enabled">> => boolean()
%% }
-type aws_step_function_state_machine_tracing_configuration_details() :: #{binary() => any()}.


%% Example:
%% aws_ecs_task_definition_container_definitions_environment_files_details() :: #{
%%   <<"Type">> => string(),
%%   <<"Value">> => string()
%% }
-type aws_ecs_task_definition_container_definitions_environment_files_details() :: #{binary() => any()}.


%% Example:
%% aws_api_gateway_canary_settings() :: #{
%%   <<"DeploymentId">> => string(),
%%   <<"PercentTraffic">> => float(),
%%   <<"StageVariableOverrides">> => map(),
%%   <<"UseStageCache">> => boolean()
%% }
-type aws_api_gateway_canary_settings() :: #{binary() => any()}.


%% Example:
%% aws_wafv2_web_acl_captcha_config_immunity_time_property_details() :: #{
%%   <<"ImmunityTime">> => float()
%% }
-type aws_wafv2_web_acl_captcha_config_immunity_time_property_details() :: #{binary() => any()}.


%% Example:
%% list_enabled_products_for_import_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_enabled_products_for_import_request() :: #{binary() => any()}.


%% Example:
%% describe_products_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Products">> => list(product()())
%% }
-type describe_products_response() :: #{binary() => any()}.


%% Example:
%% aws_waf_web_acl_rule() :: #{
%%   <<"Action">> => waf_action(),
%%   <<"ExcludedRules">> => list(waf_excluded_rule()()),
%%   <<"OverrideAction">> => waf_override_action(),
%%   <<"Priority">> => integer(),
%%   <<"RuleId">> => string(),
%%   <<"Type">> => string()
%% }
-type aws_waf_web_acl_rule() :: #{binary() => any()}.


%% Example:
%% cidr_block_association() :: #{
%%   <<"AssociationId">> => string(),
%%   <<"CidrBlock">> => string(),
%%   <<"CidrBlockState">> => string()
%% }
-type cidr_block_association() :: #{binary() => any()}.


%% Example:
%% aws_ec2_vpc_peering_connection_vpc_info_details() :: #{
%%   <<"CidrBlock">> => string(),
%%   <<"CidrBlockSet">> => list(vpc_info_cidr_block_set_details()()),
%%   <<"Ipv6CidrBlockSet">> => list(vpc_info_ipv6_cidr_block_set_details()()),
%%   <<"OwnerId">> => string(),
%%   <<"PeeringOptions">> => vpc_info_peering_options_details(),
%%   <<"Region">> => string(),
%%   <<"VpcId">> => string()
%% }
-type aws_ec2_vpc_peering_connection_vpc_info_details() :: #{binary() => any()}.


%% Example:
%% aws_api_call_action() :: #{
%%   <<"AffectedResources">> => map(),
%%   <<"Api">> => string(),
%%   <<"CallerType">> => string(),
%%   <<"DomainDetails">> => aws_api_call_action_domain_details(),
%%   <<"FirstSeen">> => string(),
%%   <<"LastSeen">> => string(),
%%   <<"RemoteIpDetails">> => action_remote_ip_details(),
%%   <<"ServiceName">> => string()
%% }
-type aws_api_call_action() :: #{binary() => any()}.


%% Example:
%% aws_rds_db_instance_vpc_security_group() :: #{
%%   <<"Status">> => string(),
%%   <<"VpcSecurityGroupId">> => string()
%% }
-type aws_rds_db_instance_vpc_security_group() :: #{binary() => any()}.


%% Example:
%% aws_rds_db_instance_details() :: #{
%%   <<"PreferredBackupWindow">> => string(),
%%   <<"Timezone">> => string(),
%%   <<"Engine">> => string(),
%%   <<"PromotionTier">> => integer(),
%%   <<"DBInstanceIdentifier">> => string(),
%%   <<"DbParameterGroups">> => list(aws_rds_db_parameter_group()()),
%%   <<"ListenerEndpoint">> => aws_rds_db_instance_endpoint(),
%%   <<"Iops">> => integer(),
%%   <<"StatusInfos">> => list(aws_rds_db_status_info()()),
%%   <<"DomainMemberships">> => list(aws_rds_db_domain_membership()()),
%%   <<"DBInstanceClass">> => string(),
%%   <<"CharacterSetName">> => string(),
%%   <<"PendingModifiedValues">> => aws_rds_db_pending_modified_values(),
%%   <<"SecondaryAvailabilityZone">> => string(),
%%   <<"DbiResourceId">> => string(),
%%   <<"CopyTagsToSnapshot">> => boolean(),
%%   <<"PerformanceInsightsEnabled">> => boolean(),
%%   <<"StorageType">> => string(),
%%   <<"MonitoringRoleArn">> => string(),
%%   <<"AvailabilityZone">> => string(),
%%   <<"MasterUsername">> => string(),
%%   <<"EngineVersion">> => string(),
%%   <<"DBName">> => string(),
%%   <<"PubliclyAccessible">> => boolean(),
%%   <<"IAMDatabaseAuthenticationEnabled">> => boolean(),
%%   <<"MultiAz">> => boolean(),
%%   <<"LatestRestorableTime">> => string(),
%%   <<"EnhancedMonitoringResourceArn">> => string(),
%%   <<"BackupRetentionPeriod">> => integer(),
%%   <<"LicenseModel">> => string(),
%%   <<"OptionGroupMemberships">> => list(aws_rds_db_option_group_membership()()),
%%   <<"AssociatedRoles">> => list(aws_rds_db_instance_associated_role()()),
%%   <<"DbInstancePort">> => integer(),
%%   <<"ReadReplicaSourceDBInstanceIdentifier">> => string(),
%%   <<"KmsKeyId">> => string(),
%%   <<"PerformanceInsightsRetentionPeriod">> => integer(),
%%   <<"DBClusterIdentifier">> => string(),
%%   <<"Endpoint">> => aws_rds_db_instance_endpoint(),
%%   <<"PreferredMaintenanceWindow">> => string(),
%%   <<"DbInstanceStatus">> => string(),
%%   <<"ReadReplicaDBClusterIdentifiers">> => list(string()()),
%%   <<"InstanceCreateTime">> => string(),
%%   <<"ProcessorFeatures">> => list(aws_rds_db_processor_feature()()),
%%   <<"VpcSecurityGroups">> => list(aws_rds_db_instance_vpc_security_group()()),
%%   <<"TdeCredentialArn">> => string(),
%%   <<"DbSubnetGroup">> => aws_rds_db_subnet_group(),
%%   <<"DbSecurityGroups">> => list(string()()),
%%   <<"AutoMinorVersionUpgrade">> => boolean(),
%%   <<"PerformanceInsightsKmsKeyId">> => string(),
%%   <<"AllocatedStorage">> => integer(),
%%   <<"ReadReplicaDBInstanceIdentifiers">> => list(string()()),
%%   <<"EnabledCloudWatchLogsExports">> => list(string()()),
%%   <<"MonitoringInterval">> => integer(),
%%   <<"CACertificateIdentifier">> => string(),
%%   <<"StorageEncrypted">> => boolean(),
%%   <<"MaxAllocatedStorage">> => integer(),
%%   <<"DeletionProtection">> => boolean()
%% }
-type aws_rds_db_instance_details() :: #{binary() => any()}.


%% Example:
%% get_security_control_definition_response() :: #{
%%   <<"SecurityControlDefinition">> => security_control_definition()
%% }
-type get_security_control_definition_response() :: #{binary() => any()}.


%% Example:
%% aws_ecs_task_definition_inference_accelerators_details() :: #{
%%   <<"DeviceName">> => string(),
%%   <<"DeviceType">> => string()
%% }
-type aws_ecs_task_definition_inference_accelerators_details() :: #{binary() => any()}.


%% Example:
%% delete_invitations_request() :: #{
%%   <<"AccountIds">> := list(string()())
%% }
-type delete_invitations_request() :: #{binary() => any()}.


%% Example:
%% aws_auto_scaling_auto_scaling_group_mixed_instances_policy_instances_distribution_details() :: #{
%%   <<"OnDemandAllocationStrategy">> => string(),
%%   <<"OnDemandBaseCapacity">> => integer(),
%%   <<"OnDemandPercentageAboveBaseCapacity">> => integer(),
%%   <<"SpotAllocationStrategy">> => string(),
%%   <<"SpotInstancePools">> => integer(),
%%   <<"SpotMaxPrice">> => string()
%% }
-type aws_auto_scaling_auto_scaling_group_mixed_instances_policy_instances_distribution_details() :: #{binary() => any()}.


%% Example:
%% aws_kms_key_details() :: #{
%%   <<"AWSAccountId">> => string(),
%%   <<"CreationDate">> => float(),
%%   <<"Description">> => string(),
%%   <<"KeyId">> => string(),
%%   <<"KeyManager">> => string(),
%%   <<"KeyRotationStatus">> => boolean(),
%%   <<"KeyState">> => string(),
%%   <<"Origin">> => string()
%% }
-type aws_kms_key_details() :: #{binary() => any()}.


%% Example:
%% aws_auto_scaling_auto_scaling_group_mixed_instances_policy_launch_template_details() :: #{
%%   <<"LaunchTemplateSpecification">> => aws_auto_scaling_auto_scaling_group_mixed_instances_policy_launch_template_launch_template_specification(),
%%   <<"Overrides">> => list(aws_auto_scaling_auto_scaling_group_mixed_instances_policy_launch_template_overrides_list_details()())
%% }
-type aws_auto_scaling_auto_scaling_group_mixed_instances_policy_launch_template_details() :: #{binary() => any()}.


%% Example:
%% aws_msk_cluster_cluster_info_client_authentication_tls_details() :: #{
%%   <<"CertificateAuthorityArnList">> => list(string()()),
%%   <<"Enabled">> => boolean()
%% }
-type aws_msk_cluster_cluster_info_client_authentication_tls_details() :: #{binary() => any()}.

%% Example:
%% update_findings_response() :: #{}
-type update_findings_response() :: #{}.


%% Example:
%% aws_s3_bucket_details() :: #{
%%   <<"AccessControlList">> => string(),
%%   <<"BucketLifecycleConfiguration">> => aws_s3_bucket_bucket_lifecycle_configuration_details(),
%%   <<"BucketLoggingConfiguration">> => aws_s3_bucket_logging_configuration(),
%%   <<"BucketNotificationConfiguration">> => aws_s3_bucket_notification_configuration(),
%%   <<"BucketVersioningConfiguration">> => aws_s3_bucket_bucket_versioning_configuration(),
%%   <<"BucketWebsiteConfiguration">> => aws_s3_bucket_website_configuration(),
%%   <<"CreatedAt">> => string(),
%%   <<"Name">> => string(),
%%   <<"ObjectLockConfiguration">> => aws_s3_bucket_object_lock_configuration(),
%%   <<"OwnerAccountId">> => string(),
%%   <<"OwnerId">> => string(),
%%   <<"OwnerName">> => string(),
%%   <<"PublicAccessBlockConfiguration">> => aws_s3_account_public_access_block_details(),
%%   <<"ServerSideEncryptionConfiguration">> => aws_s3_bucket_server_side_encryption_configuration()
%% }
-type aws_s3_bucket_details() :: #{binary() => any()}.


%% Example:
%% aws_network_firewall_firewall_policy_details() :: #{
%%   <<"Description">> => string(),
%%   <<"FirewallPolicy">> => firewall_policy_details(),
%%   <<"FirewallPolicyArn">> => string(),
%%   <<"FirewallPolicyId">> => string(),
%%   <<"FirewallPolicyName">> => string()
%% }
-type aws_network_firewall_firewall_policy_details() :: #{binary() => any()}.


%% Example:
%% aws_eks_cluster_resources_vpc_config_details() :: #{
%%   <<"EndpointPublicAccess">> => boolean(),
%%   <<"SecurityGroupIds">> => list(string()()),
%%   <<"SubnetIds">> => list(string()())
%% }
-type aws_eks_cluster_resources_vpc_config_details() :: #{binary() => any()}.


%% Example:
%% list_enabled_products_for_import_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ProductSubscriptions">> => list(string()())
%% }
-type list_enabled_products_for_import_response() :: #{binary() => any()}.


%% Example:
%% aws_open_search_service_domain_domain_endpoint_options_details() :: #{
%%   <<"CustomEndpoint">> => string(),
%%   <<"CustomEndpointCertificateArn">> => string(),
%%   <<"CustomEndpointEnabled">> => boolean(),
%%   <<"EnforceHTTPS">> => boolean(),
%%   <<"TLSSecurityPolicy">> => string()
%% }
-type aws_open_search_service_domain_domain_endpoint_options_details() :: #{binary() => any()}.


%% Example:
%% aws_ecs_task_definition_volumes_efs_volume_configuration_authorization_config_details() :: #{
%%   <<"AccessPointId">> => string(),
%%   <<"Iam">> => string()
%% }
-type aws_ecs_task_definition_volumes_efs_volume_configuration_authorization_config_details() :: #{binary() => any()}.


%% Example:
%% aws_waf_regional_rate_based_rule_match_predicate() :: #{
%%   <<"DataId">> => string(),
%%   <<"Negated">> => boolean(),
%%   <<"Type">> => string()
%% }
-type aws_waf_regional_rate_based_rule_match_predicate() :: #{binary() => any()}.


%% Example:
%% aws_efs_access_point_posix_user_details() :: #{
%%   <<"Gid">> => string(),
%%   <<"SecondaryGids">> => list(string()()),
%%   <<"Uid">> => string()
%% }
-type aws_efs_access_point_posix_user_details() :: #{binary() => any()}.


%% Example:
%% aws_waf_rule_predicate_list_details() :: #{
%%   <<"DataId">> => string(),
%%   <<"Negated">> => boolean(),
%%   <<"Type">> => string()
%% }
-type aws_waf_rule_predicate_list_details() :: #{binary() => any()}.


%% Example:
%% port_range() :: #{
%%   <<"Begin">> => integer(),
%%   <<"End">> => integer()
%% }
-type port_range() :: #{binary() => any()}.


%% Example:
%% list_configuration_policies_response() :: #{
%%   <<"ConfigurationPolicySummaries">> => list(configuration_policy_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_configuration_policies_response() :: #{binary() => any()}.


%% Example:
%% aws_amazon_mq_broker_ldap_server_metadata_details() :: #{
%%   <<"Hosts">> => list(string()()),
%%   <<"RoleBase">> => string(),
%%   <<"RoleName">> => string(),
%%   <<"RoleSearchMatching">> => string(),
%%   <<"RoleSearchSubtree">> => boolean(),
%%   <<"ServiceAccountUsername">> => string(),
%%   <<"UserBase">> => string(),
%%   <<"UserRoleName">> => string(),
%%   <<"UserSearchMatching">> => string(),
%%   <<"UserSearchSubtree">> => boolean()
%% }
-type aws_amazon_mq_broker_ldap_server_metadata_details() :: #{binary() => any()}.


%% Example:
%% finding_provider_fields() :: #{
%%   <<"Confidence">> => integer(),
%%   <<"Criticality">> => integer(),
%%   <<"RelatedFindings">> => list(related_finding()()),
%%   <<"Severity">> => finding_provider_severity(),
%%   <<"Types">> => list(string()())
%% }
-type finding_provider_fields() :: #{binary() => any()}.


%% Example:
%% update_organization_configuration_request() :: #{
%%   <<"AutoEnable">> := boolean(),
%%   <<"AutoEnableStandards">> => list(any()),
%%   <<"OrganizationConfiguration">> => organization_configuration()
%% }
-type update_organization_configuration_request() :: #{binary() => any()}.


%% Example:
%% enable_organization_admin_account_request() :: #{
%%   <<"AdminAccountId">> := string()
%% }
-type enable_organization_admin_account_request() :: #{binary() => any()}.


%% Example:
%% aws_dms_replication_instance_replication_subnet_group_details() :: #{
%%   <<"ReplicationSubnetGroupIdentifier">> => string()
%% }
-type aws_dms_replication_instance_replication_subnet_group_details() :: #{binary() => any()}.


%% Example:
%% aws_sns_topic_subscription() :: #{
%%   <<"Endpoint">> => string(),
%%   <<"Protocol">> => string()
%% }
-type aws_sns_topic_subscription() :: #{binary() => any()}.


%% Example:
%% aws_route53_hosted_zone_config_details() :: #{
%%   <<"Comment">> => string()
%% }
-type aws_route53_hosted_zone_config_details() :: #{binary() => any()}.


%% Example:
%% aws_cloud_formation_stack_outputs_details() :: #{
%%   <<"Description">> => string(),
%%   <<"OutputKey">> => string(),
%%   <<"OutputValue">> => string()
%% }
-type aws_cloud_formation_stack_outputs_details() :: #{binary() => any()}.


%% Example:
%% threat_intel_indicator() :: #{
%%   <<"Category">> => list(any()),
%%   <<"LastObservedAt">> => string(),
%%   <<"Source">> => string(),
%%   <<"SourceUrl">> => string(),
%%   <<"Type">> => list(any()),
%%   <<"Value">> => string()
%% }
-type threat_intel_indicator() :: #{binary() => any()}.


%% Example:
%% batch_update_findings_response() :: #{
%%   <<"ProcessedFindings">> => list(aws_security_finding_identifier()()),
%%   <<"UnprocessedFindings">> => list(batch_update_findings_unprocessed_finding()())
%% }
-type batch_update_findings_response() :: #{binary() => any()}.


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
%%   <<"NetworkConnectionAction">> => network_connection_action(),
%%   <<"PortProbeAction">> => port_probe_action()
%% }
-type action() :: #{binary() => any()}.


%% Example:
%% aws_open_search_service_domain_log_publishing_option() :: #{
%%   <<"CloudWatchLogsLogGroupArn">> => string(),
%%   <<"Enabled">> => boolean()
%% }
-type aws_open_search_service_domain_log_publishing_option() :: #{binary() => any()}.


%% Example:
%% aws_app_sync_graph_ql_api_additional_authentication_providers_details() :: #{
%%   <<"AuthenticationType">> => string(),
%%   <<"LambdaAuthorizerConfig">> => aws_app_sync_graph_ql_api_lambda_authorizer_config_details(),
%%   <<"OpenIdConnectConfig">> => aws_app_sync_graph_ql_api_open_id_connect_config_details(),
%%   <<"UserPoolConfig">> => aws_app_sync_graph_ql_api_user_pool_config_details()
%% }
-type aws_app_sync_graph_ql_api_additional_authentication_providers_details() :: #{binary() => any()}.


%% Example:
%% custom_data_identifiers_detections() :: #{
%%   <<"Arn">> => string(),
%%   <<"Count">> => float(),
%%   <<"Name">> => string(),
%%   <<"Occurrences">> => occurrences()
%% }
-type custom_data_identifiers_detections() :: #{binary() => any()}.


%% Example:
%% create_finding_aggregator_response() :: #{
%%   <<"FindingAggregationRegion">> => string(),
%%   <<"FindingAggregatorArn">> => string(),
%%   <<"RegionLinkingMode">> => string(),
%%   <<"Regions">> => list(string()())
%% }
-type create_finding_aggregator_response() :: #{binary() => any()}.


%% Example:
%% aws_guard_duty_detector_details() :: #{
%%   <<"DataSources">> => aws_guard_duty_detector_data_sources_details(),
%%   <<"Features">> => list(aws_guard_duty_detector_features_details()()),
%%   <<"FindingPublishingFrequency">> => string(),
%%   <<"ServiceRole">> => string(),
%%   <<"Status">> => string()
%% }
-type aws_guard_duty_detector_details() :: #{binary() => any()}.


%% Example:
%% aws_elasticsearch_domain_service_software_options() :: #{
%%   <<"AutomatedUpdateDate">> => string(),
%%   <<"Cancellable">> => boolean(),
%%   <<"CurrentVersion">> => string(),
%%   <<"Description">> => string(),
%%   <<"NewVersion">> => string(),
%%   <<"UpdateAvailable">> => boolean(),
%%   <<"UpdateStatus">> => string()
%% }
-type aws_elasticsearch_domain_service_software_options() :: #{binary() => any()}.


%% Example:
%% firewall_policy_stateful_rule_group_references_details() :: #{
%%   <<"ResourceArn">> => string()
%% }
-type firewall_policy_stateful_rule_group_references_details() :: #{binary() => any()}.


%% Example:
%% aws_iam_permissions_boundary() :: #{
%%   <<"PermissionsBoundaryArn">> => string(),
%%   <<"PermissionsBoundaryType">> => string()
%% }
-type aws_iam_permissions_boundary() :: #{binary() => any()}.


%% Example:
%% aws_backup_backup_vault_details() :: #{
%%   <<"AccessPolicy">> => string(),
%%   <<"BackupVaultArn">> => string(),
%%   <<"BackupVaultName">> => string(),
%%   <<"EncryptionKeyArn">> => string(),
%%   <<"Notifications">> => aws_backup_backup_vault_notifications_details()
%% }
-type aws_backup_backup_vault_details() :: #{binary() => any()}.


%% Example:
%% aws_ec2_client_vpn_endpoint_authentication_options_federated_authentication_details() :: #{
%%   <<"SamlProviderArn">> => string(),
%%   <<"SelfServiceSamlProviderArn">> => string()
%% }
-type aws_ec2_client_vpn_endpoint_authentication_options_federated_authentication_details() :: #{binary() => any()}.


%% Example:
%% propagating_vgw_set_details() :: #{
%%   <<"GatewayId">> => string()
%% }
-type propagating_vgw_set_details() :: #{binary() => any()}.


%% Example:
%% delete_invitations_response() :: #{
%%   <<"UnprocessedAccounts">> => list(result()())
%% }
-type delete_invitations_response() :: #{binary() => any()}.


%% Example:
%% batch_import_findings_response() :: #{
%%   <<"FailedCount">> => integer(),
%%   <<"FailedFindings">> => list(import_findings_error()()),
%%   <<"SuccessCount">> => integer()
%% }
-type batch_import_findings_response() :: #{binary() => any()}.


%% Example:
%% port_probe_action() :: #{
%%   <<"Blocked">> => boolean(),
%%   <<"PortProbeDetails">> => list(port_probe_detail()())
%% }
-type port_probe_action() :: #{binary() => any()}.


%% Example:
%% aws_wafv2_rules_action_count_details() :: #{
%%   <<"CustomRequestHandling">> => aws_wafv2_custom_request_handling_details()
%% }
-type aws_wafv2_rules_action_count_details() :: #{binary() => any()}.


%% Example:
%% aws_xray_encryption_config_details() :: #{
%%   <<"KeyId">> => string(),
%%   <<"Status">> => string(),
%%   <<"Type">> => string()
%% }
-type aws_xray_encryption_config_details() :: #{binary() => any()}.


%% Example:
%% list_organization_admin_accounts_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_organization_admin_accounts_request() :: #{binary() => any()}.


%% Example:
%% aws_elb_load_balancer_attributes() :: #{
%%   <<"AccessLog">> => aws_elb_load_balancer_access_log(),
%%   <<"AdditionalAttributes">> => list(aws_elb_load_balancer_additional_attribute()()),
%%   <<"ConnectionDraining">> => aws_elb_load_balancer_connection_draining(),
%%   <<"ConnectionSettings">> => aws_elb_load_balancer_connection_settings(),
%%   <<"CrossZoneLoadBalancing">> => aws_elb_load_balancer_cross_zone_load_balancing()
%% }
-type aws_elb_load_balancer_attributes() :: #{binary() => any()}.


%% Example:
%% aws_msk_cluster_cluster_info_client_authentication_sasl_iam_details() :: #{
%%   <<"Enabled">> => boolean()
%% }
-type aws_msk_cluster_cluster_info_client_authentication_sasl_iam_details() :: #{binary() => any()}.


%% Example:
%% standards_control_association_update() :: #{
%%   <<"AssociationStatus">> => list(any()),
%%   <<"SecurityControlId">> => string(),
%%   <<"StandardsArn">> => string(),
%%   <<"UpdatedReason">> => string()
%% }
-type standards_control_association_update() :: #{binary() => any()}.


%% Example:
%% aws_msk_cluster_cluster_info_client_authentication_unauthenticated_details() :: #{
%%   <<"Enabled">> => boolean()
%% }
-type aws_msk_cluster_cluster_info_client_authentication_unauthenticated_details() :: #{binary() => any()}.


%% Example:
%% rule_group_details() :: #{
%%   <<"RuleVariables">> => rule_group_variables(),
%%   <<"RulesSource">> => rule_group_source()
%% }
-type rule_group_details() :: #{binary() => any()}.


%% Example:
%% update_configuration_policy_request() :: #{
%%   <<"ConfigurationPolicy">> => list(),
%%   <<"Description">> => string(),
%%   <<"Name">> => string(),
%%   <<"UpdatedReason">> => string()
%% }
-type update_configuration_policy_request() :: #{binary() => any()}.


%% Example:
%% aws_elb_load_balancer_details() :: #{
%%   <<"AvailabilityZones">> => list(string()()),
%%   <<"BackendServerDescriptions">> => list(aws_elb_load_balancer_backend_server_description()()),
%%   <<"CanonicalHostedZoneName">> => string(),
%%   <<"CanonicalHostedZoneNameID">> => string(),
%%   <<"CreatedTime">> => string(),
%%   <<"DnsName">> => string(),
%%   <<"HealthCheck">> => aws_elb_load_balancer_health_check(),
%%   <<"Instances">> => list(aws_elb_load_balancer_instance()()),
%%   <<"ListenerDescriptions">> => list(aws_elb_load_balancer_listener_description()()),
%%   <<"LoadBalancerAttributes">> => aws_elb_load_balancer_attributes(),
%%   <<"LoadBalancerName">> => string(),
%%   <<"Policies">> => aws_elb_load_balancer_policies(),
%%   <<"Scheme">> => string(),
%%   <<"SecurityGroups">> => list(string()()),
%%   <<"SourceSecurityGroup">> => aws_elb_load_balancer_source_security_group(),
%%   <<"Subnets">> => list(string()()),
%%   <<"VpcId">> => string()
%% }
-type aws_elb_load_balancer_details() :: #{binary() => any()}.


%% Example:
%% threat() :: #{
%%   <<"FilePaths">> => list(file_paths()()),
%%   <<"ItemCount">> => integer(),
%%   <<"Name">> => string(),
%%   <<"Severity">> => string()
%% }
-type threat() :: #{binary() => any()}.


%% Example:
%% aws_ssm_patch_compliance_details() :: #{
%%   <<"Patch">> => aws_ssm_patch()
%% }
-type aws_ssm_patch_compliance_details() :: #{binary() => any()}.


%% Example:
%% describe_hub_response() :: #{
%%   <<"AutoEnableControls">> => boolean(),
%%   <<"ControlFindingGenerator">> => list(any()),
%%   <<"HubArn">> => string(),
%%   <<"SubscribedAt">> => string()
%% }
-type describe_hub_response() :: #{binary() => any()}.


%% Example:
%% aws_ecs_service_deployment_controller_details() :: #{
%%   <<"Type">> => string()
%% }
-type aws_ecs_service_deployment_controller_details() :: #{binary() => any()}.


%% Example:
%% internal_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string()
%% }
-type internal_exception() :: #{binary() => any()}.


%% Example:
%% aws_ec2_instance_details() :: #{
%%   <<"IamInstanceProfileArn">> => string(),
%%   <<"ImageId">> => string(),
%%   <<"IpV4Addresses">> => list(string()()),
%%   <<"IpV6Addresses">> => list(string()()),
%%   <<"KeyName">> => string(),
%%   <<"LaunchedAt">> => string(),
%%   <<"MetadataOptions">> => aws_ec2_instance_metadata_options(),
%%   <<"Monitoring">> => aws_ec2_instance_monitoring_details(),
%%   <<"NetworkInterfaces">> => list(aws_ec2_instance_network_interfaces_details()()),
%%   <<"SubnetId">> => string(),
%%   <<"Type">> => string(),
%%   <<"VirtualizationType">> => string(),
%%   <<"VpcId">> => string()
%% }
-type aws_ec2_instance_details() :: #{binary() => any()}.


%% Example:
%% aws_ec2_security_group_user_id_group_pair() :: #{
%%   <<"GroupId">> => string(),
%%   <<"GroupName">> => string(),
%%   <<"PeeringStatus">> => string(),
%%   <<"UserId">> => string(),
%%   <<"VpcId">> => string(),
%%   <<"VpcPeeringConnectionId">> => string()
%% }
-type aws_ec2_security_group_user_id_group_pair() :: #{binary() => any()}.


%% Example:
%% batch_import_findings_request() :: #{
%%   <<"Findings">> := list(aws_security_finding()())
%% }
-type batch_import_findings_request() :: #{binary() => any()}.


%% Example:
%% aws_dynamo_db_table_projection() :: #{
%%   <<"NonKeyAttributes">> => list(string()()),
%%   <<"ProjectionType">> => string()
%% }
-type aws_dynamo_db_table_projection() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% aws_open_search_service_domain_vpc_options_details() :: #{
%%   <<"SecurityGroupIds">> => list(string()()),
%%   <<"SubnetIds">> => list(string()())
%% }
-type aws_open_search_service_domain_vpc_options_details() :: #{binary() => any()}.


%% Example:
%% delete_insight_response() :: #{
%%   <<"InsightArn">> => string()
%% }
-type delete_insight_response() :: #{binary() => any()}.

%% Example:
%% get_invitations_count_request() :: #{}
-type get_invitations_count_request() :: #{}.


%% Example:
%% aws_wafv2_rules_action_details() :: #{
%%   <<"Allow">> => aws_wafv2_action_allow_details(),
%%   <<"Block">> => aws_wafv2_action_block_details(),
%%   <<"Captcha">> => aws_wafv2_rules_action_captcha_details(),
%%   <<"Count">> => aws_wafv2_rules_action_count_details()
%% }
-type aws_wafv2_rules_action_details() :: #{binary() => any()}.


%% Example:
%% batch_get_security_controls_response() :: #{
%%   <<"SecurityControls">> => list(security_control()()),
%%   <<"UnprocessedIds">> => list(unprocessed_security_control()())
%% }
-type batch_get_security_controls_response() :: #{binary() => any()}.


%% Example:
%% aws_ecs_task_definition_volumes_details() :: #{
%%   <<"DockerVolumeConfiguration">> => aws_ecs_task_definition_volumes_docker_volume_configuration_details(),
%%   <<"EfsVolumeConfiguration">> => aws_ecs_task_definition_volumes_efs_volume_configuration_details(),
%%   <<"Host">> => aws_ecs_task_definition_volumes_host_details(),
%%   <<"Name">> => string()
%% }
-type aws_ecs_task_definition_volumes_details() :: #{binary() => any()}.


%% Example:
%% aws_app_sync_graph_ql_api_user_pool_config_details() :: #{
%%   <<"AppIdClientRegex">> => string(),
%%   <<"AwsRegion">> => string(),
%%   <<"DefaultAction">> => string(),
%%   <<"UserPoolId">> => string()
%% }
-type aws_app_sync_graph_ql_api_user_pool_config_details() :: #{binary() => any()}.


%% Example:
%% aws_backup_backup_plan_lifecycle_details() :: #{
%%   <<"DeleteAfterDays">> => float(),
%%   <<"MoveToColdStorageAfterDays">> => float()
%% }
-type aws_backup_backup_plan_lifecycle_details() :: #{binary() => any()}.


%% Example:
%% aws_rds_db_processor_feature() :: #{
%%   <<"Name">> => string(),
%%   <<"Value">> => string()
%% }
-type aws_rds_db_processor_feature() :: #{binary() => any()}.


%% Example:
%% aws_ecs_task_definition_container_definitions_details() :: #{
%%   <<"Environment">> => list(aws_ecs_task_definition_container_definitions_environment_details()()),
%%   <<"PortMappings">> => list(aws_ecs_task_definition_container_definitions_port_mappings_details()()),
%%   <<"LinuxParameters">> => aws_ecs_task_definition_container_definitions_linux_parameters_details(),
%%   <<"Memory">> => integer(),
%%   <<"DnsSearchDomains">> => list(string()()),
%%   <<"HealthCheck">> => aws_ecs_task_definition_container_definitions_health_check_details(),
%%   <<"StopTimeout">> => integer(),
%%   <<"Image">> => string(),
%%   <<"Ulimits">> => list(aws_ecs_task_definition_container_definitions_ulimits_details()()),
%%   <<"RepositoryCredentials">> => aws_ecs_task_definition_container_definitions_repository_credentials_details(),
%%   <<"Links">> => list(string()()),
%%   <<"FirelensConfiguration">> => aws_ecs_task_definition_container_definitions_firelens_configuration_details(),
%%   <<"Command">> => list(string()()),
%%   <<"Privileged">> => boolean(),
%%   <<"EntryPoint">> => list(string()()),
%%   <<"ResourceRequirements">> => list(aws_ecs_task_definition_container_definitions_resource_requirements_details()()),
%%   <<"Secrets">> => list(aws_ecs_task_definition_container_definitions_secrets_details()()),
%%   <<"DockerLabels">> => map(),
%%   <<"SystemControls">> => list(aws_ecs_task_definition_container_definitions_system_controls_details()()),
%%   <<"DisableNetworking">> => boolean(),
%%   <<"ExtraHosts">> => list(aws_ecs_task_definition_container_definitions_extra_hosts_details()()),
%%   <<"DependsOn">> => list(aws_ecs_task_definition_container_definitions_depends_on_details()()),
%%   <<"MountPoints">> => list(aws_ecs_task_definition_container_definitions_mount_points_details()()),
%%   <<"DnsServers">> => list(string()()),
%%   <<"EnvironmentFiles">> => list(aws_ecs_task_definition_container_definitions_environment_files_details()()),
%%   <<"Essential">> => boolean(),
%%   <<"PseudoTerminal">> => boolean(),
%%   <<"WorkingDirectory">> => string(),
%%   <<"DockerSecurityOptions">> => list(string()()),
%%   <<"Cpu">> => integer(),
%%   <<"User">> => string(),
%%   <<"MemoryReservation">> => integer(),
%%   <<"Name">> => string(),
%%   <<"ReadonlyRootFilesystem">> => boolean(),
%%   <<"VolumesFrom">> => list(aws_ecs_task_definition_container_definitions_volumes_from_details()()),
%%   <<"Interactive">> => boolean(),
%%   <<"Hostname">> => string(),
%%   <<"LogConfiguration">> => aws_ecs_task_definition_container_definitions_log_configuration_details(),
%%   <<"StartTimeout">> => integer()
%% }
-type aws_ecs_task_definition_container_definitions_details() :: #{binary() => any()}.


%% Example:
%% aws_open_search_service_domain_node_to_node_encryption_options_details() :: #{
%%   <<"Enabled">> => boolean()
%% }
-type aws_open_search_service_domain_node_to_node_encryption_options_details() :: #{binary() => any()}.


%% Example:
%% city() :: #{
%%   <<"CityName">> => string()
%% }
-type city() :: #{binary() => any()}.


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
%% association_filters() :: #{
%%   <<"AssociationStatus">> => list(any()),
%%   <<"AssociationType">> => list(any()),
%%   <<"ConfigurationPolicyId">> => string()
%% }
-type association_filters() :: #{binary() => any()}.


%% Example:
%% aws_ec2_launch_template_data_instance_market_options_spot_options_details() :: #{
%%   <<"BlockDurationMinutes">> => integer(),
%%   <<"InstanceInterruptionBehavior">> => string(),
%%   <<"MaxPrice">> => string(),
%%   <<"SpotInstanceType">> => string(),
%%   <<"ValidUntil">> => string()
%% }
-type aws_ec2_launch_template_data_instance_market_options_spot_options_details() :: #{binary() => any()}.


%% Example:
%% aws_ec2_launch_template_data_instance_requirements_details() :: #{
%%   <<"AcceleratorCount">> => aws_ec2_launch_template_data_instance_requirements_accelerator_count_details(),
%%   <<"AcceleratorManufacturers">> => list(string()()),
%%   <<"AcceleratorNames">> => list(string()()),
%%   <<"AcceleratorTotalMemoryMiB">> => aws_ec2_launch_template_data_instance_requirements_accelerator_total_memory_mi_b_details(),
%%   <<"AcceleratorTypes">> => list(string()()),
%%   <<"BareMetal">> => string(),
%%   <<"BaselineEbsBandwidthMbps">> => aws_ec2_launch_template_data_instance_requirements_baseline_ebs_bandwidth_mbps_details(),
%%   <<"BurstablePerformance">> => string(),
%%   <<"CpuManufacturers">> => list(string()()),
%%   <<"ExcludedInstanceTypes">> => list(string()()),
%%   <<"InstanceGenerations">> => list(string()()),
%%   <<"LocalStorage">> => string(),
%%   <<"LocalStorageTypes">> => list(string()()),
%%   <<"MemoryGiBPerVCpu">> => aws_ec2_launch_template_data_instance_requirements_memory_gi_b_per_v_cpu_details(),
%%   <<"MemoryMiB">> => aws_ec2_launch_template_data_instance_requirements_memory_mi_b_details(),
%%   <<"NetworkInterfaceCount">> => aws_ec2_launch_template_data_instance_requirements_network_interface_count_details(),
%%   <<"OnDemandMaxPricePercentageOverLowestPrice">> => integer(),
%%   <<"RequireHibernateSupport">> => boolean(),
%%   <<"SpotMaxPricePercentageOverLowestPrice">> => integer(),
%%   <<"TotalLocalStorageGB">> => aws_ec2_launch_template_data_instance_requirements_total_local_storage_g_b_details(),
%%   <<"VCpuCount">> => aws_ec2_launch_template_data_instance_requirements_v_cpu_count_details()
%% }
-type aws_ec2_launch_template_data_instance_requirements_details() :: #{binary() => any()}.


%% Example:
%% list_members_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"OnlyAssociated">> => boolean()
%% }
-type list_members_request() :: #{binary() => any()}.


%% Example:
%% list_members_response() :: #{
%%   <<"Members">> => list(member()()),
%%   <<"NextToken">> => string()
%% }
-type list_members_response() :: #{binary() => any()}.


%% Example:
%% aws_ec2_security_group_ip_permission() :: #{
%%   <<"FromPort">> => integer(),
%%   <<"IpProtocol">> => string(),
%%   <<"IpRanges">> => list(aws_ec2_security_group_ip_range()()),
%%   <<"Ipv6Ranges">> => list(aws_ec2_security_group_ipv6_range()()),
%%   <<"PrefixListIds">> => list(aws_ec2_security_group_prefix_list_id()()),
%%   <<"ToPort">> => integer(),
%%   <<"UserIdGroupPairs">> => list(aws_ec2_security_group_user_id_group_pair()())
%% }
-type aws_ec2_security_group_ip_permission() :: #{binary() => any()}.


%% Example:
%% aws_step_function_state_machine_logging_configuration_details() :: #{
%%   <<"Destinations">> => list(aws_step_function_state_machine_logging_configuration_destinations_details()()),
%%   <<"IncludeExecutionData">> => boolean(),
%%   <<"Level">> => string()
%% }
-type aws_step_function_state_machine_logging_configuration_details() :: #{binary() => any()}.


%% Example:
%% aws_ec2_vpn_connection_details() :: #{
%%   <<"Category">> => string(),
%%   <<"CustomerGatewayConfiguration">> => string(),
%%   <<"CustomerGatewayId">> => string(),
%%   <<"Options">> => aws_ec2_vpn_connection_options_details(),
%%   <<"Routes">> => list(aws_ec2_vpn_connection_routes_details()()),
%%   <<"State">> => string(),
%%   <<"TransitGatewayId">> => string(),
%%   <<"Type">> => string(),
%%   <<"VgwTelemetry">> => list(aws_ec2_vpn_connection_vgw_telemetry_details()()),
%%   <<"VpnConnectionId">> => string(),
%%   <<"VpnGatewayId">> => string()
%% }
-type aws_ec2_vpn_connection_details() :: #{binary() => any()}.


%% Example:
%% firewall_policy_stateless_rule_group_references_details() :: #{
%%   <<"Priority">> => integer(),
%%   <<"ResourceArn">> => string()
%% }
-type firewall_policy_stateless_rule_group_references_details() :: #{binary() => any()}.


%% Example:
%% aws_ecs_service_deployment_configuration_deployment_circuit_breaker_details() :: #{
%%   <<"Enable">> => boolean(),
%%   <<"Rollback">> => boolean()
%% }
-type aws_ecs_service_deployment_configuration_deployment_circuit_breaker_details() :: #{binary() => any()}.


%% Example:
%% get_enabled_standards_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"StandardsSubscriptionArns">> => list(string()())
%% }
-type get_enabled_standards_request() :: #{binary() => any()}.


%% Example:
%% finding_history_record() :: #{
%%   <<"FindingCreated">> => boolean(),
%%   <<"FindingIdentifier">> => aws_security_finding_identifier(),
%%   <<"NextToken">> => string(),
%%   <<"UpdateSource">> => finding_history_update_source(),
%%   <<"UpdateTime">> => non_neg_integer(),
%%   <<"Updates">> => list(finding_history_update()())
%% }
-type finding_history_record() :: #{binary() => any()}.


%% Example:
%% aws_ecs_cluster_default_capacity_provider_strategy_details() :: #{
%%   <<"Base">> => integer(),
%%   <<"CapacityProvider">> => string(),
%%   <<"Weight">> => integer()
%% }
-type aws_ecs_cluster_default_capacity_provider_strategy_details() :: #{binary() => any()}.


%% Example:
%% aws_waf_rule_group_rules_action_details() :: #{
%%   <<"Type">> => string()
%% }
-type aws_waf_rule_group_rules_action_details() :: #{binary() => any()}.


%% Example:
%% aws_code_build_project_details() :: #{
%%   <<"Artifacts">> => list(aws_code_build_project_artifacts_details()()),
%%   <<"EncryptionKey">> => string(),
%%   <<"Environment">> => aws_code_build_project_environment(),
%%   <<"LogsConfig">> => aws_code_build_project_logs_config_details(),
%%   <<"Name">> => string(),
%%   <<"SecondaryArtifacts">> => list(aws_code_build_project_artifacts_details()()),
%%   <<"ServiceRole">> => string(),
%%   <<"Source">> => aws_code_build_project_source(),
%%   <<"VpcConfig">> => aws_code_build_project_vpc_config()
%% }
-type aws_code_build_project_details() :: #{binary() => any()}.


%% Example:
%% aws_auto_scaling_launch_configuration_instance_monitoring_details() :: #{
%%   <<"Enabled">> => boolean()
%% }
-type aws_auto_scaling_launch_configuration_instance_monitoring_details() :: #{binary() => any()}.


%% Example:
%% standards_subscription_request() :: #{
%%   <<"StandardsArn">> => string(),
%%   <<"StandardsInput">> => map()
%% }
-type standards_subscription_request() :: #{binary() => any()}.


%% Example:
%% aws_elasticsearch_domain_details() :: #{
%%   <<"AccessPolicies">> => string(),
%%   <<"DomainEndpointOptions">> => aws_elasticsearch_domain_domain_endpoint_options(),
%%   <<"DomainId">> => string(),
%%   <<"DomainName">> => string(),
%%   <<"ElasticsearchClusterConfig">> => aws_elasticsearch_domain_elasticsearch_cluster_config_details(),
%%   <<"ElasticsearchVersion">> => string(),
%%   <<"EncryptionAtRestOptions">> => aws_elasticsearch_domain_encryption_at_rest_options(),
%%   <<"Endpoint">> => string(),
%%   <<"Endpoints">> => map(),
%%   <<"LogPublishingOptions">> => aws_elasticsearch_domain_log_publishing_options(),
%%   <<"NodeToNodeEncryptionOptions">> => aws_elasticsearch_domain_node_to_node_encryption_options(),
%%   <<"ServiceSoftwareOptions">> => aws_elasticsearch_domain_service_software_options(),
%%   <<"VPCOptions">> => aws_elasticsearch_domain_vpc_options()
%% }
-type aws_elasticsearch_domain_details() :: #{binary() => any()}.


%% Example:
%% aws_ec2_launch_template_data_monitoring_details() :: #{
%%   <<"Enabled">> => boolean()
%% }
-type aws_ec2_launch_template_data_monitoring_details() :: #{binary() => any()}.


%% Example:
%% aws_ec2_vpc_endpoint_service_service_type_details() :: #{
%%   <<"ServiceType">> => string()
%% }
-type aws_ec2_vpc_endpoint_service_service_type_details() :: #{binary() => any()}.


%% Example:
%% aws_ec2_network_interface_security_group() :: #{
%%   <<"GroupId">> => string(),
%%   <<"GroupName">> => string()
%% }
-type aws_ec2_network_interface_security_group() :: #{binary() => any()}.


%% Example:
%% aws_secrets_manager_secret_rotation_rules() :: #{
%%   <<"AutomaticallyAfterDays">> => integer()
%% }
-type aws_secrets_manager_secret_rotation_rules() :: #{binary() => any()}.


%% Example:
%% aws_ec2_client_vpn_endpoint_authentication_options_details() :: #{
%%   <<"ActiveDirectory">> => aws_ec2_client_vpn_endpoint_authentication_options_active_directory_details(),
%%   <<"FederatedAuthentication">> => aws_ec2_client_vpn_endpoint_authentication_options_federated_authentication_details(),
%%   <<"MutualAuthentication">> => aws_ec2_client_vpn_endpoint_authentication_options_mutual_authentication_details(),
%%   <<"Type">> => string()
%% }
-type aws_ec2_client_vpn_endpoint_authentication_options_details() :: #{binary() => any()}.


%% Example:
%% aws_s3_bucket_server_side_encryption_by_default() :: #{
%%   <<"KMSMasterKeyID">> => string(),
%%   <<"SSEAlgorithm">> => string()
%% }
-type aws_s3_bucket_server_side_encryption_by_default() :: #{binary() => any()}.


%% Example:
%% aws_wafv2_rule_group_details() :: #{
%%   <<"Arn">> => string(),
%%   <<"Capacity">> => float(),
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"Rules">> => list(aws_wafv2_rules_details()()),
%%   <<"Scope">> => string(),
%%   <<"VisibilityConfig">> => aws_wafv2_visibility_config_details()
%% }
-type aws_wafv2_rule_group_details() :: #{binary() => any()}.


%% Example:
%% start_configuration_policy_association_response() :: #{
%%   <<"AssociationStatus">> => list(any()),
%%   <<"AssociationStatusMessage">> => string(),
%%   <<"AssociationType">> => list(any()),
%%   <<"ConfigurationPolicyId">> => string(),
%%   <<"TargetId">> => string(),
%%   <<"TargetType">> => list(any()),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type start_configuration_policy_association_response() :: #{binary() => any()}.


%% Example:
%% stateless_custom_publish_metric_action() :: #{
%%   <<"Dimensions">> => list(stateless_custom_publish_metric_action_dimension()())
%% }
-type stateless_custom_publish_metric_action() :: #{binary() => any()}.


%% Example:
%% aws_cloud_front_distribution_origins() :: #{
%%   <<"Items">> => list(aws_cloud_front_distribution_origin_item()())
%% }
-type aws_cloud_front_distribution_origins() :: #{binary() => any()}.


%% Example:
%% list_finding_aggregators_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_finding_aggregators_request() :: #{binary() => any()}.


%% Example:
%% network() :: #{
%%   <<"DestinationDomain">> => string(),
%%   <<"DestinationIpV4">> => string(),
%%   <<"DestinationIpV6">> => string(),
%%   <<"DestinationPort">> => integer(),
%%   <<"Direction">> => list(any()),
%%   <<"OpenPortRange">> => port_range(),
%%   <<"Protocol">> => string(),
%%   <<"SourceDomain">> => string(),
%%   <<"SourceIpV4">> => string(),
%%   <<"SourceIpV6">> => string(),
%%   <<"SourceMac">> => string(),
%%   <<"SourcePort">> => integer()
%% }
-type network() :: #{binary() => any()}.


%% Example:
%% aws_dynamo_db_table_stream_specification() :: #{
%%   <<"StreamEnabled">> => boolean(),
%%   <<"StreamViewType">> => string()
%% }
-type aws_dynamo_db_table_stream_specification() :: #{binary() => any()}.


%% Example:
%% aws_rds_db_subnet_group_subnet() :: #{
%%   <<"SubnetAvailabilityZone">> => aws_rds_db_subnet_group_subnet_availability_zone(),
%%   <<"SubnetIdentifier">> => string(),
%%   <<"SubnetStatus">> => string()
%% }
-type aws_rds_db_subnet_group_subnet() :: #{binary() => any()}.


%% Example:
%% aws_s3_bucket_notification_configuration_detail() :: #{
%%   <<"Destination">> => string(),
%%   <<"Events">> => list(string()()),
%%   <<"Filter">> => aws_s3_bucket_notification_configuration_filter(),
%%   <<"Type">> => string()
%% }
-type aws_s3_bucket_notification_configuration_detail() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.

%% Example:
%% get_master_account_request() :: #{}
-type get_master_account_request() :: #{}.


%% Example:
%% aws_api_gateway_endpoint_configuration() :: #{
%%   <<"Types">> => list(string()())
%% }
-type aws_api_gateway_endpoint_configuration() :: #{binary() => any()}.


%% Example:
%% aws_ecr_repository_image_scanning_configuration_details() :: #{
%%   <<"ScanOnPush">> => boolean()
%% }
-type aws_ecr_repository_image_scanning_configuration_details() :: #{binary() => any()}.

%% Example:
%% delete_insight_request() :: #{}
-type delete_insight_request() :: #{}.


%% Example:
%% aws_ec2_vpc_peering_connection_details() :: #{
%%   <<"AccepterVpcInfo">> => aws_ec2_vpc_peering_connection_vpc_info_details(),
%%   <<"ExpirationTime">> => string(),
%%   <<"RequesterVpcInfo">> => aws_ec2_vpc_peering_connection_vpc_info_details(),
%%   <<"Status">> => aws_ec2_vpc_peering_connection_status_details(),
%%   <<"VpcPeeringConnectionId">> => string()
%% }
-type aws_ec2_vpc_peering_connection_details() :: #{binary() => any()}.


%% Example:
%% aws_iam_role_policy() :: #{
%%   <<"PolicyName">> => string()
%% }
-type aws_iam_role_policy() :: #{binary() => any()}.


%% Example:
%% aws_ec2_launch_template_data_iam_instance_profile_details() :: #{
%%   <<"Arn">> => string(),
%%   <<"Name">> => string()
%% }
-type aws_ec2_launch_template_data_iam_instance_profile_details() :: #{binary() => any()}.


%% Example:
%% aws_open_search_service_domain_service_software_options_details() :: #{
%%   <<"AutomatedUpdateDate">> => string(),
%%   <<"Cancellable">> => boolean(),
%%   <<"CurrentVersion">> => string(),
%%   <<"Description">> => string(),
%%   <<"NewVersion">> => string(),
%%   <<"OptionalDeployment">> => boolean(),
%%   <<"UpdateAvailable">> => boolean(),
%%   <<"UpdateStatus">> => string()
%% }
-type aws_open_search_service_domain_service_software_options_details() :: #{binary() => any()}.


%% Example:
%% aws_open_search_service_domain_master_user_options_details() :: #{
%%   <<"MasterUserArn">> => string(),
%%   <<"MasterUserName">> => string(),
%%   <<"MasterUserPassword">> => string()
%% }
-type aws_open_search_service_domain_master_user_options_details() :: #{binary() => any()}.


%% Example:
%% aws_code_build_project_logs_config_s3_logs_details() :: #{
%%   <<"EncryptionDisabled">> => boolean(),
%%   <<"Location">> => string(),
%%   <<"Status">> => string()
%% }
-type aws_code_build_project_logs_config_s3_logs_details() :: #{binary() => any()}.


%% Example:
%% automation_rules_action() :: #{
%%   <<"FindingFieldsUpdate">> => automation_rules_finding_fields_update(),
%%   <<"Type">> => list(any())
%% }
-type automation_rules_action() :: #{binary() => any()}.


%% Example:
%% aws_msk_cluster_cluster_info_client_authentication_sasl_scram_details() :: #{
%%   <<"Enabled">> => boolean()
%% }
-type aws_msk_cluster_cluster_info_client_authentication_sasl_scram_details() :: #{binary() => any()}.


%% Example:
%% aws_network_firewall_firewall_details() :: #{
%%   <<"DeleteProtection">> => boolean(),
%%   <<"Description">> => string(),
%%   <<"FirewallArn">> => string(),
%%   <<"FirewallId">> => string(),
%%   <<"FirewallName">> => string(),
%%   <<"FirewallPolicyArn">> => string(),
%%   <<"FirewallPolicyChangeProtection">> => boolean(),
%%   <<"SubnetChangeProtection">> => boolean(),
%%   <<"SubnetMappings">> => list(aws_network_firewall_firewall_subnet_mappings_details()()),
%%   <<"VpcId">> => string()
%% }
-type aws_network_firewall_firewall_details() :: #{binary() => any()}.


%% Example:
%% aws_ecs_task_definition_container_definitions_ulimits_details() :: #{
%%   <<"HardLimit">> => integer(),
%%   <<"Name">> => string(),
%%   <<"SoftLimit">> => integer()
%% }
-type aws_ecs_task_definition_container_definitions_ulimits_details() :: #{binary() => any()}.


%% Example:
%% update_findings_request() :: #{
%%   <<"Filters">> := aws_security_finding_filters(),
%%   <<"Note">> => note_update(),
%%   <<"RecordState">> => list(any())
%% }
-type update_findings_request() :: #{binary() => any()}.


%% Example:
%% list_standards_control_associations_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"StandardsControlAssociationSummaries">> => list(standards_control_association_summary()())
%% }
-type list_standards_control_associations_response() :: #{binary() => any()}.


%% Example:
%% rule_group_source_stateless_rule_match_attributes() :: #{
%%   <<"DestinationPorts">> => list(rule_group_source_stateless_rule_match_attributes_destination_ports()()),
%%   <<"Destinations">> => list(rule_group_source_stateless_rule_match_attributes_destinations()()),
%%   <<"Protocols">> => list(integer()()),
%%   <<"SourcePorts">> => list(rule_group_source_stateless_rule_match_attributes_source_ports()()),
%%   <<"Sources">> => list(rule_group_source_stateless_rule_match_attributes_sources()()),
%%   <<"TcpFlags">> => list(rule_group_source_stateless_rule_match_attributes_tcp_flags()())
%% }
-type rule_group_source_stateless_rule_match_attributes() :: #{binary() => any()}.


%% Example:
%% aws_ssm_compliance_summary() :: #{
%%   <<"ComplianceType">> => string(),
%%   <<"CompliantCriticalCount">> => integer(),
%%   <<"CompliantHighCount">> => integer(),
%%   <<"CompliantInformationalCount">> => integer(),
%%   <<"CompliantLowCount">> => integer(),
%%   <<"CompliantMediumCount">> => integer(),
%%   <<"CompliantUnspecifiedCount">> => integer(),
%%   <<"ExecutionType">> => string(),
%%   <<"NonCompliantCriticalCount">> => integer(),
%%   <<"NonCompliantHighCount">> => integer(),
%%   <<"NonCompliantInformationalCount">> => integer(),
%%   <<"NonCompliantLowCount">> => integer(),
%%   <<"NonCompliantMediumCount">> => integer(),
%%   <<"NonCompliantUnspecifiedCount">> => integer(),
%%   <<"OverallSeverity">> => string(),
%%   <<"PatchBaselineId">> => string(),
%%   <<"PatchGroup">> => string(),
%%   <<"Status">> => string()
%% }
-type aws_ssm_compliance_summary() :: #{binary() => any()}.


%% Example:
%% aws_s3_bucket_notification_configuration_s3_key_filter_rule() :: #{
%%   <<"Name">> => list(any()),
%%   <<"Value">> => string()
%% }
-type aws_s3_bucket_notification_configuration_s3_key_filter_rule() :: #{binary() => any()}.


%% Example:
%% aws_certificate_manager_certificate_key_usage() :: #{
%%   <<"Name">> => string()
%% }
-type aws_certificate_manager_certificate_key_usage() :: #{binary() => any()}.


%% Example:
%% update_security_control_request() :: #{
%%   <<"LastUpdateReason">> => string(),
%%   <<"Parameters">> := map(),
%%   <<"SecurityControlId">> := string()
%% }
-type update_security_control_request() :: #{binary() => any()}.


%% Example:
%% aws_rds_db_security_group_ec2_security_group() :: #{
%%   <<"Ec2SecurityGroupId">> => string(),
%%   <<"Ec2SecurityGroupName">> => string(),
%%   <<"Ec2SecurityGroupOwnerId">> => string(),
%%   <<"Status">> => string()
%% }
-type aws_rds_db_security_group_ec2_security_group() :: #{binary() => any()}.


%% Example:
%% update_configuration_policy_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"ConfigurationPolicy">> => list(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type update_configuration_policy_response() :: #{binary() => any()}.


%% Example:
%% aws_redshift_cluster_details() :: #{
%%   <<"Encrypted">> => boolean(),
%%   <<"ClusterAvailabilityStatus">> => string(),
%%   <<"IamRoles">> => list(aws_redshift_cluster_iam_role()()),
%%   <<"HsmStatus">> => aws_redshift_cluster_hsm_status(),
%%   <<"ClusterCreateTime">> => string(),
%%   <<"ClusterStatus">> => string(),
%%   <<"ClusterSubnetGroupName">> => string(),
%%   <<"ClusterVersion">> => string(),
%%   <<"SnapshotScheduleState">> => string(),
%%   <<"AutomatedSnapshotRetentionPeriod">> => integer(),
%%   <<"ResizeInfo">> => aws_redshift_cluster_resize_info(),
%%   <<"ExpectedNextSnapshotScheduleTime">> => string(),
%%   <<"SnapshotScheduleIdentifier">> => string(),
%%   <<"RestoreStatus">> => aws_redshift_cluster_restore_status(),
%%   <<"PendingModifiedValues">> => aws_redshift_cluster_pending_modified_values(),
%%   <<"ClusterNodes">> => list(aws_redshift_cluster_cluster_node()()),
%%   <<"ElasticIpStatus">> => aws_redshift_cluster_elastic_ip_status(),
%%   <<"ExpectedNextSnapshotScheduleTimeStatus">> => string(),
%%   <<"AvailabilityZone">> => string(),
%%   <<"MasterUsername">> => string(),
%%   <<"ClusterSecurityGroups">> => list(aws_redshift_cluster_cluster_security_group()()),
%%   <<"ClusterRevisionNumber">> => string(),
%%   <<"NodeType">> => string(),
%%   <<"ElasticResizeNumberOfNodeOptions">> => string(),
%%   <<"DBName">> => string(),
%%   <<"PubliclyAccessible">> => boolean(),
%%   <<"ClusterParameterGroups">> => list(aws_redshift_cluster_cluster_parameter_group()()),
%%   <<"EnhancedVpcRouting">> => boolean(),
%%   <<"ClusterSnapshotCopyStatus">> => aws_redshift_cluster_cluster_snapshot_copy_status(),
%%   <<"MaintenanceTrackName">> => string(),
%%   <<"PendingActions">> => list(string()()),
%%   <<"VpcId">> => string(),
%%   <<"LoggingStatus">> => aws_redshift_cluster_logging_status(),
%%   <<"ClusterPublicKey">> => string(),
%%   <<"NumberOfNodes">> => integer(),
%%   <<"KmsKeyId">> => string(),
%%   <<"ManualSnapshotRetentionPeriod">> => integer(),
%%   <<"Endpoint">> => aws_redshift_cluster_endpoint(),
%%   <<"PreferredMaintenanceWindow">> => string(),
%%   <<"NextMaintenanceWindowStartTime">> => string(),
%%   <<"VpcSecurityGroups">> => list(aws_redshift_cluster_vpc_security_group()()),
%%   <<"DeferredMaintenanceWindows">> => list(aws_redshift_cluster_deferred_maintenance_window()()),
%%   <<"AllowVersionUpgrade">> => boolean(),
%%   <<"ClusterIdentifier">> => string()
%% }
-type aws_redshift_cluster_details() :: #{binary() => any()}.


%% Example:
%% delete_action_target_response() :: #{
%%   <<"ActionTargetArn">> => string()
%% }
-type delete_action_target_response() :: #{binary() => any()}.


%% Example:
%% aws_s3_bucket_server_side_encryption_configuration() :: #{
%%   <<"Rules">> => list(aws_s3_bucket_server_side_encryption_rule()())
%% }
-type aws_s3_bucket_server_side_encryption_configuration() :: #{binary() => any()}.


%% Example:
%% get_invitations_count_response() :: #{
%%   <<"InvitationsCount">> => integer()
%% }
-type get_invitations_count_response() :: #{binary() => any()}.


%% Example:
%% aws_wafv2_action_allow_details() :: #{
%%   <<"CustomRequestHandling">> => aws_wafv2_custom_request_handling_details()
%% }
-type aws_wafv2_action_allow_details() :: #{binary() => any()}.


%% Example:
%% aws_athena_work_group_configuration_details() :: #{
%%   <<"ResultConfiguration">> => aws_athena_work_group_configuration_result_configuration_details()
%% }
-type aws_athena_work_group_configuration_details() :: #{binary() => any()}.


%% Example:
%% aws_wafv2_visibility_config_details() :: #{
%%   <<"CloudWatchMetricsEnabled">> => boolean(),
%%   <<"MetricName">> => string(),
%%   <<"SampledRequestsEnabled">> => boolean()
%% }
-type aws_wafv2_visibility_config_details() :: #{binary() => any()}.


%% Example:
%% aws_events_eventbus_details() :: #{
%%   <<"Arn">> => string(),
%%   <<"Name">> => string(),
%%   <<"Policy">> => string()
%% }
-type aws_events_eventbus_details() :: #{binary() => any()}.


%% Example:
%% aws_lambda_function_layer() :: #{
%%   <<"Arn">> => string(),
%%   <<"CodeSize">> => integer()
%% }
-type aws_lambda_function_layer() :: #{binary() => any()}.


%% Example:
%% list_invitations_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_invitations_request() :: #{binary() => any()}.


%% Example:
%% aws_cloud_front_distribution_cache_behaviors() :: #{
%%   <<"Items">> => list(aws_cloud_front_distribution_cache_behavior()())
%% }
-type aws_cloud_front_distribution_cache_behaviors() :: #{binary() => any()}.


%% Example:
%% start_configuration_policy_association_request() :: #{
%%   <<"ConfigurationPolicyIdentifier">> := string(),
%%   <<"Target">> := list()
%% }
-type start_configuration_policy_association_request() :: #{binary() => any()}.


%% Example:
%% security_control_parameter() :: #{
%%   <<"Name">> => string(),
%%   <<"Value">> => list(string()())
%% }
-type security_control_parameter() :: #{binary() => any()}.


%% Example:
%% aws_ecs_task_definition_container_definitions_port_mappings_details() :: #{
%%   <<"ContainerPort">> => integer(),
%%   <<"HostPort">> => integer(),
%%   <<"Protocol">> => string()
%% }
-type aws_ecs_task_definition_container_definitions_port_mappings_details() :: #{binary() => any()}.


%% Example:
%% aws_waf_regional_web_acl_rules_list_override_action_details() :: #{
%%   <<"Type">> => string()
%% }
-type aws_waf_regional_web_acl_rules_list_override_action_details() :: #{binary() => any()}.


%% Example:
%% aws_events_endpoint_event_buses_details() :: #{
%%   <<"EventBusArn">> => string()
%% }
-type aws_events_endpoint_event_buses_details() :: #{binary() => any()}.


%% Example:
%% aws_auto_scaling_launch_configuration_block_device_mappings_details() :: #{
%%   <<"DeviceName">> => string(),
%%   <<"Ebs">> => aws_auto_scaling_launch_configuration_block_device_mappings_ebs_details(),
%%   <<"NoDevice">> => boolean(),
%%   <<"VirtualName">> => string()
%% }
-type aws_auto_scaling_launch_configuration_block_device_mappings_details() :: #{binary() => any()}.


%% Example:
%% aws_ec2_network_interface_ip_v6_address_detail() :: #{
%%   <<"IpV6Address">> => string()
%% }
-type aws_ec2_network_interface_ip_v6_address_detail() :: #{binary() => any()}.


%% Example:
%% aws_elb_load_balancer_instance() :: #{
%%   <<"InstanceId">> => string()
%% }
-type aws_elb_load_balancer_instance() :: #{binary() => any()}.


%% Example:
%% enum_configuration_options() :: #{
%%   <<"AllowedValues">> => list(string()()),
%%   <<"DefaultValue">> => string()
%% }
-type enum_configuration_options() :: #{binary() => any()}.


%% Example:
%% aws_s3_bucket_bucket_lifecycle_configuration_rules_transitions_details() :: #{
%%   <<"Date">> => string(),
%%   <<"Days">> => integer(),
%%   <<"StorageClass">> => string()
%% }
-type aws_s3_bucket_bucket_lifecycle_configuration_rules_transitions_details() :: #{binary() => any()}.


%% Example:
%% custom_data_identifiers_result() :: #{
%%   <<"Detections">> => list(custom_data_identifiers_detections()()),
%%   <<"TotalCount">> => float()
%% }
-type custom_data_identifiers_result() :: #{binary() => any()}.


%% Example:
%% aws_amazon_mq_broker_encryption_options_details() :: #{
%%   <<"KmsKeyId">> => string(),
%%   <<"UseAwsOwnedKey">> => boolean()
%% }
-type aws_amazon_mq_broker_encryption_options_details() :: #{binary() => any()}.


%% Example:
%% aws_msk_cluster_cluster_info_encryption_info_encryption_at_rest_details() :: #{
%%   <<"DataVolumeKMSKeyId">> => string()
%% }
-type aws_msk_cluster_cluster_info_encryption_info_encryption_at_rest_details() :: #{binary() => any()}.


%% Example:
%% aws_redshift_cluster_elastic_ip_status() :: #{
%%   <<"ElasticIp">> => string(),
%%   <<"Status">> => string()
%% }
-type aws_redshift_cluster_elastic_ip_status() :: #{binary() => any()}.


%% Example:
%% route_set_details() :: #{
%%   <<"CarrierGatewayId">> => string(),
%%   <<"CoreNetworkArn">> => string(),
%%   <<"DestinationCidrBlock">> => string(),
%%   <<"DestinationIpv6CidrBlock">> => string(),
%%   <<"DestinationPrefixListId">> => string(),
%%   <<"EgressOnlyInternetGatewayId">> => string(),
%%   <<"GatewayId">> => string(),
%%   <<"InstanceId">> => string(),
%%   <<"InstanceOwnerId">> => string(),
%%   <<"LocalGatewayId">> => string(),
%%   <<"NatGatewayId">> => string(),
%%   <<"NetworkInterfaceId">> => string(),
%%   <<"Origin">> => string(),
%%   <<"State">> => string(),
%%   <<"TransitGatewayId">> => string(),
%%   <<"VpcPeeringConnectionId">> => string()
%% }
-type route_set_details() :: #{binary() => any()}.


%% Example:
%% actor() :: #{
%%   <<"Id">> => string(),
%%   <<"Session">> => actor_session(),
%%   <<"User">> => actor_user()
%% }
-type actor() :: #{binary() => any()}.


%% Example:
%% aws_athena_work_group_configuration_result_configuration_details() :: #{
%%   <<"EncryptionConfiguration">> => aws_athena_work_group_configuration_result_configuration_encryption_configuration_details()
%% }
-type aws_athena_work_group_configuration_result_configuration_details() :: #{binary() => any()}.


%% Example:
%% member() :: #{
%%   <<"AccountId">> => string(),
%%   <<"AdministratorId">> => string(),
%%   <<"Email">> => string(),
%%   <<"InvitedAt">> => non_neg_integer(),
%%   <<"MasterId">> => string(),
%%   <<"MemberStatus">> => string(),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type member() :: #{binary() => any()}.


%% Example:
%% aws_s3_bucket_website_configuration_routing_rule() :: #{
%%   <<"Condition">> => aws_s3_bucket_website_configuration_routing_rule_condition(),
%%   <<"Redirect">> => aws_s3_bucket_website_configuration_routing_rule_redirect()
%% }
-type aws_s3_bucket_website_configuration_routing_rule() :: #{binary() => any()}.


%% Example:
%% aws_dms_replication_task_details() :: #{
%%   <<"CdcStartPosition">> => string(),
%%   <<"CdcStartTime">> => string(),
%%   <<"CdcStopPosition">> => string(),
%%   <<"Id">> => string(),
%%   <<"MigrationType">> => string(),
%%   <<"ReplicationInstanceArn">> => string(),
%%   <<"ReplicationTaskIdentifier">> => string(),
%%   <<"ReplicationTaskSettings">> => string(),
%%   <<"ResourceIdentifier">> => string(),
%%   <<"SourceEndpointArn">> => string(),
%%   <<"TableMappings">> => string(),
%%   <<"TargetEndpointArn">> => string(),
%%   <<"TaskData">> => string()
%% }
-type aws_dms_replication_task_details() :: #{binary() => any()}.


%% Example:
%% aws_s3_bucket_bucket_lifecycle_configuration_rules_filter_predicate_operands_tag_details() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type aws_s3_bucket_bucket_lifecycle_configuration_rules_filter_predicate_operands_tag_details() :: #{binary() => any()}.


%% Example:
%% string_filter() :: #{
%%   <<"Comparison">> => list(any()),
%%   <<"Value">> => string()
%% }
-type string_filter() :: #{binary() => any()}.


%% Example:
%% list_finding_aggregators_response() :: #{
%%   <<"FindingAggregators">> => list(finding_aggregator()()),
%%   <<"NextToken">> => string()
%% }
-type list_finding_aggregators_response() :: #{binary() => any()}.


%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% aws_iam_policy_details() :: #{
%%   <<"AttachmentCount">> => integer(),
%%   <<"CreateDate">> => string(),
%%   <<"DefaultVersionId">> => string(),
%%   <<"Description">> => string(),
%%   <<"IsAttachable">> => boolean(),
%%   <<"Path">> => string(),
%%   <<"PermissionsBoundaryUsageCount">> => integer(),
%%   <<"PolicyId">> => string(),
%%   <<"PolicyName">> => string(),
%%   <<"PolicyVersionList">> => list(aws_iam_policy_version()()),
%%   <<"UpdateDate">> => string()
%% }
-type aws_iam_policy_details() :: #{binary() => any()}.


%% Example:
%% batch_get_security_controls_request() :: #{
%%   <<"SecurityControlIds">> := list(string()())
%% }
-type batch_get_security_controls_request() :: #{binary() => any()}.

%% Example:
%% enable_organization_admin_account_response() :: #{}
-type enable_organization_admin_account_response() :: #{}.


%% Example:
%% unprocessed_automation_rule() :: #{
%%   <<"ErrorCode">> => integer(),
%%   <<"ErrorMessage">> => string(),
%%   <<"RuleArn">> => string()
%% }
-type unprocessed_automation_rule() :: #{binary() => any()}.


%% Example:
%% create_automation_rule_response() :: #{
%%   <<"RuleArn">> => string()
%% }
-type create_automation_rule_response() :: #{binary() => any()}.


%% Example:
%% aws_ecs_task_volume_details() :: #{
%%   <<"Host">> => aws_ecs_task_volume_host_details(),
%%   <<"Name">> => string()
%% }
-type aws_ecs_task_volume_details() :: #{binary() => any()}.


%% Example:
%% aws_redshift_cluster_cluster_parameter_status() :: #{
%%   <<"ParameterApplyErrorDescription">> => string(),
%%   <<"ParameterApplyStatus">> => string(),
%%   <<"ParameterName">> => string()
%% }
-type aws_redshift_cluster_cluster_parameter_status() :: #{binary() => any()}.


%% Example:
%% aws_dynamo_db_table_sse_description() :: #{
%%   <<"InaccessibleEncryptionDateTime">> => string(),
%%   <<"KmsMasterKeyArn">> => string(),
%%   <<"SseType">> => string(),
%%   <<"Status">> => string()
%% }
-type aws_dynamo_db_table_sse_description() :: #{binary() => any()}.


%% Example:
%% configuration_policy_association() :: #{
%%   <<"Target">> => list()
%% }
-type configuration_policy_association() :: #{binary() => any()}.


%% Example:
%% adjustment() :: #{
%%   <<"Metric">> => string(),
%%   <<"Reason">> => string()
%% }
-type adjustment() :: #{binary() => any()}.


%% Example:
%% cloud_watch_logs_log_group_arn_config_details() :: #{
%%   <<"CloudWatchLogsLogGroupArn">> => string(),
%%   <<"HostedZoneId">> => string(),
%%   <<"Id">> => string()
%% }
-type cloud_watch_logs_log_group_arn_config_details() :: #{binary() => any()}.


%% Example:
%% aws_amazon_mq_broker_logs_pending_details() :: #{
%%   <<"Audit">> => boolean(),
%%   <<"General">> => boolean()
%% }
-type aws_amazon_mq_broker_logs_pending_details() :: #{binary() => any()}.


%% Example:
%% note_update() :: #{
%%   <<"Text">> => string(),
%%   <<"UpdatedBy">> => string()
%% }
-type note_update() :: #{binary() => any()}.


%% Example:
%% aws_efs_access_point_root_directory_details() :: #{
%%   <<"CreationInfo">> => aws_efs_access_point_root_directory_creation_info_details(),
%%   <<"Path">> => string()
%% }
-type aws_efs_access_point_root_directory_details() :: #{binary() => any()}.


%% Example:
%% vpc_info_peering_options_details() :: #{
%%   <<"AllowDnsResolutionFromRemoteVpc">> => boolean(),
%%   <<"AllowEgressFromLocalClassicLinkToRemoteVpc">> => boolean(),
%%   <<"AllowEgressFromLocalVpcToRemoteClassicLink">> => boolean()
%% }
-type vpc_info_peering_options_details() :: #{binary() => any()}.


%% Example:
%% aws_ec2_launch_template_data_instance_requirements_accelerator_count_details() :: #{
%%   <<"Max">> => integer(),
%%   <<"Min">> => integer()
%% }
-type aws_ec2_launch_template_data_instance_requirements_accelerator_count_details() :: #{binary() => any()}.


%% Example:
%% aws_ec2_launch_template_data_maintenance_options_details() :: #{
%%   <<"AutoRecovery">> => string()
%% }
-type aws_ec2_launch_template_data_maintenance_options_details() :: #{binary() => any()}.


%% Example:
%% workflow_update() :: #{
%%   <<"Status">> => list(any())
%% }
-type workflow_update() :: #{binary() => any()}.


%% Example:
%% describe_action_targets_request() :: #{
%%   <<"ActionTargetArns">> => list(string()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_action_targets_request() :: #{binary() => any()}.


%% Example:
%% aws_ec2_network_acl_entry() :: #{
%%   <<"CidrBlock">> => string(),
%%   <<"Egress">> => boolean(),
%%   <<"IcmpTypeCode">> => icmp_type_code(),
%%   <<"Ipv6CidrBlock">> => string(),
%%   <<"PortRange">> => port_range_from_to(),
%%   <<"Protocol">> => string(),
%%   <<"RuleAction">> => string(),
%%   <<"RuleNumber">> => integer()
%% }
-type aws_ec2_network_acl_entry() :: #{binary() => any()}.


%% Example:
%% aws_ec2_launch_template_data_details() :: #{
%%   <<"BlockDeviceMappingSet">> => list(aws_ec2_launch_template_data_block_device_mapping_set_details()()),
%%   <<"CapacityReservationSpecification">> => aws_ec2_launch_template_data_capacity_reservation_specification_details(),
%%   <<"CpuOptions">> => aws_ec2_launch_template_data_cpu_options_details(),
%%   <<"CreditSpecification">> => aws_ec2_launch_template_data_credit_specification_details(),
%%   <<"DisableApiStop">> => boolean(),
%%   <<"DisableApiTermination">> => boolean(),
%%   <<"EbsOptimized">> => boolean(),
%%   <<"ElasticGpuSpecificationSet">> => list(aws_ec2_launch_template_data_elastic_gpu_specification_set_details()()),
%%   <<"ElasticInferenceAcceleratorSet">> => list(aws_ec2_launch_template_data_elastic_inference_accelerator_set_details()()),
%%   <<"EnclaveOptions">> => aws_ec2_launch_template_data_enclave_options_details(),
%%   <<"HibernationOptions">> => aws_ec2_launch_template_data_hibernation_options_details(),
%%   <<"IamInstanceProfile">> => aws_ec2_launch_template_data_iam_instance_profile_details(),
%%   <<"ImageId">> => string(),
%%   <<"InstanceInitiatedShutdownBehavior">> => string(),
%%   <<"InstanceMarketOptions">> => aws_ec2_launch_template_data_instance_market_options_details(),
%%   <<"InstanceRequirements">> => aws_ec2_launch_template_data_instance_requirements_details(),
%%   <<"InstanceType">> => string(),
%%   <<"KernelId">> => string(),
%%   <<"KeyName">> => string(),
%%   <<"LicenseSet">> => list(aws_ec2_launch_template_data_license_set_details()()),
%%   <<"MaintenanceOptions">> => aws_ec2_launch_template_data_maintenance_options_details(),
%%   <<"MetadataOptions">> => aws_ec2_launch_template_data_metadata_options_details(),
%%   <<"Monitoring">> => aws_ec2_launch_template_data_monitoring_details(),
%%   <<"NetworkInterfaceSet">> => list(aws_ec2_launch_template_data_network_interface_set_details()()),
%%   <<"Placement">> => aws_ec2_launch_template_data_placement_details(),
%%   <<"PrivateDnsNameOptions">> => aws_ec2_launch_template_data_private_dns_name_options_details(),
%%   <<"RamDiskId">> => string(),
%%   <<"SecurityGroupIdSet">> => list(string()()),
%%   <<"SecurityGroupSet">> => list(string()()),
%%   <<"UserData">> => string()
%% }
-type aws_ec2_launch_template_data_details() :: #{binary() => any()}.


%% Example:
%% association_set_details() :: #{
%%   <<"AssociationState">> => association_state_details(),
%%   <<"GatewayId">> => string(),
%%   <<"Main">> => boolean(),
%%   <<"RouteTableAssociationId">> => string(),
%%   <<"RouteTableId">> => string(),
%%   <<"SubnetId">> => string()
%% }
-type association_set_details() :: #{binary() => any()}.


%% Example:
%% aws_s3_bucket_bucket_versioning_configuration() :: #{
%%   <<"IsMfaDeleteEnabled">> => boolean(),
%%   <<"Status">> => string()
%% }
-type aws_s3_bucket_bucket_versioning_configuration() :: #{binary() => any()}.


%% Example:
%% aws_cloud_front_distribution_origin_custom_origin_config() :: #{
%%   <<"HttpPort">> => integer(),
%%   <<"HttpsPort">> => integer(),
%%   <<"OriginKeepaliveTimeout">> => integer(),
%%   <<"OriginProtocolPolicy">> => string(),
%%   <<"OriginReadTimeout">> => integer(),
%%   <<"OriginSslProtocols">> => aws_cloud_front_distribution_origin_ssl_protocols()
%% }
-type aws_cloud_front_distribution_origin_custom_origin_config() :: #{binary() => any()}.


%% Example:
%% aws_open_search_service_domain_details() :: #{
%%   <<"AccessPolicies">> => string(),
%%   <<"AdvancedSecurityOptions">> => aws_open_search_service_domain_advanced_security_options_details(),
%%   <<"Arn">> => string(),
%%   <<"ClusterConfig">> => aws_open_search_service_domain_cluster_config_details(),
%%   <<"DomainEndpoint">> => string(),
%%   <<"DomainEndpointOptions">> => aws_open_search_service_domain_domain_endpoint_options_details(),
%%   <<"DomainEndpoints">> => map(),
%%   <<"DomainName">> => string(),
%%   <<"EncryptionAtRestOptions">> => aws_open_search_service_domain_encryption_at_rest_options_details(),
%%   <<"EngineVersion">> => string(),
%%   <<"Id">> => string(),
%%   <<"LogPublishingOptions">> => aws_open_search_service_domain_log_publishing_options_details(),
%%   <<"NodeToNodeEncryptionOptions">> => aws_open_search_service_domain_node_to_node_encryption_options_details(),
%%   <<"ServiceSoftwareOptions">> => aws_open_search_service_domain_service_software_options_details(),
%%   <<"VpcOptions">> => aws_open_search_service_domain_vpc_options_details()
%% }
-type aws_open_search_service_domain_details() :: #{binary() => any()}.


%% Example:
%% aws_ec2_launch_template_data_credit_specification_details() :: #{
%%   <<"CpuCredits">> => string()
%% }
-type aws_ec2_launch_template_data_credit_specification_details() :: #{binary() => any()}.


%% Example:
%% aws_msk_cluster_cluster_info_client_authentication_sasl_details() :: #{
%%   <<"Iam">> => aws_msk_cluster_cluster_info_client_authentication_sasl_iam_details(),
%%   <<"Scram">> => aws_msk_cluster_cluster_info_client_authentication_sasl_scram_details()
%% }
-type aws_msk_cluster_cluster_info_client_authentication_sasl_details() :: #{binary() => any()}.


%% Example:
%% aws_cloud_watch_alarm_dimensions_details() :: #{
%%   <<"Name">> => string(),
%%   <<"Value">> => string()
%% }
-type aws_cloud_watch_alarm_dimensions_details() :: #{binary() => any()}.


%% Example:
%% patch_summary() :: #{
%%   <<"FailedCount">> => integer(),
%%   <<"Id">> => string(),
%%   <<"InstalledCount">> => integer(),
%%   <<"InstalledOtherCount">> => integer(),
%%   <<"InstalledPendingReboot">> => integer(),
%%   <<"InstalledRejectedCount">> => integer(),
%%   <<"MissingCount">> => integer(),
%%   <<"Operation">> => string(),
%%   <<"OperationEndTime">> => string(),
%%   <<"OperationStartTime">> => string(),
%%   <<"RebootOption">> => string()
%% }
-type patch_summary() :: #{binary() => any()}.


%% Example:
%% aws_ecs_cluster_cluster_settings_details() :: #{
%%   <<"Name">> => string(),
%%   <<"Value">> => string()
%% }
-type aws_ecs_cluster_cluster_settings_details() :: #{binary() => any()}.


%% Example:
%% aws_ecs_task_definition_container_definitions_linux_parameters_devices_details() :: #{
%%   <<"ContainerPath">> => string(),
%%   <<"HostPath">> => string(),
%%   <<"Permissions">> => list(string()())
%% }
-type aws_ecs_task_definition_container_definitions_linux_parameters_devices_details() :: #{binary() => any()}.


%% Example:
%% aws_ec2_security_group_ipv6_range() :: #{
%%   <<"CidrIpv6">> => string()
%% }
-type aws_ec2_security_group_ipv6_range() :: #{binary() => any()}.


%% Example:
%% aws_ecs_task_definition_container_definitions_extra_hosts_details() :: #{
%%   <<"Hostname">> => string(),
%%   <<"IpAddress">> => string()
%% }
-type aws_ecs_task_definition_container_definitions_extra_hosts_details() :: #{binary() => any()}.


%% Example:
%% aws_network_firewall_firewall_subnet_mappings_details() :: #{
%%   <<"SubnetId">> => string()
%% }
-type aws_network_firewall_firewall_subnet_mappings_details() :: #{binary() => any()}.


%% Example:
%% aws_s3_bucket_object_lock_configuration_rule_details() :: #{
%%   <<"DefaultRetention">> => aws_s3_bucket_object_lock_configuration_rule_default_retention_details()
%% }
-type aws_s3_bucket_object_lock_configuration_rule_details() :: #{binary() => any()}.

%% Example:
%% delete_finding_aggregator_response() :: #{}
-type delete_finding_aggregator_response() :: #{}.


%% Example:
%% batch_update_findings_unprocessed_finding() :: #{
%%   <<"ErrorCode">> => string(),
%%   <<"ErrorMessage">> => string(),
%%   <<"FindingIdentifier">> => aws_security_finding_identifier()
%% }
-type batch_update_findings_unprocessed_finding() :: #{binary() => any()}.


%% Example:
%% list_configuration_policy_associations_request() :: #{
%%   <<"Filters">> => association_filters(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_configuration_policy_associations_request() :: #{binary() => any()}.


%% Example:
%% enable_import_findings_for_product_response() :: #{
%%   <<"ProductSubscriptionArn">> => string()
%% }
-type enable_import_findings_for_product_response() :: #{binary() => any()}.


%% Example:
%% aws_open_search_service_domain_log_publishing_options_details() :: #{
%%   <<"AuditLogs">> => aws_open_search_service_domain_log_publishing_option(),
%%   <<"IndexSlowLogs">> => aws_open_search_service_domain_log_publishing_option(),
%%   <<"SearchSlowLogs">> => aws_open_search_service_domain_log_publishing_option()
%% }
-type aws_open_search_service_domain_log_publishing_options_details() :: #{binary() => any()}.


%% Example:
%% list_security_control_definitions_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"StandardsArn">> => string()
%% }
-type list_security_control_definitions_request() :: #{binary() => any()}.


%% Example:
%% aws_waf_regional_web_acl_rules_list_details() :: #{
%%   <<"Action">> => aws_waf_regional_web_acl_rules_list_action_details(),
%%   <<"OverrideAction">> => aws_waf_regional_web_acl_rules_list_override_action_details(),
%%   <<"Priority">> => integer(),
%%   <<"RuleId">> => string(),
%%   <<"Type">> => string()
%% }
-type aws_waf_regional_web_acl_rules_list_details() :: #{binary() => any()}.


%% Example:
%% aws_s3_bucket_bucket_lifecycle_configuration_details() :: #{
%%   <<"Rules">> => list(aws_s3_bucket_bucket_lifecycle_configuration_rules_details()())
%% }
-type aws_s3_bucket_bucket_lifecycle_configuration_details() :: #{binary() => any()}.


%% Example:
%% malware() :: #{
%%   <<"Name">> => string(),
%%   <<"Path">> => string(),
%%   <<"State">> => list(any()),
%%   <<"Type">> => list(any())
%% }
-type malware() :: #{binary() => any()}.


%% Example:
%% aws_elb_load_balancer_cross_zone_load_balancing() :: #{
%%   <<"Enabled">> => boolean()
%% }
-type aws_elb_load_balancer_cross_zone_load_balancing() :: #{binary() => any()}.


%% Example:
%% aws_wafv2_web_acl_captcha_config_details() :: #{
%%   <<"ImmunityTimeProperty">> => aws_wafv2_web_acl_captcha_config_immunity_time_property_details()
%% }
-type aws_wafv2_web_acl_captcha_config_details() :: #{binary() => any()}.


%% Example:
%% aws_open_search_service_domain_advanced_security_options_details() :: #{
%%   <<"Enabled">> => boolean(),
%%   <<"InternalUserDatabaseEnabled">> => boolean(),
%%   <<"MasterUserOptions">> => aws_open_search_service_domain_master_user_options_details()
%% }
-type aws_open_search_service_domain_advanced_security_options_details() :: #{binary() => any()}.


%% Example:
%% aws_msk_cluster_cluster_info_encryption_info_encryption_in_transit_details() :: #{
%%   <<"ClientBroker">> => string(),
%%   <<"InCluster">> => boolean()
%% }
-type aws_msk_cluster_cluster_info_encryption_info_encryption_in_transit_details() :: #{binary() => any()}.


%% Example:
%% aws_athena_work_group_details() :: #{
%%   <<"Configuration">> => aws_athena_work_group_configuration_details(),
%%   <<"Description">> => string(),
%%   <<"Name">> => string(),
%%   <<"State">> => string()
%% }
-type aws_athena_work_group_details() :: #{binary() => any()}.


%% Example:
%% cvss() :: #{
%%   <<"Adjustments">> => list(adjustment()()),
%%   <<"BaseScore">> => float(),
%%   <<"BaseVector">> => string(),
%%   <<"Source">> => string(),
%%   <<"Version">> => string()
%% }
-type cvss() :: #{binary() => any()}.


%% Example:
%% aws_open_search_service_domain_encryption_at_rest_options_details() :: #{
%%   <<"Enabled">> => boolean(),
%%   <<"KmsKeyId">> => string()
%% }
-type aws_open_search_service_domain_encryption_at_rest_options_details() :: #{binary() => any()}.


%% Example:
%% aws_security_finding() :: #{
%%   <<"Confidence">> => integer(),
%%   <<"ProductName">> => string(),
%%   <<"RecordState">> => list(any()),
%%   <<"Malware">> => list(malware()()),
%%   <<"Network">> => network(),
%%   <<"Detection">> => detection(),
%%   <<"Vulnerabilities">> => list(vulnerability()()),
%%   <<"CompanyName">> => string(),
%%   <<"AwsAccountId">> => string(),
%%   <<"RelatedFindings">> => list(related_finding()()),
%%   <<"Resources">> => list(resource()()),
%%   <<"GeneratorId">> => string(),
%%   <<"Id">> => string(),
%%   <<"Region">> => string(),
%%   <<"ThreatIntelIndicators">> => list(threat_intel_indicator()()),
%%   <<"Process">> => process_details(),
%%   <<"ProductFields">> => map(),
%%   <<"Compliance">> => compliance(),
%%   <<"PatchSummary">> => patch_summary(),
%%   <<"SchemaVersion">> => string(),
%%   <<"WorkflowState">> => list(any()),
%%   <<"SourceUrl">> => string(),
%%   <<"Criticality">> => integer(),
%%   <<"Note">> => note(),
%%   <<"FirstObservedAt">> => string(),
%%   <<"FindingProviderFields">> => finding_provider_fields(),
%%   <<"Remediation">> => remediation(),
%%   <<"Severity">> => severity(),
%%   <<"Sample">> => boolean(),
%%   <<"Threats">> => list(threat()()),
%%   <<"ProcessedAt">> => string(),
%%   <<"Title">> => string(),
%%   <<"UserDefinedFields">> => map(),
%%   <<"GeneratorDetails">> => generator_details(),
%%   <<"ProductArn">> => string(),
%%   <<"Workflow">> => workflow(),
%%   <<"Action">> => action(),
%%   <<"CreatedAt">> => string(),
%%   <<"Types">> => list(string()()),
%%   <<"AwsAccountName">> => string(),
%%   <<"NetworkPath">> => list(network_path_component()()),
%%   <<"UpdatedAt">> => string(),
%%   <<"Description">> => string(),
%%   <<"LastObservedAt">> => string(),
%%   <<"VerificationState">> => list(any())
%% }
-type aws_security_finding() :: #{binary() => any()}.


%% Example:
%% aws_events_endpoint_routing_config_failover_config_details() :: #{
%%   <<"Primary">> => aws_events_endpoint_routing_config_failover_config_primary_details(),
%%   <<"Secondary">> => aws_events_endpoint_routing_config_failover_config_secondary_details()
%% }
-type aws_events_endpoint_routing_config_failover_config_details() :: #{binary() => any()}.


%% Example:
%% aws_ec2_instance_monitoring_details() :: #{
%%   <<"State">> => string()
%% }
-type aws_ec2_instance_monitoring_details() :: #{binary() => any()}.

%% Example:
%% get_finding_aggregator_request() :: #{}
-type get_finding_aggregator_request() :: #{}.


%% Example:
%% aws_lambda_function_tracing_config() :: #{
%%   <<"Mode">> => string()
%% }
-type aws_lambda_function_tracing_config() :: #{binary() => any()}.


%% Example:
%% aws_auto_scaling_auto_scaling_group_details() :: #{
%%   <<"AvailabilityZones">> => list(aws_auto_scaling_auto_scaling_group_availability_zones_list_details()()),
%%   <<"CapacityRebalance">> => boolean(),
%%   <<"CreatedTime">> => string(),
%%   <<"HealthCheckGracePeriod">> => integer(),
%%   <<"HealthCheckType">> => string(),
%%   <<"LaunchConfigurationName">> => string(),
%%   <<"LaunchTemplate">> => aws_auto_scaling_auto_scaling_group_launch_template_launch_template_specification(),
%%   <<"LoadBalancerNames">> => list(string()()),
%%   <<"MixedInstancesPolicy">> => aws_auto_scaling_auto_scaling_group_mixed_instances_policy_details()
%% }
-type aws_auto_scaling_auto_scaling_group_details() :: #{binary() => any()}.


%% Example:
%% aws_elb_load_balancer_source_security_group() :: #{
%%   <<"GroupName">> => string(),
%%   <<"OwnerAlias">> => string()
%% }
-type aws_elb_load_balancer_source_security_group() :: #{binary() => any()}.


%% Example:
%% aws_app_sync_graph_ql_api_lambda_authorizer_config_details() :: #{
%%   <<"AuthorizerResultTtlInSeconds">> => integer(),
%%   <<"AuthorizerUri">> => string(),
%%   <<"IdentityValidationExpression">> => string()
%% }
-type aws_app_sync_graph_ql_api_lambda_authorizer_config_details() :: #{binary() => any()}.


%% Example:
%% actor_session() :: #{
%%   <<"CreatedTime">> => float(),
%%   <<"Issuer">> => string(),
%%   <<"MfaStatus">> => list(any()),
%%   <<"Uid">> => string()
%% }
-type actor_session() :: #{binary() => any()}.


%% Example:
%% aws_iam_policy_version() :: #{
%%   <<"CreateDate">> => string(),
%%   <<"IsDefaultVersion">> => boolean(),
%%   <<"VersionId">> => string()
%% }
-type aws_iam_policy_version() :: #{binary() => any()}.


%% Example:
%% aws_backup_backup_plan_advanced_backup_settings_details() :: #{
%%   <<"BackupOptions">> => map(),
%%   <<"ResourceType">> => string()
%% }
-type aws_backup_backup_plan_advanced_backup_settings_details() :: #{binary() => any()}.


%% Example:
%% aws_auto_scaling_auto_scaling_group_mixed_instances_policy_launch_template_overrides_list_details() :: #{
%%   <<"InstanceType">> => string(),
%%   <<"WeightedCapacity">> => string()
%% }
-type aws_auto_scaling_auto_scaling_group_mixed_instances_policy_launch_template_overrides_list_details() :: #{binary() => any()}.


%% Example:
%% aws_s3_bucket_object_lock_configuration_rule_default_retention_details() :: #{
%%   <<"Days">> => integer(),
%%   <<"Mode">> => string(),
%%   <<"Years">> => integer()
%% }
-type aws_s3_bucket_object_lock_configuration_rule_default_retention_details() :: #{binary() => any()}.


%% Example:
%% aws_s3_bucket_website_configuration_redirect_to() :: #{
%%   <<"Hostname">> => string(),
%%   <<"Protocol">> => string()
%% }
-type aws_s3_bucket_website_configuration_redirect_to() :: #{binary() => any()}.


%% Example:
%% aws_api_call_action_domain_details() :: #{
%%   <<"Domain">> => string()
%% }
-type aws_api_call_action_domain_details() :: #{binary() => any()}.


%% Example:
%% enable_import_findings_for_product_request() :: #{
%%   <<"ProductArn">> := string()
%% }
-type enable_import_findings_for_product_request() :: #{binary() => any()}.


%% Example:
%% date_range() :: #{
%%   <<"Unit">> => list(any()),
%%   <<"Value">> => integer()
%% }
-type date_range() :: #{binary() => any()}.


%% Example:
%% resource_details() :: #{
%%   <<"AwsEcsTaskDefinition">> => aws_ecs_task_definition_details(),
%%   <<"AwsEc2Instance">> => aws_ec2_instance_details(),
%%   <<"AwsApiGatewayV2Api">> => aws_api_gateway_v2_api_details(),
%%   <<"AwsEc2VpcPeeringConnection">> => aws_ec2_vpc_peering_connection_details(),
%%   <<"AwsApiGatewayV2Stage">> => aws_api_gateway_v2_stage_details(),
%%   <<"AwsEc2Volume">> => aws_ec2_volume_details(),
%%   <<"AwsDmsEndpoint">> => aws_dms_endpoint_details(),
%%   <<"AwsStepFunctionStateMachine">> => aws_step_function_state_machine_details(),
%%   <<"AwsLambdaFunction">> => aws_lambda_function_details(),
%%   <<"AwsCloudWatchAlarm">> => aws_cloud_watch_alarm_details(),
%%   <<"AwsRdsDbInstance">> => aws_rds_db_instance_details(),
%%   <<"AwsBackupBackupPlan">> => aws_backup_backup_plan_details(),
%%   <<"AwsRdsDbClusterSnapshot">> => aws_rds_db_cluster_snapshot_details(),
%%   <<"AwsRdsDbSecurityGroup">> => aws_rds_db_security_group_details(),
%%   <<"AwsNetworkFirewallFirewall">> => aws_network_firewall_firewall_details(),
%%   <<"AwsGuardDutyDetector">> => aws_guard_duty_detector_details(),
%%   <<"AwsDmsReplicationInstance">> => aws_dms_replication_instance_details(),
%%   <<"AwsRdsDbCluster">> => aws_rds_db_cluster_details(),
%%   <<"AwsEc2SecurityGroup">> => aws_ec2_security_group_details(),
%%   <<"AwsEc2Subnet">> => aws_ec2_subnet_details(),
%%   <<"AwsSecretsManagerSecret">> => aws_secrets_manager_secret_details(),
%%   <<"AwsEcsService">> => aws_ecs_service_details(),
%%   <<"AwsElbv2LoadBalancer">> => aws_elbv2_load_balancer_details(),
%%   <<"AwsIamUser">> => aws_iam_user_details(),
%%   <<"AwsAthenaWorkGroup">> => aws_athena_work_group_details(),
%%   <<"AwsSnsTopic">> => aws_sns_topic_details(),
%%   <<"AwsKmsKey">> => aws_kms_key_details(),
%%   <<"AwsElbLoadBalancer">> => aws_elb_load_balancer_details(),
%%   <<"AwsEc2LaunchTemplate">> => aws_ec2_launch_template_details(),
%%   <<"AwsEksCluster">> => aws_eks_cluster_details(),
%%   <<"AwsOpenSearchServiceDomain">> => aws_open_search_service_domain_details(),
%%   <<"AwsKinesisStream">> => aws_kinesis_stream_details(),
%%   <<"AwsSqsQueue">> => aws_sqs_queue_details(),
%%   <<"AwsBackupRecoveryPoint">> => aws_backup_recovery_point_details(),
%%   <<"AwsWafRule">> => aws_waf_rule_details(),
%%   <<"AwsS3AccountPublicAccessBlock">> => aws_s3_account_public_access_block_details(),
%%   <<"AwsXrayEncryptionConfig">> => aws_xray_encryption_config_details(),
%%   <<"AwsEc2TransitGateway">> => aws_ec2_transit_gateway_details(),
%%   <<"AwsEcsTask">> => aws_ecs_task_details(),
%%   <<"AwsEcrRepository">> => aws_ecr_repository_details(),
%%   <<"AwsNetworkFirewallRuleGroup">> => aws_network_firewall_rule_group_details(),
%%   <<"AwsBackupBackupVault">> => aws_backup_backup_vault_details(),
%%   <<"AwsEc2RouteTable">> => aws_ec2_route_table_details(),
%%   <<"AwsCodeBuildProject">> => aws_code_build_project_details(),
%%   <<"AwsEventSchemasRegistry">> => aws_event_schemas_registry_details(),
%%   <<"AwsIamAccessKey">> => aws_iam_access_key_details(),
%%   <<"AwsNetworkFirewallFirewallPolicy">> => aws_network_firewall_firewall_policy_details(),
%%   <<"AwsIamGroup">> => aws_iam_group_details(),
%%   <<"AwsEc2ClientVpnEndpoint">> => aws_ec2_client_vpn_endpoint_details(),
%%   <<"AwsApiGatewayRestApi">> => aws_api_gateway_rest_api_details(),
%%   <<"AwsWafv2WebAcl">> => aws_wafv2_web_acl_details(),
%%   <<"AwsRdsDbSnapshot">> => aws_rds_db_snapshot_details(),
%%   <<"AwsWafRegionalRule">> => aws_waf_regional_rule_details(),
%%   <<"AwsWafRuleGroup">> => aws_waf_rule_group_details(),
%%   <<"AwsEc2VpnConnection">> => aws_ec2_vpn_connection_details(),
%%   <<"AwsCloudFrontDistribution">> => aws_cloud_front_distribution_details(),
%%   <<"AwsElasticsearchDomain">> => aws_elasticsearch_domain_details(),
%%   <<"AwsAmazonMqBroker">> => aws_amazon_mq_broker_details(),
%%   <<"AwsCloudFormationStack">> => aws_cloud_formation_stack_details(),
%%   <<"AwsWafRateBasedRule">> => aws_waf_rate_based_rule_details(),
%%   <<"AwsElasticBeanstalkEnvironment">> => aws_elastic_beanstalk_environment_details(),
%%   <<"AwsEcrContainerImage">> => aws_ecr_container_image_details(),
%%   <<"AwsWafRegionalRateBasedRule">> => aws_waf_regional_rate_based_rule_details(),
%%   <<"AwsEc2NetworkAcl">> => aws_ec2_network_acl_details(),
%%   <<"AwsDmsReplicationTask">> => aws_dms_replication_task_details(),
%%   <<"AwsIamPolicy">> => aws_iam_policy_details(),
%%   <<"AwsEc2Eip">> => aws_ec2_eip_details(),
%%   <<"AwsEcsContainer">> => aws_ecs_container_details(),
%%   <<"AwsWafv2RuleGroup">> => aws_wafv2_rule_group_details(),
%%   <<"AwsDynamoDbTable">> => aws_dynamo_db_table_details(),
%%   <<"AwsAppSyncGraphQlApi">> => aws_app_sync_graph_ql_api_details(),
%%   <<"Other">> => map(),
%%   <<"AwsS3Object">> => aws_s3_object_details(),
%%   <<"AwsIamRole">> => aws_iam_role_details(),
%%   <<"AwsMskCluster">> => aws_msk_cluster_details(),
%%   <<"AwsEcsCluster">> => aws_ecs_cluster_details(),
%%   <<"AwsEfsAccessPoint">> => aws_efs_access_point_details(),
%%   <<"AwsWafRegionalRuleGroup">> => aws_waf_regional_rule_group_details(),
%%   <<"AwsS3Bucket">> => aws_s3_bucket_details(),
%%   <<"AwsEc2VpcEndpointService">> => aws_ec2_vpc_endpoint_service_details(),
%%   <<"AwsSageMakerNotebookInstance">> => aws_sage_maker_notebook_instance_details(),
%%   <<"AwsRdsEventSubscription">> => aws_rds_event_subscription_details(),
%%   <<"AwsRedshiftCluster">> => aws_redshift_cluster_details(),
%%   <<"AwsLambdaLayerVersion">> => aws_lambda_layer_version_details(),
%%   <<"AwsAutoScalingAutoScalingGroup">> => aws_auto_scaling_auto_scaling_group_details(),
%%   <<"AwsS3AccessPoint">> => aws_s3_access_point_details(),
%%   <<"AwsAutoScalingLaunchConfiguration">> => aws_auto_scaling_launch_configuration_details(),
%%   <<"AwsCertificateManagerCertificate">> => aws_certificate_manager_certificate_details(),
%%   <<"Container">> => container_details(),
%%   <<"AwsEc2Vpc">> => aws_ec2_vpc_details(),
%%   <<"AwsApiGatewayStage">> => aws_api_gateway_stage_details(),
%%   <<"AwsEventsEventbus">> => aws_events_eventbus_details(),
%%   <<"AwsWafRegionalWebAcl">> => aws_waf_regional_web_acl_details(),
%%   <<"AwsWafWebAcl">> => aws_waf_web_acl_details(),
%%   <<"AwsEc2NetworkInterface">> => aws_ec2_network_interface_details(),
%%   <<"AwsEventsEndpoint">> => aws_events_endpoint_details(),
%%   <<"AwsSsmPatchCompliance">> => aws_ssm_patch_compliance_details(),
%%   <<"AwsRoute53HostedZone">> => aws_route53_hosted_zone_details(),
%%   <<"AwsCloudTrailTrail">> => aws_cloud_trail_trail_details()
%% }
-type resource_details() :: #{binary() => any()}.


%% Example:
%% create_insight_request() :: #{
%%   <<"Filters">> := aws_security_finding_filters(),
%%   <<"GroupByAttribute">> := string(),
%%   <<"Name">> := string()
%% }
-type create_insight_request() :: #{binary() => any()}.


%% Example:
%% aws_ecs_task_definition_proxy_configuration_details() :: #{
%%   <<"ContainerName">> => string(),
%%   <<"ProxyConfigurationProperties">> => list(aws_ecs_task_definition_proxy_configuration_proxy_configuration_properties_details()()),
%%   <<"Type">> => string()
%% }
-type aws_ecs_task_definition_proxy_configuration_details() :: #{binary() => any()}.


%% Example:
%% insight() :: #{
%%   <<"Filters">> => aws_security_finding_filters(),
%%   <<"GroupByAttribute">> => string(),
%%   <<"InsightArn">> => string(),
%%   <<"Name">> => string()
%% }
-type insight() :: #{binary() => any()}.


%% Example:
%% network_path_component_details() :: #{
%%   <<"Address">> => list(string()()),
%%   <<"PortRanges">> => list(port_range()())
%% }
-type network_path_component_details() :: #{binary() => any()}.


%% Example:
%% aws_ecs_task_definition_placement_constraints_details() :: #{
%%   <<"Expression">> => string(),
%%   <<"Type">> => string()
%% }
-type aws_ecs_task_definition_placement_constraints_details() :: #{binary() => any()}.


%% Example:
%% create_configuration_policy_request() :: #{
%%   <<"ConfigurationPolicy">> := list(),
%%   <<"Description">> => string(),
%%   <<"Name">> := string(),
%%   <<"Tags">> => map()
%% }
-type create_configuration_policy_request() :: #{binary() => any()}.


%% Example:
%% aws_elb_load_balancer_backend_server_description() :: #{
%%   <<"InstancePort">> => integer(),
%%   <<"PolicyNames">> => list(string()())
%% }
-type aws_elb_load_balancer_backend_server_description() :: #{binary() => any()}.


%% Example:
%% aws_ecs_cluster_details() :: #{
%%   <<"ActiveServicesCount">> => integer(),
%%   <<"CapacityProviders">> => list(string()()),
%%   <<"ClusterArn">> => string(),
%%   <<"ClusterName">> => string(),
%%   <<"ClusterSettings">> => list(aws_ecs_cluster_cluster_settings_details()()),
%%   <<"Configuration">> => aws_ecs_cluster_configuration_details(),
%%   <<"DefaultCapacityProviderStrategy">> => list(aws_ecs_cluster_default_capacity_provider_strategy_details()()),
%%   <<"RegisteredContainerInstancesCount">> => integer(),
%%   <<"RunningTasksCount">> => integer(),
%%   <<"Status">> => string()
%% }
-type aws_ecs_cluster_details() :: #{binary() => any()}.

%% Example:
%% accept_administrator_invitation_response() :: #{}
-type accept_administrator_invitation_response() :: #{}.


%% Example:
%% aws_ecs_task_definition_details() :: #{
%%   <<"ContainerDefinitions">> => list(aws_ecs_task_definition_container_definitions_details()()),
%%   <<"Cpu">> => string(),
%%   <<"ExecutionRoleArn">> => string(),
%%   <<"Family">> => string(),
%%   <<"InferenceAccelerators">> => list(aws_ecs_task_definition_inference_accelerators_details()()),
%%   <<"IpcMode">> => string(),
%%   <<"Memory">> => string(),
%%   <<"NetworkMode">> => string(),
%%   <<"PidMode">> => string(),
%%   <<"PlacementConstraints">> => list(aws_ecs_task_definition_placement_constraints_details()()),
%%   <<"ProxyConfiguration">> => aws_ecs_task_definition_proxy_configuration_details(),
%%   <<"RequiresCompatibilities">> => list(string()()),
%%   <<"Status">> => string(),
%%   <<"TaskRoleArn">> => string(),
%%   <<"Volumes">> => list(aws_ecs_task_definition_volumes_details()())
%% }
-type aws_ecs_task_definition_details() :: #{binary() => any()}.


%% Example:
%% stateless_custom_action_definition() :: #{
%%   <<"PublishMetricAction">> => stateless_custom_publish_metric_action()
%% }
-type stateless_custom_action_definition() :: #{binary() => any()}.


%% Example:
%% aws_guard_duty_detector_features_details() :: #{
%%   <<"Name">> => string(),
%%   <<"Status">> => string()
%% }
-type aws_guard_duty_detector_features_details() :: #{binary() => any()}.

%% Example:
%% get_insight_results_request() :: #{}
-type get_insight_results_request() :: #{}.


%% Example:
%% aws_events_endpoint_routing_config_details() :: #{
%%   <<"FailoverConfig">> => aws_events_endpoint_routing_config_failover_config_details()
%% }
-type aws_events_endpoint_routing_config_details() :: #{binary() => any()}.


%% Example:
%% security_hub_policy() :: #{
%%   <<"EnabledStandardIdentifiers">> => list(string()()),
%%   <<"SecurityControlsConfiguration">> => security_controls_configuration(),
%%   <<"ServiceEnabled">> => boolean()
%% }
-type security_hub_policy() :: #{binary() => any()}.


%% Example:
%% enable_security_hub_request() :: #{
%%   <<"ControlFindingGenerator">> => list(any()),
%%   <<"EnableDefaultStandards">> => boolean(),
%%   <<"Tags">> => map()
%% }
-type enable_security_hub_request() :: #{binary() => any()}.


%% Example:
%% aws_elb_load_balancer_additional_attribute() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type aws_elb_load_balancer_additional_attribute() :: #{binary() => any()}.


%% Example:
%% aws_dynamo_db_table_provisioned_throughput() :: #{
%%   <<"LastDecreaseDateTime">> => string(),
%%   <<"LastIncreaseDateTime">> => string(),
%%   <<"NumberOfDecreasesToday">> => integer(),
%%   <<"ReadCapacityUnits">> => integer(),
%%   <<"WriteCapacityUnits">> => integer()
%% }
-type aws_dynamo_db_table_provisioned_throughput() :: #{binary() => any()}.


%% Example:
%% aws_ecs_task_definition_container_definitions_secrets_details() :: #{
%%   <<"Name">> => string(),
%%   <<"ValueFrom">> => string()
%% }
-type aws_ecs_task_definition_container_definitions_secrets_details() :: #{binary() => any()}.


%% Example:
%% aws_rds_db_subnet_group_subnet_availability_zone() :: #{
%%   <<"Name">> => string()
%% }
-type aws_rds_db_subnet_group_subnet_availability_zone() :: #{binary() => any()}.

%% Example:
%% delete_configuration_policy_request() :: #{}
-type delete_configuration_policy_request() :: #{}.


%% Example:
%% aws_ecr_container_image_details() :: #{
%%   <<"Architecture">> => string(),
%%   <<"ImageDigest">> => string(),
%%   <<"ImagePublishedAt">> => string(),
%%   <<"ImageTags">> => list(string()()),
%%   <<"RegistryId">> => string(),
%%   <<"RepositoryName">> => string()
%% }
-type aws_ecr_container_image_details() :: #{binary() => any()}.


%% Example:
%% aws_ec2_network_interface_details() :: #{
%%   <<"Attachment">> => aws_ec2_network_interface_attachment(),
%%   <<"IpV6Addresses">> => list(aws_ec2_network_interface_ip_v6_address_detail()()),
%%   <<"NetworkInterfaceId">> => string(),
%%   <<"PrivateIpAddresses">> => list(aws_ec2_network_interface_private_ip_address_detail()()),
%%   <<"PublicDnsName">> => string(),
%%   <<"PublicIp">> => string(),
%%   <<"SecurityGroups">> => list(aws_ec2_network_interface_security_group()()),
%%   <<"SourceDestCheck">> => boolean()
%% }
-type aws_ec2_network_interface_details() :: #{binary() => any()}.


%% Example:
%% aws_redshift_cluster_logging_status() :: #{
%%   <<"BucketName">> => string(),
%%   <<"LastFailureMessage">> => string(),
%%   <<"LastFailureTime">> => string(),
%%   <<"LastSuccessfulDeliveryTime">> => string(),
%%   <<"LoggingEnabled">> => boolean(),
%%   <<"S3KeyPrefix">> => string()
%% }
-type aws_redshift_cluster_logging_status() :: #{binary() => any()}.


%% Example:
%% aws_ecs_task_definition_container_definitions_log_configuration_secret_options_details() :: #{
%%   <<"Name">> => string(),
%%   <<"ValueFrom">> => string()
%% }
-type aws_ecs_task_definition_container_definitions_log_configuration_secret_options_details() :: #{binary() => any()}.


%% Example:
%% security_control_custom_parameter() :: #{
%%   <<"Parameters">> => map(),
%%   <<"SecurityControlId">> => string()
%% }
-type security_control_custom_parameter() :: #{binary() => any()}.


%% Example:
%% aws_amazon_mq_broker_maintenance_window_start_time_details() :: #{
%%   <<"DayOfWeek">> => string(),
%%   <<"TimeOfDay">> => string(),
%%   <<"TimeZone">> => string()
%% }
-type aws_amazon_mq_broker_maintenance_window_start_time_details() :: #{binary() => any()}.


%% Example:
%% aws_ecs_service_capacity_provider_strategy_details() :: #{
%%   <<"Base">> => integer(),
%%   <<"CapacityProvider">> => string(),
%%   <<"Weight">> => integer()
%% }
-type aws_ecs_service_capacity_provider_strategy_details() :: #{binary() => any()}.


%% Example:
%% aws_wafv2_custom_request_handling_details() :: #{
%%   <<"InsertHeaders">> => list(aws_wafv2_custom_http_header()())
%% }
-type aws_wafv2_custom_request_handling_details() :: #{binary() => any()}.


%% Example:
%% aws_guard_duty_detector_data_sources_s3_logs_details() :: #{
%%   <<"Status">> => string()
%% }
-type aws_guard_duty_detector_data_sources_s3_logs_details() :: #{binary() => any()}.


%% Example:
%% aws_waf_rule_details() :: #{
%%   <<"MetricName">> => string(),
%%   <<"Name">> => string(),
%%   <<"PredicateList">> => list(aws_waf_rule_predicate_list_details()()),
%%   <<"RuleId">> => string()
%% }
-type aws_waf_rule_details() :: #{binary() => any()}.


%% Example:
%% list_organization_admin_accounts_response() :: #{
%%   <<"AdminAccounts">> => list(admin_account()()),
%%   <<"NextToken">> => string()
%% }
-type list_organization_admin_accounts_response() :: #{binary() => any()}.


%% Example:
%% batch_disable_standards_request() :: #{
%%   <<"StandardsSubscriptionArns">> := list(string()())
%% }
-type batch_disable_standards_request() :: #{binary() => any()}.


%% Example:
%% port_probe_detail() :: #{
%%   <<"LocalIpDetails">> => action_local_ip_details(),
%%   <<"LocalPortDetails">> => action_local_port_details(),
%%   <<"RemoteIpDetails">> => action_remote_ip_details()
%% }
-type port_probe_detail() :: #{binary() => any()}.

%% Example:
%% get_configuration_policy_request() :: #{}
-type get_configuration_policy_request() :: #{}.


%% Example:
%% aws_waf_regional_rate_based_rule_details() :: #{
%%   <<"MatchPredicates">> => list(aws_waf_regional_rate_based_rule_match_predicate()()),
%%   <<"MetricName">> => string(),
%%   <<"Name">> => string(),
%%   <<"RateKey">> => string(),
%%   <<"RateLimit">> => float(),
%%   <<"RuleId">> => string()
%% }
-type aws_waf_regional_rate_based_rule_details() :: #{binary() => any()}.


%% Example:
%% aws_s3_bucket_website_configuration() :: #{
%%   <<"ErrorDocument">> => string(),
%%   <<"IndexDocumentSuffix">> => string(),
%%   <<"RedirectAllRequestsTo">> => aws_s3_bucket_website_configuration_redirect_to(),
%%   <<"RoutingRules">> => list(aws_s3_bucket_website_configuration_routing_rule()())
%% }
-type aws_s3_bucket_website_configuration() :: #{binary() => any()}.


%% Example:
%% aws_ec2_vpc_details() :: #{
%%   <<"CidrBlockAssociationSet">> => list(cidr_block_association()()),
%%   <<"DhcpOptionsId">> => string(),
%%   <<"Ipv6CidrBlockAssociationSet">> => list(ipv6_cidr_block_association()()),
%%   <<"State">> => string()
%% }
-type aws_ec2_vpc_details() :: #{binary() => any()}.


%% Example:
%% enum_list_configuration_options() :: #{
%%   <<"AllowedValues">> => list(string()()),
%%   <<"DefaultValue">> => list(string()()),
%%   <<"MaxItems">> => integer()
%% }
-type enum_list_configuration_options() :: #{binary() => any()}.

%% Example:
%% disassociate_from_administrator_account_request() :: #{}
-type disassociate_from_administrator_account_request() :: #{}.


%% Example:
%% aws_ecs_task_definition_container_definitions_depends_on_details() :: #{
%%   <<"Condition">> => string(),
%%   <<"ContainerName">> => string()
%% }
-type aws_ecs_task_definition_container_definitions_depends_on_details() :: #{binary() => any()}.


%% Example:
%% aws_dynamo_db_table_attribute_definition() :: #{
%%   <<"AttributeName">> => string(),
%%   <<"AttributeType">> => string()
%% }
-type aws_dynamo_db_table_attribute_definition() :: #{binary() => any()}.


%% Example:
%% rule_group_source_custom_actions_details() :: #{
%%   <<"ActionDefinition">> => stateless_custom_action_definition(),
%%   <<"ActionName">> => string()
%% }
-type rule_group_source_custom_actions_details() :: #{binary() => any()}.


%% Example:
%% aws_code_build_project_environment_environment_variables_details() :: #{
%%   <<"Name">> => string(),
%%   <<"Type">> => string(),
%%   <<"Value">> => string()
%% }
-type aws_code_build_project_environment_environment_variables_details() :: #{binary() => any()}.


%% Example:
%% standards_subscription() :: #{
%%   <<"StandardsArn">> => string(),
%%   <<"StandardsControlsUpdatable">> => list(any()),
%%   <<"StandardsInput">> => map(),
%%   <<"StandardsStatus">> => list(any()),
%%   <<"StandardsStatusReason">> => standards_status_reason(),
%%   <<"StandardsSubscriptionArn">> => string()
%% }
-type standards_subscription() :: #{binary() => any()}.


%% Example:
%% aws_ecs_task_definition_container_definitions_repository_credentials_details() :: #{
%%   <<"CredentialsParameter">> => string()
%% }
-type aws_ecs_task_definition_container_definitions_repository_credentials_details() :: #{binary() => any()}.


%% Example:
%% aws_lambda_function_details() :: #{
%%   <<"Architectures">> => list(string()()),
%%   <<"Code">> => aws_lambda_function_code(),
%%   <<"CodeSha256">> => string(),
%%   <<"DeadLetterConfig">> => aws_lambda_function_dead_letter_config(),
%%   <<"Environment">> => aws_lambda_function_environment(),
%%   <<"FunctionName">> => string(),
%%   <<"Handler">> => string(),
%%   <<"KmsKeyArn">> => string(),
%%   <<"LastModified">> => string(),
%%   <<"Layers">> => list(aws_lambda_function_layer()()),
%%   <<"MasterArn">> => string(),
%%   <<"MemorySize">> => integer(),
%%   <<"PackageType">> => string(),
%%   <<"RevisionId">> => string(),
%%   <<"Role">> => string(),
%%   <<"Runtime">> => string(),
%%   <<"Timeout">> => integer(),
%%   <<"TracingConfig">> => aws_lambda_function_tracing_config(),
%%   <<"Version">> => string(),
%%   <<"VpcConfig">> => aws_lambda_function_vpc_config()
%% }
-type aws_lambda_function_details() :: #{binary() => any()}.


%% Example:
%% aws_ecs_task_definition_volumes_host_details() :: #{
%%   <<"SourcePath">> => string()
%% }
-type aws_ecs_task_definition_volumes_host_details() :: #{binary() => any()}.


%% Example:
%% aws_events_endpoint_details() :: #{
%%   <<"Arn">> => string(),
%%   <<"Description">> => string(),
%%   <<"EndpointId">> => string(),
%%   <<"EndpointUrl">> => string(),
%%   <<"EventBuses">> => list(aws_events_endpoint_event_buses_details()()),
%%   <<"Name">> => string(),
%%   <<"ReplicationConfig">> => aws_events_endpoint_replication_config_details(),
%%   <<"RoleArn">> => string(),
%%   <<"RoutingConfig">> => aws_events_endpoint_routing_config_details(),
%%   <<"State">> => string(),
%%   <<"StateReason">> => string()
%% }
-type aws_events_endpoint_details() :: #{binary() => any()}.


%% Example:
%% aws_ec2_launch_template_data_network_interface_set_ipv6_addresses_details() :: #{
%%   <<"Ipv6Address">> => string()
%% }
-type aws_ec2_launch_template_data_network_interface_set_ipv6_addresses_details() :: #{binary() => any()}.


%% Example:
%% get_administrator_account_response() :: #{
%%   <<"Administrator">> => invitation()
%% }
-type get_administrator_account_response() :: #{binary() => any()}.


%% Example:
%% aws_app_sync_graph_ql_api_open_id_connect_config_details() :: #{
%%   <<"AuthTtL">> => float(),
%%   <<"ClientId">> => string(),
%%   <<"IatTtL">> => float(),
%%   <<"Issuer">> => string()
%% }
-type aws_app_sync_graph_ql_api_open_id_connect_config_details() :: #{binary() => any()}.


%% Example:
%% batch_get_configuration_policy_associations_request() :: #{
%%   <<"ConfigurationPolicyAssociationIdentifiers">> := list(configuration_policy_association()())
%% }
-type batch_get_configuration_policy_associations_request() :: #{binary() => any()}.


%% Example:
%% batch_get_standards_control_associations_response() :: #{
%%   <<"StandardsControlAssociationDetails">> => list(standards_control_association_detail()()),
%%   <<"UnprocessedAssociations">> => list(unprocessed_standards_control_association()())
%% }
-type batch_get_standards_control_associations_response() :: #{binary() => any()}.


%% Example:
%% finding_provider_severity() :: #{
%%   <<"Label">> => list(any()),
%%   <<"Original">> => string()
%% }
-type finding_provider_severity() :: #{binary() => any()}.


%% Example:
%% batch_delete_automation_rules_response() :: #{
%%   <<"ProcessedAutomationRules">> => list(string()()),
%%   <<"UnprocessedAutomationRules">> => list(unprocessed_automation_rule()())
%% }
-type batch_delete_automation_rules_response() :: #{binary() => any()}.


%% Example:
%% aws_rds_db_parameter_group() :: #{
%%   <<"DbParameterGroupName">> => string(),
%%   <<"ParameterApplyStatus">> => string()
%% }
-type aws_rds_db_parameter_group() :: #{binary() => any()}.


%% Example:
%% aws_ec2_client_vpn_endpoint_client_connect_options_details() :: #{
%%   <<"Enabled">> => boolean(),
%%   <<"LambdaFunctionArn">> => string(),
%%   <<"Status">> => aws_ec2_client_vpn_endpoint_client_connect_options_status_details()
%% }
-type aws_ec2_client_vpn_endpoint_client_connect_options_details() :: #{binary() => any()}.


%% Example:
%% get_security_control_definition_request() :: #{
%%   <<"SecurityControlId">> := string()
%% }
-type get_security_control_definition_request() :: #{binary() => any()}.


%% Example:
%% note() :: #{
%%   <<"Text">> => string(),
%%   <<"UpdatedAt">> => string(),
%%   <<"UpdatedBy">> => string()
%% }
-type note() :: #{binary() => any()}.


%% Example:
%% list_configuration_policies_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_configuration_policies_request() :: #{binary() => any()}.


%% Example:
%% resource_conflict_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string()
%% }
-type resource_conflict_exception() :: #{binary() => any()}.


%% Example:
%% aws_elasticsearch_domain_node_to_node_encryption_options() :: #{
%%   <<"Enabled">> => boolean()
%% }
-type aws_elasticsearch_domain_node_to_node_encryption_options() :: #{binary() => any()}.


%% Example:
%% aws_dynamo_db_table_details() :: #{
%%   <<"AttributeDefinitions">> => list(aws_dynamo_db_table_attribute_definition()()),
%%   <<"BillingModeSummary">> => aws_dynamo_db_table_billing_mode_summary(),
%%   <<"CreationDateTime">> => string(),
%%   <<"DeletionProtectionEnabled">> => boolean(),
%%   <<"GlobalSecondaryIndexes">> => list(aws_dynamo_db_table_global_secondary_index()()),
%%   <<"GlobalTableVersion">> => string(),
%%   <<"ItemCount">> => integer(),
%%   <<"KeySchema">> => list(aws_dynamo_db_table_key_schema()()),
%%   <<"LatestStreamArn">> => string(),
%%   <<"LatestStreamLabel">> => string(),
%%   <<"LocalSecondaryIndexes">> => list(aws_dynamo_db_table_local_secondary_index()()),
%%   <<"ProvisionedThroughput">> => aws_dynamo_db_table_provisioned_throughput(),
%%   <<"Replicas">> => list(aws_dynamo_db_table_replica()()),
%%   <<"RestoreSummary">> => aws_dynamo_db_table_restore_summary(),
%%   <<"SseDescription">> => aws_dynamo_db_table_sse_description(),
%%   <<"StreamSpecification">> => aws_dynamo_db_table_stream_specification(),
%%   <<"TableId">> => string(),
%%   <<"TableName">> => string(),
%%   <<"TableSizeBytes">> => float(),
%%   <<"TableStatus">> => string()
%% }
-type aws_dynamo_db_table_details() :: #{binary() => any()}.


%% Example:
%% page() :: #{
%%   <<"LineRange">> => range(),
%%   <<"OffsetRange">> => range(),
%%   <<"PageNumber">> => float()
%% }
-type page() :: #{binary() => any()}.


%% Example:
%% aws_elasticsearch_domain_log_publishing_options_log_config() :: #{
%%   <<"CloudWatchLogsLogGroupArn">> => string(),
%%   <<"Enabled">> => boolean()
%% }
-type aws_elasticsearch_domain_log_publishing_options_log_config() :: #{binary() => any()}.


%% Example:
%% create_members_response() :: #{
%%   <<"UnprocessedAccounts">> => list(result()())
%% }
-type create_members_response() :: #{binary() => any()}.


%% Example:
%% list_automation_rules_response() :: #{
%%   <<"AutomationRulesMetadata">> => list(automation_rules_metadata()()),
%%   <<"NextToken">> => string()
%% }
-type list_automation_rules_response() :: #{binary() => any()}.


%% Example:
%% aws_code_build_project_environment() :: #{
%%   <<"Certificate">> => string(),
%%   <<"EnvironmentVariables">> => list(aws_code_build_project_environment_environment_variables_details()()),
%%   <<"ImagePullCredentialsType">> => string(),
%%   <<"PrivilegedMode">> => boolean(),
%%   <<"RegistryCredential">> => aws_code_build_project_environment_registry_credential(),
%%   <<"Type">> => string()
%% }
-type aws_code_build_project_environment() :: #{binary() => any()}.


%% Example:
%% get_configuration_policy_association_response() :: #{
%%   <<"AssociationStatus">> => list(any()),
%%   <<"AssociationStatusMessage">> => string(),
%%   <<"AssociationType">> => list(any()),
%%   <<"ConfigurationPolicyId">> => string(),
%%   <<"TargetId">> => string(),
%%   <<"TargetType">> => list(any()),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type get_configuration_policy_association_response() :: #{binary() => any()}.


%% Example:
%% aws_ec2_launch_template_data_cpu_options_details() :: #{
%%   <<"CoreCount">> => integer(),
%%   <<"ThreadsPerCore">> => integer()
%% }
-type aws_ec2_launch_template_data_cpu_options_details() :: #{binary() => any()}.


%% Example:
%% rule_group_source_stateless_rule_match_attributes_tcp_flags() :: #{
%%   <<"Flags">> => list(string()()),
%%   <<"Masks">> => list(string()())
%% }
-type rule_group_source_stateless_rule_match_attributes_tcp_flags() :: #{binary() => any()}.


%% Example:
%% update_insight_request() :: #{
%%   <<"Filters">> => aws_security_finding_filters(),
%%   <<"GroupByAttribute">> => string(),
%%   <<"Name">> => string()
%% }
-type update_insight_request() :: #{binary() => any()}.


%% Example:
%% aws_ec2_vpn_connection_options_details() :: #{
%%   <<"StaticRoutesOnly">> => boolean(),
%%   <<"TunnelOptions">> => list(aws_ec2_vpn_connection_options_tunnel_options_details()())
%% }
-type aws_ec2_vpn_connection_options_details() :: #{binary() => any()}.


%% Example:
%% aws_elb_load_balancer_listener() :: #{
%%   <<"InstancePort">> => integer(),
%%   <<"InstanceProtocol">> => string(),
%%   <<"LoadBalancerPort">> => integer(),
%%   <<"Protocol">> => string(),
%%   <<"SslCertificateId">> => string()
%% }
-type aws_elb_load_balancer_listener() :: #{binary() => any()}.


%% Example:
%% integer_configuration_options() :: #{
%%   <<"DefaultValue">> => integer(),
%%   <<"Max">> => integer(),
%%   <<"Min">> => integer()
%% }
-type integer_configuration_options() :: #{binary() => any()}.


%% Example:
%% aws_backup_recovery_point_calculated_lifecycle_details() :: #{
%%   <<"DeleteAt">> => string(),
%%   <<"MoveToColdStorageAt">> => string()
%% }
-type aws_backup_recovery_point_calculated_lifecycle_details() :: #{binary() => any()}.


%% Example:
%% string_configuration_options() :: #{
%%   <<"DefaultValue">> => string(),
%%   <<"ExpressionDescription">> => string(),
%%   <<"Re2Expression">> => string()
%% }
-type string_configuration_options() :: #{binary() => any()}.


%% Example:
%% aws_elbv2_load_balancer_details() :: #{
%%   <<"AvailabilityZones">> => list(availability_zone()()),
%%   <<"CanonicalHostedZoneId">> => string(),
%%   <<"CreatedTime">> => string(),
%%   <<"DNSName">> => string(),
%%   <<"IpAddressType">> => string(),
%%   <<"LoadBalancerAttributes">> => list(aws_elbv2_load_balancer_attribute()()),
%%   <<"Scheme">> => string(),
%%   <<"SecurityGroups">> => list(string()()),
%%   <<"State">> => load_balancer_state(),
%%   <<"Type">> => string(),
%%   <<"VpcId">> => string()
%% }
-type aws_elbv2_load_balancer_details() :: #{binary() => any()}.


%% Example:
%% aws_ssm_patch() :: #{
%%   <<"ComplianceSummary">> => aws_ssm_compliance_summary()
%% }
-type aws_ssm_patch() :: #{binary() => any()}.


%% Example:
%% aws_ec2_route_table_details() :: #{
%%   <<"AssociationSet">> => list(association_set_details()()),
%%   <<"OwnerId">> => string(),
%%   <<"PropagatingVgwSet">> => list(propagating_vgw_set_details()()),
%%   <<"RouteSet">> => list(route_set_details()()),
%%   <<"RouteTableId">> => string(),
%%   <<"VpcId">> => string()
%% }
-type aws_ec2_route_table_details() :: #{binary() => any()}.


%% Example:
%% ip_filter() :: #{
%%   <<"Cidr">> => string()
%% }
-type ip_filter() :: #{binary() => any()}.


%% Example:
%% aws_dms_replication_instance_vpc_security_groups_details() :: #{
%%   <<"VpcSecurityGroupId">> => string()
%% }
-type aws_dms_replication_instance_vpc_security_groups_details() :: #{binary() => any()}.


%% Example:
%% aws_cloud_watch_alarm_details() :: #{
%%   <<"ActionsEnabled">> => boolean(),
%%   <<"AlarmActions">> => list(string()()),
%%   <<"AlarmArn">> => string(),
%%   <<"AlarmConfigurationUpdatedTimestamp">> => string(),
%%   <<"AlarmDescription">> => string(),
%%   <<"AlarmName">> => string(),
%%   <<"ComparisonOperator">> => string(),
%%   <<"DatapointsToAlarm">> => integer(),
%%   <<"Dimensions">> => list(aws_cloud_watch_alarm_dimensions_details()()),
%%   <<"EvaluateLowSampleCountPercentile">> => string(),
%%   <<"EvaluationPeriods">> => integer(),
%%   <<"ExtendedStatistic">> => string(),
%%   <<"InsufficientDataActions">> => list(string()()),
%%   <<"MetricName">> => string(),
%%   <<"Namespace">> => string(),
%%   <<"OkActions">> => list(string()()),
%%   <<"Period">> => integer(),
%%   <<"Statistic">> => string(),
%%   <<"Threshold">> => float(),
%%   <<"ThresholdMetricId">> => string(),
%%   <<"TreatMissingData">> => string(),
%%   <<"Unit">> => string()
%% }
-type aws_cloud_watch_alarm_details() :: #{binary() => any()}.


%% Example:
%% number_filter() :: #{
%%   <<"Eq">> => float(),
%%   <<"Gt">> => float(),
%%   <<"Gte">> => float(),
%%   <<"Lt">> => float(),
%%   <<"Lte">> => float()
%% }
-type number_filter() :: #{binary() => any()}.


%% Example:
%% aws_lambda_function_environment_error() :: #{
%%   <<"ErrorCode">> => string(),
%%   <<"Message">> => string()
%% }
-type aws_lambda_function_environment_error() :: #{binary() => any()}.


%% Example:
%% aws_wafv2_rules_action_captcha_details() :: #{
%%   <<"CustomRequestHandling">> => aws_wafv2_custom_request_handling_details()
%% }
-type aws_wafv2_rules_action_captcha_details() :: #{binary() => any()}.


%% Example:
%% action_local_ip_details() :: #{
%%   <<"IpAddressV4">> => string()
%% }
-type action_local_ip_details() :: #{binary() => any()}.


%% Example:
%% aws_efs_access_point_details() :: #{
%%   <<"AccessPointId">> => string(),
%%   <<"Arn">> => string(),
%%   <<"ClientToken">> => string(),
%%   <<"FileSystemId">> => string(),
%%   <<"PosixUser">> => aws_efs_access_point_posix_user_details(),
%%   <<"RootDirectory">> => aws_efs_access_point_root_directory_details()
%% }
-type aws_efs_access_point_details() :: #{binary() => any()}.


%% Example:
%% aws_rds_db_pending_modified_values() :: #{
%%   <<"AllocatedStorage">> => integer(),
%%   <<"BackupRetentionPeriod">> => integer(),
%%   <<"CaCertificateIdentifier">> => string(),
%%   <<"DbInstanceClass">> => string(),
%%   <<"DbInstanceIdentifier">> => string(),
%%   <<"DbSubnetGroupName">> => string(),
%%   <<"EngineVersion">> => string(),
%%   <<"Iops">> => integer(),
%%   <<"LicenseModel">> => string(),
%%   <<"MasterUserPassword">> => string(),
%%   <<"MultiAZ">> => boolean(),
%%   <<"PendingCloudWatchLogsExports">> => aws_rds_pending_cloud_watch_logs_exports(),
%%   <<"Port">> => integer(),
%%   <<"ProcessorFeatures">> => list(aws_rds_db_processor_feature()()),
%%   <<"StorageType">> => string()
%% }
-type aws_rds_db_pending_modified_values() :: #{binary() => any()}.


%% Example:
%% aws_elastic_beanstalk_environment_tier() :: #{
%%   <<"Name">> => string(),
%%   <<"Type">> => string(),
%%   <<"Version">> => string()
%% }
-type aws_elastic_beanstalk_environment_tier() :: #{binary() => any()}.


%% Example:
%% aws_lambda_function_vpc_config() :: #{
%%   <<"SecurityGroupIds">> => list(string()()),
%%   <<"SubnetIds">> => list(string()()),
%%   <<"VpcId">> => string()
%% }
-type aws_lambda_function_vpc_config() :: #{binary() => any()}.


%% Example:
%% aws_cloud_front_distribution_viewer_certificate() :: #{
%%   <<"AcmCertificateArn">> => string(),
%%   <<"Certificate">> => string(),
%%   <<"CertificateSource">> => string(),
%%   <<"CloudFrontDefaultCertificate">> => boolean(),
%%   <<"IamCertificateId">> => string(),
%%   <<"MinimumProtocolVersion">> => string(),
%%   <<"SslSupportMethod">> => string()
%% }
-type aws_cloud_front_distribution_viewer_certificate() :: #{binary() => any()}.


%% Example:
%% aws_api_gateway_v2_stage_details() :: #{
%%   <<"AccessLogSettings">> => aws_api_gateway_access_log_settings(),
%%   <<"ApiGatewayManaged">> => boolean(),
%%   <<"AutoDeploy">> => boolean(),
%%   <<"ClientCertificateId">> => string(),
%%   <<"CreatedDate">> => string(),
%%   <<"DefaultRouteSettings">> => aws_api_gateway_v2_route_settings(),
%%   <<"DeploymentId">> => string(),
%%   <<"Description">> => string(),
%%   <<"LastDeploymentStatusMessage">> => string(),
%%   <<"LastUpdatedDate">> => string(),
%%   <<"RouteSettings">> => aws_api_gateway_v2_route_settings(),
%%   <<"StageName">> => string(),
%%   <<"StageVariables">> => map()
%% }
-type aws_api_gateway_v2_stage_details() :: #{binary() => any()}.


%% Example:
%% aws_amazon_mq_broker_details() :: #{
%%   <<"AuthenticationStrategy">> => string(),
%%   <<"AutoMinorVersionUpgrade">> => boolean(),
%%   <<"BrokerArn">> => string(),
%%   <<"BrokerId">> => string(),
%%   <<"BrokerName">> => string(),
%%   <<"DeploymentMode">> => string(),
%%   <<"EncryptionOptions">> => aws_amazon_mq_broker_encryption_options_details(),
%%   <<"EngineType">> => string(),
%%   <<"EngineVersion">> => string(),
%%   <<"HostInstanceType">> => string(),
%%   <<"LdapServerMetadata">> => aws_amazon_mq_broker_ldap_server_metadata_details(),
%%   <<"Logs">> => aws_amazon_mq_broker_logs_details(),
%%   <<"MaintenanceWindowStartTime">> => aws_amazon_mq_broker_maintenance_window_start_time_details(),
%%   <<"PubliclyAccessible">> => boolean(),
%%   <<"SecurityGroups">> => list(string()()),
%%   <<"StorageType">> => string(),
%%   <<"SubnetIds">> => list(string()()),
%%   <<"Users">> => list(aws_amazon_mq_broker_users_details()())
%% }
-type aws_amazon_mq_broker_details() :: #{binary() => any()}.


%% Example:
%% update_finding_aggregator_response() :: #{
%%   <<"FindingAggregationRegion">> => string(),
%%   <<"FindingAggregatorArn">> => string(),
%%   <<"RegionLinkingMode">> => string(),
%%   <<"Regions">> => list(string()())
%% }
-type update_finding_aggregator_response() :: #{binary() => any()}.


%% Example:
%% map_filter() :: #{
%%   <<"Comparison">> => list(any()),
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type map_filter() :: #{binary() => any()}.

%% Example:
%% disable_security_hub_request() :: #{}
-type disable_security_hub_request() :: #{}.


%% Example:
%% aws_ecs_service_load_balancers_details() :: #{
%%   <<"ContainerName">> => string(),
%%   <<"ContainerPort">> => integer(),
%%   <<"LoadBalancerName">> => string(),
%%   <<"TargetGroupArn">> => string()
%% }
-type aws_ecs_service_load_balancers_details() :: #{binary() => any()}.


%% Example:
%% unprocessed_configuration_policy_association() :: #{
%%   <<"ConfigurationPolicyAssociationIdentifiers">> => configuration_policy_association(),
%%   <<"ErrorCode">> => string(),
%%   <<"ErrorReason">> => string()
%% }
-type unprocessed_configuration_policy_association() :: #{binary() => any()}.


%% Example:
%% list_invitations_response() :: #{
%%   <<"Invitations">> => list(invitation()()),
%%   <<"NextToken">> => string()
%% }
-type list_invitations_response() :: #{binary() => any()}.


%% Example:
%% aws_ecs_task_definition_container_definitions_firelens_configuration_details() :: #{
%%   <<"Options">> => map(),
%%   <<"Type">> => string()
%% }
-type aws_ecs_task_definition_container_definitions_firelens_configuration_details() :: #{binary() => any()}.


%% Example:
%% resource() :: #{
%%   <<"ApplicationArn">> => string(),
%%   <<"ApplicationName">> => string(),
%%   <<"DataClassification">> => data_classification_details(),
%%   <<"Details">> => resource_details(),
%%   <<"Id">> => string(),
%%   <<"Partition">> => list(any()),
%%   <<"Region">> => string(),
%%   <<"ResourceRole">> => string(),
%%   <<"Tags">> => map(),
%%   <<"Type">> => string()
%% }
-type resource() :: #{binary() => any()}.


%% Example:
%% indicator() :: #{
%%   <<"Key">> => string(),
%%   <<"Title">> => string(),
%%   <<"Type">> => string(),
%%   <<"Values">> => list(string()())
%% }
-type indicator() :: #{binary() => any()}.


%% Example:
%% aws_ec2_client_vpn_endpoint_client_login_banner_options_details() :: #{
%%   <<"BannerText">> => string(),
%%   <<"Enabled">> => boolean()
%% }
-type aws_ec2_client_vpn_endpoint_client_login_banner_options_details() :: #{binary() => any()}.


%% Example:
%% aws_ec2_launch_template_data_block_device_mapping_set_ebs_details() :: #{
%%   <<"DeleteOnTermination">> => boolean(),
%%   <<"Encrypted">> => boolean(),
%%   <<"Iops">> => integer(),
%%   <<"KmsKeyId">> => string(),
%%   <<"SnapshotId">> => string(),
%%   <<"Throughput">> => integer(),
%%   <<"VolumeSize">> => integer(),
%%   <<"VolumeType">> => string()
%% }
-type aws_ec2_launch_template_data_block_device_mapping_set_ebs_details() :: #{binary() => any()}.

-type accept_administrator_invitation_errors() ::
    limit_exceeded_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    invalid_access_exception().

-type accept_invitation_errors() ::
    limit_exceeded_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    invalid_access_exception().

-type batch_delete_automation_rules_errors() ::
    limit_exceeded_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    invalid_access_exception().

-type batch_disable_standards_errors() ::
    limit_exceeded_exception() | 
    access_denied_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    invalid_access_exception().

-type batch_enable_standards_errors() ::
    limit_exceeded_exception() | 
    access_denied_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    invalid_access_exception().

-type batch_get_automation_rules_errors() ::
    limit_exceeded_exception() | 
    access_denied_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    invalid_access_exception().

-type batch_get_configuration_policy_associations_errors() ::
    limit_exceeded_exception() | 
    access_denied_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    invalid_access_exception().

-type batch_get_security_controls_errors() ::
    limit_exceeded_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    invalid_access_exception().

-type batch_get_standards_control_associations_errors() ::
    limit_exceeded_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    invalid_access_exception().

-type batch_import_findings_errors() ::
    limit_exceeded_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    invalid_access_exception().

-type batch_update_automation_rules_errors() ::
    limit_exceeded_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    invalid_access_exception().

-type batch_update_findings_errors() ::
    limit_exceeded_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    invalid_access_exception().

-type batch_update_standards_control_associations_errors() ::
    limit_exceeded_exception() | 
    access_denied_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    invalid_access_exception().

-type create_action_target_errors() ::
    resource_conflict_exception() | 
    limit_exceeded_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    invalid_access_exception().

-type create_automation_rule_errors() ::
    limit_exceeded_exception() | 
    access_denied_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    invalid_access_exception().

-type create_configuration_policy_errors() ::
    resource_conflict_exception() | 
    limit_exceeded_exception() | 
    access_denied_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    invalid_access_exception().

-type create_finding_aggregator_errors() ::
    limit_exceeded_exception() | 
    access_denied_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    invalid_access_exception().

-type create_insight_errors() ::
    resource_conflict_exception() | 
    limit_exceeded_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    invalid_access_exception().

-type create_members_errors() ::
    resource_conflict_exception() | 
    limit_exceeded_exception() | 
    access_denied_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    invalid_access_exception().

-type decline_invitations_errors() ::
    internal_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    invalid_access_exception().

-type delete_action_target_errors() ::
    internal_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    invalid_access_exception().

-type delete_configuration_policy_errors() ::
    resource_conflict_exception() | 
    limit_exceeded_exception() | 
    access_denied_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    invalid_access_exception().

-type delete_finding_aggregator_errors() ::
    limit_exceeded_exception() | 
    access_denied_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    invalid_access_exception().

-type delete_insight_errors() ::
    limit_exceeded_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    invalid_access_exception().

-type delete_invitations_errors() ::
    limit_exceeded_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    invalid_access_exception().

-type delete_members_errors() ::
    limit_exceeded_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    invalid_access_exception().

-type describe_action_targets_errors() ::
    internal_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    invalid_access_exception().

-type describe_hub_errors() ::
    limit_exceeded_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    invalid_access_exception().

-type describe_organization_configuration_errors() ::
    limit_exceeded_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    invalid_access_exception().

-type describe_products_errors() ::
    limit_exceeded_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    invalid_access_exception().

-type describe_standards_errors() ::
    internal_exception() | 
    invalid_input_exception() | 
    invalid_access_exception().

-type describe_standards_controls_errors() ::
    internal_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    invalid_access_exception().

-type disable_import_findings_for_product_errors() ::
    limit_exceeded_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    invalid_access_exception().

-type disable_organization_admin_account_errors() ::
    limit_exceeded_exception() | 
    access_denied_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    invalid_access_exception().

-type disable_security_hub_errors() ::
    limit_exceeded_exception() | 
    access_denied_exception() | 
    internal_exception() | 
    resource_not_found_exception() | 
    invalid_access_exception().

-type disassociate_from_administrator_account_errors() ::
    limit_exceeded_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    invalid_access_exception().

-type disassociate_from_master_account_errors() ::
    limit_exceeded_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    invalid_access_exception().

-type disassociate_members_errors() ::
    limit_exceeded_exception() | 
    access_denied_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    invalid_access_exception().

-type enable_import_findings_for_product_errors() ::
    resource_conflict_exception() | 
    limit_exceeded_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    invalid_access_exception().

-type enable_organization_admin_account_errors() ::
    limit_exceeded_exception() | 
    access_denied_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    invalid_access_exception().

-type enable_security_hub_errors() ::
    resource_conflict_exception() | 
    limit_exceeded_exception() | 
    access_denied_exception() | 
    internal_exception() | 
    invalid_access_exception().

-type get_administrator_account_errors() ::
    limit_exceeded_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    invalid_access_exception().

-type get_configuration_policy_errors() ::
    limit_exceeded_exception() | 
    access_denied_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    invalid_access_exception().

-type get_configuration_policy_association_errors() ::
    limit_exceeded_exception() | 
    access_denied_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    invalid_access_exception().

-type get_enabled_standards_errors() ::
    limit_exceeded_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    invalid_access_exception().

-type get_finding_aggregator_errors() ::
    limit_exceeded_exception() | 
    access_denied_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    invalid_access_exception().

-type get_finding_history_errors() ::
    limit_exceeded_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    invalid_access_exception().

-type get_findings_errors() ::
    limit_exceeded_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    invalid_access_exception().

-type get_insight_results_errors() ::
    limit_exceeded_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    invalid_access_exception().

-type get_insights_errors() ::
    limit_exceeded_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    invalid_access_exception().

-type get_invitations_count_errors() ::
    limit_exceeded_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    invalid_access_exception().

-type get_master_account_errors() ::
    limit_exceeded_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    invalid_access_exception().

-type get_members_errors() ::
    limit_exceeded_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    invalid_access_exception().

-type get_security_control_definition_errors() ::
    limit_exceeded_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    invalid_access_exception().

-type invite_members_errors() ::
    limit_exceeded_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    invalid_access_exception().

-type list_automation_rules_errors() ::
    limit_exceeded_exception() | 
    access_denied_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    invalid_access_exception().

-type list_configuration_policies_errors() ::
    limit_exceeded_exception() | 
    access_denied_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    invalid_access_exception().

-type list_configuration_policy_associations_errors() ::
    limit_exceeded_exception() | 
    access_denied_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    invalid_access_exception().

-type list_enabled_products_for_import_errors() ::
    limit_exceeded_exception() | 
    internal_exception() | 
    invalid_access_exception().

-type list_finding_aggregators_errors() ::
    limit_exceeded_exception() | 
    access_denied_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    invalid_access_exception().

-type list_invitations_errors() ::
    limit_exceeded_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    invalid_access_exception().

-type list_members_errors() ::
    limit_exceeded_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    invalid_access_exception().

-type list_organization_admin_accounts_errors() ::
    limit_exceeded_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    invalid_access_exception().

-type list_security_control_definitions_errors() ::
    limit_exceeded_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    invalid_access_exception().

-type list_standards_control_associations_errors() ::
    limit_exceeded_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    invalid_access_exception().

-type list_tags_for_resource_errors() ::
    internal_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception().

-type start_configuration_policy_association_errors() ::
    limit_exceeded_exception() | 
    access_denied_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    invalid_access_exception().

-type start_configuration_policy_disassociation_errors() ::
    limit_exceeded_exception() | 
    access_denied_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    invalid_access_exception().

-type tag_resource_errors() ::
    internal_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    internal_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception().

-type update_action_target_errors() ::
    internal_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    invalid_access_exception().

-type update_configuration_policy_errors() ::
    resource_conflict_exception() | 
    limit_exceeded_exception() | 
    access_denied_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    invalid_access_exception().

-type update_finding_aggregator_errors() ::
    limit_exceeded_exception() | 
    access_denied_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    invalid_access_exception().

-type update_findings_errors() ::
    limit_exceeded_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    invalid_access_exception().

-type update_insight_errors() ::
    limit_exceeded_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    invalid_access_exception().

-type update_organization_configuration_errors() ::
    resource_conflict_exception() | 
    limit_exceeded_exception() | 
    access_denied_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    invalid_access_exception().

-type update_security_control_errors() ::
    limit_exceeded_exception() | 
    access_denied_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    invalid_access_exception() | 
    resource_in_use_exception().

-type update_security_hub_configuration_errors() ::
    limit_exceeded_exception() | 
    access_denied_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    invalid_access_exception().

-type update_standards_control_errors() ::
    access_denied_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    resource_not_found_exception() | 
    invalid_access_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc
%% We recommend using Organizations instead of Security Hub invitations to
%% manage your member accounts.
%%
%% For information, see Managing Security Hub administrator and member
%% accounts with Organizations:
%% https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-accounts-orgs.html
%% in the Security Hub User Guide.
%%
%% Accepts the invitation to be a member account and be monitored by the
%% Security Hub administrator
%% account that the invitation was sent from.
%%
%% This operation is only used by member accounts that are not added through
%% Organizations.
%%
%% When the member account accepts the invitation, permission is granted to
%% the administrator
%% account to view findings generated in the member account.
-spec accept_administrator_invitation(aws_client:aws_client(), accept_administrator_invitation_request()) ->
    {ok, accept_administrator_invitation_response(), tuple()} |
    {error, any()} |
    {error, accept_administrator_invitation_errors(), tuple()}.
accept_administrator_invitation(Client, Input) ->
    accept_administrator_invitation(Client, Input, []).

-spec accept_administrator_invitation(aws_client:aws_client(), accept_administrator_invitation_request(), proplists:proplist()) ->
    {ok, accept_administrator_invitation_response(), tuple()} |
    {error, any()} |
    {error, accept_administrator_invitation_errors(), tuple()}.
accept_administrator_invitation(Client, Input0, Options0) ->
    Method = post,
    Path = ["/administrator"],
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

%% @doc This method is deprecated.
%%
%% Instead, use `AcceptAdministratorInvitation'.
%%
%% The Security Hub console continues to use `AcceptInvitation'. It will
%% eventually change to use `AcceptAdministratorInvitation'. Any IAM
%% policies that specifically control access to this function must continue
%% to use `AcceptInvitation'. You should also add
%% `AcceptAdministratorInvitation' to your policies to ensure that the
%% correct permissions are in place after the console begins to use
%% `AcceptAdministratorInvitation'.
%%
%% Accepts the invitation to be a member account and be monitored by the
%% Security Hub administrator
%% account that the invitation was sent from.
%%
%% This operation is only used by member accounts that are not added through
%% Organizations.
%%
%% When the member account accepts the invitation, permission is granted to
%% the administrator
%% account to view findings generated in the member account.
-spec accept_invitation(aws_client:aws_client(), accept_invitation_request()) ->
    {ok, accept_invitation_response(), tuple()} |
    {error, any()} |
    {error, accept_invitation_errors(), tuple()}.
accept_invitation(Client, Input) ->
    accept_invitation(Client, Input, []).

-spec accept_invitation(aws_client:aws_client(), accept_invitation_request(), proplists:proplist()) ->
    {ok, accept_invitation_response(), tuple()} |
    {error, any()} |
    {error, accept_invitation_errors(), tuple()}.
accept_invitation(Client, Input0, Options0) ->
    Method = post,
    Path = ["/master"],
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
%% Deletes one or more automation rules.
-spec batch_delete_automation_rules(aws_client:aws_client(), batch_delete_automation_rules_request()) ->
    {ok, batch_delete_automation_rules_response(), tuple()} |
    {error, any()} |
    {error, batch_delete_automation_rules_errors(), tuple()}.
batch_delete_automation_rules(Client, Input) ->
    batch_delete_automation_rules(Client, Input, []).

-spec batch_delete_automation_rules(aws_client:aws_client(), batch_delete_automation_rules_request(), proplists:proplist()) ->
    {ok, batch_delete_automation_rules_response(), tuple()} |
    {error, any()} |
    {error, batch_delete_automation_rules_errors(), tuple()}.
batch_delete_automation_rules(Client, Input0, Options0) ->
    Method = post,
    Path = ["/automationrules/delete"],
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

%% @doc Disables the standards specified by the provided
%% `StandardsSubscriptionArns'.
%%
%% For more information, see Security Standards:
%% https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-standards.html
%% section of the Security Hub User
%% Guide.
-spec batch_disable_standards(aws_client:aws_client(), batch_disable_standards_request()) ->
    {ok, batch_disable_standards_response(), tuple()} |
    {error, any()} |
    {error, batch_disable_standards_errors(), tuple()}.
batch_disable_standards(Client, Input) ->
    batch_disable_standards(Client, Input, []).

-spec batch_disable_standards(aws_client:aws_client(), batch_disable_standards_request(), proplists:proplist()) ->
    {ok, batch_disable_standards_response(), tuple()} |
    {error, any()} |
    {error, batch_disable_standards_errors(), tuple()}.
batch_disable_standards(Client, Input0, Options0) ->
    Method = post,
    Path = ["/standards/deregister"],
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

%% @doc Enables the standards specified by the provided `StandardsArn'.
%%
%% To obtain the
%% ARN for a standard, use the `DescribeStandards'
%% operation.
%%
%% For more information, see the Security Standards:
%% https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-standards.html
%% section of the Security Hub User Guide.
-spec batch_enable_standards(aws_client:aws_client(), batch_enable_standards_request()) ->
    {ok, batch_enable_standards_response(), tuple()} |
    {error, any()} |
    {error, batch_enable_standards_errors(), tuple()}.
batch_enable_standards(Client, Input) ->
    batch_enable_standards(Client, Input, []).

-spec batch_enable_standards(aws_client:aws_client(), batch_enable_standards_request(), proplists:proplist()) ->
    {ok, batch_enable_standards_response(), tuple()} |
    {error, any()} |
    {error, batch_enable_standards_errors(), tuple()}.
batch_enable_standards(Client, Input0, Options0) ->
    Method = post,
    Path = ["/standards/register"],
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
%% Retrieves a list of details for automation rules based on rule Amazon
%% Resource Names
%% (ARNs).
-spec batch_get_automation_rules(aws_client:aws_client(), batch_get_automation_rules_request()) ->
    {ok, batch_get_automation_rules_response(), tuple()} |
    {error, any()} |
    {error, batch_get_automation_rules_errors(), tuple()}.
batch_get_automation_rules(Client, Input) ->
    batch_get_automation_rules(Client, Input, []).

-spec batch_get_automation_rules(aws_client:aws_client(), batch_get_automation_rules_request(), proplists:proplist()) ->
    {ok, batch_get_automation_rules_response(), tuple()} |
    {error, any()} |
    {error, batch_get_automation_rules_errors(), tuple()}.
batch_get_automation_rules(Client, Input0, Options0) ->
    Method = post,
    Path = ["/automationrules/get"],
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
%% Returns associations between an Security Hub configuration and a batch of
%% target accounts, organizational units, or the root.
%%
%% Only the Security Hub delegated administrator can invoke this operation
%% from the home Region. A configuration
%% can refer to a configuration policy or to a self-managed configuration.
-spec batch_get_configuration_policy_associations(aws_client:aws_client(), batch_get_configuration_policy_associations_request()) ->
    {ok, batch_get_configuration_policy_associations_response(), tuple()} |
    {error, any()} |
    {error, batch_get_configuration_policy_associations_errors(), tuple()}.
batch_get_configuration_policy_associations(Client, Input) ->
    batch_get_configuration_policy_associations(Client, Input, []).

-spec batch_get_configuration_policy_associations(aws_client:aws_client(), batch_get_configuration_policy_associations_request(), proplists:proplist()) ->
    {ok, batch_get_configuration_policy_associations_response(), tuple()} |
    {error, any()} |
    {error, batch_get_configuration_policy_associations_errors(), tuple()}.
batch_get_configuration_policy_associations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/configurationPolicyAssociation/batchget"],
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
%% Provides details about a batch of security controls for the current Amazon
%% Web Services account and Amazon Web Services Region.
-spec batch_get_security_controls(aws_client:aws_client(), batch_get_security_controls_request()) ->
    {ok, batch_get_security_controls_response(), tuple()} |
    {error, any()} |
    {error, batch_get_security_controls_errors(), tuple()}.
batch_get_security_controls(Client, Input) ->
    batch_get_security_controls(Client, Input, []).

-spec batch_get_security_controls(aws_client:aws_client(), batch_get_security_controls_request(), proplists:proplist()) ->
    {ok, batch_get_security_controls_response(), tuple()} |
    {error, any()} |
    {error, batch_get_security_controls_errors(), tuple()}.
batch_get_security_controls(Client, Input0, Options0) ->
    Method = post,
    Path = ["/securityControls/batchGet"],
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
%% For a batch of security controls and standards, identifies whether each
%% control is currently enabled or disabled in a standard.
%%
%% Calls to this operation return a `RESOURCE_NOT_FOUND_EXCEPTION' error
%% when the standard subscription for the association has a
%% `NOT_READY_FOR_UPDATES' value for `StandardsControlsUpdatable'.
-spec batch_get_standards_control_associations(aws_client:aws_client(), batch_get_standards_control_associations_request()) ->
    {ok, batch_get_standards_control_associations_response(), tuple()} |
    {error, any()} |
    {error, batch_get_standards_control_associations_errors(), tuple()}.
batch_get_standards_control_associations(Client, Input) ->
    batch_get_standards_control_associations(Client, Input, []).

-spec batch_get_standards_control_associations(aws_client:aws_client(), batch_get_standards_control_associations_request(), proplists:proplist()) ->
    {ok, batch_get_standards_control_associations_response(), tuple()} |
    {error, any()} |
    {error, batch_get_standards_control_associations_errors(), tuple()}.
batch_get_standards_control_associations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/associations/batchGet"],
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

%% @doc Imports security findings generated by a finding provider into
%% Security Hub.
%%
%% This action is requested by the finding provider to import its findings
%% into
%% Security Hub.
%%
%% `BatchImportFindings' must be called by one of the following:
%%
%% The Amazon Web Services account that is associated with a finding if you
%% are using
%% the default product ARN:
%% https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-custom-providers.html#securityhub-custom-providers-bfi-reqs
%% or are a partner sending findings from within a customer's Amazon Web
%% Services account.
%% In these cases, the identifier of the account that you are calling
%% `BatchImportFindings'
%% from needs to be the same as the `AwsAccountId' attribute for the
%% finding.
%%
%% An Amazon Web Services account that Security Hub has allow-listed for an
%% official partner
%% integration. In this case, you can call `BatchImportFindings' from the
%% allow-listed
%% account and send findings from different customer accounts in the same
%% batch.
%%
%% The maximum allowed size for a finding is 240 Kb. An error is returned for
%% any finding
%% larger than 240 Kb.
%%
%% After a finding is created, `BatchImportFindings' cannot be used to
%% update
%% the following finding fields and objects, which Security Hub customers use
%% to manage their
%% investigation workflow.
%%
%% `Note'
%%
%% `UserDefinedFields'
%%
%% `VerificationState'
%%
%% `Workflow'
%%
%% Finding providers also should not use `BatchImportFindings' to update
%% the following attributes.
%%
%% `Confidence'
%%
%% `Criticality'
%%
%% `RelatedFindings'
%%
%% `Severity'
%%
%% `Types'
%%
%% Instead, finding providers use `FindingProviderFields' to provide
%% values for these attributes.
-spec batch_import_findings(aws_client:aws_client(), batch_import_findings_request()) ->
    {ok, batch_import_findings_response(), tuple()} |
    {error, any()} |
    {error, batch_import_findings_errors(), tuple()}.
batch_import_findings(Client, Input) ->
    batch_import_findings(Client, Input, []).

-spec batch_import_findings(aws_client:aws_client(), batch_import_findings_request(), proplists:proplist()) ->
    {ok, batch_import_findings_response(), tuple()} |
    {error, any()} |
    {error, batch_import_findings_errors(), tuple()}.
batch_import_findings(Client, Input0, Options0) ->
    Method = post,
    Path = ["/findings/import"],
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
%% Updates one or more automation rules based on rule Amazon Resource Names
%% (ARNs)
%% and input parameters.
-spec batch_update_automation_rules(aws_client:aws_client(), batch_update_automation_rules_request()) ->
    {ok, batch_update_automation_rules_response(), tuple()} |
    {error, any()} |
    {error, batch_update_automation_rules_errors(), tuple()}.
batch_update_automation_rules(Client, Input) ->
    batch_update_automation_rules(Client, Input, []).

-spec batch_update_automation_rules(aws_client:aws_client(), batch_update_automation_rules_request(), proplists:proplist()) ->
    {ok, batch_update_automation_rules_response(), tuple()} |
    {error, any()} |
    {error, batch_update_automation_rules_errors(), tuple()}.
batch_update_automation_rules(Client, Input0, Options0) ->
    Method = patch,
    Path = ["/automationrules/update"],
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

%% @doc Used by Security Hub customers to update information about their
%% investigation into a finding.
%%
%% Requested by administrator accounts or member accounts. Administrator
%% accounts can update findings for
%% their account and their member accounts. Member accounts can update
%% findings for their
%% account.
%%
%% Updates from `BatchUpdateFindings' don't affect the value of
%% `UpdatedAt' for a finding.
%%
%% Administrator and member accounts can use `BatchUpdateFindings' to
%% update the
%% following finding fields and objects.
%%
%% `Confidence'
%%
%% `Criticality'
%%
%% `Note'
%%
%% `RelatedFindings'
%%
%% `Severity'
%%
%% `Types'
%%
%% `UserDefinedFields'
%%
%% `VerificationState'
%%
%% `Workflow'
%%
%% You can configure IAM policies to restrict access to fields and field
%% values. For
%% example, you might not want member accounts to be able to suppress
%% findings or change the
%% finding severity. See Configuring access to BatchUpdateFindings:
%% https://docs.aws.amazon.com/securityhub/latest/userguide/finding-update-batchupdatefindings.html#batchupdatefindings-configure-access
%% in the
%% Security Hub User Guide.
-spec batch_update_findings(aws_client:aws_client(), batch_update_findings_request()) ->
    {ok, batch_update_findings_response(), tuple()} |
    {error, any()} |
    {error, batch_update_findings_errors(), tuple()}.
batch_update_findings(Client, Input) ->
    batch_update_findings(Client, Input, []).

-spec batch_update_findings(aws_client:aws_client(), batch_update_findings_request(), proplists:proplist()) ->
    {ok, batch_update_findings_response(), tuple()} |
    {error, any()} |
    {error, batch_update_findings_errors(), tuple()}.
batch_update_findings(Client, Input0, Options0) ->
    Method = patch,
    Path = ["/findings/batchupdate"],
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
%% For a batch of security controls and standards, this operation updates the
%% enablement status of a control in a standard.
-spec batch_update_standards_control_associations(aws_client:aws_client(), batch_update_standards_control_associations_request()) ->
    {ok, batch_update_standards_control_associations_response(), tuple()} |
    {error, any()} |
    {error, batch_update_standards_control_associations_errors(), tuple()}.
batch_update_standards_control_associations(Client, Input) ->
    batch_update_standards_control_associations(Client, Input, []).

-spec batch_update_standards_control_associations(aws_client:aws_client(), batch_update_standards_control_associations_request(), proplists:proplist()) ->
    {ok, batch_update_standards_control_associations_response(), tuple()} |
    {error, any()} |
    {error, batch_update_standards_control_associations_errors(), tuple()}.
batch_update_standards_control_associations(Client, Input0, Options0) ->
    Method = patch,
    Path = ["/associations"],
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

%% @doc Creates a custom action target in Security Hub.
%%
%% You can use custom actions on findings and insights in Security Hub to
%% trigger target actions
%% in Amazon CloudWatch Events.
-spec create_action_target(aws_client:aws_client(), create_action_target_request()) ->
    {ok, create_action_target_response(), tuple()} |
    {error, any()} |
    {error, create_action_target_errors(), tuple()}.
create_action_target(Client, Input) ->
    create_action_target(Client, Input, []).

-spec create_action_target(aws_client:aws_client(), create_action_target_request(), proplists:proplist()) ->
    {ok, create_action_target_response(), tuple()} |
    {error, any()} |
    {error, create_action_target_errors(), tuple()}.
create_action_target(Client, Input0, Options0) ->
    Method = post,
    Path = ["/actionTargets"],
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
%% Creates an automation rule based on input parameters.
-spec create_automation_rule(aws_client:aws_client(), create_automation_rule_request()) ->
    {ok, create_automation_rule_response(), tuple()} |
    {error, any()} |
    {error, create_automation_rule_errors(), tuple()}.
create_automation_rule(Client, Input) ->
    create_automation_rule(Client, Input, []).

-spec create_automation_rule(aws_client:aws_client(), create_automation_rule_request(), proplists:proplist()) ->
    {ok, create_automation_rule_response(), tuple()} |
    {error, any()} |
    {error, create_automation_rule_errors(), tuple()}.
create_automation_rule(Client, Input0, Options0) ->
    Method = post,
    Path = ["/automationrules/create"],
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
%% Creates a configuration policy with the defined configuration.
%%
%% Only the Security Hub delegated administrator
%% can invoke this operation from the home Region.
-spec create_configuration_policy(aws_client:aws_client(), create_configuration_policy_request()) ->
    {ok, create_configuration_policy_response(), tuple()} |
    {error, any()} |
    {error, create_configuration_policy_errors(), tuple()}.
create_configuration_policy(Client, Input) ->
    create_configuration_policy(Client, Input, []).

-spec create_configuration_policy(aws_client:aws_client(), create_configuration_policy_request(), proplists:proplist()) ->
    {ok, create_configuration_policy_response(), tuple()} |
    {error, any()} |
    {error, create_configuration_policy_errors(), tuple()}.
create_configuration_policy(Client, Input0, Options0) ->
    Method = post,
    Path = ["/configurationPolicy/create"],
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
%% The aggregation Region is now called the home Region.
%%
%% Used to enable cross-Region aggregation. This operation can be invoked
%% from the home Region only.
%%
%% For information about how cross-Region aggregation works, see
%% Understanding cross-Region aggregation in Security Hub:
%% https://docs.aws.amazon.com/securityhub/latest/userguide/finding-aggregation.html
%% in the Security Hub User Guide.
-spec create_finding_aggregator(aws_client:aws_client(), create_finding_aggregator_request()) ->
    {ok, create_finding_aggregator_response(), tuple()} |
    {error, any()} |
    {error, create_finding_aggregator_errors(), tuple()}.
create_finding_aggregator(Client, Input) ->
    create_finding_aggregator(Client, Input, []).

-spec create_finding_aggregator(aws_client:aws_client(), create_finding_aggregator_request(), proplists:proplist()) ->
    {ok, create_finding_aggregator_response(), tuple()} |
    {error, any()} |
    {error, create_finding_aggregator_errors(), tuple()}.
create_finding_aggregator(Client, Input0, Options0) ->
    Method = post,
    Path = ["/findingAggregator/create"],
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

%% @doc Creates a custom insight in Security Hub.
%%
%% An insight is a consolidation of findings that relate
%% to a security issue that requires attention or remediation.
%%
%% To group the related findings in the insight, use the
%% `GroupByAttribute'.
-spec create_insight(aws_client:aws_client(), create_insight_request()) ->
    {ok, create_insight_response(), tuple()} |
    {error, any()} |
    {error, create_insight_errors(), tuple()}.
create_insight(Client, Input) ->
    create_insight(Client, Input, []).

-spec create_insight(aws_client:aws_client(), create_insight_request(), proplists:proplist()) ->
    {ok, create_insight_response(), tuple()} |
    {error, any()} |
    {error, create_insight_errors(), tuple()}.
create_insight(Client, Input0, Options0) ->
    Method = post,
    Path = ["/insights"],
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

%% @doc Creates a member association in Security Hub between the specified
%% accounts and the account
%% used to make the request, which is the administrator account.
%%
%% If you are integrated with
%% Organizations, then the administrator account is designated by the
%% organization management account.
%%
%% `CreateMembers' is always used to add accounts that are not
%% organization
%% members.
%%
%% For accounts that are managed using Organizations, `CreateMembers' is
%% only used
%% in the following cases:
%%
%% Security Hub is not configured to automatically add new organization
%% accounts.
%%
%% The account was disassociated or deleted in Security Hub.
%%
%% This action can only be used by an account that has Security Hub enabled.
%% To enable Security Hub, you
%% can use the `EnableSecurityHub' operation.
%%
%% For accounts that are not organization members, you create the account
%% association and
%% then send an invitation to the member account. To send the invitation, you
%% use the
%% `InviteMembers' operation. If the account owner accepts
%% the invitation, the account becomes a member account in Security Hub.
%%
%% Accounts that are managed using Organizations don't receive an
%% invitation. They
%% automatically become a member account in Security Hub.
%%
%% If the organization account does not have Security Hub enabled, then
%% Security Hub and the default standards are automatically enabled. Note
%% that Security Hub cannot be enabled automatically for the organization
%% management account. The organization management account must enable
%% Security Hub before the administrator account enables it as a member
%% account.
%%
%% For organization accounts that already have Security Hub enabled, Security
%% Hub does not make any other changes to those accounts. It does not change
%% their enabled standards or controls.
%%
%% A permissions policy is added that permits the administrator account to
%% view the findings
%% generated in the member account.
%%
%% To remove the association between the administrator and member accounts,
%% use the `DisassociateFromMasterAccount' or `DisassociateMembers'
%% operation.
-spec create_members(aws_client:aws_client(), create_members_request()) ->
    {ok, create_members_response(), tuple()} |
    {error, any()} |
    {error, create_members_errors(), tuple()}.
create_members(Client, Input) ->
    create_members(Client, Input, []).

-spec create_members(aws_client:aws_client(), create_members_request(), proplists:proplist()) ->
    {ok, create_members_response(), tuple()} |
    {error, any()} |
    {error, create_members_errors(), tuple()}.
create_members(Client, Input0, Options0) ->
    Method = post,
    Path = ["/members"],
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
%% We recommend using Organizations instead of Security Hub invitations to
%% manage your member accounts.
%%
%% For information, see Managing Security Hub administrator and member
%% accounts with Organizations:
%% https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-accounts-orgs.html
%% in the Security Hub User Guide.
%%
%% Declines invitations to become a Security Hub member account.
%%
%% A prospective member account uses this operation to decline an invitation
%% to become a member.
%%
%% Only member accounts that aren't part of an Amazon Web Services
%% organization should use this operation.
%% Organization accounts don't receive invitations.
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
    Path = ["/invitations/decline"],
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

%% @doc Deletes a custom action target from Security Hub.
%%
%% Deleting a custom action target does not affect any findings or insights
%% that were
%% already sent to Amazon CloudWatch Events using the custom action.
-spec delete_action_target(aws_client:aws_client(), binary() | list(), delete_action_target_request()) ->
    {ok, delete_action_target_response(), tuple()} |
    {error, any()} |
    {error, delete_action_target_errors(), tuple()}.
delete_action_target(Client, ActionTargetArn, Input) ->
    delete_action_target(Client, ActionTargetArn, Input, []).

-spec delete_action_target(aws_client:aws_client(), binary() | list(), delete_action_target_request(), proplists:proplist()) ->
    {ok, delete_action_target_response(), tuple()} |
    {error, any()} |
    {error, delete_action_target_errors(), tuple()}.
delete_action_target(Client, ActionTargetArn, Input0, Options0) ->
    Method = delete,
    Path = ["/actionTargets/", aws_util:encode_multi_segment_uri(ActionTargetArn), ""],
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
%% Deletes a configuration policy.
%%
%% Only the Security Hub delegated administrator can invoke this operation
%% from the home Region. For the deletion to succeed, you must first
%% disassociate a configuration policy from target accounts,
%% organizational units, or the root by invoking the
%% `StartConfigurationPolicyDisassociation' operation.
-spec delete_configuration_policy(aws_client:aws_client(), binary() | list(), delete_configuration_policy_request()) ->
    {ok, delete_configuration_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_configuration_policy_errors(), tuple()}.
delete_configuration_policy(Client, Identifier, Input) ->
    delete_configuration_policy(Client, Identifier, Input, []).

-spec delete_configuration_policy(aws_client:aws_client(), binary() | list(), delete_configuration_policy_request(), proplists:proplist()) ->
    {ok, delete_configuration_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_configuration_policy_errors(), tuple()}.
delete_configuration_policy(Client, Identifier, Input0, Options0) ->
    Method = delete,
    Path = ["/configurationPolicy/", aws_util:encode_uri(Identifier), ""],
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
%% The aggregation Region is now called the home Region.
%%
%% Deletes a finding aggregator. When you delete the finding aggregator, you
%% stop cross-Region aggregation. Finding replication stops
%% occurring from the linked Regions to the home Region.
%%
%% When you stop cross-Region aggregation, findings that were already
%% replicated and sent to the home Region are still visible from
%% the home Region. However, new findings and finding updates are no longer
%% replicated and sent to the home Region.
-spec delete_finding_aggregator(aws_client:aws_client(), binary() | list(), delete_finding_aggregator_request()) ->
    {ok, delete_finding_aggregator_response(), tuple()} |
    {error, any()} |
    {error, delete_finding_aggregator_errors(), tuple()}.
delete_finding_aggregator(Client, FindingAggregatorArn, Input) ->
    delete_finding_aggregator(Client, FindingAggregatorArn, Input, []).

-spec delete_finding_aggregator(aws_client:aws_client(), binary() | list(), delete_finding_aggregator_request(), proplists:proplist()) ->
    {ok, delete_finding_aggregator_response(), tuple()} |
    {error, any()} |
    {error, delete_finding_aggregator_errors(), tuple()}.
delete_finding_aggregator(Client, FindingAggregatorArn, Input0, Options0) ->
    Method = delete,
    Path = ["/findingAggregator/delete/", aws_util:encode_multi_segment_uri(FindingAggregatorArn), ""],
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

%% @doc Deletes the insight specified by the `InsightArn'.
-spec delete_insight(aws_client:aws_client(), binary() | list(), delete_insight_request()) ->
    {ok, delete_insight_response(), tuple()} |
    {error, any()} |
    {error, delete_insight_errors(), tuple()}.
delete_insight(Client, InsightArn, Input) ->
    delete_insight(Client, InsightArn, Input, []).

-spec delete_insight(aws_client:aws_client(), binary() | list(), delete_insight_request(), proplists:proplist()) ->
    {ok, delete_insight_response(), tuple()} |
    {error, any()} |
    {error, delete_insight_errors(), tuple()}.
delete_insight(Client, InsightArn, Input0, Options0) ->
    Method = delete,
    Path = ["/insights/", aws_util:encode_multi_segment_uri(InsightArn), ""],
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
%% We recommend using Organizations instead of Security Hub invitations to
%% manage your member accounts.
%%
%% For information, see Managing Security Hub administrator and member
%% accounts with Organizations:
%% https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-accounts-orgs.html
%% in the Security Hub User Guide.
%%
%% Deletes invitations to become a Security Hub member account.
%%
%% A Security Hub administrator account can use this operation to delete
%% invitations sent to one or more prospective member accounts.
%%
%% This operation is only used to delete invitations that are sent to
%% prospective member accounts that aren't part of an Amazon Web Services
%% organization.
%% Organization accounts don't receive invitations.
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
    Path = ["/invitations/delete"],
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

%% @doc Deletes the specified member accounts from Security Hub.
%%
%% You can invoke this API only to delete accounts that became members
%% through invitation. You can't invoke this
%% API to delete accounts that belong to an Organizations organization.
-spec delete_members(aws_client:aws_client(), delete_members_request()) ->
    {ok, delete_members_response(), tuple()} |
    {error, any()} |
    {error, delete_members_errors(), tuple()}.
delete_members(Client, Input) ->
    delete_members(Client, Input, []).

-spec delete_members(aws_client:aws_client(), delete_members_request(), proplists:proplist()) ->
    {ok, delete_members_response(), tuple()} |
    {error, any()} |
    {error, delete_members_errors(), tuple()}.
delete_members(Client, Input0, Options0) ->
    Method = post,
    Path = ["/members/delete"],
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

%% @doc Returns a list of the custom action targets in Security Hub in your
%% account.
-spec describe_action_targets(aws_client:aws_client(), describe_action_targets_request()) ->
    {ok, describe_action_targets_response(), tuple()} |
    {error, any()} |
    {error, describe_action_targets_errors(), tuple()}.
describe_action_targets(Client, Input) ->
    describe_action_targets(Client, Input, []).

-spec describe_action_targets(aws_client:aws_client(), describe_action_targets_request(), proplists:proplist()) ->
    {ok, describe_action_targets_response(), tuple()} |
    {error, any()} |
    {error, describe_action_targets_errors(), tuple()}.
describe_action_targets(Client, Input0, Options0) ->
    Method = post,
    Path = ["/actionTargets/get"],
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

%% @doc Returns details about the Hub resource in your account, including the
%% `HubArn' and the time when you enabled Security Hub.
-spec describe_hub(aws_client:aws_client()) ->
    {ok, describe_hub_response(), tuple()} |
    {error, any()} |
    {error, describe_hub_errors(), tuple()}.
describe_hub(Client)
  when is_map(Client) ->
    describe_hub(Client, #{}, #{}).

-spec describe_hub(aws_client:aws_client(), map(), map()) ->
    {ok, describe_hub_response(), tuple()} |
    {error, any()} |
    {error, describe_hub_errors(), tuple()}.
describe_hub(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_hub(Client, QueryMap, HeadersMap, []).

-spec describe_hub(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, describe_hub_response(), tuple()} |
    {error, any()} |
    {error, describe_hub_errors(), tuple()}.
describe_hub(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"HubArn">>, maps:get(<<"HubArn">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about the way your organization is configured in
%% Security Hub.
%%
%% Only the
%% Security Hub administrator account can invoke this operation.
-spec describe_organization_configuration(aws_client:aws_client()) ->
    {ok, describe_organization_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_organization_configuration_errors(), tuple()}.
describe_organization_configuration(Client)
  when is_map(Client) ->
    describe_organization_configuration(Client, #{}, #{}).

-spec describe_organization_configuration(aws_client:aws_client(), map(), map()) ->
    {ok, describe_organization_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_organization_configuration_errors(), tuple()}.
describe_organization_configuration(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_organization_configuration(Client, QueryMap, HeadersMap, []).

-spec describe_organization_configuration(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, describe_organization_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_organization_configuration_errors(), tuple()}.
describe_organization_configuration(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/organization/configuration"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about product integrations in Security Hub.
%%
%% You can optionally provide an integration ARN. If you provide an
%% integration ARN, then
%% the results only include that integration.
%%
%% If you don't provide an integration ARN, then the results include all
%% of the available
%% product integrations.
-spec describe_products(aws_client:aws_client()) ->
    {ok, describe_products_response(), tuple()} |
    {error, any()} |
    {error, describe_products_errors(), tuple()}.
describe_products(Client)
  when is_map(Client) ->
    describe_products(Client, #{}, #{}).

-spec describe_products(aws_client:aws_client(), map(), map()) ->
    {ok, describe_products_response(), tuple()} |
    {error, any()} |
    {error, describe_products_errors(), tuple()}.
describe_products(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_products(Client, QueryMap, HeadersMap, []).

-spec describe_products(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, describe_products_response(), tuple()} |
    {error, any()} |
    {error, describe_products_errors(), tuple()}.
describe_products(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/products"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)},
        {<<"ProductArn">>, maps:get(<<"ProductArn">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of the available standards in Security Hub.
%%
%% For each standard, the results include the standard ARN, the name, and a
%% description.
-spec describe_standards(aws_client:aws_client()) ->
    {ok, describe_standards_response(), tuple()} |
    {error, any()} |
    {error, describe_standards_errors(), tuple()}.
describe_standards(Client)
  when is_map(Client) ->
    describe_standards(Client, #{}, #{}).

-spec describe_standards(aws_client:aws_client(), map(), map()) ->
    {ok, describe_standards_response(), tuple()} |
    {error, any()} |
    {error, describe_standards_errors(), tuple()}.
describe_standards(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_standards(Client, QueryMap, HeadersMap, []).

-spec describe_standards(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, describe_standards_response(), tuple()} |
    {error, any()} |
    {error, describe_standards_errors(), tuple()}.
describe_standards(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/standards"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of security standards controls.
%%
%% For each control, the results include information about whether it is
%% currently enabled,
%% the severity, and a link to remediation information.
%%
%% This operation returns an empty list for standard subscriptions where
%% `StandardsControlsUpdatable' has value `NOT_READY_FOR_UPDATES'.
-spec describe_standards_controls(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_standards_controls_response(), tuple()} |
    {error, any()} |
    {error, describe_standards_controls_errors(), tuple()}.
describe_standards_controls(Client, StandardsSubscriptionArn)
  when is_map(Client) ->
    describe_standards_controls(Client, StandardsSubscriptionArn, #{}, #{}).

-spec describe_standards_controls(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_standards_controls_response(), tuple()} |
    {error, any()} |
    {error, describe_standards_controls_errors(), tuple()}.
describe_standards_controls(Client, StandardsSubscriptionArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_standards_controls(Client, StandardsSubscriptionArn, QueryMap, HeadersMap, []).

-spec describe_standards_controls(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_standards_controls_response(), tuple()} |
    {error, any()} |
    {error, describe_standards_controls_errors(), tuple()}.
describe_standards_controls(Client, StandardsSubscriptionArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/standards/controls/", aws_util:encode_multi_segment_uri(StandardsSubscriptionArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Disables the integration of the specified product with Security Hub.
%%
%% After the integration is
%% disabled, findings from that product are no longer sent to Security Hub.
-spec disable_import_findings_for_product(aws_client:aws_client(), binary() | list(), disable_import_findings_for_product_request()) ->
    {ok, disable_import_findings_for_product_response(), tuple()} |
    {error, any()} |
    {error, disable_import_findings_for_product_errors(), tuple()}.
disable_import_findings_for_product(Client, ProductSubscriptionArn, Input) ->
    disable_import_findings_for_product(Client, ProductSubscriptionArn, Input, []).

-spec disable_import_findings_for_product(aws_client:aws_client(), binary() | list(), disable_import_findings_for_product_request(), proplists:proplist()) ->
    {ok, disable_import_findings_for_product_response(), tuple()} |
    {error, any()} |
    {error, disable_import_findings_for_product_errors(), tuple()}.
disable_import_findings_for_product(Client, ProductSubscriptionArn, Input0, Options0) ->
    Method = delete,
    Path = ["/productSubscriptions/", aws_util:encode_multi_segment_uri(ProductSubscriptionArn), ""],
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

%% @doc Disables a Security Hub administrator account.
%%
%% Can only be called by the organization
%% management account.
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
    Path = ["/organization/admin/disable"],
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

%% @doc Disables Security Hub in your account only in the current Amazon Web
%% Services Region.
%%
%% To disable Security Hub in all
%% Regions, you must submit one request per Region where you have enabled
%% Security Hub.
%%
%% You can't disable Security Hub in an account that is currently the
%% Security Hub administrator.
%%
%% When you disable Security Hub, your existing findings and insights and any
%% Security Hub configuration
%% settings are deleted after 90 days and cannot be recovered. Any standards
%% that were enabled
%% are disabled, and your administrator and member account associations are
%% removed.
%%
%% If you want to save your existing findings, you must export them before
%% you disable
%% Security Hub.
-spec disable_security_hub(aws_client:aws_client(), disable_security_hub_request()) ->
    {ok, disable_security_hub_response(), tuple()} |
    {error, any()} |
    {error, disable_security_hub_errors(), tuple()}.
disable_security_hub(Client, Input) ->
    disable_security_hub(Client, Input, []).

-spec disable_security_hub(aws_client:aws_client(), disable_security_hub_request(), proplists:proplist()) ->
    {ok, disable_security_hub_response(), tuple()} |
    {error, any()} |
    {error, disable_security_hub_errors(), tuple()}.
disable_security_hub(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts"],
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

%% @doc Disassociates the current Security Hub member account from the
%% associated administrator
%% account.
%%
%% This operation is only used by accounts that are not part of an
%% organization. For
%% organization accounts, only the administrator account can
%% disassociate a member account.
-spec disassociate_from_administrator_account(aws_client:aws_client(), disassociate_from_administrator_account_request()) ->
    {ok, disassociate_from_administrator_account_response(), tuple()} |
    {error, any()} |
    {error, disassociate_from_administrator_account_errors(), tuple()}.
disassociate_from_administrator_account(Client, Input) ->
    disassociate_from_administrator_account(Client, Input, []).

-spec disassociate_from_administrator_account(aws_client:aws_client(), disassociate_from_administrator_account_request(), proplists:proplist()) ->
    {ok, disassociate_from_administrator_account_response(), tuple()} |
    {error, any()} |
    {error, disassociate_from_administrator_account_errors(), tuple()}.
disassociate_from_administrator_account(Client, Input0, Options0) ->
    Method = post,
    Path = ["/administrator/disassociate"],
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

%% @doc This method is deprecated.
%%
%% Instead, use `DisassociateFromAdministratorAccount'.
%%
%% The Security Hub console continues to use
%% `DisassociateFromMasterAccount'. It will eventually change to use
%% `DisassociateFromAdministratorAccount'. Any IAM policies that
%% specifically control access to this function must continue to use
%% `DisassociateFromMasterAccount'. You should also add
%% `DisassociateFromAdministratorAccount' to your policies to ensure that
%% the correct permissions are in place after the console begins to use
%% `DisassociateFromAdministratorAccount'.
%%
%% Disassociates the current Security Hub member account from the associated
%% administrator
%% account.
%%
%% This operation is only used by accounts that are not part of an
%% organization. For
%% organization accounts, only the administrator account can
%% disassociate a member account.
-spec disassociate_from_master_account(aws_client:aws_client(), disassociate_from_master_account_request()) ->
    {ok, disassociate_from_master_account_response(), tuple()} |
    {error, any()} |
    {error, disassociate_from_master_account_errors(), tuple()}.
disassociate_from_master_account(Client, Input) ->
    disassociate_from_master_account(Client, Input, []).

-spec disassociate_from_master_account(aws_client:aws_client(), disassociate_from_master_account_request(), proplists:proplist()) ->
    {ok, disassociate_from_master_account_response(), tuple()} |
    {error, any()} |
    {error, disassociate_from_master_account_errors(), tuple()}.
disassociate_from_master_account(Client, Input0, Options0) ->
    Method = post,
    Path = ["/master/disassociate"],
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

%% @doc Disassociates the specified member accounts from the associated
%% administrator account.
%%
%% Can be used to disassociate both accounts that are managed using
%% Organizations and accounts that
%% were invited manually.
-spec disassociate_members(aws_client:aws_client(), disassociate_members_request()) ->
    {ok, disassociate_members_response(), tuple()} |
    {error, any()} |
    {error, disassociate_members_errors(), tuple()}.
disassociate_members(Client, Input) ->
    disassociate_members(Client, Input, []).

-spec disassociate_members(aws_client:aws_client(), disassociate_members_request(), proplists:proplist()) ->
    {ok, disassociate_members_response(), tuple()} |
    {error, any()} |
    {error, disassociate_members_errors(), tuple()}.
disassociate_members(Client, Input0, Options0) ->
    Method = post,
    Path = ["/members/disassociate"],
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

%% @doc Enables the integration of a partner product with Security Hub.
%%
%% Integrated products send
%% findings to Security Hub.
%%
%% When you enable a product integration, a permissions policy that grants
%% permission for
%% the product to send findings to Security Hub is applied.
-spec enable_import_findings_for_product(aws_client:aws_client(), enable_import_findings_for_product_request()) ->
    {ok, enable_import_findings_for_product_response(), tuple()} |
    {error, any()} |
    {error, enable_import_findings_for_product_errors(), tuple()}.
enable_import_findings_for_product(Client, Input) ->
    enable_import_findings_for_product(Client, Input, []).

-spec enable_import_findings_for_product(aws_client:aws_client(), enable_import_findings_for_product_request(), proplists:proplist()) ->
    {ok, enable_import_findings_for_product_response(), tuple()} |
    {error, any()} |
    {error, enable_import_findings_for_product_errors(), tuple()}.
enable_import_findings_for_product(Client, Input0, Options0) ->
    Method = post,
    Path = ["/productSubscriptions"],
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

%% @doc Designates the Security Hub administrator account for an
%% organization.
%%
%% Can only be called by
%% the organization management account.
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
    Path = ["/organization/admin/enable"],
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

%% @doc Enables Security Hub for your account in the current Region or the
%% Region you specify in the
%% request.
%%
%% When you enable Security Hub, you grant to Security Hub the permissions
%% necessary to gather findings
%% from other services that are integrated with Security Hub.
%%
%% When you use the `EnableSecurityHub' operation to enable Security Hub,
%% you also
%% automatically enable the following standards:
%%
%% Center for Internet Security (CIS) Amazon Web Services Foundations
%% Benchmark v1.2.0
%%
%% Amazon Web Services Foundational Security Best Practices
%%
%% Other standards are not automatically enabled.
%%
%% To opt out of automatically enabled standards, set
%% `EnableDefaultStandards' to `false'.
%%
%% After you enable Security Hub, to enable a standard, use the
%% `BatchEnableStandards' operation. To disable a standard, use the
%% `BatchDisableStandards' operation.
%%
%% To learn more, see the setup information:
%% https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-settingup.html
%% in the Security Hub User Guide.
-spec enable_security_hub(aws_client:aws_client(), enable_security_hub_request()) ->
    {ok, enable_security_hub_response(), tuple()} |
    {error, any()} |
    {error, enable_security_hub_errors(), tuple()}.
enable_security_hub(Client, Input) ->
    enable_security_hub(Client, Input, []).

-spec enable_security_hub(aws_client:aws_client(), enable_security_hub_request(), proplists:proplist()) ->
    {ok, enable_security_hub_response(), tuple()} |
    {error, any()} |
    {error, enable_security_hub_errors(), tuple()}.
enable_security_hub(Client, Input0, Options0) ->
    Method = post,
    Path = ["/accounts"],
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

%% @doc Provides the details for the Security Hub administrator account for
%% the current member account.
%%
%% Can be used by both member accounts that are managed using Organizations
%% and accounts that were
%% invited manually.
-spec get_administrator_account(aws_client:aws_client()) ->
    {ok, get_administrator_account_response(), tuple()} |
    {error, any()} |
    {error, get_administrator_account_errors(), tuple()}.
get_administrator_account(Client)
  when is_map(Client) ->
    get_administrator_account(Client, #{}, #{}).

-spec get_administrator_account(aws_client:aws_client(), map(), map()) ->
    {ok, get_administrator_account_response(), tuple()} |
    {error, any()} |
    {error, get_administrator_account_errors(), tuple()}.
get_administrator_account(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_administrator_account(Client, QueryMap, HeadersMap, []).

-spec get_administrator_account(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_administrator_account_response(), tuple()} |
    {error, any()} |
    {error, get_administrator_account_errors(), tuple()}.
get_administrator_account(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/administrator"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% Provides information about a configuration policy.
%%
%% Only the Security Hub delegated administrator can invoke
%% this operation from the home Region.
-spec get_configuration_policy(aws_client:aws_client(), binary() | list()) ->
    {ok, get_configuration_policy_response(), tuple()} |
    {error, any()} |
    {error, get_configuration_policy_errors(), tuple()}.
get_configuration_policy(Client, Identifier)
  when is_map(Client) ->
    get_configuration_policy(Client, Identifier, #{}, #{}).

-spec get_configuration_policy(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_configuration_policy_response(), tuple()} |
    {error, any()} |
    {error, get_configuration_policy_errors(), tuple()}.
get_configuration_policy(Client, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_configuration_policy(Client, Identifier, QueryMap, HeadersMap, []).

-spec get_configuration_policy(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_configuration_policy_response(), tuple()} |
    {error, any()} |
    {error, get_configuration_policy_errors(), tuple()}.
get_configuration_policy(Client, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/configurationPolicy/get/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% Returns the association between a configuration and a target account,
%% organizational unit, or the root.
%%
%% The
%% configuration can be a configuration policy or self-managed behavior. Only
%% the Security Hub delegated administrator can
%% invoke this operation from the home Region.
-spec get_configuration_policy_association(aws_client:aws_client(), get_configuration_policy_association_request()) ->
    {ok, get_configuration_policy_association_response(), tuple()} |
    {error, any()} |
    {error, get_configuration_policy_association_errors(), tuple()}.
get_configuration_policy_association(Client, Input) ->
    get_configuration_policy_association(Client, Input, []).

-spec get_configuration_policy_association(aws_client:aws_client(), get_configuration_policy_association_request(), proplists:proplist()) ->
    {ok, get_configuration_policy_association_response(), tuple()} |
    {error, any()} |
    {error, get_configuration_policy_association_errors(), tuple()}.
get_configuration_policy_association(Client, Input0, Options0) ->
    Method = post,
    Path = ["/configurationPolicyAssociation/get"],
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

%% @doc Returns a list of the standards that are currently enabled.
-spec get_enabled_standards(aws_client:aws_client(), get_enabled_standards_request()) ->
    {ok, get_enabled_standards_response(), tuple()} |
    {error, any()} |
    {error, get_enabled_standards_errors(), tuple()}.
get_enabled_standards(Client, Input) ->
    get_enabled_standards(Client, Input, []).

-spec get_enabled_standards(aws_client:aws_client(), get_enabled_standards_request(), proplists:proplist()) ->
    {ok, get_enabled_standards_response(), tuple()} |
    {error, any()} |
    {error, get_enabled_standards_errors(), tuple()}.
get_enabled_standards(Client, Input0, Options0) ->
    Method = post,
    Path = ["/standards/get"],
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
%% The aggregation Region is now called the home Region.
%%
%% Returns the current configuration in the calling account for cross-Region
%% aggregation. A finding aggregator is a resource that establishes
%% the home Region and any linked Regions.
-spec get_finding_aggregator(aws_client:aws_client(), binary() | list()) ->
    {ok, get_finding_aggregator_response(), tuple()} |
    {error, any()} |
    {error, get_finding_aggregator_errors(), tuple()}.
get_finding_aggregator(Client, FindingAggregatorArn)
  when is_map(Client) ->
    get_finding_aggregator(Client, FindingAggregatorArn, #{}, #{}).

-spec get_finding_aggregator(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_finding_aggregator_response(), tuple()} |
    {error, any()} |
    {error, get_finding_aggregator_errors(), tuple()}.
get_finding_aggregator(Client, FindingAggregatorArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_finding_aggregator(Client, FindingAggregatorArn, QueryMap, HeadersMap, []).

-spec get_finding_aggregator(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_finding_aggregator_response(), tuple()} |
    {error, any()} |
    {error, get_finding_aggregator_errors(), tuple()}.
get_finding_aggregator(Client, FindingAggregatorArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/findingAggregator/get/", aws_util:encode_multi_segment_uri(FindingAggregatorArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% Returns history for a Security Hub finding in the last 90 days.
%%
%% The history includes changes made to any fields in
%% the Amazon Web Services Security Finding Format (ASFF).
-spec get_finding_history(aws_client:aws_client(), get_finding_history_request()) ->
    {ok, get_finding_history_response(), tuple()} |
    {error, any()} |
    {error, get_finding_history_errors(), tuple()}.
get_finding_history(Client, Input) ->
    get_finding_history(Client, Input, []).

-spec get_finding_history(aws_client:aws_client(), get_finding_history_request(), proplists:proplist()) ->
    {ok, get_finding_history_response(), tuple()} |
    {error, any()} |
    {error, get_finding_history_errors(), tuple()}.
get_finding_history(Client, Input0, Options0) ->
    Method = post,
    Path = ["/findingHistory/get"],
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

%% @doc Returns a list of findings that match the specified criteria.
%%
%% If cross-Region aggregation is enabled, then when you call
%% `GetFindings' from the home Region, the results include all of the
%% matching findings from both the home Region and linked Regions.
-spec get_findings(aws_client:aws_client(), get_findings_request()) ->
    {ok, get_findings_response(), tuple()} |
    {error, any()} |
    {error, get_findings_errors(), tuple()}.
get_findings(Client, Input) ->
    get_findings(Client, Input, []).

-spec get_findings(aws_client:aws_client(), get_findings_request(), proplists:proplist()) ->
    {ok, get_findings_response(), tuple()} |
    {error, any()} |
    {error, get_findings_errors(), tuple()}.
get_findings(Client, Input0, Options0) ->
    Method = post,
    Path = ["/findings"],
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

%% @doc Lists the results of the Security Hub insight specified by the
%% insight ARN.
-spec get_insight_results(aws_client:aws_client(), binary() | list()) ->
    {ok, get_insight_results_response(), tuple()} |
    {error, any()} |
    {error, get_insight_results_errors(), tuple()}.
get_insight_results(Client, InsightArn)
  when is_map(Client) ->
    get_insight_results(Client, InsightArn, #{}, #{}).

-spec get_insight_results(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_insight_results_response(), tuple()} |
    {error, any()} |
    {error, get_insight_results_errors(), tuple()}.
get_insight_results(Client, InsightArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_insight_results(Client, InsightArn, QueryMap, HeadersMap, []).

-spec get_insight_results(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_insight_results_response(), tuple()} |
    {error, any()} |
    {error, get_insight_results_errors(), tuple()}.
get_insight_results(Client, InsightArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/insights/results/", aws_util:encode_multi_segment_uri(InsightArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists and describes insights for the specified insight ARNs.
-spec get_insights(aws_client:aws_client(), get_insights_request()) ->
    {ok, get_insights_response(), tuple()} |
    {error, any()} |
    {error, get_insights_errors(), tuple()}.
get_insights(Client, Input) ->
    get_insights(Client, Input, []).

-spec get_insights(aws_client:aws_client(), get_insights_request(), proplists:proplist()) ->
    {ok, get_insights_response(), tuple()} |
    {error, any()} |
    {error, get_insights_errors(), tuple()}.
get_insights(Client, Input0, Options0) ->
    Method = post,
    Path = ["/insights/get"],
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
%% We recommend using Organizations instead of Security Hub invitations to
%% manage your member accounts.
%%
%% For information, see Managing Security Hub administrator and member
%% accounts with Organizations:
%% https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-accounts-orgs.html
%% in the Security Hub User Guide.
%%
%% Returns the count of all Security Hub membership invitations that were
%% sent to the
%% calling member account, not including the currently accepted invitation.
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
    Path = ["/invitations/count"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This method is deprecated.
%%
%% Instead, use `GetAdministratorAccount'.
%%
%% The Security Hub console continues to use `GetMasterAccount'. It will
%% eventually change to use `GetAdministratorAccount'. Any IAM policies
%% that specifically control access to this function must continue to use
%% `GetMasterAccount'. You should also add `GetAdministratorAccount'
%% to your policies to ensure that the correct permissions are in place after
%% the console begins to use `GetAdministratorAccount'.
%%
%% Provides the details for the Security Hub administrator account for the
%% current member account.
%%
%% Can be used by both member accounts that are managed using Organizations
%% and accounts that were
%% invited manually.
-spec get_master_account(aws_client:aws_client()) ->
    {ok, get_master_account_response(), tuple()} |
    {error, any()} |
    {error, get_master_account_errors(), tuple()}.
get_master_account(Client)
  when is_map(Client) ->
    get_master_account(Client, #{}, #{}).

-spec get_master_account(aws_client:aws_client(), map(), map()) ->
    {ok, get_master_account_response(), tuple()} |
    {error, any()} |
    {error, get_master_account_errors(), tuple()}.
get_master_account(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_master_account(Client, QueryMap, HeadersMap, []).

-spec get_master_account(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_master_account_response(), tuple()} |
    {error, any()} |
    {error, get_master_account_errors(), tuple()}.
get_master_account(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/master"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the details for the Security Hub member accounts for the
%% specified account IDs.
%%
%% An administrator account can be either the delegated Security Hub
%% administrator account for an
%% organization or an administrator account that enabled Security Hub
%% manually.
%%
%% The results include both member accounts that are managed using
%% Organizations and accounts that
%% were invited manually.
-spec get_members(aws_client:aws_client(), get_members_request()) ->
    {ok, get_members_response(), tuple()} |
    {error, any()} |
    {error, get_members_errors(), tuple()}.
get_members(Client, Input) ->
    get_members(Client, Input, []).

-spec get_members(aws_client:aws_client(), get_members_request(), proplists:proplist()) ->
    {ok, get_members_response(), tuple()} |
    {error, any()} |
    {error, get_members_errors(), tuple()}.
get_members(Client, Input0, Options0) ->
    Method = post,
    Path = ["/members/get"],
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
%% Retrieves the definition of a security control.
%%
%% The definition includes the control title, description, Region
%% availability, parameter definitions, and other details.
-spec get_security_control_definition(aws_client:aws_client(), binary() | list()) ->
    {ok, get_security_control_definition_response(), tuple()} |
    {error, any()} |
    {error, get_security_control_definition_errors(), tuple()}.
get_security_control_definition(Client, SecurityControlId)
  when is_map(Client) ->
    get_security_control_definition(Client, SecurityControlId, #{}, #{}).

-spec get_security_control_definition(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_security_control_definition_response(), tuple()} |
    {error, any()} |
    {error, get_security_control_definition_errors(), tuple()}.
get_security_control_definition(Client, SecurityControlId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_security_control_definition(Client, SecurityControlId, QueryMap, HeadersMap, []).

-spec get_security_control_definition(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_security_control_definition_response(), tuple()} |
    {error, any()} |
    {error, get_security_control_definition_errors(), tuple()}.
get_security_control_definition(Client, SecurityControlId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/securityControl/definition"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"SecurityControlId">>, SecurityControlId}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% We recommend using Organizations instead of Security Hub invitations to
%% manage your member accounts.
%%
%% For information, see Managing Security Hub administrator and member
%% accounts with Organizations:
%% https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-accounts-orgs.html
%% in the Security Hub User Guide.
%%
%% Invites other Amazon Web Services accounts to become member accounts for
%% the Security Hub administrator account that
%% the invitation is sent from.
%%
%% This operation is only used to invite accounts that don't belong to an
%% Amazon Web Services organization.
%% Organization accounts don't receive invitations.
%%
%% Before you can use this action to invite a member, you must first use the
%% `CreateMembers' action to create the member account in Security Hub.
%%
%% When the account owner enables Security Hub and accepts the invitation to
%% become a member
%% account, the administrator account can view the findings generated in the
%% member account.
-spec invite_members(aws_client:aws_client(), invite_members_request()) ->
    {ok, invite_members_response(), tuple()} |
    {error, any()} |
    {error, invite_members_errors(), tuple()}.
invite_members(Client, Input) ->
    invite_members(Client, Input, []).

-spec invite_members(aws_client:aws_client(), invite_members_request(), proplists:proplist()) ->
    {ok, invite_members_response(), tuple()} |
    {error, any()} |
    {error, invite_members_errors(), tuple()}.
invite_members(Client, Input0, Options0) ->
    Method = post,
    Path = ["/members/invite"],
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
%% A list of automation rules and their metadata for the calling account.
-spec list_automation_rules(aws_client:aws_client()) ->
    {ok, list_automation_rules_response(), tuple()} |
    {error, any()} |
    {error, list_automation_rules_errors(), tuple()}.
list_automation_rules(Client)
  when is_map(Client) ->
    list_automation_rules(Client, #{}, #{}).

-spec list_automation_rules(aws_client:aws_client(), map(), map()) ->
    {ok, list_automation_rules_response(), tuple()} |
    {error, any()} |
    {error, list_automation_rules_errors(), tuple()}.
list_automation_rules(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_automation_rules(Client, QueryMap, HeadersMap, []).

-spec list_automation_rules(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_automation_rules_response(), tuple()} |
    {error, any()} |
    {error, list_automation_rules_errors(), tuple()}.
list_automation_rules(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/automationrules/list"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% Lists the configuration policies that the Security Hub delegated
%% administrator has created for your
%% organization.
%%
%% Only the delegated administrator can invoke this operation from the home
%% Region.
-spec list_configuration_policies(aws_client:aws_client()) ->
    {ok, list_configuration_policies_response(), tuple()} |
    {error, any()} |
    {error, list_configuration_policies_errors(), tuple()}.
list_configuration_policies(Client)
  when is_map(Client) ->
    list_configuration_policies(Client, #{}, #{}).

-spec list_configuration_policies(aws_client:aws_client(), map(), map()) ->
    {ok, list_configuration_policies_response(), tuple()} |
    {error, any()} |
    {error, list_configuration_policies_errors(), tuple()}.
list_configuration_policies(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_configuration_policies(Client, QueryMap, HeadersMap, []).

-spec list_configuration_policies(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_configuration_policies_response(), tuple()} |
    {error, any()} |
    {error, list_configuration_policies_errors(), tuple()}.
list_configuration_policies(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/configurationPolicy/list"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% Provides information about the associations for your configuration
%% policies and self-managed behavior.
%%
%% Only the
%% Security Hub delegated administrator can invoke this operation from the
%% home Region.
-spec list_configuration_policy_associations(aws_client:aws_client(), list_configuration_policy_associations_request()) ->
    {ok, list_configuration_policy_associations_response(), tuple()} |
    {error, any()} |
    {error, list_configuration_policy_associations_errors(), tuple()}.
list_configuration_policy_associations(Client, Input) ->
    list_configuration_policy_associations(Client, Input, []).

-spec list_configuration_policy_associations(aws_client:aws_client(), list_configuration_policy_associations_request(), proplists:proplist()) ->
    {ok, list_configuration_policy_associations_response(), tuple()} |
    {error, any()} |
    {error, list_configuration_policy_associations_errors(), tuple()}.
list_configuration_policy_associations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/configurationPolicyAssociation/list"],
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

%% @doc Lists all findings-generating solutions (products) that you are
%% subscribed to receive
%% findings from in Security Hub.
-spec list_enabled_products_for_import(aws_client:aws_client()) ->
    {ok, list_enabled_products_for_import_response(), tuple()} |
    {error, any()} |
    {error, list_enabled_products_for_import_errors(), tuple()}.
list_enabled_products_for_import(Client)
  when is_map(Client) ->
    list_enabled_products_for_import(Client, #{}, #{}).

-spec list_enabled_products_for_import(aws_client:aws_client(), map(), map()) ->
    {ok, list_enabled_products_for_import_response(), tuple()} |
    {error, any()} |
    {error, list_enabled_products_for_import_errors(), tuple()}.
list_enabled_products_for_import(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_enabled_products_for_import(Client, QueryMap, HeadersMap, []).

-spec list_enabled_products_for_import(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_enabled_products_for_import_response(), tuple()} |
    {error, any()} |
    {error, list_enabled_products_for_import_errors(), tuple()}.
list_enabled_products_for_import(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/productSubscriptions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc If cross-Region aggregation is enabled, then
%% `ListFindingAggregators' returns the Amazon Resource Name (ARN)
%% of the finding aggregator.
%%
%% You can run this operation from any Amazon Web Services Region.
-spec list_finding_aggregators(aws_client:aws_client()) ->
    {ok, list_finding_aggregators_response(), tuple()} |
    {error, any()} |
    {error, list_finding_aggregators_errors(), tuple()}.
list_finding_aggregators(Client)
  when is_map(Client) ->
    list_finding_aggregators(Client, #{}, #{}).

-spec list_finding_aggregators(aws_client:aws_client(), map(), map()) ->
    {ok, list_finding_aggregators_response(), tuple()} |
    {error, any()} |
    {error, list_finding_aggregators_errors(), tuple()}.
list_finding_aggregators(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_finding_aggregators(Client, QueryMap, HeadersMap, []).

-spec list_finding_aggregators(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_finding_aggregators_response(), tuple()} |
    {error, any()} |
    {error, list_finding_aggregators_errors(), tuple()}.
list_finding_aggregators(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/findingAggregator/list"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% We recommend using Organizations instead of Security Hub invitations to
%% manage your member accounts.
%%
%% For information, see Managing Security Hub administrator and member
%% accounts with Organizations:
%% https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-accounts-orgs.html
%% in the Security Hub User Guide.
%%
%% Lists all Security Hub membership invitations that were sent to the
%% calling account.
%%
%% Only accounts that are managed by invitation can use this operation.
%% Accounts that are managed using the integration with Organizations
%% don't receive invitations.
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
    Path = ["/invitations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists details about all member accounts for the current Security Hub
%% administrator
%% account.
%%
%% The results include both member accounts that belong to an organization
%% and member
%% accounts that were invited manually.
-spec list_members(aws_client:aws_client()) ->
    {ok, list_members_response(), tuple()} |
    {error, any()} |
    {error, list_members_errors(), tuple()}.
list_members(Client)
  when is_map(Client) ->
    list_members(Client, #{}, #{}).

-spec list_members(aws_client:aws_client(), map(), map()) ->
    {ok, list_members_response(), tuple()} |
    {error, any()} |
    {error, list_members_errors(), tuple()}.
list_members(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_members(Client, QueryMap, HeadersMap, []).

-spec list_members(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_members_response(), tuple()} |
    {error, any()} |
    {error, list_members_errors(), tuple()}.
list_members(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/members"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)},
        {<<"OnlyAssociated">>, maps:get(<<"OnlyAssociated">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the Security Hub administrator accounts.
%%
%% Can only be called by the organization
%% management account.
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
    Path = ["/organization/admin"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% Lists all of the security controls that apply to a specified standard.
-spec list_security_control_definitions(aws_client:aws_client()) ->
    {ok, list_security_control_definitions_response(), tuple()} |
    {error, any()} |
    {error, list_security_control_definitions_errors(), tuple()}.
list_security_control_definitions(Client)
  when is_map(Client) ->
    list_security_control_definitions(Client, #{}, #{}).

-spec list_security_control_definitions(aws_client:aws_client(), map(), map()) ->
    {ok, list_security_control_definitions_response(), tuple()} |
    {error, any()} |
    {error, list_security_control_definitions_errors(), tuple()}.
list_security_control_definitions(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_security_control_definitions(Client, QueryMap, HeadersMap, []).

-spec list_security_control_definitions(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_security_control_definitions_response(), tuple()} |
    {error, any()} |
    {error, list_security_control_definitions_errors(), tuple()}.
list_security_control_definitions(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/securityControls/definitions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)},
        {<<"StandardsArn">>, maps:get(<<"StandardsArn">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% Specifies whether a control is currently enabled or disabled in each
%% enabled standard in the calling account.
%%
%% This operation omits standards control associations for standard
%% subscriptions where `StandardsControlsUpdatable' has value
%% `NOT_READY_FOR_UPDATES'.
-spec list_standards_control_associations(aws_client:aws_client(), binary() | list()) ->
    {ok, list_standards_control_associations_response(), tuple()} |
    {error, any()} |
    {error, list_standards_control_associations_errors(), tuple()}.
list_standards_control_associations(Client, SecurityControlId)
  when is_map(Client) ->
    list_standards_control_associations(Client, SecurityControlId, #{}, #{}).

-spec list_standards_control_associations(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_standards_control_associations_response(), tuple()} |
    {error, any()} |
    {error, list_standards_control_associations_errors(), tuple()}.
list_standards_control_associations(Client, SecurityControlId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_standards_control_associations(Client, SecurityControlId, QueryMap, HeadersMap, []).

-spec list_standards_control_associations(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_standards_control_associations_response(), tuple()} |
    {error, any()} |
    {error, list_standards_control_associations_errors(), tuple()}.
list_standards_control_associations(Client, SecurityControlId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/associations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)},
        {<<"SecurityControlId">>, SecurityControlId}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of tags associated with a resource.
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

%% @doc
%% Associates a target account, organizational unit, or the root with a
%% specified configuration.
%%
%% The target can be
%% associated with a configuration policy or self-managed behavior. Only the
%% Security Hub delegated administrator can
%% invoke this operation from the home Region.
-spec start_configuration_policy_association(aws_client:aws_client(), start_configuration_policy_association_request()) ->
    {ok, start_configuration_policy_association_response(), tuple()} |
    {error, any()} |
    {error, start_configuration_policy_association_errors(), tuple()}.
start_configuration_policy_association(Client, Input) ->
    start_configuration_policy_association(Client, Input, []).

-spec start_configuration_policy_association(aws_client:aws_client(), start_configuration_policy_association_request(), proplists:proplist()) ->
    {ok, start_configuration_policy_association_response(), tuple()} |
    {error, any()} |
    {error, start_configuration_policy_association_errors(), tuple()}.
start_configuration_policy_association(Client, Input0, Options0) ->
    Method = post,
    Path = ["/configurationPolicyAssociation/associate"],
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
%% Disassociates a target account, organizational unit, or the root from a
%% specified configuration.
%%
%% When you
%% disassociate a configuration from its target, the target inherits the
%% configuration of the closest parent. If there’s no
%% configuration to inherit, the target retains its settings but becomes a
%% self-managed account. A target can be disassociated from
%% a configuration policy or self-managed behavior. Only the Security Hub
%% delegated administrator can invoke this
%% operation from the home Region.
-spec start_configuration_policy_disassociation(aws_client:aws_client(), start_configuration_policy_disassociation_request()) ->
    {ok, start_configuration_policy_disassociation_response(), tuple()} |
    {error, any()} |
    {error, start_configuration_policy_disassociation_errors(), tuple()}.
start_configuration_policy_disassociation(Client, Input) ->
    start_configuration_policy_disassociation(Client, Input, []).

-spec start_configuration_policy_disassociation(aws_client:aws_client(), start_configuration_policy_disassociation_request(), proplists:proplist()) ->
    {ok, start_configuration_policy_disassociation_response(), tuple()} |
    {error, any()} |
    {error, start_configuration_policy_disassociation_errors(), tuple()}.
start_configuration_policy_disassociation(Client, Input0, Options0) ->
    Method = post,
    Path = ["/configurationPolicyAssociation/disassociate"],
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

%% @doc Adds one or more tags to a resource.
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

%% @doc Removes one or more tags from a resource.
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
                     {<<"tagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the name and description of a custom action target in
%% Security Hub.
-spec update_action_target(aws_client:aws_client(), binary() | list(), update_action_target_request()) ->
    {ok, update_action_target_response(), tuple()} |
    {error, any()} |
    {error, update_action_target_errors(), tuple()}.
update_action_target(Client, ActionTargetArn, Input) ->
    update_action_target(Client, ActionTargetArn, Input, []).

-spec update_action_target(aws_client:aws_client(), binary() | list(), update_action_target_request(), proplists:proplist()) ->
    {ok, update_action_target_response(), tuple()} |
    {error, any()} |
    {error, update_action_target_errors(), tuple()}.
update_action_target(Client, ActionTargetArn, Input0, Options0) ->
    Method = patch,
    Path = ["/actionTargets/", aws_util:encode_multi_segment_uri(ActionTargetArn), ""],
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
%% Updates a configuration policy.
%%
%% Only the Security Hub delegated
%% administrator can invoke this operation from the home Region.
-spec update_configuration_policy(aws_client:aws_client(), binary() | list(), update_configuration_policy_request()) ->
    {ok, update_configuration_policy_response(), tuple()} |
    {error, any()} |
    {error, update_configuration_policy_errors(), tuple()}.
update_configuration_policy(Client, Identifier, Input) ->
    update_configuration_policy(Client, Identifier, Input, []).

-spec update_configuration_policy(aws_client:aws_client(), binary() | list(), update_configuration_policy_request(), proplists:proplist()) ->
    {ok, update_configuration_policy_response(), tuple()} |
    {error, any()} |
    {error, update_configuration_policy_errors(), tuple()}.
update_configuration_policy(Client, Identifier, Input0, Options0) ->
    Method = patch,
    Path = ["/configurationPolicy/", aws_util:encode_uri(Identifier), ""],
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
%% The aggregation Region is now called the home Region.
%%
%% Updates cross-Region aggregation settings. You can use this operation to
%% update the Region linking mode and the list
%% of included or excluded Amazon Web Services Regions. However, you
%% can't use this operation to change the home Region.
%%
%% You can invoke this operation from the current home Region only.
-spec update_finding_aggregator(aws_client:aws_client(), update_finding_aggregator_request()) ->
    {ok, update_finding_aggregator_response(), tuple()} |
    {error, any()} |
    {error, update_finding_aggregator_errors(), tuple()}.
update_finding_aggregator(Client, Input) ->
    update_finding_aggregator(Client, Input, []).

-spec update_finding_aggregator(aws_client:aws_client(), update_finding_aggregator_request(), proplists:proplist()) ->
    {ok, update_finding_aggregator_response(), tuple()} |
    {error, any()} |
    {error, update_finding_aggregator_errors(), tuple()}.
update_finding_aggregator(Client, Input0, Options0) ->
    Method = patch,
    Path = ["/findingAggregator/update"],
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
%% `UpdateFindings' is a deprecated operation.
%%
%% Instead of `UpdateFindings', use
%% the `BatchUpdateFindings' operation.
%%
%% The `UpdateFindings' operation updates the `Note' and
%% `RecordState' of the Security Hub aggregated
%% findings that the filter attributes specify. Any member account that can
%% view the finding
%% can also see the update to the finding.
%%
%% Finding updates made with `UpdateFindings' aren't persisted if the
%% same finding is later updated by the
%% finding provider through the `BatchImportFindings' operation. In
%% addition, Security Hub doesn't
%% record updates made with `UpdateFindings' in the finding history.
-spec update_findings(aws_client:aws_client(), update_findings_request()) ->
    {ok, update_findings_response(), tuple()} |
    {error, any()} |
    {error, update_findings_errors(), tuple()}.
update_findings(Client, Input) ->
    update_findings(Client, Input, []).

-spec update_findings(aws_client:aws_client(), update_findings_request(), proplists:proplist()) ->
    {ok, update_findings_response(), tuple()} |
    {error, any()} |
    {error, update_findings_errors(), tuple()}.
update_findings(Client, Input0, Options0) ->
    Method = patch,
    Path = ["/findings"],
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

%% @doc Updates the Security Hub insight identified by the specified insight
%% ARN.
-spec update_insight(aws_client:aws_client(), binary() | list(), update_insight_request()) ->
    {ok, update_insight_response(), tuple()} |
    {error, any()} |
    {error, update_insight_errors(), tuple()}.
update_insight(Client, InsightArn, Input) ->
    update_insight(Client, InsightArn, Input, []).

-spec update_insight(aws_client:aws_client(), binary() | list(), update_insight_request(), proplists:proplist()) ->
    {ok, update_insight_response(), tuple()} |
    {error, any()} |
    {error, update_insight_errors(), tuple()}.
update_insight(Client, InsightArn, Input0, Options0) ->
    Method = patch,
    Path = ["/insights/", aws_util:encode_multi_segment_uri(InsightArn), ""],
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

%% @doc Updates the configuration of your organization in Security Hub.
%%
%% Only the
%% Security Hub administrator account can invoke this operation.
-spec update_organization_configuration(aws_client:aws_client(), update_organization_configuration_request()) ->
    {ok, update_organization_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_organization_configuration_errors(), tuple()}.
update_organization_configuration(Client, Input) ->
    update_organization_configuration(Client, Input, []).

-spec update_organization_configuration(aws_client:aws_client(), update_organization_configuration_request(), proplists:proplist()) ->
    {ok, update_organization_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_organization_configuration_errors(), tuple()}.
update_organization_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/organization/configuration"],
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
%% Updates the properties of a security control.
-spec update_security_control(aws_client:aws_client(), update_security_control_request()) ->
    {ok, update_security_control_response(), tuple()} |
    {error, any()} |
    {error, update_security_control_errors(), tuple()}.
update_security_control(Client, Input) ->
    update_security_control(Client, Input, []).

-spec update_security_control(aws_client:aws_client(), update_security_control_request(), proplists:proplist()) ->
    {ok, update_security_control_response(), tuple()} |
    {error, any()} |
    {error, update_security_control_errors(), tuple()}.
update_security_control(Client, Input0, Options0) ->
    Method = patch,
    Path = ["/securityControl/update"],
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

%% @doc Updates configuration options for Security Hub.
-spec update_security_hub_configuration(aws_client:aws_client(), update_security_hub_configuration_request()) ->
    {ok, update_security_hub_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_security_hub_configuration_errors(), tuple()}.
update_security_hub_configuration(Client, Input) ->
    update_security_hub_configuration(Client, Input, []).

-spec update_security_hub_configuration(aws_client:aws_client(), update_security_hub_configuration_request(), proplists:proplist()) ->
    {ok, update_security_hub_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_security_hub_configuration_errors(), tuple()}.
update_security_hub_configuration(Client, Input0, Options0) ->
    Method = patch,
    Path = ["/accounts"],
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

%% @doc Used to control whether an individual security standard control is
%% enabled or
%% disabled.
%%
%% Calls to this operation return a `RESOURCE_NOT_FOUND_EXCEPTION' error
%% when the standard subscription for the control has
%% `StandardsControlsUpdatable' value `NOT_READY_FOR_UPDATES'.
-spec update_standards_control(aws_client:aws_client(), binary() | list(), update_standards_control_request()) ->
    {ok, update_standards_control_response(), tuple()} |
    {error, any()} |
    {error, update_standards_control_errors(), tuple()}.
update_standards_control(Client, StandardsControlArn, Input) ->
    update_standards_control(Client, StandardsControlArn, Input, []).

-spec update_standards_control(aws_client:aws_client(), binary() | list(), update_standards_control_request(), proplists:proplist()) ->
    {ok, update_standards_control_response(), tuple()} |
    {error, any()} |
    {error, update_standards_control_errors(), tuple()}.
update_standards_control(Client, StandardsControlArn, Input0, Options0) ->
    Method = patch,
    Path = ["/standards/control/", aws_util:encode_multi_segment_uri(StandardsControlArn), ""],
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
    Client1 = Client#{service => <<"securityhub">>},
    Host = build_host(<<"securityhub">>, Client1),
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
