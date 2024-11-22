%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Resilience Hub helps you proactively prepare and protect your Amazon
%% Web Services applications from
%% disruptions.
%%
%% It offers continual resiliency assessment and validation that integrates
%% into your software development lifecycle. This enables you to uncover
%% resiliency weaknesses,
%% ensure recovery time objective (RTO) and recovery point objective (RPO)
%% targets for your
%% applications are met, and resolve issues before they are released into
%% production.
-module(aws_resiliencehub).

-export([accept_resource_grouping_recommendations/2,
         accept_resource_grouping_recommendations/3,
         add_draft_app_version_resource_mappings/2,
         add_draft_app_version_resource_mappings/3,
         batch_update_recommendation_status/2,
         batch_update_recommendation_status/3,
         create_app/2,
         create_app/3,
         create_app_version_app_component/2,
         create_app_version_app_component/3,
         create_app_version_resource/2,
         create_app_version_resource/3,
         create_recommendation_template/2,
         create_recommendation_template/3,
         create_resiliency_policy/2,
         create_resiliency_policy/3,
         delete_app/2,
         delete_app/3,
         delete_app_assessment/2,
         delete_app_assessment/3,
         delete_app_input_source/2,
         delete_app_input_source/3,
         delete_app_version_app_component/2,
         delete_app_version_app_component/3,
         delete_app_version_resource/2,
         delete_app_version_resource/3,
         delete_recommendation_template/2,
         delete_recommendation_template/3,
         delete_resiliency_policy/2,
         delete_resiliency_policy/3,
         describe_app/2,
         describe_app/3,
         describe_app_assessment/2,
         describe_app_assessment/3,
         describe_app_version/2,
         describe_app_version/3,
         describe_app_version_app_component/2,
         describe_app_version_app_component/3,
         describe_app_version_resource/2,
         describe_app_version_resource/3,
         describe_app_version_resources_resolution_status/2,
         describe_app_version_resources_resolution_status/3,
         describe_app_version_template/2,
         describe_app_version_template/3,
         describe_draft_app_version_resources_import_status/2,
         describe_draft_app_version_resources_import_status/3,
         describe_metrics_export/2,
         describe_metrics_export/3,
         describe_resiliency_policy/2,
         describe_resiliency_policy/3,
         describe_resource_grouping_recommendation_task/2,
         describe_resource_grouping_recommendation_task/3,
         import_resources_to_draft_app_version/2,
         import_resources_to_draft_app_version/3,
         list_alarm_recommendations/2,
         list_alarm_recommendations/3,
         list_app_assessment_compliance_drifts/2,
         list_app_assessment_compliance_drifts/3,
         list_app_assessment_resource_drifts/2,
         list_app_assessment_resource_drifts/3,
         list_app_assessments/1,
         list_app_assessments/3,
         list_app_assessments/4,
         list_app_component_compliances/2,
         list_app_component_compliances/3,
         list_app_component_recommendations/2,
         list_app_component_recommendations/3,
         list_app_input_sources/2,
         list_app_input_sources/3,
         list_app_version_app_components/2,
         list_app_version_app_components/3,
         list_app_version_resource_mappings/2,
         list_app_version_resource_mappings/3,
         list_app_version_resources/2,
         list_app_version_resources/3,
         list_app_versions/2,
         list_app_versions/3,
         list_apps/1,
         list_apps/3,
         list_apps/4,
         list_metrics/2,
         list_metrics/3,
         list_recommendation_templates/1,
         list_recommendation_templates/3,
         list_recommendation_templates/4,
         list_resiliency_policies/1,
         list_resiliency_policies/3,
         list_resiliency_policies/4,
         list_resource_grouping_recommendations/1,
         list_resource_grouping_recommendations/3,
         list_resource_grouping_recommendations/4,
         list_sop_recommendations/2,
         list_sop_recommendations/3,
         list_suggested_resiliency_policies/1,
         list_suggested_resiliency_policies/3,
         list_suggested_resiliency_policies/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_test_recommendations/2,
         list_test_recommendations/3,
         list_unsupported_app_version_resources/2,
         list_unsupported_app_version_resources/3,
         publish_app_version/2,
         publish_app_version/3,
         put_draft_app_version_template/2,
         put_draft_app_version_template/3,
         reject_resource_grouping_recommendations/2,
         reject_resource_grouping_recommendations/3,
         remove_draft_app_version_resource_mappings/2,
         remove_draft_app_version_resource_mappings/3,
         resolve_app_version_resources/2,
         resolve_app_version_resources/3,
         start_app_assessment/2,
         start_app_assessment/3,
         start_metrics_export/2,
         start_metrics_export/3,
         start_resource_grouping_recommendation_task/2,
         start_resource_grouping_recommendation_task/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_app/2,
         update_app/3,
         update_app_version/2,
         update_app_version/3,
         update_app_version_app_component/2,
         update_app_version_app_component/3,
         update_app_version_resource/2,
         update_app_version_resource/3,
         update_resiliency_policy/2,
         update_resiliency_policy/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% app() :: #{
%%   <<"appArn">> => string(),
%%   <<"assessmentSchedule">> => list(any()),
%%   <<"awsApplicationArn">> => string(),
%%   <<"complianceStatus">> => list(any()),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"driftStatus">> => list(any()),
%%   <<"eventSubscriptions">> => list(event_subscription()()),
%%   <<"lastAppComplianceEvaluationTime">> => non_neg_integer(),
%%   <<"lastDriftEvaluationTime">> => non_neg_integer(),
%%   <<"lastResiliencyScoreEvaluationTime">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"permissionModel">> => permission_model(),
%%   <<"policyArn">> => string(),
%%   <<"resiliencyScore">> => float(),
%%   <<"rpoInSecs">> => integer(),
%%   <<"rtoInSecs">> => integer(),
%%   <<"status">> => list(any()),
%%   <<"tags">> => map()
%% }
-type app() :: #{binary() => any()}.


%% Example:
%% batch_update_recommendation_status_request() :: #{
%%   <<"appArn">> := string(),
%%   <<"requestEntries">> := list(update_recommendation_status_request_entry()())
%% }
-type batch_update_recommendation_status_request() :: #{binary() => any()}.


%% Example:
%% list_app_component_compliances_response() :: #{
%%   <<"componentCompliances">> := list(app_component_compliance()()),
%%   <<"nextToken">> => string()
%% }
-type list_app_component_compliances_response() :: #{binary() => any()}.


%% Example:
%% describe_app_version_resources_resolution_status_request() :: #{
%%   <<"appArn">> := string(),
%%   <<"appVersion">> := string(),
%%   <<"resolutionId">> => string()
%% }
-type describe_app_version_resources_resolution_status_request() :: #{binary() => any()}.


%% Example:
%% list_apps_response() :: #{
%%   <<"appSummaries">> := list(app_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_apps_response() :: #{binary() => any()}.


%% Example:
%% describe_resource_grouping_recommendation_task_response() :: #{
%%   <<"errorMessage">> => string(),
%%   <<"groupingId">> => string(),
%%   <<"status">> => list(any())
%% }
-type describe_resource_grouping_recommendation_task_response() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% list_app_component_recommendations_response() :: #{
%%   <<"componentRecommendations">> := list(component_recommendation()()),
%%   <<"nextToken">> => string()
%% }
-type list_app_component_recommendations_response() :: #{binary() => any()}.


%% Example:
%% describe_app_version_resource_request() :: #{
%%   <<"appArn">> := string(),
%%   <<"appVersion">> := string(),
%%   <<"awsAccountId">> => string(),
%%   <<"awsRegion">> => string(),
%%   <<"logicalResourceId">> => logical_resource_id(),
%%   <<"physicalResourceId">> => string(),
%%   <<"resourceName">> => string()
%% }
-type describe_app_version_resource_request() :: #{binary() => any()}.


%% Example:
%% describe_metrics_export_response() :: #{
%%   <<"errorMessage">> => string(),
%%   <<"exportLocation">> => s3_location(),
%%   <<"metricsExportId">> => string(),
%%   <<"status">> => list(any())
%% }
-type describe_metrics_export_response() :: #{binary() => any()}.


%% Example:
%% list_app_component_recommendations_request() :: #{
%%   <<"assessmentArn">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_app_component_recommendations_request() :: #{binary() => any()}.


%% Example:
%% add_draft_app_version_resource_mappings_response() :: #{
%%   <<"appArn">> := string(),
%%   <<"appVersion">> := string(),
%%   <<"resourceMappings">> := list(resource_mapping()())
%% }
-type add_draft_app_version_resource_mappings_response() :: #{binary() => any()}.


%% Example:
%% create_app_request() :: #{
%%   <<"assessmentSchedule">> => list(any()),
%%   <<"awsApplicationArn">> => string(),
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"eventSubscriptions">> => list(event_subscription()()),
%%   <<"name">> := string(),
%%   <<"permissionModel">> => permission_model(),
%%   <<"policyArn">> => string(),
%%   <<"tags">> => map()
%% }
-type create_app_request() :: #{binary() => any()}.


%% Example:
%% list_app_version_resources_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"physicalResources">> := list(physical_resource()()),
%%   <<"resolutionId">> := string()
%% }
-type list_app_version_resources_response() :: #{binary() => any()}.


%% Example:
%% delete_app_response() :: #{
%%   <<"appArn">> := string()
%% }
-type delete_app_response() :: #{binary() => any()}.


%% Example:
%% create_app_version_app_component_response() :: #{
%%   <<"appArn">> := string(),
%%   <<"appComponent">> => app_component(),
%%   <<"appVersion">> := string()
%% }
-type create_app_version_app_component_response() :: #{binary() => any()}.


%% Example:
%% list_app_assessments_request() :: #{
%%   <<"appArn">> => string(),
%%   <<"assessmentName">> => string(),
%%   <<"assessmentStatus">> => list(list(any())()),
%%   <<"complianceStatus">> => list(any()),
%%   <<"invoker">> => list(any()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"reverseOrder">> => boolean()
%% }
-type list_app_assessments_request() :: #{binary() => any()}.


%% Example:
%% list_app_versions_response() :: #{
%%   <<"appVersions">> := list(app_version_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_app_versions_response() :: #{binary() => any()}.


%% Example:
%% remove_draft_app_version_resource_mappings_response() :: #{
%%   <<"appArn">> => string(),
%%   <<"appVersion">> => string()
%% }
-type remove_draft_app_version_resource_mappings_response() :: #{binary() => any()}.


%% Example:
%% resolve_app_version_resources_request() :: #{
%%   <<"appArn">> := string(),
%%   <<"appVersion">> := string()
%% }
-type resolve_app_version_resources_request() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% update_app_version_app_component_request() :: #{
%%   <<"additionalInfo">> => map(),
%%   <<"appArn">> := string(),
%%   <<"id">> := string(),
%%   <<"name">> => string(),
%%   <<"type">> => string()
%% }
-type update_app_version_app_component_request() :: #{binary() => any()}.


%% Example:
%% put_draft_app_version_template_request() :: #{
%%   <<"appArn">> := string(),
%%   <<"appTemplateBody">> := string()
%% }
-type put_draft_app_version_template_request() :: #{binary() => any()}.


%% Example:
%% resource_mapping() :: #{
%%   <<"appRegistryAppName">> => string(),
%%   <<"eksSourceName">> => string(),
%%   <<"logicalStackName">> => string(),
%%   <<"mappingType">> => list(any()),
%%   <<"physicalResourceId">> => physical_resource_id(),
%%   <<"resourceGroupName">> => string(),
%%   <<"resourceName">> => string(),
%%   <<"terraformSourceName">> => string()
%% }
-type resource_mapping() :: #{binary() => any()}.


%% Example:
%% list_unsupported_app_version_resources_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"resolutionId">> := string(),
%%   <<"unsupportedResources">> := list(unsupported_resource()())
%% }
-type list_unsupported_app_version_resources_response() :: #{binary() => any()}.


%% Example:
%% resiliency_score() :: #{
%%   <<"componentScore">> => map(),
%%   <<"disruptionScore">> => map(),
%%   <<"score">> => float()
%% }
-type resiliency_score() :: #{binary() => any()}.


%% Example:
%% unsupported_resource() :: #{
%%   <<"logicalResourceId">> => logical_resource_id(),
%%   <<"physicalResourceId">> => physical_resource_id(),
%%   <<"resourceType">> => string(),
%%   <<"unsupportedResourceStatus">> => string()
%% }
-type unsupported_resource() :: #{binary() => any()}.


%% Example:
%% create_app_version_resource_request() :: #{
%%   <<"additionalInfo">> => map(),
%%   <<"appArn">> := string(),
%%   <<"appComponents">> := list(string()()),
%%   <<"awsAccountId">> => string(),
%%   <<"awsRegion">> => string(),
%%   <<"clientToken">> => string(),
%%   <<"logicalResourceId">> := logical_resource_id(),
%%   <<"physicalResourceId">> := string(),
%%   <<"resourceName">> => string(),
%%   <<"resourceType">> := string()
%% }
-type create_app_version_resource_request() :: #{binary() => any()}.


%% Example:
%% describe_resource_grouping_recommendation_task_request() :: #{
%%   <<"appArn">> := string(),
%%   <<"groupingId">> => string()
%% }
-type describe_resource_grouping_recommendation_task_request() :: #{binary() => any()}.


%% Example:
%% config_recommendation() :: #{
%%   <<"appComponentName">> => string(),
%%   <<"compliance">> => map(),
%%   <<"cost">> => cost(),
%%   <<"description">> => string(),
%%   <<"haArchitecture">> => list(any()),
%%   <<"name">> => string(),
%%   <<"optimizationType">> => list(any()),
%%   <<"recommendationCompliance">> => map(),
%%   <<"referenceId">> => string(),
%%   <<"suggestedChanges">> => list(string()())
%% }
-type config_recommendation() :: #{binary() => any()}.


%% Example:
%% event_subscription() :: #{
%%   <<"eventType">> => list(any()),
%%   <<"name">> => string(),
%%   <<"snsTopicArn">> => string()
%% }
-type event_subscription() :: #{binary() => any()}.


