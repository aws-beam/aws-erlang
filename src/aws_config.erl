%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Config
%%
%% Config provides a way to keep track of the configurations
%% of all the Amazon Web Services resources associated with your Amazon Web
%% Services account.
%%
%% You can
%% use Config to get the current and historical configurations of
%% each Amazon Web Services resource and also to get information about the
%% relationship
%% between the resources. An Amazon Web Services resource can be an Amazon
%% Compute
%% Cloud (Amazon EC2) instance, an Elastic Block Store (EBS) volume, an
%% elastic network Interface (ENI), or a security group. For a complete
%% list of resources currently supported by Config, see Supported Amazon Web
%% Services resources:
%% https://docs.aws.amazon.com/config/latest/developerguide/resource-config-reference.html#supported-resources.
%%
%% You can access and manage Config through the Amazon Web Services
%% Management
%% Console, the Amazon Web Services Command Line Interface (Amazon Web
%% Services CLI), the Config
%% API, or the Amazon Web Services SDKs for Config. This reference guide
%% contains
%% documentation for the Config API and the Amazon Web Services CLI commands
%% that
%% you can use to manage Config. The Config API uses the
%% Signature Version 4 protocol for signing requests. For more
%% information about how to sign a request with this protocol, see
%% Signature
%% Version 4 Signing Process:
%% https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html.
%% For detailed information
%% about Config features and their associated actions or commands,
%% as well as how to work with Amazon Web Services Management Console, see
%% What Is Config:
%% https://docs.aws.amazon.com/config/latest/developerguide/WhatIsConfig.html
%% in the Config Developer
%% Guide.
-module(aws_config).

-export([associate_resource_types/2,
         associate_resource_types/3,
         batch_get_aggregate_resource_config/2,
         batch_get_aggregate_resource_config/3,
         batch_get_resource_config/2,
         batch_get_resource_config/3,
         delete_aggregation_authorization/2,
         delete_aggregation_authorization/3,
         delete_config_rule/2,
         delete_config_rule/3,
         delete_configuration_aggregator/2,
         delete_configuration_aggregator/3,
         delete_configuration_recorder/2,
         delete_configuration_recorder/3,
         delete_conformance_pack/2,
         delete_conformance_pack/3,
         delete_delivery_channel/2,
         delete_delivery_channel/3,
         delete_evaluation_results/2,
         delete_evaluation_results/3,
         delete_organization_config_rule/2,
         delete_organization_config_rule/3,
         delete_organization_conformance_pack/2,
         delete_organization_conformance_pack/3,
         delete_pending_aggregation_request/2,
         delete_pending_aggregation_request/3,
         delete_remediation_configuration/2,
         delete_remediation_configuration/3,
         delete_remediation_exceptions/2,
         delete_remediation_exceptions/3,
         delete_resource_config/2,
         delete_resource_config/3,
         delete_retention_configuration/2,
         delete_retention_configuration/3,
         delete_service_linked_configuration_recorder/2,
         delete_service_linked_configuration_recorder/3,
         delete_stored_query/2,
         delete_stored_query/3,
         deliver_config_snapshot/2,
         deliver_config_snapshot/3,
         describe_aggregate_compliance_by_config_rules/2,
         describe_aggregate_compliance_by_config_rules/3,
         describe_aggregate_compliance_by_conformance_packs/2,
         describe_aggregate_compliance_by_conformance_packs/3,
         describe_aggregation_authorizations/2,
         describe_aggregation_authorizations/3,
         describe_compliance_by_config_rule/2,
         describe_compliance_by_config_rule/3,
         describe_compliance_by_resource/2,
         describe_compliance_by_resource/3,
         describe_config_rule_evaluation_status/2,
         describe_config_rule_evaluation_status/3,
         describe_config_rules/2,
         describe_config_rules/3,
         describe_configuration_aggregator_sources_status/2,
         describe_configuration_aggregator_sources_status/3,
         describe_configuration_aggregators/2,
         describe_configuration_aggregators/3,
         describe_configuration_recorder_status/2,
         describe_configuration_recorder_status/3,
         describe_configuration_recorders/2,
         describe_configuration_recorders/3,
         describe_conformance_pack_compliance/2,
         describe_conformance_pack_compliance/3,
         describe_conformance_pack_status/2,
         describe_conformance_pack_status/3,
         describe_conformance_packs/2,
         describe_conformance_packs/3,
         describe_delivery_channel_status/2,
         describe_delivery_channel_status/3,
         describe_delivery_channels/2,
         describe_delivery_channels/3,
         describe_organization_config_rule_statuses/2,
         describe_organization_config_rule_statuses/3,
         describe_organization_config_rules/2,
         describe_organization_config_rules/3,
         describe_organization_conformance_pack_statuses/2,
         describe_organization_conformance_pack_statuses/3,
         describe_organization_conformance_packs/2,
         describe_organization_conformance_packs/3,
         describe_pending_aggregation_requests/2,
         describe_pending_aggregation_requests/3,
         describe_remediation_configurations/2,
         describe_remediation_configurations/3,
         describe_remediation_exceptions/2,
         describe_remediation_exceptions/3,
         describe_remediation_execution_status/2,
         describe_remediation_execution_status/3,
         describe_retention_configurations/2,
         describe_retention_configurations/3,
         disassociate_resource_types/2,
         disassociate_resource_types/3,
         get_aggregate_compliance_details_by_config_rule/2,
         get_aggregate_compliance_details_by_config_rule/3,
         get_aggregate_config_rule_compliance_summary/2,
         get_aggregate_config_rule_compliance_summary/3,
         get_aggregate_conformance_pack_compliance_summary/2,
         get_aggregate_conformance_pack_compliance_summary/3,
         get_aggregate_discovered_resource_counts/2,
         get_aggregate_discovered_resource_counts/3,
         get_aggregate_resource_config/2,
         get_aggregate_resource_config/3,
         get_compliance_details_by_config_rule/2,
         get_compliance_details_by_config_rule/3,
         get_compliance_details_by_resource/2,
         get_compliance_details_by_resource/3,
         get_compliance_summary_by_config_rule/2,
         get_compliance_summary_by_config_rule/3,
         get_compliance_summary_by_resource_type/2,
         get_compliance_summary_by_resource_type/3,
         get_conformance_pack_compliance_details/2,
         get_conformance_pack_compliance_details/3,
         get_conformance_pack_compliance_summary/2,
         get_conformance_pack_compliance_summary/3,
         get_custom_rule_policy/2,
         get_custom_rule_policy/3,
         get_discovered_resource_counts/2,
         get_discovered_resource_counts/3,
         get_organization_config_rule_detailed_status/2,
         get_organization_config_rule_detailed_status/3,
         get_organization_conformance_pack_detailed_status/2,
         get_organization_conformance_pack_detailed_status/3,
         get_organization_custom_rule_policy/2,
         get_organization_custom_rule_policy/3,
         get_resource_config_history/2,
         get_resource_config_history/3,
         get_resource_evaluation_summary/2,
         get_resource_evaluation_summary/3,
         get_stored_query/2,
         get_stored_query/3,
         list_aggregate_discovered_resources/2,
         list_aggregate_discovered_resources/3,
         list_configuration_recorders/2,
         list_configuration_recorders/3,
         list_conformance_pack_compliance_scores/2,
         list_conformance_pack_compliance_scores/3,
         list_discovered_resources/2,
         list_discovered_resources/3,
         list_resource_evaluations/2,
         list_resource_evaluations/3,
         list_stored_queries/2,
         list_stored_queries/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         put_aggregation_authorization/2,
         put_aggregation_authorization/3,
         put_config_rule/2,
         put_config_rule/3,
         put_configuration_aggregator/2,
         put_configuration_aggregator/3,
         put_configuration_recorder/2,
         put_configuration_recorder/3,
         put_conformance_pack/2,
         put_conformance_pack/3,
         put_delivery_channel/2,
         put_delivery_channel/3,
         put_evaluations/2,
         put_evaluations/3,
         put_external_evaluation/2,
         put_external_evaluation/3,
         put_organization_config_rule/2,
         put_organization_config_rule/3,
         put_organization_conformance_pack/2,
         put_organization_conformance_pack/3,
         put_remediation_configurations/2,
         put_remediation_configurations/3,
         put_remediation_exceptions/2,
         put_remediation_exceptions/3,
         put_resource_config/2,
         put_resource_config/3,
         put_retention_configuration/2,
         put_retention_configuration/3,
         put_service_linked_configuration_recorder/2,
         put_service_linked_configuration_recorder/3,
         put_stored_query/2,
         put_stored_query/3,
         select_aggregate_resource_config/2,
         select_aggregate_resource_config/3,
         select_resource_config/2,
         select_resource_config/3,
         start_config_rules_evaluation/2,
         start_config_rules_evaluation/3,
         start_configuration_recorder/2,
         start_configuration_recorder/3,
         start_remediation_execution/2,
         start_remediation_execution/3,
         start_resource_evaluation/2,
         start_resource_evaluation/3,
         stop_configuration_recorder/2,
         stop_configuration_recorder/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% organization_conformance_pack_template_validation_exception() :: #{
%%   <<"message">> => string()
%% }
-type organization_conformance_pack_template_validation_exception() :: #{binary() => any()}.

%% Example:
%% start_config_rules_evaluation_response() :: #{

%% }
-type start_config_rules_evaluation_response() :: #{binary() => any()}.

%% Example:
%% describe_configuration_recorder_status_response() :: #{
%%   <<"ConfigurationRecordersStatus">> => list(configuration_recorder_status()())
%% }
-type describe_configuration_recorder_status_response() :: #{binary() => any()}.

%% Example:
%% get_organization_config_rule_detailed_status_request() :: #{
%%   <<"Filters">> => status_detail_filters(),
%%   <<"Limit">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"OrganizationConfigRuleName">> := string()
%% }
-type get_organization_config_rule_detailed_status_request() :: #{binary() => any()}.

%% Example:
%% config_snapshot_delivery_properties() :: #{
%%   <<"deliveryFrequency">> => list(any())
%% }
-type config_snapshot_delivery_properties() :: #{binary() => any()}.

%% Example:
%% invalid_recording_group_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_recording_group_exception() :: #{binary() => any()}.

%% Example:
%% delete_configuration_aggregator_request() :: #{
%%   <<"ConfigurationAggregatorName">> := string()
%% }
-type delete_configuration_aggregator_request() :: #{binary() => any()}.

%% Example:
%% organization_all_features_not_enabled_exception() :: #{
%%   <<"message">> => string()
%% }
-type organization_all_features_not_enabled_exception() :: #{binary() => any()}.

%% Example:
%% evaluation_result_identifier() :: #{
%%   <<"EvaluationResultQualifier">> => evaluation_result_qualifier(),
%%   <<"OrderingTimestamp">> => non_neg_integer(),
%%   <<"ResourceEvaluationId">> => string()
%% }
-type evaluation_result_identifier() :: #{binary() => any()}.

%% Example:
%% remediation_configuration() :: #{
%%   <<"Arn">> => string(),
%%   <<"Automatic">> => boolean(),
%%   <<"ConfigRuleName">> => string(),
%%   <<"CreatedByService">> => string(),
%%   <<"ExecutionControls">> => execution_controls(),
%%   <<"MaximumAutomaticAttempts">> => integer(),
%%   <<"Parameters">> => map(),
%%   <<"ResourceType">> => string(),
%%   <<"RetryAttemptSeconds">> => float(),
%%   <<"TargetId">> => string(),
%%   <<"TargetType">> => list(any()),
%%   <<"TargetVersion">> => string()
%% }
-type remediation_configuration() :: #{binary() => any()}.

%% Example:
%% aggregated_source_status() :: #{
%%   <<"AwsRegion">> => string(),
%%   <<"LastErrorCode">> => string(),
%%   <<"LastErrorMessage">> => string(),
%%   <<"LastUpdateStatus">> => list(any()),
%%   <<"LastUpdateTime">> => non_neg_integer(),
%%   <<"SourceId">> => string(),
%%   <<"SourceType">> => list(any())
%% }
-type aggregated_source_status() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"Tags">> := list(tag()())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% get_custom_rule_policy_response() :: #{
%%   <<"PolicyText">> => string()
%% }
-type get_custom_rule_policy_response() :: #{binary() => any()}.

%% Example:
%% no_such_configuration_aggregator_exception() :: #{
%%   <<"message">> => string()
%% }
-type no_such_configuration_aggregator_exception() :: #{binary() => any()}.

%% Example:
%% get_aggregate_conformance_pack_compliance_summary_response() :: #{
%%   <<"AggregateConformancePackComplianceSummaries">> => list(aggregate_conformance_pack_compliance_summary()()),
%%   <<"GroupByKey">> => string(),
%%   <<"NextToken">> => string()
%% }
-type get_aggregate_conformance_pack_compliance_summary_response() :: #{binary() => any()}.

%% Example:
%% get_compliance_details_by_resource_response() :: #{
%%   <<"EvaluationResults">> => list(evaluation_result()()),
%%   <<"NextToken">> => string()
%% }
-type get_compliance_details_by_resource_response() :: #{binary() => any()}.

%% Example:
%% last_delivery_channel_delete_failed_exception() :: #{
%%   <<"message">> => string()
%% }
-type last_delivery_channel_delete_failed_exception() :: #{binary() => any()}.

%% Example:
%% get_stored_query_response() :: #{
%%   <<"StoredQuery">> => stored_query()
%% }
-type get_stored_query_response() :: #{binary() => any()}.

%% Example:
%% get_aggregate_discovered_resource_counts_response() :: #{
%%   <<"GroupByKey">> => string(),
%%   <<"GroupedResourceCounts">> => list(grouped_resource_count()()),
%%   <<"NextToken">> => string(),
%%   <<"TotalDiscoveredResources">> => float()
%% }
-type get_aggregate_discovered_resource_counts_response() :: #{binary() => any()}.

%% Example:
%% delete_evaluation_results_request() :: #{
%%   <<"ConfigRuleName">> := string()
%% }
-type delete_evaluation_results_request() :: #{binary() => any()}.

%% Example:
%% put_service_linked_configuration_recorder_request() :: #{
%%   <<"ServicePrincipal">> := string(),
%%   <<"Tags">> => list(tag()())
%% }
-type put_service_linked_configuration_recorder_request() :: #{binary() => any()}.

%% Example:
%% delete_remediation_configuration_response() :: #{

%% }
-type delete_remediation_configuration_response() :: #{binary() => any()}.

%% Example:
%% insufficient_permissions_exception() :: #{
%%   <<"message">> => string()
%% }
-type insufficient_permissions_exception() :: #{binary() => any()}.

%% Example:
%% describe_config_rule_evaluation_status_request() :: #{
%%   <<"ConfigRuleNames">> => list(string()()),
%%   <<"Limit">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_config_rule_evaluation_status_request() :: #{binary() => any()}.

%% Example:
%% grouped_resource_count() :: #{
%%   <<"GroupName">> => string(),
%%   <<"ResourceCount">> => float()
%% }
-type grouped_resource_count() :: #{binary() => any()}.

%% Example:
%% delete_remediation_configuration_request() :: #{
%%   <<"ConfigRuleName">> := string(),
%%   <<"ResourceType">> => string()
%% }
-type delete_remediation_configuration_request() :: #{binary() => any()}.

%% Example:
%% config_rule_evaluation_status() :: #{
%%   <<"ConfigRuleArn">> => string(),
%%   <<"ConfigRuleId">> => string(),
%%   <<"ConfigRuleName">> => string(),
%%   <<"FirstActivatedTime">> => non_neg_integer(),
%%   <<"FirstEvaluationStarted">> => boolean(),
%%   <<"LastDeactivatedTime">> => non_neg_integer(),
%%   <<"LastDebugLogDeliveryStatus">> => string(),
%%   <<"LastDebugLogDeliveryStatusReason">> => string(),
%%   <<"LastDebugLogDeliveryTime">> => non_neg_integer(),
%%   <<"LastErrorCode">> => string(),
%%   <<"LastErrorMessage">> => string(),
%%   <<"LastFailedEvaluationTime">> => non_neg_integer(),
%%   <<"LastFailedInvocationTime">> => non_neg_integer(),
%%   <<"LastSuccessfulEvaluationTime">> => non_neg_integer(),
%%   <<"LastSuccessfulInvocationTime">> => non_neg_integer()
%% }
-type config_rule_evaluation_status() :: #{binary() => any()}.

%% Example:
%% config_rule() :: #{
%%   <<"ConfigRuleArn">> => string(),
%%   <<"ConfigRuleId">> => string(),
%%   <<"ConfigRuleName">> => string(),
%%   <<"ConfigRuleState">> => list(any()),
%%   <<"CreatedBy">> => string(),
%%   <<"Description">> => string(),
%%   <<"EvaluationModes">> => list(evaluation_mode_configuration()()),
%%   <<"InputParameters">> => string(),
%%   <<"MaximumExecutionFrequency">> => list(any()),
%%   <<"Scope">> => scope(),
%%   <<"Source">> => source()
%% }
-type config_rule() :: #{binary() => any()}.

%% Example:
%% max_number_of_delivery_channels_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type max_number_of_delivery_channels_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% put_config_rule_request() :: #{
%%   <<"ConfigRule">> := config_rule(),
%%   <<"Tags">> => list(tag()())
%% }
-type put_config_rule_request() :: #{binary() => any()}.

%% Example:
%% associate_resource_types_response() :: #{
%%   <<"ConfigurationRecorder">> => configuration_recorder()
%% }
-type associate_resource_types_response() :: #{binary() => any()}.

%% Example:
%% insufficient_delivery_policy_exception() :: #{
%%   <<"message">> => string()
%% }
-type insufficient_delivery_policy_exception() :: #{binary() => any()}.

%% Example:
%% describe_retention_configurations_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"RetentionConfigurations">> => list(retention_configuration()())
%% }
-type describe_retention_configurations_response() :: #{binary() => any()}.

%% Example:
%% configuration_aggregator() :: #{
%%   <<"AccountAggregationSources">> => list(account_aggregation_source()()),
%%   <<"AggregatorFilters">> => aggregator_filters(),
%%   <<"ConfigurationAggregatorArn">> => string(),
%%   <<"ConfigurationAggregatorName">> => string(),
%%   <<"CreatedBy">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"OrganizationAggregationSource">> => organization_aggregation_source()
%% }
-type configuration_aggregator() :: #{binary() => any()}.

%% Example:
%% compliance() :: #{
%%   <<"ComplianceContributorCount">> => compliance_contributor_count(),
%%   <<"ComplianceType">> => list(any())
%% }
-type compliance() :: #{binary() => any()}.

%% Example:
%% remediation_exception() :: #{
%%   <<"ConfigRuleName">> => string(),
%%   <<"ExpirationTime">> => non_neg_integer(),
%%   <<"Message">> => string(),
%%   <<"ResourceId">> => string(),
%%   <<"ResourceType">> => string()
%% }
-type remediation_exception() :: #{binary() => any()}.

%% Example:
%% describe_compliance_by_resource_request() :: #{
%%   <<"ComplianceTypes">> => list(list(any())()),
%%   <<"Limit">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ResourceId">> => string(),
%%   <<"ResourceType">> => string()
%% }
-type describe_compliance_by_resource_request() :: #{binary() => any()}.

%% Example:
%% resource_in_use_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_in_use_exception() :: #{binary() => any()}.

%% Example:
%% configuration_recorder() :: #{
%%   <<"arn">> => string(),
%%   <<"name">> => string(),
%%   <<"recordingGroup">> => recording_group(),
%%   <<"recordingMode">> => recording_mode(),
%%   <<"recordingScope">> => list(any()),
%%   <<"roleARN">> => string(),
%%   <<"servicePrincipal">> => string()
%% }
-type configuration_recorder() :: #{binary() => any()}.

%% Example:
%% resource_evaluation_filters() :: #{
%%   <<"EvaluationContextIdentifier">> => string(),
%%   <<"EvaluationMode">> => list(any()),
%%   <<"TimeWindow">> => time_window()
%% }
-type resource_evaluation_filters() :: #{binary() => any()}.

%% Example:
%% custom_policy_details() :: #{
%%   <<"EnableDebugLogDelivery">> => boolean(),
%%   <<"PolicyRuntime">> => string(),
%%   <<"PolicyText">> => string()
%% }
-type custom_policy_details() :: #{binary() => any()}.

%% Example:
%% get_conformance_pack_compliance_summary_response() :: #{
%%   <<"ConformancePackComplianceSummaryList">> => list(conformance_pack_compliance_summary()()),
%%   <<"NextToken">> => string()
%% }
-type get_conformance_pack_compliance_summary_response() :: #{binary() => any()}.

%% Example:
%% oversized_configuration_item_exception() :: #{
%%   <<"message">> => string()
%% }
-type oversized_configuration_item_exception() :: #{binary() => any()}.

%% Example:
%% relationship() :: #{
%%   <<"relationshipName">> => string(),
%%   <<"resourceId">> => string(),
%%   <<"resourceName">> => string(),
%%   <<"resourceType">> => list(any())
%% }
-type relationship() :: #{binary() => any()}.

%% Example:
%% delete_remediation_exceptions_response() :: #{
%%   <<"FailedBatches">> => list(failed_delete_remediation_exceptions_batch()())
%% }
-type delete_remediation_exceptions_response() :: #{binary() => any()}.

%% Example:
%% max_number_of_organization_conformance_packs_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type max_number_of_organization_conformance_packs_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% describe_compliance_by_config_rule_request() :: #{
%%   <<"ComplianceTypes">> => list(list(any())()),
%%   <<"ConfigRuleNames">> => list(string()()),
%%   <<"NextToken">> => string()
%% }
-type describe_compliance_by_config_rule_request() :: #{binary() => any()}.

%% Example:
%% describe_organization_config_rules_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"OrganizationConfigRules">> => list(organization_config_rule()())
%% }
-type describe_organization_config_rules_response() :: #{binary() => any()}.

%% Example:
%% delete_remediation_exceptions_request() :: #{
%%   <<"ConfigRuleName">> := string(),
%%   <<"ResourceKeys">> := list(remediation_exception_resource_key()())
%% }
-type delete_remediation_exceptions_request() :: #{binary() => any()}.

%% Example:
%% put_remediation_configurations_request() :: #{
%%   <<"RemediationConfigurations">> := list(remediation_configuration()())
%% }
-type put_remediation_configurations_request() :: #{binary() => any()}.

%% Example:
%% describe_remediation_configurations_request() :: #{
%%   <<"ConfigRuleNames">> := list(string()())
%% }
-type describe_remediation_configurations_request() :: #{binary() => any()}.

%% Example:
%% get_custom_rule_policy_request() :: #{
%%   <<"ConfigRuleName">> => string()
%% }
-type get_custom_rule_policy_request() :: #{binary() => any()}.

%% Example:
%% get_aggregate_compliance_details_by_config_rule_response() :: #{
%%   <<"AggregateEvaluationResults">> => list(aggregate_evaluation_result()()),
%%   <<"NextToken">> => string()
%% }
-type get_aggregate_compliance_details_by_config_rule_response() :: #{binary() => any()}.

%% Example:
%% delete_config_rule_request() :: #{
%%   <<"ConfigRuleName">> := string()
%% }
-type delete_config_rule_request() :: #{binary() => any()}.

%% Example:
%% aggregate_evaluation_result() :: #{
%%   <<"AccountId">> => string(),
%%   <<"Annotation">> => string(),
%%   <<"AwsRegion">> => string(),
%%   <<"ComplianceType">> => list(any()),
%%   <<"ConfigRuleInvokedTime">> => non_neg_integer(),
%%   <<"EvaluationResultIdentifier">> => evaluation_result_identifier(),
%%   <<"ResultRecordedTime">> => non_neg_integer()
%% }
-type aggregate_evaluation_result() :: #{binary() => any()}.

%% Example:
%% organization_conformance_pack_detailed_status() :: #{
%%   <<"AccountId">> => string(),
%%   <<"ConformancePackName">> => string(),
%%   <<"ErrorCode">> => string(),
%%   <<"ErrorMessage">> => string(),
%%   <<"LastUpdateTime">> => non_neg_integer(),
%%   <<"Status">> => list(any())
%% }
-type organization_conformance_pack_detailed_status() :: #{binary() => any()}.

%% Example:
%% describe_delivery_channels_request() :: #{
%%   <<"DeliveryChannelNames">> => list(string()())
%% }
-type describe_delivery_channels_request() :: #{binary() => any()}.

%% Example:
%% remediation_parameter_value() :: #{
%%   <<"ResourceValue">> => resource_value(),
%%   <<"StaticValue">> => static_value()
%% }
-type remediation_parameter_value() :: #{binary() => any()}.

%% Example:
%% describe_aggregate_compliance_by_config_rules_request() :: #{
%%   <<"ConfigurationAggregatorName">> := string(),
%%   <<"Filters">> => config_rule_compliance_filters(),
%%   <<"Limit">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_aggregate_compliance_by_config_rules_request() :: #{binary() => any()}.

%% Example:
%% invalid_limit_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_limit_exception() :: #{binary() => any()}.

%% Example:
%% get_aggregate_config_rule_compliance_summary_request() :: #{
%%   <<"ConfigurationAggregatorName">> := string(),
%%   <<"Filters">> => config_rule_compliance_summary_filters(),
%%   <<"GroupByKey">> => list(any()),
%%   <<"Limit">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type get_aggregate_config_rule_compliance_summary_request() :: #{binary() => any()}.

%% Example:
%% list_configuration_recorders_response() :: #{
%%   <<"ConfigurationRecorderSummaries">> => list(configuration_recorder_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_configuration_recorders_response() :: #{binary() => any()}.

%% Example:
%% compliance_contributor_count() :: #{
%%   <<"CapExceeded">> => boolean(),
%%   <<"CappedCount">> => integer()
%% }
-type compliance_contributor_count() :: #{binary() => any()}.

%% Example:
%% describe_remediation_configurations_response() :: #{
%%   <<"RemediationConfigurations">> => list(remediation_configuration()())
%% }
-type describe_remediation_configurations_response() :: #{binary() => any()}.

%% Example:
%% recording_mode() :: #{
%%   <<"recordingFrequency">> => list(any()),
%%   <<"recordingModeOverrides">> => list(recording_mode_override()())
%% }
-type recording_mode() :: #{binary() => any()}.

%% Example:
%% invalid_result_token_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_result_token_exception() :: #{binary() => any()}.

%% Example:
%% list_resource_evaluations_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ResourceEvaluations">> => list(resource_evaluation()())
%% }
-type list_resource_evaluations_response() :: #{binary() => any()}.

%% Example:
%% failed_remediation_exception_batch() :: #{
%%   <<"FailedItems">> => list(remediation_exception()()),
%%   <<"FailureMessage">> => string()
%% }
-type failed_remediation_exception_batch() :: #{binary() => any()}.

%% Example:
%% remediation_in_progress_exception() :: #{
%%   <<"message">> => string()
%% }
-type remediation_in_progress_exception() :: #{binary() => any()}.

%% Example:
%% get_compliance_details_by_config_rule_response() :: #{
%%   <<"EvaluationResults">> => list(evaluation_result()()),
%%   <<"NextToken">> => string()
%% }
-type get_compliance_details_by_config_rule_response() :: #{binary() => any()}.

%% Example:
%% max_number_of_organization_config_rules_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type max_number_of_organization_config_rules_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% unmodifiable_entity_exception() :: #{
%%   <<"message">> => string()
%% }
-type unmodifiable_entity_exception() :: #{binary() => any()}.

%% Example:
%% aggregation_authorization() :: #{
%%   <<"AggregationAuthorizationArn">> => string(),
%%   <<"AuthorizedAccountId">> => string(),
%%   <<"AuthorizedAwsRegion">> => string(),
%%   <<"CreationTime">> => non_neg_integer()
%% }
-type aggregation_authorization() :: #{binary() => any()}.

