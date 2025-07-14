%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Inspector
%%
%% Amazon Inspector enables you to analyze the behavior of your AWS resources
%% and to
%% identify potential security issues.
%%
%% For more information, see Amazon Inspector User
%% Guide:
%% https://docs.aws.amazon.com/inspector/latest/userguide/inspector_introduction.html.
-module(aws_inspector).

-export([add_attributes_to_findings/2,
         add_attributes_to_findings/3,
         create_assessment_target/2,
         create_assessment_target/3,
         create_assessment_template/2,
         create_assessment_template/3,
         create_exclusions_preview/2,
         create_exclusions_preview/3,
         create_resource_group/2,
         create_resource_group/3,
         delete_assessment_run/2,
         delete_assessment_run/3,
         delete_assessment_target/2,
         delete_assessment_target/3,
         delete_assessment_template/2,
         delete_assessment_template/3,
         describe_assessment_runs/2,
         describe_assessment_runs/3,
         describe_assessment_targets/2,
         describe_assessment_targets/3,
         describe_assessment_templates/2,
         describe_assessment_templates/3,
         describe_cross_account_access_role/2,
         describe_cross_account_access_role/3,
         describe_exclusions/2,
         describe_exclusions/3,
         describe_findings/2,
         describe_findings/3,
         describe_resource_groups/2,
         describe_resource_groups/3,
         describe_rules_packages/2,
         describe_rules_packages/3,
         get_assessment_report/2,
         get_assessment_report/3,
         get_exclusions_preview/2,
         get_exclusions_preview/3,
         get_telemetry_metadata/2,
         get_telemetry_metadata/3,
         list_assessment_run_agents/2,
         list_assessment_run_agents/3,
         list_assessment_runs/2,
         list_assessment_runs/3,
         list_assessment_targets/2,
         list_assessment_targets/3,
         list_assessment_templates/2,
         list_assessment_templates/3,
         list_event_subscriptions/2,
         list_event_subscriptions/3,
         list_exclusions/2,
         list_exclusions/3,
         list_findings/2,
         list_findings/3,
         list_rules_packages/2,
         list_rules_packages/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         preview_agents/2,
         preview_agents/3,
         register_cross_account_access_role/2,
         register_cross_account_access_role/3,
         remove_attributes_from_findings/2,
         remove_attributes_from_findings/3,
         set_tags_for_resource/2,
         set_tags_for_resource/3,
         start_assessment_run/2,
         start_assessment_run/3,
         stop_assessment_run/2,
         stop_assessment_run/3,
         subscribe_to_event/2,
         subscribe_to_event/3,
         unsubscribe_from_event/2,
         unsubscribe_from_event/3,
         update_assessment_target/2,
         update_assessment_target/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% get_telemetry_metadata_request() :: #{
%%   <<"assessmentRunArn">> := string()
%% }
-type get_telemetry_metadata_request() :: #{binary() => any()}.

%% Example:
%% remove_attributes_from_findings_response() :: #{
%%   <<"failedItems">> => map()
%% }
-type remove_attributes_from_findings_response() :: #{binary() => any()}.

%% Example:
%% describe_assessment_templates_request() :: #{
%%   <<"assessmentTemplateArns">> := list(string())
%% }
-type describe_assessment_templates_request() :: #{binary() => any()}.

%% Example:
%% add_attributes_to_findings_request() :: #{
%%   <<"attributes">> := list(attribute()),
%%   <<"findingArns">> := list(string())
%% }
-type add_attributes_to_findings_request() :: #{binary() => any()}.

%% Example:
%% delete_assessment_template_request() :: #{
%%   <<"assessmentTemplateArn">> := string()
%% }
-type delete_assessment_template_request() :: #{binary() => any()}.

%% Example:
%% list_event_subscriptions_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"subscriptions">> => list(subscription())
%% }
-type list_event_subscriptions_response() :: #{binary() => any()}.

%% Example:
%% create_assessment_template_request() :: #{
%%   <<"assessmentTargetArn">> := string(),
%%   <<"assessmentTemplateName">> := string(),
%%   <<"durationInSeconds">> := integer(),
%%   <<"rulesPackageArns">> := list(string()),
%%   <<"userAttributesForFindings">> => list(attribute())
%% }
-type create_assessment_template_request() :: #{binary() => any()}.

%% Example:
%% list_event_subscriptions_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"resourceArn">> => string()
%% }
-type list_event_subscriptions_request() :: #{binary() => any()}.

%% Example:
%% list_exclusions_response() :: #{
%%   <<"exclusionArns">> => list(string()),
%%   <<"nextToken">> => string()
%% }
-type list_exclusions_response() :: #{binary() => any()}.

%% Example:
%% asset_attributes() :: #{
%%   <<"agentId">> => string(),
%%   <<"amiId">> => string(),
%%   <<"autoScalingGroup">> => string(),
%%   <<"hostname">> => string(),
%%   <<"ipv4Addresses">> => list(string()),
%%   <<"networkInterfaces">> => list(network_interface()),
%%   <<"schemaVersion">> => integer(),
%%   <<"tags">> => list(tag())
%% }
-type asset_attributes() :: #{binary() => any()}.

%% Example:
%% stop_assessment_run_request() :: #{
%%   <<"assessmentRunArn">> := string(),
%%   <<"stopAction">> => list(any())
%% }
-type stop_assessment_run_request() :: #{binary() => any()}.

%% Example:
%% describe_assessment_targets_response() :: #{
%%   <<"assessmentTargets">> => list(assessment_target()),
%%   <<"failedItems">> => map()
%% }
-type describe_assessment_targets_response() :: #{binary() => any()}.

%% Example:
%% create_resource_group_response() :: #{
%%   <<"resourceGroupArn">> => string()
%% }
-type create_resource_group_response() :: #{binary() => any()}.

%% Example:
%% no_such_entity_exception() :: #{
%%   <<"canRetry">> => boolean(),
%%   <<"errorCode">> => list(any()),
%%   <<"message">> => string()
%% }
-type no_such_entity_exception() :: #{binary() => any()}.

%% Example:
%% delete_assessment_target_request() :: #{
%%   <<"assessmentTargetArn">> := string()
%% }
-type delete_assessment_target_request() :: #{binary() => any()}.

%% Example:
%% assessment_run_filter() :: #{
%%   <<"completionTimeRange">> => timestamp_range(),
%%   <<"durationRange">> => duration_range(),
%%   <<"namePattern">> => string(),
%%   <<"rulesPackageArns">> => list(string()),
%%   <<"startTimeRange">> => timestamp_range(),
%%   <<"stateChangeTimeRange">> => timestamp_range(),
%%   <<"states">> => list(list(any())())
%% }
-type assessment_run_filter() :: #{binary() => any()}.

%% Example:
%% event_subscription() :: #{
%%   <<"event">> => list(any()),
%%   <<"subscribedAt">> => non_neg_integer()
%% }
-type event_subscription() :: #{binary() => any()}.

%% Example:
%% remove_attributes_from_findings_request() :: #{
%%   <<"attributeKeys">> := list(string()),
%%   <<"findingArns">> := list(string())
%% }
-type remove_attributes_from_findings_request() :: #{binary() => any()}.

%% Example:
%% create_exclusions_preview_response() :: #{
%%   <<"previewToken">> => string()
%% }
-type create_exclusions_preview_response() :: #{binary() => any()}.