%% Example:
%% describe_app_version_template_request() :: #{
%%   <<"appArn">> := string(),
%%   <<"appVersion">> := string()
%% }
-type describe_app_version_template_request() :: #{binary() => any()}.


%% Example:
%% start_resource_grouping_recommendation_task_response() :: #{
%%   <<"appArn">> => string(),
%%   <<"errorMessage">> => string(),
%%   <<"groupingId">> => string(),
%%   <<"status">> => list(any())
%% }
-type start_resource_grouping_recommendation_task_response() :: #{binary() => any()}.


%% Example:
%% import_resources_to_draft_app_version_request() :: #{
%%   <<"appArn">> := string(),
%%   <<"eksSources">> => list(eks_source()()),
%%   <<"importStrategy">> => list(any()),
%%   <<"sourceArns">> => list(string()()),
%%   <<"terraformSources">> => list(terraform_source()())
%% }
-type import_resources_to_draft_app_version_request() :: #{binary() => any()}.


%% Example:
%% delete_app_input_source_response() :: #{
%%   <<"appArn">> => string(),
%%   <<"appInputSource">> => app_input_source()
%% }
-type delete_app_input_source_response() :: #{binary() => any()}.


%% Example:
%% start_app_assessment_request() :: #{
%%   <<"appArn">> := string(),
%%   <<"appVersion">> := string(),
%%   <<"assessmentName">> := string(),
%%   <<"clientToken">> => string(),
%%   <<"tags">> => map()
%% }
-type start_app_assessment_request() :: #{binary() => any()}.


%% Example:
%% list_app_version_app_components_response() :: #{
%%   <<"appArn">> := string(),
%%   <<"appComponents">> => list(app_component()()),
%%   <<"appVersion">> := string(),
%%   <<"nextToken">> => string()
%% }
-type list_app_version_app_components_response() :: #{binary() => any()}.


%% Example:
%% batch_update_recommendation_status_response() :: #{
%%   <<"appArn">> => string(),
%%   <<"failedEntries">> => list(batch_update_recommendation_status_failed_entry()()),
%%   <<"successfulEntries">> => list(batch_update_recommendation_status_successful_entry()())
%% }
-type batch_update_recommendation_status_response() :: #{binary() => any()}.


%% Example:
%% list_unsupported_app_version_resources_request() :: #{
%%   <<"appArn">> := string(),
%%   <<"appVersion">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"resolutionId">> => string()
%% }
-type list_unsupported_app_version_resources_request() :: #{binary() => any()}.


%% Example:
%% list_app_input_sources_request() :: #{
%%   <<"appArn">> := string(),
%%   <<"appVersion">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_app_input_sources_request() :: #{binary() => any()}.


%% Example:
%% list_test_recommendations_request() :: #{
%%   <<"assessmentArn">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_test_recommendations_request() :: #{binary() => any()}.


%% Example:
%% failure_policy() :: #{
%%   <<"rpoInSecs">> => integer(),
%%   <<"rtoInSecs">> => integer()
%% }
-type failure_policy() :: #{binary() => any()}.


%% Example:
%% create_recommendation_template_response() :: #{
%%   <<"recommendationTemplate">> => recommendation_template()
%% }
-type create_recommendation_template_response() :: #{binary() => any()}.


%% Example:
%% describe_app_response() :: #{
%%   <<"app">> := app()
%% }
-type describe_app_response() :: #{binary() => any()}.


%% Example:
%% disruption_compliance() :: #{
%%   <<"achievableRpoInSecs">> => integer(),
%%   <<"achievableRtoInSecs">> => integer(),
%%   <<"complianceStatus">> => list(any()),
%%   <<"currentRpoInSecs">> => integer(),
%%   <<"currentRtoInSecs">> => integer(),
%%   <<"message">> => string(),
%%   <<"rpoDescription">> => string(),
%%   <<"rpoReferenceId">> => string(),
%%   <<"rtoDescription">> => string(),
%%   <<"rtoReferenceId">> => string()
%% }
-type disruption_compliance() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string()())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% list_resiliency_policies_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"policyName">> => string()
%% }
-type list_resiliency_policies_request() :: #{binary() => any()}.


%% Example:
%% update_recommendation_status_request_entry() :: #{
%%   <<"entryId">> => string(),
%%   <<"excludeReason">> => list(any()),
%%   <<"excluded">> => boolean(),
%%   <<"item">> => update_recommendation_status_item(),
%%   <<"referenceId">> => string()
%% }
-type update_recommendation_status_request_entry() :: #{binary() => any()}.


%% Example:
%% terraform_source() :: #{
%%   <<"s3StateFileUrl">> => string()
%% }
-type terraform_source() :: #{binary() => any()}.


%% Example:
%% list_app_version_resources_request() :: #{
%%   <<"appArn">> := string(),
%%   <<"appVersion">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"resolutionId">> => string()
%% }
-type list_app_version_resources_request() :: #{binary() => any()}.


%% Example:
%% resource_errors_details() :: #{
%%   <<"hasMoreErrors">> => boolean(),
%%   <<"resourceErrors">> => list(resource_error()())
%% }
-type resource_errors_details() :: #{binary() => any()}.


%% Example:
%% component_recommendation() :: #{
%%   <<"appComponentName">> => string(),
%%   <<"configRecommendations">> => list(config_recommendation()()),
%%   <<"recommendationStatus">> => list(any())
%% }
-type component_recommendation() :: #{binary() => any()}.


%% Example:
%% assessment_risk_recommendation() :: #{
%%   <<"appComponents">> => list(string()()),
%%   <<"recommendation">> => string(),
%%   <<"risk">> => string()
%% }
-type assessment_risk_recommendation() :: #{binary() => any()}.


%% Example:
%% create_app_version_resource_response() :: #{
%%   <<"appArn">> := string(),
%%   <<"appVersion">> := string(),
%%   <<"physicalResource">> => physical_resource()
%% }
-type create_app_version_resource_response() :: #{binary() => any()}.


%% Example:
%% logical_resource_id() :: #{
%%   <<"eksSourceName">> => string(),
%%   <<"identifier">> => string(),
%%   <<"logicalStackName">> => string(),
%%   <<"resourceGroupName">> => string(),
%%   <<"terraformSourceName">> => string()
%% }
-type logical_resource_id() :: #{binary() => any()}.


%% Example:
%% delete_app_version_resource_response() :: #{
%%   <<"appArn">> := string(),
%%   <<"appVersion">> := string(),
%%   <<"physicalResource">> => physical_resource()
%% }
-type delete_app_version_resource_response() :: #{binary() => any()}.


%% Example:
%% describe_app_assessment_request() :: #{
%%   <<"assessmentArn">> := string()
%% }
-type describe_app_assessment_request() :: #{binary() => any()}.


%% Example:
%% recommendation_item() :: #{
%%   <<"alreadyImplemented">> => boolean(),
%%   <<"excludeReason">> => list(any()),
%%   <<"excluded">> => boolean(),
%%   <<"resourceId">> => string(),
%%   <<"targetAccountId">> => string(),
%%   <<"targetRegion">> => string()
%% }
-type recommendation_item() :: #{binary() => any()}.


%% Example:
%% list_app_version_resource_mappings_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"resourceMappings">> := list(resource_mapping()())
%% }
-type list_app_version_resource_mappings_response() :: #{binary() => any()}.


%% Example:
%% describe_app_version_resource_response() :: #{
%%   <<"appArn">> := string(),
%%   <<"appVersion">> := string(),
%%   <<"physicalResource">> => physical_resource()
%% }
-type describe_app_version_resource_response() :: #{binary() => any()}.


%% Example:
%% put_draft_app_version_template_response() :: #{
%%   <<"appArn">> => string(),
%%   <<"appVersion">> => string()
%% }
-type put_draft_app_version_template_response() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => string(),
%%   <<"resourceId">> => string(),
%%   <<"resourceType">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string(),
%%   <<"resourceId">> => string(),
%%   <<"resourceType">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% list_app_assessment_compliance_drifts_request() :: #{
%%   <<"assessmentArn">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_app_assessment_compliance_drifts_request() :: #{binary() => any()}.


%% Example:
%% delete_app_input_source_request() :: #{
%%   <<"appArn">> := string(),
%%   <<"clientToken">> => string(),
%%   <<"eksSourceClusterNamespace">> => eks_source_cluster_namespace(),
%%   <<"sourceArn">> => string(),
%%   <<"terraformSource">> => terraform_source()
%% }
-type delete_app_input_source_request() :: #{binary() => any()}.


%% Example:
%% list_suggested_resiliency_policies_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_suggested_resiliency_policies_request() :: #{binary() => any()}.


%% Example:
%% batch_update_recommendation_status_failed_entry() :: #{
%%   <<"entryId">> => string(),
%%   <<"errorMessage">> => string()
%% }
-type batch_update_recommendation_status_failed_entry() :: #{binary() => any()}.


%% Example:
%% alarm_recommendation() :: #{
%%   <<"appComponentName">> => string(),
%%   <<"appComponentNames">> => list(string()()),
%%   <<"description">> => string(),
%%   <<"items">> => list(recommendation_item()()),
%%   <<"name">> => string(),
%%   <<"prerequisite">> => string(),
%%   <<"recommendationId">> => string(),
%%   <<"recommendationStatus">> => list(any()),
%%   <<"referenceId">> => string(),
%%   <<"type">> => list(any())
%% }
-type alarm_recommendation() :: #{binary() => any()}.


%% Example:
%% list_recommendation_templates_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"recommendationTemplates">> => list(recommendation_template()())
%% }
-type list_recommendation_templates_response() :: #{binary() => any()}.


%% Example:
%% start_metrics_export_response() :: #{
%%   <<"metricsExportId">> => string(),
%%   <<"status">> => list(any())
%% }
-type start_metrics_export_response() :: #{binary() => any()}.


%% Example:
%% scoring_component_resiliency_score() :: #{
%%   <<"excludedCount">> => float(),
%%   <<"outstandingCount">> => float(),
%%   <<"possibleScore">> => float(),
%%   <<"score">> => float()
%% }
-type scoring_component_resiliency_score() :: #{binary() => any()}.


%% Example:
%% resource_identifier() :: #{
%%   <<"logicalResourceId">> => logical_resource_id(),
%%   <<"resourceType">> => string()
%% }
-type resource_identifier() :: #{binary() => any()}.


%% Example:
%% accept_resource_grouping_recommendations_response() :: #{
%%   <<"appArn">> => string(),
%%   <<"failedEntries">> => list(failed_grouping_recommendation_entry()())
%% }
-type accept_resource_grouping_recommendations_response() :: #{binary() => any()}.


%% Example:
%% create_resiliency_policy_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"dataLocationConstraint">> => list(any()),
%%   <<"policy">> := map(),
%%   <<"policyDescription">> => string(),
%%   <<"policyName">> := string(),
%%   <<"tags">> => map(),
%%   <<"tier">> := list(any())
%% }
-type create_resiliency_policy_request() :: #{binary() => any()}.


%% Example:
%% list_app_assessments_response() :: #{
%%   <<"assessmentSummaries">> := list(app_assessment_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_app_assessments_response() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% list_sop_recommendations_request() :: #{
%%   <<"assessmentArn">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_sop_recommendations_request() :: #{binary() => any()}.


%% Example:
%% accept_resource_grouping_recommendations_request() :: #{
%%   <<"appArn">> := string(),
%%   <<"entries">> := list(accept_grouping_recommendation_entry()())
%% }
-type accept_resource_grouping_recommendations_request() :: #{binary() => any()}.


%% Example:
%% list_app_version_resource_mappings_request() :: #{
%%   <<"appArn">> := string(),
%%   <<"appVersion">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_app_version_resource_mappings_request() :: #{binary() => any()}.


%% Example:
%% add_draft_app_version_resource_mappings_request() :: #{
%%   <<"appArn">> := string(),
%%   <<"resourceMappings">> := list(resource_mapping()())
%% }
-type add_draft_app_version_resource_mappings_request() :: #{binary() => any()}.


%% Example:
%% describe_metrics_export_request() :: #{
%%   <<"metricsExportId">> := string()
%% }
-type describe_metrics_export_request() :: #{binary() => any()}.


%% Example:
%% describe_app_version_app_component_request() :: #{
%%   <<"appArn">> := string(),
%%   <<"appVersion">> := string(),
%%   <<"id">> := string()
%% }
-type describe_app_version_app_component_request() :: #{binary() => any()}.


%% Example:
%% update_resiliency_policy_response() :: #{
%%   <<"policy">> := resiliency_policy()
%% }
-type update_resiliency_policy_response() :: #{binary() => any()}.


%% Example:
%% publish_app_version_response() :: #{
%%   <<"appArn">> := string(),
%%   <<"appVersion">> => string(),
%%   <<"identifier">> => float(),
%%   <<"versionName">> => string()
%% }
-type publish_app_version_response() :: #{binary() => any()}.


%% Example:
%% update_app_version_resource_response() :: #{
%%   <<"appArn">> := string(),
%%   <<"appVersion">> := string(),
%%   <<"physicalResource">> => physical_resource()
%% }
-type update_app_version_resource_response() :: #{binary() => any()}.


%% Example:
%% batch_update_recommendation_status_successful_entry() :: #{
%%   <<"entryId">> => string(),
%%   <<"excludeReason">> => list(any()),
%%   <<"excluded">> => boolean(),
%%   <<"item">> => update_recommendation_status_item(),
%%   <<"referenceId">> => string()
%% }
-type batch_update_recommendation_status_successful_entry() :: #{binary() => any()}.


%% Example:
%% create_resiliency_policy_response() :: #{
%%   <<"policy">> := resiliency_policy()
%% }
-type create_resiliency_policy_response() :: #{binary() => any()}.


%% Example:
%% update_app_version_response() :: #{
%%   <<"additionalInfo">> => map(),
%%   <<"appArn">> := string(),
%%   <<"appVersion">> := string()
%% }
-type update_app_version_response() :: #{binary() => any()}.


