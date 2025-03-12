%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Inspector is a vulnerability discovery service that automates
%% continuous scanning for
%% security vulnerabilities within your Amazon EC2, Amazon ECR, and Amazon
%% Web Services Lambda environments.
-module(aws_inspector2).

-export([associate_member/2,
         associate_member/3,
         batch_get_account_status/2,
         batch_get_account_status/3,
         batch_get_code_snippet/2,
         batch_get_code_snippet/3,
         batch_get_finding_details/2,
         batch_get_finding_details/3,
         batch_get_free_trial_info/2,
         batch_get_free_trial_info/3,
         batch_get_member_ec2_deep_inspection_status/2,
         batch_get_member_ec2_deep_inspection_status/3,
         batch_update_member_ec2_deep_inspection_status/2,
         batch_update_member_ec2_deep_inspection_status/3,
         cancel_findings_report/2,
         cancel_findings_report/3,
         cancel_sbom_export/2,
         cancel_sbom_export/3,
         create_cis_scan_configuration/2,
         create_cis_scan_configuration/3,
         create_filter/2,
         create_filter/3,
         create_findings_report/2,
         create_findings_report/3,
         create_sbom_export/2,
         create_sbom_export/3,
         delete_cis_scan_configuration/2,
         delete_cis_scan_configuration/3,
         delete_filter/2,
         delete_filter/3,
         describe_organization_configuration/2,
         describe_organization_configuration/3,
         disable/2,
         disable/3,
         disable_delegated_admin_account/2,
         disable_delegated_admin_account/3,
         disassociate_member/2,
         disassociate_member/3,
         enable/2,
         enable/3,
         enable_delegated_admin_account/2,
         enable_delegated_admin_account/3,
         get_cis_scan_report/2,
         get_cis_scan_report/3,
         get_cis_scan_result_details/2,
         get_cis_scan_result_details/3,
         get_configuration/2,
         get_configuration/3,
         get_delegated_admin_account/2,
         get_delegated_admin_account/3,
         get_ec2_deep_inspection_configuration/2,
         get_ec2_deep_inspection_configuration/3,
         get_encryption_key/3,
         get_encryption_key/5,
         get_encryption_key/6,
         get_findings_report_status/2,
         get_findings_report_status/3,
         get_member/2,
         get_member/3,
         get_sbom_export/2,
         get_sbom_export/3,
         list_account_permissions/2,
         list_account_permissions/3,
         list_cis_scan_configurations/2,
         list_cis_scan_configurations/3,
         list_cis_scan_results_aggregated_by_checks/2,
         list_cis_scan_results_aggregated_by_checks/3,
         list_cis_scan_results_aggregated_by_target_resource/2,
         list_cis_scan_results_aggregated_by_target_resource/3,
         list_cis_scans/2,
         list_cis_scans/3,
         list_coverage/2,
         list_coverage/3,
         list_coverage_statistics/2,
         list_coverage_statistics/3,
         list_delegated_admin_accounts/2,
         list_delegated_admin_accounts/3,
         list_filters/2,
         list_filters/3,
         list_finding_aggregations/2,
         list_finding_aggregations/3,
         list_findings/2,
         list_findings/3,
         list_members/2,
         list_members/3,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_usage_totals/2,
         list_usage_totals/3,
         reset_encryption_key/2,
         reset_encryption_key/3,
         search_vulnerabilities/2,
         search_vulnerabilities/3,
         send_cis_session_health/2,
         send_cis_session_health/3,
         send_cis_session_telemetry/2,
         send_cis_session_telemetry/3,
         start_cis_session/2,
         start_cis_session/3,
         stop_cis_session/2,
         stop_cis_session/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_cis_scan_configuration/2,
         update_cis_scan_configuration/3,
         update_configuration/2,
         update_configuration/3,
         update_ec2_deep_inspection_configuration/2,
         update_ec2_deep_inspection_configuration/3,
         update_encryption_key/2,
         update_encryption_key/3,
         update_filter/2,
         update_filter/3,
         update_org_ec2_deep_inspection_configuration/2,
         update_org_ec2_deep_inspection_configuration/3,
         update_organization_configuration/2,
         update_organization_configuration/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% update_ec2_deep_inspection_configuration_request() :: #{
%%   <<"activateDeepInspection">> => [boolean()],
%%   <<"packagePaths">> => list(string()())
%% }
-type update_ec2_deep_inspection_configuration_request() :: #{binary() => any()}.


%% Example:
%% get_encryption_key_response() :: #{
%%   <<"kmsKeyId">> => string()
%% }
-type get_encryption_key_response() :: #{binary() => any()}.


%% Example:
%% code_vulnerability_details() :: #{
%%   <<"cwes">> => list(string()()),
%%   <<"detectorId">> => string(),
%%   <<"detectorName">> => string(),
%%   <<"detectorTags">> => list(string()()),
%%   <<"filePath">> => code_file_path(),
%%   <<"referenceUrls">> => list(string()()),
%%   <<"ruleId">> => string(),
%%   <<"sourceLambdaLayerArn">> => string()
%% }
-type code_vulnerability_details() :: #{binary() => any()}.


%% Example:
%% disable_request() :: #{
%%   <<"accountIds">> => list(string()()),
%%   <<"resourceTypes">> => list(string()())
%% }
-type disable_request() :: #{binary() => any()}.


%% Example:
%% code_file_path() :: #{
%%   <<"endLine">> => [integer()],
%%   <<"fileName">> => string(),
%%   <<"filePath">> => string(),
%%   <<"startLine">> => [integer()]
%% }
-type code_file_path() :: #{binary() => any()}.


%% Example:
%% network_path() :: #{
%%   <<"steps">> => list(step()())
%% }
-type network_path() :: #{binary() => any()}.


%% Example:
%% state() :: #{
%%   <<"errorCode">> => string(),
%%   <<"errorMessage">> => string(),
%%   <<"status">> => string()
%% }
-type state() :: #{binary() => any()}.


%% Example:
%% get_delegated_admin_account_response() :: #{
%%   <<"delegatedAdmin">> => delegated_admin()
%% }
-type get_delegated_admin_account_response() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% repository_aggregation() :: #{
%%   <<"repositories">> => list(string_filter()()),
%%   <<"sortBy">> => string(),
%%   <<"sortOrder">> => string()
%% }
-type repository_aggregation() :: #{binary() => any()}.


%% Example:
%% suggested_fix() :: #{
%%   <<"code">> => [string()],
%%   <<"description">> => [string()]
%% }
-type suggested_fix() :: #{binary() => any()}.


%% Example:
%% cis_finding_status_filter() :: #{
%%   <<"comparison">> => list(any()),
%%   <<"value">> => list(any())
%% }
-type cis_finding_status_filter() :: #{binary() => any()}.


%% Example:
%% enable_request() :: #{
%%   <<"accountIds">> => list(string()()),
%%   <<"clientToken">> => string(),
%%   <<"resourceTypes">> := list(string()())
%% }
-type enable_request() :: #{binary() => any()}.


%% Example:
%% vulnerability() :: #{
%%   <<"atigData">> => atig_data(),
%%   <<"cisaData">> => cisa_data(),
%%   <<"cvss2">> => cvss2(),
%%   <<"cvss3">> => cvss3(),
%%   <<"cwes">> => list(string()()),
%%   <<"description">> => string(),
%%   <<"detectionPlatforms">> => list(string()()),
%%   <<"epss">> => epss(),
%%   <<"exploitObserved">> => exploit_observed(),
%%   <<"id">> => string(),
%%   <<"referenceUrls">> => list(string()()),
%%   <<"relatedVulnerabilities">> => list(string()()),
%%   <<"source">> => string(),
%%   <<"sourceUrl">> => string(),
%%   <<"vendorCreatedAt">> => non_neg_integer(),
%%   <<"vendorSeverity">> => string(),
%%   <<"vendorUpdatedAt">> => non_neg_integer()
%% }
-type vulnerability() :: #{binary() => any()}.


%% Example:
%% create_sbom_export_request() :: #{
%%   <<"reportFormat">> := string(),
%%   <<"resourceFilterCriteria">> => resource_filter_criteria(),
%%   <<"s3Destination">> := destination()
%% }
-type create_sbom_export_request() :: #{binary() => any()}.

%% Example:
%% describe_organization_configuration_request() :: #{}
-type describe_organization_configuration_request() :: #{}.


%% Example:
%% usage_total() :: #{
%%   <<"accountId">> => string(),
%%   <<"usage">> => list(usage()())
%% }
-type usage_total() :: #{binary() => any()}.


%% Example:
%% cis_targets() :: #{
%%   <<"accountIds">> => list(string()()),
%%   <<"targetResourceTags">> => map()
%% }
-type cis_targets() :: #{binary() => any()}.


%% Example:
%% remediation() :: #{
%%   <<"recommendation">> => recommendation()
%% }
-type remediation() :: #{binary() => any()}.


%% Example:
%% update_configuration_request() :: #{
%%   <<"ec2Configuration">> => ec2_configuration(),
%%   <<"ecrConfiguration">> => ecr_configuration()
%% }
-type update_configuration_request() :: #{binary() => any()}.


%% Example:
%% create_findings_report_response() :: #{
%%   <<"reportId">> => string()
%% }
-type create_findings_report_response() :: #{binary() => any()}.


%% Example:
%% counts() :: #{
%%   <<"count">> => float(),
%%   <<"groupKey">> => string()
%% }
-type counts() :: #{binary() => any()}.


%% Example:
%% coverage_map_filter() :: #{
%%   <<"comparison">> => string(),
%%   <<"key">> => string(),
%%   <<"value">> => string()
%% }
-type coverage_map_filter() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% filter_criteria() :: #{
%%   <<"updatedAt">> => list(date_filter()()),
%%   <<"lambdaFunctionLastModifiedAt">> => list(date_filter()()),
%%   <<"networkProtocol">> => list(string_filter()()),
%%   <<"lambdaFunctionLayers">> => list(string_filter()()),
%%   <<"awsAccountId">> => list(string_filter()()),
%%   <<"inspectorScore">> => list(number_filter()()),
%%   <<"ecrImageArchitecture">> => list(string_filter()()),
%%   <<"codeVulnerabilityFilePath">> => list(string_filter()()),
%%   <<"epssScore">> => list(number_filter()()),
%%   <<"ec2InstanceVpcId">> => list(string_filter()()),
%%   <<"codeVulnerabilityDetectorName">> => list(string_filter()()),
%%   <<"findingStatus">> => list(string_filter()()),
%%   <<"relatedVulnerabilities">> => list(string_filter()()),
%%   <<"vulnerabilityId">> => list(string_filter()()),
%%   <<"componentType">> => list(string_filter()()),
%%   <<"componentId">> => list(string_filter()()),
%%   <<"ec2InstanceSubnetId">> => list(string_filter()()),
%%   <<"portRange">> => list(port_range_filter()()),
%%   <<"vulnerablePackages">> => list(package_filter()()),
%%   <<"ecrImageRegistry">> => list(string_filter()()),
%%   <<"lambdaFunctionExecutionRoleArn">> => list(string_filter()()),
%%   <<"resourceTags">> => list(map_filter()()),
%%   <<"vulnerabilitySource">> => list(string_filter()()),
%%   <<"findingArn">> => list(string_filter()()),
%%   <<"codeVulnerabilityDetectorTags">> => list(string_filter()()),
%%   <<"ec2InstanceImageId">> => list(string_filter()()),
%%   <<"ecrImagePushedAt">> => list(date_filter()()),
%%   <<"ecrImageRepositoryName">> => list(string_filter()()),
%%   <<"findingType">> => list(string_filter()()),
%%   <<"resourceId">> => list(string_filter()()),
%%   <<"firstObservedAt">> => list(date_filter()()),
%%   <<"lambdaFunctionRuntime">> => list(string_filter()()),
%%   <<"ecrImageTags">> => list(string_filter()()),
%%   <<"vendorSeverity">> => list(string_filter()()),
%%   <<"lambdaFunctionName">> => list(string_filter()()),
%%   <<"ecrImageHash">> => list(string_filter()()),
%%   <<"lastObservedAt">> => list(date_filter()()),
%%   <<"resourceType">> => list(string_filter()()),
%%   <<"fixAvailable">> => list(string_filter()()),
%%   <<"severity">> => list(string_filter()()),
%%   <<"exploitAvailable">> => list(string_filter()()),
%%   <<"title">> => list(string_filter()())
%% }
-type filter_criteria() :: #{binary() => any()}.


%% Example:
%% get_sbom_export_response() :: #{
%%   <<"errorCode">> => string(),
%%   <<"errorMessage">> => string(),
%%   <<"filterCriteria">> => resource_filter_criteria(),
%%   <<"format">> => string(),
%%   <<"reportId">> => string(),
%%   <<"s3Destination">> => destination(),
%%   <<"status">> => string()
%% }
-type get_sbom_export_response() :: #{binary() => any()}.


%% Example:
%% time() :: #{
%%   <<"timeOfDay">> => string(),
%%   <<"timezone">> => string()
%% }
-type time() :: #{binary() => any()}.


%% Example:
%% delete_cis_scan_configuration_request() :: #{
%%   <<"scanConfigurationArn">> := string()
%% }
-type delete_cis_scan_configuration_request() :: #{binary() => any()}.


%% Example:
%% disable_delegated_admin_account_response() :: #{
%%   <<"delegatedAdminAccountId">> := string()
%% }
-type disable_delegated_admin_account_response() :: #{binary() => any()}.

%% Example:
%% get_configuration_request() :: #{}
-type get_configuration_request() :: #{}.


%% Example:
%% cvss3() :: #{
%%   <<"baseScore">> => float(),
%%   <<"scoringVector">> => string()
%% }
-type cvss3() :: #{binary() => any()}.


%% Example:
%% start_cis_session_request() :: #{
%%   <<"message">> := start_cis_session_message(),
%%   <<"scanJobId">> := string()
%% }
-type start_cis_session_request() :: #{binary() => any()}.


%% Example:
%% search_vulnerabilities_filter_criteria() :: #{
%%   <<"vulnerabilityIds">> => list(string()())
%% }
-type search_vulnerabilities_filter_criteria() :: #{binary() => any()}.


%% Example:
%% member_account_ec2_deep_inspection_status() :: #{
%%   <<"accountId">> => string(),
%%   <<"activateDeepInspection">> => [boolean()]
%% }
-type member_account_ec2_deep_inspection_status() :: #{binary() => any()}.


%% Example:
%% batch_get_member_ec2_deep_inspection_status_response() :: #{
%%   <<"accountIds">> => list(member_account_ec2_deep_inspection_status_state()()),
%%   <<"failedAccountIds">> => list(failed_member_account_ec2_deep_inspection_status_state()())
%% }
-type batch_get_member_ec2_deep_inspection_status_response() :: #{binary() => any()}.


%% Example:
%% ec2_metadata() :: #{
%%   <<"amiId">> => string(),
%%   <<"platform">> => string(),
%%   <<"tags">> => map()
%% }
-type ec2_metadata() :: #{binary() => any()}.


%% Example:
%% member_account_ec2_deep_inspection_status_state() :: #{
%%   <<"accountId">> => string(),
%%   <<"errorMessage">> => string(),
%%   <<"status">> => string()
%% }
-type member_account_ec2_deep_inspection_status_state() :: #{binary() => any()}.