%% Example:
%% network_interface() :: #{
%%   <<"ipv6Addresses">> => list(string()),
%%   <<"networkInterfaceId">> => string(),
%%   <<"privateDnsName">> => string(),
%%   <<"privateIpAddress">> => string(),
%%   <<"privateIpAddresses">> => list(private_ip()),
%%   <<"publicDnsName">> => string(),
%%   <<"publicIp">> => string(),
%%   <<"securityGroups">> => list(security_group()),
%%   <<"subnetId">> => string(),
%%   <<"vpcId">> => string()
%% }
-type network_interface() :: #{binary() => any()}.

%% Example:
%% describe_assessment_templates_response() :: #{
%%   <<"assessmentTemplates">> => list(assessment_template()),
%%   <<"failedItems">> => map()
%% }
-type describe_assessment_templates_response() :: #{binary() => any()}.

%% Example:
%% assessment_run_notification() :: #{
%%   <<"date">> => non_neg_integer(),
%%   <<"error">> => boolean(),
%%   <<"event">> => list(any()),
%%   <<"message">> => string(),
%%   <<"snsPublishStatusCode">> => list(any()),
%%   <<"snsTopicArn">> => string()
%% }
-type assessment_run_notification() :: #{binary() => any()}.

%% Example:
%% list_findings_response() :: #{
%%   <<"findingArns">> => list(string()),
%%   <<"nextToken">> => string()
%% }
-type list_findings_response() :: #{binary() => any()}.

%% Example:
%% register_cross_account_access_role_request() :: #{
%%   <<"roleArn">> := string()
%% }
-type register_cross_account_access_role_request() :: #{binary() => any()}.

%% Example:
%% assessment_run_agent() :: #{
%%   <<"agentHealth">> => list(any()),
%%   <<"agentHealthCode">> => list(any()),
%%   <<"agentHealthDetails">> => string(),
%%   <<"agentId">> => string(),
%%   <<"assessmentRunArn">> => string(),
%%   <<"autoScalingGroup">> => string(),
%%   <<"telemetryMetadata">> => list(telemetry_metadata())
%% }
-type assessment_run_agent() :: #{binary() => any()}.

%% Example:
%% create_assessment_template_response() :: #{
%%   <<"assessmentTemplateArn">> => string()
%% }
-type create_assessment_template_response() :: #{binary() => any()}.

%% Example:
%% preview_generation_in_progress_exception() :: #{
%%   <<"message">> => string()
%% }
-type preview_generation_in_progress_exception() :: #{binary() => any()}.

%% Example:
%% list_rules_packages_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_rules_packages_request() :: #{binary() => any()}.

%% Example:
%% get_exclusions_preview_response() :: #{
%%   <<"exclusionPreviews">> => list(exclusion_preview()),
%%   <<"nextToken">> => string(),
%%   <<"previewStatus">> => list(any())
%% }
-type get_exclusions_preview_response() :: #{binary() => any()}.

%% Example:
%% exclusion() :: #{
%%   <<"arn">> => string(),
%%   <<"attributes">> => list(attribute()),
%%   <<"description">> => string(),
%%   <<"recommendation">> => string(),
%%   <<"scopes">> => list(scope()),
%%   <<"title">> => string()
%% }
-type exclusion() :: #{binary() => any()}.

%% Example:
%% add_attributes_to_findings_response() :: #{
%%   <<"failedItems">> => map()
%% }
-type add_attributes_to_findings_response() :: #{binary() => any()}.

%% Example:
%% list_rules_packages_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"rulesPackageArns">> => list(string())
%% }
-type list_rules_packages_response() :: #{binary() => any()}.

%% Example:
%% invalid_cross_account_role_exception() :: #{
%%   <<"canRetry">> => boolean(),
%%   <<"errorCode">> => list(any()),
%%   <<"message">> => string()
%% }
-type invalid_cross_account_role_exception() :: #{binary() => any()}.

%% Example:
%% create_exclusions_preview_request() :: #{
%%   <<"assessmentTemplateArn">> := string()
%% }
-type create_exclusions_preview_request() :: #{binary() => any()}.

%% Example:
%% resource_group_tag() :: #{
%%   <<"key">> => string(),
%%   <<"value">> => string()
%% }
-type resource_group_tag() :: #{binary() => any()}.

%% Example:
%% unsupported_feature_exception() :: #{
%%   <<"canRetry">> => boolean(),
%%   <<"message">> => string()
%% }
-type unsupported_feature_exception() :: #{binary() => any()}.

%% Example:
%% agent_filter() :: #{
%%   <<"agentHealthCodes">> => list(list(any())()),
%%   <<"agentHealths">> => list(list(any())())
%% }
-type agent_filter() :: #{binary() => any()}.

%% Example:
%% list_assessment_run_agents_request() :: #{
%%   <<"assessmentRunArn">> := string(),
%%   <<"filter">> => agent_filter(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_assessment_run_agents_request() :: #{binary() => any()}.

%% Example:
%% list_assessment_targets_response() :: #{
%%   <<"assessmentTargetArns">> => list(string()),
%%   <<"nextToken">> => string()
%% }
-type list_assessment_targets_response() :: #{binary() => any()}.

%% Example:
%% list_assessment_templates_request() :: #{
%%   <<"assessmentTargetArns">> => list(string()),
%%   <<"filter">> => assessment_template_filter(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_assessment_templates_request() :: #{binary() => any()}.

%% Example:
%% list_exclusions_request() :: #{
%%   <<"assessmentRunArn">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_exclusions_request() :: #{binary() => any()}.

%% Example:
%% exclusion_preview() :: #{
%%   <<"attributes">> => list(attribute()),
%%   <<"description">> => string(),
%%   <<"recommendation">> => string(),
%%   <<"scopes">> => list(scope()),
%%   <<"title">> => string()
%% }
-type exclusion_preview() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"key">> => string(),
%%   <<"value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% agents_already_running_assessment_exception() :: #{
%%   <<"agents">> => list(agent_already_running_assessment()),
%%   <<"agentsTruncated">> => boolean(),
%%   <<"canRetry">> => boolean(),
%%   <<"message">> => string()
%% }
-type agents_already_running_assessment_exception() :: #{binary() => any()}.

%% Example:
%% describe_assessment_targets_request() :: #{
%%   <<"assessmentTargetArns">> := list(string())
%% }
-type describe_assessment_targets_request() :: #{binary() => any()}.

%% Example:
%% rules_package() :: #{
%%   <<"arn">> => string(),
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"provider">> => string(),
%%   <<"version">> => string()
%% }
-type rules_package() :: #{binary() => any()}.

%% Example:
%% assessment_run_in_progress_exception() :: #{
%%   <<"assessmentRunArns">> => list(string()),
%%   <<"assessmentRunArnsTruncated">> => boolean(),
%%   <<"canRetry">> => boolean(),
%%   <<"message">> => string()
%% }
-type assessment_run_in_progress_exception() :: #{binary() => any()}.

%% Example:
%% list_assessment_targets_request() :: #{
%%   <<"filter">> => assessment_target_filter(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_assessment_targets_request() :: #{binary() => any()}.

%% Example:
%% finding() :: #{
%%   <<"arn">> => string(),
%%   <<"assetAttributes">> => asset_attributes(),
%%   <<"assetType">> => list(any()),
%%   <<"attributes">> => list(attribute()),
%%   <<"confidence">> => integer(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"indicatorOfCompromise">> => boolean(),
%%   <<"numericSeverity">> => float(),
%%   <<"recommendation">> => string(),
%%   <<"schemaVersion">> => integer(),
%%   <<"service">> => string(),
%%   <<"serviceAttributes">> => inspector_service_attributes(),
%%   <<"severity">> => list(any()),
%%   <<"title">> => string(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"userAttributes">> => list(attribute())
%% }
-type finding() :: #{binary() => any()}.

%% Example:
%% invalid_input_exception() :: #{
%%   <<"canRetry">> => boolean(),
%%   <<"errorCode">> => list(any()),
%%   <<"message">> => string()
%% }
-type invalid_input_exception() :: #{binary() => any()}.

%% Example:
%% describe_exclusions_response() :: #{
%%   <<"exclusions">> => map(),
%%   <<"failedItems">> => map()
%% }
-type describe_exclusions_response() :: #{binary() => any()}.