%% Example:
%% field() :: #{
%%   <<"aggregation">> => list(any()),
%%   <<"name">> => string()
%% }
-type field() :: #{binary() => any()}.


%% Example:
%% reject_grouping_recommendation_entry() :: #{
%%   <<"groupingRecommendationId">> => string(),
%%   <<"rejectionReason">> => list(any())
%% }
-type reject_grouping_recommendation_entry() :: #{binary() => any()}.


%% Example:
%% list_metrics_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"rows">> => list(list(string()())())
%% }
-type list_metrics_response() :: #{binary() => any()}.


%% Example:
%% list_alarm_recommendations_response() :: #{
%%   <<"alarmRecommendations">> := list(alarm_recommendation()()),
%%   <<"nextToken">> => string()
%% }
-type list_alarm_recommendations_response() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% eks_source_cluster_namespace() :: #{
%%   <<"eksClusterArn">> => string(),
%%   <<"namespace">> => string()
%% }
-type eks_source_cluster_namespace() :: #{binary() => any()}.


%% Example:
%% describe_draft_app_version_resources_import_status_request() :: #{
%%   <<"appArn">> := string()
%% }
-type describe_draft_app_version_resources_import_status_request() :: #{binary() => any()}.


%% Example:
%% describe_app_version_template_response() :: #{
%%   <<"appArn">> := string(),
%%   <<"appTemplateBody">> := string(),
%%   <<"appVersion">> := string()
%% }
-type describe_app_version_template_response() :: #{binary() => any()}.


%% Example:
%% describe_resiliency_policy_response() :: #{
%%   <<"policy">> := resiliency_policy()
%% }
-type describe_resiliency_policy_response() :: #{binary() => any()}.


%% Example:
%% app_component() :: #{
%%   <<"additionalInfo">> => map(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"type">> => string()
%% }
-type app_component() :: #{binary() => any()}.


%% Example:
%% recommendation_disruption_compliance() :: #{
%%   <<"expectedComplianceStatus">> => list(any()),
%%   <<"expectedRpoDescription">> => string(),
%%   <<"expectedRpoInSecs">> => integer(),
%%   <<"expectedRtoDescription">> => string(),
%%   <<"expectedRtoInSecs">> => integer()
%% }
-type recommendation_disruption_compliance() :: #{binary() => any()}.


%% Example:
%% list_suggested_resiliency_policies_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"resiliencyPolicies">> := list(resiliency_policy()())
%% }
-type list_suggested_resiliency_policies_response() :: #{binary() => any()}.


%% Example:
%% resource_error() :: #{
%%   <<"logicalResourceId">> => string(),
%%   <<"physicalResourceId">> => string(),
%%   <<"reason">> => string()
%% }
-type resource_error() :: #{binary() => any()}.


%% Example:
%% accept_grouping_recommendation_entry() :: #{
%%   <<"groupingRecommendationId">> => string()
%% }
-type accept_grouping_recommendation_entry() :: #{binary() => any()}.


%% Example:
%% condition() :: #{
%%   <<"field">> => string(),
%%   <<"operator">> => list(any()),
%%   <<"value">> => string()
%% }
-type condition() :: #{binary() => any()}.


%% Example:
%% s3_location() :: #{
%%   <<"bucket">> => string(),
%%   <<"prefix">> => string()
%% }
-type s3_location() :: #{binary() => any()}.


%% Example:
%% resolve_app_version_resources_response() :: #{
%%   <<"appArn">> := string(),
%%   <<"appVersion">> := string(),
%%   <<"resolutionId">> := string(),
%%   <<"status">> := list(any())
%% }
-type resolve_app_version_resources_response() :: #{binary() => any()}.


%% Example:
%% app_input_source() :: #{
%%   <<"eksSourceClusterNamespace">> => eks_source_cluster_namespace(),
%%   <<"importType">> => list(any()),
%%   <<"resourceCount">> => integer(),
%%   <<"sourceArn">> => string(),
%%   <<"sourceName">> => string(),
%%   <<"terraformSource">> => terraform_source()
%% }
-type app_input_source() :: #{binary() => any()}.


%% Example:
%% delete_recommendation_template_response() :: #{
%%   <<"recommendationTemplateArn">> := string(),
%%   <<"status">> := list(any())
%% }
-type delete_recommendation_template_response() :: #{binary() => any()}.


%% Example:
%% physical_resource() :: #{
%%   <<"additionalInfo">> => map(),
%%   <<"appComponents">> => list(app_component()()),
%%   <<"excluded">> => boolean(),
%%   <<"logicalResourceId">> => logical_resource_id(),
%%   <<"parentResourceName">> => string(),
%%   <<"physicalResourceId">> => physical_resource_id(),
%%   <<"resourceName">> => string(),
%%   <<"resourceType">> => string(),
%%   <<"sourceType">> => list(any())
%% }
-type physical_resource() :: #{binary() => any()}.


%% Example:
%% sort() :: #{
%%   <<"ascending">> => boolean(),
%%   <<"field">> => string()
%% }
-type sort() :: #{binary() => any()}.


%% Example:
%% app_summary() :: #{
%%   <<"appArn">> => string(),
%%   <<"assessmentSchedule">> => list(any()),
%%   <<"awsApplicationArn">> => string(),
%%   <<"complianceStatus">> => list(any()),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"driftStatus">> => list(any()),
%%   <<"lastAppComplianceEvaluationTime">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"resiliencyScore">> => float(),
%%   <<"rpoInSecs">> => integer(),
%%   <<"rtoInSecs">> => integer(),
%%   <<"status">> => list(any())
%% }
-type app_summary() :: #{binary() => any()}.


%% Example:
%% reject_resource_grouping_recommendations_request() :: #{
%%   <<"appArn">> := string(),
%%   <<"entries">> := list(reject_grouping_recommendation_entry()())
%% }
-type reject_resource_grouping_recommendations_request() :: #{binary() => any()}.


%% Example:
%% list_test_recommendations_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"testRecommendations">> := list(test_recommendation()())
%% }
-type list_test_recommendations_response() :: #{binary() => any()}.


%% Example:
%% update_app_response() :: #{
%%   <<"app">> := app()
%% }
-type update_app_response() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% resource_drift() :: #{
%%   <<"appArn">> => string(),
%%   <<"appVersion">> => string(),
%%   <<"diffType">> => list(any()),
%%   <<"referenceId">> => string(),
%%   <<"resourceIdentifier">> => resource_identifier()
%% }
-type resource_drift() :: #{binary() => any()}.


%% Example:
%% app_assessment_summary() :: #{
%%   <<"appArn">> => string(),
%%   <<"appVersion">> => string(),
%%   <<"assessmentArn">> => string(),
%%   <<"assessmentName">> => string(),
%%   <<"assessmentStatus">> => list(any()),
%%   <<"complianceStatus">> => list(any()),
%%   <<"cost">> => cost(),
%%   <<"driftStatus">> => list(any()),
%%   <<"endTime">> => non_neg_integer(),
%%   <<"invoker">> => list(any()),
%%   <<"message">> => string(),
%%   <<"resiliencyScore">> => float(),
%%   <<"startTime">> => non_neg_integer(),
%%   <<"versionName">> => string()
%% }
-type app_assessment_summary() :: #{binary() => any()}.


%% Example:
%% eks_source() :: #{
%%   <<"eksClusterArn">> => string(),
%%   <<"namespaces">> => list(string()())
%% }
-type eks_source() :: #{binary() => any()}.


%% Example:
%% delete_app_request() :: #{
%%   <<"appArn">> := string(),
%%   <<"clientToken">> => string(),
%%   <<"forceDelete">> => boolean()
%% }
-type delete_app_request() :: #{binary() => any()}.


%% Example:
%% list_app_assessment_resource_drifts_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"resourceDrifts">> => list(resource_drift()())
%% }
-type list_app_assessment_resource_drifts_response() :: #{binary() => any()}.


%% Example:
%% update_app_version_resource_request() :: #{
%%   <<"additionalInfo">> => map(),
%%   <<"appArn">> := string(),
%%   <<"appComponents">> => list(string()()),
%%   <<"awsAccountId">> => string(),
%%   <<"awsRegion">> => string(),
%%   <<"excluded">> => boolean(),
%%   <<"logicalResourceId">> => logical_resource_id(),
%%   <<"physicalResourceId">> => string(),
%%   <<"resourceName">> => string(),
%%   <<"resourceType">> => string()
%% }
-type update_app_version_resource_request() :: #{binary() => any()}.


%% Example:
%% publish_app_version_request() :: #{
%%   <<"appArn">> := string(),
%%   <<"versionName">> => string()
%% }
-type publish_app_version_request() :: #{binary() => any()}.


%% Example:
%% describe_app_request() :: #{
%%   <<"appArn">> := string()
%% }
-type describe_app_request() :: #{binary() => any()}.


%% Example:
%% error_detail() :: #{
%%   <<"errorMessage">> => string()
%% }
-type error_detail() :: #{binary() => any()}.


%% Example:
%% list_resource_grouping_recommendations_response() :: #{
%%   <<"groupingRecommendations">> => list(grouping_recommendation()()),
%%   <<"nextToken">> => string()
%% }
-type list_resource_grouping_recommendations_response() :: #{binary() => any()}.


%% Example:
%% delete_resiliency_policy_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"policyArn">> := string()
%% }
-type delete_resiliency_policy_request() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% list_app_assessment_compliance_drifts_response() :: #{
%%   <<"complianceDrifts">> => list(compliance_drift()()),
%%   <<"nextToken">> => string()
%% }
-type list_app_assessment_compliance_drifts_response() :: #{binary() => any()}.


%% Example:
%% delete_app_version_app_component_response() :: #{
%%   <<"appArn">> := string(),
%%   <<"appComponent">> => app_component(),
%%   <<"appVersion">> := string()
%% }
-type delete_app_version_app_component_response() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% delete_app_version_app_component_request() :: #{
%%   <<"appArn">> := string(),
%%   <<"clientToken">> => string(),
%%   <<"id">> := string()
%% }
-type delete_app_version_app_component_request() :: #{binary() => any()}.


%% Example:
%% import_resources_to_draft_app_version_response() :: #{
%%   <<"appArn">> := string(),
%%   <<"appVersion">> := string(),
%%   <<"eksSources">> => list(eks_source()()),
%%   <<"sourceArns">> => list(string()()),
%%   <<"status">> := list(any()),
%%   <<"terraformSources">> => list(terraform_source()())
%% }
-type import_resources_to_draft_app_version_response() :: #{binary() => any()}.


%% Example:
%% app_version_summary() :: #{
%%   <<"appVersion">> => string(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"identifier">> => float(),
%%   <<"versionName">> => string()
%% }
-type app_version_summary() :: #{binary() => any()}.


%% Example:
%% list_app_version_app_components_request() :: #{
%%   <<"appArn">> := string(),
%%   <<"appVersion">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_app_version_app_components_request() :: #{binary() => any()}.


%% Example:
%% permission_model() :: #{
%%   <<"crossAccountRoleArns">> => list(string()()),
%%   <<"invokerRoleName">> => string(),
%%   <<"type">> => list(any())
%% }
-type permission_model() :: #{binary() => any()}.


%% Example:
%% update_resiliency_policy_request() :: #{
%%   <<"dataLocationConstraint">> => list(any()),
%%   <<"policy">> => map(),
%%   <<"policyArn">> := string(),
%%   <<"policyDescription">> => string(),
%%   <<"policyName">> => string(),
%%   <<"tier">> => list(any())
%% }
-type update_resiliency_policy_request() :: #{binary() => any()}.


%% Example:
%% list_app_input_sources_response() :: #{
%%   <<"appInputSources">> := list(app_input_source()()),
%%   <<"nextToken">> => string()
%% }
-type list_app_input_sources_response() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% resiliency_policy() :: #{
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"dataLocationConstraint">> => list(any()),
%%   <<"estimatedCostTier">> => list(any()),
%%   <<"policy">> => map(),
%%   <<"policyArn">> => string(),
%%   <<"policyDescription">> => string(),
%%   <<"policyName">> => string(),
%%   <<"tags">> => map(),
%%   <<"tier">> => list(any())
%% }
-type resiliency_policy() :: #{binary() => any()}.


%% Example:
%% update_app_request() :: #{
%%   <<"appArn">> := string(),
%%   <<"assessmentSchedule">> => list(any()),
%%   <<"clearResiliencyPolicyArn">> => boolean(),
%%   <<"description">> => string(),
%%   <<"eventSubscriptions">> => list(event_subscription()()),
%%   <<"permissionModel">> => permission_model(),
%%   <<"policyArn">> => string()
%% }
-type update_app_request() :: #{binary() => any()}.


%% Example:
%% app_assessment() :: #{
%%   <<"appArn">> => string(),
%%   <<"appVersion">> => string(),
%%   <<"assessmentArn">> => string(),
%%   <<"assessmentName">> => string(),
%%   <<"assessmentStatus">> => list(any()),
%%   <<"compliance">> => map(),
%%   <<"complianceStatus">> => list(any()),
%%   <<"cost">> => cost(),
%%   <<"driftStatus">> => list(any()),
%%   <<"endTime">> => non_neg_integer(),
%%   <<"invoker">> => list(any()),
%%   <<"message">> => string(),
%%   <<"policy">> => resiliency_policy(),
%%   <<"resiliencyScore">> => resiliency_score(),
%%   <<"resourceErrorsDetails">> => resource_errors_details(),
%%   <<"startTime">> => non_neg_integer(),
%%   <<"summary">> => assessment_summary(),
%%   <<"tags">> => map(),
%%   <<"versionName">> => string()
%% }
-type app_assessment() :: #{binary() => any()}.


%% Example:
%% test_recommendation() :: #{
%%   <<"appComponentName">> => string(),
%%   <<"dependsOnAlarms">> => list(string()()),
%%   <<"description">> => string(),
%%   <<"intent">> => string(),
%%   <<"items">> => list(recommendation_item()()),
%%   <<"name">> => string(),
%%   <<"prerequisite">> => string(),
%%   <<"recommendationId">> => string(),
%%   <<"recommendationStatus">> => list(any()),
%%   <<"referenceId">> => string(),
%%   <<"risk">> => list(any()),
%%   <<"type">> => list(any())
%% }
-type test_recommendation() :: #{binary() => any()}.