%% Example:
%% get_findings_report_status_response() :: #{
%%   <<"destination">> => destination(),
%%   <<"errorCode">> => string(),
%%   <<"errorMessage">> => string(),
%%   <<"filterCriteria">> => filter_criteria(),
%%   <<"reportId">> => string(),
%%   <<"status">> => string()
%% }
-type get_findings_report_status_response() :: #{binary() => any()}.


%% Example:
%% ec2_configuration() :: #{
%%   <<"scanMode">> => string()
%% }
-type ec2_configuration() :: #{binary() => any()}.


%% Example:
%% resource_state() :: #{
%%   <<"ec2">> => state(),
%%   <<"ecr">> => state(),
%%   <<"lambda">> => state(),
%%   <<"lambdaCode">> => state()
%% }
-type resource_state() :: #{binary() => any()}.


%% Example:
%% ec2_configuration_state() :: #{
%%   <<"scanModeState">> => ec2_scan_mode_state()
%% }
-type ec2_configuration_state() :: #{binary() => any()}.


%% Example:
%% list_usage_totals_request() :: #{
%%   <<"accountIds">> => list(string()()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_usage_totals_request() :: #{binary() => any()}.


%% Example:
%% delegated_admin() :: #{
%%   <<"accountId">> => string(),
%%   <<"relationshipStatus">> => string()
%% }
-type delegated_admin() :: #{binary() => any()}.


%% Example:
%% cis_scan_status_filter() :: #{
%%   <<"comparison">> => list(any()),
%%   <<"value">> => list(any())
%% }
-type cis_scan_status_filter() :: #{binary() => any()}.


%% Example:
%% list_account_permissions_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"permissions">> := list(permission()())
%% }
-type list_account_permissions_response() :: #{binary() => any()}.


%% Example:
%% get_findings_report_status_request() :: #{
%%   <<"reportId">> => string()
%% }
-type get_findings_report_status_request() :: #{binary() => any()}.


%% Example:
%% cancel_findings_report_response() :: #{
%%   <<"reportId">> := string()
%% }
-type cancel_findings_report_response() :: #{binary() => any()}.


%% Example:
%% update_cis_targets() :: #{
%%   <<"accountIds">> => list(string()()),
%%   <<"targetResourceTags">> => map()
%% }
-type update_cis_targets() :: #{binary() => any()}.


%% Example:
%% coverage_string_filter() :: #{
%%   <<"comparison">> => string(),
%%   <<"value">> => string()
%% }
-type coverage_string_filter() :: #{binary() => any()}.


%% Example:
%% list_findings_response() :: #{
%%   <<"findings">> => list(finding()()),
%%   <<"nextToken">> => string()
%% }
-type list_findings_response() :: #{binary() => any()}.


%% Example:
%% disable_response() :: #{
%%   <<"accounts">> := list(account()()),
%%   <<"failedAccounts">> => list(failed_account()())
%% }
-type disable_response() :: #{binary() => any()}.


%% Example:
%% ecr_configuration() :: #{
%%   <<"pullDateRescanDuration">> => string(),
%%   <<"rescanDuration">> => string()
%% }
-type ecr_configuration() :: #{binary() => any()}.


%% Example:
%% cis_target_resource_aggregation() :: #{
%%   <<"accountId">> => string(),
%%   <<"platform">> => [string()],
%%   <<"scanArn">> => string(),
%%   <<"statusCounts">> => status_counts(),
%%   <<"targetResourceId">> => string(),
%%   <<"targetResourceTags">> => map(),
%%   <<"targetStatus">> => list(any()),
%%   <<"targetStatusReason">> => list(any())
%% }
-type cis_target_resource_aggregation() :: #{binary() => any()}.


%% Example:
%% create_filter_response() :: #{
%%   <<"arn">> := string()
%% }
-type create_filter_response() :: #{binary() => any()}.


%% Example:
%% associate_member_response() :: #{
%%   <<"accountId">> := string()
%% }
-type associate_member_response() :: #{binary() => any()}.


%% Example:
%% cis_scan_results_aggregated_by_target_resource_filter_criteria() :: #{
%%   <<"accountIdFilters">> => list(cis_string_filter()()),
%%   <<"checkIdFilters">> => list(cis_string_filter()()),
%%   <<"failedChecksFilters">> => list(cis_number_filter()()),
%%   <<"platformFilters">> => list(cis_string_filter()()),
%%   <<"statusFilters">> => list(cis_result_status_filter()()),
%%   <<"targetResourceIdFilters">> => list(cis_string_filter()()),
%%   <<"targetResourceTagFilters">> => list(tag_filter()()),
%%   <<"targetStatusFilters">> => list(cis_target_status_filter()()),
%%   <<"targetStatusReasonFilters">> => list(cis_target_status_reason_filter()())
%% }
-type cis_scan_results_aggregated_by_target_resource_filter_criteria() :: #{binary() => any()}.


%% Example:
%% resource_status() :: #{
%%   <<"ec2">> => string(),
%%   <<"ecr">> => string(),
%%   <<"lambda">> => string(),
%%   <<"lambdaCode">> => string()
%% }
-type resource_status() :: #{binary() => any()}.


%% Example:
%% delegated_admin_account() :: #{
%%   <<"accountId">> => string(),
%%   <<"status">> => string()
%% }
-type delegated_admin_account() :: #{binary() => any()}.


%% Example:
%% resource_scan_metadata() :: #{
%%   <<"ec2">> => ec2_metadata(),
%%   <<"ecrImage">> => ecr_container_image_metadata(),
%%   <<"ecrRepository">> => ecr_repository_metadata(),
%%   <<"lambdaFunction">> => lambda_function_metadata()
%% }
-type resource_scan_metadata() :: #{binary() => any()}.


%% Example:
%% monthly_schedule() :: #{
%%   <<"day">> => list(any()),
%%   <<"startTime">> => time()
%% }
-type monthly_schedule() :: #{binary() => any()}.


%% Example:
%% associate_member_request() :: #{
%%   <<"accountId">> := string()
%% }
-type associate_member_request() :: #{binary() => any()}.


%% Example:
%% update_cis_scan_configuration_request() :: #{
%%   <<"scanConfigurationArn">> := string(),
%%   <<"scanName">> => string(),
%%   <<"schedule">> => list(),
%%   <<"securityLevel">> => list(any()),
%%   <<"targets">> => update_cis_targets()
%% }
-type update_cis_scan_configuration_request() :: #{binary() => any()}.


%% Example:
%% reset_encryption_key_request() :: #{
%%   <<"resourceType">> := string(),
%%   <<"scanType">> := string()
%% }
-type reset_encryption_key_request() :: #{binary() => any()}.


%% Example:
%% cis_scan_configuration() :: #{
%%   <<"ownerId">> => string(),
%%   <<"scanConfigurationArn">> => string(),
%%   <<"scanName">> => string(),
%%   <<"schedule">> => list(),
%%   <<"securityLevel">> => list(any()),
%%   <<"tags">> => map(),
%%   <<"targets">> => cis_targets()
%% }
-type cis_scan_configuration() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string()())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% list_cis_scan_configurations_request() :: #{
%%   <<"filterCriteria">> => list_cis_scan_configurations_filter_criteria(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"sortBy">> => list(any()),
%%   <<"sortOrder">> => list(any())
%% }
-type list_cis_scan_configurations_request() :: #{binary() => any()}.


%% Example:
%% batch_get_free_trial_info_response() :: #{
%%   <<"accounts">> := list(free_trial_account_info()()),
%%   <<"failedAccounts">> := list(free_trial_info_error()())
%% }
-type batch_get_free_trial_info_response() :: #{binary() => any()}.


%% Example:
%% update_ec2_deep_inspection_configuration_response() :: #{
%%   <<"errorMessage">> => string(),
%%   <<"orgPackagePaths">> => list(string()()),
%%   <<"packagePaths">> => list(string()()),
%%   <<"status">> => string()
%% }
-type update_ec2_deep_inspection_configuration_response() :: #{binary() => any()}.


%% Example:
%% failed_member_account_ec2_deep_inspection_status_state() :: #{
%%   <<"accountId">> => string(),
%%   <<"ec2ScanStatus">> => string(),
%%   <<"errorMessage">> => string()
%% }
-type failed_member_account_ec2_deep_inspection_status_state() :: #{binary() => any()}.


%% Example:
%% title_aggregation_response() :: #{
%%   <<"accountId">> => string(),
%%   <<"severityCounts">> => severity_counts(),
%%   <<"title">> => string(),
%%   <<"vulnerabilityId">> => [string()]
%% }
-type title_aggregation_response() :: #{binary() => any()}.


%% Example:
%% severity_counts() :: #{
%%   <<"all">> => [float()],
%%   <<"critical">> => [float()],
%%   <<"high">> => [float()],
%%   <<"medium">> => [float()]
%% }
-type severity_counts() :: #{binary() => any()}.


%% Example:
%% list_cis_scans_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"scans">> => list(cis_scan()())
%% }
-type list_cis_scans_response() :: #{binary() => any()}.


%% Example:
%% finding_type_aggregation_response() :: #{
%%   <<"accountId">> => string(),
%%   <<"exploitAvailableCount">> => [float()],
%%   <<"fixAvailableCount">> => [float()],
%%   <<"severityCounts">> => severity_counts()
%% }
-type finding_type_aggregation_response() :: #{binary() => any()}.


%% Example:
%% cancel_findings_report_request() :: #{
%%   <<"reportId">> := string()
%% }
-type cancel_findings_report_request() :: #{binary() => any()}.


%% Example:
%% usage() :: #{
%%   <<"currency">> => string(),
%%   <<"estimatedMonthlyCost">> => float(),
%%   <<"total">> => float(),
%%   <<"type">> => string()
%% }
-type usage() :: #{binary() => any()}.


%% Example:
%% stop_cis_session_request() :: #{
%%   <<"message">> := stop_cis_session_message(),
%%   <<"scanJobId">> := string(),
%%   <<"sessionToken">> := string()
%% }
-type stop_cis_session_request() :: #{binary() => any()}.


%% Example:
%% failed_account() :: #{
%%   <<"accountId">> => string(),
%%   <<"errorCode">> => string(),
%%   <<"errorMessage">> => string(),
%%   <<"resourceStatus">> => resource_status(),
%%   <<"status">> => string()
%% }
-type failed_account() :: #{binary() => any()}.


%% Example:
%% ec2_instance_aggregation() :: #{
%%   <<"amis">> => list(string_filter()()),
%%   <<"instanceIds">> => list(string_filter()()),
%%   <<"instanceTags">> => list(map_filter()()),
%%   <<"operatingSystems">> => list(string_filter()()),
%%   <<"sortBy">> => string(),
%%   <<"sortOrder">> => string()
%% }
-type ec2_instance_aggregation() :: #{binary() => any()}.


%% Example:
%% code_snippet_result() :: #{
%%   <<"codeSnippet">> => list(code_line()()),
%%   <<"endLine">> => [integer()],
%%   <<"findingArn">> => string(),
%%   <<"startLine">> => [integer()],
%%   <<"suggestedFixes">> => list(suggested_fix()())
%% }
-type code_snippet_result() :: #{binary() => any()}.


%% Example:
%% cancel_sbom_export_request() :: #{
%%   <<"reportId">> := string()
%% }
-type cancel_sbom_export_request() :: #{binary() => any()}.


%% Example:
%% list_cis_scan_results_aggregated_by_checks_response() :: #{
%%   <<"checkAggregations">> => list(cis_check_aggregation()()),
%%   <<"nextToken">> => string()
%% }
-type list_cis_scan_results_aggregated_by_checks_response() :: #{binary() => any()}.


%% Example:
%% cis_target_status_reason_filter() :: #{
%%   <<"comparison">> => list(any()),
%%   <<"value">> => list(any())
%% }
-type cis_target_status_reason_filter() :: #{binary() => any()}.


%% Example:
%% update_filter_response() :: #{
%%   <<"arn">> := string()
%% }
-type update_filter_response() :: #{binary() => any()}.


%% Example:
%% describe_organization_configuration_response() :: #{
%%   <<"autoEnable">> => auto_enable(),
%%   <<"maxAccountLimitReached">> => [boolean()]
%% }
-type describe_organization_configuration_response() :: #{binary() => any()}.


%% Example:
%% update_encryption_key_request() :: #{
%%   <<"kmsKeyId">> := string(),
%%   <<"resourceType">> := string(),
%%   <<"scanType">> := string()
%% }
-type update_encryption_key_request() :: #{binary() => any()}.

%% Example:
%% update_encryption_key_response() :: #{}
-type update_encryption_key_response() :: #{}.


%% Example:
%% create_cis_scan_configuration_response() :: #{
%%   <<"scanConfigurationArn">> => string()
%% }
-type create_cis_scan_configuration_response() :: #{binary() => any()}.


%% Example:
%% list_finding_aggregations_response() :: #{
%%   <<"aggregationType">> := string(),
%%   <<"nextToken">> => string(),
%%   <<"responses">> => list(list()())
%% }
-type list_finding_aggregations_response() :: #{binary() => any()}.


%% Example:
%% list_cis_scan_results_aggregated_by_target_resource_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"targetResourceAggregations">> => list(cis_target_resource_aggregation()())
%% }
-type list_cis_scan_results_aggregated_by_target_resource_response() :: #{binary() => any()}.


%% Example:
%% get_configuration_response() :: #{
%%   <<"ec2Configuration">> => ec2_configuration_state(),
%%   <<"ecrConfiguration">> => ecr_configuration_state()
%% }
-type get_configuration_response() :: #{binary() => any()}.


%% Example:
%% lambda_function_aggregation() :: #{
%%   <<"functionNames">> => list(string_filter()()),
%%   <<"functionTags">> => list(map_filter()()),
%%   <<"resourceIds">> => list(string_filter()()),
%%   <<"runtimes">> => list(string_filter()()),
%%   <<"sortBy">> => string(),
%%   <<"sortOrder">> => string()
%% }
-type lambda_function_aggregation() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% create_filter_request() :: #{
%%   <<"action">> := string(),
%%   <<"description">> => string(),
%%   <<"filterCriteria">> := filter_criteria(),
%%   <<"name">> := string(),
%%   <<"reason">> => string(),
%%   <<"tags">> => map()
%% }
-type create_filter_request() :: #{binary() => any()}.


%% Example:
%% coverage_date_filter() :: #{
%%   <<"endInclusive">> => non_neg_integer(),
%%   <<"startInclusive">> => non_neg_integer()
%% }
-type coverage_date_filter() :: #{binary() => any()}.


%% Example:
%% compute_platform() :: #{
%%   <<"product">> => string(),
%%   <<"vendor">> => string(),
%%   <<"version">> => string()
%% }
-type compute_platform() :: #{binary() => any()}.


%% Example:
%% send_cis_session_health_request() :: #{
%%   <<"scanJobId">> := string(),
%%   <<"sessionToken">> := string()
%% }
-type send_cis_session_health_request() :: #{binary() => any()}.


%% Example:
%% ecr_repository_metadata() :: #{
%%   <<"name">> => [string()],
%%   <<"scanFrequency">> => string()
%% }
-type ecr_repository_metadata() :: #{binary() => any()}.