%% Example:
%% agent_preview() :: #{
%%   <<"agentHealth">> => list(any()),
%%   <<"agentId">> => string(),
%%   <<"agentVersion">> => string(),
%%   <<"autoScalingGroup">> => string(),
%%   <<"hostname">> => string(),
%%   <<"ipv4Address">> => string(),
%%   <<"kernelVersion">> => string(),
%%   <<"operatingSystem">> => string()
%% }
-type agent_preview() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => list(tag())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% describe_assessment_runs_response() :: #{
%%   <<"assessmentRuns">> => list(assessment_run()),
%%   <<"failedItems">> => map()
%% }
-type describe_assessment_runs_response() :: #{binary() => any()}.

%% Example:
%% list_findings_request() :: #{
%%   <<"assessmentRunArns">> => list(string()),
%%   <<"filter">> => finding_filter(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_findings_request() :: #{binary() => any()}.

%% Example:
%% list_assessment_run_agents_response() :: #{
%%   <<"assessmentRunAgents">> => list(assessment_run_agent()),
%%   <<"nextToken">> => string()
%% }
-type list_assessment_run_agents_response() :: #{binary() => any()}.

%% Example:
%% set_tags_for_resource_request() :: #{
%%   <<"resourceArn">> := string(),
%%   <<"tags">> => list(tag())
%% }
-type set_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% get_assessment_report_response() :: #{
%%   <<"status">> => list(any()),
%%   <<"url">> => string()
%% }
-type get_assessment_report_response() :: #{binary() => any()}.

%% Example:
%% security_group() :: #{
%%   <<"groupId">> => string(),
%%   <<"groupName">> => string()
%% }
-type security_group() :: #{binary() => any()}.

%% Example:
%% list_assessment_runs_request() :: #{
%%   <<"assessmentTemplateArns">> => list(string()),
%%   <<"filter">> => assessment_run_filter(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_assessment_runs_request() :: #{binary() => any()}.

%% Example:
%% resource_group() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"tags">> => list(resource_group_tag())
%% }
-type resource_group() :: #{binary() => any()}.

%% Example:
%% unsubscribe_from_event_request() :: #{
%%   <<"event">> := list(any()),
%%   <<"resourceArn">> := string(),
%%   <<"topicArn">> := string()
%% }
-type unsubscribe_from_event_request() :: #{binary() => any()}.

%% Example:
%% start_assessment_run_request() :: #{
%%   <<"assessmentRunName">> => string(),
%%   <<"assessmentTemplateArn">> := string()
%% }
-type start_assessment_run_request() :: #{binary() => any()}.

%% Example:
%% assessment_template_filter() :: #{
%%   <<"durationRange">> => duration_range(),
%%   <<"namePattern">> => string(),
%%   <<"rulesPackageArns">> => list(string())
%% }
-type assessment_template_filter() :: #{binary() => any()}.

%% Example:
%% scope() :: #{
%%   <<"key">> => list(any()),
%%   <<"value">> => string()
%% }
-type scope() :: #{binary() => any()}.

%% Example:
%% preview_agents_response() :: #{
%%   <<"agentPreviews">> => list(agent_preview()),
%%   <<"nextToken">> => string()
%% }
-type preview_agents_response() :: #{binary() => any()}.

%% Example:
%% create_assessment_target_response() :: #{
%%   <<"assessmentTargetArn">> => string()
%% }
-type create_assessment_target_response() :: #{binary() => any()}.

%% Example:
%% service_temporarily_unavailable_exception() :: #{
%%   <<"canRetry">> => boolean(),
%%   <<"message">> => string()
%% }
-type service_temporarily_unavailable_exception() :: #{binary() => any()}.

%% Example:
%% delete_assessment_run_request() :: #{
%%   <<"assessmentRunArn">> := string()
%% }
-type delete_assessment_run_request() :: #{binary() => any()}.

%% Example:
%% describe_rules_packages_request() :: #{
%%   <<"locale">> => list(any()),
%%   <<"rulesPackageArns">> := list(string())
%% }
-type describe_rules_packages_request() :: #{binary() => any()}.

%% Example:
%% duration_range() :: #{
%%   <<"maxSeconds">> => integer(),
%%   <<"minSeconds">> => integer()
%% }
-type duration_range() :: #{binary() => any()}.

%% Example:
%% list_assessment_runs_response() :: #{
%%   <<"assessmentRunArns">> => list(string()),
%%   <<"nextToken">> => string()
%% }
-type list_assessment_runs_response() :: #{binary() => any()}.

%% Example:
%% inspector_service_attributes() :: #{
%%   <<"assessmentRunArn">> => string(),
%%   <<"rulesPackageArn">> => string(),
%%   <<"schemaVersion">> => integer()
%% }
-type inspector_service_attributes() :: #{binary() => any()}.

%% Example:
%% timestamp_range() :: #{
%%   <<"beginDate">> => non_neg_integer(),
%%   <<"endDate">> => non_neg_integer()
%% }
-type timestamp_range() :: #{binary() => any()}.

%% Example:
%% internal_exception() :: #{
%%   <<"canRetry">> => boolean(),
%%   <<"message">> => string()
%% }
-type internal_exception() :: #{binary() => any()}.

%% Example:
%% access_denied_exception() :: #{
%%   <<"canRetry">> => boolean(),
%%   <<"errorCode">> => list(any()),
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% telemetry_metadata() :: #{
%%   <<"count">> => float(),
%%   <<"dataSize">> => float(),
%%   <<"messageType">> => string()
%% }
-type telemetry_metadata() :: #{binary() => any()}.

%% Example:
%% create_resource_group_request() :: #{
%%   <<"resourceGroupTags">> := list(resource_group_tag())
%% }
-type create_resource_group_request() :: #{binary() => any()}.

%% Example:
%% describe_exclusions_request() :: #{
%%   <<"exclusionArns">> := list(string()),
%%   <<"locale">> => list(any())
%% }
-type describe_exclusions_request() :: #{binary() => any()}.

%% Example:
%% describe_findings_response() :: #{
%%   <<"failedItems">> => map(),
%%   <<"findings">> => list(finding())
%% }
-type describe_findings_response() :: #{binary() => any()}.

%% Example:
%% finding_filter() :: #{
%%   <<"agentIds">> => list(string()),
%%   <<"attributes">> => list(attribute()),
%%   <<"autoScalingGroups">> => list(string()),
%%   <<"creationTimeRange">> => timestamp_range(),
%%   <<"ruleNames">> => list(string()),
%%   <<"rulesPackageArns">> => list(string()),
%%   <<"severities">> => list(list(any())()),
%%   <<"userAttributes">> => list(attribute())
%% }
-type finding_filter() :: #{binary() => any()}.

%% Example:
%% describe_cross_account_access_role_response() :: #{
%%   <<"registeredAt">> => non_neg_integer(),
%%   <<"roleArn">> => string(),
%%   <<"valid">> => boolean()
%% }
-type describe_cross_account_access_role_response() :: #{binary() => any()}.

%% Example:
%% assessment_template() :: #{
%%   <<"arn">> => string(),
%%   <<"assessmentRunCount">> => integer(),
%%   <<"assessmentTargetArn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"durationInSeconds">> => integer(),
%%   <<"lastAssessmentRunArn">> => string(),
%%   <<"name">> => string(),
%%   <<"rulesPackageArns">> => list(string()),
%%   <<"userAttributesForFindings">> => list(attribute())
%% }
-type assessment_template() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"resourceArn">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% preview_agents_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"previewAgentsArn">> := string()
%% }
-type preview_agents_request() :: #{binary() => any()}.