%% Example:
%% describe_organization_conformance_packs_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"OrganizationConformancePacks">> => list(organization_conformance_pack()())
%% }
-type describe_organization_conformance_packs_response() :: #{binary() => any()}.

%% Example:
%% configuration_recorder_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"name">> => string(),
%%   <<"recordingScope">> => list(any()),
%%   <<"servicePrincipal">> => string()
%% }
-type configuration_recorder_summary() :: #{binary() => any()}.

%% Example:
%% max_number_of_config_rules_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type max_number_of_config_rules_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% describe_compliance_by_config_rule_response() :: #{
%%   <<"ComplianceByConfigRules">> => list(compliance_by_config_rule()()),
%%   <<"NextToken">> => string()
%% }
-type describe_compliance_by_config_rule_response() :: #{binary() => any()}.

%% Example:
%% put_evaluations_request() :: #{
%%   <<"Evaluations">> => list(evaluation()()),
%%   <<"ResultToken">> := string(),
%%   <<"TestMode">> => boolean()
%% }
-type put_evaluations_request() :: #{binary() => any()}.

%% Example:
%% delete_evaluation_results_response() :: #{

%% }
-type delete_evaluation_results_response() :: #{binary() => any()}.

%% Example:
%% describe_config_rules_response() :: #{
%%   <<"ConfigRules">> => list(config_rule()()),
%%   <<"NextToken">> => string()
%% }
-type describe_config_rules_response() :: #{binary() => any()}.

%% Example:
%% get_stored_query_request() :: #{
%%   <<"QueryName">> := string()
%% }
-type get_stored_query_request() :: #{binary() => any()}.

%% Example:
%% describe_config_rules_filters() :: #{
%%   <<"EvaluationMode">> => list(any())
%% }
-type describe_config_rules_filters() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"TagKeys">> := list(string()())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% get_conformance_pack_compliance_summary_request() :: #{
%%   <<"ConformancePackNames">> := list(string()()),
%%   <<"Limit">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type get_conformance_pack_compliance_summary_request() :: #{binary() => any()}.

%% Example:
%% organization_config_rule_status() :: #{
%%   <<"ErrorCode">> => string(),
%%   <<"ErrorMessage">> => string(),
%%   <<"LastUpdateTime">> => non_neg_integer(),
%%   <<"OrganizationConfigRuleName">> => string(),
%%   <<"OrganizationRuleStatus">> => list(any())
%% }
-type organization_config_rule_status() :: #{binary() => any()}.

%% Example:
%% get_organization_custom_rule_policy_response() :: #{
%%   <<"PolicyText">> => string()
%% }
-type get_organization_custom_rule_policy_response() :: #{binary() => any()}.

%% Example:
%% deliver_config_snapshot_request() :: #{
%%   <<"deliveryChannelName">> := string()
%% }
-type deliver_config_snapshot_request() :: #{binary() => any()}.

%% Example:
%% get_aggregate_config_rule_compliance_summary_response() :: #{
%%   <<"AggregateComplianceCounts">> => list(aggregate_compliance_count()()),
%%   <<"GroupByKey">> => string(),
%%   <<"NextToken">> => string()
%% }
-type get_aggregate_config_rule_compliance_summary_response() :: #{binary() => any()}.

%% Example:
%% resource_count() :: #{
%%   <<"count">> => float(),
%%   <<"resourceType">> => list(any())
%% }
-type resource_count() :: #{binary() => any()}.

%% Example:
%% get_compliance_summary_by_resource_type_response() :: #{
%%   <<"ComplianceSummariesByResourceType">> => list(compliance_summary_by_resource_type()())
%% }
-type get_compliance_summary_by_resource_type_response() :: #{binary() => any()}.

%% Example:
%% aggregate_resource_identifier() :: #{
%%   <<"ResourceId">> => string(),
%%   <<"ResourceName">> => string(),
%%   <<"ResourceType">> => list(any()),
%%   <<"SourceAccountId">> => string(),
%%   <<"SourceRegion">> => string()
%% }
-type aggregate_resource_identifier() :: #{binary() => any()}.

%% Example:
%% batch_get_aggregate_resource_config_response() :: #{
%%   <<"BaseConfigurationItems">> => list(base_configuration_item()()),
%%   <<"UnprocessedResourceIdentifiers">> => list(aggregate_resource_identifier()())
%% }
-type batch_get_aggregate_resource_config_response() :: #{binary() => any()}.

%% Example:
%% describe_conformance_pack_status_response() :: #{
%%   <<"ConformancePackStatusDetails">> => list(conformance_pack_status_detail()()),
%%   <<"NextToken">> => string()
%% }
-type describe_conformance_pack_status_response() :: #{binary() => any()}.

%% Example:
%% stop_configuration_recorder_request() :: #{
%%   <<"ConfigurationRecorderName">> := string()
%% }
-type stop_configuration_recorder_request() :: #{binary() => any()}.

%% Example:
%% select_resource_config_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"QueryInfo">> => query_info(),
%%   <<"Results">> => list(string()())
%% }
-type select_resource_config_response() :: #{binary() => any()}.

%% Example:
%% get_resource_config_history_response() :: #{
%%   <<"configurationItems">> => list(configuration_item()()),
%%   <<"nextToken">> => string()
%% }
-type get_resource_config_history_response() :: #{binary() => any()}.

%% Example:
%% resource_filters() :: #{
%%   <<"AccountId">> => string(),
%%   <<"Region">> => string(),
%%   <<"ResourceId">> => string(),
%%   <<"ResourceName">> => string()
%% }
-type resource_filters() :: #{binary() => any()}.

%% Example:
%% no_such_config_rule_in_conformance_pack_exception() :: #{
%%   <<"message">> => string()
%% }
-type no_such_config_rule_in_conformance_pack_exception() :: #{binary() => any()}.

%% Example:
%% ssm_controls() :: #{
%%   <<"ConcurrentExecutionRatePercentage">> => integer(),
%%   <<"ErrorPercentage">> => integer()
%% }
-type ssm_controls() :: #{binary() => any()}.

%% Example:
%% no_such_remediation_exception_exception() :: #{
%%   <<"message">> => string()
%% }
-type no_such_remediation_exception_exception() :: #{binary() => any()}.

%% Example:
%% remediation_execution_status() :: #{
%%   <<"InvocationTime">> => non_neg_integer(),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"ResourceKey">> => resource_key(),
%%   <<"State">> => list(any()),
%%   <<"StepDetails">> => list(remediation_execution_step()())
%% }
-type remediation_execution_status() :: #{binary() => any()}.

%% Example:
%% describe_delivery_channels_response() :: #{
%%   <<"DeliveryChannels">> => list(delivery_channel()())
%% }
-type describe_delivery_channels_response() :: #{binary() => any()}.

%% Example:
%% put_conformance_pack_response() :: #{
%%   <<"ConformancePackArn">> => string()
%% }
-type put_conformance_pack_response() :: #{binary() => any()}.

%% Example:
%% invalid_s_n_s_topic_arn_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_s_n_s_topic_arn_exception() :: #{binary() => any()}.

%% Example:
%% organization_aggregation_source() :: #{
%%   <<"AllAwsRegions">> => boolean(),
%%   <<"AwsRegions">> => list(string()()),
%%   <<"RoleArn">> => string()
%% }
-type organization_aggregation_source() :: #{binary() => any()}.

%% Example:
%% organization_managed_rule_metadata() :: #{
%%   <<"Description">> => string(),
%%   <<"InputParameters">> => string(),
%%   <<"MaximumExecutionFrequency">> => list(any()),
%%   <<"ResourceIdScope">> => string(),
%%   <<"ResourceTypesScope">> => list(string()()),
%%   <<"RuleIdentifier">> => string(),
%%   <<"TagKeyScope">> => string(),
%%   <<"TagValueScope">> => string()
%% }
-type organization_managed_rule_metadata() :: #{binary() => any()}.

%% Example:
%% aggregate_conformance_pack_compliance() :: #{
%%   <<"ComplianceType">> => list(any()),
%%   <<"CompliantRuleCount">> => integer(),
%%   <<"NonCompliantRuleCount">> => integer(),
%%   <<"TotalRuleCount">> => integer()
%% }
-type aggregate_conformance_pack_compliance() :: #{binary() => any()}.

%% Example:
%% list_discovered_resources_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"resourceIdentifiers">> => list(resource_identifier()())
%% }
-type list_discovered_resources_response() :: #{binary() => any()}.

%% Example:
%% idempotent_parameter_mismatch() :: #{
%%   <<"message">> => string()
%% }
-type idempotent_parameter_mismatch() :: #{binary() => any()}.

%% Example:
%% describe_delivery_channel_status_request() :: #{
%%   <<"DeliveryChannelNames">> => list(string()())
%% }
-type describe_delivery_channel_status_request() :: #{binary() => any()}.

%% Example:
%% describe_organization_config_rules_request() :: #{
%%   <<"Limit">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"OrganizationConfigRuleNames">> => list(string()())
%% }
-type describe_organization_config_rules_request() :: #{binary() => any()}.

%% Example:
%% get_organization_config_rule_detailed_status_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"OrganizationConfigRuleDetailedStatus">> => list(member_account_status()())
%% }
-type get_organization_config_rule_detailed_status_response() :: #{binary() => any()}.

%% Example:
%% describe_compliance_by_resource_response() :: #{
%%   <<"ComplianceByResources">> => list(compliance_by_resource()()),
%%   <<"NextToken">> => string()
%% }
-type describe_compliance_by_resource_response() :: #{binary() => any()}.

%% Example:
%% put_remediation_configurations_response() :: #{
%%   <<"FailedBatches">> => list(failed_remediation_batch()())
%% }
-type put_remediation_configurations_response() :: #{binary() => any()}.

%% Example:
%% member_account_status() :: #{
%%   <<"AccountId">> => string(),
%%   <<"ConfigRuleName">> => string(),
%%   <<"ErrorCode">> => string(),
%%   <<"ErrorMessage">> => string(),
%%   <<"LastUpdateTime">> => non_neg_integer(),
%%   <<"MemberAccountRuleStatus">> => list(any())
%% }
-type member_account_status() :: #{binary() => any()}.

%% Example:
%% external_evaluation() :: #{
%%   <<"Annotation">> => string(),
%%   <<"ComplianceResourceId">> => string(),
%%   <<"ComplianceResourceType">> => string(),
%%   <<"ComplianceType">> => list(any()),
%%   <<"OrderingTimestamp">> => non_neg_integer()
%% }
-type external_evaluation() :: #{binary() => any()}.

%% Example:
%% get_resource_evaluation_summary_request() :: #{
%%   <<"ResourceEvaluationId">> := string()
%% }
-type get_resource_evaluation_summary_request() :: #{binary() => any()}.

%% Example:
%% config_rule_compliance_summary_filters() :: #{
%%   <<"AccountId">> => string(),
%%   <<"AwsRegion">> => string()
%% }
-type config_rule_compliance_summary_filters() :: #{binary() => any()}.

%% Example:
%% compliance_by_config_rule() :: #{
%%   <<"Compliance">> => compliance(),
%%   <<"ConfigRuleName">> => string()
%% }
-type compliance_by_config_rule() :: #{binary() => any()}.

%% Example:
%% stored_query_metadata() :: #{
%%   <<"Description">> => string(),
%%   <<"QueryArn">> => string(),
%%   <<"QueryId">> => string(),
%%   <<"QueryName">> => string()
%% }
-type stored_query_metadata() :: #{binary() => any()}.

%% Example:
%% configuration_recorder_status() :: #{
%%   <<"arn">> => string(),
%%   <<"lastErrorCode">> => string(),
%%   <<"lastErrorMessage">> => string(),
%%   <<"lastStartTime">> => non_neg_integer(),
%%   <<"lastStatus">> => list(any()),
%%   <<"lastStatusChangeTime">> => non_neg_integer(),
%%   <<"lastStopTime">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"recording">> => boolean(),
%%   <<"servicePrincipal">> => string()
%% }
-type configuration_recorder_status() :: #{binary() => any()}.

%% Example:
%% delete_retention_configuration_request() :: #{
%%   <<"RetentionConfigurationName">> := string()
%% }
-type delete_retention_configuration_request() :: #{binary() => any()}.

%% Example:
%% describe_organization_config_rule_statuses_request() :: #{
%%   <<"Limit">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"OrganizationConfigRuleNames">> => list(string()())
%% }
-type describe_organization_config_rule_statuses_request() :: #{binary() => any()}.

%% Example:
%% describe_remediation_execution_status_request() :: #{
%%   <<"ConfigRuleName">> := string(),
%%   <<"Limit">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ResourceKeys">> => list(resource_key()())
%% }
-type describe_remediation_execution_status_request() :: #{binary() => any()}.

%% Example:
%% aggregator_filter_resource_type() :: #{
%%   <<"Type">> => list(any()),
%%   <<"Value">> => list(string()())
%% }
-type aggregator_filter_resource_type() :: #{binary() => any()}.

%% Example:
%% conformance_pack_detail() :: #{
%%   <<"ConformancePackArn">> => string(),
%%   <<"ConformancePackId">> => string(),
%%   <<"ConformancePackInputParameters">> => list(conformance_pack_input_parameter()()),
%%   <<"ConformancePackName">> => string(),
%%   <<"CreatedBy">> => string(),
%%   <<"DeliveryS3Bucket">> => string(),
%%   <<"DeliveryS3KeyPrefix">> => string(),
%%   <<"LastUpdateRequestedTime">> => non_neg_integer(),
%%   <<"TemplateSSMDocumentDetails">> => template_s_s_m_document_details()
%% }
-type conformance_pack_detail() :: #{binary() => any()}.

%% Example:
%% put_conformance_pack_request() :: #{
%%   <<"ConformancePackInputParameters">> => list(conformance_pack_input_parameter()()),
%%   <<"ConformancePackName">> := string(),
%%   <<"DeliveryS3Bucket">> => string(),
%%   <<"DeliveryS3KeyPrefix">> => string(),
%%   <<"TemplateBody">> => string(),
%%   <<"TemplateS3Uri">> => string(),
%%   <<"TemplateSSMDocumentDetails">> => template_s_s_m_document_details()
%% }
-type put_conformance_pack_request() :: #{binary() => any()}.

%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% retention_configuration() :: #{
%%   <<"Name">> => string(),
%%   <<"RetentionPeriodInDays">> => integer()
%% }
-type retention_configuration() :: #{binary() => any()}.

%% Example:
%% start_resource_evaluation_response() :: #{
%%   <<"ResourceEvaluationId">> => string()
%% }
-type start_resource_evaluation_response() :: #{binary() => any()}.

%% Example:
%% describe_configuration_recorder_status_request() :: #{
%%   <<"Arn">> => string(),
%%   <<"ConfigurationRecorderNames">> => list(string()()),
%%   <<"ServicePrincipal">> => string()
%% }
-type describe_configuration_recorder_status_request() :: #{binary() => any()}.

%% Example:
%% time_window() :: #{
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"StartTime">> => non_neg_integer()
%% }
-type time_window() :: #{binary() => any()}.

%% Example:
%% aggregate_conformance_pack_compliance_summary() :: #{
%%   <<"ComplianceSummary">> => aggregate_conformance_pack_compliance_count(),
%%   <<"GroupName">> => string()
%% }
-type aggregate_conformance_pack_compliance_summary() :: #{binary() => any()}.

%% Example:
%% invalid_time_range_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_time_range_exception() :: #{binary() => any()}.

%% Example:
%% put_external_evaluation_request() :: #{
%%   <<"ConfigRuleName">> := string(),
%%   <<"ExternalEvaluation">> := external_evaluation()
%% }
-type put_external_evaluation_request() :: #{binary() => any()}.

%% Example:
%% pending_aggregation_request() :: #{
%%   <<"RequesterAccountId">> => string(),
%%   <<"RequesterAwsRegion">> => string()
%% }
-type pending_aggregation_request() :: #{binary() => any()}.

%% Example:
%% resource_identifier() :: #{
%%   <<"resourceDeletionTime">> => non_neg_integer(),
%%   <<"resourceId">> => string(),
%%   <<"resourceName">> => string(),
%%   <<"resourceType">> => list(any())
%% }
-type resource_identifier() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% account_aggregation_source() :: #{
%%   <<"AccountIds">> => list(string()()),
%%   <<"AllAwsRegions">> => boolean(),
%%   <<"AwsRegions">> => list(string()())
%% }
-type account_aggregation_source() :: #{binary() => any()}.

%% Example:
%% batch_get_resource_config_response() :: #{
%%   <<"baseConfigurationItems">> => list(base_configuration_item()()),
%%   <<"unprocessedResourceKeys">> => list(resource_key()())
%% }
-type batch_get_resource_config_response() :: #{binary() => any()}.

%% Example:
%% source_detail() :: #{
%%   <<"EventSource">> => list(any()),
%%   <<"MaximumExecutionFrequency">> => list(any()),
%%   <<"MessageType">> => list(any())
%% }
-type source_detail() :: #{binary() => any()}.

%% Example:
%% describe_configuration_aggregators_request() :: #{
%%   <<"ConfigurationAggregatorNames">> => list(string()()),
%%   <<"Limit">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_configuration_aggregators_request() :: #{binary() => any()}.

%% Example:
%% list_conformance_pack_compliance_scores_request() :: #{
%%   <<"Filters">> => conformance_pack_compliance_scores_filters(),
%%   <<"Limit">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any())
%% }
-type list_conformance_pack_compliance_scores_request() :: #{binary() => any()}.

%% Example:
%% conformance_pack_evaluation_filters() :: #{
%%   <<"ComplianceType">> => list(any()),
%%   <<"ConfigRuleNames">> => list(string()()),
%%   <<"ResourceIds">> => list(string()()),
%%   <<"ResourceType">> => string()
%% }
-type conformance_pack_evaluation_filters() :: #{binary() => any()}.

%% Example:
%% describe_pending_aggregation_requests_request() :: #{
%%   <<"Limit">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_pending_aggregation_requests_request() :: #{binary() => any()}.

%% Example:
%% start_remediation_execution_response() :: #{
%%   <<"FailedItems">> => list(resource_key()()),
%%   <<"FailureMessage">> => string()
%% }
-type start_remediation_execution_response() :: #{binary() => any()}.

%% Example:
%% describe_aggregate_compliance_by_config_rules_response() :: #{
%%   <<"AggregateComplianceByConfigRules">> => list(aggregate_compliance_by_config_rule()()),
%%   <<"NextToken">> => string()
%% }
-type describe_aggregate_compliance_by_config_rules_response() :: #{binary() => any()}.

%% Example:
%% max_number_of_configuration_recorders_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type max_number_of_configuration_recorders_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% resource_value() :: #{
%%   <<"Value">> => list(any())
%% }
-type resource_value() :: #{binary() => any()}.

%% Example:
%% invalid_next_token_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_next_token_exception() :: #{binary() => any()}.

%% Example:
%% invalid_parameter_value_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_parameter_value_exception() :: #{binary() => any()}.

%% Example:
%% invalid_delivery_channel_name_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_delivery_channel_name_exception() :: #{binary() => any()}.

%% Example:
%% aggregator_filters() :: #{
%%   <<"ResourceType">> => aggregator_filter_resource_type(),
%%   <<"ServicePrincipal">> => aggregator_filter_service_principal()
%% }
-type aggregator_filters() :: #{binary() => any()}.

%% Example:
%% get_aggregate_resource_config_request() :: #{
%%   <<"ConfigurationAggregatorName">> := string(),
%%   <<"ResourceIdentifier">> := aggregate_resource_identifier()
%% }
-type get_aggregate_resource_config_request() :: #{binary() => any()}.

%% Example:
%% recording_strategy() :: #{
%%   <<"useOnly">> => list(any())
%% }
-type recording_strategy() :: #{binary() => any()}.

%% Example:
%% deliver_config_snapshot_response() :: #{
%%   <<"configSnapshotId">> => string()
%% }
-type deliver_config_snapshot_response() :: #{binary() => any()}.

%% Example:
%% describe_organization_conformance_pack_statuses_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"OrganizationConformancePackStatuses">> => list(organization_conformance_pack_status()())
%% }
-type describe_organization_conformance_pack_statuses_response() :: #{binary() => any()}.

%% Example:
%% put_retention_configuration_request() :: #{
%%   <<"RetentionPeriodInDays">> := integer()
%% }
-type put_retention_configuration_request() :: #{binary() => any()}.

%% Example:
%% disassociate_resource_types_request() :: #{
%%   <<"ConfigurationRecorderArn">> := string(),
%%   <<"ResourceTypes">> := list(list(any())())
%% }
-type disassociate_resource_types_request() :: #{binary() => any()}.

%% Example:
%% no_such_delivery_channel_exception() :: #{
%%   <<"message">> => string()
%% }
-type no_such_delivery_channel_exception() :: #{binary() => any()}.

%% Example:
%% put_organization_conformance_pack_response() :: #{
%%   <<"OrganizationConformancePackArn">> => string()
%% }
-type put_organization_conformance_pack_response() :: #{binary() => any()}.

%% Example:
%% invalid_s3_kms_key_arn_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_s3_kms_key_arn_exception() :: #{binary() => any()}.

%% Example:
%% describe_configuration_aggregators_response() :: #{
%%   <<"ConfigurationAggregators">> => list(configuration_aggregator()()),
%%   <<"NextToken">> => string()
%% }
-type describe_configuration_aggregators_response() :: #{binary() => any()}.

%% Example:
%% select_aggregate_resource_config_request() :: #{
%%   <<"ConfigurationAggregatorName">> := string(),
%%   <<"Expression">> := string(),
%%   <<"Limit">> => integer(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type select_aggregate_resource_config_request() :: #{binary() => any()}.

%% Example:
%% conformance_pack_compliance_filters() :: #{
%%   <<"ComplianceType">> => list(any()),
%%   <<"ConfigRuleNames">> => list(string()())
%% }
-type conformance_pack_compliance_filters() :: #{binary() => any()}.

%% Example:
%% start_remediation_execution_request() :: #{
%%   <<"ConfigRuleName">> := string(),
%%   <<"ResourceKeys">> := list(resource_key()())
%% }
-type start_remediation_execution_request() :: #{binary() => any()}.

%% Example:
%% list_discovered_resources_request() :: #{
%%   <<"includeDeletedResources">> => boolean(),
%%   <<"limit">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"resourceIds">> => list(string()()),
%%   <<"resourceName">> => string(),
%%   <<"resourceType">> := list(any())
%% }
-type list_discovered_resources_request() :: #{binary() => any()}.

%% Example:
%% list_aggregate_discovered_resources_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ResourceIdentifiers">> => list(aggregate_resource_identifier()())
%% }
-type list_aggregate_discovered_resources_response() :: #{binary() => any()}.

%% Example:
%% put_delivery_channel_request() :: #{
%%   <<"DeliveryChannel">> := delivery_channel()
%% }
-type put_delivery_channel_request() :: #{binary() => any()}.

%% Example:
%% conformance_pack_rule_compliance() :: #{
%%   <<"ComplianceType">> => list(any()),
%%   <<"ConfigRuleName">> => string(),
%%   <<"Controls">> => list(string()())
%% }
-type conformance_pack_rule_compliance() :: #{binary() => any()}.

%% Example:
%% put_aggregation_authorization_response() :: #{
%%   <<"AggregationAuthorization">> => aggregation_authorization()
%% }
-type put_aggregation_authorization_response() :: #{binary() => any()}.

%% Example:
%% stored_query() :: #{
%%   <<"Description">> => string(),
%%   <<"Expression">> => string(),
%%   <<"QueryArn">> => string(),
%%   <<"QueryId">> => string(),
%%   <<"QueryName">> => string()
%% }
-type stored_query() :: #{binary() => any()}.

%% Example:
%% delete_stored_query_request() :: #{
%%   <<"QueryName">> := string()
%% }
-type delete_stored_query_request() :: #{binary() => any()}.

%% Example:
%% put_external_evaluation_response() :: #{

%% }
-type put_external_evaluation_response() :: #{binary() => any()}.

%% Example:
%% get_resource_config_history_request() :: #{
%%   <<"chronologicalOrder">> => list(any()),
%%   <<"earlierTime">> => non_neg_integer(),
%%   <<"laterTime">> => non_neg_integer(),
%%   <<"limit">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"resourceId">> := string(),
%%   <<"resourceType">> := list(any())
%% }
-type get_resource_config_history_request() :: #{binary() => any()}.

%% Example:
%% describe_aggregate_compliance_by_conformance_packs_response() :: #{
%%   <<"AggregateComplianceByConformancePacks">> => list(aggregate_compliance_by_conformance_pack()()),
%%   <<"NextToken">> => string()
%% }
-type describe_aggregate_compliance_by_conformance_packs_response() :: #{binary() => any()}.

%% Example:
%% list_stored_queries_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_stored_queries_request() :: #{binary() => any()}.

%% Example:
%% put_remediation_exceptions_response() :: #{
%%   <<"FailedBatches">> => list(failed_remediation_exception_batch()())
%% }
-type put_remediation_exceptions_response() :: #{binary() => any()}.

%% Example:
%% start_config_rules_evaluation_request() :: #{
%%   <<"ConfigRuleNames">> => list(string()())
%% }
-type start_config_rules_evaluation_request() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Tags">> => list(tag()())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% delete_aggregation_authorization_request() :: #{
%%   <<"AuthorizedAccountId">> := string(),
%%   <<"AuthorizedAwsRegion">> := string()
%% }
-type delete_aggregation_authorization_request() :: #{binary() => any()}.

%% Example:
%% recording_mode_override() :: #{
%%   <<"description">> => string(),
%%   <<"recordingFrequency">> => list(any()),
%%   <<"resourceTypes">> => list(list(any())())
%% }
-type recording_mode_override() :: #{binary() => any()}.

%% Example:
%% start_configuration_recorder_request() :: #{
%%   <<"ConfigurationRecorderName">> := string()
%% }
-type start_configuration_recorder_request() :: #{binary() => any()}.

%% Example:
%% describe_configuration_recorders_request() :: #{
%%   <<"Arn">> => string(),
%%   <<"ConfigurationRecorderNames">> => list(string()()),
%%   <<"ServicePrincipal">> => string()
%% }
-type describe_configuration_recorders_request() :: #{binary() => any()}.

%% Example:
%% get_compliance_details_by_resource_request() :: #{
%%   <<"ComplianceTypes">> => list(list(any())()),
%%   <<"NextToken">> => string(),
%%   <<"ResourceEvaluationId">> => string(),
%%   <<"ResourceId">> => string(),
%%   <<"ResourceType">> => string()
%% }
-type get_compliance_details_by_resource_request() :: #{binary() => any()}.

%% Example:
%% aggregate_compliance_by_config_rule() :: #{
%%   <<"AccountId">> => string(),
%%   <<"AwsRegion">> => string(),
%%   <<"Compliance">> => compliance(),
%%   <<"ConfigRuleName">> => string()
%% }
-type aggregate_compliance_by_config_rule() :: #{binary() => any()}.

%% Example:
%% put_organization_config_rule_response() :: #{
%%   <<"OrganizationConfigRuleArn">> => string()
%% }
-type put_organization_config_rule_response() :: #{binary() => any()}.

%% Example:
%% no_available_delivery_channel_exception() :: #{
%%   <<"message">> => string()
%% }
-type no_available_delivery_channel_exception() :: #{binary() => any()}.

%% Example:
%% describe_aggregate_compliance_by_conformance_packs_request() :: #{
%%   <<"ConfigurationAggregatorName">> := string(),
%%   <<"Filters">> => aggregate_conformance_pack_compliance_filters(),
%%   <<"Limit">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_aggregate_compliance_by_conformance_packs_request() :: #{binary() => any()}.

%% Example:
%% aggregator_filter_service_principal() :: #{
%%   <<"Type">> => list(any()),
%%   <<"Value">> => list(string()())
%% }
-type aggregator_filter_service_principal() :: #{binary() => any()}.