%% Example:
%% get_sbom_export_request() :: #{
%%   <<"reportId">> := string()
%% }
-type get_sbom_export_request() :: #{binary() => any()}.


%% Example:
%% list_delegated_admin_accounts_response() :: #{
%%   <<"delegatedAdminAccounts">> => list(delegated_admin_account()()),
%%   <<"nextToken">> => string()
%% }
-type list_delegated_admin_accounts_response() :: #{binary() => any()}.


%% Example:
%% ecr_configuration_state() :: #{
%%   <<"rescanDurationState">> => ecr_rescan_duration_state()
%% }
-type ecr_configuration_state() :: #{binary() => any()}.


%% Example:
%% resource_filter_criteria() :: #{
%%   <<"accountId">> => list(resource_string_filter()()),
%%   <<"ec2InstanceTags">> => list(resource_map_filter()()),
%%   <<"ecrImageTags">> => list(resource_string_filter()()),
%%   <<"ecrRepositoryName">> => list(resource_string_filter()()),
%%   <<"lambdaFunctionName">> => list(resource_string_filter()()),
%%   <<"lambdaFunctionTags">> => list(resource_map_filter()()),
%%   <<"resourceId">> => list(resource_string_filter()()),
%%   <<"resourceType">> => list(resource_string_filter()())
%% }
-type resource_filter_criteria() :: #{binary() => any()}.


%% Example:
%% create_cis_targets() :: #{
%%   <<"accountIds">> => list(string()()),
%%   <<"targetResourceTags">> => map()
%% }
-type create_cis_targets() :: #{binary() => any()}.


%% Example:
%% enable_delegated_admin_account_response() :: #{
%%   <<"delegatedAdminAccountId">> := string()
%% }
-type enable_delegated_admin_account_response() :: #{binary() => any()}.


%% Example:
%% delete_cis_scan_configuration_response() :: #{
%%   <<"scanConfigurationArn">> => string()
%% }
-type delete_cis_scan_configuration_response() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"resourceId">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% code_line() :: #{
%%   <<"content">> => [string()],
%%   <<"lineNumber">> => [integer()]
%% }
-type code_line() :: #{binary() => any()}.


%% Example:
%% recommendation() :: #{
%%   <<"Url">> => string(),
%%   <<"text">> => string()
%% }
-type recommendation() :: #{binary() => any()}.


%% Example:
%% stop_cis_message_progress() :: #{
%%   <<"errorChecks">> => integer(),
%%   <<"failedChecks">> => integer(),
%%   <<"informationalChecks">> => integer(),
%%   <<"notApplicableChecks">> => integer(),
%%   <<"notEvaluatedChecks">> => integer(),
%%   <<"successfulChecks">> => integer(),
%%   <<"totalChecks">> => integer(),
%%   <<"unknownChecks">> => integer()
%% }
-type stop_cis_message_progress() :: #{binary() => any()}.


%% Example:
%% cvss2() :: #{
%%   <<"baseScore">> => float(),
%%   <<"scoringVector">> => string()
%% }
-type cvss2() :: #{binary() => any()}.


%% Example:
%% cis_check_aggregation() :: #{
%%   <<"accountId">> => string(),
%%   <<"checkDescription">> => [string()],
%%   <<"checkId">> => [string()],
%%   <<"level">> => list(any()),
%%   <<"platform">> => [string()],
%%   <<"scanArn">> => string(),
%%   <<"statusCounts">> => status_counts(),
%%   <<"title">> => [string()]
%% }
-type cis_check_aggregation() :: #{binary() => any()}.


%% Example:
%% start_cis_session_message() :: #{
%%   <<"sessionToken">> => string()
%% }
-type start_cis_session_message() :: #{binary() => any()}.


%% Example:
%% batch_get_finding_details_request() :: #{
%%   <<"findingArns">> := list(string()())
%% }
-type batch_get_finding_details_request() :: #{binary() => any()}.


%% Example:
%% code_snippet_error() :: #{
%%   <<"errorCode">> => string(),
%%   <<"errorMessage">> => string(),
%%   <<"findingArn">> => string()
%% }
-type code_snippet_error() :: #{binary() => any()}.


%% Example:
%% lambda_vpc_config() :: #{
%%   <<"securityGroupIds">> => list(string()()),
%%   <<"subnetIds">> => list(string()()),
%%   <<"vpcId">> => string()
%% }
-type lambda_vpc_config() :: #{binary() => any()}.


%% Example:
%% account() :: #{
%%   <<"accountId">> => string(),
%%   <<"resourceStatus">> => resource_status(),
%%   <<"status">> => string()
%% }
-type account() :: #{binary() => any()}.


%% Example:
%% atig_data() :: #{
%%   <<"firstSeen">> => non_neg_integer(),
%%   <<"lastSeen">> => non_neg_integer(),
%%   <<"targets">> => list(string()()),
%%   <<"ttps">> => list(string()())
%% }
-type atig_data() :: #{binary() => any()}.


%% Example:
%% cvss_score_details() :: #{
%%   <<"adjustments">> => list(cvss_score_adjustment()()),
%%   <<"cvssSource">> => string(),
%%   <<"score">> => [float()],
%%   <<"scoreSource">> => string(),
%%   <<"scoringVector">> => string(),
%%   <<"version">> => string()
%% }
-type cvss_score_details() :: #{binary() => any()}.

%% Example:
%% stop_cis_session_response() :: #{}
-type stop_cis_session_response() :: #{}.


%% Example:
%% inspector_score_details() :: #{
%%   <<"adjustedCvss">> => cvss_score_details()
%% }
-type inspector_score_details() :: #{binary() => any()}.


%% Example:
%% finding() :: #{
%%   <<"awsAccountId">> => string(),
%%   <<"codeVulnerabilityDetails">> => code_vulnerability_details(),
%%   <<"description">> => string(),
%%   <<"epss">> => epss_details(),
%%   <<"exploitAvailable">> => string(),
%%   <<"exploitabilityDetails">> => exploitability_details(),
%%   <<"findingArn">> => string(),
%%   <<"firstObservedAt">> => non_neg_integer(),
%%   <<"fixAvailable">> => string(),
%%   <<"inspectorScore">> => [float()],
%%   <<"inspectorScoreDetails">> => inspector_score_details(),
%%   <<"lastObservedAt">> => non_neg_integer(),
%%   <<"networkReachabilityDetails">> => network_reachability_details(),
%%   <<"packageVulnerabilityDetails">> => package_vulnerability_details(),
%%   <<"remediation">> => remediation(),
%%   <<"resources">> => list(resource()()),
%%   <<"severity">> => string(),
%%   <<"status">> => string(),
%%   <<"title">> => string(),
%%   <<"type">> => string(),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type finding() :: #{binary() => any()}.


%% Example:
%% free_trial_info_error() :: #{
%%   <<"accountId">> => string(),
%%   <<"code">> => string(),
%%   <<"message">> => [string()]
%% }
-type free_trial_info_error() :: #{binary() => any()}.


%% Example:
%% vulnerable_package() :: #{
%%   <<"arch">> => string(),
%%   <<"epoch">> => integer(),
%%   <<"filePath">> => string(),
%%   <<"fixedInVersion">> => string(),
%%   <<"name">> => string(),
%%   <<"packageManager">> => string(),
%%   <<"release">> => string(),
%%   <<"remediation">> => string(),
%%   <<"sourceLambdaLayerArn">> => string(),
%%   <<"sourceLayerHash">> => string(),
%%   <<"version">> => string()
%% }
-type vulnerable_package() :: #{binary() => any()}.


%% Example:
%% port_range_filter() :: #{
%%   <<"beginInclusive">> => integer(),
%%   <<"endInclusive">> => integer()
%% }
-type port_range_filter() :: #{binary() => any()}.


%% Example:
%% finding_type_aggregation() :: #{
%%   <<"findingType">> => string(),
%%   <<"resourceType">> => string(),
%%   <<"sortBy">> => string(),
%%   <<"sortOrder">> => string()
%% }
-type finding_type_aggregation() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% date_filter() :: #{
%%   <<"endInclusive">> => [non_neg_integer()],
%%   <<"startInclusive">> => [non_neg_integer()]
%% }
-type date_filter() :: #{binary() => any()}.


%% Example:
%% list_findings_request() :: #{
%%   <<"filterCriteria">> => filter_criteria(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"sortCriteria">> => sort_criteria()
%% }
-type list_findings_request() :: #{binary() => any()}.


%% Example:
%% cvss_score_adjustment() :: #{
%%   <<"metric">> => string(),
%%   <<"reason">> => string()
%% }
-type cvss_score_adjustment() :: #{binary() => any()}.


%% Example:
%% list_usage_totals_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"totals">> => list(usage_total()())
%% }
-type list_usage_totals_response() :: #{binary() => any()}.


%% Example:
%% cisa_data() :: #{
%%   <<"action">> => string(),
%%   <<"dateAdded">> => non_neg_integer(),
%%   <<"dateDue">> => non_neg_integer()
%% }
-type cisa_data() :: #{binary() => any()}.


%% Example:
%% validation_exception_field() :: #{
%%   <<"message">> => [string()],
%%   <<"name">> => [string()]
%% }
-type validation_exception_field() :: #{binary() => any()}.


%% Example:
%% resource_map_filter() :: #{
%%   <<"comparison">> => string(),
%%   <<"key">> => string(),
%%   <<"value">> => string()
%% }
-type resource_map_filter() :: #{binary() => any()}.


%% Example:
%% delete_filter_response() :: #{
%%   <<"arn">> := string()
%% }
-type delete_filter_response() :: #{binary() => any()}.


%% Example:
%% repository_aggregation_response() :: #{
%%   <<"accountId">> => string(),
%%   <<"affectedImages">> => [float()],
%%   <<"repository">> => string(),
%%   <<"severityCounts">> => severity_counts()
%% }
-type repository_aggregation_response() :: #{binary() => any()}.


%% Example:
%% lambda_function_aggregation_response() :: #{
%%   <<"accountId">> => string(),
%%   <<"functionName">> => [string()],
%%   <<"lambdaTags">> => map(),
%%   <<"lastModifiedAt">> => non_neg_integer(),
%%   <<"resourceId">> => string(),
%%   <<"runtime">> => [string()],
%%   <<"severityCounts">> => severity_counts()
%% }
-type lambda_function_aggregation_response() :: #{binary() => any()}.


%% Example:
%% list_coverage_response() :: #{
%%   <<"coveredResources">> => list(covered_resource()()),
%%   <<"nextToken">> => string()
%% }
-type list_coverage_response() :: #{binary() => any()}.


%% Example:
%% get_member_request() :: #{
%%   <<"accountId">> := string()
%% }
-type get_member_request() :: #{binary() => any()}.


%% Example:
%% update_organization_configuration_response() :: #{
%%   <<"autoEnable">> := auto_enable()
%% }
-type update_organization_configuration_response() :: #{binary() => any()}.


%% Example:
%% search_vulnerabilities_request() :: #{
%%   <<"filterCriteria">> := search_vulnerabilities_filter_criteria(),
%%   <<"nextToken">> => string()
%% }
-type search_vulnerabilities_request() :: #{binary() => any()}.


%% Example:
%% list_cis_scan_configurations_filter_criteria() :: #{
%%   <<"scanConfigurationArnFilters">> => list(cis_string_filter()()),
%%   <<"scanNameFilters">> => list(cis_string_filter()()),
%%   <<"targetResourceTagFilters">> => list(tag_filter()())
%% }
-type list_cis_scan_configurations_filter_criteria() :: #{binary() => any()}.

%% Example:
%% get_delegated_admin_account_request() :: #{}
-type get_delegated_admin_account_request() :: #{}.


%% Example:
%% cis_security_level_filter() :: #{
%%   <<"comparison">> => list(any()),
%%   <<"value">> => list(any())
%% }
-type cis_security_level_filter() :: #{binary() => any()}.


%% Example:
%% covered_resource() :: #{
%%   <<"accountId">> => string(),
%%   <<"lastScannedAt">> => non_neg_integer(),
%%   <<"resourceId">> => string(),
%%   <<"resourceMetadata">> => resource_scan_metadata(),
%%   <<"resourceType">> => string(),
%%   <<"scanMode">> => string(),
%%   <<"scanStatus">> => scan_status(),
%%   <<"scanType">> => string()
%% }
-type covered_resource() :: #{binary() => any()}.


%% Example:
%% filter() :: #{
%%   <<"action">> => string(),
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"criteria">> => filter_criteria(),
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"ownerId">> => string(),
%%   <<"reason">> => string(),
%%   <<"tags">> => map(),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type filter() :: #{binary() => any()}.


%% Example:
%% create_sbom_export_response() :: #{
%%   <<"reportId">> => string()
%% }
-type create_sbom_export_response() :: #{binary() => any()}.


%% Example:
%% list_cis_scan_configurations_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"scanConfigurations">> => list(cis_scan_configuration()())
%% }
-type list_cis_scan_configurations_response() :: #{binary() => any()}.


%% Example:
%% finding_detail() :: #{
%%   <<"cisaData">> => cisa_data(),
%%   <<"cwes">> => list(string()()),
%%   <<"epssScore">> => [float()],
%%   <<"evidences">> => list(evidence()()),
%%   <<"exploitObserved">> => exploit_observed(),
%%   <<"findingArn">> => string(),
%%   <<"referenceUrls">> => list(string()()),
%%   <<"riskScore">> => integer(),
%%   <<"tools">> => list(string()()),
%%   <<"ttps">> => list(string()())
%% }
-type finding_detail() :: #{binary() => any()}.


%% Example:
%% lambda_function_metadata() :: #{
%%   <<"functionName">> => [string()],
%%   <<"functionTags">> => map(),
%%   <<"layers">> => list([string()]()),
%%   <<"runtime">> => string()
%% }
-type lambda_function_metadata() :: #{binary() => any()}.


%% Example:
%% list_account_permissions_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"service">> => string()
%% }
-type list_account_permissions_request() :: #{binary() => any()}.


%% Example:
%% cis_session_message() :: #{
%%   <<"cisRuleDetails">> => binary(),
%%   <<"ruleId">> => string(),
%%   <<"status">> => list(any())
%% }
-type cis_session_message() :: #{binary() => any()}.


%% Example:
%% list_delegated_admin_accounts_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_delegated_admin_accounts_request() :: #{binary() => any()}.


%% Example:
%% ecr_rescan_duration_state() :: #{
%%   <<"pullDateRescanDuration">> => string(),
%%   <<"rescanDuration">> => string(),
%%   <<"status">> => string(),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type ecr_rescan_duration_state() :: #{binary() => any()}.


%% Example:
%% cis_number_filter() :: #{
%%   <<"lowerInclusive">> => [integer()],
%%   <<"upperInclusive">> => [integer()]
%% }
-type cis_number_filter() :: #{binary() => any()}.


%% Example:
%% create_findings_report_request() :: #{
%%   <<"filterCriteria">> => filter_criteria(),
%%   <<"reportFormat">> := string(),
%%   <<"s3Destination">> := destination()
%% }
-type create_findings_report_request() :: #{binary() => any()}.

%% Example:
%% update_configuration_response() :: #{}
-type update_configuration_response() :: #{}.