%% Example:
%% private_ip() :: #{
%%   <<"privateDnsName">> => string(),
%%   <<"privateIpAddress">> => string()
%% }
-type private_ip() :: #{binary() => any()}.

%% Example:
%% subscription() :: #{
%%   <<"eventSubscriptions">> => list(event_subscription()),
%%   <<"resourceArn">> => string(),
%%   <<"topicArn">> => string()
%% }
-type subscription() :: #{binary() => any()}.

%% Example:
%% describe_rules_packages_response() :: #{
%%   <<"failedItems">> => map(),
%%   <<"rulesPackages">> => list(rules_package())
%% }
-type describe_rules_packages_response() :: #{binary() => any()}.

%% Example:
%% assessment_target_filter() :: #{
%%   <<"assessmentTargetNamePattern">> => string()
%% }
-type assessment_target_filter() :: #{binary() => any()}.

%% Example:
%% describe_resource_groups_response() :: #{
%%   <<"failedItems">> => map(),
%%   <<"resourceGroups">> => list(resource_group())
%% }
-type describe_resource_groups_response() :: #{binary() => any()}.

%% Example:
%% create_assessment_target_request() :: #{
%%   <<"assessmentTargetName">> := string(),
%%   <<"resourceGroupArn">> => string()
%% }
-type create_assessment_target_request() :: #{binary() => any()}.

%% Example:
%% attribute() :: #{
%%   <<"key">> => string(),
%%   <<"value">> => string()
%% }
-type attribute() :: #{binary() => any()}.

%% Example:
%% assessment_run() :: #{
%%   <<"arn">> => string(),
%%   <<"assessmentTemplateArn">> => string(),
%%   <<"completedAt">> => non_neg_integer(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"dataCollected">> => boolean(),
%%   <<"durationInSeconds">> => integer(),
%%   <<"findingCounts">> => map(),
%%   <<"name">> => string(),
%%   <<"notifications">> => list(assessment_run_notification()),
%%   <<"rulesPackageArns">> => list(string()),
%%   <<"startedAt">> => non_neg_integer(),
%%   <<"state">> => list(any()),
%%   <<"stateChangedAt">> => non_neg_integer(),
%%   <<"stateChanges">> => list(assessment_run_state_change()),
%%   <<"userAttributesForFindings">> => list(attribute())
%% }
-type assessment_run() :: #{binary() => any()}.

%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"canRetry">> => boolean(),
%%   <<"errorCode">> => list(any()),
%%   <<"message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% subscribe_to_event_request() :: #{
%%   <<"event">> := list(any()),
%%   <<"resourceArn">> := string(),
%%   <<"topicArn">> := string()
%% }
-type subscribe_to_event_request() :: #{binary() => any()}.

%% Example:
%% list_assessment_templates_response() :: #{
%%   <<"assessmentTemplateArns">> => list(string()),
%%   <<"nextToken">> => string()
%% }
-type list_assessment_templates_response() :: #{binary() => any()}.

%% Example:
%% get_assessment_report_request() :: #{
%%   <<"assessmentRunArn">> := string(),
%%   <<"reportFileFormat">> := list(any()),
%%   <<"reportType">> := list(any())
%% }
-type get_assessment_report_request() :: #{binary() => any()}.

%% Example:
%% start_assessment_run_response() :: #{
%%   <<"assessmentRunArn">> => string()
%% }
-type start_assessment_run_response() :: #{binary() => any()}.

%% Example:
%% describe_findings_request() :: #{
%%   <<"findingArns">> := list(string()),
%%   <<"locale">> => list(any())
%% }
-type describe_findings_request() :: #{binary() => any()}.

%% Example:
%% agent_already_running_assessment() :: #{
%%   <<"agentId">> => string(),
%%   <<"assessmentRunArn">> => string()
%% }
-type agent_already_running_assessment() :: #{binary() => any()}.

%% Example:
%% get_telemetry_metadata_response() :: #{
%%   <<"telemetryMetadata">> => list(telemetry_metadata())
%% }
-type get_telemetry_metadata_response() :: #{binary() => any()}.

%% Example:
%% describe_resource_groups_request() :: #{
%%   <<"resourceGroupArns">> := list(string())
%% }
-type describe_resource_groups_request() :: #{binary() => any()}.

%% Example:
%% failed_item_details() :: #{
%%   <<"failureCode">> => list(any()),
%%   <<"retryable">> => boolean()
%% }
-type failed_item_details() :: #{binary() => any()}.

%% Example:
%% assessment_run_state_change() :: #{
%%   <<"state">> => list(any()),
%%   <<"stateChangedAt">> => non_neg_integer()
%% }
-type assessment_run_state_change() :: #{binary() => any()}.

%% Example:
%% assessment_target() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"resourceGroupArn">> => string(),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type assessment_target() :: #{binary() => any()}.

%% Example:
%% get_exclusions_preview_request() :: #{
%%   <<"assessmentTemplateArn">> := string(),
%%   <<"locale">> => list(any()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"previewToken">> := string()
%% }
-type get_exclusions_preview_request() :: #{binary() => any()}.

%% Example:
%% describe_assessment_runs_request() :: #{
%%   <<"assessmentRunArns">> := list(string())
%% }
-type describe_assessment_runs_request() :: #{binary() => any()}.

%% Example:
%% update_assessment_target_request() :: #{
%%   <<"assessmentTargetArn">> := string(),
%%   <<"assessmentTargetName">> := string(),
%%   <<"resourceGroupArn">> => string()
%% }
-type update_assessment_target_request() :: #{binary() => any()}.

-type add_attributes_to_findings_errors() ::
    access_denied_exception() | 
    internal_exception() | 
    service_temporarily_unavailable_exception() | 
    invalid_input_exception() | 
    no_such_entity_exception().

-type create_assessment_target_errors() ::
    limit_exceeded_exception() | 
    access_denied_exception() | 
    internal_exception() | 
    service_temporarily_unavailable_exception() | 
    invalid_input_exception() | 
    invalid_cross_account_role_exception() | 
    no_such_entity_exception().

-type create_assessment_template_errors() ::
    limit_exceeded_exception() | 
    access_denied_exception() | 
    internal_exception() | 
    service_temporarily_unavailable_exception() | 
    invalid_input_exception() | 
    no_such_entity_exception().

-type create_exclusions_preview_errors() ::
    access_denied_exception() | 
    internal_exception() | 
    service_temporarily_unavailable_exception() | 
    invalid_input_exception() | 
    preview_generation_in_progress_exception() | 
    no_such_entity_exception().

-type create_resource_group_errors() ::
    limit_exceeded_exception() | 
    access_denied_exception() | 
    internal_exception() | 
    service_temporarily_unavailable_exception() | 
    invalid_input_exception().

-type delete_assessment_run_errors() ::
    access_denied_exception() | 
    internal_exception() | 
    service_temporarily_unavailable_exception() | 
    invalid_input_exception() | 
    assessment_run_in_progress_exception() | 
    no_such_entity_exception().

-type delete_assessment_target_errors() ::
    access_denied_exception() | 
    internal_exception() | 
    service_temporarily_unavailable_exception() | 
    invalid_input_exception() | 
    assessment_run_in_progress_exception() | 
    no_such_entity_exception().

-type delete_assessment_template_errors() ::
    access_denied_exception() | 
    internal_exception() | 
    service_temporarily_unavailable_exception() | 
    invalid_input_exception() | 
    assessment_run_in_progress_exception() | 
    no_such_entity_exception().