%% Example:
%% describe_remediation_exceptions_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"RemediationExceptions">> => list(remediation_exception()())
%% }
-type describe_remediation_exceptions_response() :: #{binary() => any()}.

%% Example:
%% resource_evaluation() :: #{
%%   <<"EvaluationMode">> => list(any()),
%%   <<"EvaluationStartTimestamp">> => non_neg_integer(),
%%   <<"ResourceEvaluationId">> => string()
%% }
-type resource_evaluation() :: #{binary() => any()}.

%% Example:
%% aggregate_conformance_pack_compliance_filters() :: #{
%%   <<"AccountId">> => string(),
%%   <<"AwsRegion">> => string(),
%%   <<"ComplianceType">> => list(any()),
%%   <<"ConformancePackName">> => string()
%% }
-type aggregate_conformance_pack_compliance_filters() :: #{binary() => any()}.

%% Example:
%% evaluation_status() :: #{
%%   <<"FailureReason">> => string(),
%%   <<"Status">> => list(any())
%% }
-type evaluation_status() :: #{binary() => any()}.

%% Example:
%% get_resource_evaluation_summary_response() :: #{
%%   <<"Compliance">> => list(any()),
%%   <<"EvaluationContext">> => evaluation_context(),
%%   <<"EvaluationMode">> => list(any()),
%%   <<"EvaluationStartTimestamp">> => non_neg_integer(),
%%   <<"EvaluationStatus">> => evaluation_status(),
%%   <<"ResourceDetails">> => resource_details(),
%%   <<"ResourceEvaluationId">> => string()
%% }
-type get_resource_evaluation_summary_response() :: #{binary() => any()}.

%% Example:
%% get_aggregate_compliance_details_by_config_rule_request() :: #{
%%   <<"AccountId">> := string(),
%%   <<"AwsRegion">> := string(),
%%   <<"ComplianceType">> => list(any()),
%%   <<"ConfigRuleName">> := string(),
%%   <<"ConfigurationAggregatorName">> := string(),
%%   <<"Limit">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type get_aggregate_compliance_details_by_config_rule_request() :: #{binary() => any()}.

%% Example:
%% describe_conformance_pack_status_request() :: #{
%%   <<"ConformancePackNames">> => list(string()()),
%%   <<"Limit">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_conformance_pack_status_request() :: #{binary() => any()}.

%% Example:
%% organization_conformance_pack_status() :: #{
%%   <<"ErrorCode">> => string(),
%%   <<"ErrorMessage">> => string(),
%%   <<"LastUpdateTime">> => non_neg_integer(),
%%   <<"OrganizationConformancePackName">> => string(),
%%   <<"Status">> => list(any())
%% }
-type organization_conformance_pack_status() :: #{binary() => any()}.

%% Example:
%% put_configuration_aggregator_request() :: #{
%%   <<"AccountAggregationSources">> => list(account_aggregation_source()()),
%%   <<"AggregatorFilters">> => aggregator_filters(),
%%   <<"ConfigurationAggregatorName">> := string(),
%%   <<"OrganizationAggregationSource">> => organization_aggregation_source(),
%%   <<"Tags">> => list(tag()())
%% }
-type put_configuration_aggregator_request() :: #{binary() => any()}.

%% Example:
%% invalid_role_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_role_exception() :: #{binary() => any()}.

%% Example:
%% exclusion_by_resource_types() :: #{
%%   <<"resourceTypes">> => list(list(any())())
%% }
-type exclusion_by_resource_types() :: #{binary() => any()}.

%% Example:
%% list_aggregate_discovered_resources_request() :: #{
%%   <<"ConfigurationAggregatorName">> := string(),
%%   <<"Filters">> => resource_filters(),
%%   <<"Limit">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ResourceType">> := list(any())
%% }
-type list_aggregate_discovered_resources_request() :: #{binary() => any()}.

%% Example:
%% conformance_pack_evaluation_result() :: #{
%%   <<"Annotation">> => string(),
%%   <<"ComplianceType">> => list(any()),
%%   <<"ConfigRuleInvokedTime">> => non_neg_integer(),
%%   <<"EvaluationResultIdentifier">> => evaluation_result_identifier(),
%%   <<"ResultRecordedTime">> => non_neg_integer()
%% }
-type conformance_pack_evaluation_result() :: #{binary() => any()}.

%% Example:
%% disassociate_resource_types_response() :: #{
%%   <<"ConfigurationRecorder">> => configuration_recorder()
%% }
-type disassociate_resource_types_response() :: #{binary() => any()}.

%% Example:
%% describe_aggregation_authorizations_response() :: #{
%%   <<"AggregationAuthorizations">> => list(aggregation_authorization()()),
%%   <<"NextToken">> => string()
%% }
-type describe_aggregation_authorizations_response() :: #{binary() => any()}.

%% Example:
%% put_resource_config_request() :: #{
%%   <<"Configuration">> := string(),
%%   <<"ResourceId">> := string(),
%%   <<"ResourceName">> => string(),
%%   <<"ResourceType">> := string(),
%%   <<"SchemaVersionId">> := string(),
%%   <<"Tags">> => map()
%% }
-type put_resource_config_request() :: #{binary() => any()}.

%% Example:
%% delete_organization_conformance_pack_request() :: #{
%%   <<"OrganizationConformancePackName">> := string()
%% }
-type delete_organization_conformance_pack_request() :: #{binary() => any()}.

%% Example:
%% source() :: #{
%%   <<"CustomPolicyDetails">> => custom_policy_details(),
%%   <<"Owner">> => list(any()),
%%   <<"SourceDetails">> => list(source_detail()()),
%%   <<"SourceIdentifier">> => string()
%% }
-type source() :: #{binary() => any()}.

%% Example:
%% no_running_configuration_recorder_exception() :: #{
%%   <<"message">> => string()
%% }
-type no_running_configuration_recorder_exception() :: #{binary() => any()}.

%% Example:
%% delivery_channel_status() :: #{
%%   <<"configHistoryDeliveryInfo">> => config_export_delivery_info(),
%%   <<"configSnapshotDeliveryInfo">> => config_export_delivery_info(),
%%   <<"configStreamDeliveryInfo">> => config_stream_delivery_info(),
%%   <<"name">> => string()
%% }
-type delivery_channel_status() :: #{binary() => any()}.

%% Example:
%% scope() :: #{
%%   <<"ComplianceResourceId">> => string(),
%%   <<"ComplianceResourceTypes">> => list(string()()),
%%   <<"TagKey">> => string(),
%%   <<"TagValue">> => string()
%% }
-type scope() :: #{binary() => any()}.

%% Example:
%% delete_pending_aggregation_request_request() :: #{
%%   <<"RequesterAccountId">> := string(),
%%   <<"RequesterAwsRegion">> := string()
%% }
-type delete_pending_aggregation_request_request() :: #{binary() => any()}.

%% Example:
%% configuration_recorder_filter() :: #{
%%   <<"filterName">> => list(any()),
%%   <<"filterValue">> => list(string()())
%% }
-type configuration_recorder_filter() :: #{binary() => any()}.

%% Example:
%% delete_service_linked_configuration_recorder_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Name">> => string()
%% }
-type delete_service_linked_configuration_recorder_response() :: #{binary() => any()}.

%% Example:
%% conformance_pack_input_parameter() :: #{
%%   <<"ParameterName">> => string(),
%%   <<"ParameterValue">> => string()
%% }
-type conformance_pack_input_parameter() :: #{binary() => any()}.

%% Example:
%% put_stored_query_request() :: #{
%%   <<"StoredQuery">> := stored_query(),
%%   <<"Tags">> => list(tag()())
%% }
-type put_stored_query_request() :: #{binary() => any()}.

%% Example:
%% get_discovered_resource_counts_request() :: #{
%%   <<"limit">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"resourceTypes">> => list(string()())
%% }
-type get_discovered_resource_counts_request() :: #{binary() => any()}.

%% Example:
%% put_evaluations_response() :: #{
%%   <<"FailedEvaluations">> => list(evaluation()())
%% }
-type put_evaluations_response() :: #{binary() => any()}.

%% Example:
%% evaluation_mode_configuration() :: #{
%%   <<"Mode">> => list(any())
%% }
-type evaluation_mode_configuration() :: #{binary() => any()}.

%% Example:
%% failed_delete_remediation_exceptions_batch() :: #{
%%   <<"FailedItems">> => list(remediation_exception_resource_key()()),
%%   <<"FailureMessage">> => string()
%% }
-type failed_delete_remediation_exceptions_batch() :: #{binary() => any()}.

%% Example:
%% no_such_configuration_recorder_exception() :: #{
%%   <<"message">> => string()
%% }
-type no_such_configuration_recorder_exception() :: #{binary() => any()}.

%% Example:
%% no_such_organization_conformance_pack_exception() :: #{
%%   <<"message">> => string()
%% }
-type no_such_organization_conformance_pack_exception() :: #{binary() => any()}.

%% Example:
%% invalid_expression_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_expression_exception() :: #{binary() => any()}.

%% Example:
%% put_aggregation_authorization_request() :: #{
%%   <<"AuthorizedAccountId">> := string(),
%%   <<"AuthorizedAwsRegion">> := string(),
%%   <<"Tags">> => list(tag()())
%% }
-type put_aggregation_authorization_request() :: #{binary() => any()}.

%% Example:
%% delete_delivery_channel_request() :: #{
%%   <<"DeliveryChannelName">> := string()
%% }
-type delete_delivery_channel_request() :: #{binary() => any()}.

%% Example:
%% put_retention_configuration_response() :: #{
%%   <<"RetentionConfiguration">> => retention_configuration()
%% }
-type put_retention_configuration_response() :: #{binary() => any()}.

%% Example:
%% delivery_channel() :: #{
%%   <<"configSnapshotDeliveryProperties">> => config_snapshot_delivery_properties(),
%%   <<"name">> => string(),
%%   <<"s3BucketName">> => string(),
%%   <<"s3KeyPrefix">> => string(),
%%   <<"s3KmsKeyArn">> => string(),
%%   <<"snsTopicARN">> => string()
%% }
-type delivery_channel() :: #{binary() => any()}.

%% Example:
%% put_stored_query_response() :: #{
%%   <<"QueryArn">> => string()
%% }
-type put_stored_query_response() :: #{binary() => any()}.

%% Example:
%% get_organization_conformance_pack_detailed_status_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"OrganizationConformancePackDetailedStatuses">> => list(organization_conformance_pack_detailed_status()())
%% }
-type get_organization_conformance_pack_detailed_status_response() :: #{binary() => any()}.

%% Example:
%% describe_conformance_packs_request() :: #{
%%   <<"ConformancePackNames">> => list(string()()),
%%   <<"Limit">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_conformance_packs_request() :: #{binary() => any()}.

%% Example:
%% get_compliance_summary_by_resource_type_request() :: #{
%%   <<"ResourceTypes">> => list(string()())
%% }
-type get_compliance_summary_by_resource_type_request() :: #{binary() => any()}.

%% Example:
%% no_such_conformance_pack_exception() :: #{
%%   <<"message">> => string()
%% }
-type no_such_conformance_pack_exception() :: #{binary() => any()}.

%% Example:
%% conformance_pack_compliance_score() :: #{
%%   <<"ConformancePackName">> => string(),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"Score">> => string()
%% }
-type conformance_pack_compliance_score() :: #{binary() => any()}.

%% Example:
%% associate_resource_types_request() :: #{
%%   <<"ConfigurationRecorderArn">> := string(),
%%   <<"ResourceTypes">> := list(list(any())())
%% }
-type associate_resource_types_request() :: #{binary() => any()}.

%% Example:
%% put_configuration_aggregator_response() :: #{
%%   <<"ConfigurationAggregator">> => configuration_aggregator()
%% }
-type put_configuration_aggregator_response() :: #{binary() => any()}.

%% Example:
%% conformance_pack_compliance_scores_filters() :: #{
%%   <<"ConformancePackNames">> => list(string()())
%% }
-type conformance_pack_compliance_scores_filters() :: #{binary() => any()}.

%% Example:
%% failed_remediation_batch() :: #{
%%   <<"FailedItems">> => list(remediation_configuration()()),
%%   <<"FailureMessage">> => string()
%% }
-type failed_remediation_batch() :: #{binary() => any()}.

%% Example:
%% put_organization_config_rule_request() :: #{
%%   <<"ExcludedAccounts">> => list(string()()),
%%   <<"OrganizationConfigRuleName">> := string(),
%%   <<"OrganizationCustomPolicyRuleMetadata">> => organization_custom_policy_rule_metadata(),
%%   <<"OrganizationCustomRuleMetadata">> => organization_custom_rule_metadata(),
%%   <<"OrganizationManagedRuleMetadata">> => organization_managed_rule_metadata()
%% }
-type put_organization_config_rule_request() :: #{binary() => any()}.

%% Example:
%% recording_group() :: #{
%%   <<"allSupported">> => boolean(),
%%   <<"exclusionByResourceTypes">> => exclusion_by_resource_types(),
%%   <<"includeGlobalResourceTypes">> => boolean(),
%%   <<"recordingStrategy">> => recording_strategy(),
%%   <<"resourceTypes">> => list(list(any())())
%% }
-type recording_group() :: #{binary() => any()}.

%% Example:
%% list_stored_queries_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"StoredQueryMetadata">> => list(stored_query_metadata()())
%% }
-type list_stored_queries_response() :: #{binary() => any()}.

%% Example:
%% resource_key() :: #{
%%   <<"resourceId">> => string(),
%%   <<"resourceType">> => list(any())
%% }
-type resource_key() :: #{binary() => any()}.

%% Example:
%% get_discovered_resource_counts_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"resourceCounts">> => list(resource_count()()),
%%   <<"totalDiscoveredResources">> => float()
%% }
-type get_discovered_resource_counts_response() :: #{binary() => any()}.

%% Example:
%% execution_controls() :: #{
%%   <<"SsmControls">> => ssm_controls()
%% }
-type execution_controls() :: #{binary() => any()}.

%% Example:
%% config_export_delivery_info() :: #{
%%   <<"lastAttemptTime">> => non_neg_integer(),
%%   <<"lastErrorCode">> => string(),
%%   <<"lastErrorMessage">> => string(),
%%   <<"lastStatus">> => list(any()),
%%   <<"lastSuccessfulTime">> => non_neg_integer(),
%%   <<"nextDeliveryTime">> => non_neg_integer()
%% }
-type config_export_delivery_info() :: #{binary() => any()}.

%% Example:
%% resource_not_discovered_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_discovered_exception() :: #{binary() => any()}.

%% Example:
%% validation_exception() :: #{
%%   <<"message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"Limit">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ResourceArn">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% evaluation_context() :: #{
%%   <<"EvaluationContextIdentifier">> => string()
%% }
-type evaluation_context() :: #{binary() => any()}.

%% Example:
%% resource_count_filters() :: #{
%%   <<"AccountId">> => string(),
%%   <<"Region">> => string(),
%%   <<"ResourceType">> => list(any())
%% }
-type resource_count_filters() :: #{binary() => any()}.

%% Example:
%% resource_concurrent_modification_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_concurrent_modification_exception() :: #{binary() => any()}.

%% Example:
%% put_service_linked_configuration_recorder_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Name">> => string()
%% }
-type put_service_linked_configuration_recorder_response() :: #{binary() => any()}.

%% Example:
%% describe_configuration_aggregator_sources_status_request() :: #{
%%   <<"ConfigurationAggregatorName">> := string(),
%%   <<"Limit">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"UpdateStatus">> => list(list(any())())
%% }
-type describe_configuration_aggregator_sources_status_request() :: #{binary() => any()}.

%% Example:
%% describe_retention_configurations_request() :: #{
%%   <<"NextToken">> => string(),
%%   <<"RetentionConfigurationNames">> => list(string()())
%% }
-type describe_retention_configurations_request() :: #{binary() => any()}.

%% Example:
%% get_aggregate_discovered_resource_counts_request() :: #{
%%   <<"ConfigurationAggregatorName">> := string(),
%%   <<"Filters">> => resource_count_filters(),
%%   <<"GroupByKey">> => list(any()),
%%   <<"Limit">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type get_aggregate_discovered_resource_counts_request() :: #{binary() => any()}.

%% Example:
%% no_such_bucket_exception() :: #{
%%   <<"message">> => string()
%% }
-type no_such_bucket_exception() :: #{binary() => any()}.

%% Example:
%% no_available_organization_exception() :: #{
%%   <<"message">> => string()
%% }
-type no_available_organization_exception() :: #{binary() => any()}.

%% Example:
%% organization_custom_rule_metadata() :: #{
%%   <<"Description">> => string(),
%%   <<"InputParameters">> => string(),
%%   <<"LambdaFunctionArn">> => string(),
%%   <<"MaximumExecutionFrequency">> => list(any()),
%%   <<"OrganizationConfigRuleTriggerTypes">> => list(list(any())()),
%%   <<"ResourceIdScope">> => string(),
%%   <<"ResourceTypesScope">> => list(string()()),
%%   <<"TagKeyScope">> => string(),
%%   <<"TagValueScope">> => string()
%% }
-type organization_custom_rule_metadata() :: #{binary() => any()}.

%% Example:
%% describe_configuration_recorders_response() :: #{
%%   <<"ConfigurationRecorders">> => list(configuration_recorder()())
%% }
-type describe_configuration_recorders_response() :: #{binary() => any()}.

%% Example:
%% delete_resource_config_request() :: #{
%%   <<"ResourceId">> := string(),
%%   <<"ResourceType">> := string()
%% }
-type delete_resource_config_request() :: #{binary() => any()}.

%% Example:
%% max_active_resources_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type max_active_resources_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% no_such_organization_config_rule_exception() :: #{
%%   <<"message">> => string()
%% }
-type no_such_organization_config_rule_exception() :: #{binary() => any()}.

%% Example:
%% status_detail_filters() :: #{
%%   <<"AccountId">> => string(),
%%   <<"MemberAccountRuleStatus">> => list(any())
%% }
-type status_detail_filters() :: #{binary() => any()}.

%% Example:
%% describe_config_rules_request() :: #{
%%   <<"ConfigRuleNames">> => list(string()()),
%%   <<"Filters">> => describe_config_rules_filters(),
%%   <<"NextToken">> => string()
%% }
-type describe_config_rules_request() :: #{binary() => any()}.

%% Example:
%% batch_get_resource_config_request() :: #{
%%   <<"resourceKeys">> := list(resource_key()())
%% }
-type batch_get_resource_config_request() :: #{binary() => any()}.

%% Example:
%% get_conformance_pack_compliance_details_request() :: #{
%%   <<"ConformancePackName">> := string(),
%%   <<"Filters">> => conformance_pack_evaluation_filters(),
%%   <<"Limit">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type get_conformance_pack_compliance_details_request() :: #{binary() => any()}.

%% Example:
%% describe_configuration_aggregator_sources_status_response() :: #{
%%   <<"AggregatedSourceStatusList">> => list(aggregated_source_status()()),
%%   <<"NextToken">> => string()
%% }
-type describe_configuration_aggregator_sources_status_response() :: #{binary() => any()}.

%% Example:
%% field_info() :: #{
%%   <<"Name">> => string()
%% }
-type field_info() :: #{binary() => any()}.

%% Example:
%% describe_conformance_pack_compliance_request() :: #{
%%   <<"ConformancePackName">> := string(),
%%   <<"Filters">> => conformance_pack_compliance_filters(),
%%   <<"Limit">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_conformance_pack_compliance_request() :: #{binary() => any()}.

%% Example:
%% config_stream_delivery_info() :: #{
%%   <<"lastErrorCode">> => string(),
%%   <<"lastErrorMessage">> => string(),
%%   <<"lastStatus">> => list(any()),
%%   <<"lastStatusChangeTime">> => non_neg_integer()
%% }
-type config_stream_delivery_info() :: #{binary() => any()}.

%% Example:
%% get_aggregate_conformance_pack_compliance_summary_request() :: #{
%%   <<"ConfigurationAggregatorName">> := string(),
%%   <<"Filters">> => aggregate_conformance_pack_compliance_summary_filters(),
%%   <<"GroupByKey">> => list(any()),
%%   <<"Limit">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type get_aggregate_conformance_pack_compliance_summary_request() :: #{binary() => any()}.

%% Example:
%% aggregate_compliance_by_conformance_pack() :: #{
%%   <<"AccountId">> => string(),
%%   <<"AwsRegion">> => string(),
%%   <<"Compliance">> => aggregate_conformance_pack_compliance(),
%%   <<"ConformancePackName">> => string()
%% }
-type aggregate_compliance_by_conformance_pack() :: #{binary() => any()}.

%% Example:
%% describe_delivery_channel_status_response() :: #{
%%   <<"DeliveryChannelsStatus">> => list(delivery_channel_status()())
%% }
-type describe_delivery_channel_status_response() :: #{binary() => any()}.

%% Example:
%% describe_remediation_execution_status_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"RemediationExecutionStatuses">> => list(remediation_execution_status()())
%% }
-type describe_remediation_execution_status_response() :: #{binary() => any()}.

%% Example:
%% organization_custom_policy_rule_metadata() :: #{
%%   <<"DebugLogDeliveryAccounts">> => list(string()()),
%%   <<"Description">> => string(),
%%   <<"InputParameters">> => string(),
%%   <<"MaximumExecutionFrequency">> => list(any()),
%%   <<"OrganizationConfigRuleTriggerTypes">> => list(list(any())()),
%%   <<"PolicyRuntime">> => string(),
%%   <<"PolicyText">> => string(),
%%   <<"ResourceIdScope">> => string(),
%%   <<"ResourceTypesScope">> => list(string()()),
%%   <<"TagKeyScope">> => string(),
%%   <<"TagValueScope">> => string()
%% }
-type organization_custom_policy_rule_metadata() :: #{binary() => any()}.

%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% conformance_pack_compliance_summary() :: #{
%%   <<"ConformancePackComplianceStatus">> => list(any()),
%%   <<"ConformancePackName">> => string()
%% }
-type conformance_pack_compliance_summary() :: #{binary() => any()}.

%% Example:
%% compliance_summary_by_resource_type() :: #{
%%   <<"ComplianceSummary">> => compliance_summary(),
%%   <<"ResourceType">> => string()
%% }
-type compliance_summary_by_resource_type() :: #{binary() => any()}.

%% Example:
%% organization_resource_detailed_status_filters() :: #{
%%   <<"AccountId">> => string(),
%%   <<"Status">> => list(any())
%% }
-type organization_resource_detailed_status_filters() :: #{binary() => any()}.

%% Example:
%% evaluation() :: #{
%%   <<"Annotation">> => string(),
%%   <<"ComplianceResourceId">> => string(),
%%   <<"ComplianceResourceType">> => string(),
%%   <<"ComplianceType">> => list(any()),
%%   <<"OrderingTimestamp">> => non_neg_integer()
%% }
-type evaluation() :: #{binary() => any()}.

%% Example:
%% describe_aggregation_authorizations_request() :: #{
%%   <<"Limit">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_aggregation_authorizations_request() :: #{binary() => any()}.

%% Example:
%% base_configuration_item() :: #{
%%   <<"accountId">> => string(),
%%   <<"arn">> => string(),
%%   <<"availabilityZone">> => string(),
%%   <<"awsRegion">> => string(),
%%   <<"configuration">> => string(),
%%   <<"configurationItemCaptureTime">> => non_neg_integer(),
%%   <<"configurationItemDeliveryTime">> => non_neg_integer(),
%%   <<"configurationItemStatus">> => list(any()),
%%   <<"configurationStateId">> => string(),
%%   <<"recordingFrequency">> => list(any()),
%%   <<"resourceCreationTime">> => non_neg_integer(),
%%   <<"resourceId">> => string(),
%%   <<"resourceName">> => string(),
%%   <<"resourceType">> => list(any()),
%%   <<"supplementaryConfiguration">> => map(),
%%   <<"version">> => string()
%% }
-type base_configuration_item() :: #{binary() => any()}.

%% Example:
%% put_remediation_exceptions_request() :: #{
%%   <<"ConfigRuleName">> := string(),
%%   <<"ExpirationTime">> => non_neg_integer(),
%%   <<"Message">> => string(),
%%   <<"ResourceKeys">> := list(remediation_exception_resource_key()())
%% }
-type put_remediation_exceptions_request() :: #{binary() => any()}.

%% Example:
%% conformance_pack_status_detail() :: #{
%%   <<"ConformancePackArn">> => string(),
%%   <<"ConformancePackId">> => string(),
%%   <<"ConformancePackName">> => string(),
%%   <<"ConformancePackState">> => list(any()),
%%   <<"ConformancePackStatusReason">> => string(),
%%   <<"LastUpdateCompletedTime">> => non_neg_integer(),
%%   <<"LastUpdateRequestedTime">> => non_neg_integer(),
%%   <<"StackArn">> => string()
%% }
-type conformance_pack_status_detail() :: #{binary() => any()}.

%% Example:
%% get_conformance_pack_compliance_details_response() :: #{
%%   <<"ConformancePackName">> => string(),
%%   <<"ConformancePackRuleEvaluationResults">> => list(conformance_pack_evaluation_result()()),
%%   <<"NextToken">> => string()
%% }
-type get_conformance_pack_compliance_details_response() :: #{binary() => any()}.

%% Example:
%% evaluation_result() :: #{
%%   <<"Annotation">> => string(),
%%   <<"ComplianceType">> => list(any()),
%%   <<"ConfigRuleInvokedTime">> => non_neg_integer(),
%%   <<"EvaluationResultIdentifier">> => evaluation_result_identifier(),
%%   <<"ResultRecordedTime">> => non_neg_integer(),
%%   <<"ResultToken">> => string()
%% }
-type evaluation_result() :: #{binary() => any()}.

%% Example:
%% put_organization_conformance_pack_request() :: #{
%%   <<"ConformancePackInputParameters">> => list(conformance_pack_input_parameter()()),
%%   <<"DeliveryS3Bucket">> => string(),
%%   <<"DeliveryS3KeyPrefix">> => string(),
%%   <<"ExcludedAccounts">> => list(string()()),
%%   <<"OrganizationConformancePackName">> := string(),
%%   <<"TemplateBody">> => string(),
%%   <<"TemplateS3Uri">> => string()
%% }
-type put_organization_conformance_pack_request() :: #{binary() => any()}.

%% Example:
%% describe_organization_conformance_pack_statuses_request() :: #{
%%   <<"Limit">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"OrganizationConformancePackNames">> => list(string()())
%% }
-type describe_organization_conformance_pack_statuses_request() :: #{binary() => any()}.

%% Example:
%% template_s_s_m_document_details() :: #{
%%   <<"DocumentName">> => string(),
%%   <<"DocumentVersion">> => string()
%% }
-type template_s_s_m_document_details() :: #{binary() => any()}.

%% Example:
%% start_resource_evaluation_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"EvaluationContext">> => evaluation_context(),
%%   <<"EvaluationMode">> := list(any()),
%%   <<"EvaluationTimeout">> => integer(),
%%   <<"ResourceDetails">> := resource_details()
%% }
-type start_resource_evaluation_request() :: #{binary() => any()}.

%% Example:
%% delete_stored_query_response() :: #{

%% }
-type delete_stored_query_response() :: #{binary() => any()}.

%% Example:
%% aggregate_conformance_pack_compliance_count() :: #{
%%   <<"CompliantConformancePackCount">> => integer(),
%%   <<"NonCompliantConformancePackCount">> => integer()
%% }
-type aggregate_conformance_pack_compliance_count() :: #{binary() => any()}.

%% Example:
%% describe_organization_config_rule_statuses_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"OrganizationConfigRuleStatuses">> => list(organization_config_rule_status()())
%% }
-type describe_organization_config_rule_statuses_response() :: #{binary() => any()}.