%% Example:
%% ecr_container_image_metadata() :: #{
%%   <<"imagePulledAt">> => non_neg_integer(),
%%   <<"tags">> => list([string()]())
%% }
-type ecr_container_image_metadata() :: #{binary() => any()}.


%% Example:
%% update_filter_request() :: #{
%%   <<"action">> => string(),
%%   <<"description">> => string(),
%%   <<"filterArn">> := string(),
%%   <<"filterCriteria">> => filter_criteria(),
%%   <<"name">> => string(),
%%   <<"reason">> => string()
%% }
-type update_filter_request() :: #{binary() => any()}.


%% Example:
%% account_aggregation_response() :: #{
%%   <<"accountId">> => string(),
%%   <<"exploitAvailableCount">> => [float()],
%%   <<"fixAvailableCount">> => [float()],
%%   <<"severityCounts">> => severity_counts()
%% }
-type account_aggregation_response() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"retryAfterSeconds">> => [integer()]
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% send_cis_session_health_response() :: #{}
-type send_cis_session_health_response() :: #{}.


%% Example:
%% batch_get_account_status_response() :: #{
%%   <<"accounts">> := list(account_state()()),
%%   <<"failedAccounts">> => list(failed_account()())
%% }
-type batch_get_account_status_response() :: #{binary() => any()}.


%% Example:
%% batch_get_free_trial_info_request() :: #{
%%   <<"accountIds">> := list(string()())
%% }
-type batch_get_free_trial_info_request() :: #{binary() => any()}.


%% Example:
%% get_member_response() :: #{
%%   <<"member">> => member()
%% }
-type get_member_response() :: #{binary() => any()}.


%% Example:
%% epss_details() :: #{
%%   <<"score">> => float()
%% }
-type epss_details() :: #{binary() => any()}.


%% Example:
%% port_range() :: #{
%%   <<"begin">> => integer(),
%%   <<"end">> => integer()
%% }
-type port_range() :: #{binary() => any()}.


%% Example:
%% update_organization_configuration_request() :: #{
%%   <<"autoEnable">> := auto_enable()
%% }
-type update_organization_configuration_request() :: #{binary() => any()}.


%% Example:
%% enable_response() :: #{
%%   <<"accounts">> := list(account()()),
%%   <<"failedAccounts">> => list(failed_account()())
%% }
-type enable_response() :: #{binary() => any()}.


%% Example:
%% package_aggregation_response() :: #{
%%   <<"accountId">> => string(),
%%   <<"packageName">> => string(),
%%   <<"severityCounts">> => severity_counts()
%% }
-type package_aggregation_response() :: #{binary() => any()}.


%% Example:
%% list_cis_scans_request() :: #{
%%   <<"detailLevel">> => list(any()),
%%   <<"filterCriteria">> => list_cis_scans_filter_criteria(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"sortBy">> => list(any()),
%%   <<"sortOrder">> => list(any())
%% }
-type list_cis_scans_request() :: #{binary() => any()}.


%% Example:
%% image_layer_aggregation() :: #{
%%   <<"layerHashes">> => list(string_filter()()),
%%   <<"repositories">> => list(string_filter()()),
%%   <<"resourceIds">> => list(string_filter()()),
%%   <<"sortBy">> => string(),
%%   <<"sortOrder">> => string()
%% }
-type image_layer_aggregation() :: #{binary() => any()}.


%% Example:
%% account_aggregation() :: #{
%%   <<"findingType">> => string(),
%%   <<"resourceType">> => string(),
%%   <<"sortBy">> => string(),
%%   <<"sortOrder">> => string()
%% }
-type account_aggregation() :: #{binary() => any()}.


%% Example:
%% lambda_layer_aggregation() :: #{
%%   <<"functionNames">> => list(string_filter()()),
%%   <<"layerArns">> => list(string_filter()()),
%%   <<"resourceIds">> => list(string_filter()()),
%%   <<"sortBy">> => string(),
%%   <<"sortOrder">> => string()
%% }
-type lambda_layer_aggregation() :: #{binary() => any()}.


%% Example:
%% network_reachability_details() :: #{
%%   <<"networkPath">> => network_path(),
%%   <<"openPortRange">> => port_range(),
%%   <<"protocol">> => string()
%% }
-type network_reachability_details() :: #{binary() => any()}.


%% Example:
%% batch_get_code_snippet_request() :: #{
%%   <<"findingArns">> := list(string()())
%% }
-type batch_get_code_snippet_request() :: #{binary() => any()}.


%% Example:
%% cis_scan() :: #{
%%   <<"failedChecks">> => [integer()],
%%   <<"scanArn">> => string(),
%%   <<"scanConfigurationArn">> => string(),
%%   <<"scanDate">> => [non_neg_integer()],
%%   <<"scanName">> => string(),
%%   <<"scheduledBy">> => [string()],
%%   <<"securityLevel">> => list(any()),
%%   <<"status">> => list(any()),
%%   <<"targets">> => cis_targets(),
%%   <<"totalChecks">> => [integer()]
%% }
-type cis_scan() :: #{binary() => any()}.


%% Example:
%% create_cis_scan_configuration_request() :: #{
%%   <<"scanName">> := string(),
%%   <<"schedule">> := list(),
%%   <<"securityLevel">> := list(any()),
%%   <<"tags">> => map(),
%%   <<"targets">> := create_cis_targets()
%% }
-type create_cis_scan_configuration_request() :: #{binary() => any()}.


%% Example:
%% finding_details_error() :: #{
%%   <<"errorCode">> => string(),
%%   <<"errorMessage">> => string(),
%%   <<"findingArn">> => string()
%% }
-type finding_details_error() :: #{binary() => any()}.


%% Example:
%% sort_criteria() :: #{
%%   <<"field">> => string(),
%%   <<"sortOrder">> => string()
%% }
-type sort_criteria() :: #{binary() => any()}.


%% Example:
%% weekly_schedule() :: #{
%%   <<"days">> => list(list(any())()),
%%   <<"startTime">> => time()
%% }
-type weekly_schedule() :: #{binary() => any()}.


%% Example:
%% package_vulnerability_details() :: #{
%%   <<"cvss">> => list(cvss_score()()),
%%   <<"referenceUrls">> => list(string()()),
%%   <<"relatedVulnerabilities">> => list(string()()),
%%   <<"source">> => string(),
%%   <<"sourceUrl">> => string(),
%%   <<"vendorCreatedAt">> => non_neg_integer(),
%%   <<"vendorSeverity">> => string(),
%%   <<"vendorUpdatedAt">> => non_neg_integer(),
%%   <<"vulnerabilityId">> => string(),
%%   <<"vulnerablePackages">> => list(vulnerable_package()())
%% }
-type package_vulnerability_details() :: #{binary() => any()}.


%% Example:
%% cvss_score() :: #{
%%   <<"baseScore">> => [float()],
%%   <<"scoringVector">> => string(),
%%   <<"source">> => string(),
%%   <<"version">> => string()
%% }
-type cvss_score() :: #{binary() => any()}.


%% Example:
%% aws_ec2_instance_details() :: #{
%%   <<"iamInstanceProfileArn">> => string(),
%%   <<"imageId">> => string(),
%%   <<"ipV4Addresses">> => list(string()()),
%%   <<"ipV6Addresses">> => list(string()()),
%%   <<"keyName">> => string(),
%%   <<"launchedAt">> => non_neg_integer(),
%%   <<"platform">> => string(),
%%   <<"subnetId">> => string(),
%%   <<"type">> => string(),
%%   <<"vpcId">> => string()
%% }
-type aws_ec2_instance_details() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% batch_get_member_ec2_deep_inspection_status_request() :: #{
%%   <<"accountIds">> => list(string()())
%% }
-type batch_get_member_ec2_deep_inspection_status_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% epss() :: #{
%%   <<"score">> => float()
%% }
-type epss() :: #{binary() => any()}.


%% Example:
%% exploit_observed() :: #{
%%   <<"firstSeen">> => non_neg_integer(),
%%   <<"lastSeen">> => non_neg_integer()
%% }
-type exploit_observed() :: #{binary() => any()}.


%% Example:
%% list_members_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"onlyAssociated">> => [boolean()]
%% }
-type list_members_request() :: #{binary() => any()}.


%% Example:
%% list_members_response() :: #{
%%   <<"members">> => list(member()()),
%%   <<"nextToken">> => string()
%% }
-type list_members_response() :: #{binary() => any()}.


%% Example:
%% get_ec2_deep_inspection_configuration_response() :: #{
%%   <<"errorMessage">> => string(),
%%   <<"orgPackagePaths">> => list(string()()),
%%   <<"packagePaths">> => list(string()()),
%%   <<"status">> => string()
%% }
-type get_ec2_deep_inspection_configuration_response() :: #{binary() => any()}.


%% Example:
%% disable_delegated_admin_account_request() :: #{
%%   <<"delegatedAdminAccountId">> := string()
%% }
-type disable_delegated_admin_account_request() :: #{binary() => any()}.


%% Example:
%% cis_string_filter() :: #{
%%   <<"comparison">> => list(any()),
%%   <<"value">> => [string()]
%% }
-type cis_string_filter() :: #{binary() => any()}.


%% Example:
%% free_trial_info() :: #{
%%   <<"end">> => [non_neg_integer()],
%%   <<"start">> => [non_neg_integer()],
%%   <<"status">> => string(),
%%   <<"type">> => string()
%% }
-type free_trial_info() :: #{binary() => any()}.

%% Example:
%% start_cis_session_response() :: #{}
-type start_cis_session_response() :: #{}.


%% Example:
%% get_cis_scan_report_request() :: #{
%%   <<"reportFormat">> => list(any()),
%%   <<"scanArn">> := string(),
%%   <<"targetAccounts">> => list(string()())
%% }
-type get_cis_scan_report_request() :: #{binary() => any()}.


%% Example:
%% update_cis_scan_configuration_response() :: #{
%%   <<"scanConfigurationArn">> => string()
%% }
-type update_cis_scan_configuration_response() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"fields">> => list(validation_exception_field()()),
%%   <<"message">> => [string()],
%%   <<"reason">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% get_cis_scan_result_details_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"scanResultDetails">> => list(cis_scan_result_details()())
%% }
-type get_cis_scan_result_details_response() :: #{binary() => any()}.


%% Example:
%% list_coverage_request() :: #{
%%   <<"filterCriteria">> => coverage_filter_criteria(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_coverage_request() :: #{binary() => any()}.


%% Example:
%% destination() :: #{
%%   <<"bucketName">> => [string()],
%%   <<"keyPrefix">> => [string()],
%%   <<"kmsKeyArn">> => [string()]
%% }
-type destination() :: #{binary() => any()}.


%% Example:
%% resource_string_filter() :: #{
%%   <<"comparison">> => string(),
%%   <<"value">> => string()
%% }
-type resource_string_filter() :: #{binary() => any()}.


%% Example:
%% list_coverage_statistics_response() :: #{
%%   <<"countsByGroup">> => list(counts()()),
%%   <<"nextToken">> => string(),
%%   <<"totalCounts">> := [float()]
%% }
-type list_coverage_statistics_response() :: #{binary() => any()}.


%% Example:
%% cis_target_status_filter() :: #{
%%   <<"comparison">> => list(any()),
%%   <<"value">> => list(any())
%% }
-type cis_target_status_filter() :: #{binary() => any()}.


%% Example:
%% list_coverage_statistics_request() :: #{
%%   <<"filterCriteria">> => coverage_filter_criteria(),
%%   <<"groupBy">> => string(),
%%   <<"nextToken">> => string()
%% }
-type list_coverage_statistics_request() :: #{binary() => any()}.


%% Example:
%% daily_schedule() :: #{
%%   <<"startTime">> => time()
%% }
-type daily_schedule() :: #{binary() => any()}.

%% Example:
%% get_ec2_deep_inspection_configuration_request() :: #{}
-type get_ec2_deep_inspection_configuration_request() :: #{}.


%% Example:
%% evidence() :: #{
%%   <<"evidenceDetail">> => string(),
%%   <<"evidenceRule">> => string(),
%%   <<"severity">> => string()
%% }
-type evidence() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"retryAfterSeconds">> => [integer()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% coverage_filter_criteria() :: #{
%%   <<"accountId">> => list(coverage_string_filter()()),
%%   <<"ec2InstanceTags">> => list(coverage_map_filter()()),
%%   <<"ecrImageTags">> => list(coverage_string_filter()()),
%%   <<"ecrRepositoryName">> => list(coverage_string_filter()()),
%%   <<"imagePulledAt">> => list(coverage_date_filter()()),
%%   <<"lambdaFunctionName">> => list(coverage_string_filter()()),
%%   <<"lambdaFunctionRuntime">> => list(coverage_string_filter()()),
%%   <<"lambdaFunctionTags">> => list(coverage_map_filter()()),
%%   <<"lastScannedAt">> => list(coverage_date_filter()()),
%%   <<"resourceId">> => list(coverage_string_filter()()),
%%   <<"resourceType">> => list(coverage_string_filter()()),
%%   <<"scanMode">> => list(coverage_string_filter()()),
%%   <<"scanStatusCode">> => list(coverage_string_filter()()),
%%   <<"scanStatusReason">> => list(coverage_string_filter()()),
%%   <<"scanType">> => list(coverage_string_filter()())
%% }
-type coverage_filter_criteria() :: #{binary() => any()}.


%% Example:
%% cancel_sbom_export_response() :: #{
%%   <<"reportId">> => string()
%% }
-type cancel_sbom_export_response() :: #{binary() => any()}.


%% Example:
%% batch_get_account_status_request() :: #{
%%   <<"accountIds">> => list(string()())
%% }
-type batch_get_account_status_request() :: #{binary() => any()}.


%% Example:
%% stop_cis_session_message() :: #{
%%   <<"benchmarkProfile">> => string(),
%%   <<"benchmarkVersion">> => string(),
%%   <<"computePlatform">> => compute_platform(),
%%   <<"progress">> => stop_cis_message_progress(),
%%   <<"reason">> => string(),
%%   <<"status">> => list(any())
%% }
-type stop_cis_session_message() :: #{binary() => any()}.


%% Example:
%% ami_aggregation() :: #{
%%   <<"amis">> => list(string_filter()()),
%%   <<"sortBy">> => string(),
%%   <<"sortOrder">> => string()
%% }
-type ami_aggregation() :: #{binary() => any()}.


%% Example:
%% member() :: #{
%%   <<"accountId">> => string(),
%%   <<"delegatedAdminAccountId">> => string(),
%%   <<"relationshipStatus">> => string(),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type member() :: #{binary() => any()}.


%% Example:
%% string_filter() :: #{
%%   <<"comparison">> => string(),
%%   <<"value">> => string()
%% }
-type string_filter() :: #{binary() => any()}.


%% Example:
%% list_cis_scan_results_aggregated_by_checks_request() :: #{
%%   <<"filterCriteria">> => cis_scan_results_aggregated_by_checks_filter_criteria(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"scanArn">> := string(),
%%   <<"sortBy">> => list(any()),
%%   <<"sortOrder">> => list(any())
%% }
-type list_cis_scan_results_aggregated_by_checks_request() :: #{binary() => any()}.


%% Example:
%% package_aggregation() :: #{
%%   <<"packageNames">> => list(string_filter()()),
%%   <<"sortBy">> => string(),
%%   <<"sortOrder">> => string()
%% }
-type package_aggregation() :: #{binary() => any()}.