%% Example:
%% list_recommendation_templates_request() :: #{
%%   <<"assessmentArn">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"name">> => string(),
%%   <<"nextToken">> => string(),
%%   <<"recommendationTemplateArn">> => string(),
%%   <<"reverseOrder">> => boolean(),
%%   <<"status">> => list(list(any())())
%% }
-type list_recommendation_templates_request() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => string(),
%%   <<"retryAfterSeconds">> => integer()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% start_app_assessment_response() :: #{
%%   <<"assessment">> := app_assessment()
%% }
-type start_app_assessment_response() :: #{binary() => any()}.


%% Example:
%% update_recommendation_status_item() :: #{
%%   <<"resourceId">> => string(),
%%   <<"targetAccountId">> => string(),
%%   <<"targetRegion">> => string()
%% }
-type update_recommendation_status_item() :: #{binary() => any()}.


%% Example:
%% list_alarm_recommendations_request() :: #{
%%   <<"assessmentArn">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_alarm_recommendations_request() :: #{binary() => any()}.


%% Example:
%% start_resource_grouping_recommendation_task_request() :: #{
%%   <<"appArn">> := string()
%% }
-type start_resource_grouping_recommendation_task_request() :: #{binary() => any()}.


%% Example:
%% update_app_version_request() :: #{
%%   <<"additionalInfo">> => map(),
%%   <<"appArn">> := string()
%% }
-type update_app_version_request() :: #{binary() => any()}.


%% Example:
%% describe_resiliency_policy_request() :: #{
%%   <<"policyArn">> := string()
%% }
-type describe_resiliency_policy_request() :: #{binary() => any()}.


%% Example:
%% describe_app_assessment_response() :: #{
%%   <<"assessment">> := app_assessment()
%% }
-type describe_app_assessment_response() :: #{binary() => any()}.


%% Example:
%% describe_app_version_app_component_response() :: #{
%%   <<"appArn">> := string(),
%%   <<"appComponent">> => app_component(),
%%   <<"appVersion">> := string()
%% }
-type describe_app_version_app_component_response() :: #{binary() => any()}.


%% Example:
%% list_apps_request() :: #{
%%   <<"appArn">> => string(),
%%   <<"awsApplicationArn">> => string(),
%%   <<"fromLastAssessmentTime">> => non_neg_integer(),
%%   <<"maxResults">> => integer(),
%%   <<"name">> => string(),
%%   <<"nextToken">> => string(),
%%   <<"reverseOrder">> => boolean(),
%%   <<"toLastAssessmentTime">> => non_neg_integer()
%% }
-type list_apps_request() :: #{binary() => any()}.


%% Example:
%% update_app_version_app_component_response() :: #{
%%   <<"appArn">> := string(),
%%   <<"appComponent">> => app_component(),
%%   <<"appVersion">> := string()
%% }
-type update_app_version_app_component_response() :: #{binary() => any()}.


%% Example:
%% recommendation_template() :: #{
%%   <<"appArn">> => string(),
%%   <<"assessmentArn">> => string(),
%%   <<"endTime">> => non_neg_integer(),
%%   <<"format">> => list(any()),
%%   <<"message">> => string(),
%%   <<"name">> => string(),
%%   <<"needsReplacements">> => boolean(),
%%   <<"recommendationIds">> => list(string()()),
%%   <<"recommendationTemplateArn">> => string(),
%%   <<"recommendationTypes">> => list(list(any())()),
%%   <<"startTime">> => non_neg_integer(),
%%   <<"status">> => list(any()),
%%   <<"tags">> => map(),
%%   <<"templatesLocation">> => s3_location()
%% }
-type recommendation_template() :: #{binary() => any()}.


%% Example:
%% list_metrics_request() :: #{
%%   <<"conditions">> => list(condition()()),
%%   <<"dataSource">> => string(),
%%   <<"fields">> => list(field()()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"sorts">> => list(sort()())
%% }
-type list_metrics_request() :: #{binary() => any()}.


%% Example:
%% delete_resiliency_policy_response() :: #{
%%   <<"policyArn">> := string()
%% }
-type delete_resiliency_policy_response() :: #{binary() => any()}.


%% Example:
%% delete_app_version_resource_request() :: #{
%%   <<"appArn">> := string(),
%%   <<"awsAccountId">> => string(),
%%   <<"awsRegion">> => string(),
%%   <<"clientToken">> => string(),
%%   <<"logicalResourceId">> => logical_resource_id(),
%%   <<"physicalResourceId">> => string(),
%%   <<"resourceName">> => string()
%% }
-type delete_app_version_resource_request() :: #{binary() => any()}.


%% Example:
%% list_sop_recommendations_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"sopRecommendations">> := list(sop_recommendation()())
%% }
-type list_sop_recommendations_response() :: #{binary() => any()}.


%% Example:
%% delete_app_assessment_response() :: #{
%%   <<"assessmentArn">> := string(),
%%   <<"assessmentStatus">> := list(any())
%% }
-type delete_app_assessment_response() :: #{binary() => any()}.


%% Example:
%% physical_resource_id() :: #{
%%   <<"awsAccountId">> => string(),
%%   <<"awsRegion">> => string(),
%%   <<"identifier">> => string(),
%%   <<"type">> => list(any())
%% }
-type physical_resource_id() :: #{binary() => any()}.


%% Example:
%% create_app_response() :: #{
%%   <<"app">> := app()
%% }
-type create_app_response() :: #{binary() => any()}.


%% Example:
%% list_app_component_compliances_request() :: #{
%%   <<"assessmentArn">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_app_component_compliances_request() :: #{binary() => any()}.


%% Example:
%% list_app_versions_request() :: #{
%%   <<"appArn">> := string(),
%%   <<"endTime">> => non_neg_integer(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"startTime">> => non_neg_integer()
%% }
-type list_app_versions_request() :: #{binary() => any()}.


%% Example:
%% compliance_drift() :: #{
%%   <<"actualReferenceId">> => string(),
%%   <<"actualValue">> => map(),
%%   <<"appId">> => string(),
%%   <<"appVersion">> => string(),
%%   <<"diffType">> => list(any()),
%%   <<"driftType">> => list(any()),
%%   <<"entityId">> => string(),
%%   <<"entityType">> => string(),
%%   <<"expectedReferenceId">> => string(),
%%   <<"expectedValue">> => map()
%% }
-type compliance_drift() :: #{binary() => any()}.


%% Example:
%% create_app_version_app_component_request() :: #{
%%   <<"additionalInfo">> => map(),
%%   <<"appArn">> := string(),
%%   <<"clientToken">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> := string(),
%%   <<"type">> := string()
%% }
-type create_app_version_app_component_request() :: #{binary() => any()}.


%% Example:
%% grouping_app_component() :: #{
%%   <<"appComponentId">> => string(),
%%   <<"appComponentName">> => string(),
%%   <<"appComponentType">> => string()
%% }
-type grouping_app_component() :: #{binary() => any()}.


%% Example:
%% delete_recommendation_template_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"recommendationTemplateArn">> := string()
%% }
-type delete_recommendation_template_request() :: #{binary() => any()}.


%% Example:
%% list_app_assessment_resource_drifts_request() :: #{
%%   <<"assessmentArn">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_app_assessment_resource_drifts_request() :: #{binary() => any()}.


%% Example:
%% list_resource_grouping_recommendations_request() :: #{
%%   <<"appArn">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_resource_grouping_recommendations_request() :: #{binary() => any()}.


%% Example:
%% cost() :: #{
%%   <<"amount">> => float(),
%%   <<"currency">> => string(),
%%   <<"frequency">> => list(any())
%% }
-type cost() :: #{binary() => any()}.


%% Example:
%% describe_app_version_resources_resolution_status_response() :: #{
%%   <<"appArn">> := string(),
%%   <<"appVersion">> := string(),
%%   <<"errorMessage">> => string(),
%%   <<"resolutionId">> := string(),
%%   <<"status">> := list(any())
%% }
-type describe_app_version_resources_resolution_status_response() :: #{binary() => any()}.


%% Example:
%% list_resiliency_policies_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"resiliencyPolicies">> := list(resiliency_policy()())
%% }
-type list_resiliency_policies_response() :: #{binary() => any()}.


%% Example:
%% assessment_summary() :: #{
%%   <<"riskRecommendations">> => list(assessment_risk_recommendation()()),
%%   <<"summary">> => string()
%% }
-type assessment_summary() :: #{binary() => any()}.


%% Example:
%% reject_resource_grouping_recommendations_response() :: #{
%%   <<"appArn">> => string(),
%%   <<"failedEntries">> => list(failed_grouping_recommendation_entry()())
%% }
-type reject_resource_grouping_recommendations_response() :: #{binary() => any()}.


%% Example:
%% remove_draft_app_version_resource_mappings_request() :: #{
%%   <<"appArn">> := string(),
%%   <<"appRegistryAppNames">> => list(string()()),
%%   <<"eksSourceNames">> => list(string()()),
%%   <<"logicalStackNames">> => list(string()()),
%%   <<"resourceGroupNames">> => list(string()()),
%%   <<"resourceNames">> => list(string()()),
%%   <<"terraformSourceNames">> => list(string()())
%% }
-type remove_draft_app_version_resource_mappings_request() :: #{binary() => any()}.


%% Example:
%% grouping_resource() :: #{
%%   <<"logicalResourceId">> => logical_resource_id(),
%%   <<"physicalResourceId">> => physical_resource_id(),
%%   <<"resourceName">> => string(),
%%   <<"resourceType">> => string(),
%%   <<"sourceAppComponentIds">> => list(string()())
%% }
-type grouping_resource() :: #{binary() => any()}.


%% Example:
%% failed_grouping_recommendation_entry() :: #{
%%   <<"errorMessage">> => string(),
%%   <<"groupingRecommendationId">> => string()
%% }
-type failed_grouping_recommendation_entry() :: #{binary() => any()}.


%% Example:
%% start_metrics_export_request() :: #{
%%   <<"bucketName">> => string(),
%%   <<"clientToken">> => string()
%% }
-type start_metrics_export_request() :: #{binary() => any()}.


%% Example:
%% sop_recommendation() :: #{
%%   <<"appComponentName">> => string(),
%%   <<"description">> => string(),
%%   <<"items">> => list(recommendation_item()()),
%%   <<"name">> => string(),
%%   <<"prerequisite">> => string(),
%%   <<"recommendationId">> => string(),
%%   <<"recommendationStatus">> => list(any()),
%%   <<"referenceId">> => string(),
%%   <<"serviceType">> => list(any())
%% }
-type sop_recommendation() :: #{binary() => any()}.


%% Example:
%% app_component_compliance() :: #{
%%   <<"appComponentName">> => string(),
%%   <<"compliance">> => map(),
%%   <<"cost">> => cost(),
%%   <<"message">> => string(),
%%   <<"resiliencyScore">> => resiliency_score(),
%%   <<"status">> => list(any())
%% }
-type app_component_compliance() :: #{binary() => any()}.


%% Example:
%% delete_app_assessment_request() :: #{
%%   <<"assessmentArn">> := string(),
%%   <<"clientToken">> => string()
%% }
-type delete_app_assessment_request() :: #{binary() => any()}.


%% Example:
%% create_recommendation_template_request() :: #{
%%   <<"assessmentArn">> := string(),
%%   <<"bucketName">> => string(),
%%   <<"clientToken">> => string(),
%%   <<"format">> => list(any()),
%%   <<"name">> := string(),
%%   <<"recommendationIds">> => list(string()()),
%%   <<"recommendationTypes">> => list(list(any())()),
%%   <<"tags">> => map()
%% }
-type create_recommendation_template_request() :: #{binary() => any()}.


%% Example:
%% describe_app_version_request() :: #{
%%   <<"appArn">> := string(),
%%   <<"appVersion">> := string()
%% }
-type describe_app_version_request() :: #{binary() => any()}.


%% Example:
%% grouping_recommendation() :: #{
%%   <<"confidenceLevel">> => list(any()),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"groupingAppComponent">> => grouping_app_component(),
%%   <<"groupingRecommendationId">> => string(),
%%   <<"recommendationReasons">> => list(string()()),
%%   <<"rejectionReason">> => list(any()),
%%   <<"resources">> => list(grouping_resource()()),
%%   <<"score">> => float(),
%%   <<"status">> => list(any())
%% }
-type grouping_recommendation() :: #{binary() => any()}.


%% Example:
%% describe_draft_app_version_resources_import_status_response() :: #{
%%   <<"appArn">> := string(),
%%   <<"appVersion">> := string(),
%%   <<"errorDetails">> => list(error_detail()()),
%%   <<"errorMessage">> => string(),
%%   <<"status">> := list(any()),
%%   <<"statusChangeTime">> := non_neg_integer()
%% }
-type describe_draft_app_version_resources_import_status_response() :: #{binary() => any()}.


%% Example:
%% describe_app_version_response() :: #{
%%   <<"additionalInfo">> => map(),
%%   <<"appArn">> := string(),
%%   <<"appVersion">> := string()
%% }
-type describe_app_version_response() :: #{binary() => any()}.