%% Example:
%% resource_details() :: #{
%%   <<"ResourceConfiguration">> => string(),
%%   <<"ResourceConfigurationSchemaType">> => list(any()),
%%   <<"ResourceId">> => string(),
%%   <<"ResourceType">> => string()
%% }
-type resource_details() :: #{binary() => any()}.

%% Example:
%% select_resource_config_request() :: #{
%%   <<"Expression">> := string(),
%%   <<"Limit">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type select_resource_config_request() :: #{binary() => any()}.

%% Example:
%% invalid_s3_key_prefix_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_s3_key_prefix_exception() :: #{binary() => any()}.

%% Example:
%% configuration_item() :: #{
%%   <<"accountId">> => string(),
%%   <<"arn">> => string(),
%%   <<"availabilityZone">> => string(),
%%   <<"awsRegion">> => string(),
%%   <<"configuration">> => string(),
%%   <<"configurationItemCaptureTime">> => non_neg_integer(),
%%   <<"configurationItemDeliveryTime">> => non_neg_integer(),
%%   <<"configurationItemMD5Hash">> => string(),
%%   <<"configurationItemStatus">> => list(any()),
%%   <<"configurationStateId">> => string(),
%%   <<"recordingFrequency">> => list(any()),
%%   <<"relatedEvents">> => list(string()()),
%%   <<"relationships">> => list(relationship()()),
%%   <<"resourceCreationTime">> => non_neg_integer(),
%%   <<"resourceId">> => string(),
%%   <<"resourceName">> => string(),
%%   <<"resourceType">> => list(any()),
%%   <<"supplementaryConfiguration">> => map(),
%%   <<"tags">> => map(),
%%   <<"version">> => string()
%% }
-type configuration_item() :: #{binary() => any()}.

%% Example:
%% compliance_by_resource() :: #{
%%   <<"Compliance">> => compliance(),
%%   <<"ResourceId">> => string(),
%%   <<"ResourceType">> => string()
%% }
-type compliance_by_resource() :: #{binary() => any()}.

%% Example:
%% describe_config_rule_evaluation_status_response() :: #{
%%   <<"ConfigRulesEvaluationStatus">> => list(config_rule_evaluation_status()()),
%%   <<"NextToken">> => string()
%% }
-type describe_config_rule_evaluation_status_response() :: #{binary() => any()}.

%% Example:
%% organization_config_rule() :: #{
%%   <<"ExcludedAccounts">> => list(string()()),
%%   <<"LastUpdateTime">> => non_neg_integer(),
%%   <<"OrganizationConfigRuleArn">> => string(),
%%   <<"OrganizationConfigRuleName">> => string(),
%%   <<"OrganizationCustomPolicyRuleMetadata">> => organization_custom_policy_rule_metadata_no_policy(),
%%   <<"OrganizationCustomRuleMetadata">> => organization_custom_rule_metadata(),
%%   <<"OrganizationManagedRuleMetadata">> => organization_managed_rule_metadata()
%% }
-type organization_config_rule() :: #{binary() => any()}.

%% Example:
%% max_number_of_conformance_packs_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type max_number_of_conformance_packs_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% list_conformance_pack_compliance_scores_response() :: #{
%%   <<"ConformancePackComplianceScores">> => list(conformance_pack_compliance_score()()),
%%   <<"NextToken">> => string()
%% }
-type list_conformance_pack_compliance_scores_response() :: #{binary() => any()}.

%% Example:
%% describe_pending_aggregation_requests_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PendingAggregationRequests">> => list(pending_aggregation_request()())
%% }
-type describe_pending_aggregation_requests_response() :: #{binary() => any()}.

%% Example:
%% static_value() :: #{
%%   <<"Values">> => list(string()())
%% }
-type static_value() :: #{binary() => any()}.

%% Example:
%% max_number_of_retention_configurations_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type max_number_of_retention_configurations_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% delete_organization_config_rule_request() :: #{
%%   <<"OrganizationConfigRuleName">> := string()
%% }
-type delete_organization_config_rule_request() :: #{binary() => any()}.

%% Example:
%% describe_remediation_exceptions_request() :: #{
%%   <<"ConfigRuleName">> := string(),
%%   <<"Limit">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ResourceKeys">> => list(remediation_exception_resource_key()())
%% }
-type describe_remediation_exceptions_request() :: #{binary() => any()}.

%% Example:
%% batch_get_aggregate_resource_config_request() :: #{
%%   <<"ConfigurationAggregatorName">> := string(),
%%   <<"ResourceIdentifiers">> := list(aggregate_resource_identifier()())
%% }
-type batch_get_aggregate_resource_config_request() :: #{binary() => any()}.

%% Example:
%% describe_conformance_packs_response() :: #{
%%   <<"ConformancePackDetails">> => list(conformance_pack_detail()()),
%%   <<"NextToken">> => string()
%% }
-type describe_conformance_packs_response() :: #{binary() => any()}.

%% Example:
%% query_info() :: #{
%%   <<"SelectFields">> => list(field_info()())
%% }
-type query_info() :: #{binary() => any()}.

%% Example:
%% list_configuration_recorders_request() :: #{
%%   <<"Filters">> => list(configuration_recorder_filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_configuration_recorders_request() :: #{binary() => any()}.

%% Example:
%% get_compliance_summary_by_config_rule_response() :: #{
%%   <<"ComplianceSummary">> => compliance_summary()
%% }
-type get_compliance_summary_by_config_rule_response() :: #{binary() => any()}.

%% Example:
%% get_aggregate_resource_config_response() :: #{
%%   <<"ConfigurationItem">> => configuration_item()
%% }
-type get_aggregate_resource_config_response() :: #{binary() => any()}.

%% Example:
%% conformance_pack_template_validation_exception() :: #{
%%   <<"message">> => string()
%% }
-type conformance_pack_template_validation_exception() :: #{binary() => any()}.

%% Example:
%% get_organization_conformance_pack_detailed_status_request() :: #{
%%   <<"Filters">> => organization_resource_detailed_status_filters(),
%%   <<"Limit">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"OrganizationConformancePackName">> := string()
%% }
-type get_organization_conformance_pack_detailed_status_request() :: #{binary() => any()}.

%% Example:
%% organization_access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type organization_access_denied_exception() :: #{binary() => any()}.

%% Example:
%% no_such_retention_configuration_exception() :: #{
%%   <<"message">> => string()
%% }
-type no_such_retention_configuration_exception() :: #{binary() => any()}.

%% Example:
%% remediation_exception_resource_key() :: #{
%%   <<"ResourceId">> => string(),
%%   <<"ResourceType">> => string()
%% }
-type remediation_exception_resource_key() :: #{binary() => any()}.

%% Example:
%% invalid_configuration_recorder_name_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_configuration_recorder_name_exception() :: #{binary() => any()}.

%% Example:
%% compliance_summary() :: #{
%%   <<"ComplianceSummaryTimestamp">> => non_neg_integer(),
%%   <<"CompliantResourceCount">> => compliance_contributor_count(),
%%   <<"NonCompliantResourceCount">> => compliance_contributor_count()
%% }
-type compliance_summary() :: #{binary() => any()}.

%% Example:
%% delete_configuration_recorder_request() :: #{
%%   <<"ConfigurationRecorderName">> := string()
%% }
-type delete_configuration_recorder_request() :: #{binary() => any()}.

%% Example:
%% delete_conformance_pack_request() :: #{
%%   <<"ConformancePackName">> := string()
%% }
-type delete_conformance_pack_request() :: #{binary() => any()}.

%% Example:
%% evaluation_result_qualifier() :: #{
%%   <<"ConfigRuleName">> => string(),
%%   <<"EvaluationMode">> => list(any()),
%%   <<"ResourceId">> => string(),
%%   <<"ResourceType">> => string()
%% }
-type evaluation_result_qualifier() :: #{binary() => any()}.

%% Example:
%% organization_conformance_pack() :: #{
%%   <<"ConformancePackInputParameters">> => list(conformance_pack_input_parameter()()),
%%   <<"DeliveryS3Bucket">> => string(),
%%   <<"DeliveryS3KeyPrefix">> => string(),
%%   <<"ExcludedAccounts">> => list(string()()),
%%   <<"LastUpdateTime">> => non_neg_integer(),
%%   <<"OrganizationConformancePackArn">> => string(),
%%   <<"OrganizationConformancePackName">> => string()
%% }
-type organization_conformance_pack() :: #{binary() => any()}.

%% Example:
%% describe_organization_conformance_packs_request() :: #{
%%   <<"Limit">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"OrganizationConformancePackNames">> => list(string()())
%% }
-type describe_organization_conformance_packs_request() :: #{binary() => any()}.

%% Example:
%% delete_service_linked_configuration_recorder_request() :: #{
%%   <<"ServicePrincipal">> := string()
%% }
-type delete_service_linked_configuration_recorder_request() :: #{binary() => any()}.

%% Example:
%% too_many_tags_exception() :: #{
%%   <<"message">> => string()
%% }
-type too_many_tags_exception() :: #{binary() => any()}.

%% Example:
%% get_compliance_details_by_config_rule_request() :: #{
%%   <<"ComplianceTypes">> => list(list(any())()),
%%   <<"ConfigRuleName">> := string(),
%%   <<"Limit">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type get_compliance_details_by_config_rule_request() :: #{binary() => any()}.

%% Example:
%% config_rule_compliance_filters() :: #{
%%   <<"AccountId">> => string(),
%%   <<"AwsRegion">> => string(),
%%   <<"ComplianceType">> => list(any()),
%%   <<"ConfigRuleName">> => string()
%% }
-type config_rule_compliance_filters() :: #{binary() => any()}.

%% Example:
%% get_organization_custom_rule_policy_request() :: #{
%%   <<"OrganizationConfigRuleName">> := string()
%% }
-type get_organization_custom_rule_policy_request() :: #{binary() => any()}.

%% Example:
%% list_resource_evaluations_request() :: #{
%%   <<"Filters">> => resource_evaluation_filters(),
%%   <<"Limit">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_resource_evaluations_request() :: #{binary() => any()}.

%% Example:
%% aggregate_compliance_count() :: #{
%%   <<"ComplianceSummary">> => compliance_summary(),
%%   <<"GroupName">> => string()
%% }
-type aggregate_compliance_count() :: #{binary() => any()}.

%% Example:
%% select_aggregate_resource_config_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"QueryInfo">> => query_info(),
%%   <<"Results">> => list(string()())
%% }
-type select_aggregate_resource_config_response() :: #{binary() => any()}.

%% Example:
%% no_such_config_rule_exception() :: #{
%%   <<"message">> => string()
%% }
-type no_such_config_rule_exception() :: #{binary() => any()}.

%% Example:
%% remediation_execution_step() :: #{
%%   <<"ErrorMessage">> => string(),
%%   <<"Name">> => string(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"State">> => list(any()),
%%   <<"StopTime">> => non_neg_integer()
%% }
-type remediation_execution_step() :: #{binary() => any()}.

%% Example:
%% no_such_remediation_configuration_exception() :: #{
%%   <<"message">> => string()
%% }
-type no_such_remediation_configuration_exception() :: #{binary() => any()}.

%% Example:
%% describe_conformance_pack_compliance_response() :: #{
%%   <<"ConformancePackName">> => string(),
%%   <<"ConformancePackRuleComplianceList">> => list(conformance_pack_rule_compliance()()),
%%   <<"NextToken">> => string()
%% }
-type describe_conformance_pack_compliance_response() :: #{binary() => any()}.

%% Example:
%% put_configuration_recorder_request() :: #{
%%   <<"ConfigurationRecorder">> := configuration_recorder(),
%%   <<"Tags">> => list(tag()())
%% }
-type put_configuration_recorder_request() :: #{binary() => any()}.

%% Example:
%% no_available_configuration_recorder_exception() :: #{
%%   <<"message">> => string()
%% }
-type no_available_configuration_recorder_exception() :: #{binary() => any()}.

%% Example:
%% aggregate_conformance_pack_compliance_summary_filters() :: #{
%%   <<"AccountId">> => string(),
%%   <<"AwsRegion">> => string()
%% }
-type aggregate_conformance_pack_compliance_summary_filters() :: #{binary() => any()}.

%% Example:
%% organization_custom_policy_rule_metadata_no_policy() :: #{
%%   <<"DebugLogDeliveryAccounts">> => list(string()()),
%%   <<"Description">> => string(),
%%   <<"InputParameters">> => string(),
%%   <<"MaximumExecutionFrequency">> => list(any()),
%%   <<"OrganizationConfigRuleTriggerTypes">> => list(list(any())()),
%%   <<"PolicyRuntime">> => string(),
%%   <<"ResourceIdScope">> => string(),
%%   <<"ResourceTypesScope">> => list(string()()),
%%   <<"TagKeyScope">> => string(),
%%   <<"TagValueScope">> => string()
%% }
-type organization_custom_policy_rule_metadata_no_policy() :: #{binary() => any()}.

-type associate_resource_types_errors() ::
    validation_exception() | 
    no_such_configuration_recorder_exception() | 
    conflict_exception().

-type batch_get_aggregate_resource_config_errors() ::
    validation_exception() | 
    no_such_configuration_aggregator_exception().

-type batch_get_resource_config_errors() ::
    no_available_configuration_recorder_exception() | 
    validation_exception().

-type delete_aggregation_authorization_errors() ::
    invalid_parameter_value_exception().

-type delete_config_rule_errors() ::
    no_such_config_rule_exception() | 
    resource_in_use_exception().

-type delete_configuration_aggregator_errors() ::
    no_such_configuration_aggregator_exception().

-type delete_configuration_recorder_errors() ::
    no_such_configuration_recorder_exception() | 
    unmodifiable_entity_exception().

-type delete_conformance_pack_errors() ::
    no_such_conformance_pack_exception() | 
    resource_in_use_exception().

-type delete_delivery_channel_errors() ::
    no_such_delivery_channel_exception() | 
    last_delivery_channel_delete_failed_exception().

-type delete_evaluation_results_errors() ::
    no_such_config_rule_exception() | 
    resource_in_use_exception().

-type delete_organization_config_rule_errors() ::
    organization_access_denied_exception() | 
    no_such_organization_config_rule_exception() | 
    resource_in_use_exception().

-type delete_organization_conformance_pack_errors() ::
    organization_access_denied_exception() | 
    no_such_organization_conformance_pack_exception() | 
    resource_in_use_exception().

-type delete_pending_aggregation_request_errors() ::
    invalid_parameter_value_exception().

-type delete_remediation_configuration_errors() ::
    no_such_remediation_configuration_exception() | 
    invalid_parameter_value_exception() | 
    remediation_in_progress_exception() | 
    insufficient_permissions_exception().

-type delete_remediation_exceptions_errors() ::
    no_such_remediation_exception_exception().

-type delete_resource_config_errors() ::
    validation_exception() | 
    no_running_configuration_recorder_exception().

-type delete_retention_configuration_errors() ::
    no_such_retention_configuration_exception() | 
    invalid_parameter_value_exception().

-type delete_service_linked_configuration_recorder_errors() ::
    validation_exception() | 
    no_such_configuration_recorder_exception() | 
    conflict_exception().

-type delete_stored_query_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type deliver_config_snapshot_errors() ::
    no_available_configuration_recorder_exception() | 
    no_running_configuration_recorder_exception() | 
    no_such_delivery_channel_exception().

-type describe_aggregate_compliance_by_config_rules_errors() ::
    validation_exception() | 
    invalid_next_token_exception() | 
    invalid_limit_exception() | 
    no_such_configuration_aggregator_exception().

-type describe_aggregate_compliance_by_conformance_packs_errors() ::
    validation_exception() | 
    invalid_next_token_exception() | 
    invalid_limit_exception() | 
    no_such_configuration_aggregator_exception().

-type describe_aggregation_authorizations_errors() ::
    invalid_parameter_value_exception() | 
    invalid_next_token_exception() | 
    invalid_limit_exception().

-type describe_compliance_by_config_rule_errors() ::
    no_such_config_rule_exception() | 
    invalid_parameter_value_exception() | 
    invalid_next_token_exception().

-type describe_compliance_by_resource_errors() ::
    invalid_parameter_value_exception() | 
    invalid_next_token_exception().

-type describe_config_rule_evaluation_status_errors() ::
    no_such_config_rule_exception() | 
    invalid_parameter_value_exception() | 
    invalid_next_token_exception().

-type describe_config_rules_errors() ::
    no_such_config_rule_exception() | 
    invalid_parameter_value_exception() | 
    invalid_next_token_exception().

-type describe_configuration_aggregator_sources_status_errors() ::
    invalid_parameter_value_exception() | 
    invalid_next_token_exception() | 
    invalid_limit_exception() | 
    no_such_configuration_aggregator_exception().

-type describe_configuration_aggregators_errors() ::
    invalid_parameter_value_exception() | 
    invalid_next_token_exception() | 
    invalid_limit_exception() | 
    no_such_configuration_aggregator_exception().

-type describe_configuration_recorder_status_errors() ::
    validation_exception() | 
    no_such_configuration_recorder_exception().

-type describe_configuration_recorders_errors() ::
    validation_exception() | 
    no_such_configuration_recorder_exception().

-type describe_conformance_pack_compliance_errors() ::
    no_such_conformance_pack_exception() | 
    invalid_parameter_value_exception() | 
    invalid_next_token_exception() | 
    no_such_config_rule_in_conformance_pack_exception() | 
    invalid_limit_exception().

-type describe_conformance_pack_status_errors() ::
    invalid_parameter_value_exception() | 
    invalid_next_token_exception() | 
    invalid_limit_exception().

-type describe_conformance_packs_errors() ::
    no_such_conformance_pack_exception() | 
    invalid_parameter_value_exception() | 
    invalid_next_token_exception() | 
    invalid_limit_exception().

-type describe_delivery_channel_status_errors() ::
    no_such_delivery_channel_exception().

-type describe_delivery_channels_errors() ::
    no_such_delivery_channel_exception().

-type describe_organization_config_rule_statuses_errors() ::
    organization_access_denied_exception() | 
    no_such_organization_config_rule_exception() | 
    invalid_next_token_exception() | 
    invalid_limit_exception().

-type describe_organization_config_rules_errors() ::
    organization_access_denied_exception() | 
    no_such_organization_config_rule_exception() | 
    invalid_next_token_exception() | 
    invalid_limit_exception().

-type describe_organization_conformance_pack_statuses_errors() ::
    organization_access_denied_exception() | 
    no_such_organization_conformance_pack_exception() | 
    invalid_next_token_exception() | 
    invalid_limit_exception().

-type describe_organization_conformance_packs_errors() ::
    organization_access_denied_exception() | 
    no_such_organization_conformance_pack_exception() | 
    invalid_next_token_exception() | 
    invalid_limit_exception().

-type describe_pending_aggregation_requests_errors() ::
    invalid_parameter_value_exception() | 
    invalid_next_token_exception() | 
    invalid_limit_exception().

-type describe_remediation_exceptions_errors() ::
    invalid_parameter_value_exception() | 
    invalid_next_token_exception().

-type describe_remediation_execution_status_errors() ::
    no_such_remediation_configuration_exception() | 
    invalid_parameter_value_exception() | 
    invalid_next_token_exception().

-type describe_retention_configurations_errors() ::
    no_such_retention_configuration_exception() | 
    invalid_parameter_value_exception() | 
    invalid_next_token_exception().

-type disassociate_resource_types_errors() ::
    validation_exception() | 
    no_such_configuration_recorder_exception() | 
    conflict_exception().

-type get_aggregate_compliance_details_by_config_rule_errors() ::
    validation_exception() | 
    invalid_next_token_exception() | 
    invalid_limit_exception() | 
    no_such_configuration_aggregator_exception().

-type get_aggregate_config_rule_compliance_summary_errors() ::
    validation_exception() | 
    invalid_next_token_exception() | 
    invalid_limit_exception() | 
    no_such_configuration_aggregator_exception().

-type get_aggregate_conformance_pack_compliance_summary_errors() ::
    validation_exception() | 
    invalid_next_token_exception() | 
    invalid_limit_exception() | 
    no_such_configuration_aggregator_exception().

-type get_aggregate_discovered_resource_counts_errors() ::
    validation_exception() | 
    invalid_next_token_exception() | 
    invalid_limit_exception() | 
    no_such_configuration_aggregator_exception().

-type get_aggregate_resource_config_errors() ::
    validation_exception() | 
    resource_not_discovered_exception() | 
    oversized_configuration_item_exception() | 
    no_such_configuration_aggregator_exception().

-type get_compliance_details_by_config_rule_errors() ::
    no_such_config_rule_exception() | 
    invalid_parameter_value_exception() | 
    invalid_next_token_exception().

-type get_compliance_details_by_resource_errors() ::
    invalid_parameter_value_exception().

-type get_compliance_summary_by_resource_type_errors() ::
    invalid_parameter_value_exception().

-type get_conformance_pack_compliance_details_errors() ::
    no_such_conformance_pack_exception() | 
    invalid_parameter_value_exception() | 
    invalid_next_token_exception() | 
    no_such_config_rule_in_conformance_pack_exception() | 
    invalid_limit_exception().

-type get_conformance_pack_compliance_summary_errors() ::
    no_such_conformance_pack_exception() | 
    invalid_next_token_exception() | 
    invalid_limit_exception().

-type get_custom_rule_policy_errors() ::
    no_such_config_rule_exception().

-type get_discovered_resource_counts_errors() ::
    validation_exception() | 
    invalid_next_token_exception() | 
    invalid_limit_exception().

-type get_organization_config_rule_detailed_status_errors() ::
    organization_access_denied_exception() | 
    no_such_organization_config_rule_exception() | 
    invalid_next_token_exception() | 
    invalid_limit_exception().

-type get_organization_conformance_pack_detailed_status_errors() ::
    organization_access_denied_exception() | 
    no_such_organization_conformance_pack_exception() | 
    invalid_next_token_exception() | 
    invalid_limit_exception().

-type get_organization_custom_rule_policy_errors() ::
    organization_access_denied_exception() | 
    no_such_organization_config_rule_exception().

-type get_resource_config_history_errors() ::
    no_available_configuration_recorder_exception() | 
    validation_exception() | 
    resource_not_discovered_exception() | 
    invalid_next_token_exception() | 
    invalid_time_range_exception() | 
    invalid_limit_exception().

-type get_resource_evaluation_summary_errors() ::
    resource_not_found_exception().

-type get_stored_query_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type list_aggregate_discovered_resources_errors() ::
    validation_exception() | 
    invalid_next_token_exception() | 
    invalid_limit_exception() | 
    no_such_configuration_aggregator_exception().

-type list_configuration_recorders_errors() ::
    validation_exception().

-type list_conformance_pack_compliance_scores_errors() ::
    invalid_parameter_value_exception() | 
    invalid_next_token_exception() | 
    invalid_limit_exception().

-type list_discovered_resources_errors() ::
    no_available_configuration_recorder_exception() | 
    validation_exception() | 
    invalid_next_token_exception() | 
    invalid_limit_exception().

-type list_resource_evaluations_errors() ::
    invalid_parameter_value_exception() | 
    invalid_next_token_exception() | 
    invalid_time_range_exception().

-type list_stored_queries_errors() ::
    validation_exception() | 
    invalid_next_token_exception().

-type list_tags_for_resource_errors() ::
    validation_exception() | 
    invalid_next_token_exception() | 
    resource_not_found_exception() | 
    invalid_limit_exception().

-type put_aggregation_authorization_errors() ::
    invalid_parameter_value_exception().

-type put_config_rule_errors() ::
    no_available_configuration_recorder_exception() | 
    invalid_parameter_value_exception() | 
    max_number_of_config_rules_exceeded_exception() | 
    resource_in_use_exception() | 
    insufficient_permissions_exception().

-type put_configuration_aggregator_errors() ::
    organization_access_denied_exception() | 
    limit_exceeded_exception() | 
    no_available_organization_exception() | 
    invalid_role_exception() | 
    invalid_parameter_value_exception() | 
    organization_all_features_not_enabled_exception().

-type put_configuration_recorder_errors() ::
    invalid_configuration_recorder_name_exception() | 
    validation_exception() | 
    invalid_role_exception() | 
    max_number_of_configuration_recorders_exceeded_exception() | 
    unmodifiable_entity_exception() | 
    invalid_recording_group_exception().

-type put_conformance_pack_errors() ::
    conformance_pack_template_validation_exception() | 
    max_number_of_conformance_packs_exceeded_exception() | 
    invalid_parameter_value_exception() | 
    resource_in_use_exception() | 
    insufficient_permissions_exception().

-type put_delivery_channel_errors() ::
    no_available_configuration_recorder_exception() | 
    invalid_s3_key_prefix_exception() | 
    no_such_bucket_exception() | 
    invalid_s3_kms_key_arn_exception() | 
    invalid_delivery_channel_name_exception() | 
    invalid_s_n_s_topic_arn_exception() | 
    insufficient_delivery_policy_exception() | 
    max_number_of_delivery_channels_exceeded_exception().

-type put_evaluations_errors() ::
    no_such_config_rule_exception() | 
    invalid_parameter_value_exception() | 
    invalid_result_token_exception().

-type put_external_evaluation_errors() ::
    no_such_config_rule_exception() | 
    invalid_parameter_value_exception().

-type put_organization_config_rule_errors() ::
    organization_access_denied_exception() | 
    no_available_organization_exception() | 
    validation_exception() | 
    invalid_parameter_value_exception() | 
    max_number_of_organization_config_rules_exceeded_exception() | 
    resource_in_use_exception() | 
    insufficient_permissions_exception() | 
    organization_all_features_not_enabled_exception().

-type put_organization_conformance_pack_errors() ::
    organization_access_denied_exception() | 
    no_available_organization_exception() | 
    validation_exception() | 
    max_number_of_organization_conformance_packs_exceeded_exception() | 
    resource_in_use_exception() | 
    insufficient_permissions_exception() | 
    organization_all_features_not_enabled_exception() | 
    organization_conformance_pack_template_validation_exception().

-type put_remediation_configurations_errors() ::
    invalid_parameter_value_exception() | 
    insufficient_permissions_exception().

-type put_remediation_exceptions_errors() ::
    invalid_parameter_value_exception() | 
    insufficient_permissions_exception().

-type put_resource_config_errors() ::
    max_active_resources_exceeded_exception() | 
    validation_exception() | 
    no_running_configuration_recorder_exception() | 
    insufficient_permissions_exception().

-type put_retention_configuration_errors() ::
    max_number_of_retention_configurations_exceeded_exception() | 
    invalid_parameter_value_exception().

-type put_service_linked_configuration_recorder_errors() ::
    limit_exceeded_exception() | 
    validation_exception() | 
    conflict_exception() | 
    insufficient_permissions_exception().

-type put_stored_query_errors() ::
    too_many_tags_exception() | 
    resource_concurrent_modification_exception() | 
    validation_exception().

-type select_aggregate_resource_config_errors() ::
    invalid_expression_exception() | 
    invalid_next_token_exception() | 
    invalid_limit_exception() | 
    no_such_configuration_aggregator_exception().

-type select_resource_config_errors() ::
    invalid_expression_exception() | 
    invalid_next_token_exception() | 
    invalid_limit_exception().

-type start_config_rules_evaluation_errors() ::
    no_such_config_rule_exception() | 
    limit_exceeded_exception() | 
    invalid_parameter_value_exception() | 
    resource_in_use_exception().

-type start_configuration_recorder_errors() ::
    no_such_configuration_recorder_exception() | 
    no_available_delivery_channel_exception() | 
    unmodifiable_entity_exception().

-type start_remediation_execution_errors() ::
    no_such_remediation_configuration_exception() | 
    invalid_parameter_value_exception() | 
    insufficient_permissions_exception().

-type start_resource_evaluation_errors() ::
    invalid_parameter_value_exception() | 
    idempotent_parameter_mismatch().

-type stop_configuration_recorder_errors() ::
    no_such_configuration_recorder_exception() | 
    unmodifiable_entity_exception().