-type describe_assessment_runs_errors() ::
    internal_exception() | 
    invalid_input_exception().

-type describe_assessment_targets_errors() ::
    internal_exception() | 
    invalid_input_exception().

-type describe_assessment_templates_errors() ::
    internal_exception() | 
    invalid_input_exception().

-type describe_cross_account_access_role_errors() ::
    internal_exception().

-type describe_exclusions_errors() ::
    internal_exception() | 
    invalid_input_exception().

-type describe_findings_errors() ::
    internal_exception() | 
    invalid_input_exception().

-type describe_resource_groups_errors() ::
    internal_exception() | 
    invalid_input_exception().

-type describe_rules_packages_errors() ::
    internal_exception() | 
    invalid_input_exception().

-type get_assessment_report_errors() ::
    access_denied_exception() | 
    internal_exception() | 
    service_temporarily_unavailable_exception() | 
    invalid_input_exception() | 
    assessment_run_in_progress_exception() | 
    unsupported_feature_exception() | 
    no_such_entity_exception().

-type get_exclusions_preview_errors() ::
    access_denied_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    no_such_entity_exception().

-type get_telemetry_metadata_errors() ::
    access_denied_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    no_such_entity_exception().

-type list_assessment_run_agents_errors() ::
    access_denied_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    no_such_entity_exception().

-type list_assessment_runs_errors() ::
    access_denied_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    no_such_entity_exception().

-type list_assessment_targets_errors() ::
    access_denied_exception() | 
    internal_exception() | 
    invalid_input_exception().

-type list_assessment_templates_errors() ::
    access_denied_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    no_such_entity_exception().

-type list_event_subscriptions_errors() ::
    access_denied_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    no_such_entity_exception().

-type list_exclusions_errors() ::
    access_denied_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    no_such_entity_exception().

-type list_findings_errors() ::
    access_denied_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    no_such_entity_exception().

-type list_rules_packages_errors() ::
    access_denied_exception() | 
    internal_exception() | 
    invalid_input_exception().

-type list_tags_for_resource_errors() ::
    access_denied_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    no_such_entity_exception().

-type preview_agents_errors() ::
    access_denied_exception() | 
    internal_exception() | 
    invalid_input_exception() | 
    invalid_cross_account_role_exception() | 
    no_such_entity_exception().

-type register_cross_account_access_role_errors() ::
    access_denied_exception() | 
    internal_exception() | 
    service_temporarily_unavailable_exception() | 
    invalid_input_exception() | 
    invalid_cross_account_role_exception().

-type remove_attributes_from_findings_errors() ::
    access_denied_exception() | 
    internal_exception() | 
    service_temporarily_unavailable_exception() | 
    invalid_input_exception() | 
    no_such_entity_exception().

-type set_tags_for_resource_errors() ::
    access_denied_exception() | 
    internal_exception() | 
    service_temporarily_unavailable_exception() | 
    invalid_input_exception() | 
    no_such_entity_exception().

-type start_assessment_run_errors() ::
    limit_exceeded_exception() | 
    access_denied_exception() | 
    internal_exception() | 
    service_temporarily_unavailable_exception() | 
    invalid_input_exception() | 
    agents_already_running_assessment_exception() | 
    invalid_cross_account_role_exception() | 
    no_such_entity_exception().

-type stop_assessment_run_errors() ::
    access_denied_exception() | 
    internal_exception() | 
    service_temporarily_unavailable_exception() | 
    invalid_input_exception() | 
    no_such_entity_exception().

-type subscribe_to_event_errors() ::
    limit_exceeded_exception() | 
    access_denied_exception() | 
    internal_exception() | 
    service_temporarily_unavailable_exception() | 
    invalid_input_exception() | 
    no_such_entity_exception().

-type unsubscribe_from_event_errors() ::
    access_denied_exception() | 
    internal_exception() | 
    service_temporarily_unavailable_exception() | 
    invalid_input_exception() | 
    no_such_entity_exception().

-type update_assessment_target_errors() ::
    access_denied_exception() | 
    internal_exception() | 
    service_temporarily_unavailable_exception() | 
    invalid_input_exception() | 
    no_such_entity_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Assigns attributes (key and value pairs) to the findings that are
%% specified by the
%% ARNs of the findings.
-spec add_attributes_to_findings(aws_client:aws_client(), add_attributes_to_findings_request()) ->
    {ok, add_attributes_to_findings_response(), tuple()} |
    {error, any()} |
    {error, add_attributes_to_findings_errors(), tuple()}.