%% Example:
%% status_counts() :: #{
%%   <<"failed">> => [integer()],
%%   <<"passed">> => [integer()],
%%   <<"skipped">> => [integer()]
%% }
-type status_counts() :: #{binary() => any()}.


%% Example:
%% cis_scan_results_aggregated_by_checks_filter_criteria() :: #{
%%   <<"accountIdFilters">> => list(cis_string_filter()()),
%%   <<"checkIdFilters">> => list(cis_string_filter()()),
%%   <<"failedResourcesFilters">> => list(cis_number_filter()()),
%%   <<"platformFilters">> => list(cis_string_filter()()),
%%   <<"securityLevelFilters">> => list(cis_security_level_filter()()),
%%   <<"titleFilters">> => list(cis_string_filter()())
%% }
-type cis_scan_results_aggregated_by_checks_filter_criteria() :: #{binary() => any()}.


%% Example:
%% scan_status() :: #{
%%   <<"reason">> => string(),
%%   <<"statusCode">> => string()
%% }
-type scan_status() :: #{binary() => any()}.


%% Example:
%% get_encryption_key_request() :: #{
%%   <<"resourceType">> := string(),
%%   <<"scanType">> := string()
%% }
-type get_encryption_key_request() :: #{binary() => any()}.


%% Example:
%% cis_result_status_filter() :: #{
%%   <<"comparison">> => list(any()),
%%   <<"value">> => list(any())
%% }
-type cis_result_status_filter() :: #{binary() => any()}.


%% Example:
%% list_finding_aggregations_request() :: #{
%%   <<"accountIds">> => list(string_filter()()),
%%   <<"aggregationRequest">> => list(),
%%   <<"aggregationType">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_finding_aggregations_request() :: #{binary() => any()}.

%% Example:
%% one_time_schedule() :: #{}
-type one_time_schedule() :: #{}.


%% Example:
%% bad_request_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type bad_request_exception() :: #{binary() => any()}.


%% Example:
%% ec2_instance_aggregation_response() :: #{
%%   <<"accountId">> => [string()],
%%   <<"ami">> => string(),
%%   <<"instanceId">> => string(),
%%   <<"instanceTags">> => map(),
%%   <<"networkFindings">> => [float()],
%%   <<"operatingSystem">> => [string()],
%%   <<"severityCounts">> => severity_counts()
%% }
-type ec2_instance_aggregation_response() :: #{binary() => any()}.


%% Example:
%% list_cis_scan_results_aggregated_by_target_resource_request() :: #{
%%   <<"filterCriteria">> => cis_scan_results_aggregated_by_target_resource_filter_criteria(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"scanArn">> := string(),
%%   <<"sortBy">> => list(any()),
%%   <<"sortOrder">> => list(any())
%% }
-type list_cis_scan_results_aggregated_by_target_resource_request() :: #{binary() => any()}.


%% Example:
%% aws_ecr_container_aggregation() :: #{
%%   <<"architectures">> => list(string_filter()()),
%%   <<"imageShas">> => list(string_filter()()),
%%   <<"imageTags">> => list(string_filter()()),
%%   <<"repositories">> => list(string_filter()()),
%%   <<"resourceIds">> => list(string_filter()()),
%%   <<"sortBy">> => string(),
%%   <<"sortOrder">> => string()
%% }
-type aws_ecr_container_aggregation() :: #{binary() => any()}.


%% Example:
%% tag_filter() :: #{
%%   <<"comparison">> => list(any()),
%%   <<"key">> => string(),
%%   <<"value">> => string()
%% }
-type tag_filter() :: #{binary() => any()}.


%% Example:
%% batch_get_code_snippet_response() :: #{
%%   <<"codeSnippetResults">> => list(code_snippet_result()()),
%%   <<"errors">> => list(code_snippet_error()())
%% }
-type batch_get_code_snippet_response() :: #{binary() => any()}.


%% Example:
%% package_filter() :: #{
%%   <<"architecture">> => string_filter(),
%%   <<"epoch">> => number_filter(),
%%   <<"filePath">> => string_filter(),
%%   <<"name">> => string_filter(),
%%   <<"release">> => string_filter(),
%%   <<"sourceLambdaLayerArn">> => string_filter(),
%%   <<"sourceLayerHash">> => string_filter(),
%%   <<"version">> => string_filter()
%% }
-type package_filter() :: #{binary() => any()}.


%% Example:
%% step() :: #{
%%   <<"componentArn">> => string(),
%%   <<"componentId">> => string(),
%%   <<"componentType">> => string()
%% }
-type step() :: #{binary() => any()}.


%% Example:
%% exploitability_details() :: #{
%%   <<"lastKnownExploitAt">> => non_neg_integer()
%% }
-type exploitability_details() :: #{binary() => any()}.


%% Example:
%% resource_details() :: #{
%%   <<"awsEc2Instance">> => aws_ec2_instance_details(),
%%   <<"awsEcrContainerImage">> => aws_ecr_container_image_details(),
%%   <<"awsLambdaFunction">> => aws_lambda_function_details()
%% }
-type resource_details() :: #{binary() => any()}.


%% Example:
%% batch_update_member_ec2_deep_inspection_status_request() :: #{
%%   <<"accountIds">> := list(member_account_ec2_deep_inspection_status()())
%% }
-type batch_update_member_ec2_deep_inspection_status_request() :: #{binary() => any()}.

%% Example:
%% send_cis_session_telemetry_response() :: #{}
-type send_cis_session_telemetry_response() :: #{}.


%% Example:
%% batch_update_member_ec2_deep_inspection_status_response() :: #{
%%   <<"accountIds">> => list(member_account_ec2_deep_inspection_status_state()()),
%%   <<"failedAccountIds">> => list(failed_member_account_ec2_deep_inspection_status_state()())
%% }
-type batch_update_member_ec2_deep_inspection_status_response() :: #{binary() => any()}.


%% Example:
%% auto_enable() :: #{
%%   <<"ec2">> => [boolean()],
%%   <<"ecr">> => [boolean()],
%%   <<"lambda">> => [boolean()],
%%   <<"lambdaCode">> => [boolean()]
%% }
-type auto_enable() :: #{binary() => any()}.


%% Example:
%% cis_scan_result_details() :: #{
%%   <<"accountId">> => string(),
%%   <<"checkDescription">> => [string()],
%%   <<"checkId">> => [string()],
%%   <<"findingArn">> => string(),
%%   <<"level">> => list(any()),
%%   <<"platform">> => [string()],
%%   <<"remediation">> => [string()],
%%   <<"scanArn">> => string(),
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()],
%%   <<"targetResourceId">> => string(),
%%   <<"title">> => [string()]
%% }
-type cis_scan_result_details() :: #{binary() => any()}.


%% Example:
%% get_cis_scan_report_response() :: #{
%%   <<"status">> => list(any()),
%%   <<"url">> => [string()]
%% }
-type get_cis_scan_report_response() :: #{binary() => any()}.


%% Example:
%% send_cis_session_telemetry_request() :: #{
%%   <<"messages">> := list(cis_session_message()()),
%%   <<"scanJobId">> := string(),
%%   <<"sessionToken">> := string()
%% }
-type send_cis_session_telemetry_request() :: #{binary() => any()}.


%% Example:
%% enable_delegated_admin_account_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"delegatedAdminAccountId">> := string()
%% }
-type enable_delegated_admin_account_request() :: #{binary() => any()}.


%% Example:
%% image_layer_aggregation_response() :: #{
%%   <<"accountId">> => string(),
%%   <<"layerHash">> => string(),
%%   <<"repository">> => string(),
%%   <<"resourceId">> => string(),
%%   <<"severityCounts">> => severity_counts()
%% }
-type image_layer_aggregation_response() :: #{binary() => any()}.


%% Example:
%% lambda_layer_aggregation_response() :: #{
%%   <<"accountId">> => string(),
%%   <<"functionName">> => string(),
%%   <<"layerArn">> => string(),
%%   <<"resourceId">> => string(),
%%   <<"severityCounts">> => severity_counts()
%% }
-type lambda_layer_aggregation_response() :: #{binary() => any()}.


%% Example:
%% aws_ecr_container_image_details() :: #{
%%   <<"architecture">> => string(),
%%   <<"author">> => [string()],
%%   <<"imageHash">> => string(),
%%   <<"imageTags">> => list(string()()),
%%   <<"platform">> => string(),
%%   <<"pushedAt">> => non_neg_integer(),
%%   <<"registry">> => string(),
%%   <<"repositoryName">> => string()
%% }
-type aws_ecr_container_image_details() :: #{binary() => any()}.


%% Example:
%% disassociate_member_response() :: #{
%%   <<"accountId">> := string()
%% }
-type disassociate_member_response() :: #{binary() => any()}.


%% Example:
%% title_aggregation() :: #{
%%   <<"findingType">> => string(),
%%   <<"resourceType">> => string(),
%%   <<"sortBy">> => string(),
%%   <<"sortOrder">> => string(),
%%   <<"titles">> => list(string_filter()()),
%%   <<"vulnerabilityIds">> => list(string_filter()())
%% }
-type title_aggregation() :: #{binary() => any()}.

%% Example:
%% update_org_ec2_deep_inspection_configuration_response() :: #{}
-type update_org_ec2_deep_inspection_configuration_response() :: #{}.


%% Example:
%% get_cis_scan_result_details_request() :: #{
%%   <<"accountId">> := string(),
%%   <<"filterCriteria">> => cis_scan_result_details_filter_criteria(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"scanArn">> := string(),
%%   <<"sortBy">> => list(any()),
%%   <<"sortOrder">> => list(any()),
%%   <<"targetResourceId">> := string()
%% }
-type get_cis_scan_result_details_request() :: #{binary() => any()}.

%% Example:
%% reset_encryption_key_response() :: #{}
-type reset_encryption_key_response() :: #{}.


%% Example:
%% aws_lambda_function_details() :: #{
%%   <<"architectures">> => list(string()()),
%%   <<"codeSha256">> => string(),
%%   <<"executionRoleArn">> => string(),
%%   <<"functionName">> => string(),
%%   <<"lastModifiedAt">> => [non_neg_integer()],
%%   <<"layers">> => list(string()()),
%%   <<"packageType">> => string(),
%%   <<"runtime">> => string(),
%%   <<"version">> => string(),
%%   <<"vpcConfig">> => lambda_vpc_config()
%% }
-type aws_lambda_function_details() :: #{binary() => any()}.


%% Example:
%% ec2_scan_mode_state() :: #{
%%   <<"scanMode">> => string(),
%%   <<"scanModeStatus">> => string()
%% }
-type ec2_scan_mode_state() :: #{binary() => any()}.


%% Example:
%% cis_date_filter() :: #{
%%   <<"earliestScanStartTime">> => [non_neg_integer()],
%%   <<"latestScanStartTime">> => [non_neg_integer()]
%% }
-type cis_date_filter() :: #{binary() => any()}.


%% Example:
%% cis_scan_result_details_filter_criteria() :: #{
%%   <<"checkIdFilters">> => list(cis_string_filter()()),
%%   <<"findingArnFilters">> => list(cis_string_filter()()),
%%   <<"findingStatusFilters">> => list(cis_finding_status_filter()()),
%%   <<"securityLevelFilters">> => list(cis_security_level_filter()()),
%%   <<"titleFilters">> => list(cis_string_filter()())
%% }
-type cis_scan_result_details_filter_criteria() :: #{binary() => any()}.


%% Example:
%% list_filters_response() :: #{
%%   <<"filters">> := list(filter()()),
%%   <<"nextToken">> => string()
%% }
-type list_filters_response() :: #{binary() => any()}.


%% Example:
%% permission() :: #{
%%   <<"operation">> => string(),
%%   <<"service">> => string()
%% }
-type permission() :: #{binary() => any()}.


%% Example:
%% search_vulnerabilities_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"vulnerabilities">> => list(vulnerability()())
%% }
-type search_vulnerabilities_response() :: #{binary() => any()}.


%% Example:
%% free_trial_account_info() :: #{
%%   <<"accountId">> => string(),
%%   <<"freeTrialInfo">> => list(free_trial_info()())
%% }
-type free_trial_account_info() :: #{binary() => any()}.


%% Example:
%% update_org_ec2_deep_inspection_configuration_request() :: #{
%%   <<"orgPackagePaths">> := list(string()())
%% }
-type update_org_ec2_deep_inspection_configuration_request() :: #{binary() => any()}.


%% Example:
%% delete_filter_request() :: #{
%%   <<"arn">> := string()
%% }
-type delete_filter_request() :: #{binary() => any()}.


%% Example:
%% aws_ecr_container_aggregation_response() :: #{
%%   <<"accountId">> => string(),
%%   <<"architecture">> => [string()],
%%   <<"imageSha">> => [string()],
%%   <<"imageTags">> => list(string()()),
%%   <<"repository">> => [string()],
%%   <<"resourceId">> => string(),
%%   <<"severityCounts">> => severity_counts()
%% }
-type aws_ecr_container_aggregation_response() :: #{binary() => any()}.


%% Example:
%% account_state() :: #{
%%   <<"accountId">> => string(),
%%   <<"resourceState">> => resource_state(),
%%   <<"state">> => state()
%% }
-type account_state() :: #{binary() => any()}.


%% Example:
%% number_filter() :: #{
%%   <<"lowerInclusive">> => [float()],
%%   <<"upperInclusive">> => [float()]
%% }
-type number_filter() :: #{binary() => any()}.


%% Example:
%% list_cis_scans_filter_criteria() :: #{
%%   <<"failedChecksFilters">> => list(cis_number_filter()()),
%%   <<"scanArnFilters">> => list(cis_string_filter()()),
%%   <<"scanAtFilters">> => list(cis_date_filter()()),
%%   <<"scanConfigurationArnFilters">> => list(cis_string_filter()()),
%%   <<"scanNameFilters">> => list(cis_string_filter()()),
%%   <<"scanStatusFilters">> => list(cis_scan_status_filter()()),
%%   <<"scheduledByFilters">> => list(cis_string_filter()()),
%%   <<"targetAccountIdFilters">> => list(cis_string_filter()()),
%%   <<"targetResourceIdFilters">> => list(cis_string_filter()()),
%%   <<"targetResourceTagFilters">> => list(tag_filter()())
%% }
-type list_cis_scans_filter_criteria() :: #{binary() => any()}.


%% Example:
%% map_filter() :: #{
%%   <<"comparison">> => string(),
%%   <<"key">> => string(),
%%   <<"value">> => string()
%% }
-type map_filter() :: #{binary() => any()}.


%% Example:
%% list_filters_request() :: #{
%%   <<"action">> => string(),
%%   <<"arns">> => list(string()()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_filters_request() :: #{binary() => any()}.


%% Example:
%% batch_get_finding_details_response() :: #{
%%   <<"errors">> => list(finding_details_error()()),
%%   <<"findingDetails">> => list(finding_detail()())
%% }
-type batch_get_finding_details_response() :: #{binary() => any()}.


%% Example:
%% resource() :: #{
%%   <<"details">> => resource_details(),
%%   <<"id">> => string(),
%%   <<"partition">> => string(),
%%   <<"region">> => string(),
%%   <<"tags">> => map(),
%%   <<"type">> => string()
%% }
-type resource() :: #{binary() => any()}.