-type tag_resource_errors() ::
    too_many_tags_exception() | 
    validation_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    validation_exception() | 
    resource_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Adds all resource types specified in the `ResourceTypes' list to
%% the RecordingGroup:
%% https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingGroup.html
%% of specified configuration recorder and includes those resource types when
%% recording.
%%
%% For this operation, the specified configuration recorder must use a
%% RecordingStrategy:
%% https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingStrategy.html
%% that is either `INCLUSION_BY_RESOURCE_TYPES' or
%% `EXCLUSION_BY_RESOURCE_TYPES'.
-spec associate_resource_types(aws_client:aws_client(), associate_resource_types_request()) ->
    {ok, associate_resource_types_response(), tuple()} |
    {error, any()} |
    {error, associate_resource_types_errors(), tuple()}.
associate_resource_types(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_resource_types(Client, Input, []).

-spec associate_resource_types(aws_client:aws_client(), associate_resource_types_request(), proplists:proplist()) ->
    {ok, associate_resource_types_response(), tuple()} |
    {error, any()} |
    {error, associate_resource_types_errors(), tuple()}.
associate_resource_types(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateResourceTypes">>, Input, Options).

%% @doc Returns the current configuration items for resources that are
%% present in your Config aggregator.
%%
%% The operation also returns a list of resources that are not processed in
%% the current request.
%% If there are no unprocessed resources, the operation returns an empty
%% `unprocessedResourceIdentifiers' list.
%%
%% The API does not return results for deleted resources.
%%
%% The API does not return tags and relationships.
-spec batch_get_aggregate_resource_config(aws_client:aws_client(), batch_get_aggregate_resource_config_request()) ->
    {ok, batch_get_aggregate_resource_config_response(), tuple()} |
    {error, any()} |
    {error, batch_get_aggregate_resource_config_errors(), tuple()}.
batch_get_aggregate_resource_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_aggregate_resource_config(Client, Input, []).

-spec batch_get_aggregate_resource_config(aws_client:aws_client(), batch_get_aggregate_resource_config_request(), proplists:proplist()) ->
    {ok, batch_get_aggregate_resource_config_response(), tuple()} |
    {error, any()} |
    {error, batch_get_aggregate_resource_config_errors(), tuple()}.
batch_get_aggregate_resource_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetAggregateResourceConfig">>, Input, Options).

%% @doc Returns the `BaseConfigurationItem' for one or more requested
%% resources.
%%
%% The operation also returns a list of resources that are
%% not processed in the current request. If there are no unprocessed
%% resources, the operation returns an empty unprocessedResourceKeys
%% list.
%%
%% The API does not return results for deleted
%% resources.
%%
%% The API does not return any tags for the requested
%% resources. This information is filtered out of the
%% supplementaryConfiguration section of the API
%% response.
-spec batch_get_resource_config(aws_client:aws_client(), batch_get_resource_config_request()) ->
    {ok, batch_get_resource_config_response(), tuple()} |
    {error, any()} |
    {error, batch_get_resource_config_errors(), tuple()}.
batch_get_resource_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_resource_config(Client, Input, []).

-spec batch_get_resource_config(aws_client:aws_client(), batch_get_resource_config_request(), proplists:proplist()) ->
    {ok, batch_get_resource_config_response(), tuple()} |
    {error, any()} |
    {error, batch_get_resource_config_errors(), tuple()}.
batch_get_resource_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetResourceConfig">>, Input, Options).

%% @doc Deletes the authorization granted to the specified
%% configuration aggregator account in a specified region.
-spec delete_aggregation_authorization(aws_client:aws_client(), delete_aggregation_authorization_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_aggregation_authorization_errors(), tuple()}.
delete_aggregation_authorization(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_aggregation_authorization(Client, Input, []).

-spec delete_aggregation_authorization(aws_client:aws_client(), delete_aggregation_authorization_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_aggregation_authorization_errors(), tuple()}.
delete_aggregation_authorization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAggregationAuthorization">>, Input, Options).

%% @doc Deletes the specified Config rule and all of its evaluation
%% results.
%%
%% Config sets the state of a rule to `DELETING'
%% until the deletion is complete. You cannot update a rule while it is
%% in this state. If you make a `PutConfigRule' or
%% `DeleteConfigRule' request for the rule, you will
%% receive a `ResourceInUseException'.
%%
%% You can check the state of a rule by using the
%% `DescribeConfigRules' request.
%%
%% Recommendation: Stop recording resource compliance before deleting rules
%%
%% It is highly recommended that you stop recording for the
%% `AWS::Config::ResourceCompliance' resource type before you delete
%% rules in your account.
%% Deleting rules creates CIs for `AWS::Config::ResourceCompliance' and
%% can affect your Config configuration recorder:
%% https://docs.aws.amazon.com/config/latest/developerguide/stop-start-recorder.html
%% costs.
%%
%% If you are deleting rules which evaluate a large number of resource types,
%% this can lead to a spike in the number of CIs recorded.
%%
%% Best practice:
%%
%% Stop recording `AWS::Config::ResourceCompliance'
%%
%% Delete rule(s)
%%
%% Turn on recording for `AWS::Config::ResourceCompliance'
-spec delete_config_rule(aws_client:aws_client(), delete_config_rule_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_config_rule_errors(), tuple()}.
delete_config_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_config_rule(Client, Input, []).

-spec delete_config_rule(aws_client:aws_client(), delete_config_rule_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_config_rule_errors(), tuple()}.
delete_config_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteConfigRule">>, Input, Options).