-type accept_resource_grouping_recommendations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type add_draft_app_version_resource_mappings_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type batch_update_recommendation_status_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type create_app_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_app_version_app_component_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_app_version_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_recommendation_template_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_resiliency_policy_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type delete_app_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_app_assessment_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_app_input_source_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_app_version_app_component_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_app_version_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_recommendation_template_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_resiliency_policy_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type describe_app_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_app_assessment_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_app_version_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_app_version_app_component_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type describe_app_version_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type describe_app_version_resources_resolution_status_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_app_version_template_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_draft_app_version_resources_import_status_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_metrics_export_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_resiliency_policy_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_resource_grouping_recommendation_task_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type import_resources_to_draft_app_version_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_alarm_recommendations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_app_assessment_compliance_drifts_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_app_assessment_resource_drifts_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_app_assessments_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_app_component_compliances_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_app_component_recommendations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_app_input_sources_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_app_version_app_components_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_app_version_resource_mappings_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_app_version_resources_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_app_versions_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_apps_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_metrics_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_recommendation_templates_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_resiliency_policies_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_resource_grouping_recommendations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_sop_recommendations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_suggested_resiliency_policies_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_test_recommendations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_unsupported_app_version_resources_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type publish_app_version_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type put_draft_app_version_template_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type reject_resource_grouping_recommendations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type remove_draft_app_version_resource_mappings_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type resolve_app_version_resources_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type start_app_assessment_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type start_metrics_export_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type start_resource_grouping_recommendation_task_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type tag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_app_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_app_version_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_app_version_app_component_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_app_version_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_resiliency_policy_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Accepts the resource grouping recommendations suggested by Resilience
%% Hub for your application.
-spec accept_resource_grouping_recommendations(aws_client:aws_client(), accept_resource_grouping_recommendations_request()) ->
    {ok, accept_resource_grouping_recommendations_response(), tuple()} |
    {error, any()} |
    {error, accept_resource_grouping_recommendations_errors(), tuple()}.
accept_resource_grouping_recommendations(Client, Input) ->
    accept_resource_grouping_recommendations(Client, Input, []).

-spec accept_resource_grouping_recommendations(aws_client:aws_client(), accept_resource_grouping_recommendations_request(), proplists:proplist()) ->
    {ok, accept_resource_grouping_recommendations_response(), tuple()} |
    {error, any()} |
    {error, accept_resource_grouping_recommendations_errors(), tuple()}.
accept_resource_grouping_recommendations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/accept-resource-grouping-recommendations"],
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

%% @doc Adds the source of resource-maps to the draft version of an
%% application.
%%
%% During
%% assessment, Resilience Hub will use these resource-maps to resolve the
%% latest physical
%% ID for each resource in the application template. For more information
%% about different types
%% of resources supported by Resilience Hub and how to add them in your
%% application, see
%% Step
%% 2: How is your application managed?:
%% https://docs.aws.amazon.com/resilience-hub/latest/userguide/how-app-manage.html
%% in the Resilience Hub User Guide.
-spec add_draft_app_version_resource_mappings(aws_client:aws_client(), add_draft_app_version_resource_mappings_request()) ->
    {ok, add_draft_app_version_resource_mappings_response(), tuple()} |
    {error, any()} |
    {error, add_draft_app_version_resource_mappings_errors(), tuple()}.
add_draft_app_version_resource_mappings(Client, Input) ->
    add_draft_app_version_resource_mappings(Client, Input, []).

-spec add_draft_app_version_resource_mappings(aws_client:aws_client(), add_draft_app_version_resource_mappings_request(), proplists:proplist()) ->
    {ok, add_draft_app_version_resource_mappings_response(), tuple()} |
    {error, any()} |
    {error, add_draft_app_version_resource_mappings_errors(), tuple()}.
add_draft_app_version_resource_mappings(Client, Input0, Options0) ->
    Method = post,
    Path = ["/add-draft-app-version-resource-mappings"],
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

%% @doc Enables you to include or exclude one or more operational
%% recommendations.
-spec batch_update_recommendation_status(aws_client:aws_client(), batch_update_recommendation_status_request()) ->
    {ok, batch_update_recommendation_status_response(), tuple()} |
    {error, any()} |
    {error, batch_update_recommendation_status_errors(), tuple()}.
batch_update_recommendation_status(Client, Input) ->
    batch_update_recommendation_status(Client, Input, []).

-spec batch_update_recommendation_status(aws_client:aws_client(), batch_update_recommendation_status_request(), proplists:proplist()) ->
    {ok, batch_update_recommendation_status_response(), tuple()} |
    {error, any()} |
    {error, batch_update_recommendation_status_errors(), tuple()}.
batch_update_recommendation_status(Client, Input0, Options0) ->
    Method = post,
    Path = ["/batch-update-recommendation-status"],
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

%% @doc Creates an Resilience Hub application.
%%
%% An Resilience Hub application is a
%% collection of Amazon Web Services resources structured to prevent and
%% recover Amazon Web Services application disruptions. To describe a
%% Resilience Hub application, you provide an
%% application name, resources from one or more CloudFormation stacks,
%% Resource Groups, Terraform state files, AppRegistry applications, and an
%% appropriate
%% resiliency policy. In addition, you can also add resources that are
%% located on Amazon Elastic Kubernetes Service (Amazon EKS) clusters as
%% optional resources. For more information
%% about the number of resources supported per application, see Service
%% quotas:
%% https://docs.aws.amazon.com/general/latest/gr/resiliencehub.html#limits_resiliencehub.
%%
%% After you create an Resilience Hub application, you publish it so that you
%% can run
%% a resiliency assessment on it. You can then use recommendations from the
%% assessment to improve
%% resiliency by running another assessment, comparing results, and then
%% iterating the process
%% until you achieve your goals for recovery time objective (RTO) and
%% recovery point objective
%% (RPO).
-spec create_app(aws_client:aws_client(), create_app_request()) ->
    {ok, create_app_response(), tuple()} |
    {error, any()} |
    {error, create_app_errors(), tuple()}.
create_app(Client, Input) ->
    create_app(Client, Input, []).

-spec create_app(aws_client:aws_client(), create_app_request(), proplists:proplist()) ->
    {ok, create_app_response(), tuple()} |
    {error, any()} |
    {error, create_app_errors(), tuple()}.
create_app(Client, Input0, Options0) ->
    Method = post,
    Path = ["/create-app"],
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

%% @doc Creates a new Application Component in the Resilience Hub
%% application.
%%
%% This API updates the Resilience Hub application draft version. To use this
%% Application Component for running assessments, you must publish the
%% Resilience Hub
%% application using the `PublishAppVersion' API.
-spec create_app_version_app_component(aws_client:aws_client(), create_app_version_app_component_request()) ->
    {ok, create_app_version_app_component_response(), tuple()} |
    {error, any()} |
    {error, create_app_version_app_component_errors(), tuple()}.
create_app_version_app_component(Client, Input) ->
    create_app_version_app_component(Client, Input, []).

-spec create_app_version_app_component(aws_client:aws_client(), create_app_version_app_component_request(), proplists:proplist()) ->
    {ok, create_app_version_app_component_response(), tuple()} |
    {error, any()} |
    {error, create_app_version_app_component_errors(), tuple()}.
create_app_version_app_component(Client, Input0, Options0) ->
    Method = post,
    Path = ["/create-app-version-app-component"],
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

%% @doc Adds a resource to the Resilience Hub application and assigns it to
%% the specified
%% Application Components.
%%
%% If you specify a new Application Component, Resilience Hub will
%% automatically create the Application Component.
%%
%% This action has no effect outside Resilience Hub.
%%
%% This API updates the Resilience Hub application draft version. To use this
%% resource for running resiliency assessments, you must publish the
%% Resilience Hub
%% application using the `PublishAppVersion' API.
%%
%% To update application version with new `physicalResourceID', you must
%% call `ResolveAppVersionResources' API.
-spec create_app_version_resource(aws_client:aws_client(), create_app_version_resource_request()) ->
    {ok, create_app_version_resource_response(), tuple()} |
    {error, any()} |
    {error, create_app_version_resource_errors(), tuple()}.
create_app_version_resource(Client, Input) ->
    create_app_version_resource(Client, Input, []).

-spec create_app_version_resource(aws_client:aws_client(), create_app_version_resource_request(), proplists:proplist()) ->
    {ok, create_app_version_resource_response(), tuple()} |
    {error, any()} |
    {error, create_app_version_resource_errors(), tuple()}.
create_app_version_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/create-app-version-resource"],
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

%% @doc Creates a new recommendation template for the Resilience Hub
%% application.
-spec create_recommendation_template(aws_client:aws_client(), create_recommendation_template_request()) ->
    {ok, create_recommendation_template_response(), tuple()} |
    {error, any()} |
    {error, create_recommendation_template_errors(), tuple()}.
create_recommendation_template(Client, Input) ->
    create_recommendation_template(Client, Input, []).

-spec create_recommendation_template(aws_client:aws_client(), create_recommendation_template_request(), proplists:proplist()) ->
    {ok, create_recommendation_template_response(), tuple()} |
    {error, any()} |
    {error, create_recommendation_template_errors(), tuple()}.
create_recommendation_template(Client, Input0, Options0) ->
    Method = post,
    Path = ["/create-recommendation-template"],
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

%% @doc Creates a resiliency policy for an application.
%%
%% Resilience Hub allows you to provide a value of zero for `rtoInSecs'
%% and `rpoInSecs' of your resiliency policy. But, while assessing your
%% application,
%% the lowest possible assessment result is near zero. Hence, if you provide
%% value zero for
%% `rtoInSecs' and `rpoInSecs', the estimated workload RTO and
%% estimated workload RPO result will be near zero and the Compliance
%% status for your application will be set to Policy
%% breached.
-spec create_resiliency_policy(aws_client:aws_client(), create_resiliency_policy_request()) ->
    {ok, create_resiliency_policy_response(), tuple()} |
    {error, any()} |
    {error, create_resiliency_policy_errors(), tuple()}.
create_resiliency_policy(Client, Input) ->
    create_resiliency_policy(Client, Input, []).

-spec create_resiliency_policy(aws_client:aws_client(), create_resiliency_policy_request(), proplists:proplist()) ->
    {ok, create_resiliency_policy_response(), tuple()} |
    {error, any()} |
    {error, create_resiliency_policy_errors(), tuple()}.
create_resiliency_policy(Client, Input0, Options0) ->
    Method = post,
    Path = ["/create-resiliency-policy"],
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

%% @doc Deletes an Resilience Hub application.
%%
%% This is a destructive action that can't be
%% undone.
-spec delete_app(aws_client:aws_client(), delete_app_request()) ->
    {ok, delete_app_response(), tuple()} |
    {error, any()} |
    {error, delete_app_errors(), tuple()}.
delete_app(Client, Input) ->
    delete_app(Client, Input, []).

-spec delete_app(aws_client:aws_client(), delete_app_request(), proplists:proplist()) ->
    {ok, delete_app_response(), tuple()} |
    {error, any()} |
    {error, delete_app_errors(), tuple()}.
delete_app(Client, Input0, Options0) ->
    Method = post,
    Path = ["/delete-app"],
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

%% @doc Deletes an Resilience Hub application assessment.
%%
%% This is a destructive action
%% that can't be undone.
-spec delete_app_assessment(aws_client:aws_client(), delete_app_assessment_request()) ->
    {ok, delete_app_assessment_response(), tuple()} |
    {error, any()} |
    {error, delete_app_assessment_errors(), tuple()}.
delete_app_assessment(Client, Input) ->
    delete_app_assessment(Client, Input, []).

-spec delete_app_assessment(aws_client:aws_client(), delete_app_assessment_request(), proplists:proplist()) ->
    {ok, delete_app_assessment_response(), tuple()} |
    {error, any()} |
    {error, delete_app_assessment_errors(), tuple()}.
delete_app_assessment(Client, Input0, Options0) ->
    Method = post,
    Path = ["/delete-app-assessment"],
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

%% @doc Deletes the input source and all of its imported resources from the
%% Resilience Hub
%% application.
-spec delete_app_input_source(aws_client:aws_client(), delete_app_input_source_request()) ->
    {ok, delete_app_input_source_response(), tuple()} |
    {error, any()} |
    {error, delete_app_input_source_errors(), tuple()}.
delete_app_input_source(Client, Input) ->
    delete_app_input_source(Client, Input, []).

-spec delete_app_input_source(aws_client:aws_client(), delete_app_input_source_request(), proplists:proplist()) ->
    {ok, delete_app_input_source_response(), tuple()} |
    {error, any()} |
    {error, delete_app_input_source_errors(), tuple()}.
delete_app_input_source(Client, Input0, Options0) ->
    Method = post,
    Path = ["/delete-app-input-source"],
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