%% Example:
%% ami_aggregation_response() :: #{
%%   <<"accountId">> => string(),
%%   <<"affectedInstances">> => [float()],
%%   <<"ami">> => string(),
%%   <<"severityCounts">> => severity_counts()
%% }
-type ami_aggregation_response() :: #{binary() => any()}.


%% Example:
%% disassociate_member_request() :: #{
%%   <<"accountId">> := string()
%% }
-type disassociate_member_request() :: #{binary() => any()}.

-type associate_member_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception().

-type batch_get_account_status_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type batch_get_code_snippet_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type batch_get_finding_details_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type batch_get_free_trial_info_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type batch_get_member_ec2_deep_inspection_status_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type batch_update_member_ec2_deep_inspection_status_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type cancel_findings_report_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type cancel_sbom_export_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type create_cis_scan_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type create_filter_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception().

-type create_findings_report_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type create_sbom_export_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_cis_scan_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_filter_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_organization_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type disable_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type disable_delegated_admin_account_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type disassociate_member_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type enable_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type enable_delegated_admin_account_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_cis_scan_report_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_cis_scan_result_details_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type get_configuration_errors() ::
    throttling_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_delegated_admin_account_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_ec2_deep_inspection_configuration_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_encryption_key_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_findings_report_status_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_member_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_sbom_export_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_account_permissions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_cis_scan_configurations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_cis_scan_results_aggregated_by_checks_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_cis_scan_results_aggregated_by_target_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_cis_scans_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_coverage_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception().

-type list_coverage_statistics_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception().

-type list_delegated_admin_accounts_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_filters_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_finding_aggregations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception().

-type list_findings_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception().

-type list_members_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_usage_totals_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type reset_encryption_key_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type search_vulnerabilities_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type send_cis_session_health_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type send_cis_session_telemetry_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type start_cis_session_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type stop_cis_session_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type tag_resource_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_cis_scan_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type update_ec2_deep_inspection_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type update_encryption_key_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_filter_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_org_ec2_deep_inspection_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type update_organization_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Associates an Amazon Web Services account with an Amazon Inspector
%% delegated administrator.
%%
%% An HTTP 200 response indicates the association was successfully started,
%% but doesn’t indicate whether it was completed. You can check if the
%% association completed by using ListMembers:
%% https://docs.aws.amazon.com/inspector/v2/APIReference/API_ListMembers.html
%% for multiple accounts or GetMembers:
%% https://docs.aws.amazon.com/inspector/v2/APIReference/API_GetMember.html
%% for a single account.
-spec associate_member(aws_client:aws_client(), associate_member_request()) ->
    {ok, associate_member_response(), tuple()} |
    {error, any()} |
    {error, associate_member_errors(), tuple()}.
associate_member(Client, Input) ->
    associate_member(Client, Input, []).

-spec associate_member(aws_client:aws_client(), associate_member_request(), proplists:proplist()) ->
    {ok, associate_member_response(), tuple()} |
    {error, any()} |
    {error, associate_member_errors(), tuple()}.
associate_member(Client, Input0, Options0) ->
    Method = post,
    Path = ["/members/associate"],
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

%% @doc Retrieves the Amazon Inspector status of multiple Amazon Web Services
%% accounts within your environment.
-spec batch_get_account_status(aws_client:aws_client(), batch_get_account_status_request()) ->
    {ok, batch_get_account_status_response(), tuple()} |
    {error, any()} |
    {error, batch_get_account_status_errors(), tuple()}.
batch_get_account_status(Client, Input) ->
    batch_get_account_status(Client, Input, []).

-spec batch_get_account_status(aws_client:aws_client(), batch_get_account_status_request(), proplists:proplist()) ->
    {ok, batch_get_account_status_response(), tuple()} |
    {error, any()} |
    {error, batch_get_account_status_errors(), tuple()}.
batch_get_account_status(Client, Input0, Options0) ->
    Method = post,
    Path = ["/status/batch/get"],
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

%% @doc Retrieves code snippets from findings that Amazon Inspector detected
%% code vulnerabilities in.
-spec batch_get_code_snippet(aws_client:aws_client(), batch_get_code_snippet_request()) ->
    {ok, batch_get_code_snippet_response(), tuple()} |
    {error, any()} |
    {error, batch_get_code_snippet_errors(), tuple()}.
batch_get_code_snippet(Client, Input) ->
    batch_get_code_snippet(Client, Input, []).

-spec batch_get_code_snippet(aws_client:aws_client(), batch_get_code_snippet_request(), proplists:proplist()) ->
    {ok, batch_get_code_snippet_response(), tuple()} |
    {error, any()} |
    {error, batch_get_code_snippet_errors(), tuple()}.
batch_get_code_snippet(Client, Input0, Options0) ->
    Method = post,
    Path = ["/codesnippet/batchget"],
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

%% @doc Gets vulnerability details for findings.
-spec batch_get_finding_details(aws_client:aws_client(), batch_get_finding_details_request()) ->
    {ok, batch_get_finding_details_response(), tuple()} |
    {error, any()} |
    {error, batch_get_finding_details_errors(), tuple()}.
batch_get_finding_details(Client, Input) ->
    batch_get_finding_details(Client, Input, []).

-spec batch_get_finding_details(aws_client:aws_client(), batch_get_finding_details_request(), proplists:proplist()) ->
    {ok, batch_get_finding_details_response(), tuple()} |
    {error, any()} |
    {error, batch_get_finding_details_errors(), tuple()}.
batch_get_finding_details(Client, Input0, Options0) ->
    Method = post,
    Path = ["/findings/details/batch/get"],
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

%% @doc Gets free trial status for multiple Amazon Web Services accounts.
-spec batch_get_free_trial_info(aws_client:aws_client(), batch_get_free_trial_info_request()) ->
    {ok, batch_get_free_trial_info_response(), tuple()} |
    {error, any()} |
    {error, batch_get_free_trial_info_errors(), tuple()}.
batch_get_free_trial_info(Client, Input) ->
    batch_get_free_trial_info(Client, Input, []).

-spec batch_get_free_trial_info(aws_client:aws_client(), batch_get_free_trial_info_request(), proplists:proplist()) ->
    {ok, batch_get_free_trial_info_response(), tuple()} |
    {error, any()} |
    {error, batch_get_free_trial_info_errors(), tuple()}.
batch_get_free_trial_info(Client, Input0, Options0) ->
    Method = post,
    Path = ["/freetrialinfo/batchget"],
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

%% @doc Retrieves Amazon Inspector deep inspection activation status of
%% multiple member accounts within your organization.
%%
%% You must be the delegated administrator of an organization in Amazon
%% Inspector to use this API.
-spec batch_get_member_ec2_deep_inspection_status(aws_client:aws_client(), batch_get_member_ec2_deep_inspection_status_request()) ->
    {ok, batch_get_member_ec2_deep_inspection_status_response(), tuple()} |
    {error, any()} |
    {error, batch_get_member_ec2_deep_inspection_status_errors(), tuple()}.
batch_get_member_ec2_deep_inspection_status(Client, Input) ->
    batch_get_member_ec2_deep_inspection_status(Client, Input, []).

-spec batch_get_member_ec2_deep_inspection_status(aws_client:aws_client(), batch_get_member_ec2_deep_inspection_status_request(), proplists:proplist()) ->
    {ok, batch_get_member_ec2_deep_inspection_status_response(), tuple()} |
    {error, any()} |
    {error, batch_get_member_ec2_deep_inspection_status_errors(), tuple()}.