%% @doc Deletes the specified configuration aggregator and the
%% aggregated data associated with the aggregator.
-spec delete_configuration_aggregator(aws_client:aws_client(), delete_configuration_aggregator_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_configuration_aggregator_errors(), tuple()}.
delete_configuration_aggregator(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_configuration_aggregator(Client, Input, []).

-spec delete_configuration_aggregator(aws_client:aws_client(), delete_configuration_aggregator_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_configuration_aggregator_errors(), tuple()}.
delete_configuration_aggregator(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteConfigurationAggregator">>, Input, Options).

%% @doc Deletes the customer managed configuration recorder.
%%
%% This operation does not delete the configuration information that
%% was previously recorded. You will be able to access the previously
%% recorded information by using the
%% GetResourceConfigHistory:
%% https://docs.aws.amazon.com/config/latest/APIReference/API_GetResourceConfigHistory.html
%% operation, but you will not
%% be able to access this information in the Config console until
%% you have created a new customer managed configuration recorder.
-spec delete_configuration_recorder(aws_client:aws_client(), delete_configuration_recorder_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_configuration_recorder_errors(), tuple()}.
delete_configuration_recorder(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_configuration_recorder(Client, Input, []).

-spec delete_configuration_recorder(aws_client:aws_client(), delete_configuration_recorder_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_configuration_recorder_errors(), tuple()}.
delete_configuration_recorder(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteConfigurationRecorder">>, Input, Options).

%% @doc Deletes the specified conformance pack and all the Config rules,
%% remediation actions, and all evaluation results within that
%% conformance pack.
%%
%% Config sets the conformance pack to `DELETE_IN_PROGRESS' until the
%% deletion is complete.
%% You cannot update a conformance pack while it is in this state.
-spec delete_conformance_pack(aws_client:aws_client(), delete_conformance_pack_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_conformance_pack_errors(), tuple()}.
delete_conformance_pack(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_conformance_pack(Client, Input, []).

-spec delete_conformance_pack(aws_client:aws_client(), delete_conformance_pack_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_conformance_pack_errors(), tuple()}.
delete_conformance_pack(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteConformancePack">>, Input, Options).

%% @doc Deletes the delivery channel.
%%
%% Before you can delete the delivery channel, you must stop the customer
%% managed configuration recorder. You can use the
%% `StopConfigurationRecorder' operation to stop the customer managed
%% configuration recorder.
-spec delete_delivery_channel(aws_client:aws_client(), delete_delivery_channel_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_delivery_channel_errors(), tuple()}.
delete_delivery_channel(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_delivery_channel(Client, Input, []).

-spec delete_delivery_channel(aws_client:aws_client(), delete_delivery_channel_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_delivery_channel_errors(), tuple()}.
delete_delivery_channel(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDeliveryChannel">>, Input, Options).

%% @doc Deletes the evaluation results for the specified Config
%% rule.
%%
%% You can specify one Config rule per request. After you
%% delete the evaluation results, you can call the
%% `StartConfigRulesEvaluation' API to start evaluating
%% your Amazon Web Services resources against the rule.
-spec delete_evaluation_results(aws_client:aws_client(), delete_evaluation_results_request()) ->
    {ok, delete_evaluation_results_response(), tuple()} |
    {error, any()} |
    {error, delete_evaluation_results_errors(), tuple()}.
delete_evaluation_results(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_evaluation_results(Client, Input, []).

-spec delete_evaluation_results(aws_client:aws_client(), delete_evaluation_results_request(), proplists:proplist()) ->
    {ok, delete_evaluation_results_response(), tuple()} |
    {error, any()} |
    {error, delete_evaluation_results_errors(), tuple()}.
delete_evaluation_results(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEvaluationResults">>, Input, Options).

%% @doc Deletes the specified organization Config rule and all of its
%% evaluation results from all member accounts in that organization.
%%
%% Only a management account and a delegated administrator account can delete
%% an organization Config rule.
%% When calling this API with a delegated administrator, you must ensure
%% Organizations
%% `ListDelegatedAdministrator' permissions are added.
%%
%% Config sets the state of a rule to DELETE_IN_PROGRESS until the deletion
%% is complete.
%% You cannot update a rule while it is in this state.
-spec delete_organization_config_rule(aws_client:aws_client(), delete_organization_config_rule_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_organization_config_rule_errors(), tuple()}.
delete_organization_config_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_organization_config_rule(Client, Input, []).

-spec delete_organization_config_rule(aws_client:aws_client(), delete_organization_config_rule_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_organization_config_rule_errors(), tuple()}.
delete_organization_config_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteOrganizationConfigRule">>, Input, Options).

%% @doc Deletes the specified organization conformance pack and all of the
%% Config rules and remediation actions from
%% all member accounts in that organization.
%%
%% Only a management account or a delegated administrator account can delete
%% an organization conformance pack.
%% When calling this API with a delegated administrator, you must ensure
%% Organizations
%% `ListDelegatedAdministrator' permissions are added.
%%
%% Config sets the state of a conformance pack to DELETE_IN_PROGRESS until
%% the deletion is complete.
%% You cannot update a conformance pack while it is in this state.
-spec delete_organization_conformance_pack(aws_client:aws_client(), delete_organization_conformance_pack_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_organization_conformance_pack_errors(), tuple()}.
delete_organization_conformance_pack(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_organization_conformance_pack(Client, Input, []).

-spec delete_organization_conformance_pack(aws_client:aws_client(), delete_organization_conformance_pack_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_organization_conformance_pack_errors(), tuple()}.
delete_organization_conformance_pack(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteOrganizationConformancePack">>, Input, Options).

%% @doc Deletes pending authorization requests for a specified
%% aggregator account in a specified region.
-spec delete_pending_aggregation_request(aws_client:aws_client(), delete_pending_aggregation_request_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_pending_aggregation_request_errors(), tuple()}.
delete_pending_aggregation_request(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_pending_aggregation_request(Client, Input, []).

-spec delete_pending_aggregation_request(aws_client:aws_client(), delete_pending_aggregation_request_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_pending_aggregation_request_errors(), tuple()}.
delete_pending_aggregation_request(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePendingAggregationRequest">>, Input, Options).

%% @doc Deletes the remediation configuration.
-spec delete_remediation_configuration(aws_client:aws_client(), delete_remediation_configuration_request()) ->
    {ok, delete_remediation_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_remediation_configuration_errors(), tuple()}.
delete_remediation_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_remediation_configuration(Client, Input, []).

-spec delete_remediation_configuration(aws_client:aws_client(), delete_remediation_configuration_request(), proplists:proplist()) ->
    {ok, delete_remediation_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_remediation_configuration_errors(), tuple()}.
delete_remediation_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRemediationConfiguration">>, Input, Options).

%% @doc Deletes one or more remediation exceptions mentioned in the resource
%% keys.
%%
%% Config generates a remediation exception when a problem occurs executing a
%% remediation action to a specific resource.
%% Remediation exceptions blocks auto-remediation until the exception is
%% cleared.
-spec delete_remediation_exceptions(aws_client:aws_client(), delete_remediation_exceptions_request()) ->
    {ok, delete_remediation_exceptions_response(), tuple()} |
    {error, any()} |
    {error, delete_remediation_exceptions_errors(), tuple()}.
delete_remediation_exceptions(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_remediation_exceptions(Client, Input, []).

-spec delete_remediation_exceptions(aws_client:aws_client(), delete_remediation_exceptions_request(), proplists:proplist()) ->
    {ok, delete_remediation_exceptions_response(), tuple()} |
    {error, any()} |
    {error, delete_remediation_exceptions_errors(), tuple()}.
delete_remediation_exceptions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRemediationExceptions">>, Input, Options).

%% @doc Records the configuration state for a custom resource that has been
%% deleted.
%%
%% This API records a new ConfigurationItem with a ResourceDeleted status.
%% You can retrieve the ConfigurationItems recorded for this resource in your
%% Config History.
-spec delete_resource_config(aws_client:aws_client(), delete_resource_config_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_resource_config_errors(), tuple()}.
delete_resource_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_resource_config(Client, Input, []).

-spec delete_resource_config(aws_client:aws_client(), delete_resource_config_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_resource_config_errors(), tuple()}.
delete_resource_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteResourceConfig">>, Input, Options).

%% @doc Deletes the retention configuration.
-spec delete_retention_configuration(aws_client:aws_client(), delete_retention_configuration_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_retention_configuration_errors(), tuple()}.
delete_retention_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_retention_configuration(Client, Input, []).

-spec delete_retention_configuration(aws_client:aws_client(), delete_retention_configuration_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_retention_configuration_errors(), tuple()}.
delete_retention_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRetentionConfiguration">>, Input, Options).

%% @doc Deletes an existing service-linked configuration recorder.
%%
%% This operation does not delete the configuration information that was
%% previously recorded. You will be able to access the previously
%% recorded information by using the
%% GetResourceConfigHistory:
%% https://docs.aws.amazon.com/config/latest/APIReference/API_GetResourceConfigHistory.html
%% operation, but you will not
%% be able to access this information in the Config console until
%% you have created a new service-linked configuration recorder for the same
%% service.
%%
%% The recording scope determines if you receive configuration items
%%
%% The recording scope is set by the service that is linked to the
%% configuration recorder and determines whether you receive configuration
%% items (CIs) in the delivery channel. If the recording scope is internal,
%% you will not receive CIs in the delivery channel.
-spec delete_service_linked_configuration_recorder(aws_client:aws_client(), delete_service_linked_configuration_recorder_request()) ->
    {ok, delete_service_linked_configuration_recorder_response(), tuple()} |
    {error, any()} |
    {error, delete_service_linked_configuration_recorder_errors(), tuple()}.
delete_service_linked_configuration_recorder(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_service_linked_configuration_recorder(Client, Input, []).

-spec delete_service_linked_configuration_recorder(aws_client:aws_client(), delete_service_linked_configuration_recorder_request(), proplists:proplist()) ->
    {ok, delete_service_linked_configuration_recorder_response(), tuple()} |
    {error, any()} |
    {error, delete_service_linked_configuration_recorder_errors(), tuple()}.
delete_service_linked_configuration_recorder(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteServiceLinkedConfigurationRecorder">>, Input, Options).

%% @doc Deletes the stored query for a single Amazon Web Services account and
%% a single Amazon Web Services Region.
-spec delete_stored_query(aws_client:aws_client(), delete_stored_query_request()) ->
    {ok, delete_stored_query_response(), tuple()} |
    {error, any()} |
    {error, delete_stored_query_errors(), tuple()}.
delete_stored_query(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_stored_query(Client, Input, []).

-spec delete_stored_query(aws_client:aws_client(), delete_stored_query_request(), proplists:proplist()) ->
    {ok, delete_stored_query_response(), tuple()} |
    {error, any()} |
    {error, delete_stored_query_errors(), tuple()}.
delete_stored_query(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteStoredQuery">>, Input, Options).

%% @doc Schedules delivery of a configuration snapshot to the Amazon S3
%% bucket in the specified delivery channel.
%%
%% After the delivery has
%% started, Config sends the following notifications using an
%% Amazon SNS topic that you have specified.
%%
%% Notification of the start of the delivery.
%%
%% Notification of the completion of the delivery, if the
%% delivery was successfully completed.
%%
%% Notification of delivery failure, if the delivery
%% failed.
-spec deliver_config_snapshot(aws_client:aws_client(), deliver_config_snapshot_request()) ->
    {ok, deliver_config_snapshot_response(), tuple()} |
    {error, any()} |
    {error, deliver_config_snapshot_errors(), tuple()}.
deliver_config_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    deliver_config_snapshot(Client, Input, []).

-spec deliver_config_snapshot(aws_client:aws_client(), deliver_config_snapshot_request(), proplists:proplist()) ->
    {ok, deliver_config_snapshot_response(), tuple()} |
    {error, any()} |
    {error, deliver_config_snapshot_errors(), tuple()}.
deliver_config_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeliverConfigSnapshot">>, Input, Options).

%% @doc Returns a list of compliant and noncompliant rules with the
%% number of resources for compliant and noncompliant rules.
%%
%% Does not display rules that do not have compliance results.
%%
%% The results can return an empty result page, but if you
%% have a `nextToken', the results are displayed on the next
%% page.
-spec describe_aggregate_compliance_by_config_rules(aws_client:aws_client(), describe_aggregate_compliance_by_config_rules_request()) ->
    {ok, describe_aggregate_compliance_by_config_rules_response(), tuple()} |
    {error, any()} |
    {error, describe_aggregate_compliance_by_config_rules_errors(), tuple()}.
describe_aggregate_compliance_by_config_rules(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_aggregate_compliance_by_config_rules(Client, Input, []).

-spec describe_aggregate_compliance_by_config_rules(aws_client:aws_client(), describe_aggregate_compliance_by_config_rules_request(), proplists:proplist()) ->
    {ok, describe_aggregate_compliance_by_config_rules_response(), tuple()} |
    {error, any()} |
    {error, describe_aggregate_compliance_by_config_rules_errors(), tuple()}.
describe_aggregate_compliance_by_config_rules(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAggregateComplianceByConfigRules">>, Input, Options).

%% @doc Returns a list of the existing and deleted conformance packs and
%% their associated compliance status with the count of compliant and
%% noncompliant Config rules within each
%% conformance pack.
%%
%% Also returns the total rule count which includes compliant rules,
%% noncompliant rules, and rules that cannot be evaluated due to insufficient
%% data.
%%
%% The results can return an empty result page, but if you have a
%% `nextToken', the results are displayed on the next page.
-spec describe_aggregate_compliance_by_conformance_packs(aws_client:aws_client(), describe_aggregate_compliance_by_conformance_packs_request()) ->
    {ok, describe_aggregate_compliance_by_conformance_packs_response(), tuple()} |
    {error, any()} |
    {error, describe_aggregate_compliance_by_conformance_packs_errors(), tuple()}.
describe_aggregate_compliance_by_conformance_packs(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_aggregate_compliance_by_conformance_packs(Client, Input, []).

-spec describe_aggregate_compliance_by_conformance_packs(aws_client:aws_client(), describe_aggregate_compliance_by_conformance_packs_request(), proplists:proplist()) ->
    {ok, describe_aggregate_compliance_by_conformance_packs_response(), tuple()} |
    {error, any()} |
    {error, describe_aggregate_compliance_by_conformance_packs_errors(), tuple()}.
describe_aggregate_compliance_by_conformance_packs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAggregateComplianceByConformancePacks">>, Input, Options).

%% @doc Returns a list of authorizations granted to various aggregator
%% accounts and regions.
-spec describe_aggregation_authorizations(aws_client:aws_client(), describe_aggregation_authorizations_request()) ->
    {ok, describe_aggregation_authorizations_response(), tuple()} |
    {error, any()} |
    {error, describe_aggregation_authorizations_errors(), tuple()}.
describe_aggregation_authorizations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_aggregation_authorizations(Client, Input, []).

-spec describe_aggregation_authorizations(aws_client:aws_client(), describe_aggregation_authorizations_request(), proplists:proplist()) ->
    {ok, describe_aggregation_authorizations_response(), tuple()} |
    {error, any()} |
    {error, describe_aggregation_authorizations_errors(), tuple()}.
describe_aggregation_authorizations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAggregationAuthorizations">>, Input, Options).

%% @doc Indicates whether the specified Config rules are compliant.
%%
%% If a rule is noncompliant, this operation returns the number of Amazon Web
%% Services
%% resources that do not comply with the rule.
%%
%% A rule is compliant if all of the evaluated resources comply
%% with it. It is noncompliant if any of these resources do not
%% comply.
%%
%% If Config has no current evaluation results for the rule,
%% it returns `INSUFFICIENT_DATA'. This result might
%% indicate one of the following conditions:
%%
%% Config has never invoked an evaluation for the
%% rule. To check whether it has, use the
%% `DescribeConfigRuleEvaluationStatus' action
%% to get the `LastSuccessfulInvocationTime' and
%% `LastFailedInvocationTime'.
%%
%% The rule's Lambda function is failing to send
%% evaluation results to Config. Verify that the role you
%% assigned to your configuration recorder includes the
%% `config:PutEvaluations' permission. If the
%% rule is a custom rule, verify that the Lambda execution
%% role includes the `config:PutEvaluations'
%% permission.
%%
%% The rule's Lambda function has returned
%% `NOT_APPLICABLE' for all evaluation results.
%% This can occur if the resources were deleted or removed from
%% the rule's scope.
-spec describe_compliance_by_config_rule(aws_client:aws_client(), describe_compliance_by_config_rule_request()) ->
    {ok, describe_compliance_by_config_rule_response(), tuple()} |
    {error, any()} |
    {error, describe_compliance_by_config_rule_errors(), tuple()}.
describe_compliance_by_config_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_compliance_by_config_rule(Client, Input, []).

-spec describe_compliance_by_config_rule(aws_client:aws_client(), describe_compliance_by_config_rule_request(), proplists:proplist()) ->
    {ok, describe_compliance_by_config_rule_response(), tuple()} |
    {error, any()} |
    {error, describe_compliance_by_config_rule_errors(), tuple()}.
describe_compliance_by_config_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeComplianceByConfigRule">>, Input, Options).

%% @doc Indicates whether the specified Amazon Web Services resources are
%% compliant.
%%
%% If
%% a resource is noncompliant, this operation returns the number of Config
%% rules that the resource does not comply with.
%%
%% A resource is compliant if it complies with all the Config
%% rules that evaluate it. It is noncompliant if it does not comply
%% with one or more of these rules.
%%
%% If Config has no current evaluation results for the
%% resource, it returns `INSUFFICIENT_DATA'. This result
%% might indicate one of the following conditions about the rules that
%% evaluate the resource:
%%
%% Config has never invoked an evaluation for the
%% rule. To check whether it has, use the
%% `DescribeConfigRuleEvaluationStatus' action
%% to get the `LastSuccessfulInvocationTime' and
%% `LastFailedInvocationTime'.
%%
%% The rule's Lambda function is failing to send
%% evaluation results to Config. Verify that the role that
%% you assigned to your configuration recorder includes the
%% `config:PutEvaluations' permission. If the
%% rule is a custom rule, verify that the Lambda execution
%% role includes the `config:PutEvaluations'
%% permission.
%%
%% The rule's Lambda function has returned
%% `NOT_APPLICABLE' for all evaluation results.
%% This can occur if the resources were deleted or removed from
%% the rule's scope.
-spec describe_compliance_by_resource(aws_client:aws_client(), describe_compliance_by_resource_request()) ->
    {ok, describe_compliance_by_resource_response(), tuple()} |
    {error, any()} |
    {error, describe_compliance_by_resource_errors(), tuple()}.
describe_compliance_by_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_compliance_by_resource(Client, Input, []).

-spec describe_compliance_by_resource(aws_client:aws_client(), describe_compliance_by_resource_request(), proplists:proplist()) ->
    {ok, describe_compliance_by_resource_response(), tuple()} |
    {error, any()} |
    {error, describe_compliance_by_resource_errors(), tuple()}.
describe_compliance_by_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeComplianceByResource">>, Input, Options).

%% @doc Returns status information for each of your Config managed rules.
%%
%% The status includes information such as the last time Config invoked the
%% rule, the last time Config failed to invoke
%% the rule, and the related error for the last failure.
-spec describe_config_rule_evaluation_status(aws_client:aws_client(), describe_config_rule_evaluation_status_request()) ->
    {ok, describe_config_rule_evaluation_status_response(), tuple()} |
    {error, any()} |
    {error, describe_config_rule_evaluation_status_errors(), tuple()}.
describe_config_rule_evaluation_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_config_rule_evaluation_status(Client, Input, []).

-spec describe_config_rule_evaluation_status(aws_client:aws_client(), describe_config_rule_evaluation_status_request(), proplists:proplist()) ->
    {ok, describe_config_rule_evaluation_status_response(), tuple()} |
    {error, any()} |
    {error, describe_config_rule_evaluation_status_errors(), tuple()}.
describe_config_rule_evaluation_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeConfigRuleEvaluationStatus">>, Input, Options).

%% @doc Returns details about your Config rules.
-spec describe_config_rules(aws_client:aws_client(), describe_config_rules_request()) ->
    {ok, describe_config_rules_response(), tuple()} |
    {error, any()} |
    {error, describe_config_rules_errors(), tuple()}.
describe_config_rules(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_config_rules(Client, Input, []).

-spec describe_config_rules(aws_client:aws_client(), describe_config_rules_request(), proplists:proplist()) ->
    {ok, describe_config_rules_response(), tuple()} |
    {error, any()} |
    {error, describe_config_rules_errors(), tuple()}.
describe_config_rules(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeConfigRules">>, Input, Options).

%% @doc Returns status information for sources within an aggregator.
%%
%% The status includes information about the last time Config verified
%% authorization between the source account and an aggregator account. In
%% case of a failure, the status contains the related error code or message.
-spec describe_configuration_aggregator_sources_status(aws_client:aws_client(), describe_configuration_aggregator_sources_status_request()) ->
    {ok, describe_configuration_aggregator_sources_status_response(), tuple()} |
    {error, any()} |
    {error, describe_configuration_aggregator_sources_status_errors(), tuple()}.
describe_configuration_aggregator_sources_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_configuration_aggregator_sources_status(Client, Input, []).

-spec describe_configuration_aggregator_sources_status(aws_client:aws_client(), describe_configuration_aggregator_sources_status_request(), proplists:proplist()) ->
    {ok, describe_configuration_aggregator_sources_status_response(), tuple()} |
    {error, any()} |
    {error, describe_configuration_aggregator_sources_status_errors(), tuple()}.
describe_configuration_aggregator_sources_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeConfigurationAggregatorSourcesStatus">>, Input, Options).

%% @doc Returns the details of one or more configuration aggregators.
%%
%% If the configuration aggregator is not specified, this operation
%% returns the details for all the configuration aggregators associated
%% with the account.
-spec describe_configuration_aggregators(aws_client:aws_client(), describe_configuration_aggregators_request()) ->
    {ok, describe_configuration_aggregators_response(), tuple()} |
    {error, any()} |
    {error, describe_configuration_aggregators_errors(), tuple()}.
describe_configuration_aggregators(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_configuration_aggregators(Client, Input, []).

-spec describe_configuration_aggregators(aws_client:aws_client(), describe_configuration_aggregators_request(), proplists:proplist()) ->
    {ok, describe_configuration_aggregators_response(), tuple()} |
    {error, any()} |
    {error, describe_configuration_aggregators_errors(), tuple()}.
describe_configuration_aggregators(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeConfigurationAggregators">>, Input, Options).

%% @doc Returns the current status of the configuration
%% recorder you specify as well as the status of the last recording event for
%% the configuration recorders.
%%
%% For a detailed status of recording events over time, add your Config
%% events to Amazon CloudWatch metrics and use CloudWatch metrics.
%%
%% If a configuration recorder is not specified, this operation returns the
%% status for the customer managed configuration recorder configured for the
%% account, if applicable.
%%
%% When making a request to this operation, you can only specify one
%% configuration recorder.
-spec describe_configuration_recorder_status(aws_client:aws_client(), describe_configuration_recorder_status_request()) ->
    {ok, describe_configuration_recorder_status_response(), tuple()} |
    {error, any()} |
    {error, describe_configuration_recorder_status_errors(), tuple()}.
describe_configuration_recorder_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_configuration_recorder_status(Client, Input, []).

-spec describe_configuration_recorder_status(aws_client:aws_client(), describe_configuration_recorder_status_request(), proplists:proplist()) ->
    {ok, describe_configuration_recorder_status_response(), tuple()} |
    {error, any()} |
    {error, describe_configuration_recorder_status_errors(), tuple()}.
describe_configuration_recorder_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeConfigurationRecorderStatus">>, Input, Options).

%% @doc Returns details for the configuration recorder you specify.
%%
%% If a configuration recorder is not specified, this operation returns
%% details for the customer managed configuration recorder configured for the
%% account, if applicable.
%%
%% When making a request to this operation, you can only specify one
%% configuration recorder.
-spec describe_configuration_recorders(aws_client:aws_client(), describe_configuration_recorders_request()) ->
    {ok, describe_configuration_recorders_response(), tuple()} |
    {error, any()} |
    {error, describe_configuration_recorders_errors(), tuple()}.
describe_configuration_recorders(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_configuration_recorders(Client, Input, []).

-spec describe_configuration_recorders(aws_client:aws_client(), describe_configuration_recorders_request(), proplists:proplist()) ->
    {ok, describe_configuration_recorders_response(), tuple()} |
    {error, any()} |
    {error, describe_configuration_recorders_errors(), tuple()}.
describe_configuration_recorders(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeConfigurationRecorders">>, Input, Options).

%% @doc Returns compliance details for each rule in that conformance pack.
%%
%% You must provide exact rule names.
-spec describe_conformance_pack_compliance(aws_client:aws_client(), describe_conformance_pack_compliance_request()) ->
    {ok, describe_conformance_pack_compliance_response(), tuple()} |
    {error, any()} |
    {error, describe_conformance_pack_compliance_errors(), tuple()}.
describe_conformance_pack_compliance(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_conformance_pack_compliance(Client, Input, []).

-spec describe_conformance_pack_compliance(aws_client:aws_client(), describe_conformance_pack_compliance_request(), proplists:proplist()) ->
    {ok, describe_conformance_pack_compliance_response(), tuple()} |
    {error, any()} |
    {error, describe_conformance_pack_compliance_errors(), tuple()}.
describe_conformance_pack_compliance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeConformancePackCompliance">>, Input, Options).

%% @doc Provides one or more conformance packs deployment status.
%%
%% If there are no conformance packs then you will see an empty result.
-spec describe_conformance_pack_status(aws_client:aws_client(), describe_conformance_pack_status_request()) ->
    {ok, describe_conformance_pack_status_response(), tuple()} |
    {error, any()} |
    {error, describe_conformance_pack_status_errors(), tuple()}.
describe_conformance_pack_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_conformance_pack_status(Client, Input, []).

-spec describe_conformance_pack_status(aws_client:aws_client(), describe_conformance_pack_status_request(), proplists:proplist()) ->
    {ok, describe_conformance_pack_status_response(), tuple()} |
    {error, any()} |
    {error, describe_conformance_pack_status_errors(), tuple()}.
describe_conformance_pack_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeConformancePackStatus">>, Input, Options).

%% @doc Returns a list of one or more conformance packs.
-spec describe_conformance_packs(aws_client:aws_client(), describe_conformance_packs_request()) ->
    {ok, describe_conformance_packs_response(), tuple()} |
    {error, any()} |
    {error, describe_conformance_packs_errors(), tuple()}.
describe_conformance_packs(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_conformance_packs(Client, Input, []).

-spec describe_conformance_packs(aws_client:aws_client(), describe_conformance_packs_request(), proplists:proplist()) ->
    {ok, describe_conformance_packs_response(), tuple()} |
    {error, any()} |
    {error, describe_conformance_packs_errors(), tuple()}.
describe_conformance_packs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeConformancePacks">>, Input, Options).

%% @doc Returns the current status of the specified delivery channel.
%%
%% If a delivery channel is not specified, this operation returns the
%% current status of all delivery channels associated with the
%% account.
%%
%% Currently, you can specify only one delivery channel per
%% region in your account.
-spec describe_delivery_channel_status(aws_client:aws_client(), describe_delivery_channel_status_request()) ->
    {ok, describe_delivery_channel_status_response(), tuple()} |
    {error, any()} |
    {error, describe_delivery_channel_status_errors(), tuple()}.
describe_delivery_channel_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_delivery_channel_status(Client, Input, []).

-spec describe_delivery_channel_status(aws_client:aws_client(), describe_delivery_channel_status_request(), proplists:proplist()) ->
    {ok, describe_delivery_channel_status_response(), tuple()} |
    {error, any()} |
    {error, describe_delivery_channel_status_errors(), tuple()}.
describe_delivery_channel_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDeliveryChannelStatus">>, Input, Options).

%% @doc Returns details about the specified delivery channel.
%%
%% If a
%% delivery channel is not specified, this operation returns the details
%% of all delivery channels associated with the account.
%%
%% Currently, you can specify only one delivery channel per
%% region in your account.
-spec describe_delivery_channels(aws_client:aws_client(), describe_delivery_channels_request()) ->
    {ok, describe_delivery_channels_response(), tuple()} |
    {error, any()} |
    {error, describe_delivery_channels_errors(), tuple()}.
describe_delivery_channels(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_delivery_channels(Client, Input, []).

-spec describe_delivery_channels(aws_client:aws_client(), describe_delivery_channels_request(), proplists:proplist()) ->
    {ok, describe_delivery_channels_response(), tuple()} |
    {error, any()} |
    {error, describe_delivery_channels_errors(), tuple()}.
describe_delivery_channels(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDeliveryChannels">>, Input, Options).

%% @doc Provides organization Config rule deployment status for an
%% organization.
%%
%% The status is not considered successful until organization Config rule is
%% successfully deployed in all the member
%% accounts with an exception of excluded accounts.
%%
%% When you specify the limit and the next token, you receive a paginated
%% response.
%% Limit and next token are not applicable if you specify organization Config
%% rule names.
%% It is only applicable, when you request all the organization Config rules.
-spec describe_organization_config_rule_statuses(aws_client:aws_client(), describe_organization_config_rule_statuses_request()) ->
    {ok, describe_organization_config_rule_statuses_response(), tuple()} |
    {error, any()} |
    {error, describe_organization_config_rule_statuses_errors(), tuple()}.
describe_organization_config_rule_statuses(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_organization_config_rule_statuses(Client, Input, []).

-spec describe_organization_config_rule_statuses(aws_client:aws_client(), describe_organization_config_rule_statuses_request(), proplists:proplist()) ->
    {ok, describe_organization_config_rule_statuses_response(), tuple()} |
    {error, any()} |
    {error, describe_organization_config_rule_statuses_errors(), tuple()}.
describe_organization_config_rule_statuses(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeOrganizationConfigRuleStatuses">>, Input, Options).

%% @doc Returns a list of organization Config rules.
%%
%% When you specify the limit and the next token, you receive a paginated
%% response.
%%
%% Limit and next token are not applicable if you specify organization Config
%% rule names.
%% It is only applicable, when you request all the organization Config rules.
%%
%% For accounts within an organization
%%
%% If you deploy an organizational rule or conformance pack in an
%% organization
%% administrator account, and then establish a delegated administrator and
%% deploy an
%% organizational rule or conformance pack in the delegated administrator
%% account, you
%% won't be able to see the organizational rule or conformance pack in
%% the organization
%% administrator account from the delegated administrator account or see the
%% organizational
%% rule or conformance pack in the delegated administrator account from
%% organization
%% administrator account. The `DescribeOrganizationConfigRules' and
%% `DescribeOrganizationConformancePacks' APIs can only see and interact
%% with
%% the organization-related resource that were deployed from within the
%% account calling
%% those APIs.
-spec describe_organization_config_rules(aws_client:aws_client(), describe_organization_config_rules_request()) ->
    {ok, describe_organization_config_rules_response(), tuple()} |
    {error, any()} |
    {error, describe_organization_config_rules_errors(), tuple()}.
describe_organization_config_rules(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_organization_config_rules(Client, Input, []).

-spec describe_organization_config_rules(aws_client:aws_client(), describe_organization_config_rules_request(), proplists:proplist()) ->
    {ok, describe_organization_config_rules_response(), tuple()} |
    {error, any()} |
    {error, describe_organization_config_rules_errors(), tuple()}.
describe_organization_config_rules(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeOrganizationConfigRules">>, Input, Options).

%% @doc Provides organization conformance pack deployment status for an
%% organization.
%%
%% The status is not considered successful until organization conformance
%% pack is successfully
%% deployed in all the member accounts with an exception of excluded
%% accounts.
%%
%% When you specify the limit and the next token, you receive a paginated
%% response.
%% Limit and next token are not applicable if you specify organization
%% conformance pack names.
%% They are only applicable, when you request all the organization
%% conformance packs.
-spec describe_organization_conformance_pack_statuses(aws_client:aws_client(), describe_organization_conformance_pack_statuses_request()) ->
    {ok, describe_organization_conformance_pack_statuses_response(), tuple()} |
    {error, any()} |
    {error, describe_organization_conformance_pack_statuses_errors(), tuple()}.
describe_organization_conformance_pack_statuses(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_organization_conformance_pack_statuses(Client, Input, []).

-spec describe_organization_conformance_pack_statuses(aws_client:aws_client(), describe_organization_conformance_pack_statuses_request(), proplists:proplist()) ->
    {ok, describe_organization_conformance_pack_statuses_response(), tuple()} |
    {error, any()} |
    {error, describe_organization_conformance_pack_statuses_errors(), tuple()}.
describe_organization_conformance_pack_statuses(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeOrganizationConformancePackStatuses">>, Input, Options).

%% @doc Returns a list of organization conformance packs.
%%
%% When you specify the limit and the next token, you receive a paginated
%% response.
%%
%% Limit and next token are not applicable if you specify organization
%% conformance packs names. They are only applicable,
%% when you request all the organization conformance packs.
%%
%% For accounts within an organization
%%
%% If you deploy an organizational rule or conformance pack in an
%% organization
%% administrator account, and then establish a delegated administrator and
%% deploy an
%% organizational rule or conformance pack in the delegated administrator
%% account, you
%% won't be able to see the organizational rule or conformance pack in
%% the organization
%% administrator account from the delegated administrator account or see the
%% organizational
%% rule or conformance pack in the delegated administrator account from
%% organization
%% administrator account. The `DescribeOrganizationConfigRules' and
%% `DescribeOrganizationConformancePacks' APIs can only see and interact
%% with
%% the organization-related resource that were deployed from within the
%% account calling
%% those APIs.
-spec describe_organization_conformance_packs(aws_client:aws_client(), describe_organization_conformance_packs_request()) ->
    {ok, describe_organization_conformance_packs_response(), tuple()} |
    {error, any()} |
    {error, describe_organization_conformance_packs_errors(), tuple()}.
describe_organization_conformance_packs(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_organization_conformance_packs(Client, Input, []).

-spec describe_organization_conformance_packs(aws_client:aws_client(), describe_organization_conformance_packs_request(), proplists:proplist()) ->
    {ok, describe_organization_conformance_packs_response(), tuple()} |
    {error, any()} |
    {error, describe_organization_conformance_packs_errors(), tuple()}.
describe_organization_conformance_packs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeOrganizationConformancePacks">>, Input, Options).

%% @doc Returns a list of all pending aggregation requests.
-spec describe_pending_aggregation_requests(aws_client:aws_client(), describe_pending_aggregation_requests_request()) ->
    {ok, describe_pending_aggregation_requests_response(), tuple()} |
    {error, any()} |
    {error, describe_pending_aggregation_requests_errors(), tuple()}.
describe_pending_aggregation_requests(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_pending_aggregation_requests(Client, Input, []).

-spec describe_pending_aggregation_requests(aws_client:aws_client(), describe_pending_aggregation_requests_request(), proplists:proplist()) ->
    {ok, describe_pending_aggregation_requests_response(), tuple()} |
    {error, any()} |
    {error, describe_pending_aggregation_requests_errors(), tuple()}.
describe_pending_aggregation_requests(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePendingAggregationRequests">>, Input, Options).

%% @doc Returns the details of one or more remediation configurations.
-spec describe_remediation_configurations(aws_client:aws_client(), describe_remediation_configurations_request()) ->
    {ok, describe_remediation_configurations_response(), tuple()} |
    {error, any()}.
describe_remediation_configurations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_remediation_configurations(Client, Input, []).

-spec describe_remediation_configurations(aws_client:aws_client(), describe_remediation_configurations_request(), proplists:proplist()) ->
    {ok, describe_remediation_configurations_response(), tuple()} |
    {error, any()}.
describe_remediation_configurations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRemediationConfigurations">>, Input, Options).

%% @doc Returns the details of one or more remediation exceptions.
%%
%% A detailed view of a remediation exception for a set of resources that
%% includes an explanation of an exception and the time when the exception
%% will be deleted.
%% When you specify the limit and the next token, you receive a paginated
%% response.
%%
%% Config generates a remediation exception when a problem occurs executing a
%% remediation action to a specific resource.
%% Remediation exceptions blocks auto-remediation until the exception is
%% cleared.
%%
%% When you specify the limit and the next token, you receive a paginated
%% response.
%%
%% Limit and next token are not applicable if you request resources in batch.
%% It is only applicable, when you request all resources.
-spec describe_remediation_exceptions(aws_client:aws_client(), describe_remediation_exceptions_request()) ->
    {ok, describe_remediation_exceptions_response(), tuple()} |
    {error, any()} |
    {error, describe_remediation_exceptions_errors(), tuple()}.
describe_remediation_exceptions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_remediation_exceptions(Client, Input, []).

-spec describe_remediation_exceptions(aws_client:aws_client(), describe_remediation_exceptions_request(), proplists:proplist()) ->
    {ok, describe_remediation_exceptions_response(), tuple()} |
    {error, any()} |
    {error, describe_remediation_exceptions_errors(), tuple()}.
describe_remediation_exceptions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRemediationExceptions">>, Input, Options).

%% @doc Provides a detailed view of a Remediation Execution for a set of
%% resources including state, timestamps for when steps for the remediation
%% execution occur, and any error messages for steps that have failed.
%%
%% When you specify the limit and the next token, you receive a paginated
%% response.
-spec describe_remediation_execution_status(aws_client:aws_client(), describe_remediation_execution_status_request()) ->
    {ok, describe_remediation_execution_status_response(), tuple()} |
    {error, any()} |
    {error, describe_remediation_execution_status_errors(), tuple()}.
describe_remediation_execution_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_remediation_execution_status(Client, Input, []).

-spec describe_remediation_execution_status(aws_client:aws_client(), describe_remediation_execution_status_request(), proplists:proplist()) ->
    {ok, describe_remediation_execution_status_response(), tuple()} |
    {error, any()} |
    {error, describe_remediation_execution_status_errors(), tuple()}.
describe_remediation_execution_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRemediationExecutionStatus">>, Input, Options).

%% @doc Returns the details of one or more retention configurations.
%%
%% If
%% the retention configuration name is not specified, this operation
%% returns the details for all the retention configurations for that
%% account.
%%
%% Currently, Config supports only one retention
%% configuration per region in your account.
-spec describe_retention_configurations(aws_client:aws_client(), describe_retention_configurations_request()) ->
    {ok, describe_retention_configurations_response(), tuple()} |
    {error, any()} |
    {error, describe_retention_configurations_errors(), tuple()}.
describe_retention_configurations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_retention_configurations(Client, Input, []).

-spec describe_retention_configurations(aws_client:aws_client(), describe_retention_configurations_request(), proplists:proplist()) ->
    {ok, describe_retention_configurations_response(), tuple()} |
    {error, any()} |
    {error, describe_retention_configurations_errors(), tuple()}.
describe_retention_configurations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRetentionConfigurations">>, Input, Options).

%% @doc Removes all resource types specified in the `ResourceTypes' list
%% from the RecordingGroup:
%% https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingGroup.html
%% of configuration recorder and excludes these resource types when
%% recording.
%%
%% For this operation, the configuration recorder must use a
%% RecordingStrategy:
%% https://docs.aws.amazon.com/config/latest/APIReference/API_RecordingStrategy.html
%% that is either `INCLUSION_BY_RESOURCE_TYPES' or
%% `EXCLUSION_BY_RESOURCE_TYPES'.
-spec disassociate_resource_types(aws_client:aws_client(), disassociate_resource_types_request()) ->
    {ok, disassociate_resource_types_response(), tuple()} |
    {error, any()} |
    {error, disassociate_resource_types_errors(), tuple()}.
disassociate_resource_types(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_resource_types(Client, Input, []).

-spec disassociate_resource_types(aws_client:aws_client(), disassociate_resource_types_request(), proplists:proplist()) ->
    {ok, disassociate_resource_types_response(), tuple()} |
    {error, any()} |
    {error, disassociate_resource_types_errors(), tuple()}.
disassociate_resource_types(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateResourceTypes">>, Input, Options).

%% @doc Returns the evaluation results for the specified Config
%% rule for a specific resource in a rule.
%%
%% The results indicate which
%% Amazon Web Services resources were evaluated by the rule, when each
%% resource was
%% last evaluated, and whether each resource complies with the rule.
%%
%% The results can return an empty result page. But if you
%% have a `nextToken', the results are displayed on the next
%% page.
-spec get_aggregate_compliance_details_by_config_rule(aws_client:aws_client(), get_aggregate_compliance_details_by_config_rule_request()) ->
    {ok, get_aggregate_compliance_details_by_config_rule_response(), tuple()} |
    {error, any()} |
    {error, get_aggregate_compliance_details_by_config_rule_errors(), tuple()}.
get_aggregate_compliance_details_by_config_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_aggregate_compliance_details_by_config_rule(Client, Input, []).

-spec get_aggregate_compliance_details_by_config_rule(aws_client:aws_client(), get_aggregate_compliance_details_by_config_rule_request(), proplists:proplist()) ->
    {ok, get_aggregate_compliance_details_by_config_rule_response(), tuple()} |
    {error, any()} |
    {error, get_aggregate_compliance_details_by_config_rule_errors(), tuple()}.
get_aggregate_compliance_details_by_config_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAggregateComplianceDetailsByConfigRule">>, Input, Options).

%% @doc Returns the number of compliant and noncompliant rules for one
%% or more accounts and regions in an aggregator.
%%
%% The results can return an empty result page, but if you
%% have a nextToken, the results are displayed on the next
%% page.
-spec get_aggregate_config_rule_compliance_summary(aws_client:aws_client(), get_aggregate_config_rule_compliance_summary_request()) ->
    {ok, get_aggregate_config_rule_compliance_summary_response(), tuple()} |
    {error, any()} |
    {error, get_aggregate_config_rule_compliance_summary_errors(), tuple()}.
get_aggregate_config_rule_compliance_summary(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_aggregate_config_rule_compliance_summary(Client, Input, []).

-spec get_aggregate_config_rule_compliance_summary(aws_client:aws_client(), get_aggregate_config_rule_compliance_summary_request(), proplists:proplist()) ->
    {ok, get_aggregate_config_rule_compliance_summary_response(), tuple()} |
    {error, any()} |
    {error, get_aggregate_config_rule_compliance_summary_errors(), tuple()}.
get_aggregate_config_rule_compliance_summary(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAggregateConfigRuleComplianceSummary">>, Input, Options).

%% @doc Returns the count of compliant and noncompliant conformance packs
%% across all Amazon Web Services accounts and Amazon Web Services Regions in
%% an aggregator.
%%
%% You can filter based on Amazon Web Services account ID or Amazon Web
%% Services Region.
%%
%% The results can return an empty result page, but if you have a nextToken,
%% the results are displayed on the next page.
-spec get_aggregate_conformance_pack_compliance_summary(aws_client:aws_client(), get_aggregate_conformance_pack_compliance_summary_request()) ->
    {ok, get_aggregate_conformance_pack_compliance_summary_response(), tuple()} |
    {error, any()} |
    {error, get_aggregate_conformance_pack_compliance_summary_errors(), tuple()}.
get_aggregate_conformance_pack_compliance_summary(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_aggregate_conformance_pack_compliance_summary(Client, Input, []).

-spec get_aggregate_conformance_pack_compliance_summary(aws_client:aws_client(), get_aggregate_conformance_pack_compliance_summary_request(), proplists:proplist()) ->
    {ok, get_aggregate_conformance_pack_compliance_summary_response(), tuple()} |
    {error, any()} |
    {error, get_aggregate_conformance_pack_compliance_summary_errors(), tuple()}.
get_aggregate_conformance_pack_compliance_summary(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAggregateConformancePackComplianceSummary">>, Input, Options).

%% @doc Returns the resource counts across accounts and regions that are
%% present in your Config aggregator.
%%
%% You can request the resource counts by providing filters and GroupByKey.
%%
%% For example, if the input contains accountID 12345678910 and region
%% us-east-1 in filters, the API returns the count of resources in account ID
%% 12345678910 and region us-east-1.
%% If the input contains ACCOUNT_ID as a GroupByKey, the API returns resource
%% counts for all source accounts that are present in your aggregator.
-spec get_aggregate_discovered_resource_counts(aws_client:aws_client(), get_aggregate_discovered_resource_counts_request()) ->
    {ok, get_aggregate_discovered_resource_counts_response(), tuple()} |
    {error, any()} |
    {error, get_aggregate_discovered_resource_counts_errors(), tuple()}.
get_aggregate_discovered_resource_counts(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_aggregate_discovered_resource_counts(Client, Input, []).

-spec get_aggregate_discovered_resource_counts(aws_client:aws_client(), get_aggregate_discovered_resource_counts_request(), proplists:proplist()) ->
    {ok, get_aggregate_discovered_resource_counts_response(), tuple()} |
    {error, any()} |
    {error, get_aggregate_discovered_resource_counts_errors(), tuple()}.
get_aggregate_discovered_resource_counts(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAggregateDiscoveredResourceCounts">>, Input, Options).

%% @doc Returns configuration item that is aggregated for your specific
%% resource in a specific source account and region.
%%
%% The API does not return results for deleted resources.
-spec get_aggregate_resource_config(aws_client:aws_client(), get_aggregate_resource_config_request()) ->
    {ok, get_aggregate_resource_config_response(), tuple()} |
    {error, any()} |
    {error, get_aggregate_resource_config_errors(), tuple()}.
get_aggregate_resource_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_aggregate_resource_config(Client, Input, []).

-spec get_aggregate_resource_config(aws_client:aws_client(), get_aggregate_resource_config_request(), proplists:proplist()) ->
    {ok, get_aggregate_resource_config_response(), tuple()} |
    {error, any()} |
    {error, get_aggregate_resource_config_errors(), tuple()}.
get_aggregate_resource_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAggregateResourceConfig">>, Input, Options).

%% @doc Returns the evaluation results for the specified Config
%% rule.
%%
%% The results indicate which Amazon Web Services resources were evaluated by
%% the
%% rule, when each resource was last evaluated, and whether each
%% resource complies with the rule.
-spec get_compliance_details_by_config_rule(aws_client:aws_client(), get_compliance_details_by_config_rule_request()) ->
    {ok, get_compliance_details_by_config_rule_response(), tuple()} |
    {error, any()} |
    {error, get_compliance_details_by_config_rule_errors(), tuple()}.
get_compliance_details_by_config_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_compliance_details_by_config_rule(Client, Input, []).

-spec get_compliance_details_by_config_rule(aws_client:aws_client(), get_compliance_details_by_config_rule_request(), proplists:proplist()) ->
    {ok, get_compliance_details_by_config_rule_response(), tuple()} |
    {error, any()} |
    {error, get_compliance_details_by_config_rule_errors(), tuple()}.
get_compliance_details_by_config_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetComplianceDetailsByConfigRule">>, Input, Options).

%% @doc Returns the evaluation results for the specified Amazon Web Services
%% resource.
%%
%% The results indicate which Config rules were used to evaluate
%% the resource, when each rule was last invoked, and whether the resource
%% complies with each rule.
-spec get_compliance_details_by_resource(aws_client:aws_client(), get_compliance_details_by_resource_request()) ->
    {ok, get_compliance_details_by_resource_response(), tuple()} |
    {error, any()} |
    {error, get_compliance_details_by_resource_errors(), tuple()}.
get_compliance_details_by_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_compliance_details_by_resource(Client, Input, []).

-spec get_compliance_details_by_resource(aws_client:aws_client(), get_compliance_details_by_resource_request(), proplists:proplist()) ->
    {ok, get_compliance_details_by_resource_response(), tuple()} |
    {error, any()} |
    {error, get_compliance_details_by_resource_errors(), tuple()}.
get_compliance_details_by_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetComplianceDetailsByResource">>, Input, Options).

%% @doc Returns the number of Config rules that are compliant and
%% noncompliant, up to a maximum of 25 for each.
-spec get_compliance_summary_by_config_rule(aws_client:aws_client(), #{}) ->
    {ok, get_compliance_summary_by_config_rule_response(), tuple()} |
    {error, any()}.
get_compliance_summary_by_config_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_compliance_summary_by_config_rule(Client, Input, []).

-spec get_compliance_summary_by_config_rule(aws_client:aws_client(), #{}, proplists:proplist()) ->
    {ok, get_compliance_summary_by_config_rule_response(), tuple()} |
    {error, any()}.
get_compliance_summary_by_config_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetComplianceSummaryByConfigRule">>, Input, Options).

%% @doc Returns the number of resources that are compliant and the
%% number that are noncompliant.
%%
%% You can specify one or more resource
%% types to get these numbers for each resource type. The maximum
%% number returned is 100.
-spec get_compliance_summary_by_resource_type(aws_client:aws_client(), get_compliance_summary_by_resource_type_request()) ->
    {ok, get_compliance_summary_by_resource_type_response(), tuple()} |
    {error, any()} |
    {error, get_compliance_summary_by_resource_type_errors(), tuple()}.
get_compliance_summary_by_resource_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_compliance_summary_by_resource_type(Client, Input, []).

-spec get_compliance_summary_by_resource_type(aws_client:aws_client(), get_compliance_summary_by_resource_type_request(), proplists:proplist()) ->
    {ok, get_compliance_summary_by_resource_type_response(), tuple()} |
    {error, any()} |
    {error, get_compliance_summary_by_resource_type_errors(), tuple()}.
get_compliance_summary_by_resource_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetComplianceSummaryByResourceType">>, Input, Options).

%% @doc Returns compliance details of a conformance pack for all Amazon Web
%% Services resources that are monitered by conformance pack.
-spec get_conformance_pack_compliance_details(aws_client:aws_client(), get_conformance_pack_compliance_details_request()) ->
    {ok, get_conformance_pack_compliance_details_response(), tuple()} |
    {error, any()} |
    {error, get_conformance_pack_compliance_details_errors(), tuple()}.
get_conformance_pack_compliance_details(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_conformance_pack_compliance_details(Client, Input, []).

-spec get_conformance_pack_compliance_details(aws_client:aws_client(), get_conformance_pack_compliance_details_request(), proplists:proplist()) ->
    {ok, get_conformance_pack_compliance_details_response(), tuple()} |
    {error, any()} |
    {error, get_conformance_pack_compliance_details_errors(), tuple()}.
get_conformance_pack_compliance_details(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetConformancePackComplianceDetails">>, Input, Options).

%% @doc Returns compliance details for the conformance pack based on the
%% cumulative compliance results of all the rules in that conformance pack.
-spec get_conformance_pack_compliance_summary(aws_client:aws_client(), get_conformance_pack_compliance_summary_request()) ->
    {ok, get_conformance_pack_compliance_summary_response(), tuple()} |
    {error, any()} |
    {error, get_conformance_pack_compliance_summary_errors(), tuple()}.
get_conformance_pack_compliance_summary(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_conformance_pack_compliance_summary(Client, Input, []).

-spec get_conformance_pack_compliance_summary(aws_client:aws_client(), get_conformance_pack_compliance_summary_request(), proplists:proplist()) ->
    {ok, get_conformance_pack_compliance_summary_response(), tuple()} |
    {error, any()} |
    {error, get_conformance_pack_compliance_summary_errors(), tuple()}.
get_conformance_pack_compliance_summary(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetConformancePackComplianceSummary">>, Input, Options).

%% @doc Returns the policy definition containing the logic for your Config
%% Custom Policy rule.
-spec get_custom_rule_policy(aws_client:aws_client(), get_custom_rule_policy_request()) ->
    {ok, get_custom_rule_policy_response(), tuple()} |
    {error, any()} |
    {error, get_custom_rule_policy_errors(), tuple()}.
get_custom_rule_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_custom_rule_policy(Client, Input, []).

-spec get_custom_rule_policy(aws_client:aws_client(), get_custom_rule_policy_request(), proplists:proplist()) ->
    {ok, get_custom_rule_policy_response(), tuple()} |
    {error, any()} |
    {error, get_custom_rule_policy_errors(), tuple()}.
get_custom_rule_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCustomRulePolicy">>, Input, Options).

%% @doc Returns the resource types, the number of each resource type,
%% and the total number of resources that Config is recording in
%% this region for your Amazon Web Services account.
%%
%% == Example ==
%%
%% Config is recording three resource types in the US
%% East (Ohio) Region for your account: 25 EC2 instances, 20
%% IAM users, and 15 S3 buckets.
%%
%% You make a call to the
%% `GetDiscoveredResourceCounts' action and
%% specify that you want all resource types.
%%
%% Config returns the following:
%%
%% The resource types (EC2 instances, IAM users,
%% and S3 buckets).
%%
%% The number of each resource type (25, 20, and
%% 15).
%%
%% The total number of all resources
%% (60).
%%
%% The response is paginated. By default, Config lists 100
%% `ResourceCount' objects on each page. You can
%% customize this number with the `limit' parameter. The
%% response includes a `nextToken' string. To get the next
%% page of results, run the request again and specify the string for
%% the `nextToken' parameter.
%%
%% If you make a call to the `GetDiscoveredResourceCounts' action, you
%% might
%% not immediately receive resource counts in the following
%% situations:
%%
%% You are a new Config customer.
%%
%% You just enabled resource recording.
%%
%% It might take a few minutes for Config to record and
%% count your resources. Wait a few minutes and then retry the
%% `GetDiscoveredResourceCounts' action.
-spec get_discovered_resource_counts(aws_client:aws_client(), get_discovered_resource_counts_request()) ->
    {ok, get_discovered_resource_counts_response(), tuple()} |
    {error, any()} |
    {error, get_discovered_resource_counts_errors(), tuple()}.
get_discovered_resource_counts(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_discovered_resource_counts(Client, Input, []).

-spec get_discovered_resource_counts(aws_client:aws_client(), get_discovered_resource_counts_request(), proplists:proplist()) ->
    {ok, get_discovered_resource_counts_response(), tuple()} |
    {error, any()} |
    {error, get_discovered_resource_counts_errors(), tuple()}.
get_discovered_resource_counts(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDiscoveredResourceCounts">>, Input, Options).

%% @doc Returns detailed status for each member account within an
%% organization for a given organization Config rule.
-spec get_organization_config_rule_detailed_status(aws_client:aws_client(), get_organization_config_rule_detailed_status_request()) ->
    {ok, get_organization_config_rule_detailed_status_response(), tuple()} |
    {error, any()} |
    {error, get_organization_config_rule_detailed_status_errors(), tuple()}.
get_organization_config_rule_detailed_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_organization_config_rule_detailed_status(Client, Input, []).

-spec get_organization_config_rule_detailed_status(aws_client:aws_client(), get_organization_config_rule_detailed_status_request(), proplists:proplist()) ->
    {ok, get_organization_config_rule_detailed_status_response(), tuple()} |
    {error, any()} |
    {error, get_organization_config_rule_detailed_status_errors(), tuple()}.
get_organization_config_rule_detailed_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetOrganizationConfigRuleDetailedStatus">>, Input, Options).

%% @doc Returns detailed status for each member account within an
%% organization for a given organization conformance pack.
-spec get_organization_conformance_pack_detailed_status(aws_client:aws_client(), get_organization_conformance_pack_detailed_status_request()) ->
    {ok, get_organization_conformance_pack_detailed_status_response(), tuple()} |
    {error, any()} |
    {error, get_organization_conformance_pack_detailed_status_errors(), tuple()}.
get_organization_conformance_pack_detailed_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_organization_conformance_pack_detailed_status(Client, Input, []).

-spec get_organization_conformance_pack_detailed_status(aws_client:aws_client(), get_organization_conformance_pack_detailed_status_request(), proplists:proplist()) ->
    {ok, get_organization_conformance_pack_detailed_status_response(), tuple()} |
    {error, any()} |
    {error, get_organization_conformance_pack_detailed_status_errors(), tuple()}.
get_organization_conformance_pack_detailed_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetOrganizationConformancePackDetailedStatus">>, Input, Options).

%% @doc Returns the policy definition containing the logic for your
%% organization Config Custom Policy rule.
-spec get_organization_custom_rule_policy(aws_client:aws_client(), get_organization_custom_rule_policy_request()) ->
    {ok, get_organization_custom_rule_policy_response(), tuple()} |
    {error, any()} |
    {error, get_organization_custom_rule_policy_errors(), tuple()}.
get_organization_custom_rule_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_organization_custom_rule_policy(Client, Input, []).

-spec get_organization_custom_rule_policy(aws_client:aws_client(), get_organization_custom_rule_policy_request(), proplists:proplist()) ->
    {ok, get_organization_custom_rule_policy_response(), tuple()} |
    {error, any()} |
    {error, get_organization_custom_rule_policy_errors(), tuple()}.
get_organization_custom_rule_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetOrganizationCustomRulePolicy">>, Input, Options).

%% @doc
%% For accurate reporting on the compliance status, you must record the
%% `AWS::Config::ResourceCompliance' resource type.
%%
%% For more information, see Selecting Which Resources Config Records:
%% https://docs.aws.amazon.com/config/latest/developerguide/select-resources.html.
%%
%% Returns a list of `ConfigurationItems' for the specified resource.
%% The list contains details about each state of the resource
%% during the specified time interval. If you specified a retention
%% period to retain your `ConfigurationItems' between a
%% minimum of 30 days and a maximum of 7 years (2557 days), Config
%% returns the `ConfigurationItems' for the specified
%% retention period.
%%
%% The response is paginated. By default, Config returns a
%% limit of 10 configuration items per page. You can customize this
%% number with the `limit' parameter. The response includes
%% a `nextToken' string. To get the next page of results,
%% run the request again and specify the string for the
%% `nextToken' parameter.
%%
%% Each call to the API is limited to span a duration of seven
%% days. It is likely that the number of records returned is
%% smaller than the specified `limit'. In such cases,
%% you can make another call, using the
%% `nextToken'.
-spec get_resource_config_history(aws_client:aws_client(), get_resource_config_history_request()) ->
    {ok, get_resource_config_history_response(), tuple()} |
    {error, any()} |
    {error, get_resource_config_history_errors(), tuple()}.
get_resource_config_history(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_resource_config_history(Client, Input, []).

-spec get_resource_config_history(aws_client:aws_client(), get_resource_config_history_request(), proplists:proplist()) ->
    {ok, get_resource_config_history_response(), tuple()} |
    {error, any()} |
    {error, get_resource_config_history_errors(), tuple()}.
get_resource_config_history(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetResourceConfigHistory">>, Input, Options).

%% @doc Returns a summary of resource evaluation for the specified resource
%% evaluation ID from the proactive rules that were run.
%%
%% The results indicate which evaluation context was used to evaluate the
%% rules, which resource details were evaluated,
%% the evaluation mode that was run, and whether the resource details comply
%% with the configuration of the proactive rules.
%%
%% To see additional information about the evaluation result, such as which
%% rule flagged a resource as NON_COMPLIANT, use the
%% GetComplianceDetailsByResource:
%% https://docs.aws.amazon.com/config/latest/APIReference/API_GetComplianceDetailsByResource.html
%% API.
%% For more information, see the Examples:
%% https://docs.aws.amazon.com/config/latest/APIReference/API_GetResourceEvaluationSummary.html#API_GetResourceEvaluationSummary_Examples
%% section.
-spec get_resource_evaluation_summary(aws_client:aws_client(), get_resource_evaluation_summary_request()) ->
    {ok, get_resource_evaluation_summary_response(), tuple()} |
    {error, any()} |
    {error, get_resource_evaluation_summary_errors(), tuple()}.
get_resource_evaluation_summary(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_resource_evaluation_summary(Client, Input, []).

-spec get_resource_evaluation_summary(aws_client:aws_client(), get_resource_evaluation_summary_request(), proplists:proplist()) ->
    {ok, get_resource_evaluation_summary_response(), tuple()} |
    {error, any()} |
    {error, get_resource_evaluation_summary_errors(), tuple()}.
get_resource_evaluation_summary(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetResourceEvaluationSummary">>, Input, Options).

%% @doc Returns the details of a specific stored query.
-spec get_stored_query(aws_client:aws_client(), get_stored_query_request()) ->
    {ok, get_stored_query_response(), tuple()} |
    {error, any()} |
    {error, get_stored_query_errors(), tuple()}.
get_stored_query(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_stored_query(Client, Input, []).

-spec get_stored_query(aws_client:aws_client(), get_stored_query_request(), proplists:proplist()) ->
    {ok, get_stored_query_response(), tuple()} |
    {error, any()} |
    {error, get_stored_query_errors(), tuple()}.
get_stored_query(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetStoredQuery">>, Input, Options).

%% @doc Accepts a resource type and returns a list of resource identifiers
%% that are aggregated for a specific resource type across accounts and
%% regions.
%%
%% A resource identifier includes the resource type, ID, (if available) the
%% custom resource name, source account, and source region.
%% You can narrow the results to include only resources that have specific
%% resource IDs, or a resource name, or source account ID, or source region.
%%
%% For example, if the input consists of accountID 12345678910 and the region
%% is us-east-1 for resource type `AWS::EC2::Instance' then the API
%% returns all the EC2 instance identifiers of accountID 12345678910 and
%% region us-east-1.
-spec list_aggregate_discovered_resources(aws_client:aws_client(), list_aggregate_discovered_resources_request()) ->
    {ok, list_aggregate_discovered_resources_response(), tuple()} |
    {error, any()} |
    {error, list_aggregate_discovered_resources_errors(), tuple()}.
list_aggregate_discovered_resources(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_aggregate_discovered_resources(Client, Input, []).

-spec list_aggregate_discovered_resources(aws_client:aws_client(), list_aggregate_discovered_resources_request(), proplists:proplist()) ->
    {ok, list_aggregate_discovered_resources_response(), tuple()} |
    {error, any()} |
    {error, list_aggregate_discovered_resources_errors(), tuple()}.
list_aggregate_discovered_resources(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAggregateDiscoveredResources">>, Input, Options).

%% @doc Returns a list of configuration recorders depending on the filters
%% you specify.
-spec list_configuration_recorders(aws_client:aws_client(), list_configuration_recorders_request()) ->
    {ok, list_configuration_recorders_response(), tuple()} |
    {error, any()} |
    {error, list_configuration_recorders_errors(), tuple()}.
list_configuration_recorders(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_configuration_recorders(Client, Input, []).

-spec list_configuration_recorders(aws_client:aws_client(), list_configuration_recorders_request(), proplists:proplist()) ->
    {ok, list_configuration_recorders_response(), tuple()} |
    {error, any()} |
    {error, list_configuration_recorders_errors(), tuple()}.
list_configuration_recorders(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListConfigurationRecorders">>, Input, Options).

%% @doc Returns a list of conformance pack compliance scores.
%%
%% A compliance score is the percentage of the number of compliant
%% rule-resource combinations in a conformance pack compared to the number of
%% total possible rule-resource combinations in the conformance pack.
%% This metric provides you with a high-level view of the compliance state of
%% your conformance packs. You can use it to identify, investigate, and
%% understand
%% the level of compliance in your conformance packs.
%%
%% Conformance packs with no evaluation results will have a compliance score
%% of `INSUFFICIENT_DATA'.
-spec list_conformance_pack_compliance_scores(aws_client:aws_client(), list_conformance_pack_compliance_scores_request()) ->
    {ok, list_conformance_pack_compliance_scores_response(), tuple()} |
    {error, any()} |
    {error, list_conformance_pack_compliance_scores_errors(), tuple()}.
list_conformance_pack_compliance_scores(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_conformance_pack_compliance_scores(Client, Input, []).

-spec list_conformance_pack_compliance_scores(aws_client:aws_client(), list_conformance_pack_compliance_scores_request(), proplists:proplist()) ->
    {ok, list_conformance_pack_compliance_scores_response(), tuple()} |
    {error, any()} |
    {error, list_conformance_pack_compliance_scores_errors(), tuple()}.
list_conformance_pack_compliance_scores(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListConformancePackComplianceScores">>, Input, Options).

%% @doc Accepts a resource type and returns a list of resource
%% identifiers for the resources of that type.
%%
%% A resource identifier
%% includes the resource type, ID, and (if available) the custom
%% resource name. The results consist of resources that Config has
%% discovered, including those that Config is not currently
%% recording. You can narrow the results to include only resources that
%% have specific resource IDs or a resource name.
%%
%% You can specify either resource IDs or a resource name, but
%% not both, in the same request.
%%
%% The response is paginated. By default, Config lists 100
%% resource identifiers on each page. You can customize this number
%% with the `limit' parameter. The response includes a
%% `nextToken' string. To get the next page of results,
%% run the request again and specify the string for the
%% `nextToken' parameter.
-spec list_discovered_resources(aws_client:aws_client(), list_discovered_resources_request()) ->
    {ok, list_discovered_resources_response(), tuple()} |
    {error, any()} |
    {error, list_discovered_resources_errors(), tuple()}.
list_discovered_resources(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_discovered_resources(Client, Input, []).

-spec list_discovered_resources(aws_client:aws_client(), list_discovered_resources_request(), proplists:proplist()) ->
    {ok, list_discovered_resources_response(), tuple()} |
    {error, any()} |
    {error, list_discovered_resources_errors(), tuple()}.
list_discovered_resources(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDiscoveredResources">>, Input, Options).

%% @doc Returns a list of proactive resource evaluations.
-spec list_resource_evaluations(aws_client:aws_client(), list_resource_evaluations_request()) ->
    {ok, list_resource_evaluations_response(), tuple()} |
    {error, any()} |
    {error, list_resource_evaluations_errors(), tuple()}.
list_resource_evaluations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_resource_evaluations(Client, Input, []).

-spec list_resource_evaluations(aws_client:aws_client(), list_resource_evaluations_request(), proplists:proplist()) ->
    {ok, list_resource_evaluations_response(), tuple()} |
    {error, any()} |
    {error, list_resource_evaluations_errors(), tuple()}.
list_resource_evaluations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListResourceEvaluations">>, Input, Options).

%% @doc Lists the stored queries for a single Amazon Web Services account and
%% a single Amazon Web Services Region.
%%
%% The default is 100.
-spec list_stored_queries(aws_client:aws_client(), list_stored_queries_request()) ->
    {ok, list_stored_queries_response(), tuple()} |
    {error, any()} |
    {error, list_stored_queries_errors(), tuple()}.
list_stored_queries(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_stored_queries(Client, Input, []).

-spec list_stored_queries(aws_client:aws_client(), list_stored_queries_request(), proplists:proplist()) ->
    {ok, list_stored_queries_response(), tuple()} |
    {error, any()} |
    {error, list_stored_queries_errors(), tuple()}.
list_stored_queries(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListStoredQueries">>, Input, Options).

%% @doc List the tags for Config resource.
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

%% @doc Authorizes the aggregator account and region to collect data
%% from the source account and region.
%%
%% Tags are added at creation and cannot be updated with this operation
%%
%% `PutAggregationAuthorization' is an idempotent API. Subsequent
%% requests won’t create a duplicate resource if one was already created. If
%% a following request has different `tags' values,
%% Config will ignore these differences and treat it as an idempotent request
%% of the previous. In this case, `tags' will not be updated, even if
%% they are different.
%%
%% Use TagResource:
%% https://docs.aws.amazon.com/config/latest/APIReference/API_TagResource.html
%% and UntagResource:
%% https://docs.aws.amazon.com/config/latest/APIReference/API_UntagResource.html
%% to update tags after creation.
-spec put_aggregation_authorization(aws_client:aws_client(), put_aggregation_authorization_request()) ->
    {ok, put_aggregation_authorization_response(), tuple()} |
    {error, any()} |
    {error, put_aggregation_authorization_errors(), tuple()}.
put_aggregation_authorization(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_aggregation_authorization(Client, Input, []).

-spec put_aggregation_authorization(aws_client:aws_client(), put_aggregation_authorization_request(), proplists:proplist()) ->
    {ok, put_aggregation_authorization_response(), tuple()} |
    {error, any()} |
    {error, put_aggregation_authorization_errors(), tuple()}.
put_aggregation_authorization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutAggregationAuthorization">>, Input, Options).

%% @doc Adds or updates an Config rule to evaluate if your
%% Amazon Web Services resources comply with your desired configurations.
%%
%% For information on how many Config rules you can have per account,
%% see
%% Service Limits
%% :
%% https://docs.aws.amazon.com/config/latest/developerguide/configlimits.html
%% in the Config Developer Guide.
%%
%% There are two types of rules: Config Managed Rules and Config Custom
%% Rules.
%% You can use `PutConfigRule' to create both Config Managed Rules and
%% Config Custom Rules.
%%
%% Config Managed Rules are predefined,
%% customizable rules created by Config. For a list of managed rules, see
%% List of Config
%% Managed Rules:
%% https://docs.aws.amazon.com/config/latest/developerguide/managed-rules-by-aws-config.html.
%% If you are adding an Config managed rule, you must specify the
%% rule's identifier for the `SourceIdentifier' key.
%%
%% Config Custom Rules are rules that you create from scratch. There are two
%% ways to create Config custom rules: with Lambda functions
%% ( Lambda Developer Guide:
%% https://docs.aws.amazon.com/config/latest/developerguide/gettingstarted-concepts.html#gettingstarted-concepts-function)
%% and with Guard (Guard GitHub
%% Repository: https://github.com/aws-cloudformation/cloudformation-guard), a
%% policy-as-code language.
%%
%% Config custom rules created with Lambda
%% are called Config Custom Lambda Rules and Config custom rules created with
%% Guard are called Config Custom Policy Rules.
%%
%% If you are adding a new Config Custom Lambda rule,
%% you first need to create an Lambda function that the rule invokes to
%% evaluate
%% your resources. When you use `PutConfigRule' to add a Custom Lambda
%% rule to Config, you must specify the Amazon Resource
%% Name (ARN) that Lambda assigns to the function. You specify the ARN
%% in the `SourceIdentifier' key. This key is part of the
%% `Source' object, which is part of the
%% `ConfigRule' object.
%%
%% For any new Config rule that you add, specify the
%% `ConfigRuleName' in the `ConfigRule'
%% object. Do not specify the `ConfigRuleArn' or the
%% `ConfigRuleId'. These values are generated by Config for new rules.
%%
%% If you are updating a rule that you added previously, you can
%% specify the rule by `ConfigRuleName',
%% `ConfigRuleId', or `ConfigRuleArn' in the
%% `ConfigRule' data type that you use in this
%% request.
%%
%% For more information about developing and using Config
%% rules, see Evaluating Resources with Config Rules:
%% https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config.html
%% in the Config Developer Guide.
%%
%% Tags are added at creation and cannot be updated with this operation
%%
%% `PutConfigRule' is an idempotent API. Subsequent requests won’t create
%% a duplicate resource if one was already created. If a following request
%% has different `tags' values,
%% Config will ignore these differences and treat it as an idempotent request
%% of the previous. In this case, `tags' will not be updated, even if
%% they are different.
%%
%% Use TagResource:
%% https://docs.aws.amazon.com/config/latest/APIReference/API_TagResource.html
%% and UntagResource:
%% https://docs.aws.amazon.com/config/latest/APIReference/API_UntagResource.html
%% to update tags after creation.
-spec put_config_rule(aws_client:aws_client(), put_config_rule_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_config_rule_errors(), tuple()}.
put_config_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_config_rule(Client, Input, []).

-spec put_config_rule(aws_client:aws_client(), put_config_rule_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_config_rule_errors(), tuple()}.
put_config_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutConfigRule">>, Input, Options).

%% @doc Creates and updates the configuration aggregator with the
%% selected source accounts and regions.
%%
%% The source account can be
%% individual account(s) or an organization.
%%
%% `accountIds' that are passed will be replaced with existing accounts.
%% If you want to add additional accounts into the aggregator, call
%% `DescribeConfigurationAggregators' to get the previous accounts and
%% then append new ones.
%%
%% Config should be enabled in source accounts and regions
%% you want to aggregate.
%%
%% If your source type is an organization, you must be signed in to the
%% management account or a registered delegated administrator and all the
%% features must be enabled in your organization.
%% If the caller is a management account, Config calls
%% `EnableAwsServiceAccess' API to enable integration between Config and
%% Organizations.
%% If the caller is a registered delegated administrator, Config calls
%% `ListDelegatedAdministrators' API to verify whether the caller is a
%% valid delegated administrator.
%%
%% To register a delegated administrator, see Register a Delegated
%% Administrator:
%% https://docs.aws.amazon.com/config/latest/developerguide/set-up-aggregator-cli.html#register-a-delegated-administrator-cli
%% in the Config developer guide.
%%
%% Tags are added at creation and cannot be updated with this operation
%%
%% `PutConfigurationAggregator' is an idempotent API. Subsequent requests
%% won’t create a duplicate resource if one was already created. If a
%% following request has different `tags' values,
%% Config will ignore these differences and treat it as an idempotent request
%% of the previous. In this case, `tags' will not be updated, even if
%% they are different.
%%
%% Use TagResource:
%% https://docs.aws.amazon.com/config/latest/APIReference/API_TagResource.html
%% and UntagResource:
%% https://docs.aws.amazon.com/config/latest/APIReference/API_UntagResource.html
%% to update tags after creation.
-spec put_configuration_aggregator(aws_client:aws_client(), put_configuration_aggregator_request()) ->
    {ok, put_configuration_aggregator_response(), tuple()} |
    {error, any()} |
    {error, put_configuration_aggregator_errors(), tuple()}.
put_configuration_aggregator(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_configuration_aggregator(Client, Input, []).

-spec put_configuration_aggregator(aws_client:aws_client(), put_configuration_aggregator_request(), proplists:proplist()) ->
    {ok, put_configuration_aggregator_response(), tuple()} |
    {error, any()} |
    {error, put_configuration_aggregator_errors(), tuple()}.
put_configuration_aggregator(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutConfigurationAggregator">>, Input, Options).

%% @doc Creates or updates the customer managed configuration recorder.
%%
%% You can use this operation to create a new customer managed configuration
%% recorder or to update the `roleARN' and the `recordingGroup' for
%% an existing customer managed configuration recorder.
%%
%% To start the customer managed configuration recorder and begin recording
%% configuration changes for the resource types you specify,
%% use the StartConfigurationRecorder:
%% https://docs.aws.amazon.com/config/latest/APIReference/API_StartConfigurationRecorder.html
%% operation.
%%
%% For more information, see
%% Working with the Configuration Recorder
%% :
%% https://docs.aws.amazon.com/config/latest/developerguide/stop-start-recorder.html
%% in the Config Developer Guide.
%%
%% One customer managed configuration recorder per account per Region
%%
%% You can create only one customer managed configuration recorder for each
%% account for each Amazon Web Services Region.
%%
%% Default is to record all supported resource types, excluding the global
%% IAM resource types
%%
%% If you have not specified values for the `recordingGroup' field, the
%% default for the customer managed configuration recorder is to record all
%% supported resource
%% types, excluding the global IAM resource types: `AWS::IAM::Group',
%% `AWS::IAM::Policy', `AWS::IAM::Role', and `AWS::IAM::User'.
%%
%% Tags are added at creation and cannot be updated
%%
%% `PutConfigurationRecorder' is an idempotent API. Subsequent requests
%% won’t create a duplicate resource if one was already created. If a
%% following request has different tags values,
%% Config will ignore these differences and treat it as an idempotent request
%% of the previous. In this case, tags will not be updated, even if they are
%% different.
%%
%% Use TagResource:
%% https://docs.aws.amazon.com/config/latest/APIReference/API_TagResource.html
%% and UntagResource:
%% https://docs.aws.amazon.com/config/latest/APIReference/API_UntagResource.html
%% to update tags after creation.
-spec put_configuration_recorder(aws_client:aws_client(), put_configuration_recorder_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_configuration_recorder_errors(), tuple()}.
put_configuration_recorder(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_configuration_recorder(Client, Input, []).

-spec put_configuration_recorder(aws_client:aws_client(), put_configuration_recorder_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_configuration_recorder_errors(), tuple()}.
put_configuration_recorder(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutConfigurationRecorder">>, Input, Options).

%% @doc Creates or updates a conformance pack.
%%
%% A conformance pack is a collection of Config rules that can be easily
%% deployed in an account and a region and across an organization.
%% For information on how many conformance packs you can have per account,
%% see
%% Service Limits
%% :
%% https://docs.aws.amazon.com/config/latest/developerguide/configlimits.html
%% in the Config Developer Guide.
%%
%% This API creates a service-linked role
%% `AWSServiceRoleForConfigConforms' in your account.
%% The service-linked role is created only when the role does not exist in
%% your account.
%%
%% You must specify only one of the follow parameters: `TemplateS3Uri',
%% `TemplateBody' or `TemplateSSMDocumentDetails'.
-spec put_conformance_pack(aws_client:aws_client(), put_conformance_pack_request()) ->
    {ok, put_conformance_pack_response(), tuple()} |
    {error, any()} |
    {error, put_conformance_pack_errors(), tuple()}.
put_conformance_pack(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_conformance_pack(Client, Input, []).

-spec put_conformance_pack(aws_client:aws_client(), put_conformance_pack_request(), proplists:proplist()) ->
    {ok, put_conformance_pack_response(), tuple()} |
    {error, any()} |
    {error, put_conformance_pack_errors(), tuple()}.
put_conformance_pack(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutConformancePack">>, Input, Options).

%% @doc Creates or updates a delivery channel to deliver configuration
%% information and other compliance information.
%%
%% You can use this operation to create a new delivery channel or to update
%% the Amazon S3 bucket and the
%% Amazon SNS topic of an existing delivery channel.
%%
%% For more information, see
%% Working with the Delivery Channel
%% :
%% https://docs.aws.amazon.com/config/latest/developerguide/manage-delivery-channel.html
%% in the Config Developer Guide.
%%
%% One delivery channel per account per Region
%%
%% You can have only one delivery channel for each account for each Amazon
%% Web Services Region.
-spec put_delivery_channel(aws_client:aws_client(), put_delivery_channel_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_delivery_channel_errors(), tuple()}.
put_delivery_channel(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_delivery_channel(Client, Input, []).

-spec put_delivery_channel(aws_client:aws_client(), put_delivery_channel_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_delivery_channel_errors(), tuple()}.
put_delivery_channel(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutDeliveryChannel">>, Input, Options).

%% @doc Used by an Lambda function to deliver evaluation results to
%% Config.
%%
%% This operation is required in every Lambda function
%% that is invoked by an Config rule.
-spec put_evaluations(aws_client:aws_client(), put_evaluations_request()) ->
    {ok, put_evaluations_response(), tuple()} |
    {error, any()} |
    {error, put_evaluations_errors(), tuple()}.
put_evaluations(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_evaluations(Client, Input, []).

-spec put_evaluations(aws_client:aws_client(), put_evaluations_request(), proplists:proplist()) ->
    {ok, put_evaluations_response(), tuple()} |
    {error, any()} |
    {error, put_evaluations_errors(), tuple()}.
put_evaluations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutEvaluations">>, Input, Options).

%% @doc Add or updates the evaluations for process checks.
%%
%% This API checks if the rule is a process check when the name of the Config
%% rule is provided.
-spec put_external_evaluation(aws_client:aws_client(), put_external_evaluation_request()) ->
    {ok, put_external_evaluation_response(), tuple()} |
    {error, any()} |
    {error, put_external_evaluation_errors(), tuple()}.
put_external_evaluation(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_external_evaluation(Client, Input, []).

-spec put_external_evaluation(aws_client:aws_client(), put_external_evaluation_request(), proplists:proplist()) ->
    {ok, put_external_evaluation_response(), tuple()} |
    {error, any()} |
    {error, put_external_evaluation_errors(), tuple()}.
put_external_evaluation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutExternalEvaluation">>, Input, Options).

%% @doc Adds or updates an Config rule for your entire organization to
%% evaluate if your Amazon Web Services resources comply with your
%% desired configurations.
%%
%% For information on how many organization Config rules you can have per
%% account,
%% see
%% Service Limits
%% :
%% https://docs.aws.amazon.com/config/latest/developerguide/configlimits.html
%% in the Config Developer Guide.
%%
%% Only a management account and a delegated administrator can create or
%% update an organization Config rule.
%% When calling this API with a delegated administrator, you must ensure
%% Organizations
%% `ListDelegatedAdministrator' permissions are added. An organization
%% can have up to 3 delegated administrators.
%%
%% This API enables organization service access through the
%% `EnableAWSServiceAccess' action and creates a service-linked
%% role `AWSServiceRoleForConfigMultiAccountSetup' in the management or
%% delegated administrator account of your organization.
%% The service-linked role is created only when the role does not exist in
%% the caller account.
%% Config verifies the existence of role with `GetRole' action.
%%
%% To use this API with delegated administrator, register a delegated
%% administrator by calling Amazon Web Services Organization
%% `register-delegated-administrator' for
%% `config-multiaccountsetup.amazonaws.com'.
%%
%% There are two types of rules: Config Managed Rules and Config Custom
%% Rules.
%% You can use `PutOrganizationConfigRule' to create both Config Managed
%% Rules and Config Custom Rules.
%%
%% Config Managed Rules are predefined,
%% customizable rules created by Config. For a list of managed rules, see
%% List of Config
%% Managed Rules:
%% https://docs.aws.amazon.com/config/latest/developerguide/managed-rules-by-aws-config.html.
%% If you are adding an Config managed rule, you must specify the rule's
%% identifier for the `RuleIdentifier' key.
%%
%% Config Custom Rules are rules that you create from scratch. There are two
%% ways to create Config custom rules: with Lambda functions
%% ( Lambda Developer Guide:
%% https://docs.aws.amazon.com/config/latest/developerguide/gettingstarted-concepts.html#gettingstarted-concepts-function)
%% and with Guard (Guard GitHub
%% Repository: https://github.com/aws-cloudformation/cloudformation-guard), a
%% policy-as-code language.
%%
%% Config custom rules created with Lambda
%% are called Config Custom Lambda Rules and Config custom rules created with
%% Guard are called Config Custom Policy Rules.
%%
%% If you are adding a new Config Custom Lambda rule, you first need to
%% create an Lambda function in the management account or a delegated
%% administrator that the rule invokes to evaluate your resources. You also
%% need to create an IAM role in the managed account that can be assumed by
%% the Lambda function.
%% When you use `PutOrganizationConfigRule' to add a Custom Lambda rule
%% to Config, you must
%% specify the Amazon Resource Name (ARN) that Lambda assigns to the
%% function.
%%
%% Prerequisite: Ensure you call `EnableAllFeatures' API to enable all
%% features in an organization.
%%
%% Make sure to specify one of either
%% `OrganizationCustomPolicyRuleMetadata' for Custom Policy rules,
%% `OrganizationCustomRuleMetadata' for Custom Lambda rules, or
%% `OrganizationManagedRuleMetadata' for managed rules.
-spec put_organization_config_rule(aws_client:aws_client(), put_organization_config_rule_request()) ->
    {ok, put_organization_config_rule_response(), tuple()} |
    {error, any()} |
    {error, put_organization_config_rule_errors(), tuple()}.
put_organization_config_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_organization_config_rule(Client, Input, []).

-spec put_organization_config_rule(aws_client:aws_client(), put_organization_config_rule_request(), proplists:proplist()) ->
    {ok, put_organization_config_rule_response(), tuple()} |
    {error, any()} |
    {error, put_organization_config_rule_errors(), tuple()}.
put_organization_config_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutOrganizationConfigRule">>, Input, Options).

%% @doc Deploys conformance packs across member accounts in an Amazon Web
%% Services Organization.
%%
%% For information on how many organization conformance packs and how many
%% Config rules you can have per account,
%% see
%% Service Limits
%% :
%% https://docs.aws.amazon.com/config/latest/developerguide/configlimits.html
%% in the Config Developer Guide.
%%
%% Only a management account and a delegated administrator can call this API.
%% When calling this API with a delegated administrator, you must ensure
%% Organizations
%% `ListDelegatedAdministrator' permissions are added. An organization
%% can have up to 3 delegated administrators.
%%
%% This API enables organization service access for
%% `config-multiaccountsetup.amazonaws.com'
%% through the `EnableAWSServiceAccess' action and creates a
%% service-linked role `AWSServiceRoleForConfigMultiAccountSetup' in the
%% management or delegated administrator account of your organization.
%% The service-linked role is created only when the role does not exist in
%% the caller account.
%% To use this API with delegated administrator, register a delegated
%% administrator by calling Amazon Web Services Organization
%% `register-delegate-admin' for
%% `config-multiaccountsetup.amazonaws.com'.
%%
%% Prerequisite: Ensure you call `EnableAllFeatures' API to enable all
%% features in an organization.
%%
%% You must specify either the `TemplateS3Uri' or the `TemplateBody'
%% parameter, but not both.
%% If you provide both Config uses the `TemplateS3Uri' parameter and
%% ignores the `TemplateBody' parameter.
%%
%% Config sets the state of a conformance pack to CREATE_IN_PROGRESS and
%% UPDATE_IN_PROGRESS until the conformance pack is created or updated.
%% You cannot update a conformance pack while it is in this state.
-spec put_organization_conformance_pack(aws_client:aws_client(), put_organization_conformance_pack_request()) ->
    {ok, put_organization_conformance_pack_response(), tuple()} |
    {error, any()} |
    {error, put_organization_conformance_pack_errors(), tuple()}.
put_organization_conformance_pack(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_organization_conformance_pack(Client, Input, []).

-spec put_organization_conformance_pack(aws_client:aws_client(), put_organization_conformance_pack_request(), proplists:proplist()) ->
    {ok, put_organization_conformance_pack_response(), tuple()} |
    {error, any()} |
    {error, put_organization_conformance_pack_errors(), tuple()}.
put_organization_conformance_pack(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutOrganizationConformancePack">>, Input, Options).

%% @doc Adds or updates the remediation configuration with a specific Config
%% rule with the
%% selected target or action.
%%
%% The API creates the `RemediationConfiguration' object for the Config
%% rule.
%% The Config rule must already exist for you to add a remediation
%% configuration.
%% The target (SSM document) must exist and have permissions to use the
%% target.
%%
%% Be aware of backward incompatible changes
%%
%% If you make backward incompatible changes to the SSM document,
%% you must call this again to ensure the remediations can run.
%%
%% This API does not support adding remediation configurations for
%% service-linked Config Rules such as Organization Config rules,
%% the rules deployed by conformance packs, and rules deployed by Amazon Web
%% Services Security Hub.
%%
%% Required fields
%%
%% For manual remediation configuration, you need to provide a value for
%% `automationAssumeRole' or use a value in the `assumeRole'field to
%% remediate your resources. The SSM automation document can use either as
%% long as it maps to a valid parameter.
%%
%% However, for automatic remediation configuration, the only valid
%% `assumeRole' field value is `AutomationAssumeRole' and you need to
%% provide a value for `AutomationAssumeRole' to remediate your
%% resources.
%%
%% Auto remediation can be initiated even for compliant resources
%%
%% If you enable auto remediation for a specific Config rule using the
%% PutRemediationConfigurations:
%% https://docs.aws.amazon.com/config/latest/APIReference/emAPI_PutRemediationConfigurations.html
%% API or the Config console,
%% it initiates the remediation process for all non-compliant resources for
%% that specific rule.
%% The auto remediation process relies on the compliance data snapshot which
%% is captured on a periodic basis.
%% Any non-compliant resource that is updated between the snapshot schedule
%% will continue to be remediated based on the last known compliance data
%% snapshot.
%%
%% This means that in some cases auto remediation can be initiated even for
%% compliant resources, since the bootstrap processor uses a database that
%% can have stale evaluation results based on the last known compliance data
%% snapshot.
-spec put_remediation_configurations(aws_client:aws_client(), put_remediation_configurations_request()) ->
    {ok, put_remediation_configurations_response(), tuple()} |
    {error, any()} |
    {error, put_remediation_configurations_errors(), tuple()}.
put_remediation_configurations(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_remediation_configurations(Client, Input, []).

-spec put_remediation_configurations(aws_client:aws_client(), put_remediation_configurations_request(), proplists:proplist()) ->
    {ok, put_remediation_configurations_response(), tuple()} |
    {error, any()} |
    {error, put_remediation_configurations_errors(), tuple()}.
put_remediation_configurations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutRemediationConfigurations">>, Input, Options).

%% @doc A remediation exception is when a specified resource is no longer
%% considered for auto-remediation.
%%
%% This API adds a new exception or updates an existing exception for a
%% specified resource with a specified Config rule.
%%
%% Exceptions block auto remediation
%%
%% Config generates a remediation exception when a problem occurs running a
%% remediation action for a specified resource.
%% Remediation exceptions blocks auto-remediation until the exception is
%% cleared.
%%
%% Manual remediation is recommended when placing an exception
%%
%% When placing an exception on an Amazon Web Services resource, it is
%% recommended that remediation is set as manual remediation until
%% the given Config rule for the specified resource evaluates the resource as
%% `NON_COMPLIANT'.
%% Once the resource has been evaluated as `NON_COMPLIANT', you can add
%% remediation exceptions and change the remediation type back from Manual to
%% Auto if you want to use auto-remediation.
%% Otherwise, using auto-remediation before a `NON_COMPLIANT' evaluation
%% result can delete resources before the exception is applied.
%%
%% Exceptions can only be performed on non-compliant resources
%%
%% Placing an exception can only be performed on resources that are
%% `NON_COMPLIANT'.
%% If you use this API for `COMPLIANT' resources or resources that are
%% `NOT_APPLICABLE', a remediation exception will not be generated.
%% For more information on the conditions that initiate the possible Config
%% evaluation results,
%% see Concepts | Config Rules:
%% https://docs.aws.amazon.com/config/latest/developerguide/config-concepts.html#aws-config-rules
%% in the Config Developer Guide.
%%
%% Exceptions cannot be placed on service-linked remediation actions
%%
%% You cannot place an exception on service-linked remediation actions, such
%% as remediation actions put by an organizational conformance pack.
%%
%% Auto remediation can be initiated even for compliant resources
%%
%% If you enable auto remediation for a specific Config rule using the
%% PutRemediationConfigurations:
%% https://docs.aws.amazon.com/config/latest/APIReference/emAPI_PutRemediationConfigurations.html
%% API or the Config console,
%% it initiates the remediation process for all non-compliant resources for
%% that specific rule.
%% The auto remediation process relies on the compliance data snapshot which
%% is captured on a periodic basis.
%% Any non-compliant resource that is updated between the snapshot schedule
%% will continue to be remediated based on the last known compliance data
%% snapshot.
%%
%% This means that in some cases auto remediation can be initiated even for
%% compliant resources, since the bootstrap processor uses a database that
%% can have stale evaluation results based on the last known compliance data
%% snapshot.
-spec put_remediation_exceptions(aws_client:aws_client(), put_remediation_exceptions_request()) ->
    {ok, put_remediation_exceptions_response(), tuple()} |
    {error, any()} |
    {error, put_remediation_exceptions_errors(), tuple()}.
put_remediation_exceptions(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_remediation_exceptions(Client, Input, []).

-spec put_remediation_exceptions(aws_client:aws_client(), put_remediation_exceptions_request(), proplists:proplist()) ->
    {ok, put_remediation_exceptions_response(), tuple()} |
    {error, any()} |
    {error, put_remediation_exceptions_errors(), tuple()}.
put_remediation_exceptions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutRemediationExceptions">>, Input, Options).

%% @doc Records the configuration state for the resource provided in the
%% request.
%%
%% The configuration state of a resource is represented in Config as
%% Configuration Items.
%% Once this API records the configuration item, you can retrieve the list of
%% configuration items for the custom resource type using existing Config
%% APIs.
%%
%% The custom resource type must be registered with CloudFormation. This API
%% accepts the configuration item registered with CloudFormation.
%%
%% When you call this API, Config only stores configuration state of the
%% resource provided in the request. This API does not change or remediate
%% the configuration of the resource.
%%
%% Write-only schema properites are not recorded as part of the published
%% configuration item.
-spec put_resource_config(aws_client:aws_client(), put_resource_config_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_resource_config_errors(), tuple()}.
put_resource_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_resource_config(Client, Input, []).

-spec put_resource_config(aws_client:aws_client(), put_resource_config_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_resource_config_errors(), tuple()}.
put_resource_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutResourceConfig">>, Input, Options).

%% @doc Creates and updates the retention configuration with details
%% about retention period (number of days) that Config stores your
%% historical information.
%%
%% The API creates the
%% `RetentionConfiguration' object and names the object
%% as default. When you have a
%% `RetentionConfiguration' object named default, calling the API
%% modifies the
%% default object.
%%
%% Currently, Config supports only one retention
%% configuration per region in your account.
-spec put_retention_configuration(aws_client:aws_client(), put_retention_configuration_request()) ->
    {ok, put_retention_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_retention_configuration_errors(), tuple()}.
put_retention_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_retention_configuration(Client, Input, []).

-spec put_retention_configuration(aws_client:aws_client(), put_retention_configuration_request(), proplists:proplist()) ->
    {ok, put_retention_configuration_response(), tuple()} |
    {error, any()} |
    {error, put_retention_configuration_errors(), tuple()}.
put_retention_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutRetentionConfiguration">>, Input, Options).

%% @doc Creates a service-linked configuration recorder that is linked to a
%% specific Amazon Web Services service based on the `ServicePrincipal'
%% you specify.
%%
%% The configuration recorder's `name', `recordingGroup',
%% `recordingMode', and `recordingScope' is set by the service that
%% is linked to the configuration recorder.
%%
%% For more information, see
%% Working with the Configuration Recorder
%% :
%% https://docs.aws.amazon.com/config/latest/developerguide/stop-start-recorder.html
%% in the Config Developer Guide.
%%
%% This API creates a service-linked role `AWSServiceRoleForConfig' in
%% your account. The service-linked role is created only when the role does
%% not exist in your account.
%%
%% The recording scope determines if you receive configuration items
%%
%% The recording scope is set by the service that is linked to the
%% configuration recorder and determines whether you receive configuration
%% items (CIs) in the delivery channel. If the recording scope is internal,
%% you will not receive CIs in the delivery channel.
%%
%% Tags are added at creation and cannot be updated with this operation
%%
%% Use TagResource:
%% https://docs.aws.amazon.com/config/latest/APIReference/API_TagResource.html
%% and UntagResource:
%% https://docs.aws.amazon.com/config/latest/APIReference/API_UntagResource.html
%% to update tags after creation.
-spec put_service_linked_configuration_recorder(aws_client:aws_client(), put_service_linked_configuration_recorder_request()) ->
    {ok, put_service_linked_configuration_recorder_response(), tuple()} |
    {error, any()} |
    {error, put_service_linked_configuration_recorder_errors(), tuple()}.
put_service_linked_configuration_recorder(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_service_linked_configuration_recorder(Client, Input, []).

-spec put_service_linked_configuration_recorder(aws_client:aws_client(), put_service_linked_configuration_recorder_request(), proplists:proplist()) ->
    {ok, put_service_linked_configuration_recorder_response(), tuple()} |
    {error, any()} |
    {error, put_service_linked_configuration_recorder_errors(), tuple()}.
put_service_linked_configuration_recorder(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutServiceLinkedConfigurationRecorder">>, Input, Options).

%% @doc Saves a new query or updates an existing saved query.
%%
%% The `QueryName' must be unique for a single Amazon Web Services
%% account and a single Amazon Web Services Region.
%% You can create upto 300 queries in a single Amazon Web Services account
%% and a single Amazon Web Services Region.
%%
%% Tags are added at creation and cannot be updated
%%
%% `PutStoredQuery' is an idempotent API. Subsequent requests won’t
%% create a duplicate resource if one was already created. If a following
%% request has different `tags' values,
%% Config will ignore these differences and treat it as an idempotent request
%% of the previous. In this case, `tags' will not be updated, even if
%% they are different.
-spec put_stored_query(aws_client:aws_client(), put_stored_query_request()) ->
    {ok, put_stored_query_response(), tuple()} |
    {error, any()} |
    {error, put_stored_query_errors(), tuple()}.
put_stored_query(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_stored_query(Client, Input, []).

-spec put_stored_query(aws_client:aws_client(), put_stored_query_request(), proplists:proplist()) ->
    {ok, put_stored_query_response(), tuple()} |
    {error, any()} |
    {error, put_stored_query_errors(), tuple()}.
put_stored_query(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutStoredQuery">>, Input, Options).

%% @doc Accepts a structured query language (SQL) SELECT command and an
%% aggregator to query configuration state of Amazon Web Services resources
%% across multiple accounts and regions,
%% performs the corresponding search, and returns resource configurations
%% matching the properties.
%%
%% For more information about query components, see the
%%
%% Query Components
%% :
%% https://docs.aws.amazon.com/config/latest/developerguide/query-components.html
%% section in the Config Developer Guide.
%%
%% If you run an aggregation query (i.e., using `GROUP BY' or using
%% aggregate functions such as `COUNT'; e.g., `SELECT resourceId,
%% COUNT(*) WHERE resourceType = 'AWS::IAM::Role' GROUP BY
%% resourceId')
%% and do not specify the `MaxResults' or the `Limit' query
%% parameters, the default page size is set to 500.
%%
%% If you run a non-aggregation query (i.e., not using `GROUP BY' or
%% aggregate function; e.g., `SELECT * WHERE resourceType =
%% 'AWS::IAM::Role'')
%% and do not specify the `MaxResults' or the `Limit' query
%% parameters, the default page size is set to 25.
-spec select_aggregate_resource_config(aws_client:aws_client(), select_aggregate_resource_config_request()) ->
    {ok, select_aggregate_resource_config_response(), tuple()} |
    {error, any()} |
    {error, select_aggregate_resource_config_errors(), tuple()}.
select_aggregate_resource_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    select_aggregate_resource_config(Client, Input, []).

-spec select_aggregate_resource_config(aws_client:aws_client(), select_aggregate_resource_config_request(), proplists:proplist()) ->
    {ok, select_aggregate_resource_config_response(), tuple()} |
    {error, any()} |
    {error, select_aggregate_resource_config_errors(), tuple()}.
select_aggregate_resource_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SelectAggregateResourceConfig">>, Input, Options).

%% @doc Accepts a structured query language (SQL) `SELECT' command,
%% performs the corresponding search, and returns resource configurations
%% matching the properties.
%%
%% For more information about query components, see the
%%
%% Query Components
%% :
%% https://docs.aws.amazon.com/config/latest/developerguide/query-components.html
%% section in the Config Developer Guide.
-spec select_resource_config(aws_client:aws_client(), select_resource_config_request()) ->
    {ok, select_resource_config_response(), tuple()} |
    {error, any()} |
    {error, select_resource_config_errors(), tuple()}.
select_resource_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    select_resource_config(Client, Input, []).

-spec select_resource_config(aws_client:aws_client(), select_resource_config_request(), proplists:proplist()) ->
    {ok, select_resource_config_response(), tuple()} |
    {error, any()} |
    {error, select_resource_config_errors(), tuple()}.
select_resource_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SelectResourceConfig">>, Input, Options).

%% @doc Runs an on-demand evaluation for the specified Config rules
%% against the last known configuration state of the resources.
%%
%% Use
%% `StartConfigRulesEvaluation' when you want to test
%% that a rule you updated is working as expected.
%% `StartConfigRulesEvaluation' does not re-record the
%% latest configuration state for your resources. It re-runs an
%% evaluation against the last known state of your resources.
%%
%% You can specify up to 25 Config rules per request.
%%
%% An existing `StartConfigRulesEvaluation' call for
%% the specified rules must complete before you can call the API again.
%% If you chose to have Config stream to an Amazon SNS topic, you
%% will receive a `ConfigRuleEvaluationStarted' notification
%% when the evaluation starts.
%%
%% You don't need to call the
%% `StartConfigRulesEvaluation' API to run an
%% evaluation for a new rule. When you create a rule, Config
%% evaluates your resources against the rule automatically.
%%
%% The `StartConfigRulesEvaluation' API is useful if
%% you want to run on-demand evaluations, such as the following
%% example:
%%
%% You have a custom rule that evaluates your IAM
%% resources every 24 hours.
%%
%% You update your Lambda function to add additional
%% conditions to your rule.
%%
%% Instead of waiting for the next periodic evaluation,
%% you call the `StartConfigRulesEvaluation'
%% API.
%%
%% Config invokes your Lambda function and evaluates
%% your IAM resources.
%%
%% Your custom rule will still run periodic evaluations
%% every 24 hours.
-spec start_config_rules_evaluation(aws_client:aws_client(), start_config_rules_evaluation_request()) ->
    {ok, start_config_rules_evaluation_response(), tuple()} |
    {error, any()} |
    {error, start_config_rules_evaluation_errors(), tuple()}.
start_config_rules_evaluation(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_config_rules_evaluation(Client, Input, []).

-spec start_config_rules_evaluation(aws_client:aws_client(), start_config_rules_evaluation_request(), proplists:proplist()) ->
    {ok, start_config_rules_evaluation_response(), tuple()} |
    {error, any()} |
    {error, start_config_rules_evaluation_errors(), tuple()}.
start_config_rules_evaluation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartConfigRulesEvaluation">>, Input, Options).

%% @doc Starts the customer managed configuration recorder.
%%
%% The customer managed configuration recorder will begin recording
%% configuration changes for the resource types you specify.
%%
%% You must have created a delivery channel to
%% successfully start the customer managed configuration recorder. You can
%% use the PutDeliveryChannel:
%% https://docs.aws.amazon.com/config/latest/APIReference/API_PutDeliveryChannel.html
%% operation to create a delivery channel.
-spec start_configuration_recorder(aws_client:aws_client(), start_configuration_recorder_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, start_configuration_recorder_errors(), tuple()}.
start_configuration_recorder(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_configuration_recorder(Client, Input, []).

-spec start_configuration_recorder(aws_client:aws_client(), start_configuration_recorder_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, start_configuration_recorder_errors(), tuple()}.
start_configuration_recorder(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartConfigurationRecorder">>, Input, Options).

%% @doc Runs an on-demand remediation for the specified Config rules against
%% the last known remediation configuration.
%%
%% It runs an execution against the current state of your resources.
%% Remediation execution is asynchronous.
%%
%% You can specify up to 100 resource keys per request. An existing
%% StartRemediationExecution call for the specified resource keys must
%% complete before you can call the API again.
-spec start_remediation_execution(aws_client:aws_client(), start_remediation_execution_request()) ->
    {ok, start_remediation_execution_response(), tuple()} |
    {error, any()} |
    {error, start_remediation_execution_errors(), tuple()}.
start_remediation_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_remediation_execution(Client, Input, []).

-spec start_remediation_execution(aws_client:aws_client(), start_remediation_execution_request(), proplists:proplist()) ->
    {ok, start_remediation_execution_response(), tuple()} |
    {error, any()} |
    {error, start_remediation_execution_errors(), tuple()}.
start_remediation_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartRemediationExecution">>, Input, Options).

%% @doc Runs an on-demand evaluation for the specified resource to determine
%% whether the resource details will comply with configured Config rules.
%%
%% You can also use it for evaluation purposes. Config recommends using an
%% evaluation context. It runs an execution against the resource details with
%% all
%% of the Config rules in your account that match with the specified
%% proactive mode and resource type.
%%
%% Ensure you have the `cloudformation:DescribeType' role setup to
%% validate the resource type schema.
%%
%% You can find the
%% Resource type schema:
%% https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html
%% in &quot;Amazon Web Services public extensions&quot; within the
%% CloudFormation registry or with the following CLI commmand:
%% `aws cloudformation describe-type --type-name &quot;AWS::S3::Bucket&quot;
%% --type RESOURCE'.
%%
%% For more information, see Managing extensions through the CloudFormation
%% registry:
%% https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry.html#registry-view
%% and Amazon Web Services resource and property types reference:
%% https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html
%% in the CloudFormation User Guide.
-spec start_resource_evaluation(aws_client:aws_client(), start_resource_evaluation_request()) ->
    {ok, start_resource_evaluation_response(), tuple()} |
    {error, any()} |
    {error, start_resource_evaluation_errors(), tuple()}.
start_resource_evaluation(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_resource_evaluation(Client, Input, []).

-spec start_resource_evaluation(aws_client:aws_client(), start_resource_evaluation_request(), proplists:proplist()) ->
    {ok, start_resource_evaluation_response(), tuple()} |
    {error, any()} |
    {error, start_resource_evaluation_errors(), tuple()}.
start_resource_evaluation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartResourceEvaluation">>, Input, Options).

%% @doc Stops the customer managed configuration recorder.
%%
%% The customer managed configuration recorder will stop recording
%% configuration changes for the resource types you have specified.
-spec stop_configuration_recorder(aws_client:aws_client(), stop_configuration_recorder_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, stop_configuration_recorder_errors(), tuple()}.
stop_configuration_recorder(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_configuration_recorder(Client, Input, []).

-spec stop_configuration_recorder(aws_client:aws_client(), stop_configuration_recorder_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, stop_configuration_recorder_errors(), tuple()}.
stop_configuration_recorder(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopConfigurationRecorder">>, Input, Options).

%% @doc Associates the specified tags to a resource with the specified
%% `ResourceArn'.
%%
%% If existing tags on a resource are not specified in the request
%% parameters, they are not changed.
%% If existing tags are specified, however, then their values will be
%% updated. When a resource is deleted, the tags associated with that
%% resource are deleted as well.
-spec tag_resource(aws_client:aws_client(), tag_resource_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Deletes specified tags from a resource.
-spec untag_resource(aws_client:aws_client(), untag_resource_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).

-spec untag_resource(aws_client:aws_client(), untag_resource_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

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
    Client1 = Client#{service => <<"config">>},
    Host = build_host(<<"config">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"StarlingDoveService.", Action/binary>>}
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