%% @doc Deletes an Application Component from the Resilience Hub application.
%%
%% This API updates the Resilience Hub application draft version. To use this
%% Application Component for running assessments, you must publish the
%% Resilience Hub
%% application using the `PublishAppVersion' API.
%%
%% You will not be able to delete an Application Component if it has
%% resources associated
%% with it.
-spec delete_app_version_app_component(aws_client:aws_client(), delete_app_version_app_component_request()) ->
    {ok, delete_app_version_app_component_response(), tuple()} |
    {error, any()} |
    {error, delete_app_version_app_component_errors(), tuple()}.
delete_app_version_app_component(Client, Input) ->
    delete_app_version_app_component(Client, Input, []).

-spec delete_app_version_app_component(aws_client:aws_client(), delete_app_version_app_component_request(), proplists:proplist()) ->
    {ok, delete_app_version_app_component_response(), tuple()} |
    {error, any()} |
    {error, delete_app_version_app_component_errors(), tuple()}.
delete_app_version_app_component(Client, Input0, Options0) ->
    Method = post,
    Path = ["/delete-app-version-app-component"],
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

%% @doc Deletes a resource from the Resilience Hub application.
%%
%% You can only delete a manually added resource. To exclude non-manually
%% added
%% resources, use the `UpdateAppVersionResource' API.
%%
%% This action has no effect outside Resilience Hub.
%%
%% This API updates the Resilience Hub application draft version. To use this
%% resource for running resiliency assessments, you must publish the
%% Resilience Hub
%% application using the `PublishAppVersion' API.
-spec delete_app_version_resource(aws_client:aws_client(), delete_app_version_resource_request()) ->
    {ok, delete_app_version_resource_response(), tuple()} |
    {error, any()} |
    {error, delete_app_version_resource_errors(), tuple()}.
delete_app_version_resource(Client, Input) ->
    delete_app_version_resource(Client, Input, []).

-spec delete_app_version_resource(aws_client:aws_client(), delete_app_version_resource_request(), proplists:proplist()) ->
    {ok, delete_app_version_resource_response(), tuple()} |
    {error, any()} |
    {error, delete_app_version_resource_errors(), tuple()}.
delete_app_version_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/delete-app-version-resource"],
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

%% @doc Deletes a recommendation template.
%%
%% This is a destructive action that can't be
%% undone.
-spec delete_recommendation_template(aws_client:aws_client(), delete_recommendation_template_request()) ->
    {ok, delete_recommendation_template_response(), tuple()} |
    {error, any()} |
    {error, delete_recommendation_template_errors(), tuple()}.
delete_recommendation_template(Client, Input) ->
    delete_recommendation_template(Client, Input, []).

-spec delete_recommendation_template(aws_client:aws_client(), delete_recommendation_template_request(), proplists:proplist()) ->
    {ok, delete_recommendation_template_response(), tuple()} |
    {error, any()} |
    {error, delete_recommendation_template_errors(), tuple()}.
delete_recommendation_template(Client, Input0, Options0) ->
    Method = post,
    Path = ["/delete-recommendation-template"],
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

%% @doc Deletes a resiliency policy.
%%
%% This is a destructive action that can't be undone.
-spec delete_resiliency_policy(aws_client:aws_client(), delete_resiliency_policy_request()) ->
    {ok, delete_resiliency_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_resiliency_policy_errors(), tuple()}.
delete_resiliency_policy(Client, Input) ->
    delete_resiliency_policy(Client, Input, []).

-spec delete_resiliency_policy(aws_client:aws_client(), delete_resiliency_policy_request(), proplists:proplist()) ->
    {ok, delete_resiliency_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_resiliency_policy_errors(), tuple()}.
delete_resiliency_policy(Client, Input0, Options0) ->
    Method = post,
    Path = ["/delete-resiliency-policy"],
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

%% @doc Describes an Resilience Hub application.
-spec describe_app(aws_client:aws_client(), describe_app_request()) ->
    {ok, describe_app_response(), tuple()} |
    {error, any()} |
    {error, describe_app_errors(), tuple()}.
describe_app(Client, Input) ->
    describe_app(Client, Input, []).

-spec describe_app(aws_client:aws_client(), describe_app_request(), proplists:proplist()) ->
    {ok, describe_app_response(), tuple()} |
    {error, any()} |
    {error, describe_app_errors(), tuple()}.
describe_app(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describe-app"],
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

%% @doc Describes an assessment for an Resilience Hub application.
-spec describe_app_assessment(aws_client:aws_client(), describe_app_assessment_request()) ->
    {ok, describe_app_assessment_response(), tuple()} |
    {error, any()} |
    {error, describe_app_assessment_errors(), tuple()}.
describe_app_assessment(Client, Input) ->
    describe_app_assessment(Client, Input, []).

-spec describe_app_assessment(aws_client:aws_client(), describe_app_assessment_request(), proplists:proplist()) ->
    {ok, describe_app_assessment_response(), tuple()} |
    {error, any()} |
    {error, describe_app_assessment_errors(), tuple()}.
describe_app_assessment(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describe-app-assessment"],
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

%% @doc Describes the Resilience Hub application version.
-spec describe_app_version(aws_client:aws_client(), describe_app_version_request()) ->
    {ok, describe_app_version_response(), tuple()} |
    {error, any()} |
    {error, describe_app_version_errors(), tuple()}.
describe_app_version(Client, Input) ->
    describe_app_version(Client, Input, []).

-spec describe_app_version(aws_client:aws_client(), describe_app_version_request(), proplists:proplist()) ->
    {ok, describe_app_version_response(), tuple()} |
    {error, any()} |
    {error, describe_app_version_errors(), tuple()}.
describe_app_version(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describe-app-version"],
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

%% @doc Describes an Application Component in the Resilience Hub application.
-spec describe_app_version_app_component(aws_client:aws_client(), describe_app_version_app_component_request()) ->
    {ok, describe_app_version_app_component_response(), tuple()} |
    {error, any()} |
    {error, describe_app_version_app_component_errors(), tuple()}.
describe_app_version_app_component(Client, Input) ->
    describe_app_version_app_component(Client, Input, []).

-spec describe_app_version_app_component(aws_client:aws_client(), describe_app_version_app_component_request(), proplists:proplist()) ->
    {ok, describe_app_version_app_component_response(), tuple()} |
    {error, any()} |
    {error, describe_app_version_app_component_errors(), tuple()}.
describe_app_version_app_component(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describe-app-version-app-component"],
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

%% @doc Describes a resource of the Resilience Hub application.
%%
%% This API accepts only one of the following parameters to describe the
%% resource:
%%
%% `resourceName'
%%
%% `logicalResourceId'
%%
%% `physicalResourceId' (Along with `physicalResourceId', you can
%% also provide `awsAccountId', and `awsRegion')
-spec describe_app_version_resource(aws_client:aws_client(), describe_app_version_resource_request()) ->
    {ok, describe_app_version_resource_response(), tuple()} |
    {error, any()} |
    {error, describe_app_version_resource_errors(), tuple()}.
describe_app_version_resource(Client, Input) ->
    describe_app_version_resource(Client, Input, []).

-spec describe_app_version_resource(aws_client:aws_client(), describe_app_version_resource_request(), proplists:proplist()) ->
    {ok, describe_app_version_resource_response(), tuple()} |
    {error, any()} |
    {error, describe_app_version_resource_errors(), tuple()}.
describe_app_version_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describe-app-version-resource"],
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

%% @doc Returns the resolution status for the specified resolution identifier
%% for an application
%% version.
%%
%% If `resolutionId' is not specified, the current resolution status is
%% returned.
-spec describe_app_version_resources_resolution_status(aws_client:aws_client(), describe_app_version_resources_resolution_status_request()) ->
    {ok, describe_app_version_resources_resolution_status_response(), tuple()} |
    {error, any()} |
    {error, describe_app_version_resources_resolution_status_errors(), tuple()}.
describe_app_version_resources_resolution_status(Client, Input) ->
    describe_app_version_resources_resolution_status(Client, Input, []).

-spec describe_app_version_resources_resolution_status(aws_client:aws_client(), describe_app_version_resources_resolution_status_request(), proplists:proplist()) ->
    {ok, describe_app_version_resources_resolution_status_response(), tuple()} |
    {error, any()} |
    {error, describe_app_version_resources_resolution_status_errors(), tuple()}.
describe_app_version_resources_resolution_status(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describe-app-version-resources-resolution-status"],
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

%% @doc Describes details about an Resilience Hub application.
-spec describe_app_version_template(aws_client:aws_client(), describe_app_version_template_request()) ->
    {ok, describe_app_version_template_response(), tuple()} |
    {error, any()} |
    {error, describe_app_version_template_errors(), tuple()}.
describe_app_version_template(Client, Input) ->
    describe_app_version_template(Client, Input, []).

-spec describe_app_version_template(aws_client:aws_client(), describe_app_version_template_request(), proplists:proplist()) ->
    {ok, describe_app_version_template_response(), tuple()} |
    {error, any()} |
    {error, describe_app_version_template_errors(), tuple()}.
describe_app_version_template(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describe-app-version-template"],
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

%% @doc Describes the status of importing resources to an application
%% version.
%%
%% If you get a 404 error with
%% `ResourceImportStatusNotFoundAppMetadataException', you must call
%% `importResourcesToDraftAppVersion' after creating the application and
%% before
%% calling `describeDraftAppVersionResourcesImportStatus' to obtain the
%% status.
-spec describe_draft_app_version_resources_import_status(aws_client:aws_client(), describe_draft_app_version_resources_import_status_request()) ->
    {ok, describe_draft_app_version_resources_import_status_response(), tuple()} |
    {error, any()} |
    {error, describe_draft_app_version_resources_import_status_errors(), tuple()}.
describe_draft_app_version_resources_import_status(Client, Input) ->
    describe_draft_app_version_resources_import_status(Client, Input, []).

-spec describe_draft_app_version_resources_import_status(aws_client:aws_client(), describe_draft_app_version_resources_import_status_request(), proplists:proplist()) ->
    {ok, describe_draft_app_version_resources_import_status_response(), tuple()} |
    {error, any()} |
    {error, describe_draft_app_version_resources_import_status_errors(), tuple()}.