batch_get_member_ec2_deep_inspection_status(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ec2deepinspectionstatus/member/batch/get"],
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

%% @doc Activates or deactivates Amazon Inspector deep inspection for the
%% provided member accounts in your organization.
%%
%% You must be the delegated administrator of an organization in Amazon
%% Inspector to use this API.
-spec batch_update_member_ec2_deep_inspection_status(aws_client:aws_client(), batch_update_member_ec2_deep_inspection_status_request()) ->
    {ok, batch_update_member_ec2_deep_inspection_status_response(), tuple()} |
    {error, any()} |
    {error, batch_update_member_ec2_deep_inspection_status_errors(), tuple()}.
batch_update_member_ec2_deep_inspection_status(Client, Input) ->
    batch_update_member_ec2_deep_inspection_status(Client, Input, []).

-spec batch_update_member_ec2_deep_inspection_status(aws_client:aws_client(), batch_update_member_ec2_deep_inspection_status_request(), proplists:proplist()) ->
    {ok, batch_update_member_ec2_deep_inspection_status_response(), tuple()} |
    {error, any()} |
    {error, batch_update_member_ec2_deep_inspection_status_errors(), tuple()}.
batch_update_member_ec2_deep_inspection_status(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ec2deepinspectionstatus/member/batch/update"],
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

%% @doc Cancels the given findings report.
-spec cancel_findings_report(aws_client:aws_client(), cancel_findings_report_request()) ->
    {ok, cancel_findings_report_response(), tuple()} |
    {error, any()} |
    {error, cancel_findings_report_errors(), tuple()}.
cancel_findings_report(Client, Input) ->
    cancel_findings_report(Client, Input, []).

-spec cancel_findings_report(aws_client:aws_client(), cancel_findings_report_request(), proplists:proplist()) ->
    {ok, cancel_findings_report_response(), tuple()} |
    {error, any()} |
    {error, cancel_findings_report_errors(), tuple()}.
cancel_findings_report(Client, Input0, Options0) ->
    Method = post,
    Path = ["/reporting/cancel"],
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

%% @doc Cancels a software bill of materials (SBOM) report.
-spec cancel_sbom_export(aws_client:aws_client(), cancel_sbom_export_request()) ->
    {ok, cancel_sbom_export_response(), tuple()} |
    {error, any()} |
    {error, cancel_sbom_export_errors(), tuple()}.
cancel_sbom_export(Client, Input) ->
    cancel_sbom_export(Client, Input, []).

-spec cancel_sbom_export(aws_client:aws_client(), cancel_sbom_export_request(), proplists:proplist()) ->
    {ok, cancel_sbom_export_response(), tuple()} |
    {error, any()} |
    {error, cancel_sbom_export_errors(), tuple()}.
cancel_sbom_export(Client, Input0, Options0) ->
    Method = post,
    Path = ["/sbomexport/cancel"],
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

%% @doc Creates a CIS scan configuration.
-spec create_cis_scan_configuration(aws_client:aws_client(), create_cis_scan_configuration_request()) ->
    {ok, create_cis_scan_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_cis_scan_configuration_errors(), tuple()}.
create_cis_scan_configuration(Client, Input) ->
    create_cis_scan_configuration(Client, Input, []).

-spec create_cis_scan_configuration(aws_client:aws_client(), create_cis_scan_configuration_request(), proplists:proplist()) ->
    {ok, create_cis_scan_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_cis_scan_configuration_errors(), tuple()}.
create_cis_scan_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/cis/scan-configuration/create"],
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

%% @doc Creates a filter resource using specified filter criteria.
%%
%% When the filter action is set to `SUPPRESS' this action creates a
%% suppression rule.
-spec create_filter(aws_client:aws_client(), create_filter_request()) ->
    {ok, create_filter_response(), tuple()} |
    {error, any()} |
    {error, create_filter_errors(), tuple()}.
create_filter(Client, Input) ->
    create_filter(Client, Input, []).

-spec create_filter(aws_client:aws_client(), create_filter_request(), proplists:proplist()) ->
    {ok, create_filter_response(), tuple()} |
    {error, any()} |
    {error, create_filter_errors(), tuple()}.
create_filter(Client, Input0, Options0) ->
    Method = post,
    Path = ["/filters/create"],
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

%% @doc Creates a finding report.
%%
%% By default only `ACTIVE' findings are returned in the report. To see
%% `SUPRESSED' or `CLOSED' findings you must specify a value for the
%% `findingStatus' filter criteria.
-spec create_findings_report(aws_client:aws_client(), create_findings_report_request()) ->
    {ok, create_findings_report_response(), tuple()} |
    {error, any()} |
    {error, create_findings_report_errors(), tuple()}.
create_findings_report(Client, Input) ->
    create_findings_report(Client, Input, []).

-spec create_findings_report(aws_client:aws_client(), create_findings_report_request(), proplists:proplist()) ->
    {ok, create_findings_report_response(), tuple()} |
    {error, any()} |
    {error, create_findings_report_errors(), tuple()}.
create_findings_report(Client, Input0, Options0) ->
    Method = post,
    Path = ["/reporting/create"],
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

%% @doc Creates a software bill of materials (SBOM) report.
-spec create_sbom_export(aws_client:aws_client(), create_sbom_export_request()) ->
    {ok, create_sbom_export_response(), tuple()} |
    {error, any()} |
    {error, create_sbom_export_errors(), tuple()}.
create_sbom_export(Client, Input) ->
    create_sbom_export(Client, Input, []).

-spec create_sbom_export(aws_client:aws_client(), create_sbom_export_request(), proplists:proplist()) ->
    {ok, create_sbom_export_response(), tuple()} |
    {error, any()} |
    {error, create_sbom_export_errors(), tuple()}.
create_sbom_export(Client, Input0, Options0) ->
    Method = post,
    Path = ["/sbomexport/create"],
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

%% @doc Deletes a CIS scan configuration.
-spec delete_cis_scan_configuration(aws_client:aws_client(), delete_cis_scan_configuration_request()) ->
    {ok, delete_cis_scan_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_cis_scan_configuration_errors(), tuple()}.
delete_cis_scan_configuration(Client, Input) ->
    delete_cis_scan_configuration(Client, Input, []).

-spec delete_cis_scan_configuration(aws_client:aws_client(), delete_cis_scan_configuration_request(), proplists:proplist()) ->
    {ok, delete_cis_scan_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_cis_scan_configuration_errors(), tuple()}.
delete_cis_scan_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/cis/scan-configuration/delete"],
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

%% @doc Deletes a filter resource.
-spec delete_filter(aws_client:aws_client(), delete_filter_request()) ->
    {ok, delete_filter_response(), tuple()} |
    {error, any()} |
    {error, delete_filter_errors(), tuple()}.
delete_filter(Client, Input) ->
    delete_filter(Client, Input, []).

-spec delete_filter(aws_client:aws_client(), delete_filter_request(), proplists:proplist()) ->
    {ok, delete_filter_response(), tuple()} |
    {error, any()} |
    {error, delete_filter_errors(), tuple()}.
delete_filter(Client, Input0, Options0) ->
    Method = post,
    Path = ["/filters/delete"],
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

%% @doc Describe Amazon Inspector configuration settings for an Amazon Web
%% Services organization.
-spec describe_organization_configuration(aws_client:aws_client(), describe_organization_configuration_request()) ->
    {ok, describe_organization_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_organization_configuration_errors(), tuple()}.
describe_organization_configuration(Client, Input) ->
    describe_organization_configuration(Client, Input, []).

-spec describe_organization_configuration(aws_client:aws_client(), describe_organization_configuration_request(), proplists:proplist()) ->
    {ok, describe_organization_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_organization_configuration_errors(), tuple()}.
describe_organization_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/organizationconfiguration/describe"],
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

%% @doc Disables Amazon Inspector scans for one or more Amazon Web Services
%% accounts.
%%
%% Disabling all scan types in an account
%% disables the Amazon Inspector service.
-spec disable(aws_client:aws_client(), disable_request()) ->
    {ok, disable_response(), tuple()} |
    {error, any()} |
    {error, disable_errors(), tuple()}.
disable(Client, Input) ->
    disable(Client, Input, []).

-spec disable(aws_client:aws_client(), disable_request(), proplists:proplist()) ->
    {ok, disable_response(), tuple()} |
    {error, any()} |
    {error, disable_errors(), tuple()}.
disable(Client, Input0, Options0) ->
    Method = post,
    Path = ["/disable"],
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

%% @doc Disables the Amazon Inspector delegated administrator for your
%% organization.
-spec disable_delegated_admin_account(aws_client:aws_client(), disable_delegated_admin_account_request()) ->
    {ok, disable_delegated_admin_account_response(), tuple()} |
    {error, any()} |
    {error, disable_delegated_admin_account_errors(), tuple()}.
disable_delegated_admin_account(Client, Input) ->
    disable_delegated_admin_account(Client, Input, []).

-spec disable_delegated_admin_account(aws_client:aws_client(), disable_delegated_admin_account_request(), proplists:proplist()) ->
    {ok, disable_delegated_admin_account_response(), tuple()} |
    {error, any()} |
    {error, disable_delegated_admin_account_errors(), tuple()}.
disable_delegated_admin_account(Client, Input0, Options0) ->
    Method = post,
    Path = ["/delegatedadminaccounts/disable"],
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

%% @doc Disassociates a member account from an Amazon Inspector delegated
%% administrator.
-spec disassociate_member(aws_client:aws_client(), disassociate_member_request()) ->
    {ok, disassociate_member_response(), tuple()} |
    {error, any()} |
    {error, disassociate_member_errors(), tuple()}.
disassociate_member(Client, Input) ->
    disassociate_member(Client, Input, []).

-spec disassociate_member(aws_client:aws_client(), disassociate_member_request(), proplists:proplist()) ->
    {ok, disassociate_member_response(), tuple()} |
    {error, any()} |
    {error, disassociate_member_errors(), tuple()}.
disassociate_member(Client, Input0, Options0) ->
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

%% @doc Enables Amazon Inspector scans for one or more Amazon Web Services
%% accounts.
-spec enable(aws_client:aws_client(), enable_request()) ->
    {ok, enable_response(), tuple()} |
    {error, any()} |
    {error, enable_errors(), tuple()}.
enable(Client, Input) ->
    enable(Client, Input, []).

-spec enable(aws_client:aws_client(), enable_request(), proplists:proplist()) ->
    {ok, enable_response(), tuple()} |
    {error, any()} |
    {error, enable_errors(), tuple()}.
enable(Client, Input0, Options0) ->
    Method = post,
    Path = ["/enable"],
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

%% @doc Enables the Amazon Inspector delegated administrator for your
%% Organizations organization.
-spec enable_delegated_admin_account(aws_client:aws_client(), enable_delegated_admin_account_request()) ->
    {ok, enable_delegated_admin_account_response(), tuple()} |
    {error, any()} |
    {error, enable_delegated_admin_account_errors(), tuple()}.
enable_delegated_admin_account(Client, Input) ->
    enable_delegated_admin_account(Client, Input, []).

-spec enable_delegated_admin_account(aws_client:aws_client(), enable_delegated_admin_account_request(), proplists:proplist()) ->
    {ok, enable_delegated_admin_account_response(), tuple()} |
    {error, any()} |
    {error, enable_delegated_admin_account_errors(), tuple()}.
enable_delegated_admin_account(Client, Input0, Options0) ->
    Method = post,
    Path = ["/delegatedadminaccounts/enable"],
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

%% @doc Retrieves a CIS scan report.
-spec get_cis_scan_report(aws_client:aws_client(), get_cis_scan_report_request()) ->
    {ok, get_cis_scan_report_response(), tuple()} |
    {error, any()} |
    {error, get_cis_scan_report_errors(), tuple()}.
get_cis_scan_report(Client, Input) ->
    get_cis_scan_report(Client, Input, []).

-spec get_cis_scan_report(aws_client:aws_client(), get_cis_scan_report_request(), proplists:proplist()) ->
    {ok, get_cis_scan_report_response(), tuple()} |
    {error, any()} |
    {error, get_cis_scan_report_errors(), tuple()}.
get_cis_scan_report(Client, Input0, Options0) ->
    Method = post,
    Path = ["/cis/scan/report/get"],
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

%% @doc Retrieves CIS scan result details.
-spec get_cis_scan_result_details(aws_client:aws_client(), get_cis_scan_result_details_request()) ->
    {ok, get_cis_scan_result_details_response(), tuple()} |
    {error, any()} |
    {error, get_cis_scan_result_details_errors(), tuple()}.
get_cis_scan_result_details(Client, Input) ->
    get_cis_scan_result_details(Client, Input, []).

-spec get_cis_scan_result_details(aws_client:aws_client(), get_cis_scan_result_details_request(), proplists:proplist()) ->
    {ok, get_cis_scan_result_details_response(), tuple()} |
    {error, any()} |
    {error, get_cis_scan_result_details_errors(), tuple()}.
get_cis_scan_result_details(Client, Input0, Options0) ->
    Method = post,
    Path = ["/cis/scan-result/details/get"],
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

%% @doc Retrieves setting configurations for Inspector scans.
-spec get_configuration(aws_client:aws_client(), get_configuration_request()) ->
    {ok, get_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_configuration_errors(), tuple()}.
get_configuration(Client, Input) ->
    get_configuration(Client, Input, []).

-spec get_configuration(aws_client:aws_client(), get_configuration_request(), proplists:proplist()) ->
    {ok, get_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_configuration_errors(), tuple()}.
get_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/configuration/get"],
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

%% @doc Retrieves information about the Amazon Inspector delegated
%% administrator for your
%% organization.
-spec get_delegated_admin_account(aws_client:aws_client(), get_delegated_admin_account_request()) ->
    {ok, get_delegated_admin_account_response(), tuple()} |
    {error, any()} |
    {error, get_delegated_admin_account_errors(), tuple()}.
get_delegated_admin_account(Client, Input) ->
    get_delegated_admin_account(Client, Input, []).

-spec get_delegated_admin_account(aws_client:aws_client(), get_delegated_admin_account_request(), proplists:proplist()) ->
    {ok, get_delegated_admin_account_response(), tuple()} |
    {error, any()} |
    {error, get_delegated_admin_account_errors(), tuple()}.
get_delegated_admin_account(Client, Input0, Options0) ->
    Method = post,
    Path = ["/delegatedadminaccounts/get"],
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

%% @doc Retrieves the activation status of Amazon Inspector deep inspection
%% and custom paths associated with your account.
-spec get_ec2_deep_inspection_configuration(aws_client:aws_client(), get_ec2_deep_inspection_configuration_request()) ->
    {ok, get_ec2_deep_inspection_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_ec2_deep_inspection_configuration_errors(), tuple()}.
get_ec2_deep_inspection_configuration(Client, Input) ->
    get_ec2_deep_inspection_configuration(Client, Input, []).

-spec get_ec2_deep_inspection_configuration(aws_client:aws_client(), get_ec2_deep_inspection_configuration_request(), proplists:proplist()) ->
    {ok, get_ec2_deep_inspection_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_ec2_deep_inspection_configuration_errors(), tuple()}.
get_ec2_deep_inspection_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ec2deepinspectionconfiguration/get"],
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

%% @doc Gets an encryption key.
-spec get_encryption_key(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_encryption_key_response(), tuple()} |
    {error, any()} |
    {error, get_encryption_key_errors(), tuple()}.
get_encryption_key(Client, ResourceType, ScanType)
  when is_map(Client) ->
    get_encryption_key(Client, ResourceType, ScanType, #{}, #{}).

-spec get_encryption_key(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_encryption_key_response(), tuple()} |
    {error, any()} |
    {error, get_encryption_key_errors(), tuple()}.
get_encryption_key(Client, ResourceType, ScanType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_encryption_key(Client, ResourceType, ScanType, QueryMap, HeadersMap, []).

-spec get_encryption_key(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_encryption_key_response(), tuple()} |
    {error, any()} |
    {error, get_encryption_key_errors(), tuple()}.
get_encryption_key(Client, ResourceType, ScanType, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/encryptionkey/get"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"resourceType">>, ResourceType},
        {<<"scanType">>, ScanType}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the status of a findings report.
-spec get_findings_report_status(aws_client:aws_client(), get_findings_report_status_request()) ->
    {ok, get_findings_report_status_response(), tuple()} |
    {error, any()} |
    {error, get_findings_report_status_errors(), tuple()}.
get_findings_report_status(Client, Input) ->
    get_findings_report_status(Client, Input, []).

-spec get_findings_report_status(aws_client:aws_client(), get_findings_report_status_request(), proplists:proplist()) ->
    {ok, get_findings_report_status_response(), tuple()} |
    {error, any()} |
    {error, get_findings_report_status_errors(), tuple()}.
get_findings_report_status(Client, Input0, Options0) ->
    Method = post,
    Path = ["/reporting/status/get"],
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

%% @doc Gets member information for your organization.
-spec get_member(aws_client:aws_client(), get_member_request()) ->
    {ok, get_member_response(), tuple()} |
    {error, any()} |
    {error, get_member_errors(), tuple()}.
get_member(Client, Input) ->
    get_member(Client, Input, []).

-spec get_member(aws_client:aws_client(), get_member_request(), proplists:proplist()) ->
    {ok, get_member_response(), tuple()} |
    {error, any()} |
    {error, get_member_errors(), tuple()}.
get_member(Client, Input0, Options0) ->
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

%% @doc Gets details of a software bill of materials (SBOM) report.
-spec get_sbom_export(aws_client:aws_client(), get_sbom_export_request()) ->
    {ok, get_sbom_export_response(), tuple()} |
    {error, any()} |
    {error, get_sbom_export_errors(), tuple()}.
get_sbom_export(Client, Input) ->
    get_sbom_export(Client, Input, []).

-spec get_sbom_export(aws_client:aws_client(), get_sbom_export_request(), proplists:proplist()) ->
    {ok, get_sbom_export_response(), tuple()} |
    {error, any()} |
    {error, get_sbom_export_errors(), tuple()}.
get_sbom_export(Client, Input0, Options0) ->
    Method = post,
    Path = ["/sbomexport/get"],
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

%% @doc Lists the permissions an account has to configure Amazon Inspector.
-spec list_account_permissions(aws_client:aws_client(), list_account_permissions_request()) ->
    {ok, list_account_permissions_response(), tuple()} |
    {error, any()} |
    {error, list_account_permissions_errors(), tuple()}.
list_account_permissions(Client, Input) ->
    list_account_permissions(Client, Input, []).

-spec list_account_permissions(aws_client:aws_client(), list_account_permissions_request(), proplists:proplist()) ->
    {ok, list_account_permissions_response(), tuple()} |
    {error, any()} |
    {error, list_account_permissions_errors(), tuple()}.
list_account_permissions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/accountpermissions/list"],
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

%% @doc Lists CIS scan configurations.
-spec list_cis_scan_configurations(aws_client:aws_client(), list_cis_scan_configurations_request()) ->
    {ok, list_cis_scan_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_cis_scan_configurations_errors(), tuple()}.
list_cis_scan_configurations(Client, Input) ->
    list_cis_scan_configurations(Client, Input, []).

-spec list_cis_scan_configurations(aws_client:aws_client(), list_cis_scan_configurations_request(), proplists:proplist()) ->
    {ok, list_cis_scan_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_cis_scan_configurations_errors(), tuple()}.
list_cis_scan_configurations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/cis/scan-configuration/list"],
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

%% @doc Lists scan results aggregated by checks.
-spec list_cis_scan_results_aggregated_by_checks(aws_client:aws_client(), list_cis_scan_results_aggregated_by_checks_request()) ->
    {ok, list_cis_scan_results_aggregated_by_checks_response(), tuple()} |
    {error, any()} |
    {error, list_cis_scan_results_aggregated_by_checks_errors(), tuple()}.
list_cis_scan_results_aggregated_by_checks(Client, Input) ->
    list_cis_scan_results_aggregated_by_checks(Client, Input, []).

-spec list_cis_scan_results_aggregated_by_checks(aws_client:aws_client(), list_cis_scan_results_aggregated_by_checks_request(), proplists:proplist()) ->
    {ok, list_cis_scan_results_aggregated_by_checks_response(), tuple()} |
    {error, any()} |
    {error, list_cis_scan_results_aggregated_by_checks_errors(), tuple()}.
list_cis_scan_results_aggregated_by_checks(Client, Input0, Options0) ->
    Method = post,
    Path = ["/cis/scan-result/check/list"],
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

%% @doc Lists scan results aggregated by a target resource.
-spec list_cis_scan_results_aggregated_by_target_resource(aws_client:aws_client(), list_cis_scan_results_aggregated_by_target_resource_request()) ->
    {ok, list_cis_scan_results_aggregated_by_target_resource_response(), tuple()} |
    {error, any()} |
    {error, list_cis_scan_results_aggregated_by_target_resource_errors(), tuple()}.
list_cis_scan_results_aggregated_by_target_resource(Client, Input) ->
    list_cis_scan_results_aggregated_by_target_resource(Client, Input, []).

-spec list_cis_scan_results_aggregated_by_target_resource(aws_client:aws_client(), list_cis_scan_results_aggregated_by_target_resource_request(), proplists:proplist()) ->
    {ok, list_cis_scan_results_aggregated_by_target_resource_response(), tuple()} |
    {error, any()} |
    {error, list_cis_scan_results_aggregated_by_target_resource_errors(), tuple()}.
list_cis_scan_results_aggregated_by_target_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/cis/scan-result/resource/list"],
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

%% @doc Returns a CIS scan list.
-spec list_cis_scans(aws_client:aws_client(), list_cis_scans_request()) ->
    {ok, list_cis_scans_response(), tuple()} |
    {error, any()} |
    {error, list_cis_scans_errors(), tuple()}.
list_cis_scans(Client, Input) ->
    list_cis_scans(Client, Input, []).

-spec list_cis_scans(aws_client:aws_client(), list_cis_scans_request(), proplists:proplist()) ->
    {ok, list_cis_scans_response(), tuple()} |
    {error, any()} |
    {error, list_cis_scans_errors(), tuple()}.
list_cis_scans(Client, Input0, Options0) ->
    Method = post,
    Path = ["/cis/scan/list"],
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

%% @doc Lists coverage details for your environment.
-spec list_coverage(aws_client:aws_client(), list_coverage_request()) ->
    {ok, list_coverage_response(), tuple()} |
    {error, any()} |
    {error, list_coverage_errors(), tuple()}.
list_coverage(Client, Input) ->
    list_coverage(Client, Input, []).

-spec list_coverage(aws_client:aws_client(), list_coverage_request(), proplists:proplist()) ->
    {ok, list_coverage_response(), tuple()} |
    {error, any()} |
    {error, list_coverage_errors(), tuple()}.
list_coverage(Client, Input0, Options0) ->
    Method = post,
    Path = ["/coverage/list"],
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

%% @doc Lists Amazon Inspector coverage statistics for your environment.
-spec list_coverage_statistics(aws_client:aws_client(), list_coverage_statistics_request()) ->
    {ok, list_coverage_statistics_response(), tuple()} |
    {error, any()} |
    {error, list_coverage_statistics_errors(), tuple()}.
list_coverage_statistics(Client, Input) ->
    list_coverage_statistics(Client, Input, []).

-spec list_coverage_statistics(aws_client:aws_client(), list_coverage_statistics_request(), proplists:proplist()) ->
    {ok, list_coverage_statistics_response(), tuple()} |
    {error, any()} |
    {error, list_coverage_statistics_errors(), tuple()}.
list_coverage_statistics(Client, Input0, Options0) ->
    Method = post,
    Path = ["/coverage/statistics/list"],
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

%% @doc Lists information about the Amazon Inspector delegated administrator
%% of your
%% organization.
-spec list_delegated_admin_accounts(aws_client:aws_client(), list_delegated_admin_accounts_request()) ->
    {ok, list_delegated_admin_accounts_response(), tuple()} |
    {error, any()} |
    {error, list_delegated_admin_accounts_errors(), tuple()}.
list_delegated_admin_accounts(Client, Input) ->
    list_delegated_admin_accounts(Client, Input, []).

-spec list_delegated_admin_accounts(aws_client:aws_client(), list_delegated_admin_accounts_request(), proplists:proplist()) ->
    {ok, list_delegated_admin_accounts_response(), tuple()} |
    {error, any()} |
    {error, list_delegated_admin_accounts_errors(), tuple()}.
list_delegated_admin_accounts(Client, Input0, Options0) ->
    Method = post,
    Path = ["/delegatedadminaccounts/list"],
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

%% @doc Lists the filters associated with your account.
-spec list_filters(aws_client:aws_client(), list_filters_request()) ->
    {ok, list_filters_response(), tuple()} |
    {error, any()} |
    {error, list_filters_errors(), tuple()}.
list_filters(Client, Input) ->
    list_filters(Client, Input, []).

-spec list_filters(aws_client:aws_client(), list_filters_request(), proplists:proplist()) ->
    {ok, list_filters_response(), tuple()} |
    {error, any()} |
    {error, list_filters_errors(), tuple()}.
list_filters(Client, Input0, Options0) ->
    Method = post,
    Path = ["/filters/list"],
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

%% @doc Lists aggregated finding data for your environment based on specific
%% criteria.
-spec list_finding_aggregations(aws_client:aws_client(), list_finding_aggregations_request()) ->
    {ok, list_finding_aggregations_response(), tuple()} |
    {error, any()} |
    {error, list_finding_aggregations_errors(), tuple()}.
list_finding_aggregations(Client, Input) ->
    list_finding_aggregations(Client, Input, []).

-spec list_finding_aggregations(aws_client:aws_client(), list_finding_aggregations_request(), proplists:proplist()) ->
    {ok, list_finding_aggregations_response(), tuple()} |
    {error, any()} |
    {error, list_finding_aggregations_errors(), tuple()}.
list_finding_aggregations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/findings/aggregation/list"],
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

%% @doc Lists findings for your environment.
-spec list_findings(aws_client:aws_client(), list_findings_request()) ->
    {ok, list_findings_response(), tuple()} |
    {error, any()} |
    {error, list_findings_errors(), tuple()}.
list_findings(Client, Input) ->
    list_findings(Client, Input, []).

-spec list_findings(aws_client:aws_client(), list_findings_request(), proplists:proplist()) ->
    {ok, list_findings_response(), tuple()} |
    {error, any()} |
    {error, list_findings_errors(), tuple()}.
list_findings(Client, Input0, Options0) ->
    Method = post,
    Path = ["/findings/list"],
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

%% @doc List members associated with the Amazon Inspector delegated
%% administrator for your
%% organization.
-spec list_members(aws_client:aws_client(), list_members_request()) ->
    {ok, list_members_response(), tuple()} |
    {error, any()} |
    {error, list_members_errors(), tuple()}.
list_members(Client, Input) ->
    list_members(Client, Input, []).

-spec list_members(aws_client:aws_client(), list_members_request(), proplists:proplist()) ->
    {ok, list_members_response(), tuple()} |
    {error, any()} |
    {error, list_members_errors(), tuple()}.
list_members(Client, Input0, Options0) ->
    Method = post,
    Path = ["/members/list"],
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

%% @doc Lists all tags attached to a given resource.
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

%% @doc Lists the Amazon Inspector usage totals over the last 30 days.
-spec list_usage_totals(aws_client:aws_client(), list_usage_totals_request()) ->
    {ok, list_usage_totals_response(), tuple()} |
    {error, any()} |
    {error, list_usage_totals_errors(), tuple()}.
list_usage_totals(Client, Input) ->
    list_usage_totals(Client, Input, []).

-spec list_usage_totals(aws_client:aws_client(), list_usage_totals_request(), proplists:proplist()) ->
    {ok, list_usage_totals_response(), tuple()} |
    {error, any()} |
    {error, list_usage_totals_errors(), tuple()}.
list_usage_totals(Client, Input0, Options0) ->
    Method = post,
    Path = ["/usage/list"],
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

%% @doc Resets an encryption key.
%%
%% After the key is reset your resources will be encrypted by an Amazon Web
%% Services owned key.
-spec reset_encryption_key(aws_client:aws_client(), reset_encryption_key_request()) ->
    {ok, reset_encryption_key_response(), tuple()} |
    {error, any()} |
    {error, reset_encryption_key_errors(), tuple()}.
reset_encryption_key(Client, Input) ->
    reset_encryption_key(Client, Input, []).

-spec reset_encryption_key(aws_client:aws_client(), reset_encryption_key_request(), proplists:proplist()) ->
    {ok, reset_encryption_key_response(), tuple()} |
    {error, any()} |
    {error, reset_encryption_key_errors(), tuple()}.
reset_encryption_key(Client, Input0, Options0) ->
    Method = put,
    Path = ["/encryptionkey/reset"],
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

%% @doc Lists Amazon Inspector coverage details for a specific vulnerability.
-spec search_vulnerabilities(aws_client:aws_client(), search_vulnerabilities_request()) ->
    {ok, search_vulnerabilities_response(), tuple()} |
    {error, any()} |
    {error, search_vulnerabilities_errors(), tuple()}.
search_vulnerabilities(Client, Input) ->
    search_vulnerabilities(Client, Input, []).

-spec search_vulnerabilities(aws_client:aws_client(), search_vulnerabilities_request(), proplists:proplist()) ->
    {ok, search_vulnerabilities_response(), tuple()} |
    {error, any()} |
    {error, search_vulnerabilities_errors(), tuple()}.
search_vulnerabilities(Client, Input0, Options0) ->
    Method = post,
    Path = ["/vulnerabilities/search"],
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
%% Sends a CIS session health.
%%
%% This API is used by the Amazon Inspector SSM plugin to communicate with
%% the Amazon Inspector service.
%% The Amazon Inspector SSM plugin calls this API to start a CIS scan session
%% for the scan ID supplied by the service.
-spec send_cis_session_health(aws_client:aws_client(), send_cis_session_health_request()) ->
    {ok, send_cis_session_health_response(), tuple()} |
    {error, any()} |
    {error, send_cis_session_health_errors(), tuple()}.
send_cis_session_health(Client, Input) ->
    send_cis_session_health(Client, Input, []).

-spec send_cis_session_health(aws_client:aws_client(), send_cis_session_health_request(), proplists:proplist()) ->
    {ok, send_cis_session_health_response(), tuple()} |
    {error, any()} |
    {error, send_cis_session_health_errors(), tuple()}.
send_cis_session_health(Client, Input0, Options0) ->
    Method = put,
    Path = ["/cissession/health/send"],
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
%% Sends a CIS session telemetry.
%%
%% This API is used by the Amazon Inspector SSM plugin to communicate with
%% the Amazon Inspector service.
%% The Amazon Inspector SSM plugin calls this API to start a CIS scan session
%% for the scan ID supplied by the service.
-spec send_cis_session_telemetry(aws_client:aws_client(), send_cis_session_telemetry_request()) ->
    {ok, send_cis_session_telemetry_response(), tuple()} |
    {error, any()} |
    {error, send_cis_session_telemetry_errors(), tuple()}.
send_cis_session_telemetry(Client, Input) ->
    send_cis_session_telemetry(Client, Input, []).

-spec send_cis_session_telemetry(aws_client:aws_client(), send_cis_session_telemetry_request(), proplists:proplist()) ->
    {ok, send_cis_session_telemetry_response(), tuple()} |
    {error, any()} |
    {error, send_cis_session_telemetry_errors(), tuple()}.
send_cis_session_telemetry(Client, Input0, Options0) ->
    Method = put,
    Path = ["/cissession/telemetry/send"],
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
%% Starts a CIS session.
%%
%% This API is used by the Amazon Inspector SSM plugin to communicate with
%% the Amazon Inspector service.
%% The Amazon Inspector SSM plugin calls this API to start a CIS scan session
%% for the scan ID supplied by the service.
-spec start_cis_session(aws_client:aws_client(), start_cis_session_request()) ->
    {ok, start_cis_session_response(), tuple()} |
    {error, any()} |
    {error, start_cis_session_errors(), tuple()}.
start_cis_session(Client, Input) ->
    start_cis_session(Client, Input, []).

-spec start_cis_session(aws_client:aws_client(), start_cis_session_request(), proplists:proplist()) ->
    {ok, start_cis_session_response(), tuple()} |
    {error, any()} |
    {error, start_cis_session_errors(), tuple()}.
start_cis_session(Client, Input0, Options0) ->
    Method = put,
    Path = ["/cissession/start"],
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
%% Stops a CIS session.
%%
%% This API is used by the Amazon Inspector SSM plugin to communicate with
%% the Amazon Inspector service.
%% The Amazon Inspector SSM plugin calls this API to stop a CIS scan session
%% for the scan ID supplied by the service.
-spec stop_cis_session(aws_client:aws_client(), stop_cis_session_request()) ->
    {ok, stop_cis_session_response(), tuple()} |
    {error, any()} |
    {error, stop_cis_session_errors(), tuple()}.
stop_cis_session(Client, Input) ->
    stop_cis_session(Client, Input, []).

-spec stop_cis_session(aws_client:aws_client(), stop_cis_session_request(), proplists:proplist()) ->
    {ok, stop_cis_session_response(), tuple()} |
    {error, any()} |
    {error, stop_cis_session_errors(), tuple()}.
stop_cis_session(Client, Input0, Options0) ->
    Method = put,
    Path = ["/cissession/stop"],
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
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a CIS scan configuration.
-spec update_cis_scan_configuration(aws_client:aws_client(), update_cis_scan_configuration_request()) ->
    {ok, update_cis_scan_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_cis_scan_configuration_errors(), tuple()}.
update_cis_scan_configuration(Client, Input) ->
    update_cis_scan_configuration(Client, Input, []).

-spec update_cis_scan_configuration(aws_client:aws_client(), update_cis_scan_configuration_request(), proplists:proplist()) ->
    {ok, update_cis_scan_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_cis_scan_configuration_errors(), tuple()}.
update_cis_scan_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/cis/scan-configuration/update"],
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

%% @doc Updates setting configurations for your Amazon Inspector account.
%%
%% When you use this API as an Amazon Inspector delegated administrator this
%% updates the setting for all accounts you manage. Member accounts in an
%% organization cannot update this setting.
-spec update_configuration(aws_client:aws_client(), update_configuration_request()) ->
    {ok, update_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_configuration_errors(), tuple()}.
update_configuration(Client, Input) ->
    update_configuration(Client, Input, []).

-spec update_configuration(aws_client:aws_client(), update_configuration_request(), proplists:proplist()) ->
    {ok, update_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_configuration_errors(), tuple()}.
update_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/configuration/update"],
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

%% @doc Activates, deactivates Amazon Inspector deep inspection, or updates
%% custom paths for your account.
-spec update_ec2_deep_inspection_configuration(aws_client:aws_client(), update_ec2_deep_inspection_configuration_request()) ->
    {ok, update_ec2_deep_inspection_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_ec2_deep_inspection_configuration_errors(), tuple()}.
update_ec2_deep_inspection_configuration(Client, Input) ->
    update_ec2_deep_inspection_configuration(Client, Input, []).

-spec update_ec2_deep_inspection_configuration(aws_client:aws_client(), update_ec2_deep_inspection_configuration_request(), proplists:proplist()) ->
    {ok, update_ec2_deep_inspection_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_ec2_deep_inspection_configuration_errors(), tuple()}.
update_ec2_deep_inspection_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ec2deepinspectionconfiguration/update"],
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

%% @doc Updates an encryption key.
%%
%% A `ResourceNotFoundException' means that an Amazon Web Services owned
%% key is being used for encryption.
-spec update_encryption_key(aws_client:aws_client(), update_encryption_key_request()) ->
    {ok, update_encryption_key_response(), tuple()} |
    {error, any()} |
    {error, update_encryption_key_errors(), tuple()}.
update_encryption_key(Client, Input) ->
    update_encryption_key(Client, Input, []).

-spec update_encryption_key(aws_client:aws_client(), update_encryption_key_request(), proplists:proplist()) ->
    {ok, update_encryption_key_response(), tuple()} |
    {error, any()} |
    {error, update_encryption_key_errors(), tuple()}.
update_encryption_key(Client, Input0, Options0) ->
    Method = put,
    Path = ["/encryptionkey/update"],
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

%% @doc Specifies the action that is to be applied to the findings that match
%% the filter.
-spec update_filter(aws_client:aws_client(), update_filter_request()) ->
    {ok, update_filter_response(), tuple()} |
    {error, any()} |
    {error, update_filter_errors(), tuple()}.
update_filter(Client, Input) ->
    update_filter(Client, Input, []).

-spec update_filter(aws_client:aws_client(), update_filter_request(), proplists:proplist()) ->
    {ok, update_filter_response(), tuple()} |
    {error, any()} |
    {error, update_filter_errors(), tuple()}.
update_filter(Client, Input0, Options0) ->
    Method = post,
    Path = ["/filters/update"],
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

%% @doc Updates the Amazon Inspector deep inspection custom paths for your
%% organization.
%%
%% You must be an Amazon Inspector delegated administrator to use this API.
-spec update_org_ec2_deep_inspection_configuration(aws_client:aws_client(), update_org_ec2_deep_inspection_configuration_request()) ->
    {ok, update_org_ec2_deep_inspection_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_org_ec2_deep_inspection_configuration_errors(), tuple()}.
update_org_ec2_deep_inspection_configuration(Client, Input) ->
    update_org_ec2_deep_inspection_configuration(Client, Input, []).

-spec update_org_ec2_deep_inspection_configuration(aws_client:aws_client(), update_org_ec2_deep_inspection_configuration_request(), proplists:proplist()) ->
    {ok, update_org_ec2_deep_inspection_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_org_ec2_deep_inspection_configuration_errors(), tuple()}.
update_org_ec2_deep_inspection_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ec2deepinspectionconfiguration/org/update"],
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

%% @doc Updates the configurations for your Amazon Inspector organization.
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
    Path = ["/organizationconfiguration/update"],
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
    Client1 = Client#{service => <<"inspector2">>},
    Host = build_host(<<"inspector2">>, Client1),
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