add_attributes_to_findings(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_attributes_to_findings(Client, Input, []).

-spec add_attributes_to_findings(aws_client:aws_client(), add_attributes_to_findings_request(), proplists:proplist()) ->
    {ok, add_attributes_to_findings_response(), tuple()} |
    {error, any()} |
    {error, add_attributes_to_findings_errors(), tuple()}.
add_attributes_to_findings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddAttributesToFindings">>, Input, Options).

%% @doc Creates a new assessment target using the ARN of the resource group
%% that is generated
%% by `CreateResourceGroup'.
%%
%% If resourceGroupArn is not specified, all EC2
%% instances in the current AWS account and region are included in the
%% assessment target. If
%% the service-linked role:
%% https://docs.aws.amazon.com/inspector/latest/userguide/inspector_slr.html
%% isn’t already registered, this action also creates and
%% registers a service-linked role to grant Amazon Inspector access to AWS
%% Services needed to
%% perform security assessments. You can create up to 50 assessment targets
%% per AWS account.
%% You can run up to 500 concurrent agents per AWS account. For more
%% information, see
%% Amazon Inspector Assessment Targets:
%% https://docs.aws.amazon.com/inspector/latest/userguide/inspector_applications.html.
-spec create_assessment_target(aws_client:aws_client(), create_assessment_target_request()) ->
    {ok, create_assessment_target_response(), tuple()} |
    {error, any()} |
    {error, create_assessment_target_errors(), tuple()}.
create_assessment_target(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_assessment_target(Client, Input, []).

-spec create_assessment_target(aws_client:aws_client(), create_assessment_target_request(), proplists:proplist()) ->
    {ok, create_assessment_target_response(), tuple()} |
    {error, any()} |
    {error, create_assessment_target_errors(), tuple()}.
create_assessment_target(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAssessmentTarget">>, Input, Options).

%% @doc Creates an assessment template for the assessment target that is
%% specified by the ARN
%% of the assessment target.
%%
%% If the service-linked role:
%% https://docs.aws.amazon.com/inspector/latest/userguide/inspector_slr.html
%% isn’t already registered, this action also creates and
%% registers a service-linked role to grant Amazon Inspector access to AWS
%% Services needed to
%% perform security assessments.
-spec create_assessment_template(aws_client:aws_client(), create_assessment_template_request()) ->
    {ok, create_assessment_template_response(), tuple()} |
    {error, any()} |
    {error, create_assessment_template_errors(), tuple()}.
create_assessment_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_assessment_template(Client, Input, []).

-spec create_assessment_template(aws_client:aws_client(), create_assessment_template_request(), proplists:proplist()) ->
    {ok, create_assessment_template_response(), tuple()} |
    {error, any()} |
    {error, create_assessment_template_errors(), tuple()}.
create_assessment_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAssessmentTemplate">>, Input, Options).

%% @doc Starts the generation of an exclusions preview for the specified
%% assessment template.
%%
%% The exclusions preview lists the potential exclusions (ExclusionPreview)
%% that Inspector can
%% detect before it runs the assessment.
-spec create_exclusions_preview(aws_client:aws_client(), create_exclusions_preview_request()) ->
    {ok, create_exclusions_preview_response(), tuple()} |
    {error, any()} |
    {error, create_exclusions_preview_errors(), tuple()}.
create_exclusions_preview(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_exclusions_preview(Client, Input, []).

-spec create_exclusions_preview(aws_client:aws_client(), create_exclusions_preview_request(), proplists:proplist()) ->
    {ok, create_exclusions_preview_response(), tuple()} |
    {error, any()} |
    {error, create_exclusions_preview_errors(), tuple()}.
create_exclusions_preview(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateExclusionsPreview">>, Input, Options).

%% @doc Creates a resource group using the specified set of tags (key and
%% value pairs) that
%% are used to select the EC2 instances to be included in an Amazon Inspector
%% assessment
%% target.
%%
%% The created resource group is then used to create an Amazon Inspector
%% assessment
%% target. For more information, see `CreateAssessmentTarget'.
-spec create_resource_group(aws_client:aws_client(), create_resource_group_request()) ->
    {ok, create_resource_group_response(), tuple()} |
    {error, any()} |
    {error, create_resource_group_errors(), tuple()}.
create_resource_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_resource_group(Client, Input, []).

-spec create_resource_group(aws_client:aws_client(), create_resource_group_request(), proplists:proplist()) ->
    {ok, create_resource_group_response(), tuple()} |
    {error, any()} |
    {error, create_resource_group_errors(), tuple()}.
create_resource_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateResourceGroup">>, Input, Options).

%% @doc Deletes the assessment run that is specified by the ARN of the
%% assessment
%% run.
-spec delete_assessment_run(aws_client:aws_client(), delete_assessment_run_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_assessment_run_errors(), tuple()}.
delete_assessment_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_assessment_run(Client, Input, []).

-spec delete_assessment_run(aws_client:aws_client(), delete_assessment_run_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_assessment_run_errors(), tuple()}.
delete_assessment_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAssessmentRun">>, Input, Options).

%% @doc Deletes the assessment target that is specified by the ARN of the
%% assessment
%% target.
-spec delete_assessment_target(aws_client:aws_client(), delete_assessment_target_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_assessment_target_errors(), tuple()}.
delete_assessment_target(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_assessment_target(Client, Input, []).

-spec delete_assessment_target(aws_client:aws_client(), delete_assessment_target_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_assessment_target_errors(), tuple()}.
delete_assessment_target(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAssessmentTarget">>, Input, Options).

%% @doc Deletes the assessment template that is specified by the ARN of the
%% assessment
%% template.
-spec delete_assessment_template(aws_client:aws_client(), delete_assessment_template_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_assessment_template_errors(), tuple()}.
delete_assessment_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_assessment_template(Client, Input, []).

-spec delete_assessment_template(aws_client:aws_client(), delete_assessment_template_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_assessment_template_errors(), tuple()}.
delete_assessment_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAssessmentTemplate">>, Input, Options).

%% @doc Describes the assessment runs that are specified by the ARNs of the
%% assessment
%% runs.
-spec describe_assessment_runs(aws_client:aws_client(), describe_assessment_runs_request()) ->
    {ok, describe_assessment_runs_response(), tuple()} |
    {error, any()} |
    {error, describe_assessment_runs_errors(), tuple()}.
describe_assessment_runs(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_assessment_runs(Client, Input, []).

-spec describe_assessment_runs(aws_client:aws_client(), describe_assessment_runs_request(), proplists:proplist()) ->
    {ok, describe_assessment_runs_response(), tuple()} |
    {error, any()} |
    {error, describe_assessment_runs_errors(), tuple()}.
describe_assessment_runs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAssessmentRuns">>, Input, Options).

%% @doc Describes the assessment targets that are specified by the ARNs of
%% the assessment
%% targets.
-spec describe_assessment_targets(aws_client:aws_client(), describe_assessment_targets_request()) ->
    {ok, describe_assessment_targets_response(), tuple()} |
    {error, any()} |
    {error, describe_assessment_targets_errors(), tuple()}.
describe_assessment_targets(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_assessment_targets(Client, Input, []).

-spec describe_assessment_targets(aws_client:aws_client(), describe_assessment_targets_request(), proplists:proplist()) ->
    {ok, describe_assessment_targets_response(), tuple()} |
    {error, any()} |
    {error, describe_assessment_targets_errors(), tuple()}.
describe_assessment_targets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAssessmentTargets">>, Input, Options).

%% @doc Describes the assessment templates that are specified by the ARNs of
%% the assessment
%% templates.
-spec describe_assessment_templates(aws_client:aws_client(), describe_assessment_templates_request()) ->
    {ok, describe_assessment_templates_response(), tuple()} |
    {error, any()} |
    {error, describe_assessment_templates_errors(), tuple()}.
describe_assessment_templates(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_assessment_templates(Client, Input, []).

-spec describe_assessment_templates(aws_client:aws_client(), describe_assessment_templates_request(), proplists:proplist()) ->
    {ok, describe_assessment_templates_response(), tuple()} |
    {error, any()} |
    {error, describe_assessment_templates_errors(), tuple()}.
describe_assessment_templates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAssessmentTemplates">>, Input, Options).

%% @doc Describes the IAM role that enables Amazon Inspector to access your
%% AWS
%% account.
-spec describe_cross_account_access_role(aws_client:aws_client(), #{}) ->
    {ok, describe_cross_account_access_role_response(), tuple()} |
    {error, any()} |
    {error, describe_cross_account_access_role_errors(), tuple()}.
describe_cross_account_access_role(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_cross_account_access_role(Client, Input, []).

-spec describe_cross_account_access_role(aws_client:aws_client(), #{}, proplists:proplist()) ->
    {ok, describe_cross_account_access_role_response(), tuple()} |
    {error, any()} |
    {error, describe_cross_account_access_role_errors(), tuple()}.
describe_cross_account_access_role(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCrossAccountAccessRole">>, Input, Options).

%% @doc Describes the exclusions that are specified by the exclusions'
%% ARNs.
-spec describe_exclusions(aws_client:aws_client(), describe_exclusions_request()) ->
    {ok, describe_exclusions_response(), tuple()} |
    {error, any()} |
    {error, describe_exclusions_errors(), tuple()}.
describe_exclusions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_exclusions(Client, Input, []).

-spec describe_exclusions(aws_client:aws_client(), describe_exclusions_request(), proplists:proplist()) ->
    {ok, describe_exclusions_response(), tuple()} |
    {error, any()} |
    {error, describe_exclusions_errors(), tuple()}.
describe_exclusions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeExclusions">>, Input, Options).

%% @doc Describes the findings that are specified by the ARNs of the
%% findings.
-spec describe_findings(aws_client:aws_client(), describe_findings_request()) ->
    {ok, describe_findings_response(), tuple()} |
    {error, any()} |
    {error, describe_findings_errors(), tuple()}.
describe_findings(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_findings(Client, Input, []).

-spec describe_findings(aws_client:aws_client(), describe_findings_request(), proplists:proplist()) ->
    {ok, describe_findings_response(), tuple()} |
    {error, any()} |
    {error, describe_findings_errors(), tuple()}.
describe_findings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFindings">>, Input, Options).

%% @doc Describes the resource groups that are specified by the ARNs of the
%% resource
%% groups.
-spec describe_resource_groups(aws_client:aws_client(), describe_resource_groups_request()) ->
    {ok, describe_resource_groups_response(), tuple()} |
    {error, any()} |
    {error, describe_resource_groups_errors(), tuple()}.
describe_resource_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_resource_groups(Client, Input, []).

-spec describe_resource_groups(aws_client:aws_client(), describe_resource_groups_request(), proplists:proplist()) ->
    {ok, describe_resource_groups_response(), tuple()} |
    {error, any()} |
    {error, describe_resource_groups_errors(), tuple()}.
describe_resource_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeResourceGroups">>, Input, Options).

%% @doc Describes the rules packages that are specified by the ARNs of the
%% rules
%% packages.
-spec describe_rules_packages(aws_client:aws_client(), describe_rules_packages_request()) ->
    {ok, describe_rules_packages_response(), tuple()} |
    {error, any()} |
    {error, describe_rules_packages_errors(), tuple()}.
describe_rules_packages(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_rules_packages(Client, Input, []).

-spec describe_rules_packages(aws_client:aws_client(), describe_rules_packages_request(), proplists:proplist()) ->
    {ok, describe_rules_packages_response(), tuple()} |
    {error, any()} |
    {error, describe_rules_packages_errors(), tuple()}.
describe_rules_packages(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRulesPackages">>, Input, Options).

%% @doc Produces an assessment report that includes detailed and
%% comprehensive results of a
%% specified assessment run.
-spec get_assessment_report(aws_client:aws_client(), get_assessment_report_request()) ->
    {ok, get_assessment_report_response(), tuple()} |
    {error, any()} |
    {error, get_assessment_report_errors(), tuple()}.
get_assessment_report(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_assessment_report(Client, Input, []).

-spec get_assessment_report(aws_client:aws_client(), get_assessment_report_request(), proplists:proplist()) ->
    {ok, get_assessment_report_response(), tuple()} |
    {error, any()} |
    {error, get_assessment_report_errors(), tuple()}.
get_assessment_report(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAssessmentReport">>, Input, Options).

%% @doc Retrieves the exclusions preview (a list of ExclusionPreview objects)
%% specified by
%% the preview token.
%%
%% You can obtain the preview token by running the CreateExclusionsPreview
%% API.
-spec get_exclusions_preview(aws_client:aws_client(), get_exclusions_preview_request()) ->
    {ok, get_exclusions_preview_response(), tuple()} |
    {error, any()} |
    {error, get_exclusions_preview_errors(), tuple()}.
get_exclusions_preview(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_exclusions_preview(Client, Input, []).

-spec get_exclusions_preview(aws_client:aws_client(), get_exclusions_preview_request(), proplists:proplist()) ->
    {ok, get_exclusions_preview_response(), tuple()} |
    {error, any()} |
    {error, get_exclusions_preview_errors(), tuple()}.
get_exclusions_preview(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetExclusionsPreview">>, Input, Options).

%% @doc Information about the data that is collected for the specified
%% assessment
%% run.
-spec get_telemetry_metadata(aws_client:aws_client(), get_telemetry_metadata_request()) ->
    {ok, get_telemetry_metadata_response(), tuple()} |
    {error, any()} |
    {error, get_telemetry_metadata_errors(), tuple()}.
get_telemetry_metadata(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_telemetry_metadata(Client, Input, []).

-spec get_telemetry_metadata(aws_client:aws_client(), get_telemetry_metadata_request(), proplists:proplist()) ->
    {ok, get_telemetry_metadata_response(), tuple()} |
    {error, any()} |
    {error, get_telemetry_metadata_errors(), tuple()}.
get_telemetry_metadata(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTelemetryMetadata">>, Input, Options).

%% @doc Lists the agents of the assessment runs that are specified by the
%% ARNs of the
%% assessment runs.
-spec list_assessment_run_agents(aws_client:aws_client(), list_assessment_run_agents_request()) ->
    {ok, list_assessment_run_agents_response(), tuple()} |
    {error, any()} |
    {error, list_assessment_run_agents_errors(), tuple()}.
list_assessment_run_agents(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_assessment_run_agents(Client, Input, []).

-spec list_assessment_run_agents(aws_client:aws_client(), list_assessment_run_agents_request(), proplists:proplist()) ->
    {ok, list_assessment_run_agents_response(), tuple()} |
    {error, any()} |
    {error, list_assessment_run_agents_errors(), tuple()}.
list_assessment_run_agents(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAssessmentRunAgents">>, Input, Options).

%% @doc Lists the assessment runs that correspond to the assessment templates
%% that are
%% specified by the ARNs of the assessment templates.
-spec list_assessment_runs(aws_client:aws_client(), list_assessment_runs_request()) ->
    {ok, list_assessment_runs_response(), tuple()} |
    {error, any()} |
    {error, list_assessment_runs_errors(), tuple()}.
list_assessment_runs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_assessment_runs(Client, Input, []).

-spec list_assessment_runs(aws_client:aws_client(), list_assessment_runs_request(), proplists:proplist()) ->
    {ok, list_assessment_runs_response(), tuple()} |
    {error, any()} |
    {error, list_assessment_runs_errors(), tuple()}.
list_assessment_runs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAssessmentRuns">>, Input, Options).

%% @doc Lists the ARNs of the assessment targets within this AWS account.
%%
%% For more
%% information about assessment targets, see Amazon Inspector Assessment
%% Targets:
%% https://docs.aws.amazon.com/inspector/latest/userguide/inspector_applications.html.
-spec list_assessment_targets(aws_client:aws_client(), list_assessment_targets_request()) ->
    {ok, list_assessment_targets_response(), tuple()} |
    {error, any()} |
    {error, list_assessment_targets_errors(), tuple()}.
list_assessment_targets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_assessment_targets(Client, Input, []).

-spec list_assessment_targets(aws_client:aws_client(), list_assessment_targets_request(), proplists:proplist()) ->
    {ok, list_assessment_targets_response(), tuple()} |
    {error, any()} |
    {error, list_assessment_targets_errors(), tuple()}.
list_assessment_targets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAssessmentTargets">>, Input, Options).

%% @doc Lists the assessment templates that correspond to the assessment
%% targets that are
%% specified by the ARNs of the assessment targets.
-spec list_assessment_templates(aws_client:aws_client(), list_assessment_templates_request()) ->
    {ok, list_assessment_templates_response(), tuple()} |
    {error, any()} |
    {error, list_assessment_templates_errors(), tuple()}.
list_assessment_templates(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_assessment_templates(Client, Input, []).

-spec list_assessment_templates(aws_client:aws_client(), list_assessment_templates_request(), proplists:proplist()) ->
    {ok, list_assessment_templates_response(), tuple()} |
    {error, any()} |
    {error, list_assessment_templates_errors(), tuple()}.
list_assessment_templates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAssessmentTemplates">>, Input, Options).

%% @doc Lists all the event subscriptions for the assessment template that is
%% specified by
%% the ARN of the assessment template.
%%
%% For more information, see `SubscribeToEvent' and
%% `UnsubscribeFromEvent'.
-spec list_event_subscriptions(aws_client:aws_client(), list_event_subscriptions_request()) ->
    {ok, list_event_subscriptions_response(), tuple()} |
    {error, any()} |
    {error, list_event_subscriptions_errors(), tuple()}.
list_event_subscriptions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_event_subscriptions(Client, Input, []).

-spec list_event_subscriptions(aws_client:aws_client(), list_event_subscriptions_request(), proplists:proplist()) ->
    {ok, list_event_subscriptions_response(), tuple()} |
    {error, any()} |
    {error, list_event_subscriptions_errors(), tuple()}.
list_event_subscriptions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEventSubscriptions">>, Input, Options).

%% @doc List exclusions that are generated by the assessment run.
-spec list_exclusions(aws_client:aws_client(), list_exclusions_request()) ->
    {ok, list_exclusions_response(), tuple()} |
    {error, any()} |
    {error, list_exclusions_errors(), tuple()}.
list_exclusions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_exclusions(Client, Input, []).

-spec list_exclusions(aws_client:aws_client(), list_exclusions_request(), proplists:proplist()) ->
    {ok, list_exclusions_response(), tuple()} |
    {error, any()} |
    {error, list_exclusions_errors(), tuple()}.
list_exclusions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListExclusions">>, Input, Options).

%% @doc Lists findings that are generated by the assessment runs that are
%% specified by the
%% ARNs of the assessment runs.
-spec list_findings(aws_client:aws_client(), list_findings_request()) ->
    {ok, list_findings_response(), tuple()} |
    {error, any()} |
    {error, list_findings_errors(), tuple()}.
list_findings(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_findings(Client, Input, []).

-spec list_findings(aws_client:aws_client(), list_findings_request(), proplists:proplist()) ->
    {ok, list_findings_response(), tuple()} |
    {error, any()} |
    {error, list_findings_errors(), tuple()}.
list_findings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListFindings">>, Input, Options).

%% @doc Lists all available Amazon Inspector rules packages.
-spec list_rules_packages(aws_client:aws_client(), list_rules_packages_request()) ->
    {ok, list_rules_packages_response(), tuple()} |
    {error, any()} |
    {error, list_rules_packages_errors(), tuple()}.
list_rules_packages(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_rules_packages(Client, Input, []).

-spec list_rules_packages(aws_client:aws_client(), list_rules_packages_request(), proplists:proplist()) ->
    {ok, list_rules_packages_response(), tuple()} |
    {error, any()} |
    {error, list_rules_packages_errors(), tuple()}.
list_rules_packages(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRulesPackages">>, Input, Options).

%% @doc Lists all tags associated with an assessment template.
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

%% @doc Previews the agents installed on the EC2 instances that are part of
%% the specified
%% assessment target.
-spec preview_agents(aws_client:aws_client(), preview_agents_request()) ->
    {ok, preview_agents_response(), tuple()} |
    {error, any()} |
    {error, preview_agents_errors(), tuple()}.
preview_agents(Client, Input)
  when is_map(Client), is_map(Input) ->
    preview_agents(Client, Input, []).

-spec preview_agents(aws_client:aws_client(), preview_agents_request(), proplists:proplist()) ->
    {ok, preview_agents_response(), tuple()} |
    {error, any()} |
    {error, preview_agents_errors(), tuple()}.
preview_agents(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PreviewAgents">>, Input, Options).

%% @doc Registers the IAM role that grants Amazon Inspector access to AWS
%% Services needed to
%% perform security assessments.
-spec register_cross_account_access_role(aws_client:aws_client(), register_cross_account_access_role_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, register_cross_account_access_role_errors(), tuple()}.
register_cross_account_access_role(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_cross_account_access_role(Client, Input, []).

-spec register_cross_account_access_role(aws_client:aws_client(), register_cross_account_access_role_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, register_cross_account_access_role_errors(), tuple()}.
register_cross_account_access_role(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterCrossAccountAccessRole">>, Input, Options).

%% @doc Removes entire attributes (key and value pairs) from the findings
%% that are specified
%% by the ARNs of the findings where an attribute with the specified key
%% exists.
-spec remove_attributes_from_findings(aws_client:aws_client(), remove_attributes_from_findings_request()) ->
    {ok, remove_attributes_from_findings_response(), tuple()} |
    {error, any()} |
    {error, remove_attributes_from_findings_errors(), tuple()}.
remove_attributes_from_findings(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_attributes_from_findings(Client, Input, []).

-spec remove_attributes_from_findings(aws_client:aws_client(), remove_attributes_from_findings_request(), proplists:proplist()) ->
    {ok, remove_attributes_from_findings_response(), tuple()} |
    {error, any()} |
    {error, remove_attributes_from_findings_errors(), tuple()}.
remove_attributes_from_findings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveAttributesFromFindings">>, Input, Options).

%% @doc Sets tags (key and value pairs) to the assessment template that is
%% specified by the
%% ARN of the assessment template.
-spec set_tags_for_resource(aws_client:aws_client(), set_tags_for_resource_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, set_tags_for_resource_errors(), tuple()}.
set_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_tags_for_resource(Client, Input, []).

-spec set_tags_for_resource(aws_client:aws_client(), set_tags_for_resource_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, set_tags_for_resource_errors(), tuple()}.
set_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetTagsForResource">>, Input, Options).

%% @doc Starts the assessment run specified by the ARN of the assessment
%% template.
%%
%% For this
%% API to function properly, you must not exceed the limit of running up to
%% 500 concurrent
%% agents per AWS account.
-spec start_assessment_run(aws_client:aws_client(), start_assessment_run_request()) ->
    {ok, start_assessment_run_response(), tuple()} |
    {error, any()} |
    {error, start_assessment_run_errors(), tuple()}.
start_assessment_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_assessment_run(Client, Input, []).

-spec start_assessment_run(aws_client:aws_client(), start_assessment_run_request(), proplists:proplist()) ->
    {ok, start_assessment_run_response(), tuple()} |
    {error, any()} |
    {error, start_assessment_run_errors(), tuple()}.
start_assessment_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartAssessmentRun">>, Input, Options).

%% @doc Stops the assessment run that is specified by the ARN of the
%% assessment
%% run.
-spec stop_assessment_run(aws_client:aws_client(), stop_assessment_run_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, stop_assessment_run_errors(), tuple()}.
stop_assessment_run(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_assessment_run(Client, Input, []).

-spec stop_assessment_run(aws_client:aws_client(), stop_assessment_run_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, stop_assessment_run_errors(), tuple()}.
stop_assessment_run(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopAssessmentRun">>, Input, Options).

%% @doc Enables the process of sending Amazon Simple Notification Service
%% (SNS) notifications
%% about a specified event to a specified SNS topic.
-spec subscribe_to_event(aws_client:aws_client(), subscribe_to_event_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, subscribe_to_event_errors(), tuple()}.
subscribe_to_event(Client, Input)
  when is_map(Client), is_map(Input) ->
    subscribe_to_event(Client, Input, []).

-spec subscribe_to_event(aws_client:aws_client(), subscribe_to_event_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, subscribe_to_event_errors(), tuple()}.
subscribe_to_event(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SubscribeToEvent">>, Input, Options).

%% @doc Disables the process of sending Amazon Simple Notification Service
%% (SNS)
%% notifications about a specified event to a specified SNS topic.
-spec unsubscribe_from_event(aws_client:aws_client(), unsubscribe_from_event_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, unsubscribe_from_event_errors(), tuple()}.
unsubscribe_from_event(Client, Input)
  when is_map(Client), is_map(Input) ->
    unsubscribe_from_event(Client, Input, []).

-spec unsubscribe_from_event(aws_client:aws_client(), unsubscribe_from_event_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, unsubscribe_from_event_errors(), tuple()}.
unsubscribe_from_event(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UnsubscribeFromEvent">>, Input, Options).

%% @doc Updates the assessment target that is specified by the ARN of the
%% assessment
%% target.
%%
%% If resourceGroupArn is not specified, all EC2 instances in the current AWS
%% account
%% and region are included in the assessment target.
-spec update_assessment_target(aws_client:aws_client(), update_assessment_target_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_assessment_target_errors(), tuple()}.
update_assessment_target(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_assessment_target(Client, Input, []).

-spec update_assessment_target(aws_client:aws_client(), update_assessment_target_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_assessment_target_errors(), tuple()}.
update_assessment_target(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateAssessmentTarget">>, Input, Options).

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
    Client1 = Client#{service => <<"inspector">>},
    Host = build_host(<<"inspector">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"InspectorService.", Action/binary>>}
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