describe_draft_app_version_resources_import_status(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describe-draft-app-version-resources-import-status"],
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

%% @doc Describes the metrics of the application configuration being
%% exported.
-spec describe_metrics_export(aws_client:aws_client(), describe_metrics_export_request()) ->
    {ok, describe_metrics_export_response(), tuple()} |
    {error, any()} |
    {error, describe_metrics_export_errors(), tuple()}.
describe_metrics_export(Client, Input) ->
    describe_metrics_export(Client, Input, []).

-spec describe_metrics_export(aws_client:aws_client(), describe_metrics_export_request(), proplists:proplist()) ->
    {ok, describe_metrics_export_response(), tuple()} |
    {error, any()} |
    {error, describe_metrics_export_errors(), tuple()}.
describe_metrics_export(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describe-metrics-export"],
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

%% @doc Describes a specified resiliency policy for an Resilience Hub
%% application.
%%
%% The
%% returned policy object includes creation time, data location constraints,
%% the Amazon Resource
%% Name (ARN) for the policy, tags, tier, and more.
-spec describe_resiliency_policy(aws_client:aws_client(), describe_resiliency_policy_request()) ->
    {ok, describe_resiliency_policy_response(), tuple()} |
    {error, any()} |
    {error, describe_resiliency_policy_errors(), tuple()}.
describe_resiliency_policy(Client, Input) ->
    describe_resiliency_policy(Client, Input, []).

-spec describe_resiliency_policy(aws_client:aws_client(), describe_resiliency_policy_request(), proplists:proplist()) ->
    {ok, describe_resiliency_policy_response(), tuple()} |
    {error, any()} |
    {error, describe_resiliency_policy_errors(), tuple()}.
describe_resiliency_policy(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describe-resiliency-policy"],
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

%% @doc Describes the resource grouping recommendation tasks run by
%% Resilience Hub for your application.
-spec describe_resource_grouping_recommendation_task(aws_client:aws_client(), describe_resource_grouping_recommendation_task_request()) ->
    {ok, describe_resource_grouping_recommendation_task_response(), tuple()} |
    {error, any()} |
    {error, describe_resource_grouping_recommendation_task_errors(), tuple()}.
describe_resource_grouping_recommendation_task(Client, Input) ->
    describe_resource_grouping_recommendation_task(Client, Input, []).

-spec describe_resource_grouping_recommendation_task(aws_client:aws_client(), describe_resource_grouping_recommendation_task_request(), proplists:proplist()) ->
    {ok, describe_resource_grouping_recommendation_task_response(), tuple()} |
    {error, any()} |
    {error, describe_resource_grouping_recommendation_task_errors(), tuple()}.
describe_resource_grouping_recommendation_task(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describe-resource-grouping-recommendation-task"],
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

%% @doc Imports resources to Resilience Hub application draft version from
%% different input
%% sources.
%%
%% For more information about the input sources supported by Resilience Hub,
%% see
%% Discover the structure and describe your Resilience Hub application:
%% https://docs.aws.amazon.com/resilience-hub/latest/userguide/discover-structure.html.
-spec import_resources_to_draft_app_version(aws_client:aws_client(), import_resources_to_draft_app_version_request()) ->
    {ok, import_resources_to_draft_app_version_response(), tuple()} |
    {error, any()} |
    {error, import_resources_to_draft_app_version_errors(), tuple()}.
import_resources_to_draft_app_version(Client, Input) ->
    import_resources_to_draft_app_version(Client, Input, []).

-spec import_resources_to_draft_app_version(aws_client:aws_client(), import_resources_to_draft_app_version_request(), proplists:proplist()) ->
    {ok, import_resources_to_draft_app_version_response(), tuple()} |
    {error, any()} |
    {error, import_resources_to_draft_app_version_errors(), tuple()}.
import_resources_to_draft_app_version(Client, Input0, Options0) ->
    Method = post,
    Path = ["/import-resources-to-draft-app-version"],
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

%% @doc Lists the alarm recommendations for an Resilience Hub application.
-spec list_alarm_recommendations(aws_client:aws_client(), list_alarm_recommendations_request()) ->
    {ok, list_alarm_recommendations_response(), tuple()} |
    {error, any()} |
    {error, list_alarm_recommendations_errors(), tuple()}.
list_alarm_recommendations(Client, Input) ->
    list_alarm_recommendations(Client, Input, []).

-spec list_alarm_recommendations(aws_client:aws_client(), list_alarm_recommendations_request(), proplists:proplist()) ->
    {ok, list_alarm_recommendations_response(), tuple()} |
    {error, any()} |
    {error, list_alarm_recommendations_errors(), tuple()}.
list_alarm_recommendations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-alarm-recommendations"],
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

%% @doc List of compliance drifts that were detected while running an
%% assessment.
-spec list_app_assessment_compliance_drifts(aws_client:aws_client(), list_app_assessment_compliance_drifts_request()) ->
    {ok, list_app_assessment_compliance_drifts_response(), tuple()} |
    {error, any()} |
    {error, list_app_assessment_compliance_drifts_errors(), tuple()}.
list_app_assessment_compliance_drifts(Client, Input) ->
    list_app_assessment_compliance_drifts(Client, Input, []).

-spec list_app_assessment_compliance_drifts(aws_client:aws_client(), list_app_assessment_compliance_drifts_request(), proplists:proplist()) ->
    {ok, list_app_assessment_compliance_drifts_response(), tuple()} |
    {error, any()} |
    {error, list_app_assessment_compliance_drifts_errors(), tuple()}.
list_app_assessment_compliance_drifts(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-app-assessment-compliance-drifts"],
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

%% @doc List of resource drifts that were detected while running an
%% assessment.
-spec list_app_assessment_resource_drifts(aws_client:aws_client(), list_app_assessment_resource_drifts_request()) ->
    {ok, list_app_assessment_resource_drifts_response(), tuple()} |
    {error, any()} |
    {error, list_app_assessment_resource_drifts_errors(), tuple()}.
list_app_assessment_resource_drifts(Client, Input) ->
    list_app_assessment_resource_drifts(Client, Input, []).

-spec list_app_assessment_resource_drifts(aws_client:aws_client(), list_app_assessment_resource_drifts_request(), proplists:proplist()) ->
    {ok, list_app_assessment_resource_drifts_response(), tuple()} |
    {error, any()} |
    {error, list_app_assessment_resource_drifts_errors(), tuple()}.
list_app_assessment_resource_drifts(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-app-assessment-resource-drifts"],
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

%% @doc Lists the assessments for an Resilience Hub application.
%%
%% You can use request
%% parameters to refine the results for the response object.
-spec list_app_assessments(aws_client:aws_client()) ->
    {ok, list_app_assessments_response(), tuple()} |
    {error, any()} |
    {error, list_app_assessments_errors(), tuple()}.
list_app_assessments(Client)
  when is_map(Client) ->
    list_app_assessments(Client, #{}, #{}).

-spec list_app_assessments(aws_client:aws_client(), map(), map()) ->
    {ok, list_app_assessments_response(), tuple()} |
    {error, any()} |
    {error, list_app_assessments_errors(), tuple()}.
list_app_assessments(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_app_assessments(Client, QueryMap, HeadersMap, []).

-spec list_app_assessments(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_app_assessments_response(), tuple()} |
    {error, any()} |
    {error, list_app_assessments_errors(), tuple()}.
list_app_assessments(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/list-app-assessments"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"appArn">>, maps:get(<<"appArn">>, QueryMap, undefined)},
        {<<"assessmentName">>, maps:get(<<"assessmentName">>, QueryMap, undefined)},
        {<<"assessmentStatus">>, maps:get(<<"assessmentStatus">>, QueryMap, undefined)},
        {<<"complianceStatus">>, maps:get(<<"complianceStatus">>, QueryMap, undefined)},
        {<<"invoker">>, maps:get(<<"invoker">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"reverseOrder">>, maps:get(<<"reverseOrder">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the compliances for an Resilience Hub Application Component.
-spec list_app_component_compliances(aws_client:aws_client(), list_app_component_compliances_request()) ->
    {ok, list_app_component_compliances_response(), tuple()} |
    {error, any()} |
    {error, list_app_component_compliances_errors(), tuple()}.
list_app_component_compliances(Client, Input) ->
    list_app_component_compliances(Client, Input, []).

-spec list_app_component_compliances(aws_client:aws_client(), list_app_component_compliances_request(), proplists:proplist()) ->
    {ok, list_app_component_compliances_response(), tuple()} |
    {error, any()} |
    {error, list_app_component_compliances_errors(), tuple()}.
list_app_component_compliances(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-app-component-compliances"],
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

%% @doc Lists the recommendations for an Resilience Hub Application
%% Component.
-spec list_app_component_recommendations(aws_client:aws_client(), list_app_component_recommendations_request()) ->
    {ok, list_app_component_recommendations_response(), tuple()} |
    {error, any()} |
    {error, list_app_component_recommendations_errors(), tuple()}.
list_app_component_recommendations(Client, Input) ->
    list_app_component_recommendations(Client, Input, []).

-spec list_app_component_recommendations(aws_client:aws_client(), list_app_component_recommendations_request(), proplists:proplist()) ->
    {ok, list_app_component_recommendations_response(), tuple()} |
    {error, any()} |
    {error, list_app_component_recommendations_errors(), tuple()}.
list_app_component_recommendations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-app-component-recommendations"],
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

%% @doc Lists all the input sources of the Resilience Hub application.
%%
%% For more
%% information about the input sources supported by Resilience Hub, see
%% Discover
%% the structure and describe your Resilience Hub application:
%% https://docs.aws.amazon.com/resilience-hub/latest/userguide/discover-structure.html.
-spec list_app_input_sources(aws_client:aws_client(), list_app_input_sources_request()) ->
    {ok, list_app_input_sources_response(), tuple()} |
    {error, any()} |
    {error, list_app_input_sources_errors(), tuple()}.
list_app_input_sources(Client, Input) ->
    list_app_input_sources(Client, Input, []).

-spec list_app_input_sources(aws_client:aws_client(), list_app_input_sources_request(), proplists:proplist()) ->
    {ok, list_app_input_sources_response(), tuple()} |
    {error, any()} |
    {error, list_app_input_sources_errors(), tuple()}.
list_app_input_sources(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-app-input-sources"],
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

%% @doc Lists all the Application Components in the Resilience Hub
%% application.
-spec list_app_version_app_components(aws_client:aws_client(), list_app_version_app_components_request()) ->
    {ok, list_app_version_app_components_response(), tuple()} |
    {error, any()} |
    {error, list_app_version_app_components_errors(), tuple()}.
list_app_version_app_components(Client, Input) ->
    list_app_version_app_components(Client, Input, []).

-spec list_app_version_app_components(aws_client:aws_client(), list_app_version_app_components_request(), proplists:proplist()) ->
    {ok, list_app_version_app_components_response(), tuple()} |
    {error, any()} |
    {error, list_app_version_app_components_errors(), tuple()}.
list_app_version_app_components(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-app-version-app-components"],
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

%% @doc Lists how the resources in an application version are mapped/sourced
%% from.
%%
%% Mappings can be
%% physical resource identifiers, CloudFormation stacks, resource-groups, or
%% an application registry
%% app.
-spec list_app_version_resource_mappings(aws_client:aws_client(), list_app_version_resource_mappings_request()) ->
    {ok, list_app_version_resource_mappings_response(), tuple()} |
    {error, any()} |
    {error, list_app_version_resource_mappings_errors(), tuple()}.
list_app_version_resource_mappings(Client, Input) ->
    list_app_version_resource_mappings(Client, Input, []).

-spec list_app_version_resource_mappings(aws_client:aws_client(), list_app_version_resource_mappings_request(), proplists:proplist()) ->
    {ok, list_app_version_resource_mappings_response(), tuple()} |
    {error, any()} |
    {error, list_app_version_resource_mappings_errors(), tuple()}.
list_app_version_resource_mappings(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-app-version-resource-mappings"],
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

%% @doc Lists all the resources in an Resilience Hub application.
-spec list_app_version_resources(aws_client:aws_client(), list_app_version_resources_request()) ->
    {ok, list_app_version_resources_response(), tuple()} |
    {error, any()} |
    {error, list_app_version_resources_errors(), tuple()}.
list_app_version_resources(Client, Input) ->
    list_app_version_resources(Client, Input, []).

-spec list_app_version_resources(aws_client:aws_client(), list_app_version_resources_request(), proplists:proplist()) ->
    {ok, list_app_version_resources_response(), tuple()} |
    {error, any()} |
    {error, list_app_version_resources_errors(), tuple()}.
list_app_version_resources(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-app-version-resources"],
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

%% @doc Lists the different versions for the Resilience Hub applications.
-spec list_app_versions(aws_client:aws_client(), list_app_versions_request()) ->
    {ok, list_app_versions_response(), tuple()} |
    {error, any()} |
    {error, list_app_versions_errors(), tuple()}.
list_app_versions(Client, Input) ->
    list_app_versions(Client, Input, []).

-spec list_app_versions(aws_client:aws_client(), list_app_versions_request(), proplists:proplist()) ->
    {ok, list_app_versions_response(), tuple()} |
    {error, any()} |
    {error, list_app_versions_errors(), tuple()}.
list_app_versions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-app-versions"],
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

%% @doc Lists your Resilience Hub applications.
%%
%% You can filter applications using only one filter at a time or without
%% using any filter.
%% If you try to filter applications using multiple filters, you will get the
%% following
%% error:
%%
%% ```
%% An error occurred (ValidationException) when calling the ListApps
%% operation: Only one filter is supported for this operation.'''
-spec list_apps(aws_client:aws_client()) ->
    {ok, list_apps_response(), tuple()} |
    {error, any()} |
    {error, list_apps_errors(), tuple()}.
list_apps(Client)
  when is_map(Client) ->
    list_apps(Client, #{}, #{}).

-spec list_apps(aws_client:aws_client(), map(), map()) ->
    {ok, list_apps_response(), tuple()} |
    {error, any()} |
    {error, list_apps_errors(), tuple()}.
list_apps(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_apps(Client, QueryMap, HeadersMap, []).

-spec list_apps(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_apps_response(), tuple()} |
    {error, any()} |
    {error, list_apps_errors(), tuple()}.
list_apps(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/list-apps"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"appArn">>, maps:get(<<"appArn">>, QueryMap, undefined)},
        {<<"awsApplicationArn">>, maps:get(<<"awsApplicationArn">>, QueryMap, undefined)},
        {<<"fromLastAssessmentTime">>, maps:get(<<"fromLastAssessmentTime">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"name">>, maps:get(<<"name">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"reverseOrder">>, maps:get(<<"reverseOrder">>, QueryMap, undefined)},
        {<<"toLastAssessmentTime">>, maps:get(<<"toLastAssessmentTime">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the metrics that can be exported.
-spec list_metrics(aws_client:aws_client(), list_metrics_request()) ->
    {ok, list_metrics_response(), tuple()} |
    {error, any()} |
    {error, list_metrics_errors(), tuple()}.
list_metrics(Client, Input) ->
    list_metrics(Client, Input, []).

-spec list_metrics(aws_client:aws_client(), list_metrics_request(), proplists:proplist()) ->
    {ok, list_metrics_response(), tuple()} |
    {error, any()} |
    {error, list_metrics_errors(), tuple()}.
list_metrics(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-metrics"],
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

%% @doc Lists the recommendation templates for the Resilience Hub
%% applications.
-spec list_recommendation_templates(aws_client:aws_client()) ->
    {ok, list_recommendation_templates_response(), tuple()} |
    {error, any()} |
    {error, list_recommendation_templates_errors(), tuple()}.
list_recommendation_templates(Client)
  when is_map(Client) ->
    list_recommendation_templates(Client, #{}, #{}).

-spec list_recommendation_templates(aws_client:aws_client(), map(), map()) ->
    {ok, list_recommendation_templates_response(), tuple()} |
    {error, any()} |
    {error, list_recommendation_templates_errors(), tuple()}.
list_recommendation_templates(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_recommendation_templates(Client, QueryMap, HeadersMap, []).

-spec list_recommendation_templates(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_recommendation_templates_response(), tuple()} |
    {error, any()} |
    {error, list_recommendation_templates_errors(), tuple()}.
list_recommendation_templates(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/list-recommendation-templates"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"assessmentArn">>, maps:get(<<"assessmentArn">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"name">>, maps:get(<<"name">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"recommendationTemplateArn">>, maps:get(<<"recommendationTemplateArn">>, QueryMap, undefined)},
        {<<"reverseOrder">>, maps:get(<<"reverseOrder">>, QueryMap, undefined)},
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the resiliency policies for the Resilience Hub applications.
-spec list_resiliency_policies(aws_client:aws_client()) ->
    {ok, list_resiliency_policies_response(), tuple()} |
    {error, any()} |
    {error, list_resiliency_policies_errors(), tuple()}.
list_resiliency_policies(Client)
  when is_map(Client) ->
    list_resiliency_policies(Client, #{}, #{}).

-spec list_resiliency_policies(aws_client:aws_client(), map(), map()) ->
    {ok, list_resiliency_policies_response(), tuple()} |
    {error, any()} |
    {error, list_resiliency_policies_errors(), tuple()}.
list_resiliency_policies(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_resiliency_policies(Client, QueryMap, HeadersMap, []).

-spec list_resiliency_policies(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_resiliency_policies_response(), tuple()} |
    {error, any()} |
    {error, list_resiliency_policies_errors(), tuple()}.
list_resiliency_policies(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/list-resiliency-policies"],
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
        {<<"policyName">>, maps:get(<<"policyName">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the resource grouping recommendations suggested by Resilience
%% Hub for your application.
-spec list_resource_grouping_recommendations(aws_client:aws_client()) ->
    {ok, list_resource_grouping_recommendations_response(), tuple()} |
    {error, any()} |
    {error, list_resource_grouping_recommendations_errors(), tuple()}.
list_resource_grouping_recommendations(Client)
  when is_map(Client) ->
    list_resource_grouping_recommendations(Client, #{}, #{}).

-spec list_resource_grouping_recommendations(aws_client:aws_client(), map(), map()) ->
    {ok, list_resource_grouping_recommendations_response(), tuple()} |
    {error, any()} |
    {error, list_resource_grouping_recommendations_errors(), tuple()}.
list_resource_grouping_recommendations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_resource_grouping_recommendations(Client, QueryMap, HeadersMap, []).

-spec list_resource_grouping_recommendations(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_resource_grouping_recommendations_response(), tuple()} |
    {error, any()} |
    {error, list_resource_grouping_recommendations_errors(), tuple()}.
list_resource_grouping_recommendations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/list-resource-grouping-recommendations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"appArn">>, maps:get(<<"appArn">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the standard operating procedure (SOP) recommendations for the
%% Resilience Hub applications.
-spec list_sop_recommendations(aws_client:aws_client(), list_sop_recommendations_request()) ->
    {ok, list_sop_recommendations_response(), tuple()} |
    {error, any()} |
    {error, list_sop_recommendations_errors(), tuple()}.
list_sop_recommendations(Client, Input) ->
    list_sop_recommendations(Client, Input, []).

-spec list_sop_recommendations(aws_client:aws_client(), list_sop_recommendations_request(), proplists:proplist()) ->
    {ok, list_sop_recommendations_response(), tuple()} |
    {error, any()} |
    {error, list_sop_recommendations_errors(), tuple()}.
list_sop_recommendations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-sop-recommendations"],
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

%% @doc Lists the suggested resiliency policies for the Resilience Hub
%% applications.
-spec list_suggested_resiliency_policies(aws_client:aws_client()) ->
    {ok, list_suggested_resiliency_policies_response(), tuple()} |
    {error, any()} |
    {error, list_suggested_resiliency_policies_errors(), tuple()}.
list_suggested_resiliency_policies(Client)
  when is_map(Client) ->
    list_suggested_resiliency_policies(Client, #{}, #{}).

-spec list_suggested_resiliency_policies(aws_client:aws_client(), map(), map()) ->
    {ok, list_suggested_resiliency_policies_response(), tuple()} |
    {error, any()} |
    {error, list_suggested_resiliency_policies_errors(), tuple()}.
list_suggested_resiliency_policies(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_suggested_resiliency_policies(Client, QueryMap, HeadersMap, []).

-spec list_suggested_resiliency_policies(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_suggested_resiliency_policies_response(), tuple()} |
    {error, any()} |
    {error, list_suggested_resiliency_policies_errors(), tuple()}.
list_suggested_resiliency_policies(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/list-suggested-resiliency-policies"],
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

%% @doc Lists the tags for your resources in your Resilience Hub
%% applications.
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

%% @doc Lists the test recommendations for the Resilience Hub application.
-spec list_test_recommendations(aws_client:aws_client(), list_test_recommendations_request()) ->
    {ok, list_test_recommendations_response(), tuple()} |
    {error, any()} |
    {error, list_test_recommendations_errors(), tuple()}.
list_test_recommendations(Client, Input) ->
    list_test_recommendations(Client, Input, []).

-spec list_test_recommendations(aws_client:aws_client(), list_test_recommendations_request(), proplists:proplist()) ->
    {ok, list_test_recommendations_response(), tuple()} |
    {error, any()} |
    {error, list_test_recommendations_errors(), tuple()}.
list_test_recommendations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-test-recommendations"],
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

%% @doc Lists the resources that are not currently supported in Resilience
%% Hub.
%%
%% An
%% unsupported resource is a resource that exists in the object that was used
%% to create an app,
%% but is not supported by Resilience Hub.
-spec list_unsupported_app_version_resources(aws_client:aws_client(), list_unsupported_app_version_resources_request()) ->
    {ok, list_unsupported_app_version_resources_response(), tuple()} |
    {error, any()} |
    {error, list_unsupported_app_version_resources_errors(), tuple()}.
list_unsupported_app_version_resources(Client, Input) ->
    list_unsupported_app_version_resources(Client, Input, []).

-spec list_unsupported_app_version_resources(aws_client:aws_client(), list_unsupported_app_version_resources_request(), proplists:proplist()) ->
    {ok, list_unsupported_app_version_resources_response(), tuple()} |
    {error, any()} |
    {error, list_unsupported_app_version_resources_errors(), tuple()}.
list_unsupported_app_version_resources(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-unsupported-app-version-resources"],
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

%% @doc Publishes a new version of a specific Resilience Hub application.
-spec publish_app_version(aws_client:aws_client(), publish_app_version_request()) ->
    {ok, publish_app_version_response(), tuple()} |
    {error, any()} |
    {error, publish_app_version_errors(), tuple()}.
publish_app_version(Client, Input) ->
    publish_app_version(Client, Input, []).

-spec publish_app_version(aws_client:aws_client(), publish_app_version_request(), proplists:proplist()) ->
    {ok, publish_app_version_response(), tuple()} |
    {error, any()} |
    {error, publish_app_version_errors(), tuple()}.
publish_app_version(Client, Input0, Options0) ->
    Method = post,
    Path = ["/publish-app-version"],
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

%% @doc Adds or updates the app template for an Resilience Hub application
%% draft
%% version.
-spec put_draft_app_version_template(aws_client:aws_client(), put_draft_app_version_template_request()) ->
    {ok, put_draft_app_version_template_response(), tuple()} |
    {error, any()} |
    {error, put_draft_app_version_template_errors(), tuple()}.
put_draft_app_version_template(Client, Input) ->
    put_draft_app_version_template(Client, Input, []).

-spec put_draft_app_version_template(aws_client:aws_client(), put_draft_app_version_template_request(), proplists:proplist()) ->
    {ok, put_draft_app_version_template_response(), tuple()} |
    {error, any()} |
    {error, put_draft_app_version_template_errors(), tuple()}.
put_draft_app_version_template(Client, Input0, Options0) ->
    Method = post,
    Path = ["/put-draft-app-version-template"],
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

%% @doc Rejects resource grouping recommendations.
-spec reject_resource_grouping_recommendations(aws_client:aws_client(), reject_resource_grouping_recommendations_request()) ->
    {ok, reject_resource_grouping_recommendations_response(), tuple()} |
    {error, any()} |
    {error, reject_resource_grouping_recommendations_errors(), tuple()}.
reject_resource_grouping_recommendations(Client, Input) ->
    reject_resource_grouping_recommendations(Client, Input, []).

-spec reject_resource_grouping_recommendations(aws_client:aws_client(), reject_resource_grouping_recommendations_request(), proplists:proplist()) ->
    {ok, reject_resource_grouping_recommendations_response(), tuple()} |
    {error, any()} |
    {error, reject_resource_grouping_recommendations_errors(), tuple()}.
reject_resource_grouping_recommendations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/reject-resource-grouping-recommendations"],
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

%% @doc Removes resource mappings from a draft application version.
-spec remove_draft_app_version_resource_mappings(aws_client:aws_client(), remove_draft_app_version_resource_mappings_request()) ->
    {ok, remove_draft_app_version_resource_mappings_response(), tuple()} |
    {error, any()} |
    {error, remove_draft_app_version_resource_mappings_errors(), tuple()}.
remove_draft_app_version_resource_mappings(Client, Input) ->
    remove_draft_app_version_resource_mappings(Client, Input, []).

-spec remove_draft_app_version_resource_mappings(aws_client:aws_client(), remove_draft_app_version_resource_mappings_request(), proplists:proplist()) ->
    {ok, remove_draft_app_version_resource_mappings_response(), tuple()} |
    {error, any()} |
    {error, remove_draft_app_version_resource_mappings_errors(), tuple()}.
remove_draft_app_version_resource_mappings(Client, Input0, Options0) ->
    Method = post,
    Path = ["/remove-draft-app-version-resource-mappings"],
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

%% @doc Resolves the resources for an application version.
-spec resolve_app_version_resources(aws_client:aws_client(), resolve_app_version_resources_request()) ->
    {ok, resolve_app_version_resources_response(), tuple()} |
    {error, any()} |
    {error, resolve_app_version_resources_errors(), tuple()}.
resolve_app_version_resources(Client, Input) ->
    resolve_app_version_resources(Client, Input, []).

-spec resolve_app_version_resources(aws_client:aws_client(), resolve_app_version_resources_request(), proplists:proplist()) ->
    {ok, resolve_app_version_resources_response(), tuple()} |
    {error, any()} |
    {error, resolve_app_version_resources_errors(), tuple()}.
resolve_app_version_resources(Client, Input0, Options0) ->
    Method = post,
    Path = ["/resolve-app-version-resources"],
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

%% @doc Creates a new application assessment for an application.
-spec start_app_assessment(aws_client:aws_client(), start_app_assessment_request()) ->
    {ok, start_app_assessment_response(), tuple()} |
    {error, any()} |
    {error, start_app_assessment_errors(), tuple()}.
start_app_assessment(Client, Input) ->
    start_app_assessment(Client, Input, []).

-spec start_app_assessment(aws_client:aws_client(), start_app_assessment_request(), proplists:proplist()) ->
    {ok, start_app_assessment_response(), tuple()} |
    {error, any()} |
    {error, start_app_assessment_errors(), tuple()}.
start_app_assessment(Client, Input0, Options0) ->
    Method = post,
    Path = ["/start-app-assessment"],
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

%% @doc Initiates the export task of metrics.
-spec start_metrics_export(aws_client:aws_client(), start_metrics_export_request()) ->
    {ok, start_metrics_export_response(), tuple()} |
    {error, any()} |
    {error, start_metrics_export_errors(), tuple()}.
start_metrics_export(Client, Input) ->
    start_metrics_export(Client, Input, []).

-spec start_metrics_export(aws_client:aws_client(), start_metrics_export_request(), proplists:proplist()) ->
    {ok, start_metrics_export_response(), tuple()} |
    {error, any()} |
    {error, start_metrics_export_errors(), tuple()}.
start_metrics_export(Client, Input0, Options0) ->
    Method = post,
    Path = ["/start-metrics-export"],
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

%% @doc Starts grouping recommendation task.
-spec start_resource_grouping_recommendation_task(aws_client:aws_client(), start_resource_grouping_recommendation_task_request()) ->
    {ok, start_resource_grouping_recommendation_task_response(), tuple()} |
    {error, any()} |
    {error, start_resource_grouping_recommendation_task_errors(), tuple()}.
start_resource_grouping_recommendation_task(Client, Input) ->
    start_resource_grouping_recommendation_task(Client, Input, []).

-spec start_resource_grouping_recommendation_task(aws_client:aws_client(), start_resource_grouping_recommendation_task_request(), proplists:proplist()) ->
    {ok, start_resource_grouping_recommendation_task_response(), tuple()} |
    {error, any()} |
    {error, start_resource_grouping_recommendation_task_errors(), tuple()}.
start_resource_grouping_recommendation_task(Client, Input0, Options0) ->
    Method = post,
    Path = ["/start-resource-grouping-recommendation-task"],
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

%% @doc Applies one or more tags to a resource.
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
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an application.
-spec update_app(aws_client:aws_client(), update_app_request()) ->
    {ok, update_app_response(), tuple()} |
    {error, any()} |
    {error, update_app_errors(), tuple()}.
update_app(Client, Input) ->
    update_app(Client, Input, []).

-spec update_app(aws_client:aws_client(), update_app_request(), proplists:proplist()) ->
    {ok, update_app_response(), tuple()} |
    {error, any()} |
    {error, update_app_errors(), tuple()}.
update_app(Client, Input0, Options0) ->
    Method = post,
    Path = ["/update-app"],
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

%% @doc Updates the Resilience Hub application version.
%%
%% This API updates the Resilience Hub application draft version. To use this
%% information for running resiliency assessments, you must publish the
%% Resilience Hub
%% application using the `PublishAppVersion' API.
-spec update_app_version(aws_client:aws_client(), update_app_version_request()) ->
    {ok, update_app_version_response(), tuple()} |
    {error, any()} |
    {error, update_app_version_errors(), tuple()}.
update_app_version(Client, Input) ->
    update_app_version(Client, Input, []).

-spec update_app_version(aws_client:aws_client(), update_app_version_request(), proplists:proplist()) ->
    {ok, update_app_version_response(), tuple()} |
    {error, any()} |
    {error, update_app_version_errors(), tuple()}.
update_app_version(Client, Input0, Options0) ->
    Method = post,
    Path = ["/update-app-version"],
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

%% @doc Updates an existing Application Component in the Resilience Hub
%% application.
%%
%% This API updates the Resilience Hub application draft version. To use this
%% Application Component for running assessments, you must publish the
%% Resilience Hub
%% application using the `PublishAppVersion' API.
-spec update_app_version_app_component(aws_client:aws_client(), update_app_version_app_component_request()) ->
    {ok, update_app_version_app_component_response(), tuple()} |
    {error, any()} |
    {error, update_app_version_app_component_errors(), tuple()}.
update_app_version_app_component(Client, Input) ->
    update_app_version_app_component(Client, Input, []).

-spec update_app_version_app_component(aws_client:aws_client(), update_app_version_app_component_request(), proplists:proplist()) ->
    {ok, update_app_version_app_component_response(), tuple()} |
    {error, any()} |
    {error, update_app_version_app_component_errors(), tuple()}.
update_app_version_app_component(Client, Input0, Options0) ->
    Method = post,
    Path = ["/update-app-version-app-component"],
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

%% @doc Updates the resource details in the Resilience Hub application.
%%
%% This action has no effect outside Resilience Hub.
%%
%% This API updates the Resilience Hub application draft version. To use this
%% resource for running resiliency assessments, you must publish the
%% Resilience Hub
%% application using the `PublishAppVersion' API.
%%
%% To update application version with new `physicalResourceID', you must
%% call `ResolveAppVersionResources' API.
-spec update_app_version_resource(aws_client:aws_client(), update_app_version_resource_request()) ->
    {ok, update_app_version_resource_response(), tuple()} |
    {error, any()} |
    {error, update_app_version_resource_errors(), tuple()}.
update_app_version_resource(Client, Input) ->
    update_app_version_resource(Client, Input, []).

-spec update_app_version_resource(aws_client:aws_client(), update_app_version_resource_request(), proplists:proplist()) ->
    {ok, update_app_version_resource_response(), tuple()} |
    {error, any()} |
    {error, update_app_version_resource_errors(), tuple()}.
update_app_version_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/update-app-version-resource"],
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

%% @doc Updates a resiliency policy.
%%
%% Resilience Hub allows you to provide a value of zero for `rtoInSecs'
%% and `rpoInSecs' of your resiliency policy. But, while assessing your
%% application,
%% the lowest possible assessment result is near zero. Hence, if you provide
%% value zero for
%% `rtoInSecs' and `rpoInSecs', the estimated workload RTO and
%% estimated workload RPO result will be near zero and the Compliance
%% status for your application will be set to Policy
%% breached.
-spec update_resiliency_policy(aws_client:aws_client(), update_resiliency_policy_request()) ->
    {ok, update_resiliency_policy_response(), tuple()} |
    {error, any()} |
    {error, update_resiliency_policy_errors(), tuple()}.
update_resiliency_policy(Client, Input) ->
    update_resiliency_policy(Client, Input, []).

-spec update_resiliency_policy(aws_client:aws_client(), update_resiliency_policy_request(), proplists:proplist()) ->
    {ok, update_resiliency_policy_response(), tuple()} |
    {error, any()} |
    {error, update_resiliency_policy_errors(), tuple()}.
update_resiliency_policy(Client, Input0, Options0) ->
    Method = post,
    Path = ["/update-resiliency-policy"],
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
    Client1 = Client#{service => <<"resiliencehub">>},
    Host = build_host(<<"resiliencehub">>, Client1),
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
